; ModuleID = '../bcout/drivers/media/rc/xbox_remote.llvm.bc'
source_filename = "drivers/media/rc/xbox_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_xbox_remote_driver_init6:\09\09\09"
module asm ".long\09xbox_remote_driver_init - .\09\09\09"
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
%struct.xbox_remote = type { %struct.rc_dev*, %struct.usb_device*, %struct.usb_interface*, %struct.urb*, [8 x i8], [80 x i8], [80 x i8] }
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

@__UNIQUE_ID___addressable_xbox_remote_driver_init237 = internal global i8* bitcast (i32 ()* @xbox_remote_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@xbox_remote_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @xbox_remote_probe, void (%struct.usb_interface*)* @xbox_remote_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([3 x %struct.usb_device_id], [3 x %struct.usb_device_id]* @xbox_remote_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4129
@__exitcall_xbox_remote_driver_exit = internal global void ()* @xbox_remote_driver_exit, section ".exitcall.exit", align 8, !dbg !4104
@__UNIQUE_ID_author238 = internal constant [63 x i8] c"xbox_remote.author=Benjamin Valentin <benpicco@googlemail.com>\00", section ".modinfo", align 1, !dbg !4109
@__UNIQUE_ID_description239 = internal constant [52 x i8] c"xbox_remote.description=Xbox DVD USB Remote Control\00", section ".modinfo", align 1, !dbg !4114
@__UNIQUE_ID_file240 = internal constant [46 x i8] c"xbox_remote.file=drivers/media/rc/xbox_remote\00", section ".modinfo", align 1, !dbg !4119
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"xbox_remote.license=GPL\00", section ".modinfo", align 1, !dbg !4124
@.str = private unnamed_addr constant [12 x i8] c"xbox_remote\00", align 1
@xbox_remote_table = internal constant [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1035, i16 25889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4190
@.str.1 = private unnamed_addr constant [41 x i8] c"\013%s: Unexpected desc.bNumEndpoints: %d\0A\00", align 1
@__func__.xbox_remote_probe = private unnamed_addr constant [18 x i8] c"xbox_remote_probe\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013%s: Unexpected endpoint_in\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013%s: endpoint_in message size==0?\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Xbox DVD USB Remote Control(%04x,%04x)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"rc-xbox-dvd\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"%s: usb_submit_urb failed!\0A\00", align 1
@__func__.xbox_remote_rc_open = private unnamed_addr constant [20 x i8] c"xbox_remote_rc_open\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"%s: usb_submit_urb()=%d\0A\00", align 1
@__func__.xbox_remote_irq_in = private unnamed_addr constant [19 x i8] c"xbox_remote_irq_in\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Weird data, len=%d: %*ph\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"%s - null device?\0A\00", align 1
@__func__.xbox_remote_disconnect = private unnamed_addr constant [23 x i8] c"xbox_remote_disconnect\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_xbox_remote_driver_init237 to i8*), i8* bitcast (void ()* @xbox_remote_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_xbox_remote_driver_exit to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author238, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_description239, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file240, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license241, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xbox_remote_driver_init() #0 section ".init.text" !dbg !4198 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @xbox_remote_driver, %struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !4201
  ret i32 %call, !dbg !4201
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @xbox_remote_driver_exit() #0 section ".exit.text" !dbg !4202 {
entry:
  call void @usb_deregister(%struct.usb_driver* @xbox_remote_driver) #8, !dbg !4203
  ret void, !dbg !4203
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xbox_remote_probe(%struct.usb_interface* %interface, %struct.usb_device_id* %id) #2 !dbg !4204 {
entry:
  %retval = alloca i32, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %iface_host = alloca %struct.usb_host_interface*, align 8
  %endpoint_in = alloca %struct.usb_endpoint_descriptor*, align 8
  %xbox_remote = alloca %struct.xbox_remote*, align 8
  %rc_dev = alloca %struct.rc_dev*, align 8
  %err = alloca i32, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4205, metadata !DIExpression()), !dbg !4206
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4207, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4209, metadata !DIExpression()), !dbg !4210
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4211
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #8, !dbg !4212
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4210
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_host, metadata !4213, metadata !DIExpression()), !dbg !4214
  %1 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4215
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4216
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4216
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %iface_host, align 8, !dbg !4214
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint_in, metadata !4217, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote, metadata !4220, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rc_dev, metadata !4683, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4685, metadata !DIExpression()), !dbg !4686
  store i32 -12, i32* %err, align 4, !dbg !4686
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_host, align 8, !dbg !4687
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %3, i32 0, i32 0, !dbg !4689
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4690
  %4 = load i8, i8* %bNumEndpoints, align 4, !dbg !4690
  %conv = zext i8 %4 to i32, !dbg !4687
  %cmp = icmp eq i32 %conv, 0, !dbg !4691
  br i1 %cmp, label %if.then, label %if.end, !dbg !4692

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4693
  br label %return, !dbg !4693

if.end:                                           ; preds = %entry
  %5 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_host, align 8, !dbg !4694
  %desc2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %5, i32 0, i32 0, !dbg !4696
  %bNumEndpoints3 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc2, i32 0, i32 4, !dbg !4697
  %6 = load i8, i8* %bNumEndpoints3, align 4, !dbg !4697
  %conv4 = zext i8 %6 to i32, !dbg !4694
  %cmp5 = icmp ne i32 %conv4, 1, !dbg !4698
  br i1 %cmp5, label %if.then7, label %if.end12, !dbg !4699

if.then7:                                         ; preds = %if.end
  %7 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_host, align 8, !dbg !4700
  %desc8 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %7, i32 0, i32 0, !dbg !4700
  %bNumEndpoints9 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc8, i32 0, i32 4, !dbg !4700
  %8 = load i8, i8* %bNumEndpoints9, align 4, !dbg !4700
  %conv10 = zext i8 %8 to i32, !dbg !4700
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.xbox_remote_probe, i64 0, i64 0), i32 %conv10) #9, !dbg !4700
  store i32 -19, i32* %retval, align 4, !dbg !4702
  br label %return, !dbg !4702

if.end12:                                         ; preds = %if.end
  %9 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_host, align 8, !dbg !4703
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %9, i32 0, i32 3, !dbg !4704
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4704
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i64 0, !dbg !4703
  %desc13 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4705
  store %struct.usb_endpoint_descriptor* %desc13, %struct.usb_endpoint_descriptor** %endpoint_in, align 8, !dbg !4706
  %11 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint_in, align 8, !dbg !4707
  %call14 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %11) #8, !dbg !4709
  %tobool = icmp ne i32 %call14, 0, !dbg !4709
  br i1 %tobool, label %if.end17, label %if.then15, !dbg !4710

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.xbox_remote_probe, i64 0, i64 0)) #9, !dbg !4711
  store i32 -19, i32* %retval, align 4, !dbg !4713
  br label %return, !dbg !4713

if.end17:                                         ; preds = %if.end12
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint_in, align 8, !dbg !4714
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %12, i32 0, i32 4, !dbg !4714
  %13 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4714
  %conv18 = zext i16 %13 to i32, !dbg !4714
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !4716
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !4717

if.then21:                                        ; preds = %if.end17
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.xbox_remote_probe, i64 0, i64 0)) #9, !dbg !4718
  store i32 -19, i32* %retval, align 4, !dbg !4720
  br label %return, !dbg !4720

if.end23:                                         ; preds = %if.end17
  %call24 = call i8* @kzalloc(i64 200, i32 3264) #8, !dbg !4721
  %14 = bitcast i8* %call24 to %struct.xbox_remote*, !dbg !4721
  store %struct.xbox_remote* %14, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4722
  %call25 = call %struct.rc_dev* @rc_allocate_device(i32 0) #8, !dbg !4723
  store %struct.rc_dev* %call25, %struct.rc_dev** %rc_dev, align 8, !dbg !4724
  %15 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4725
  %tobool26 = icmp ne %struct.xbox_remote* %15, null, !dbg !4725
  br i1 %tobool26, label %lor.lhs.false, label %if.then28, !dbg !4727

lor.lhs.false:                                    ; preds = %if.end23
  %16 = load %struct.rc_dev*, %struct.rc_dev** %rc_dev, align 8, !dbg !4728
  %tobool27 = icmp ne %struct.rc_dev* %16, null, !dbg !4728
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4729

if.then28:                                        ; preds = %lor.lhs.false, %if.end23
  br label %exit_free_dev_rdev, !dbg !4730

if.end29:                                         ; preds = %lor.lhs.false
  %call30 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #8, !dbg !4731
  %17 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4732
  %irq_urb = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %17, i32 0, i32 3, !dbg !4733
  store %struct.urb* %call30, %struct.urb** %irq_urb, align 8, !dbg !4734
  %18 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4735
  %irq_urb31 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %18, i32 0, i32 3, !dbg !4737
  %19 = load %struct.urb*, %struct.urb** %irq_urb31, align 8, !dbg !4737
  %tobool32 = icmp ne %struct.urb* %19, null, !dbg !4735
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !4738

if.then33:                                        ; preds = %if.end29
  br label %exit_free_buffers, !dbg !4739

if.end34:                                         ; preds = %if.end29
  %20 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4740
  %21 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4741
  %udev35 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %21, i32 0, i32 1, !dbg !4742
  store %struct.usb_device* %20, %struct.usb_device** %udev35, align 8, !dbg !4743
  %22 = load %struct.rc_dev*, %struct.rc_dev** %rc_dev, align 8, !dbg !4744
  %23 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4745
  %rdev = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %23, i32 0, i32 0, !dbg !4746
  store %struct.rc_dev* %22, %struct.rc_dev** %rdev, align 8, !dbg !4747
  %24 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4748
  %25 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4749
  %interface36 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %25, i32 0, i32 2, !dbg !4750
  store %struct.usb_interface* %24, %struct.usb_interface** %interface36, align 8, !dbg !4751
  %26 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4752
  %27 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4753
  %rc_phys = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %27, i32 0, i32 6, !dbg !4754
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %rc_phys, i64 0, i64 0, !dbg !4753
  %call37 = call i32 @usb_make_path(%struct.usb_device* %26, i8* %arraydecay, i64 80) #8, !dbg !4755
  %28 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4756
  %rc_phys38 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %28, i32 0, i32 6, !dbg !4757
  %arraydecay39 = getelementptr inbounds [80 x i8], [80 x i8]* %rc_phys38, i64 0, i64 0, !dbg !4756
  %call40 = call i64 @strlcat(i8* %arraydecay39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 80) #8, !dbg !4758
  %29 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4759
  %rc_name = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %29, i32 0, i32 5, !dbg !4760
  %arraydecay41 = getelementptr inbounds [80 x i8], [80 x i8]* %rc_name, i64 0, i64 0, !dbg !4759
  %30 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4761
  %manufacturer = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 32, !dbg !4762
  %31 = load i8*, i8** %manufacturer, align 8, !dbg !4762
  %tobool42 = icmp ne i8* %31, null, !dbg !4761
  br i1 %tobool42, label %cond.true, label %cond.false, !dbg !4761

cond.true:                                        ; preds = %if.end34
  br label %cond.end, !dbg !4761

cond.false:                                       ; preds = %if.end34
  br label %cond.end, !dbg !4761

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %31, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %cond.false ], !dbg !4761
  %32 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4763
  %manufacturer43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 32, !dbg !4764
  %33 = load i8*, i8** %manufacturer43, align 8, !dbg !4764
  %tobool44 = icmp ne i8* %33, null, !dbg !4763
  br i1 %tobool44, label %land.rhs, label %land.end, !dbg !4765

land.rhs:                                         ; preds = %cond.end
  %34 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4766
  %product = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 31, !dbg !4767
  %35 = load i8*, i8** %product, align 8, !dbg !4767
  %tobool45 = icmp ne i8* %35, null, !dbg !4765
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %36 = phi i1 [ false, %cond.end ], [ %tobool45, %land.rhs ], !dbg !4768
  %37 = zext i1 %36 to i64, !dbg !4763
  %cond46 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !4763
  %38 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4769
  %product47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 31, !dbg !4770
  %39 = load i8*, i8** %product47, align 8, !dbg !4770
  %tobool48 = icmp ne i8* %39, null, !dbg !4769
  br i1 %tobool48, label %cond.true49, label %cond.false50, !dbg !4769

cond.true49:                                      ; preds = %land.end
  br label %cond.end51, !dbg !4769

cond.false50:                                     ; preds = %land.end
  br label %cond.end51, !dbg !4769

cond.end51:                                       ; preds = %cond.false50, %cond.true49
  %cond52 = phi i8* [ %39, %cond.true49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %cond.false50 ], !dbg !4769
  %call53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay41, i64 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %cond, i8* %cond46, i8* %cond52) #8, !dbg !4771
  %40 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4772
  %rc_name54 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %40, i32 0, i32 5, !dbg !4774
  %arraydecay55 = getelementptr inbounds [80 x i8], [80 x i8]* %rc_name54, i64 0, i64 0, !dbg !4772
  %call56 = call i64 @strlen(i8* %arraydecay55) #8, !dbg !4775
  %tobool57 = icmp ne i64 %call56, 0, !dbg !4775
  br i1 %tobool57, label %if.end67, label %if.then58, !dbg !4776

if.then58:                                        ; preds = %cond.end51
  %41 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4777
  %rc_name59 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %41, i32 0, i32 5, !dbg !4778
  %arraydecay60 = getelementptr inbounds [80 x i8], [80 x i8]* %rc_name59, i64 0, i64 0, !dbg !4777
  %42 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4779
  %udev61 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %42, i32 0, i32 1, !dbg !4779
  %43 = load %struct.usb_device*, %struct.usb_device** %udev61, align 8, !dbg !4779
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 15, !dbg !4779
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !4779
  %44 = load i16, i16* %idVendor, align 8, !dbg !4779
  %conv62 = zext i16 %44 to i32, !dbg !4779
  %45 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4780
  %udev63 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %45, i32 0, i32 1, !dbg !4780
  %46 = load %struct.usb_device*, %struct.usb_device** %udev63, align 8, !dbg !4780
  %descriptor64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 15, !dbg !4780
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor64, i32 0, i32 8, !dbg !4780
  %47 = load i16, i16* %idProduct, align 2, !dbg !4780
  %conv65 = zext i16 %47 to i32, !dbg !4780
  %call66 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay60, i64 80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %conv62, i32 %conv65) #8, !dbg !4781
  br label %if.end67, !dbg !4781

if.end67:                                         ; preds = %if.then58, %cond.end51
  %48 = load %struct.rc_dev*, %struct.rc_dev** %rc_dev, align 8, !dbg !4782
  %map_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 7, !dbg !4783
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %map_name, align 8, !dbg !4784
  %49 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4785
  call void @xbox_remote_rc_init(%struct.xbox_remote* %49) #8, !dbg !4786
  %50 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4787
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint_in, align 8, !dbg !4788
  %call68 = call i32 @xbox_remote_initialize(%struct.xbox_remote* %50, %struct.usb_endpoint_descriptor* %51) #8, !dbg !4789
  store i32 %call68, i32* %err, align 4, !dbg !4790
  %52 = load i32, i32* %err, align 4, !dbg !4791
  %tobool69 = icmp ne i32 %52, 0, !dbg !4791
  br i1 %tobool69, label %if.then70, label %if.end71, !dbg !4793

if.then70:                                        ; preds = %if.end67
  br label %exit_kill_urbs, !dbg !4794

if.end71:                                         ; preds = %if.end67
  %53 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4795
  %rdev72 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %53, i32 0, i32 0, !dbg !4796
  %54 = load %struct.rc_dev*, %struct.rc_dev** %rdev72, align 8, !dbg !4796
  %call73 = call i32 @rc_register_device(%struct.rc_dev* %54) #8, !dbg !4797
  store i32 %call73, i32* %err, align 4, !dbg !4798
  %55 = load i32, i32* %err, align 4, !dbg !4799
  %tobool74 = icmp ne i32 %55, 0, !dbg !4799
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !4801

if.then75:                                        ; preds = %if.end71
  br label %exit_kill_urbs, !dbg !4802

if.end76:                                         ; preds = %if.end71
  %56 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4803
  %57 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4804
  %58 = bitcast %struct.xbox_remote* %57 to i8*, !dbg !4804
  call void @usb_set_intfdata(%struct.usb_interface* %56, i8* %58) #8, !dbg !4805
  store i32 0, i32* %retval, align 4, !dbg !4806
  br label %return, !dbg !4806

exit_kill_urbs:                                   ; preds = %if.then75, %if.then70
  call void @llvm.dbg.label(metadata !4807), !dbg !4808
  %59 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4809
  %irq_urb77 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %59, i32 0, i32 3, !dbg !4810
  %60 = load %struct.urb*, %struct.urb** %irq_urb77, align 8, !dbg !4810
  call void @usb_kill_urb(%struct.urb* %60) #8, !dbg !4811
  br label %exit_free_buffers, !dbg !4811

exit_free_buffers:                                ; preds = %exit_kill_urbs, %if.then33
  call void @llvm.dbg.label(metadata !4812), !dbg !4813
  %61 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4814
  %irq_urb78 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %61, i32 0, i32 3, !dbg !4815
  %62 = load %struct.urb*, %struct.urb** %irq_urb78, align 8, !dbg !4815
  call void @usb_free_urb(%struct.urb* %62) #8, !dbg !4816
  br label %exit_free_dev_rdev, !dbg !4816

exit_free_dev_rdev:                               ; preds = %exit_free_buffers, %if.then28
  call void @llvm.dbg.label(metadata !4817), !dbg !4818
  %63 = load %struct.rc_dev*, %struct.rc_dev** %rc_dev, align 8, !dbg !4819
  call void @rc_free_device(%struct.rc_dev* %63) #8, !dbg !4820
  %64 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4821
  %65 = bitcast %struct.xbox_remote* %64 to i8*, !dbg !4821
  call void @kfree(i8* %65) #8, !dbg !4822
  %66 = load i32, i32* %err, align 4, !dbg !4823
  store i32 %66, i32* %retval, align 4, !dbg !4824
  br label %return, !dbg !4824

return:                                           ; preds = %exit_free_dev_rdev, %if.end76, %if.then21, %if.then15, %if.then7, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !4825
  ret i32 %67, !dbg !4825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xbox_remote_disconnect(%struct.usb_interface* %interface) #2 !dbg !4826 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %xbox_remote = alloca %struct.xbox_remote*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4827, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote, metadata !4829, metadata !DIExpression()), !dbg !4830
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4831
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !4832
  %1 = bitcast i8* %call to %struct.xbox_remote*, !dbg !4832
  store %struct.xbox_remote* %1, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4833
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4834
  call void @usb_set_intfdata(%struct.usb_interface* %2, i8* null) #8, !dbg !4835
  %3 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4836
  %tobool = icmp ne %struct.xbox_remote* %3, null, !dbg !4836
  br i1 %tobool, label %if.end, label %if.then, !dbg !4838

if.then:                                          ; preds = %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4839
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 7, !dbg !4839
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.xbox_remote_disconnect, i64 0, i64 0)) #9, !dbg !4839
  br label %return, !dbg !4841

if.end:                                           ; preds = %entry
  %5 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4842
  %irq_urb = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %5, i32 0, i32 3, !dbg !4843
  %6 = load %struct.urb*, %struct.urb** %irq_urb, align 8, !dbg !4843
  call void @usb_kill_urb(%struct.urb* %6) #8, !dbg !4844
  %7 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4845
  %rdev = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %7, i32 0, i32 0, !dbg !4846
  %8 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !4846
  call void @rc_unregister_device(%struct.rc_dev* %8) #8, !dbg !4847
  %9 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4848
  %irq_urb1 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %9, i32 0, i32 3, !dbg !4849
  %10 = load %struct.urb*, %struct.urb** %irq_urb1, align 8, !dbg !4849
  call void @usb_free_urb(%struct.urb* %10) #8, !dbg !4850
  %11 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !4851
  %12 = bitcast %struct.xbox_remote* %11 to i8*, !dbg !4851
  call void @kfree(i8* %12) #8, !dbg !4852
  br label %return, !dbg !4853

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4853
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4854 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4857, metadata !DIExpression()), !dbg !4858
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4859, metadata !DIExpression()), !dbg !4861
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4861
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4861
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4861
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4861
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4861
  store i8* %2, i8** %__mptr, align 8, !dbg !4861
  br label %do.body, !dbg !4861

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4862

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4861
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4861
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4861
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4862
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4861
  ret %struct.usb_device* %5, !dbg !4864
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4865 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4872
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #8, !dbg !4873
  %tobool = icmp ne i32 %call, 0, !dbg !4873
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4874

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4875
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #8, !dbg !4876
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4874
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4877
  %land.ext = zext i1 %2 to i32, !dbg !4874
  ret i32 %land.ext, !dbg !4878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4879 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4882, metadata !DIExpression()), !dbg !4886
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4892, metadata !DIExpression()), !dbg !4893
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4894, metadata !DIExpression()), !dbg !4895
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4896, metadata !DIExpression()), !dbg !4897
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4898, metadata !DIExpression()), !dbg !4902
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4904, metadata !DIExpression()), !dbg !4908
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4910, metadata !DIExpression()), !dbg !4914
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4919, metadata !DIExpression()), !dbg !4920
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4921, metadata !DIExpression()), !dbg !4922
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4923, metadata !DIExpression()), !dbg !4924
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4925, metadata !DIExpression()), !dbg !4926
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4927, metadata !DIExpression()), !dbg !4928
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4929, metadata !DIExpression()), !dbg !4930
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4931, metadata !DIExpression()), !dbg !4932
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4933, metadata !DIExpression()), !dbg !4934
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  %0 = load i64, i64* %size.addr, align 8, !dbg !4939
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4940
  %or = or i32 %1, 256, !dbg !4941
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4942
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4943
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4944

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4945
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4946
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4947

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4948
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4949
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4950
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4951
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4928
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4952
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4953
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4954
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4955
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4956
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4957
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4958
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4958
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4958
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4958
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4958
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4959
  br label %kmalloc.exit, !dbg !4959

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4960
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4961
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4961
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4963

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4964
  br label %kmalloc_index.exit.i, !dbg !4964

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4965
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4967
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4968

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4969
  br label %kmalloc_index.exit.i, !dbg !4969

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4970
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4972
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4973

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4975
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4976

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4977
  br label %kmalloc_index.exit.i, !dbg !4977

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4978
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4980
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4981

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4983
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4984

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4985
  br label %kmalloc_index.exit.i, !dbg !4985

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4986
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4988
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4989

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4990
  br label %kmalloc_index.exit.i, !dbg !4990

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4991
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4993
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4994

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4995
  br label %kmalloc_index.exit.i, !dbg !4995

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4996
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4998
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4999

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5000
  br label %kmalloc_index.exit.i, !dbg !5000

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5001
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5003
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5004

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5005
  br label %kmalloc_index.exit.i, !dbg !5005

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5006
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5008
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5009

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5010
  br label %kmalloc_index.exit.i, !dbg !5010

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5011
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5013
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5014

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5015
  br label %kmalloc_index.exit.i, !dbg !5015

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5016
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5018
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5019

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5020
  br label %kmalloc_index.exit.i, !dbg !5020

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5021
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5023
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5024

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5025
  br label %kmalloc_index.exit.i, !dbg !5025

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5026
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5028
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5029

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5030
  br label %kmalloc_index.exit.i, !dbg !5030

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5031
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5033
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5034

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5035
  br label %kmalloc_index.exit.i, !dbg !5035

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5036
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5038
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5039

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5040
  br label %kmalloc_index.exit.i, !dbg !5040

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5041
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5043
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5044

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5045
  br label %kmalloc_index.exit.i, !dbg !5045

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5046
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5048
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5049

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5050
  br label %kmalloc_index.exit.i, !dbg !5050

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5051
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5053
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5054

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5055
  br label %kmalloc_index.exit.i, !dbg !5055

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5056
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5058
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5059

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5060
  br label %kmalloc_index.exit.i, !dbg !5060

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5061
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5063
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5064

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5065
  br label %kmalloc_index.exit.i, !dbg !5065

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5066
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5068
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5069

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5070
  br label %kmalloc_index.exit.i, !dbg !5070

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5071
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5073
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5074

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5075
  br label %kmalloc_index.exit.i, !dbg !5075

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5076
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5078
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5079

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5080
  br label %kmalloc_index.exit.i, !dbg !5080

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5081
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5083
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5084

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5085
  br label %kmalloc_index.exit.i, !dbg !5085

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5086
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5088
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5089

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5090
  br label %kmalloc_index.exit.i, !dbg !5090

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5091
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5093
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5094

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5095
  br label %kmalloc_index.exit.i, !dbg !5095

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5096
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5098
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5099

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5100
  br label %kmalloc_index.exit.i, !dbg !5100

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5101
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5103
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5104

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5105
  br label %kmalloc_index.exit.i, !dbg !5105

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5106, !srcloc !5109
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !5110, !srcloc !5113
  unreachable, !dbg !5114

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5115
  store i32 %45, i32* %index.i, align 4, !dbg !5116
  %46 = load i32, i32* %index.i, align 4, !dbg !5117
  %tobool.i = icmp ne i32 %46, 0, !dbg !5117
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5119

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5120
  br label %kmalloc.exit, !dbg !5120

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5121
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5122
  %and.i.i = and i32 %48, 17, !dbg !5122
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5122
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5122
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5122
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5122
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5124

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5125
  br label %kmalloc_type.exit.i, !dbg !5125

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5126
  %and2.i.i = and i32 %49, 1, !dbg !5127
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5126
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5126
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5126
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5128
  br label %kmalloc_type.exit.i, !dbg !5128

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5129
  %idxprom.i = zext i32 %51 to i64, !dbg !5130
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5130
  %52 = load i32, i32* %index.i, align 4, !dbg !5131
  %idxprom6.i = zext i32 %52 to i64, !dbg !5130
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5130
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5130
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5132
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5133
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5134
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5135
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5136
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5136
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5136
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5136
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5136
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4897
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5137
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5138
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5139
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5140
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5141
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5142
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5143
  store i8* %62, i8** %retval.i, align 8, !dbg !5144
  br label %kmalloc.exit, !dbg !5144

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5145
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5146
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5147
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5147
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5147
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5147
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5147
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5148
  br label %kmalloc.exit, !dbg !5148

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5149
  ret i8* %65, !dbg !5150
}

; Function Attrs: noredzone
declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5151 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5160, metadata !DIExpression()), !dbg !5161
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5162
  %1 = load i64, i64* %size.addr, align 8, !dbg !5163
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5164
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5165
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5165
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5166
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5166
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5167
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5168
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5167
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %4, i8* %arraydecay) #8, !dbg !5169
  store i32 %call, i32* %actual, align 4, !dbg !5170
  %6 = load i32, i32* %actual, align 4, !dbg !5171
  %7 = load i64, i64* %size.addr, align 8, !dbg !5172
  %conv = trunc i64 %7 to i32, !dbg !5173
  %cmp = icmp sge i32 %6, %conv, !dbg !5174
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5175

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5175

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5176
  br label %cond.end, !dbg !5175

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5175
  ret i32 %cond, !dbg !5177
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xbox_remote_rc_init(%struct.xbox_remote* %xbox_remote) #2 !dbg !5178 {
entry:
  %xbox_remote.addr = alloca %struct.xbox_remote*, align 8
  %rdev = alloca %struct.rc_dev*, align 8
  store %struct.xbox_remote* %xbox_remote, %struct.xbox_remote** %xbox_remote.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rdev, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5185
  %rdev1 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %0, i32 0, i32 0, !dbg !5186
  %1 = load %struct.rc_dev*, %struct.rc_dev** %rdev1, align 8, !dbg !5186
  store %struct.rc_dev* %1, %struct.rc_dev** %rdev, align 8, !dbg !5184
  %2 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5187
  %3 = bitcast %struct.xbox_remote* %2 to i8*, !dbg !5187
  %4 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5188
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %4, i32 0, i32 24, !dbg !5189
  store i8* %3, i8** %priv, align 8, !dbg !5190
  %5 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5191
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 16, !dbg !5192
  store i64 134217728, i64* %allowed_protocols, align 8, !dbg !5193
  %6 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5194
  %driver_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 6, !dbg !5195
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %driver_name, align 8, !dbg !5196
  %7 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5197
  %open = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 41, !dbg !5198
  store i32 (%struct.rc_dev*)* @xbox_remote_rc_open, i32 (%struct.rc_dev*)** %open, align 8, !dbg !5199
  %8 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5200
  %close = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 42, !dbg !5201
  store void (%struct.rc_dev*)* @xbox_remote_rc_close, void (%struct.rc_dev*)** %close, align 8, !dbg !5202
  %9 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5203
  %rc_name = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %9, i32 0, i32 5, !dbg !5204
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %rc_name, i64 0, i64 0, !dbg !5203
  %10 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5205
  %device_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 3, !dbg !5206
  store i8* %arraydecay, i8** %device_name, align 8, !dbg !5207
  %11 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5208
  %rc_phys = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %11, i32 0, i32 6, !dbg !5209
  %arraydecay2 = getelementptr inbounds [80 x i8], [80 x i8]* %rc_phys, i64 0, i64 0, !dbg !5208
  %12 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5210
  %input_phys = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 4, !dbg !5211
  store i8* %arraydecay2, i8** %input_phys, align 8, !dbg !5212
  %13 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5213
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 34, !dbg !5214
  store i32 10000, i32* %timeout, align 4, !dbg !5215
  %14 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5216
  %udev = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %14, i32 0, i32 1, !dbg !5217
  %15 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5217
  %16 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5218
  %input_id = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 5, !dbg !5219
  call void @usb_to_input_id(%struct.usb_device* %15, %struct.input_id* %input_id) #8, !dbg !5220
  %17 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5221
  %interface = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %17, i32 0, i32 2, !dbg !5222
  %18 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5222
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 7, !dbg !5223
  %19 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5224
  %dev3 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 0, !dbg !5225
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 1, !dbg !5226
  store %struct.device* %dev, %struct.device** %parent, align 8, !dbg !5227
  ret void, !dbg !5228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xbox_remote_initialize(%struct.xbox_remote* %xbox_remote, %struct.usb_endpoint_descriptor* %endpoint_in) #2 !dbg !5229 {
entry:
  %xbox_remote.addr = alloca %struct.xbox_remote*, align 8
  %endpoint_in.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %pipe = alloca i32, align 4
  %maxp = alloca i32, align 4
  store %struct.xbox_remote* %xbox_remote, %struct.xbox_remote** %xbox_remote.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  store %struct.usb_endpoint_descriptor* %endpoint_in, %struct.usb_endpoint_descriptor** %endpoint_in.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint_in.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5236, metadata !DIExpression()), !dbg !5237
  %0 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5238
  %udev1 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %0, i32 0, i32 1, !dbg !5239
  %1 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !5239
  store %struct.usb_device* %1, %struct.usb_device** %udev, align 8, !dbg !5237
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !5240, metadata !DIExpression()), !dbg !5241
  call void @llvm.dbg.declare(metadata i32* %maxp, metadata !5242, metadata !DIExpression()), !dbg !5243
  %2 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5244
  %3 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint_in.addr, align 8, !dbg !5244
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %3, i32 0, i32 2, !dbg !5244
  %4 = load i8, i8* %bEndpointAddress, align 1, !dbg !5244
  %conv = zext i8 %4 to i32, !dbg !5244
  %call = call i32 @__create_pipe(%struct.usb_device* %2, i32 %conv) #8, !dbg !5244
  %or = or i32 1073741824, %call, !dbg !5244
  %or2 = or i32 %or, 128, !dbg !5244
  store i32 %or2, i32* %pipe, align 4, !dbg !5245
  %5 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5246
  %6 = load i32, i32* %pipe, align 4, !dbg !5247
  %7 = load i32, i32* %pipe, align 4, !dbg !5248
  %and = and i32 %7, 128, !dbg !5248
  %tobool = icmp ne i32 %and, 0, !dbg !5248
  %lnot = xor i1 %tobool, true, !dbg !5248
  %lnot.ext = zext i1 %lnot to i32, !dbg !5248
  %call3 = call zeroext i16 @usb_maxpacket(%struct.usb_device* %5, i32 %6, i32 %lnot.ext) #8, !dbg !5249
  %conv4 = zext i16 %call3 to i32, !dbg !5249
  store i32 %conv4, i32* %maxp, align 4, !dbg !5250
  %8 = load i32, i32* %maxp, align 4, !dbg !5251
  %cmp = icmp sgt i32 %8, 8, !dbg !5252
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5253

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5253

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %maxp, align 4, !dbg !5254
  br label %cond.end, !dbg !5253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8, %cond.true ], [ %9, %cond.false ], !dbg !5253
  store i32 %cond, i32* %maxp, align 4, !dbg !5255
  %10 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5256
  %irq_urb = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %10, i32 0, i32 3, !dbg !5257
  %11 = load %struct.urb*, %struct.urb** %irq_urb, align 8, !dbg !5257
  %12 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5258
  %13 = load i32, i32* %pipe, align 4, !dbg !5259
  %14 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5260
  %inbuf = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %14, i32 0, i32 4, !dbg !5261
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %inbuf, i64 0, i64 0, !dbg !5260
  %15 = load i32, i32* %maxp, align 4, !dbg !5262
  %16 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote.addr, align 8, !dbg !5263
  %17 = bitcast %struct.xbox_remote* %16 to i8*, !dbg !5263
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint_in.addr, align 8, !dbg !5264
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %18, i32 0, i32 5, !dbg !5265
  %19 = load i8, i8* %bInterval, align 1, !dbg !5265
  %conv6 = zext i8 %19 to i32, !dbg !5264
  call void @usb_fill_int_urb(%struct.urb* %11, %struct.usb_device* %12, i32 %13, i8* %arraydecay, i32 %15, void (%struct.urb*)* @xbox_remote_irq_in, i8* %17, i32 %conv6) #8, !dbg !5266
  ret i32 0, !dbg !5267
}

; Function Attrs: noredzone
declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5268 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5275
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5276
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5277
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5278
  ret void, !dbg !5279
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
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5280 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5283
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5284
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5284
  %conv = zext i8 %1 to i32, !dbg !5283
  %and = and i32 %conv, 3, !dbg !5285
  %cmp = icmp eq i32 %and, 3, !dbg !5286
  %conv1 = zext i1 %cmp to i32, !dbg !5286
  ret i32 %conv1, !dbg !5287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5288 {
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

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5296 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5300, metadata !DIExpression()), !dbg !5305
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5307, metadata !DIExpression()), !dbg !5308
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  %0 = load i64, i64* %size.addr, align 8, !dbg !5311
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5313
  br i1 %1, label %if.then, label %if.end447, !dbg !5314

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5315
  %tobool = icmp ne i64 %2, 0, !dbg !5315
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5318

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5319
  br label %return, !dbg !5319

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5320
  %cmp = icmp ult i64 %3, 4096, !dbg !5322
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5323

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5324
  br label %return, !dbg !5324

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub = sub i64 %4, 1, !dbg !5325
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5325
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5325

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub4 = sub i64 %6, 1, !dbg !5325
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5325
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5325

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub6 = sub i64 %8, 1, !dbg !5325
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5325
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5325

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5325

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub9 = sub i64 %9, 1, !dbg !5325
  %and = and i64 %sub9, -9223372036854775808, !dbg !5325
  %tobool10 = icmp ne i64 %and, 0, !dbg !5325
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5325

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5325

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub13 = sub i64 %10, 1, !dbg !5325
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5325
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5325
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5325

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5325

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub18 = sub i64 %11, 1, !dbg !5325
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5325
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5325
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5325

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5325

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub23 = sub i64 %12, 1, !dbg !5325
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5325
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5325
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5325

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5325

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub28 = sub i64 %13, 1, !dbg !5325
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5325
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5325
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5325

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5325

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub33 = sub i64 %14, 1, !dbg !5325
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5325
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5325
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5325

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5325

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub38 = sub i64 %15, 1, !dbg !5325
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5325
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5325
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5325

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5325

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub43 = sub i64 %16, 1, !dbg !5325
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5325
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5325
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5325

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5325

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub48 = sub i64 %17, 1, !dbg !5325
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5325
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5325
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5325

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5325

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub53 = sub i64 %18, 1, !dbg !5325
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5325
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5325
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5325

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5325

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub58 = sub i64 %19, 1, !dbg !5325
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5325
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5325
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5325

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5325

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub63 = sub i64 %20, 1, !dbg !5325
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5325
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5325
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5325

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5325

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub68 = sub i64 %21, 1, !dbg !5325
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5325
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5325
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5325

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5325

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub73 = sub i64 %22, 1, !dbg !5325
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5325
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5325
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5325

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5325

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub78 = sub i64 %23, 1, !dbg !5325
  %and79 = and i64 %sub78, 562949953421312, !dbg !5325
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5325
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5325

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5325

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub83 = sub i64 %24, 1, !dbg !5325
  %and84 = and i64 %sub83, 281474976710656, !dbg !5325
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5325
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5325

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5325

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub88 = sub i64 %25, 1, !dbg !5325
  %and89 = and i64 %sub88, 140737488355328, !dbg !5325
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5325
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5325

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5325

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub93 = sub i64 %26, 1, !dbg !5325
  %and94 = and i64 %sub93, 70368744177664, !dbg !5325
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5325
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5325

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5325

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub98 = sub i64 %27, 1, !dbg !5325
  %and99 = and i64 %sub98, 35184372088832, !dbg !5325
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5325
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5325

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5325

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub103 = sub i64 %28, 1, !dbg !5325
  %and104 = and i64 %sub103, 17592186044416, !dbg !5325
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5325
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5325

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5325

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub108 = sub i64 %29, 1, !dbg !5325
  %and109 = and i64 %sub108, 8796093022208, !dbg !5325
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5325
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5325

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5325

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub113 = sub i64 %30, 1, !dbg !5325
  %and114 = and i64 %sub113, 4398046511104, !dbg !5325
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5325
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5325

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5325

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub118 = sub i64 %31, 1, !dbg !5325
  %and119 = and i64 %sub118, 2199023255552, !dbg !5325
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5325
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5325

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5325

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub123 = sub i64 %32, 1, !dbg !5325
  %and124 = and i64 %sub123, 1099511627776, !dbg !5325
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5325
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5325

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5325

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub128 = sub i64 %33, 1, !dbg !5325
  %and129 = and i64 %sub128, 549755813888, !dbg !5325
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5325
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5325

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5325

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub133 = sub i64 %34, 1, !dbg !5325
  %and134 = and i64 %sub133, 274877906944, !dbg !5325
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5325
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5325

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5325

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub138 = sub i64 %35, 1, !dbg !5325
  %and139 = and i64 %sub138, 137438953472, !dbg !5325
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5325
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5325

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5325

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub143 = sub i64 %36, 1, !dbg !5325
  %and144 = and i64 %sub143, 68719476736, !dbg !5325
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5325
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5325

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5325

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub148 = sub i64 %37, 1, !dbg !5325
  %and149 = and i64 %sub148, 34359738368, !dbg !5325
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5325
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5325

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5325

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub153 = sub i64 %38, 1, !dbg !5325
  %and154 = and i64 %sub153, 17179869184, !dbg !5325
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5325
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5325

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5325

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub158 = sub i64 %39, 1, !dbg !5325
  %and159 = and i64 %sub158, 8589934592, !dbg !5325
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5325
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5325

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5325

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub163 = sub i64 %40, 1, !dbg !5325
  %and164 = and i64 %sub163, 4294967296, !dbg !5325
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5325
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5325

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5325

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub168 = sub i64 %41, 1, !dbg !5325
  %and169 = and i64 %sub168, 2147483648, !dbg !5325
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5325
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5325

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5325

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub173 = sub i64 %42, 1, !dbg !5325
  %and174 = and i64 %sub173, 1073741824, !dbg !5325
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5325
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5325

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5325

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub178 = sub i64 %43, 1, !dbg !5325
  %and179 = and i64 %sub178, 536870912, !dbg !5325
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5325
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5325

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5325

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub183 = sub i64 %44, 1, !dbg !5325
  %and184 = and i64 %sub183, 268435456, !dbg !5325
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5325
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5325

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5325

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub188 = sub i64 %45, 1, !dbg !5325
  %and189 = and i64 %sub188, 134217728, !dbg !5325
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5325
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5325

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5325

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub193 = sub i64 %46, 1, !dbg !5325
  %and194 = and i64 %sub193, 67108864, !dbg !5325
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5325
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5325

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5325

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub198 = sub i64 %47, 1, !dbg !5325
  %and199 = and i64 %sub198, 33554432, !dbg !5325
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5325
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5325

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5325

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub203 = sub i64 %48, 1, !dbg !5325
  %and204 = and i64 %sub203, 16777216, !dbg !5325
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5325
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5325

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5325

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub208 = sub i64 %49, 1, !dbg !5325
  %and209 = and i64 %sub208, 8388608, !dbg !5325
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5325
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5325

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5325

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub213 = sub i64 %50, 1, !dbg !5325
  %and214 = and i64 %sub213, 4194304, !dbg !5325
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5325
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5325

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5325

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub218 = sub i64 %51, 1, !dbg !5325
  %and219 = and i64 %sub218, 2097152, !dbg !5325
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5325
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5325

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5325

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub223 = sub i64 %52, 1, !dbg !5325
  %and224 = and i64 %sub223, 1048576, !dbg !5325
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5325
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5325

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5325

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub228 = sub i64 %53, 1, !dbg !5325
  %and229 = and i64 %sub228, 524288, !dbg !5325
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5325
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5325

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5325

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub233 = sub i64 %54, 1, !dbg !5325
  %and234 = and i64 %sub233, 262144, !dbg !5325
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5325
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5325

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5325

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub238 = sub i64 %55, 1, !dbg !5325
  %and239 = and i64 %sub238, 131072, !dbg !5325
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5325
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5325

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5325

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub243 = sub i64 %56, 1, !dbg !5325
  %and244 = and i64 %sub243, 65536, !dbg !5325
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5325
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5325

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5325

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub248 = sub i64 %57, 1, !dbg !5325
  %and249 = and i64 %sub248, 32768, !dbg !5325
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5325
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5325

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5325

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub253 = sub i64 %58, 1, !dbg !5325
  %and254 = and i64 %sub253, 16384, !dbg !5325
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5325
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5325

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5325

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub258 = sub i64 %59, 1, !dbg !5325
  %and259 = and i64 %sub258, 8192, !dbg !5325
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5325
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5325

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5325

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub263 = sub i64 %60, 1, !dbg !5325
  %and264 = and i64 %sub263, 4096, !dbg !5325
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5325
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5325

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5325

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub268 = sub i64 %61, 1, !dbg !5325
  %and269 = and i64 %sub268, 2048, !dbg !5325
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5325
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5325

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5325

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub273 = sub i64 %62, 1, !dbg !5325
  %and274 = and i64 %sub273, 1024, !dbg !5325
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5325
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5325

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5325

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub278 = sub i64 %63, 1, !dbg !5325
  %and279 = and i64 %sub278, 512, !dbg !5325
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5325
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5325

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5325

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub283 = sub i64 %64, 1, !dbg !5325
  %and284 = and i64 %sub283, 256, !dbg !5325
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5325
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5325

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5325

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub288 = sub i64 %65, 1, !dbg !5325
  %and289 = and i64 %sub288, 128, !dbg !5325
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5325
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5325

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5325

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub293 = sub i64 %66, 1, !dbg !5325
  %and294 = and i64 %sub293, 64, !dbg !5325
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5325
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5325

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5325

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub298 = sub i64 %67, 1, !dbg !5325
  %and299 = and i64 %sub298, 32, !dbg !5325
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5325
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5325

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5325

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub303 = sub i64 %68, 1, !dbg !5325
  %and304 = and i64 %sub303, 16, !dbg !5325
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5325
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5325

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5325

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub308 = sub i64 %69, 1, !dbg !5325
  %and309 = and i64 %sub308, 8, !dbg !5325
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5325
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5325

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5325

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub313 = sub i64 %70, 1, !dbg !5325
  %and314 = and i64 %sub313, 4, !dbg !5325
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5325
  %71 = zext i1 %tobool315 to i64, !dbg !5325
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5325
  br label %cond.end, !dbg !5325

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5325
  br label %cond.end317, !dbg !5325

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5325
  br label %cond.end319, !dbg !5325

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5325
  br label %cond.end321, !dbg !5325

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5325
  br label %cond.end323, !dbg !5325

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5325
  br label %cond.end325, !dbg !5325

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5325
  br label %cond.end327, !dbg !5325

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5325
  br label %cond.end329, !dbg !5325

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5325
  br label %cond.end331, !dbg !5325

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5325
  br label %cond.end333, !dbg !5325

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5325
  br label %cond.end335, !dbg !5325

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5325
  br label %cond.end337, !dbg !5325

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5325
  br label %cond.end339, !dbg !5325

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5325
  br label %cond.end341, !dbg !5325

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5325
  br label %cond.end343, !dbg !5325

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5325
  br label %cond.end345, !dbg !5325

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5325
  br label %cond.end347, !dbg !5325

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5325
  br label %cond.end349, !dbg !5325

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5325
  br label %cond.end351, !dbg !5325

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5325
  br label %cond.end353, !dbg !5325

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5325
  br label %cond.end355, !dbg !5325

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5325
  br label %cond.end357, !dbg !5325

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5325
  br label %cond.end359, !dbg !5325

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5325
  br label %cond.end361, !dbg !5325

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5325
  br label %cond.end363, !dbg !5325

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5325
  br label %cond.end365, !dbg !5325

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5325
  br label %cond.end367, !dbg !5325

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5325
  br label %cond.end369, !dbg !5325

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5325
  br label %cond.end371, !dbg !5325

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5325
  br label %cond.end373, !dbg !5325

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5325
  br label %cond.end375, !dbg !5325

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5325
  br label %cond.end377, !dbg !5325

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5325
  br label %cond.end379, !dbg !5325

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5325
  br label %cond.end381, !dbg !5325

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5325
  br label %cond.end383, !dbg !5325

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5325
  br label %cond.end385, !dbg !5325

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5325
  br label %cond.end387, !dbg !5325

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5325
  br label %cond.end389, !dbg !5325

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5325
  br label %cond.end391, !dbg !5325

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5325
  br label %cond.end393, !dbg !5325

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5325
  br label %cond.end395, !dbg !5325

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5325
  br label %cond.end397, !dbg !5325

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5325
  br label %cond.end399, !dbg !5325

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5325
  br label %cond.end401, !dbg !5325

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5325
  br label %cond.end403, !dbg !5325

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5325
  br label %cond.end405, !dbg !5325

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5325
  br label %cond.end407, !dbg !5325

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5325
  br label %cond.end409, !dbg !5325

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5325
  br label %cond.end411, !dbg !5325

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5325
  br label %cond.end413, !dbg !5325

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5325
  br label %cond.end415, !dbg !5325

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5325
  br label %cond.end417, !dbg !5325

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5325
  br label %cond.end419, !dbg !5325

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5325
  br label %cond.end421, !dbg !5325

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5325
  br label %cond.end423, !dbg !5325

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5325
  br label %cond.end425, !dbg !5325

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5325
  br label %cond.end427, !dbg !5325

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5325
  br label %cond.end429, !dbg !5325

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5325
  br label %cond.end431, !dbg !5325

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5325
  br label %cond.end433, !dbg !5325

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5325
  br label %cond.end435, !dbg !5325

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5325
  br label %cond.end437, !dbg !5325

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5325
  br label %cond.end440, !dbg !5325

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5325

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5325
  br label %cond.end444, !dbg !5325

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5325
  %sub443 = sub i64 %72, 1, !dbg !5325
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5325
  br label %cond.end444, !dbg !5325

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5325
  %sub446 = sub i32 %cond445, 12, !dbg !5326
  %add = add i32 %sub446, 1, !dbg !5327
  store i32 %add, i32* %retval, align 4, !dbg !5328
  br label %return, !dbg !5328

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5329
  %dec = add i64 %73, -1, !dbg !5329
  store i64 %dec, i64* %size.addr, align 8, !dbg !5329
  %74 = load i64, i64* %size.addr, align 8, !dbg !5330
  %shr = lshr i64 %74, 12, !dbg !5330
  store i64 %shr, i64* %size.addr, align 8, !dbg !5330
  %75 = load i64, i64* %size.addr, align 8, !dbg !5331
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5308
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5332
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5333
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5332, !srcloc !5334
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5332
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5335
  %add.i = add i32 %79, 1, !dbg !5336
  store i32 %add.i, i32* %retval, align 4, !dbg !5337
  br label %return, !dbg !5337

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5338
  ret i32 %80, !dbg !5338
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5339 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5300, metadata !DIExpression()), !dbg !5343
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5307, metadata !DIExpression()), !dbg !5345
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  %0 = load i64, i64* %n.addr, align 8, !dbg !5348
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5345
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5349
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5350
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5349, !srcloc !5334
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5349
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5351
  %add.i = add i32 %4, 1, !dbg !5352
  %sub = sub i32 %add.i, 1, !dbg !5353
  ret i32 %sub, !dbg !5354
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5355 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5367
  ret i8* %0, !dbg !5368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xbox_remote_rc_open(%struct.rc_dev* %rdev) #2 !dbg !5369 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.rc_dev*, align 8
  %xbox_remote = alloca %struct.xbox_remote*, align 8
  store %struct.rc_dev* %rdev, %struct.rc_dev** %rdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rdev.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote, metadata !5372, metadata !DIExpression()), !dbg !5373
  %0 = load %struct.rc_dev*, %struct.rc_dev** %rdev.addr, align 8, !dbg !5374
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5375
  %1 = load i8*, i8** %priv, align 8, !dbg !5375
  %2 = bitcast i8* %1 to %struct.xbox_remote*, !dbg !5374
  store %struct.xbox_remote* %2, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5373
  %3 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5376
  %udev = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %3, i32 0, i32 1, !dbg !5377
  %4 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5377
  %5 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5378
  %irq_urb = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %5, i32 0, i32 3, !dbg !5379
  %6 = load %struct.urb*, %struct.urb** %irq_urb, align 8, !dbg !5379
  %dev = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 8, !dbg !5380
  store %struct.usb_device* %4, %struct.usb_device** %dev, align 8, !dbg !5381
  %7 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5382
  %irq_urb1 = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %7, i32 0, i32 3, !dbg !5384
  %8 = load %struct.urb*, %struct.urb** %irq_urb1, align 8, !dbg !5384
  %call = call i32 @usb_submit_urb(%struct.urb* %8, i32 3264) #8, !dbg !5385
  %tobool = icmp ne i32 %call, 0, !dbg !5385
  br i1 %tobool, label %if.then, label %if.end, !dbg !5386

if.then:                                          ; preds = %entry
  %9 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5387
  %interface = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %9, i32 0, i32 2, !dbg !5387
  %10 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5387
  %dev2 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 7, !dbg !5387
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.xbox_remote_rc_open, i64 0, i64 0)) #9, !dbg !5387
  store i32 -5, i32* %retval, align 4, !dbg !5389
  br label %return, !dbg !5389

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5390
  br label %return, !dbg !5390

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5391
  ret i32 %11, !dbg !5391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xbox_remote_rc_close(%struct.rc_dev* %rdev) #2 !dbg !5392 {
entry:
  %rdev.addr = alloca %struct.rc_dev*, align 8
  %xbox_remote = alloca %struct.xbox_remote*, align 8
  store %struct.rc_dev* %rdev, %struct.rc_dev** %rdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rdev.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote, metadata !5395, metadata !DIExpression()), !dbg !5396
  %0 = load %struct.rc_dev*, %struct.rc_dev** %rdev.addr, align 8, !dbg !5397
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5398
  %1 = load i8*, i8** %priv, align 8, !dbg !5398
  %2 = bitcast i8* %1 to %struct.xbox_remote*, !dbg !5397
  store %struct.xbox_remote* %2, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5396
  %3 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5399
  %irq_urb = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %3, i32 0, i32 3, !dbg !5400
  %4 = load %struct.urb*, %struct.urb** %irq_urb, align 8, !dbg !5400
  call void @usb_kill_urb(%struct.urb* %4) #8, !dbg !5401
  ret void, !dbg !5402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5403 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5414
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5415
  store i16 3, i16* %bustype, align 2, !dbg !5416
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5417
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5417
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5417
  %2 = load i16, i16* %idVendor, align 8, !dbg !5417
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5418
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5419
  store i16 %2, i16* %vendor, align 2, !dbg !5420
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5421
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5421
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5421
  %5 = load i16, i16* %idProduct, align 2, !dbg !5421
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5422
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5423
  store i16 %5, i16* %product, align 2, !dbg !5424
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5425
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5425
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5425
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5425
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5426
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5427
  store i16 %8, i16* %version, align 2, !dbg !5428
  ret void, !dbg !5429
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5430 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5437
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5438
  %1 = load i32, i32* %devnum, align 8, !dbg !5438
  %shl = shl i32 %1, 8, !dbg !5439
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5440
  %shl1 = shl i32 %2, 15, !dbg !5441
  %or = or i32 %shl, %shl1, !dbg !5442
  ret i32 %or, !dbg !5443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @usb_maxpacket(%struct.usb_device* %udev, i32 %pipe, i32 %is_out) #2 !dbg !5444 {
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
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  store i32 %is_out, i32* %is_out.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_out.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  call void @llvm.dbg.declare(metadata %struct.usb_host_endpoint** %ep, metadata !5453, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.declare(metadata i32* %epnum, metadata !5455, metadata !DIExpression()), !dbg !5456
  %0 = load i32, i32* %pipe.addr, align 4, !dbg !5457
  %shr = ashr i32 %0, 15, !dbg !5457
  %and = and i32 %shr, 15, !dbg !5457
  store i32 %and, i32* %epnum, align 4, !dbg !5456
  %1 = load i32, i32* %is_out.addr, align 4, !dbg !5458
  %tobool = icmp ne i32 %1, 0, !dbg !5458
  br i1 %tobool, label %if.then, label %if.else, !dbg !5460

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5461, metadata !DIExpression()), !dbg !5464
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5464
  %and1 = and i32 %2, 128, !dbg !5464
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5464
  %lnot = xor i1 %tobool2, true, !dbg !5464
  %lnot3 = xor i1 %lnot, true, !dbg !5464
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5464
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5464
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5465
  %tobool4 = icmp ne i32 %3, 0, !dbg !5465
  %lnot5 = xor i1 %tobool4, true, !dbg !5465
  %lnot7 = xor i1 %lnot5, true, !dbg !5465
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5465
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5465
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5465
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !5464

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !5465

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !5467

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !5469

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !5467

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 1986, i32 2305, i64 12) #10, !dbg !5471, !srcloc !5473
  br label %do.end13, !dbg !5471

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #10, !dbg !5474, !srcloc !5476
  br label %do.body14, !dbg !5467

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5477

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !5467

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !5467

if.end:                                           ; preds = %do.end16, %if.then
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5464
  %tobool17 = icmp ne i32 %4, 0, !dbg !5464
  %lnot18 = xor i1 %tobool17, true, !dbg !5464
  %lnot20 = xor i1 %lnot18, true, !dbg !5464
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5464
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5464
  store i64 %conv22, i64* %tmp, align 8, !dbg !5465
  %5 = load i64, i64* %tmp, align 8, !dbg !5464
  %6 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5479
  %ep_out = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 21, !dbg !5480
  %7 = load i32, i32* %epnum, align 4, !dbg !5481
  %idxprom = zext i32 %7 to i64, !dbg !5479
  %arrayidx = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_out, i64 0, i64 %idxprom, !dbg !5479
  %8 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx, align 8, !dbg !5479
  store %struct.usb_host_endpoint* %8, %struct.usb_host_endpoint** %ep, align 8, !dbg !5482
  br label %if.end58, !dbg !5483

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on23, metadata !5484, metadata !DIExpression()), !dbg !5487
  %9 = load i32, i32* %pipe.addr, align 4, !dbg !5487
  %and24 = and i32 %9, 128, !dbg !5487
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5487
  %lnot26 = xor i1 %tobool25, true, !dbg !5487
  %lnot28 = xor i1 %lnot26, true, !dbg !5487
  %lnot30 = xor i1 %lnot28, true, !dbg !5487
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5487
  store i32 %lnot.ext31, i32* %__ret_warn_on23, align 4, !dbg !5487
  %10 = load i32, i32* %__ret_warn_on23, align 4, !dbg !5488
  %tobool32 = icmp ne i32 %10, 0, !dbg !5488
  %lnot33 = xor i1 %tobool32, true, !dbg !5488
  %lnot35 = xor i1 %lnot33, true, !dbg !5488
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !5488
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !5488
  %tobool38 = icmp ne i64 %conv37, 0, !dbg !5488
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !5487

if.then39:                                        ; preds = %if.else
  br label %do.body40, !dbg !5488

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !5490

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !5492

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !5490

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 1989, i32 2305, i64 12) #10, !dbg !5494, !srcloc !5496
  br label %do.end44, !dbg !5494

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #10, !dbg !5497, !srcloc !5499
  br label %do.body45, !dbg !5490

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5500

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !5490

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !5490

if.end48:                                         ; preds = %do.end47, %if.else
  %11 = load i32, i32* %__ret_warn_on23, align 4, !dbg !5487
  %tobool50 = icmp ne i32 %11, 0, !dbg !5487
  %lnot51 = xor i1 %tobool50, true, !dbg !5487
  %lnot53 = xor i1 %lnot51, true, !dbg !5487
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5487
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !5487
  store i64 %conv55, i64* %tmp49, align 8, !dbg !5488
  %12 = load i64, i64* %tmp49, align 8, !dbg !5487
  %13 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5502
  %ep_in = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 20, !dbg !5503
  %14 = load i32, i32* %epnum, align 4, !dbg !5504
  %idxprom56 = zext i32 %14 to i64, !dbg !5502
  %arrayidx57 = getelementptr [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*]* %ep_in, i64 0, i64 %idxprom56, !dbg !5502
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %arrayidx57, align 8, !dbg !5502
  store %struct.usb_host_endpoint* %15, %struct.usb_host_endpoint** %ep, align 8, !dbg !5505
  br label %if.end58

if.end58:                                         ; preds = %if.end48, %if.end
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !5506
  %tobool59 = icmp ne %struct.usb_host_endpoint* %16, null, !dbg !5506
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !5508

if.then60:                                        ; preds = %if.end58
  store i16 0, i16* %retval, align 2, !dbg !5509
  br label %return, !dbg !5509

if.end61:                                         ; preds = %if.end58
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %ep, align 8, !dbg !5510
  %desc = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 0, !dbg !5511
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %desc) #8, !dbg !5512
  %conv62 = trunc i32 %call to i16, !dbg !5512
  store i16 %conv62, i16* %retval, align 2, !dbg !5513
  br label %return, !dbg !5513

return:                                           ; preds = %if.end61, %if.then60
  %18 = load i16, i16* %retval, align 2, !dbg !5514
  ret i16 %18, !dbg !5514
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5515 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5520, metadata !DIExpression()), !dbg !5521
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5522, metadata !DIExpression()), !dbg !5523
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5534
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5535
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5536
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5537
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5538
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5539
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5540
  store i32 %2, i32* %pipe2, align 8, !dbg !5541
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5542
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5543
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5544
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5545
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5546
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5547
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5548
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5549
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5550
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5551
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5552
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5553
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5554
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5555
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5556
  store i8* %10, i8** %context4, align 8, !dbg !5557
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5558
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5560
  %13 = load i32, i32* %speed, align 4, !dbg !5560
  %cmp = icmp eq i32 %13, 3, !dbg !5561
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5562

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5563
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5564
  %15 = load i32, i32* %speed5, align 4, !dbg !5564
  %cmp6 = icmp uge i32 %15, 5, !dbg !5565
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5566

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5567, metadata !DIExpression()), !dbg !5570
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5571, metadata !DIExpression()), !dbg !5573
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5573
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5573
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5574, metadata !DIExpression()), !dbg !5573
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5573
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5573
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5573
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5573
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5573

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5573
  br label %cond.end, !dbg !5573

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5573
  br label %cond.end, !dbg !5573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5573
  store i32 %cond, i32* %tmp, align 4, !dbg !5573
  %21 = load i32, i32* %tmp, align 4, !dbg !5573
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5570
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5575, metadata !DIExpression()), !dbg !5570
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5570
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5570
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5570
  %cmp9 = icmp slt i32 %22, %23, !dbg !5570
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5570

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5570
  br label %cond.end12, !dbg !5570

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5570
  br label %cond.end12, !dbg !5570

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5570
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5570
  %26 = load i32, i32* %tmp8, align 4, !dbg !5570
  store i32 %26, i32* %interval.addr, align 4, !dbg !5576
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5577
  %sub = sub i32 %27, 1, !dbg !5578
  %shl = shl i32 1, %sub, !dbg !5579
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5580
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5581
  store i32 %shl, i32* %interval14, align 8, !dbg !5582
  br label %if.end, !dbg !5583

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5584
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5586
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5587
  store i32 %29, i32* %interval15, align 8, !dbg !5588
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5589
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5590
  store i32 -1, i32* %start_frame, align 8, !dbg !5591
  ret void, !dbg !5592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xbox_remote_irq_in(%struct.urb* %urb) #2 !dbg !5593 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %xbox_remote = alloca %struct.xbox_remote*, align 8
  %retval = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5594, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote, metadata !5596, metadata !DIExpression()), !dbg !5597
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5598
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5599
  %1 = load i8*, i8** %context, align 8, !dbg !5599
  %2 = bitcast i8* %1 to %struct.xbox_remote*, !dbg !5598
  store %struct.xbox_remote* %2, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5597
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !5600, metadata !DIExpression()), !dbg !5601
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5602
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5603
  %4 = load i32, i32* %status, align 8, !dbg !5603
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb1
    i32 -2, label %sw.bb1
    i32 -108, label %sw.bb1
  ], !dbg !5604

sw.bb:                                            ; preds = %entry
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5605
  call void @xbox_remote_input_report(%struct.urb* %5) #8, !dbg !5607
  br label %sw.epilog, !dbg !5608

sw.bb1:                                           ; preds = %entry, %entry, %entry
  br label %if.end, !dbg !5609

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5610

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5611
  %call = call i32 @usb_submit_urb(%struct.urb* %6, i32 2592) #8, !dbg !5612
  store i32 %call, i32* %retval, align 4, !dbg !5613
  %7 = load i32, i32* %retval, align 4, !dbg !5614
  %tobool = icmp ne i32 %7, 0, !dbg !5614
  br i1 %tobool, label %if.then, label %if.end, !dbg !5616

if.then:                                          ; preds = %sw.epilog
  %8 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5617
  %interface = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %8, i32 0, i32 2, !dbg !5617
  %9 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5617
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 7, !dbg !5617
  %10 = load i32, i32* %retval, align 4, !dbg !5617
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.xbox_remote_irq_in, i64 0, i64 0), i32 %10) #9, !dbg !5617
  br label %if.end, !dbg !5617

if.end:                                           ; preds = %sw.bb1, %if.then, %sw.epilog
  ret void, !dbg !5618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5619 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5622
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5622
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5622
  %conv = zext i16 %1 to i32, !dbg !5622
  %and = and i32 %conv, 2047, !dbg !5623
  ret i32 %and, !dbg !5624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xbox_remote_input_report(%struct.urb* %urb) #2 !dbg !5625 {
entry:
  %p.addr.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i, metadata !5626, metadata !DIExpression()), !dbg !5633
  %urb.addr = alloca %struct.urb*, align 8
  %xbox_remote = alloca %struct.xbox_remote*, align 8
  %data = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.declare(metadata %struct.xbox_remote** %xbox_remote, metadata !5637, metadata !DIExpression()), !dbg !5638
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5639
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5640
  %1 = load i8*, i8** %context, align 8, !dbg !5640
  %2 = bitcast i8* %1 to %struct.xbox_remote*, !dbg !5639
  store %struct.xbox_remote* %2, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5638
  call void @llvm.dbg.declare(metadata i8** %data, metadata !5641, metadata !DIExpression()), !dbg !5642
  %3 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5643
  %inbuf = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %3, i32 0, i32 4, !dbg !5644
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %inbuf, i64 0, i64 0, !dbg !5643
  store i8* %arraydecay, i8** %data, align 8, !dbg !5642
  %4 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5645
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 20, !dbg !5647
  %5 = load i32, i32* %actual_length, align 4, !dbg !5647
  %cmp = icmp ne i32 %5, 6, !dbg !5648
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5649

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5650
  %actual_length1 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 20, !dbg !5651
  %7 = load i32, i32* %actual_length1, align 4, !dbg !5651
  %8 = load i8*, i8** %data, align 8, !dbg !5652
  %arrayidx = getelementptr i8, i8* %8, i64 1, !dbg !5652
  %9 = load i8, i8* %arrayidx, align 1, !dbg !5652
  %conv = zext i8 %9 to i32, !dbg !5652
  %cmp2 = icmp ne i32 %7, %conv, !dbg !5653
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5654

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5655
  %dev = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 8, !dbg !5655
  %11 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !5655
  %dev4 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 14, !dbg !5655
  %12 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5655
  %actual_length5 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 20, !dbg !5655
  %13 = load i32, i32* %actual_length5, align 4, !dbg !5655
  %14 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5655
  %actual_length6 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 20, !dbg !5655
  %15 = load i32, i32* %actual_length6, align 4, !dbg !5655
  %16 = load i8*, i8** %data, align 8, !dbg !5655
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %13, i32 %15, i8* %16) #9, !dbg !5655
  br label %return, !dbg !5657

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.xbox_remote*, %struct.xbox_remote** %xbox_remote, align 8, !dbg !5658
  %rdev = getelementptr inbounds %struct.xbox_remote, %struct.xbox_remote* %17, i32 0, i32 0, !dbg !5659
  %18 = load %struct.rc_dev*, %struct.rc_dev** %rdev, align 8, !dbg !5659
  %19 = load i8*, i8** %data, align 8, !dbg !5660
  %add.ptr = getelementptr i8, i8* %19, i64 2, !dbg !5661
  %20 = bitcast i8* %add.ptr to i16*, !dbg !5662
  store i16* %20, i16** %p.addr.i, align 8
  %21 = load i16*, i16** %p.addr.i, align 8, !dbg !5663
  %22 = load i16, i16* %21, align 2, !dbg !5664
  %conv7 = zext i16 %22 to i64, !dbg !5665
  call void @rc_keydown(%struct.rc_dev* %18, i32 27, i64 %conv7, i8 zeroext 0) #8, !dbg !5666
  br label %return, !dbg !5667

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5667
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @rc_keydown(%struct.rc_dev*, i32, i64, i8 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5668 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5675
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5676
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5677
  store i8* %0, i8** %driver_data, align 8, !dbg !5678
  ret void, !dbg !5679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !5680 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5683, metadata !DIExpression()), !dbg !5684
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5685
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5686
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5687
  ret i8* %call, !dbg !5688
}

; Function Attrs: noredzone
declare dso_local void @rc_unregister_device(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5689 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5694
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5695
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5695
  ret i8* %1, !dbg !5696
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4193, !4194, !4195, !4196}
!llvm.ident = !{!4197}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xbox_remote_driver_init237", scope: !2, file: !3, line: 304, type: !181, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !170, globals: !4103, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/xbox_remote.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !112, !121, !126, !157, !163}
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
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !164, line: 305, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!170 = !{!171, !174, !177, !179, !181, !182, !186, !4102}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !173, line: 76, flags: DIFlagFwdDecl)
!173 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !175, line: 24, baseType: !176)
!175 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !178, line: 29, baseType: !174)
!178 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !180, line: 148, baseType: !7)
!180 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !184)
!184 = !{!185, !187, !192, !196, !197, !198, !199, !200, !203, !204, !208, !209, !3844, !3884, !3885, !3902, !3963, !4045, !4046, !4048, !4049, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4084, !4085, !4086, !4091, !4098, !4099, !4100, !4101}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !183, file: !6, line: 632, baseType: !186, size: 32)
!186 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !183, file: !6, line: 633, baseType: !188, size: 128, offset: 32)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !190)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !{!191}
!191 = !DISubrange(count: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !183, file: !6, line: 634, baseType: !193, size: 32, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !194, line: 21, baseType: !195)
!194 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !175, line: 27, baseType: !7)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !183, file: !6, line: 635, baseType: !100, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !183, file: !6, line: 636, baseType: !112, size: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !183, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !183, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !183, file: !6, line: 640, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !183, file: !6, line: 641, baseType: !186, size: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !183, file: !6, line: 643, baseType: !205, size: 64, offset: 416)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 2)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !6, line: 645, baseType: !182, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !183, file: !6, line: 646, baseType: !210, size: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !212)
!212 = !{!213, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3838, !3839, !3840, !3841, !3842, !3843}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !211, file: !6, line: 425, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !216)
!216 = !{!217, !3375, !3376, !3379, !3380, !3431, !3522, !3523, !3524, !3525, !3526, !3535, !3640, !3653, !3656, !3657, !3661, !3663, !3664, !3665, !3669, !3675, !3676, !3679, !3683, !3773, !3774, !3775, !3776, !3777, !3809, !3810, !3811, !3814, !3817, !3818, !3819, !3820}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !215, file: !80, line: 462, baseType: !218, size: 512)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !219, line: 64, size: 512, elements: !220)
!219 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!220 = !{!221, !224, !230, !232, !292, !3226, !3365, !3370, !3371, !3372, !3373, !3374}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !219, line: 65, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !218, file: !219, line: 66, baseType: !225, size: 128, offset: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !180, line: 178, size: 128, elements: !226)
!226 = !{!227, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !180, line: 179, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !225, file: !180, line: 179, baseType: !228, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !219, line: 67, baseType: !231, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !218, file: !219, line: 68, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !219, line: 192, size: 704, elements: !235)
!235 = !{!236, !237, !253, !254}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !234, file: !219, line: 193, baseType: !225, size: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !234, file: !219, line: 194, baseType: !238, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !239, line: 83, baseType: !240)
!239 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !239, line: 71, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !240, file: !239, line: 72, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !240, file: !239, line: 72, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !243, file: !239, line: 73, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !239, line: 20, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !246, file: !239, line: 21, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !250, line: 25, baseType: !251)
!250 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 25, elements: !252)
!252 = !{}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !234, file: !219, line: 195, baseType: !218, size: 512, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !234, file: !219, line: 196, baseType: !255, size: 64, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !219, line: 156, size: 192, elements: !258)
!258 = !{!259, !264, !269}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !257, file: !219, line: 157, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!186, !233, !231}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !219, line: 158, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!222, !233, !231}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !257, file: !219, line: 159, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!186, !233, !231, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !219, line: 148, size: 20736, elements: !276)
!276 = !{!277, !282, !286, !287, !291}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !275, file: !219, line: 149, baseType: !278, size: 192)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 192, elements: !280)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!280 = !{!281}
!281 = !DISubrange(count: 3)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !275, file: !219, line: 150, baseType: !283, size: 4096, offset: 192)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 4096, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !275, file: !219, line: 151, baseType: !186, size: 32, offset: 4288)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !275, file: !219, line: 152, baseType: !288, size: 16384, offset: 4320)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 16384, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 2048)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !275, file: !219, line: 153, baseType: !186, size: 32, offset: 20704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !218, file: !219, line: 69, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !219, line: 138, size: 448, elements: !295)
!295 = !{!296, !300, !329, !331, !3188, !3216, !3220}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !294, file: !219, line: 139, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !231}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !294, file: !219, line: 140, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !304, line: 230, size: 128, elements: !305)
!304 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !321}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !303, file: !304, line: 231, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !231, !315, !279}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !180, line: 60, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !312, line: 73, baseType: !313)
!312 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !312, line: 15, baseType: !314)
!314 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !304, line: 30, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !304, line: 31, baseType: !222, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !316, file: !304, line: 32, baseType: !320, size: 16, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !180, line: 19, baseType: !176)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !303, file: !304, line: 232, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!310, !231, !315, !222, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 55, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !312, line: 72, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !312, line: 16, baseType: !328)
!328 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !294, file: !219, line: 141, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !294, file: !219, line: 142, baseType: !332, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !304, line: 84, size: 320, elements: !336)
!336 = !{!337, !338, !342, !3185, !3186}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !304, line: 85, baseType: !222, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !335, file: !304, line: 86, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!320, !231, !315, !186}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !335, file: !304, line: 88, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!320, !231, !346, !186}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !304, line: 168, size: 448, elements: !348)
!348 = !{!349, !350, !351, !352, !3180, !3181}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !347, file: !304, line: 169, baseType: !316, size: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !347, file: !304, line: 170, baseType: !325, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !347, file: !304, line: 171, baseType: !181, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !347, file: !304, line: 172, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!310, !356, !231, !346, !279, !531, !325}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !358)
!358 = !{!359, !377, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3163, !3164, !3173, !3174, !3175, !3176, !3177, !3178, !3179}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !357, file: !51, line: 920, baseType: !360, size: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !51, line: 917, size: 128, elements: !361)
!361 = !{!362, !368}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !360, file: !51, line: 918, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !364, line: 58, size: 64, elements: !365)
!364 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !364, line: 59, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !360, file: !51, line: 919, baseType: !369, size: 128, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !180, line: 216, size: 128, align: 64, elements: !370)
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !180, line: 217, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !369, file: !180, line: 218, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !372}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !357, file: !51, line: 921, baseType: !378, size: 128, offset: 128)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !379, line: 8, size: 128, elements: !380)
!379 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!380 = !{!381, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !378, file: !379, line: 9, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !384, line: 18, flags: DIFlagFwdDecl)
!384 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !378, file: !379, line: 10, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !384, line: 89, size: 1536, elements: !388)
!388 = !{!389, !390, !400, !408, !409, !428, !3113, !3115, !3127, !3128, !3129, !3130, !3131, !3137, !3138, !3139}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !387, file: !384, line: 91, baseType: !7, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !387, file: !384, line: 92, baseType: !391, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !392, line: 277, baseType: !393)
!392 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !392, line: 277, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !393, file: !392, line: 277, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !392, line: 70, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !392, line: 65, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !397, file: !392, line: 66, baseType: !7, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !387, file: !384, line: 93, baseType: !401, size: 128, offset: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !402, line: 38, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !402, line: 39, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !401, file: !402, line: 39, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !387, file: !384, line: 94, baseType: !386, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !387, file: !384, line: 95, baseType: !410, size: 128, offset: 256)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !384, line: 47, size: 128, elements: !411)
!411 = !{!412, !424}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !384, line: 48, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !384, line: 48, size: 64, elements: !414)
!414 = !{!415, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !384, line: 49, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !384, line: 49, size: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !416, file: !384, line: 50, baseType: !193, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !416, file: !384, line: 50, baseType: !193, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !413, file: !384, line: 52, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !194, line: 23, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !175, line: 31, baseType: !423)
!423 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !410, file: !384, line: 54, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !387, file: !384, line: 96, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !431)
!431 = !{!432, !433, !434, !442, !449, !450, !598, !2817, !2818, !2819, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !3081, !3089, !3090, !3091, !3109, !3110, !3111, !3112}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !430, file: !51, line: 611, baseType: !320, size: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !430, file: !51, line: 612, baseType: !176, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !430, file: !51, line: 613, baseType: !435, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !436, line: 23, baseType: !437)
!436 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 21, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !437, file: !436, line: 22, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !180, line: 32, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !312, line: 49, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !430, file: !51, line: 614, baseType: !443, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !436, line: 28, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 26, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !444, file: !436, line: 27, baseType: !447, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !180, line: 33, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !312, line: 50, baseType: !7)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !430, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !430, file: !51, line: 622, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !454)
!454 = !{!455, !459, !472, !476, !482, !486, !492, !496, !500, !504, !508, !509, !515, !519, !545, !574, !578, !584, !589, !593, !594}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !453, file: !51, line: 1865, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!386, !429, !386, !7}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !453, file: !51, line: 1866, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!222, !386, !429, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !465, line: 10, size: 128, elements: !466)
!465 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !464, file: !465, line: 11, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !181}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !464, file: !465, line: 12, baseType: !181, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !453, file: !51, line: 1867, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!186, !429, !186}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !453, file: !51, line: 1868, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !429, !186}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !453, file: !51, line: 1870, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!186, !386, !279, !186}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !453, file: !51, line: 1872, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!186, !429, !386, !320, !490}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !180, line: 30, baseType: !491)
!491 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !453, file: !51, line: 1873, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!186, !386, !429, !386}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !453, file: !51, line: 1874, baseType: !497, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!186, !429, !386}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !453, file: !51, line: 1875, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!186, !429, !386, !222}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !453, file: !51, line: 1876, baseType: !505, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!186, !429, !386, !320}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !453, file: !51, line: 1877, baseType: !497, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !453, file: !51, line: 1878, baseType: !510, size: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!186, !429, !386, !320, !513}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !180, line: 16, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !180, line: 13, baseType: !193)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !453, file: !51, line: 1879, baseType: !516, size: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!186, !429, !386, !429, !386, !7}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !453, file: !51, line: 1881, baseType: !520, size: 64, offset: 832)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!186, !386, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !534, !542, !543, !544}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !524, file: !51, line: 220, baseType: !7, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !524, file: !51, line: 221, baseType: !320, size: 16, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !524, file: !51, line: 222, baseType: !435, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !524, file: !51, line: 223, baseType: !443, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !524, file: !51, line: 224, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !180, line: 46, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !312, line: 88, baseType: !533)
!533 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !524, file: !51, line: 225, baseType: !535, size: 128, offset: 192)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !536, line: 13, size: 128, elements: !537)
!536 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !541}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !535, file: !536, line: 14, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !536, line: 8, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !175, line: 30, baseType: !533)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !535, file: !536, line: 15, baseType: !314, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !524, file: !51, line: 226, baseType: !535, size: 128, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !524, file: !51, line: 227, baseType: !535, size: 128, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !524, file: !51, line: 234, baseType: !356, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !453, file: !51, line: 1882, baseType: !546, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!186, !549, !551, !193, !7}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !553, line: 22, size: 1152, elements: !554)
!553 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!554 = !{!555, !556, !557, !558, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !552, file: !553, line: 23, baseType: !193, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !552, file: !553, line: 24, baseType: !320, size: 16, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !552, file: !553, line: 25, baseType: !7, size: 32, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !552, file: !553, line: 26, baseType: !559, size: 32, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !180, line: 104, baseType: !193)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !552, file: !553, line: 27, baseType: !421, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !552, file: !553, line: 28, baseType: !421, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !552, file: !553, line: 37, baseType: !421, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !552, file: !553, line: 38, baseType: !513, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !552, file: !553, line: 39, baseType: !513, size: 32, offset: 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !552, file: !553, line: 40, baseType: !435, size: 32, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !552, file: !553, line: 41, baseType: !443, size: 32, offset: 416)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !552, file: !553, line: 42, baseType: !531, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !552, file: !553, line: 43, baseType: !535, size: 128, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !552, file: !553, line: 44, baseType: !535, size: 128, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !552, file: !553, line: 45, baseType: !535, size: 128, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !552, file: !553, line: 46, baseType: !535, size: 128, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !552, file: !553, line: 47, baseType: !421, size: 64, offset: 1024)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !552, file: !553, line: 48, baseType: !421, size: 64, offset: 1088)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !453, file: !51, line: 1883, baseType: !575, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!310, !386, !279, !325}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !453, file: !51, line: 1884, baseType: !579, size: 64, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!186, !429, !582, !421, !421}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !453, file: !51, line: 1886, baseType: !585, size: 64, offset: 1088)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!186, !429, !588, !186}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !453, file: !51, line: 1887, baseType: !590, size: 64, offset: 1152)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!186, !429, !386, !356, !7, !320}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !453, file: !51, line: 1890, baseType: !505, size: 64, offset: 1216)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !453, file: !51, line: 1891, baseType: !595, size: 64, offset: 1280)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!186, !429, !480, !186}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !430, file: !51, line: 623, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !654, !2424, !2506, !2589, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2605, !2609, !2610, !2613, !2614, !2617, !2618, !2619, !2660, !2687, !2688, !2689, !2690, !2691, !2692, !2695, !2697, !2704, !2705, !2707, !2708, !2709, !2768, !2769, !2784, !2785, !2786, !2787, !2788, !2791, !2792, !2793, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !600, file: !51, line: 1417, baseType: !225, size: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !600, file: !51, line: 1418, baseType: !513, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !600, file: !51, line: 1419, baseType: !427, size: 8, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !600, file: !51, line: 1420, baseType: !328, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !600, file: !51, line: 1421, baseType: !531, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !600, file: !51, line: 1422, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !610)
!610 = !{!611, !612, !613, !620, !624, !628, !632, !633, !634, !644, !647, !648, !649, !651, !652, !653}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !609, file: !51, line: 2229, baseType: !222, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !609, file: !51, line: 2230, baseType: !186, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !609, file: !51, line: 2238, baseType: !614, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!186, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !619, line: 28, flags: DIFlagFwdDecl)
!619 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!620 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !609, file: !51, line: 2239, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !609, file: !51, line: 2240, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!386, !608, !186, !222, !181}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !609, file: !51, line: 2242, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !599}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !609, file: !51, line: 2243, baseType: !171, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !609, file: !51, line: 2244, baseType: !608, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !609, file: !51, line: 2245, baseType: !635, size: 64, offset: 512)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !180, line: 182, size: 64, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !635, file: !180, line: 183, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !180, line: 186, size: 128, elements: !640)
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !639, file: !180, line: 187, baseType: !638, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !639, file: !180, line: 187, baseType: !643, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !609, file: !51, line: 2247, baseType: !645, offset: 576)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !646, line: 187, elements: !252)
!646 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !609, file: !51, line: 2248, baseType: !645, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !609, file: !51, line: 2249, baseType: !645, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !609, file: !51, line: 2250, baseType: !650, offset: 576)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, elements: !280)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !609, file: !51, line: 2252, baseType: !645, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !609, file: !51, line: 2253, baseType: !645, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !609, file: !51, line: 2254, baseType: !645, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !600, file: !51, line: 1423, baseType: !655, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !658)
!658 = !{!659, !663, !667, !668, !672, !678, !682, !683, !684, !688, !692, !693, !694, !695, !701, !706, !707, !714, !715, !716, !717, !2408, !2423}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !657, file: !51, line: 1936, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!429, !599}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !657, file: !51, line: 1937, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !429}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !657, file: !51, line: 1938, baseType: !664, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !657, file: !51, line: 1940, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !429, !186}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !657, file: !51, line: 1941, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!186, !429, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 289, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !657, file: !51, line: 1942, baseType: !679, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!186, !429}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !657, file: !51, line: 1943, baseType: !664, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !657, file: !51, line: 1944, baseType: !629, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !657, file: !51, line: 1945, baseType: !685, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!186, !599, !186}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !657, file: !51, line: 1946, baseType: !689, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!186, !599}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !657, file: !51, line: 1947, baseType: !689, size: 64, offset: 640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !657, file: !51, line: 1948, baseType: !689, size: 64, offset: 704)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !657, file: !51, line: 1949, baseType: !689, size: 64, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !657, file: !51, line: 1950, baseType: !696, size: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!186, !386, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !657, file: !51, line: 1951, baseType: !702, size: 64, offset: 896)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!186, !599, !705, !279}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !657, file: !51, line: 1952, baseType: !629, size: 64, offset: 960)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !657, file: !51, line: 1954, baseType: !708, size: 64, offset: 1024)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!186, !711, !386}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !713, line: 539, flags: DIFlagFwdDecl)
!713 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!714 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !657, file: !51, line: 1955, baseType: !708, size: 64, offset: 1088)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !657, file: !51, line: 1956, baseType: !708, size: 64, offset: 1152)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !657, file: !51, line: 1957, baseType: !708, size: 64, offset: 1216)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !657, file: !51, line: 1963, baseType: !718, size: 64, offset: 1280)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!186, !599, !721, !179}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !723, line: 68, size: 512, align: 128, elements: !724)
!723 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !726, !2400, !2407}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !723, line: 69, baseType: !328, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !723, line: 77, baseType: !727, size: 320, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !723, line: 77, size: 320, elements: !728)
!728 = !{!729, !915, !920, !948, !956, !962, !2331, !2399}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !723, line: 78, baseType: !730, size: 320)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !723, line: 78, size: 320, elements: !731)
!731 = !{!732, !733, !913, !914}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !730, file: !723, line: 84, baseType: !225, size: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !730, file: !723, line: 86, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !736)
!736 = !{!737, !738, !745, !746, !751, !766, !782, !783, !784, !785, !906, !907, !910, !911, !912}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !735, file: !51, line: 452, baseType: !429, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !735, file: !51, line: 453, baseType: !739, size: 128, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !740, line: 292, size: 128, elements: !741)
!740 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!741 = !{!742, !743, !744}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !739, file: !740, line: 293, baseType: !238)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !739, file: !740, line: 295, baseType: !179, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !739, file: !740, line: 296, baseType: !181, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !735, file: !51, line: 454, baseType: !179, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !735, file: !51, line: 455, baseType: !747, size: 32, offset: 224)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !180, line: 168, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 166, size: 32, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !748, file: !180, line: 167, baseType: !186, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !735, file: !51, line: 460, baseType: !752, size: 128, offset: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !753, line: 125, size: 128, elements: !754)
!753 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!754 = !{!755, !765}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !752, file: !753, line: 126, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !753, line: 31, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !756, file: !753, line: 32, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !753, line: 24, size: 192, align: 64, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !760, file: !753, line: 25, baseType: !328, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !760, file: !753, line: 26, baseType: !759, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !760, file: !753, line: 27, baseType: !759, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !752, file: !753, line: 127, baseType: !759, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !735, file: !51, line: 461, baseType: !767, size: 256, offset: 384)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !768, line: 35, size: 256, elements: !769)
!768 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !778, !779, !781}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !767, file: !768, line: 36, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !772, line: 13, baseType: !773)
!772 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !180, line: 175, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 173, size: 64, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !774, file: !180, line: 174, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !194, line: 22, baseType: !540)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !767, file: !768, line: 42, baseType: !771, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !767, file: !768, line: 46, baseType: !780, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !239, line: 29, baseType: !246)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !767, file: !768, line: 47, baseType: !225, size: 128, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !735, file: !51, line: 462, baseType: !328, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !735, file: !51, line: 463, baseType: !328, size: 64, offset: 704)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !735, file: !51, line: 464, baseType: !328, size: 64, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !735, file: !51, line: 465, baseType: !786, size: 64, offset: 832)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !789)
!789 = !{!790, !794, !798, !802, !806, !810, !816, !822, !826, !831, !835, !839, !843, !870, !874, !880, !881, !882, !886, !891, !895, !902}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !788, file: !51, line: 368, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!186, !721, !676}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !788, file: !51, line: 369, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!186, !356, !721}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !788, file: !51, line: 372, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!186, !734, !676}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !788, file: !51, line: 375, baseType: !803, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!186, !721}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !788, file: !51, line: 381, baseType: !807, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!186, !356, !734, !228, !7}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !788, file: !51, line: 383, baseType: !811, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !814}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !788, file: !51, line: 385, baseType: !817, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!186, !356, !734, !531, !7, !7, !820, !821}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !788, file: !51, line: 388, baseType: !823, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!186, !356, !734, !531, !7, !7, !721, !181}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !788, file: !51, line: 393, baseType: !827, size: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!830, !734, !830}
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !180, line: 125, baseType: !421)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !788, file: !51, line: 394, baseType: !832, size: 64, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !721, !7, !7}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !788, file: !51, line: 395, baseType: !836, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!186, !721, !179}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !788, file: !51, line: 396, baseType: !840, size: 64, offset: 704)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !721}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !788, file: !51, line: 397, baseType: !844, size: 64, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!310, !847, !868}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !849)
!849 = !{!850, !851, !852, !856, !857, !858, !860, !861}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !848, file: !51, line: 321, baseType: !356, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !848, file: !51, line: 326, baseType: !531, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !848, file: !51, line: 327, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !847, !314, !314}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !848, file: !51, line: 328, baseType: !181, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !848, file: !51, line: 329, baseType: !186, size: 32, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !848, file: !51, line: 330, baseType: !859, size: 16, offset: 288)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !194, line: 19, baseType: !174)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !848, file: !51, line: 331, baseType: !859, size: 16, offset: 304)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !51, line: 332, baseType: !862, size: 64, offset: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !51, line: 332, size: 64, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !862, file: !51, line: 333, baseType: !7, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !862, file: !51, line: 334, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !788, file: !51, line: 402, baseType: !871, size: 64, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!186, !734, !721, !721, !13}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !788, file: !51, line: 404, baseType: !875, size: 64, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!490, !721, !878}
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !879, line: 305, baseType: !7)
!879 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!880 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !788, file: !51, line: 405, baseType: !840, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !788, file: !51, line: 406, baseType: !803, size: 64, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !788, file: !51, line: 407, baseType: !883, size: 64, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!186, !721, !328, !328}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !788, file: !51, line: 409, baseType: !887, size: 64, offset: 1152)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !721, !890, !890}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !788, file: !51, line: 410, baseType: !892, size: 64, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!186, !734, !721}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !788, file: !51, line: 413, baseType: !896, size: 64, offset: 1280)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!186, !899, !356, !901}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !788, file: !51, line: 415, baseType: !903, size: 64, offset: 1344)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !356}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !51, line: 466, baseType: !328, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !735, file: !51, line: 467, baseType: !908, size: 32, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !909, line: 8, baseType: !193)
!909 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !735, file: !51, line: 468, baseType: !238, offset: 992)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !735, file: !51, line: 469, baseType: !225, size: 128, offset: 1024)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !735, file: !51, line: 470, baseType: !181, size: 64, offset: 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !730, file: !723, line: 87, baseType: !328, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !730, file: !723, line: 94, baseType: !328, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !723, line: 96, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !723, line: 96, size: 64, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !916, file: !723, line: 101, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !180, line: 143, baseType: !421)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !723, line: 103, baseType: !921, size: 320)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !723, line: 103, size: 320, elements: !922)
!922 = !{!923, !933, !936, !937}
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !723, line: 104, baseType: !924, size: 128)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !723, line: 104, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !924, file: !723, line: 105, baseType: !225, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !723, line: 106, baseType: !928, size: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !723, line: 106, size: 128, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !928, file: !723, line: 107, baseType: !721, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !928, file: !723, line: 109, baseType: !186, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !928, file: !723, line: 110, baseType: !186, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !921, file: !723, line: 117, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !723, line: 117, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !921, file: !723, line: 119, baseType: !181, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !723, line: 120, baseType: !938, size: 64, offset: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !723, line: 120, size: 64, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !938, file: !723, line: 121, baseType: !181, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !938, file: !723, line: 122, baseType: !328, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !723, line: 123, baseType: !943, size: 32)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !938, file: !723, line: 123, size: 32, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !943, file: !723, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !943, file: !723, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !943, file: !723, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !723, line: 130, baseType: !949, size: 192)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !723, line: 130, size: 192, elements: !950)
!950 = !{!951, !952, !953, !954, !955}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !949, file: !723, line: 131, baseType: !328, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !949, file: !723, line: 134, baseType: !427, size: 8, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !949, file: !723, line: 135, baseType: !427, size: 8, offset: 72)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !949, file: !723, line: 136, baseType: !747, size: 32, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !949, file: !723, line: 137, baseType: !7, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !723, line: 139, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !723, line: 139, size: 256, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !957, file: !723, line: 140, baseType: !328, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !957, file: !723, line: 141, baseType: !747, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !957, file: !723, line: 143, baseType: !225, size: 128, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !723, line: 145, baseType: !963, size: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !723, line: 145, size: 256, elements: !964)
!964 = !{!965, !966, !968, !969, !2330}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !963, file: !723, line: 146, baseType: !328, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !963, file: !723, line: 147, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !713, line: 509, baseType: !721)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !963, file: !723, line: 148, baseType: !328, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !723, line: 149, baseType: !970, size: 64, offset: 192)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !723, line: 149, size: 64, elements: !971)
!971 = !{!972, !2329}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !970, file: !723, line: 150, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !723, line: 388, size: 7296, elements: !975)
!975 = !{!976, !2325}
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !723, line: 389, baseType: !977, size: 7296)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !974, file: !723, line: 389, size: 7296, elements: !978)
!978 = !{!979, !1097, !1098, !1099, !1103, !1104, !1105, !1106, !1107, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1148, !1156, !1159, !1205, !1206, !2309, !2310, !2313, !2314, !2315, !2318, !2319, !2320, !2323, !2324}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !977, file: !723, line: 390, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !723, line: 305, size: 1472, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !997, !998, !1003, !1004, !1007, !1091, !1092, !1093, !1094, !1095}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !981, file: !723, line: 308, baseType: !328, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !981, file: !723, line: 309, baseType: !328, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !981, file: !723, line: 313, baseType: !980, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !981, file: !723, line: 313, baseType: !980, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !981, file: !723, line: 315, baseType: !760, size: 192, align: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !981, file: !723, line: 323, baseType: !328, size: 64, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !981, file: !723, line: 327, baseType: !973, size: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !981, file: !723, line: 333, baseType: !991, size: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !713, line: 284, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !713, line: 284, size: 64, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !992, file: !713, line: 284, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !996, line: 19, baseType: !328)
!996 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !981, file: !723, line: 334, baseType: !328, size: 64, offset: 640)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !981, file: !723, line: 343, baseType: !999, size: 256, offset: 704)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !723, line: 340, size: 256, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !999, file: !723, line: 341, baseType: !760, size: 192, align: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !999, file: !723, line: 342, baseType: !328, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !981, file: !723, line: 351, baseType: !225, size: 128, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !981, file: !723, line: 353, baseType: !1005, size: 64, offset: 1088)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !723, line: 353, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !981, file: !723, line: 356, baseType: !1008, size: 64, offset: 1152)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1011)
!1011 = !{!1012, !1016, !1017, !1021, !1025, !1065, !1069, !1073, !1077, !1078, !1079, !1083, !1087}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1010, file: !21, line: 558, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !980}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1010, file: !21, line: 559, baseType: !1013, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1010, file: !21, line: 560, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!186, !980, !328}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1010, file: !21, line: 561, baseType: !1022, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!186, !980}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1010, file: !21, line: 562, baseType: !1026, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !723, line: 682, baseType: !7)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1045, !1052, !1058, !1059, !1060, !1062, !1064}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1031, file: !21, line: 509, baseType: !980, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1031, file: !21, line: 511, baseType: !179, size: 32, offset: 96)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1031, file: !21, line: 512, baseType: !328, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1031, file: !21, line: 513, baseType: !328, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1031, file: !21, line: 514, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !713, line: 385, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 385, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1041, file: !713, line: 385, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !996, line: 15, baseType: !328)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1031, file: !21, line: 516, baseType: !1046, size: 64, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !713, line: 359, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 359, size: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1048, file: !713, line: 359, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !996, line: 16, baseType: !328)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1031, file: !21, line: 519, baseType: !1053, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !996, line: 21, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !996, line: 21, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1054, file: !996, line: 21, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !996, line: 14, baseType: !328)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1031, file: !21, line: 521, baseType: !721, size: 64, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1031, file: !21, line: 522, baseType: !721, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1031, file: !21, line: 528, baseType: !1061, size: 64, offset: 576)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1031, file: !21, line: 532, baseType: !1063, size: 64, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1031, file: !21, line: 536, baseType: !967, size: 64, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1010, file: !21, line: 563, baseType: !1066, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!1029, !1030, !20}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1010, file: !21, line: 565, baseType: !1070, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !1030, !328, !328}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1010, file: !21, line: 567, baseType: !1074, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!328, !980}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1010, file: !21, line: 571, baseType: !1026, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1010, file: !21, line: 574, baseType: !1026, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1010, file: !21, line: 579, baseType: !1080, size: 64, offset: 640)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!186, !980, !328, !181, !186, !186}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1010, file: !21, line: 585, baseType: !1084, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!222, !980}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1010, file: !21, line: 615, baseType: !1088, size: 64, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!721, !980, !328}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !981, file: !723, line: 359, baseType: !328, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !981, file: !723, line: 361, baseType: !356, size: 64, offset: 1280)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !981, file: !723, line: 362, baseType: !181, size: 64, offset: 1344)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !981, file: !723, line: 365, baseType: !771, size: 64, offset: 1408)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !981, file: !723, line: 373, baseType: !1096, offset: 1472)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !723, line: 296, elements: !252)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !977, file: !723, line: 391, baseType: !756, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !977, file: !723, line: 392, baseType: !421, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !977, file: !723, line: 394, baseType: !1100, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!328, !356, !328, !328, !328, !328}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !977, file: !723, line: 398, baseType: !328, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !977, file: !723, line: 399, baseType: !328, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !977, file: !723, line: 405, baseType: !328, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !977, file: !723, line: 406, baseType: !328, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !977, file: !723, line: 407, baseType: !1108, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !713, line: 286, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 286, size: 64, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1110, file: !713, line: 286, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !996, line: 18, baseType: !328)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !977, file: !723, line: 416, baseType: !747, size: 32, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !977, file: !723, line: 428, baseType: !747, size: 32, offset: 608)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !977, file: !723, line: 437, baseType: !747, size: 32, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !977, file: !723, line: 447, baseType: !747, size: 32, offset: 672)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !977, file: !723, line: 450, baseType: !771, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !977, file: !723, line: 452, baseType: !186, size: 32, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !977, file: !723, line: 454, baseType: !238, offset: 800)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !977, file: !723, line: 457, baseType: !767, size: 256, offset: 832)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !977, file: !723, line: 459, baseType: !225, size: 128, offset: 1088)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !977, file: !723, line: 466, baseType: !328, size: 64, offset: 1216)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !977, file: !723, line: 467, baseType: !328, size: 64, offset: 1280)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !977, file: !723, line: 469, baseType: !328, size: 64, offset: 1344)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !977, file: !723, line: 470, baseType: !328, size: 64, offset: 1408)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !977, file: !723, line: 471, baseType: !773, size: 64, offset: 1472)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !977, file: !723, line: 472, baseType: !328, size: 64, offset: 1536)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !977, file: !723, line: 473, baseType: !328, size: 64, offset: 1600)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !977, file: !723, line: 474, baseType: !328, size: 64, offset: 1664)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !977, file: !723, line: 475, baseType: !328, size: 64, offset: 1728)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !977, file: !723, line: 477, baseType: !238, offset: 1792)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !977, file: !723, line: 478, baseType: !328, size: 64, offset: 1792)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !977, file: !723, line: 478, baseType: !328, size: 64, offset: 1856)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !977, file: !723, line: 478, baseType: !328, size: 64, offset: 1920)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !977, file: !723, line: 478, baseType: !328, size: 64, offset: 1984)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !977, file: !723, line: 479, baseType: !328, size: 64, offset: 2048)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !977, file: !723, line: 479, baseType: !328, size: 64, offset: 2112)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !977, file: !723, line: 479, baseType: !328, size: 64, offset: 2176)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !977, file: !723, line: 480, baseType: !328, size: 64, offset: 2240)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !977, file: !723, line: 480, baseType: !328, size: 64, offset: 2304)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !977, file: !723, line: 480, baseType: !328, size: 64, offset: 2368)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !977, file: !723, line: 480, baseType: !328, size: 64, offset: 2432)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !977, file: !723, line: 482, baseType: !1145, size: 2816, offset: 2496)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 2816, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 44)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !977, file: !723, line: 488, baseType: !1149, size: 256, offset: 5312)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1150, line: 60, size: 256, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1149, file: !1150, line: 61, baseType: !1153, size: 256)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 256, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 4)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !977, file: !723, line: 490, baseType: !1157, size: 64, offset: 5568)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !723, line: 490, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !977, file: !723, line: 493, baseType: !1160, size: 896, offset: 5632)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1161, line: 53, baseType: !1162)
!1161 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1161, line: 13, size: 896, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1170, !1171, !1178, !1179, !1199, !1200, !1201}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1162, file: !1161, line: 18, baseType: !421, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1162, file: !1161, line: 28, baseType: !773, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1162, file: !1161, line: 31, baseType: !767, size: 256, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1162, file: !1161, line: 32, baseType: !1168, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1161, line: 32, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1162, file: !1161, line: 37, baseType: !176, size: 16, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1162, file: !1161, line: 40, baseType: !1172, size: 192, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1173, line: 53, size: 192, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1172, file: !1173, line: 54, baseType: !771, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1172, file: !1173, line: 55, baseType: !238, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1172, file: !1173, line: 59, baseType: !225, size: 128, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1162, file: !1161, line: 41, baseType: !181, size: 64, offset: 704)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1162, file: !1161, line: 42, baseType: !1180, size: 64, offset: 768)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1183, line: 13, size: 896, elements: !1184)
!1183 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1182, file: !1183, line: 14, baseType: !181, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1182, file: !1183, line: 15, baseType: !328, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1182, file: !1183, line: 17, baseType: !328, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1182, file: !1183, line: 17, baseType: !328, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1182, file: !1183, line: 19, baseType: !314, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1182, file: !1183, line: 21, baseType: !314, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1182, file: !1183, line: 22, baseType: !314, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1182, file: !1183, line: 23, baseType: !314, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1182, file: !1183, line: 24, baseType: !314, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1182, file: !1183, line: 25, baseType: !314, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1182, file: !1183, line: 26, baseType: !314, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1182, file: !1183, line: 27, baseType: !314, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1182, file: !1183, line: 28, baseType: !314, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1182, file: !1183, line: 29, baseType: !314, size: 64, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1162, file: !1161, line: 44, baseType: !747, size: 32, offset: 832)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1162, file: !1161, line: 50, baseType: !859, size: 16, offset: 864)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1162, file: !1161, line: 51, baseType: !1202, size: 16, offset: 880)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !194, line: 18, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !175, line: 23, baseType: !1204)
!1204 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !723, line: 495, baseType: !328, size: 64, offset: 6528)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !977, file: !723, line: 497, baseType: !1207, size: 64, offset: 6592)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !723, line: 381, size: 384, elements: !1209)
!1209 = !{!1210, !1211, !2308}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1208, file: !723, line: 382, baseType: !747, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1208, file: !723, line: 383, baseType: !1212, size: 128, offset: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !723, line: 376, size: 128, elements: !1213)
!1213 = !{!1214, !2306}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1212, file: !723, line: 377, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1217, line: 640, size: 48640, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1225, !1227, !1228, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1245, !1263, !1274, !1359, !1360, !1361, !1372, !1373, !1375, !1376, !1377, !1378, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1457, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1495, !1497, !1498, !1499, !1511, !1512, !1513, !1514, !1515, !1516, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1540, !1545, !1727, !1728, !1729, !1730, !1731, !1734, !1737, !1740, !1743, !1747, !1848, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1894, !1895, !1896, !1897, !1898, !1903, !1904, !1905, !1908, !1909, !1912, !1915, !1918, !1921, !1964, !1967, !1968, !2047, !2048, !2051, !2052, !2055, !2056, !2057, !2061, !2062, !2063, !2076, !2077, !2078, !2088, !2093, !2096, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1216, file: !1217, line: 646, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1221, line: 56, size: 128, elements: !1222)
!1221 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !1221, line: 57, baseType: !328, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1220, file: !1221, line: 58, baseType: !193, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1216, file: !1217, line: 649, baseType: !1226, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !314)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1216, file: !1217, line: 657, baseType: !181, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1216, file: !1217, line: 658, baseType: !1229, size: 32, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1230, line: 113, baseType: !1231)
!1230 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1230, line: 111, size: 32, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1231, file: !1230, line: 112, baseType: !747, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 660, baseType: !7, size: 32, offset: 288)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1216, file: !1217, line: 661, baseType: !7, size: 32, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1216, file: !1217, line: 684, baseType: !186, size: 32, offset: 352)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1216, file: !1217, line: 686, baseType: !186, size: 32, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1216, file: !1217, line: 687, baseType: !186, size: 32, offset: 416)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1216, file: !1217, line: 688, baseType: !186, size: 32, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1216, file: !1217, line: 689, baseType: !7, size: 32, offset: 480)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1216, file: !1217, line: 691, baseType: !1242, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1244)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1217, line: 691, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1216, file: !1217, line: 692, baseType: !1246, size: 832, offset: 576)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1217, line: 451, size: 832, elements: !1247)
!1247 = !{!1248, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1246, file: !1217, line: 453, baseType: !1249, size: 128)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1217, line: 325, size: 128, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1249, file: !1217, line: 326, baseType: !328, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1249, file: !1217, line: 327, baseType: !193, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1246, file: !1217, line: 454, baseType: !760, size: 192, align: 64, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1246, file: !1217, line: 455, baseType: !225, size: 128, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1246, file: !1217, line: 456, baseType: !7, size: 32, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1246, file: !1217, line: 458, baseType: !421, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1246, file: !1217, line: 459, baseType: !421, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1246, file: !1217, line: 460, baseType: !421, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1246, file: !1217, line: 461, baseType: !421, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1246, file: !1217, line: 463, baseType: !421, size: 64, offset: 768)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1246, file: !1217, line: 465, baseType: !1262, offset: 832)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1217, line: 415, elements: !252)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1216, file: !1217, line: 693, baseType: !1264, size: 384, offset: 1408)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1217, line: 489, size: 384, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1271, !1272}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1264, file: !1217, line: 490, baseType: !225, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1264, file: !1217, line: 491, baseType: !328, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1264, file: !1217, line: 492, baseType: !328, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1264, file: !1217, line: 493, baseType: !7, size: 32, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1264, file: !1217, line: 494, baseType: !176, size: 16, offset: 288)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1264, file: !1217, line: 495, baseType: !176, size: 16, offset: 304)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1264, file: !1217, line: 497, baseType: !1273, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1216, file: !1217, line: 697, baseType: !1275, size: 1792, offset: 1792)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1217, line: 507, size: 1792, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1356, !1357}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1275, file: !1217, line: 508, baseType: !760, size: 192, align: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1275, file: !1217, line: 515, baseType: !421, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1275, file: !1217, line: 516, baseType: !421, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1275, file: !1217, line: 517, baseType: !421, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1275, file: !1217, line: 518, baseType: !421, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1275, file: !1217, line: 519, baseType: !421, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1275, file: !1217, line: 526, baseType: !777, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1275, file: !1217, line: 527, baseType: !421, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1275, file: !1217, line: 528, baseType: !7, size: 32, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1275, file: !1217, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1275, file: !1217, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1275, file: !1217, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1275, file: !1217, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1275, file: !1217, line: 563, baseType: !1291, size: 512, offset: 704)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1292)
!1292 = !{!1293, !1301, !1302, !1307, !1350, !1353, !1354, !1355}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1291, file: !27, line: 119, baseType: !1294, size: 256)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1295, line: 9, size: 256, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1294, file: !1295, line: 10, baseType: !760, size: 192, align: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1294, file: !1295, line: 11, baseType: !1299, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1300, line: 29, baseType: !777)
!1300 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1291, file: !27, line: 120, baseType: !1299, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1291, file: !27, line: 121, baseType: !1303, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!26, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1291, file: !27, line: 122, baseType: !1308, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1310)
!1310 = !{!1311, !1331, !1332, !1335, !1340, !1341, !1345, !1349}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1309, file: !27, line: 160, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1313, file: !27, line: 215, baseType: !780)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1313, file: !27, line: 216, baseType: !7, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1313, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1313, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1313, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1313, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1313, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1313, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1313, file: !27, line: 233, baseType: !1299, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1313, file: !27, line: 234, baseType: !1306, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1313, file: !27, line: 235, baseType: !1299, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1313, file: !27, line: 236, baseType: !1306, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1313, file: !27, line: 237, baseType: !1328, size: 4096, offset: 512)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 4096, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 8)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1309, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1309, file: !27, line: 162, baseType: !1333, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !180, line: 27, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !312, line: 96, baseType: !186)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1309, file: !27, line: 163, baseType: !1336, size: 32, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !392, line: 276, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !392, line: 276, size: 32, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1337, file: !392, line: 276, baseType: !396, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1309, file: !27, line: 164, baseType: !1306, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1309, file: !27, line: 165, baseType: !1342, size: 128, offset: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1295, line: 14, size: 128, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1342, file: !1295, line: 15, baseType: !752, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1309, file: !27, line: 166, baseType: !1346, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1299}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1309, file: !27, line: 167, baseType: !1299, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1291, file: !27, line: 123, baseType: !1351, size: 8, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !194, line: 17, baseType: !1352)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !175, line: 21, baseType: !427)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1291, file: !27, line: 124, baseType: !1351, size: 8, offset: 456)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1291, file: !27, line: 125, baseType: !1351, size: 8, offset: 464)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1291, file: !27, line: 126, baseType: !1351, size: 8, offset: 472)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1275, file: !1217, line: 572, baseType: !1291, size: 512, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1275, file: !1217, line: 580, baseType: !1358, size: 64, offset: 1728)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1216, file: !1217, line: 721, baseType: !7, size: 32, offset: 3584)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1216, file: !1217, line: 722, baseType: !186, size: 32, offset: 3616)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1216, file: !1217, line: 723, baseType: !1362, size: 64, offset: 3648)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1365, line: 17, baseType: !1366)
!1365 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1365, line: 17, size: 64, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1366, file: !1365, line: 17, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 64, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 1)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1216, file: !1217, line: 724, baseType: !1364, size: 64, offset: 3712)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1216, file: !1217, line: 749, baseType: !1374, offset: 3776)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1217, line: 290, elements: !252)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1216, file: !1217, line: 751, baseType: !225, size: 128, offset: 3776)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1216, file: !1217, line: 757, baseType: !973, size: 64, offset: 3904)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1216, file: !1217, line: 758, baseType: !973, size: 64, offset: 3968)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1216, file: !1217, line: 761, baseType: !1379, size: 320, offset: 4032)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1150, line: 34, size: 320, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1379, file: !1150, line: 35, baseType: !421, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1379, file: !1150, line: 36, baseType: !1383, size: 256, offset: 64)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 256, elements: !1154)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1216, file: !1217, line: 766, baseType: !186, size: 32, offset: 4352)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1216, file: !1217, line: 767, baseType: !186, size: 32, offset: 4384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1216, file: !1217, line: 768, baseType: !186, size: 32, offset: 4416)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1216, file: !1217, line: 770, baseType: !186, size: 32, offset: 4448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1216, file: !1217, line: 772, baseType: !328, size: 64, offset: 4480)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1216, file: !1217, line: 775, baseType: !7, size: 32, offset: 4544)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1216, file: !1217, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1216, file: !1217, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1216, file: !1217, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1216, file: !1217, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1216, file: !1217, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1216, file: !1217, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1216, file: !1217, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1216, file: !1217, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1216, file: !1217, line: 831, baseType: !328, size: 64, offset: 4672)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1216, file: !1217, line: 833, baseType: !1400, size: 384, offset: 4736)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1401)
!1401 = !{!1402, !1407}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1400, file: !32, line: 26, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!314, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !32, line: 27, baseType: !1408, size: 320, offset: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !32, line: 27, size: 320, elements: !1409)
!1409 = !{!1410, !1420, !1447}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1408, file: !32, line: 36, baseType: !1411, size: 320)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !32, line: 29, size: 320, elements: !1412)
!1412 = !{!1413, !1415, !1416, !1417, !1418, !1419}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1411, file: !32, line: 30, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1411, file: !32, line: 31, baseType: !193, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !32, line: 32, baseType: !193, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1411, file: !32, line: 33, baseType: !193, size: 32, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1411, file: !32, line: 34, baseType: !421, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1411, file: !32, line: 35, baseType: !1414, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1408, file: !32, line: 46, baseType: !1421, size: 192)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !32, line: 38, size: 192, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1446}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1421, file: !32, line: 39, baseType: !1333, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1421, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !32, line: 41, baseType: !1426, size: 64, offset: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !32, line: 41, size: 64, elements: !1427)
!1427 = !{!1428, !1436}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1426, file: !32, line: 42, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1431, line: 7, size: 128, elements: !1432)
!1431 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1432 = !{!1433, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1430, file: !1431, line: 8, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !312, line: 93, baseType: !533)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1430, file: !1431, line: 9, baseType: !533, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1426, file: !32, line: 43, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1439, line: 7, size: 64, elements: !1440)
!1439 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1445}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1438, file: !1439, line: 8, baseType: !1442, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1439, line: 5, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !194, line: 20, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !175, line: 26, baseType: !186)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1438, file: !1439, line: 9, baseType: !1443, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1421, file: !32, line: 45, baseType: !421, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1408, file: !32, line: 54, baseType: !1448, size: 256)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !32, line: 48, size: 256, elements: !1449)
!1449 = !{!1450, !1453, !1454, !1455, !1456}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1448, file: !32, line: 49, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1448, file: !32, line: 50, baseType: !186, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1448, file: !32, line: 51, baseType: !186, size: 32, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1448, file: !32, line: 52, baseType: !328, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1448, file: !32, line: 53, baseType: !328, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1216, file: !1217, line: 835, baseType: !1458, size: 32, offset: 5120)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !180, line: 22, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !312, line: 28, baseType: !186)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1216, file: !1217, line: 836, baseType: !1458, size: 32, offset: 5152)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1216, file: !1217, line: 840, baseType: !328, size: 64, offset: 5184)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1216, file: !1217, line: 849, baseType: !1215, size: 64, offset: 5248)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1216, file: !1217, line: 852, baseType: !1215, size: 64, offset: 5312)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1216, file: !1217, line: 857, baseType: !225, size: 128, offset: 5376)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1216, file: !1217, line: 858, baseType: !225, size: 128, offset: 5504)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1216, file: !1217, line: 859, baseType: !1215, size: 64, offset: 5632)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1216, file: !1217, line: 867, baseType: !225, size: 128, offset: 5696)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1216, file: !1217, line: 868, baseType: !225, size: 128, offset: 5824)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1216, file: !1217, line: 871, baseType: !1470, size: 64, offset: 5952)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1478, !1479, !1486, !1487}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1471, file: !60, line: 61, baseType: !1229, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1471, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1471, file: !60, line: 63, baseType: !238, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1471, file: !60, line: 65, baseType: !1477, size: 256, offset: 64)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 256, elements: !1154)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1471, file: !60, line: 66, baseType: !635, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1471, file: !60, line: 68, baseType: !1480, size: 128, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1481, line: 40, baseType: !1482)
!1481 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1481, line: 36, size: 128, elements: !1483)
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !1481, line: 37, baseType: !238)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1482, file: !1481, line: 38, baseType: !225, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1471, file: !60, line: 69, baseType: !369, size: 128, align: 64, offset: 512)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1471, file: !60, line: 70, baseType: !1488, size: 128, offset: 640)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1489, size: 128, elements: !1370)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1489, file: !60, line: 55, baseType: !186, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1489, file: !60, line: 56, baseType: !1493, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1216, file: !1217, line: 872, baseType: !1496, size: 512, offset: 6016)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 512, elements: !1154)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1216, file: !1217, line: 873, baseType: !225, size: 128, offset: 6528)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1216, file: !1217, line: 874, baseType: !225, size: 128, offset: 6656)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1216, file: !1217, line: 876, baseType: !1500, size: 64, offset: 6784)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1502, line: 26, size: 192, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1501, file: !1502, line: 27, baseType: !7, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1501, file: !1502, line: 28, baseType: !1506, size: 128, offset: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1507, line: 43, size: 128, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !1507, line: 44, baseType: !780)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1506, file: !1507, line: 45, baseType: !225, size: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1216, file: !1217, line: 879, baseType: !705, size: 64, offset: 6848)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1216, file: !1217, line: 882, baseType: !705, size: 64, offset: 6912)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1216, file: !1217, line: 884, baseType: !421, size: 64, offset: 6976)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1216, file: !1217, line: 885, baseType: !421, size: 64, offset: 7040)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1216, file: !1217, line: 890, baseType: !421, size: 64, offset: 7104)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1216, file: !1217, line: 891, baseType: !1517, size: 128, offset: 7168)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1217, line: 242, size: 128, elements: !1518)
!1518 = !{!1519, !1520, !1521}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1517, file: !1217, line: 244, baseType: !421, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1517, file: !1217, line: 245, baseType: !421, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1517, file: !1217, line: 246, baseType: !780, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1216, file: !1217, line: 900, baseType: !328, size: 64, offset: 7296)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1216, file: !1217, line: 901, baseType: !328, size: 64, offset: 7360)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1216, file: !1217, line: 904, baseType: !421, size: 64, offset: 7424)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1216, file: !1217, line: 907, baseType: !421, size: 64, offset: 7488)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1216, file: !1217, line: 910, baseType: !328, size: 64, offset: 7552)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1216, file: !1217, line: 911, baseType: !328, size: 64, offset: 7616)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1216, file: !1217, line: 914, baseType: !1529, size: 640, offset: 7680)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1530, line: 123, size: 640, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1538, !1539}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1529, file: !1530, line: 124, baseType: !1533, size: 576)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1534, size: 576, elements: !280)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1530, line: 108, size: 192, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1534, file: !1530, line: 109, baseType: !421, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1534, file: !1530, line: 110, baseType: !1342, size: 128, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1529, file: !1530, line: 125, baseType: !7, size: 32, offset: 576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1529, file: !1530, line: 126, baseType: !7, size: 32, offset: 608)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1216, file: !1217, line: 917, baseType: !1541, size: 192, offset: 8320)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1530, line: 134, size: 192, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1541, file: !1530, line: 135, baseType: !369, size: 128, align: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1541, file: !1530, line: 136, baseType: !7, size: 32, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1216, file: !1217, line: 923, baseType: !1546, size: 64, offset: 8512)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1549, line: 111, size: 1280, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1568, !1569, !1570, !1571, !1572, !1573, !1680, !1681, !1682, !1683, !1709, !1712, !1722}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1548, file: !1549, line: 112, baseType: !747, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1548, file: !1549, line: 120, baseType: !435, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1548, file: !1549, line: 121, baseType: !443, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1548, file: !1549, line: 122, baseType: !435, size: 32, offset: 96)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1548, file: !1549, line: 123, baseType: !443, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1548, file: !1549, line: 124, baseType: !435, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1548, file: !1549, line: 125, baseType: !443, size: 32, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1548, file: !1549, line: 126, baseType: !435, size: 32, offset: 224)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1548, file: !1549, line: 127, baseType: !443, size: 32, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1548, file: !1549, line: 128, baseType: !7, size: 32, offset: 288)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1548, file: !1549, line: 129, baseType: !1562, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1563, line: 26, baseType: !1564)
!1563 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1563, line: 24, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1564, file: !1563, line: 25, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !206)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1548, file: !1549, line: 130, baseType: !1562, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1548, file: !1549, line: 131, baseType: !1562, size: 64, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1548, file: !1549, line: 132, baseType: !1562, size: 64, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1548, file: !1549, line: 133, baseType: !1562, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1548, file: !1549, line: 135, baseType: !427, size: 8, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1548, file: !1549, line: 137, baseType: !1574, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1576, line: 189, size: 1664, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579, !1582, !1587, !1588, !1591, !1592, !1597, !1598, !1599, !1600, !1602, !1603, !1604, !1605, !1606, !1644, !1665}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1575, file: !1576, line: 190, baseType: !1229, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1575, file: !1576, line: 191, baseType: !1580, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1576, line: 28, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !180, line: 98, baseType: !1443)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 192, baseType: !1583, size: 192, offset: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 192, size: 192, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1583, file: !1576, line: 193, baseType: !225, size: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1583, file: !1576, line: 194, baseType: !760, size: 192, align: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1575, file: !1576, line: 199, baseType: !767, size: 256, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1575, file: !1576, line: 200, baseType: !1589, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1576, line: 200, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1575, file: !1576, line: 201, baseType: !181, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 202, baseType: !1593, size: 64, offset: 640)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 202, size: 64, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1593, file: !1576, line: 203, baseType: !539, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1593, file: !1576, line: 204, baseType: !539, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1575, file: !1576, line: 206, baseType: !539, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1575, file: !1576, line: 207, baseType: !435, size: 32, offset: 768)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1575, file: !1576, line: 208, baseType: !443, size: 32, offset: 800)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1575, file: !1576, line: 209, baseType: !1601, size: 32, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1576, line: 31, baseType: !559)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1575, file: !1576, line: 210, baseType: !176, size: 16, offset: 864)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1575, file: !1576, line: 211, baseType: !176, size: 16, offset: 880)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1575, file: !1576, line: 215, baseType: !1204, size: 16, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !1576, line: 222, baseType: !328, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 239, baseType: !1607, size: 320, offset: 1024)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 239, size: 320, elements: !1608)
!1608 = !{!1609, !1636}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1607, file: !1576, line: 240, baseType: !1610, size: 320)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1576, line: 108, size: 320, elements: !1611)
!1611 = !{!1612, !1613, !1625, !1628, !1635}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1610, file: !1576, line: 110, baseType: !328, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !1576, line: 111, baseType: !1614, size: 64, offset: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1610, file: !1576, line: 111, size: 64, elements: !1615)
!1615 = !{!1616, !1624}
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1614, file: !1576, line: 112, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1614, file: !1576, line: 112, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1617, file: !1576, line: 114, baseType: !859, size: 16)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1617, file: !1576, line: 115, baseType: !1621, size: 48, offset: 16)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 48, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 6)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1614, file: !1576, line: 121, baseType: !328, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1610, file: !1576, line: 123, baseType: !1626, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1576, line: 96, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1610, file: !1576, line: 124, baseType: !1629, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1576, line: 102, size: 192, elements: !1631)
!1631 = !{!1632, !1633, !1634}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1630, file: !1576, line: 103, baseType: !369, size: 128, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1630, file: !1576, line: 104, baseType: !1229, size: 32, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1630, file: !1576, line: 105, baseType: !490, size: 8, offset: 160)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1610, file: !1576, line: 125, baseType: !222, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !1576, line: 241, baseType: !1637, size: 320)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1607, file: !1576, line: 241, size: 320, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1637, file: !1576, line: 242, baseType: !328, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1637, file: !1576, line: 243, baseType: !328, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1637, file: !1576, line: 244, baseType: !1626, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1637, file: !1576, line: 245, baseType: !1629, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1637, file: !1576, line: 246, baseType: !279, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 254, baseType: !1645, size: 256, offset: 1344)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 254, size: 256, elements: !1646)
!1646 = !{!1647, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1645, file: !1576, line: 255, baseType: !1648, size: 256)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1576, line: 128, size: 256, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1648, file: !1576, line: 129, baseType: !181, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1648, file: !1576, line: 130, baseType: !1652, size: 256)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !1154)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !1576, line: 256, baseType: !1654, size: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !1576, line: 256, size: 256, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1654, file: !1576, line: 258, baseType: !225, size: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1654, file: !1576, line: 259, baseType: !1658, size: 128, offset: 128)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1659, line: 22, size: 128, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1658, file: !1659, line: 23, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1659, line: 23, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1658, file: !1659, line: 24, baseType: !328, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1575, file: !1576, line: 274, baseType: !1666, size: 64, offset: 1600)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1576, line: 170, size: 192, elements: !1668)
!1668 = !{!1669, !1678, !1679}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1667, file: !1576, line: 171, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1576, line: 165, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!186, !1574, !1674, !1676, !1574}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1667, file: !1576, line: 172, baseType: !1574, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1667, file: !1576, line: 173, baseType: !1626, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1548, file: !1549, line: 138, baseType: !1574, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1548, file: !1549, line: 139, baseType: !1574, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1548, file: !1549, line: 140, baseType: !1574, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1548, file: !1549, line: 145, baseType: !1684, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1686, line: 13, size: 896, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1685, file: !1686, line: 14, baseType: !1229, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1685, file: !1686, line: 15, baseType: !747, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1685, file: !1686, line: 16, baseType: !747, size: 32, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1685, file: !1686, line: 21, baseType: !771, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1685, file: !1686, line: 27, baseType: !328, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1685, file: !1686, line: 28, baseType: !328, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1685, file: !1686, line: 29, baseType: !771, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1685, file: !1686, line: 32, baseType: !639, size: 128, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1685, file: !1686, line: 33, baseType: !435, size: 32, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1685, file: !1686, line: 37, baseType: !771, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1685, file: !1686, line: 44, baseType: !1699, size: 256, offset: 640)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1700, line: 15, size: 256, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1699, file: !1700, line: 16, baseType: !780)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1699, file: !1700, line: 18, baseType: !186, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1699, file: !1700, line: 19, baseType: !186, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1699, file: !1700, line: 20, baseType: !186, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1699, file: !1700, line: 21, baseType: !186, size: 32, offset: 96)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1699, file: !1700, line: 22, baseType: !328, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1699, file: !1700, line: 23, baseType: !328, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1548, file: !1549, line: 146, baseType: !1710, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !723, line: 516, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1548, file: !1549, line: 147, baseType: !1713, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1549, line: 25, size: 64, elements: !1715)
!1715 = !{!1716, !1717, !1718}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1714, file: !1549, line: 26, baseType: !747, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1714, file: !1549, line: 27, baseType: !186, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1714, file: !1549, line: 28, baseType: !1719, offset: 64)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, elements: !1720)
!1720 = !{!1721}
!1721 = !DISubrange(count: 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1549, line: 149, baseType: !1723, size: 128, offset: 1152)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1549, line: 149, size: 128, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1723, file: !1549, line: 150, baseType: !186, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1723, file: !1549, line: 151, baseType: !369, size: 128, align: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1216, file: !1217, line: 926, baseType: !1546, size: 64, offset: 8576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1216, file: !1217, line: 929, baseType: !1546, size: 64, offset: 8640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1216, file: !1217, line: 933, baseType: !1574, size: 64, offset: 8704)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1216, file: !1217, line: 943, baseType: !188, size: 128, offset: 8768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1216, file: !1217, line: 945, baseType: !1732, size: 64, offset: 8896)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1217, line: 49, flags: DIFlagFwdDecl)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1216, file: !1217, line: 956, baseType: !1735, size: 64, offset: 8960)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1217, line: 45, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1216, file: !1217, line: 959, baseType: !1738, size: 64, offset: 9024)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1217, line: 959, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1216, file: !1217, line: 962, baseType: !1741, size: 64, offset: 9088)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1217, line: 66, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1216, file: !1217, line: 966, baseType: !1744, size: 64, offset: 9152)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1746, line: 35, flags: DIFlagFwdDecl)
!1746 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1216, file: !1217, line: 969, baseType: !1748, size: 64, offset: 9216)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1750, line: 82, size: 7296, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1787, !1796, !1797, !1799, !1800, !1801, !1804, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1834, !1835, !1842, !1843, !1844, !1845, !1846, !1847}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1749, file: !1750, line: 83, baseType: !1229, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1749, file: !1750, line: 84, baseType: !747, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1749, file: !1750, line: 85, baseType: !186, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1749, file: !1750, line: 86, baseType: !225, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1749, file: !1750, line: 88, baseType: !1480, size: 128, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1749, file: !1750, line: 91, baseType: !1215, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1749, file: !1750, line: 94, baseType: !1759, size: 192, offset: 448)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1760, line: 30, size: 192, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1759, file: !1760, line: 31, baseType: !225, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1759, file: !1760, line: 32, baseType: !1764, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1765, line: 25, baseType: !1766)
!1765 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1765, line: 23, size: 64, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1766, file: !1765, line: 24, baseType: !1369, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1749, file: !1750, line: 97, baseType: !635, size: 64, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1749, file: !1750, line: 100, baseType: !186, size: 32, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1749, file: !1750, line: 106, baseType: !186, size: 32, offset: 736)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1749, file: !1750, line: 107, baseType: !1215, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1749, file: !1750, line: 110, baseType: !186, size: 32, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1749, file: !1750, line: 111, baseType: !7, size: 32, offset: 864)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1749, file: !1750, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1749, file: !1750, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1749, file: !1750, line: 128, baseType: !186, size: 32, offset: 928)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1749, file: !1750, line: 129, baseType: !225, size: 128, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1749, file: !1750, line: 132, baseType: !1291, size: 512, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1749, file: !1750, line: 133, baseType: !1299, size: 64, offset: 1600)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1749, file: !1750, line: 140, baseType: !1782, size: 256, offset: 1664)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 256, elements: !206)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1750, line: 38, size: 128, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1783, file: !1750, line: 39, baseType: !421, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1783, file: !1750, line: 40, baseType: !421, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1749, file: !1750, line: 146, baseType: !1788, size: 192, offset: 1920)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1750, line: 66, size: 192, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1788, file: !1750, line: 67, baseType: !1791, size: 192)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1750, line: 47, size: 192, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1791, file: !1750, line: 48, baseType: !773, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1791, file: !1750, line: 49, baseType: !773, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1791, file: !1750, line: 50, baseType: !773, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1749, file: !1750, line: 150, baseType: !1529, size: 640, offset: 2112)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1749, file: !1750, line: 153, baseType: !1798, size: 256, offset: 2752)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 256, elements: !1154)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1749, file: !1750, line: 159, baseType: !1470, size: 64, offset: 3008)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1749, file: !1750, line: 162, baseType: !186, size: 32, offset: 3072)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1749, file: !1750, line: 164, baseType: !1802, size: 64, offset: 3136)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1750, line: 164, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1749, file: !1750, line: 175, baseType: !1805, size: 32, offset: 3200)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !392, line: 805, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 798, size: 32, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1806, file: !392, line: 803, baseType: !391, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1806, file: !392, line: 804, baseType: !238, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1749, file: !1750, line: 176, baseType: !421, size: 64, offset: 3264)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1749, file: !1750, line: 176, baseType: !421, size: 64, offset: 3328)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1749, file: !1750, line: 176, baseType: !421, size: 64, offset: 3392)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1749, file: !1750, line: 176, baseType: !421, size: 64, offset: 3456)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1749, file: !1750, line: 177, baseType: !421, size: 64, offset: 3520)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1749, file: !1750, line: 178, baseType: !421, size: 64, offset: 3584)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1749, file: !1750, line: 179, baseType: !1517, size: 128, offset: 3648)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1749, file: !1750, line: 180, baseType: !328, size: 64, offset: 3776)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1749, file: !1750, line: 180, baseType: !328, size: 64, offset: 3840)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1749, file: !1750, line: 180, baseType: !328, size: 64, offset: 3904)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1749, file: !1750, line: 180, baseType: !328, size: 64, offset: 3968)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1749, file: !1750, line: 181, baseType: !328, size: 64, offset: 4032)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1749, file: !1750, line: 181, baseType: !328, size: 64, offset: 4096)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1749, file: !1750, line: 181, baseType: !328, size: 64, offset: 4160)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1749, file: !1750, line: 181, baseType: !328, size: 64, offset: 4224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1749, file: !1750, line: 182, baseType: !328, size: 64, offset: 4288)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1749, file: !1750, line: 182, baseType: !328, size: 64, offset: 4352)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1749, file: !1750, line: 182, baseType: !328, size: 64, offset: 4416)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1749, file: !1750, line: 182, baseType: !328, size: 64, offset: 4480)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1749, file: !1750, line: 183, baseType: !328, size: 64, offset: 4544)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1749, file: !1750, line: 183, baseType: !328, size: 64, offset: 4608)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1749, file: !1750, line: 184, baseType: !1832, offset: 4672)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1833, line: 12, elements: !252)
!1833 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1749, file: !1750, line: 192, baseType: !423, size: 64, offset: 4672)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1749, file: !1750, line: 203, baseType: !1836, size: 2048, offset: 4736)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 2048, elements: !190)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1838, line: 43, size: 128, elements: !1839)
!1838 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1837, file: !1838, line: 44, baseType: !327, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1837, file: !1838, line: 45, baseType: !327, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1749, file: !1750, line: 220, baseType: !490, size: 8, offset: 6784)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1749, file: !1750, line: 221, baseType: !1204, size: 16, offset: 6800)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1749, file: !1750, line: 222, baseType: !1204, size: 16, offset: 6816)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1749, file: !1750, line: 224, baseType: !973, size: 64, offset: 6848)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1749, file: !1750, line: 227, baseType: !1172, size: 192, offset: 6912)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1749, file: !1750, line: 233, baseType: !1172, size: 192, offset: 7104)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1216, file: !1217, line: 970, baseType: !1849, size: 64, offset: 9280)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1750, line: 20, size: 16576, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1850, file: !1750, line: 21, baseType: !238)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1850, file: !1750, line: 22, baseType: !1229, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1850, file: !1750, line: 23, baseType: !1480, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1850, file: !1750, line: 24, baseType: !1856, size: 16384, offset: 192)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 16384, elements: !284)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1760, line: 49, size: 256, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1857, file: !1760, line: 50, baseType: !1860, size: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1760, line: 35, size: 256, elements: !1861)
!1861 = !{!1862, !1869, !1870, !1876}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1860, file: !1760, line: 37, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1864, line: 19, baseType: !1865)
!1864 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1864, line: 18, baseType: !1867)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !186}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1860, file: !1760, line: 38, baseType: !328, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1860, file: !1760, line: 44, baseType: !1871, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1864, line: 22, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1864, line: 21, baseType: !1874)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1860, file: !1760, line: 46, baseType: !1764, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1216, file: !1217, line: 971, baseType: !1764, size: 64, offset: 9344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1216, file: !1217, line: 972, baseType: !1764, size: 64, offset: 9408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1216, file: !1217, line: 974, baseType: !1764, size: 64, offset: 9472)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1216, file: !1217, line: 975, baseType: !1759, size: 192, offset: 9536)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1216, file: !1217, line: 976, baseType: !328, size: 64, offset: 9728)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1216, file: !1217, line: 977, baseType: !325, size: 64, offset: 9792)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1216, file: !1217, line: 978, baseType: !7, size: 32, offset: 9856)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1216, file: !1217, line: 980, baseType: !372, size: 64, offset: 9920)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1216, file: !1217, line: 989, baseType: !1886, size: 128, offset: 9984)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1887, line: 35, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1886, file: !1887, line: 36, baseType: !186, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1886, file: !1887, line: 37, baseType: !747, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1886, file: !1887, line: 38, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1887, line: 23, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1216, file: !1217, line: 992, baseType: !421, size: 64, offset: 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1216, file: !1217, line: 993, baseType: !421, size: 64, offset: 10176)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1216, file: !1217, line: 996, baseType: !238, offset: 10240)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1216, file: !1217, line: 999, baseType: !780, offset: 10240)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1216, file: !1217, line: 1001, baseType: !1899, size: 64, offset: 10240)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1217, line: 636, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1899, file: !1217, line: 637, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1216, file: !1217, line: 1005, baseType: !752, size: 128, offset: 10304)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1216, file: !1217, line: 1007, baseType: !1215, size: 64, offset: 10432)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1216, file: !1217, line: 1009, baseType: !1906, size: 64, offset: 10496)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1217, line: 1009, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1216, file: !1217, line: 1043, baseType: !181, size: 64, offset: 10560)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1216, file: !1217, line: 1046, baseType: !1910, size: 64, offset: 10624)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1217, line: 41, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1216, file: !1217, line: 1050, baseType: !1913, size: 64, offset: 10688)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1217, line: 42, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1216, file: !1217, line: 1054, baseType: !1916, size: 64, offset: 10752)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1217, line: 55, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1216, file: !1217, line: 1056, baseType: !1919, size: 64, offset: 10816)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1217, line: 40, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1216, file: !1217, line: 1058, baseType: !1922, size: 64, offset: 10880)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1924, line: 99, size: 704, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1951, !1952}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1923, file: !1924, line: 100, baseType: !771, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1923, file: !1924, line: 101, baseType: !747, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1923, file: !1924, line: 102, baseType: !747, size: 32, offset: 96)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1923, file: !1924, line: 105, baseType: !238, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1923, file: !1924, line: 107, baseType: !176, size: 16, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1923, file: !1924, line: 109, baseType: !739, size: 128, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1923, file: !1924, line: 110, baseType: !1933, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1924, line: 73, size: 448, elements: !1935)
!1935 = !{!1936, !1939, !1940, !1945, !1950}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1934, file: !1924, line: 74, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1924, line: 74, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1934, file: !1924, line: 75, baseType: !1922, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 83, baseType: !1941, size: 128, offset: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 83, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1941, file: !1924, line: 84, baseType: !225, size: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1941, file: !1924, line: 85, baseType: !934, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1924, line: 87, baseType: !1946, size: 128, offset: 256)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1924, line: 87, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1946, file: !1924, line: 88, baseType: !639, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1946, file: !1924, line: 89, baseType: !369, size: 128, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !1924, line: 92, baseType: !7, size: 32, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1923, file: !1924, line: 111, baseType: !635, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1923, file: !1924, line: 113, baseType: !1953, size: 256, offset: 448)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1954, line: 102, size: 256, elements: !1955)
!1954 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1955 = !{!1956, !1957, !1958}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1953, file: !1954, line: 103, baseType: !771, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1953, file: !1954, line: 104, baseType: !225, size: 128, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1953, file: !1954, line: 105, baseType: !1959, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1954, line: 21, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1216, file: !1217, line: 1061, baseType: !1965, size: 64, offset: 10944)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1217, line: 43, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1216, file: !1217, line: 1064, baseType: !328, size: 64, offset: 11008)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1216, file: !1217, line: 1065, baseType: !1969, size: 64, offset: 11072)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1760, line: 14, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1760, line: 12, size: 384, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1760, line: 13, baseType: !1974, size: 384)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !1760, line: 13, size: 384, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1974, file: !1760, line: 13, baseType: !186, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1974, file: !1760, line: 13, baseType: !186, size: 32, offset: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1974, file: !1760, line: 13, baseType: !186, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1974, file: !1760, line: 13, baseType: !1980, size: 256, offset: 128)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1981, line: 32, size: 256, elements: !1982)
!1981 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1982 = !{!1983, !1988, !2001, !2007, !2016, !2036, !2041}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1980, file: !1981, line: 37, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 34, size: 64, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1984, file: !1981, line: 35, baseType: !1459, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1984, file: !1981, line: 36, baseType: !441, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1980, file: !1981, line: 45, baseType: !1989, size: 192)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 40, size: 192, elements: !1990)
!1990 = !{!1991, !1993, !1994, !2000}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1989, file: !1981, line: 41, baseType: !1992, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !312, line: 95, baseType: !186)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1989, file: !1981, line: 42, baseType: !186, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1989, file: !1981, line: 43, baseType: !1995, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1981, line: 11, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1981, line: 8, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1996, file: !1981, line: 9, baseType: !186, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1996, file: !1981, line: 10, baseType: !181, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1989, file: !1981, line: 44, baseType: !186, size: 32, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1980, file: !1981, line: 52, baseType: !2002, size: 128)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 48, size: 128, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2002, file: !1981, line: 49, baseType: !1459, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2002, file: !1981, line: 50, baseType: !441, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2002, file: !1981, line: 51, baseType: !1995, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1980, file: !1981, line: 61, baseType: !2008, size: 256)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 55, size: 256, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2015}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2008, file: !1981, line: 56, baseType: !1459, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2008, file: !1981, line: 57, baseType: !441, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2008, file: !1981, line: 58, baseType: !186, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2008, file: !1981, line: 59, baseType: !2014, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !312, line: 94, baseType: !313)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2008, file: !1981, line: 60, baseType: !2014, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1980, file: !1981, line: 95, baseType: !2017, size: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 64, size: 256, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2017, file: !1981, line: 65, baseType: !181, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2017, file: !1981, line: 77, baseType: !2021, size: 192, offset: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2017, file: !1981, line: 77, size: 192, elements: !2022)
!2022 = !{!2023, !2024, !2031}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2021, file: !1981, line: 82, baseType: !1204, size: 16)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2021, file: !1981, line: 88, baseType: !2025, size: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2021, file: !1981, line: 84, size: 192, elements: !2026)
!2026 = !{!2027, !2029, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2025, file: !1981, line: 85, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !1329)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2025, file: !1981, line: 86, baseType: !181, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2025, file: !1981, line: 87, baseType: !181, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2021, file: !1981, line: 93, baseType: !2032, size: 96)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2021, file: !1981, line: 90, size: 96, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2032, file: !1981, line: 91, baseType: !2028, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2032, file: !1981, line: 92, baseType: !195, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1980, file: !1981, line: 101, baseType: !2037, size: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 98, size: 128, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2037, file: !1981, line: 99, baseType: !314, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2037, file: !1981, line: 100, baseType: !186, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1980, file: !1981, line: 108, baseType: !2042, size: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1980, file: !1981, line: 104, size: 128, elements: !2043)
!2043 = !{!2044, !2045, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2042, file: !1981, line: 105, baseType: !181, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2042, file: !1981, line: 106, baseType: !186, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2042, file: !1981, line: 107, baseType: !7, size: 32, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1216, file: !1217, line: 1067, baseType: !1832, offset: 11136)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1216, file: !1217, line: 1099, baseType: !2049, size: 64, offset: 11136)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1217, line: 56, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1216, file: !1217, line: 1103, baseType: !225, size: 128, offset: 11200)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1216, file: !1217, line: 1104, baseType: !2053, size: 64, offset: 11328)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1217, line: 46, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1216, file: !1217, line: 1105, baseType: !1172, size: 192, offset: 11392)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1216, file: !1217, line: 1106, baseType: !7, size: 32, offset: 11584)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1216, file: !1217, line: 1109, baseType: !2058, size: 128, offset: 11648)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2059, size: 128, elements: !206)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1217, line: 51, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1216, file: !1217, line: 1110, baseType: !1172, size: 192, offset: 11776)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1216, file: !1217, line: 1111, baseType: !225, size: 128, offset: 11968)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1216, file: !1217, line: 1173, baseType: !2064, size: 64, offset: 12096)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2066, line: 62, size: 256, align: 256, elements: !2067)
!2066 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2067 = !{!2068, !2069, !2070, !2075}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2065, file: !2066, line: 75, baseType: !195, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2065, file: !2066, line: 90, baseType: !195, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2065, file: !2066, line: 124, baseType: !2071, size: 64, offset: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !2066, line: 109, size: 64, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2071, file: !2066, line: 110, baseType: !422, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2071, file: !2066, line: 112, baseType: !422, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2065, file: !2066, line: 144, baseType: !195, size: 32, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1216, file: !1217, line: 1174, baseType: !193, size: 32, offset: 12160)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1216, file: !1217, line: 1179, baseType: !328, size: 64, offset: 12224)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1216, file: !1217, line: 1182, baseType: !2079, size: 128, offset: 12288)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1150, line: 76, size: 128, elements: !2080)
!2080 = !{!2081, !2086, !2087}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2079, file: !1150, line: 85, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2083, line: 7, size: 64, elements: !2084)
!2083 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2082, file: !2083, line: 12, baseType: !1366, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2079, file: !1150, line: 88, baseType: !490, size: 8, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2079, file: !1150, line: 95, baseType: !490, size: 8, offset: 72)
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1217, line: 1184, baseType: !2089, size: 128, offset: 12416)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !1217, line: 1184, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2089, file: !1217, line: 1185, baseType: !1229, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2089, file: !1217, line: 1186, baseType: !369, size: 128, align: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1216, file: !1217, line: 1190, baseType: !2094, size: 64, offset: 12544)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1217, line: 53, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1216, file: !1217, line: 1192, baseType: !2097, size: 128, offset: 12608)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1150, line: 64, size: 128, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2097, file: !1150, line: 65, baseType: !721, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2097, file: !1150, line: 67, baseType: !195, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2097, file: !1150, line: 68, baseType: !195, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1216, file: !1217, line: 1206, baseType: !186, size: 32, offset: 12736)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1216, file: !1217, line: 1207, baseType: !186, size: 32, offset: 12768)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1216, file: !1217, line: 1209, baseType: !328, size: 64, offset: 12800)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1216, file: !1217, line: 1219, baseType: !421, size: 64, offset: 12864)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1216, file: !1217, line: 1220, baseType: !421, size: 64, offset: 12928)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1216, file: !1217, line: 1317, baseType: !186, size: 32, offset: 12992)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1216, file: !1217, line: 1319, baseType: !1215, size: 64, offset: 13056)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1216, file: !1217, line: 1322, baseType: !2110, size: 64, offset: 13120)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2112, line: 56, size: 512, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2122}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2111, file: !2112, line: 57, baseType: !2110, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2111, file: !2112, line: 58, baseType: !181, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2111, file: !2112, line: 59, baseType: !328, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2111, file: !2112, line: 60, baseType: !328, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2111, file: !2112, line: 61, baseType: !820, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2111, file: !2112, line: 62, baseType: !7, size: 32, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2111, file: !2112, line: 63, baseType: !2121, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !180, line: 153, baseType: !421)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2111, file: !2112, line: 64, baseType: !2123, size: 64, offset: 448)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1216, file: !1217, line: 1326, baseType: !1229, size: 32, offset: 13184)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1216, file: !1217, line: 1342, baseType: !181, size: 64, offset: 13248)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1216, file: !1217, line: 1343, baseType: !422, size: 64, offset: 13312)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1216, file: !1217, line: 1344, baseType: !421, size: 64, offset: 13376)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1216, file: !1217, line: 1345, baseType: !422, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1216, file: !1217, line: 1346, baseType: !422, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1216, file: !1217, line: 1347, baseType: !422, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1216, file: !1217, line: 1348, baseType: !369, size: 128, align: 64, offset: 13504)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1216, file: !1217, line: 1358, baseType: !2134, size: 34816, offset: 13824)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2135, line: 485, size: 34816, elements: !2136)
!2135 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2136 = !{!2137, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2166, !2167, !2168, !2169, !2170, !2171, !2174, !2175, !2176}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2134, file: !2135, line: 487, baseType: !2138, size: 192)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2139, size: 192, elements: !280)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2140, line: 16, size: 64, elements: !2141)
!2140 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2139, file: !2140, line: 17, baseType: !859, size: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2139, file: !2140, line: 18, baseType: !859, size: 16, offset: 16)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2139, file: !2140, line: 19, baseType: !859, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2139, file: !2140, line: 19, baseType: !859, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2139, file: !2140, line: 19, baseType: !859, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2139, file: !2140, line: 19, baseType: !859, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2139, file: !2140, line: 19, baseType: !859, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2139, file: !2140, line: 20, baseType: !859, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2139, file: !2140, line: 20, baseType: !859, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2139, file: !2140, line: 20, baseType: !859, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2139, file: !2140, line: 20, baseType: !859, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2139, file: !2140, line: 20, baseType: !859, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2139, file: !2140, line: 20, baseType: !859, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2134, file: !2135, line: 491, baseType: !328, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2134, file: !2135, line: 495, baseType: !176, size: 16, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2134, file: !2135, line: 496, baseType: !176, size: 16, offset: 272)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2134, file: !2135, line: 497, baseType: !176, size: 16, offset: 288)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2134, file: !2135, line: 498, baseType: !176, size: 16, offset: 304)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2134, file: !2135, line: 502, baseType: !328, size: 64, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2134, file: !2135, line: 503, baseType: !328, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2134, file: !2135, line: 514, baseType: !2163, size: 256, offset: 448)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2164, size: 256, elements: !1154)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2135, line: 483, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2134, file: !2135, line: 516, baseType: !328, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2134, file: !2135, line: 518, baseType: !328, size: 64, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2134, file: !2135, line: 520, baseType: !328, size: 64, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2134, file: !2135, line: 521, baseType: !328, size: 64, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2134, file: !2135, line: 522, baseType: !328, size: 64, offset: 960)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2134, file: !2135, line: 528, baseType: !2172, size: 64, offset: 1024)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2135, line: 10, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2134, file: !2135, line: 535, baseType: !328, size: 64, offset: 1088)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2134, file: !2135, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2134, file: !2135, line: 540, baseType: !2177, size: 33280, offset: 1536)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2178, line: 317, size: 33280, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2181, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2177, file: !2178, line: 330, baseType: !7, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2177, file: !2178, line: 337, baseType: !328, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2177, file: !2178, line: 348, baseType: !2183, size: 32768, offset: 512)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2178, line: 304, size: 32768, elements: !2184)
!2184 = !{!2185, !2200, !2239, !2289, !2302}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2183, file: !2178, line: 305, baseType: !2186, size: 896)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2178, line: 12, size: 896, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2199}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2186, file: !2178, line: 13, baseType: !193, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2186, file: !2178, line: 14, baseType: !193, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2186, file: !2178, line: 15, baseType: !193, size: 32, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2186, file: !2178, line: 16, baseType: !193, size: 32, offset: 96)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2186, file: !2178, line: 17, baseType: !193, size: 32, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2186, file: !2178, line: 18, baseType: !193, size: 32, offset: 160)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2186, file: !2178, line: 19, baseType: !193, size: 32, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2186, file: !2178, line: 22, baseType: !2196, size: 640, offset: 224)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 640, elements: !2197)
!2197 = !{!2198}
!2198 = !DISubrange(count: 20)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2186, file: !2178, line: 25, baseType: !193, size: 32, offset: 864)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2183, file: !2178, line: 306, baseType: !2201, size: 4096, align: 128)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2178, line: 34, size: 4096, align: 128, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2222, !2223, !2224, !2228, !2230, !2234}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2201, file: !2178, line: 35, baseType: !859, size: 16)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2201, file: !2178, line: 36, baseType: !859, size: 16, offset: 16)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2201, file: !2178, line: 37, baseType: !859, size: 16, offset: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2201, file: !2178, line: 38, baseType: !859, size: 16, offset: 48)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2178, line: 39, baseType: !2208, size: 128, offset: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2178, line: 39, size: 128, elements: !2209)
!2209 = !{!2210, !2215}
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !2178, line: 40, baseType: !2211, size: 128)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !2178, line: 40, size: 128, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2211, file: !2178, line: 41, baseType: !421, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2211, file: !2178, line: 42, baseType: !421, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2208, file: !2178, line: 44, baseType: !2216, size: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2208, file: !2178, line: 44, size: 128, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2216, file: !2178, line: 45, baseType: !193, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2216, file: !2178, line: 46, baseType: !193, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2216, file: !2178, line: 47, baseType: !193, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2216, file: !2178, line: 48, baseType: !193, size: 32, offset: 96)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2201, file: !2178, line: 51, baseType: !193, size: 32, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2201, file: !2178, line: 52, baseType: !193, size: 32, offset: 224)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2201, file: !2178, line: 55, baseType: !2225, size: 1024, offset: 256)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1024, elements: !2226)
!2226 = !{!2227}
!2227 = !DISubrange(count: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2201, file: !2178, line: 58, baseType: !2229, size: 2048, offset: 1280)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2048, elements: !284)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2201, file: !2178, line: 60, baseType: !2231, size: 384, offset: 3328)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 384, elements: !2232)
!2232 = !{!2233}
!2233 = !DISubrange(count: 12)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2201, file: !2178, line: 62, baseType: !2235, size: 384, offset: 3712)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2201, file: !2178, line: 62, size: 384, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2235, file: !2178, line: 63, baseType: !2231, size: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2235, file: !2178, line: 64, baseType: !2231, size: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2183, file: !2178, line: 307, baseType: !2240, size: 1088)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2178, line: 79, size: 1088, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2288}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2240, file: !2178, line: 80, baseType: !193, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2240, file: !2178, line: 81, baseType: !193, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2240, file: !2178, line: 82, baseType: !193, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2240, file: !2178, line: 83, baseType: !193, size: 32, offset: 96)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2240, file: !2178, line: 84, baseType: !193, size: 32, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2240, file: !2178, line: 85, baseType: !193, size: 32, offset: 160)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2240, file: !2178, line: 86, baseType: !193, size: 32, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2240, file: !2178, line: 88, baseType: !2196, size: 640, offset: 224)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2240, file: !2178, line: 89, baseType: !1351, size: 8, offset: 864)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2240, file: !2178, line: 90, baseType: !1351, size: 8, offset: 872)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2240, file: !2178, line: 91, baseType: !1351, size: 8, offset: 880)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2240, file: !2178, line: 92, baseType: !1351, size: 8, offset: 888)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2240, file: !2178, line: 93, baseType: !1351, size: 8, offset: 896)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2240, file: !2178, line: 94, baseType: !1351, size: 8, offset: 904)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2240, file: !2178, line: 95, baseType: !2257, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2259, line: 11, size: 128, elements: !2260)
!2259 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2258, file: !2259, line: 12, baseType: !314, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2258, file: !2259, line: 13, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2265, line: 56, size: 1344, elements: !2266)
!2265 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2264, file: !2265, line: 61, baseType: !328, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2264, file: !2265, line: 62, baseType: !328, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2264, file: !2265, line: 63, baseType: !328, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2264, file: !2265, line: 64, baseType: !328, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2264, file: !2265, line: 65, baseType: !328, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2264, file: !2265, line: 66, baseType: !328, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2264, file: !2265, line: 68, baseType: !328, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2264, file: !2265, line: 69, baseType: !328, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2264, file: !2265, line: 70, baseType: !328, size: 64, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2264, file: !2265, line: 71, baseType: !328, size: 64, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2264, file: !2265, line: 72, baseType: !328, size: 64, offset: 640)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2264, file: !2265, line: 73, baseType: !328, size: 64, offset: 704)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2264, file: !2265, line: 74, baseType: !328, size: 64, offset: 768)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2264, file: !2265, line: 75, baseType: !328, size: 64, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2264, file: !2265, line: 76, baseType: !328, size: 64, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2264, file: !2265, line: 81, baseType: !328, size: 64, offset: 960)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2264, file: !2265, line: 83, baseType: !328, size: 64, offset: 1024)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2264, file: !2265, line: 84, baseType: !328, size: 64, offset: 1088)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !2265, line: 85, baseType: !328, size: 64, offset: 1152)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2264, file: !2265, line: 86, baseType: !328, size: 64, offset: 1216)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2264, file: !2265, line: 87, baseType: !328, size: 64, offset: 1280)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2240, file: !2178, line: 96, baseType: !193, size: 32, offset: 1024)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2183, file: !2178, line: 308, baseType: !2290, size: 4608, align: 512)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2178, line: 289, size: 4608, align: 512, elements: !2291)
!2291 = !{!2292, !2293, !2300}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2290, file: !2178, line: 290, baseType: !2201, size: 4096, align: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2290, file: !2178, line: 291, baseType: !2294, size: 512, offset: 4096)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2178, line: 268, size: 512, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2294, file: !2178, line: 269, baseType: !421, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2294, file: !2178, line: 270, baseType: !421, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2294, file: !2178, line: 271, baseType: !2299, size: 384, offset: 128)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 384, elements: !1622)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2290, file: !2178, line: 292, baseType: !2301, offset: 4608)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1351, elements: !1720)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2183, file: !2178, line: 309, baseType: !2303, size: 32768)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1351, size: 32768, elements: !2304)
!2304 = !{!2305}
!2305 = !DISubrange(count: 4096)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1212, file: !723, line: 378, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1208, file: !723, line: 384, baseType: !1501, size: 192, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !977, file: !723, line: 500, baseType: !238, offset: 6656)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !977, file: !723, line: 501, baseType: !2311, size: 64, offset: 6656)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !723, line: 387, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !977, file: !723, line: 516, baseType: !1710, size: 64, offset: 6720)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !977, file: !723, line: 519, baseType: !356, size: 64, offset: 6784)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !977, file: !723, line: 521, baseType: !2316, size: 64, offset: 6848)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !723, line: 521, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !977, file: !723, line: 545, baseType: !747, size: 32, offset: 6912)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !977, file: !723, line: 548, baseType: !490, size: 8, offset: 6944)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !977, file: !723, line: 550, baseType: !2321, offset: 6952)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2322, line: 142, elements: !252)
!2322 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !977, file: !723, line: 554, baseType: !1953, size: 256, offset: 6976)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !977, file: !723, line: 557, baseType: !193, size: 32, offset: 7232)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !974, file: !723, line: 565, baseType: !2326, offset: 7296)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, elements: !2327)
!2327 = !{!2328}
!2328 = !DISubrange(count: -1)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !970, file: !723, line: 151, baseType: !747, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !963, file: !723, line: 156, baseType: !238, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !723, line: 159, baseType: !2332, size: 128)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !723, line: 159, size: 128, elements: !2333)
!2333 = !{!2334, !2398}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2332, file: !723, line: 161, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2337)
!2337 = !{!2338, !2348, !2369, !2370, !2371, !2372, !2373, !2385, !2386, !2387}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2336, file: !38, line: 111, baseType: !2339, size: 384)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2340)
!2340 = !{!2341, !2343, !2344, !2345, !2346, !2347}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2339, file: !38, line: 20, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2339, file: !38, line: 21, baseType: !2342, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2339, file: !38, line: 22, baseType: !2342, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2339, file: !38, line: 23, baseType: !328, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2339, file: !38, line: 24, baseType: !328, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2339, file: !38, line: 25, baseType: !328, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2336, file: !38, line: 112, baseType: !2349, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2351, line: 105, size: 128, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2352 = !{!2353, !2354}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2350, file: !2351, line: 110, baseType: !328, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2350, file: !2351, line: 118, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2351, line: 95, size: 448, elements: !2357)
!2357 = !{!2358, !2359, !2364, !2365, !2366, !2367, !2368}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2356, file: !2351, line: 96, baseType: !771, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2356, file: !2351, line: 97, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2351, line: 60, baseType: !2362)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2349}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2356, file: !2351, line: 98, baseType: !2360, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2356, file: !2351, line: 99, baseType: !490, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2356, file: !2351, line: 100, baseType: !490, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2356, file: !2351, line: 101, baseType: !369, size: 128, align: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2356, file: !2351, line: 102, baseType: !2349, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2336, file: !38, line: 113, baseType: !2350, size: 128, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2336, file: !38, line: 114, baseType: !1501, size: 192, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2336, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2336, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2336, file: !38, line: 117, baseType: !2374, size: 64, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2376)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2377)
!2377 = !{!2378, !2379, !2383, !2384}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2376, file: !38, line: 73, baseType: !840, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2376, file: !38, line: 78, baseType: !2380, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2335}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2376, file: !38, line: 83, baseType: !2380, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2376, file: !38, line: 89, baseType: !1026, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2336, file: !38, line: 118, baseType: !181, size: 64, offset: 896)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2336, file: !38, line: 119, baseType: !186, size: 32, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2336, file: !38, line: 120, baseType: !2388, size: 128, offset: 1024)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2336, file: !38, line: 120, size: 128, elements: !2389)
!2389 = !{!2390, !2396}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2388, file: !38, line: 121, baseType: !2391, size: 128)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2392, line: 6, size: 128, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2391, file: !2392, line: 7, baseType: !421, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2391, file: !2392, line: 8, baseType: !421, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2388, file: !38, line: 122, baseType: !2397)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, elements: !1720)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2332, file: !723, line: 162, baseType: !181, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !727, file: !723, line: 176, baseType: !369, size: 128, align: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !723, line: 179, baseType: !2401, size: 32, offset: 384)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !723, line: 179, size: 32, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2401, file: !723, line: 184, baseType: !747, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2401, file: !723, line: 192, baseType: !7, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2401, file: !723, line: 194, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2401, file: !723, line: 195, baseType: !186, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !722, file: !723, line: 199, baseType: !747, size: 32, offset: 416)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !657, file: !51, line: 1964, baseType: !2409, size: 64, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!314, !599, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2414, line: 12, size: 256, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !{!2416, !2417, !2418, !2419, !2420}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2413, file: !2414, line: 13, baseType: !179, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2413, file: !2414, line: 16, baseType: !186, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2413, file: !2414, line: 23, baseType: !328, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2413, file: !2414, line: 30, baseType: !328, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2413, file: !2414, line: 33, baseType: !2421, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !723, line: 27, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !657, file: !51, line: 1966, baseType: !2409, size: 64, offset: 1408)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !600, file: !51, line: 1424, baseType: !2425, size: 64, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2427)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2428)
!2428 = !{!2429, !2475, !2479, !2483, !2484, !2485, !2486, !2487, !2492, !2497, !2501}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2427, file: !45, line: 323, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!186, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2460, !2461, !2462}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2434, file: !45, line: 295, baseType: !639, size: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2434, file: !45, line: 296, baseType: !225, size: 128, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2434, file: !45, line: 297, baseType: !225, size: 128, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2434, file: !45, line: 298, baseType: !225, size: 128, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2434, file: !45, line: 299, baseType: !1172, size: 192, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2434, file: !45, line: 300, baseType: !238, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2434, file: !45, line: 301, baseType: !747, size: 32, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2434, file: !45, line: 302, baseType: !599, size: 64, offset: 768)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2434, file: !45, line: 303, baseType: !2445, size: 64, offset: 832)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2446)
!2446 = !{!2447, !2459}
!2447 = !DIDerivedType(tag: DW_TAG_member, scope: !2445, file: !45, line: 69, baseType: !2448, size: 32)
!2448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2445, file: !45, line: 69, size: 32, elements: !2449)
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2448, file: !45, line: 70, baseType: !435, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2448, file: !45, line: 71, baseType: !443, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2448, file: !45, line: 72, baseType: !2453, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2454, line: 24, baseType: !2455)
!2454 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2454, line: 22, size: 32, elements: !2456)
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2455, file: !2454, line: 23, baseType: !2458, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2454, line: 20, baseType: !441)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2445, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2434, file: !45, line: 304, baseType: !531, size: 64, offset: 896)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2434, file: !45, line: 305, baseType: !328, size: 64, offset: 960)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2434, file: !45, line: 306, baseType: !2463, size: 576, offset: 1024)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2464)
!2464 = !{!2465, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2463, file: !45, line: 206, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !533)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2463, file: !45, line: 207, baseType: !2466, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2463, file: !45, line: 208, baseType: !2466, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2463, file: !45, line: 209, baseType: !2466, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2463, file: !45, line: 210, baseType: !2466, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2463, file: !45, line: 211, baseType: !2466, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2463, file: !45, line: 212, baseType: !2466, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2463, file: !45, line: 213, baseType: !539, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2463, file: !45, line: 214, baseType: !539, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2427, file: !45, line: 324, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!2433, !599, !186}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2427, file: !45, line: 325, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !2433}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2427, file: !45, line: 326, baseType: !2430, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2427, file: !45, line: 327, baseType: !2430, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2427, file: !45, line: 328, baseType: !2430, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2427, file: !45, line: 329, baseType: !685, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2427, file: !45, line: 332, baseType: !2488, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2491, !429}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2427, file: !45, line: 333, baseType: !2493, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!186, !429, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2427, file: !45, line: 335, baseType: !2498, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!186, !429, !2491}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2427, file: !45, line: 337, baseType: !2502, size: 64, offset: 640)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!186, !599, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !600, file: !51, line: 1425, baseType: !2507, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2510)
!2510 = !{!2511, !2515, !2516, !2520, !2521, !2522, !2537, !2560, !2564, !2565, !2588}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2509, file: !45, line: 429, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!186, !599, !186, !186, !549}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2509, file: !45, line: 430, baseType: !685, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2509, file: !45, line: 431, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!186, !599, !7}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2509, file: !45, line: 432, baseType: !2517, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2509, file: !45, line: 433, baseType: !685, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2509, file: !45, line: 434, baseType: !2523, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!186, !599, !186, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2527, file: !45, line: 416, baseType: !186, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2527, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2527, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2527, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2527, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2527, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2527, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2527, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2509, file: !45, line: 435, baseType: !2538, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!186, !599, !2445, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2542, file: !45, line: 344, baseType: !186, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2542, file: !45, line: 345, baseType: !421, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2542, file: !45, line: 346, baseType: !421, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2542, file: !45, line: 347, baseType: !421, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2542, file: !45, line: 348, baseType: !421, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2542, file: !45, line: 349, baseType: !421, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2542, file: !45, line: 350, baseType: !421, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2542, file: !45, line: 351, baseType: !777, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2542, file: !45, line: 353, baseType: !777, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2542, file: !45, line: 354, baseType: !186, size: 32, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2542, file: !45, line: 355, baseType: !186, size: 32, offset: 608)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2542, file: !45, line: 356, baseType: !421, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2542, file: !45, line: 357, baseType: !421, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2542, file: !45, line: 358, baseType: !421, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2542, file: !45, line: 359, baseType: !777, size: 64, offset: 832)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2542, file: !45, line: 360, baseType: !186, size: 32, offset: 896)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2509, file: !45, line: 436, baseType: !2561, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!186, !599, !2505, !2541}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2509, file: !45, line: 438, baseType: !2538, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2509, file: !45, line: 439, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!186, !599, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2570, file: !45, line: 410, baseType: !7, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2570, file: !45, line: 411, baseType: !2574, size: 1344, offset: 64)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, size: 1344, elements: !280)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2587}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !45, line: 396, baseType: !7, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2575, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2575, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2575, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2575, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2575, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2575, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2575, file: !45, line: 404, baseType: !423, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2575, file: !45, line: 405, baseType: !2586, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !180, line: 126, baseType: !421)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2575, file: !45, line: 406, baseType: !2586, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2509, file: !45, line: 440, baseType: !2517, size: 64, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !600, file: !51, line: 1426, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !600, file: !51, line: 1427, baseType: !328, size: 64, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !600, file: !51, line: 1428, baseType: !328, size: 64, offset: 704)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !600, file: !51, line: 1429, baseType: !328, size: 64, offset: 768)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !600, file: !51, line: 1430, baseType: !386, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !600, file: !51, line: 1431, baseType: !767, size: 256, offset: 896)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !600, file: !51, line: 1432, baseType: !186, size: 32, offset: 1152)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !600, file: !51, line: 1433, baseType: !747, size: 32, offset: 1184)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !600, file: !51, line: 1437, baseType: !2601, size: 64, offset: 1216)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !600, file: !51, line: 1449, baseType: !2606, size: 64, offset: 1280)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !402, line: 34, size: 64, elements: !2607)
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2606, file: !402, line: 35, baseType: !405, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !600, file: !51, line: 1450, baseType: !225, size: 128, offset: 1344)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !600, file: !51, line: 1451, baseType: !2611, size: 64, offset: 1472)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !600, file: !51, line: 1452, baseType: !1919, size: 64, offset: 1536)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !600, file: !51, line: 1453, baseType: !2615, size: 64, offset: 1600)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !600, file: !51, line: 1454, baseType: !639, size: 128, offset: 1664)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !600, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !600, file: !51, line: 1456, baseType: !2620, size: 2432, offset: 1856)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2626, !2658}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2620, file: !45, line: 519, baseType: !7, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2620, file: !45, line: 520, baseType: !767, size: 256, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2620, file: !45, line: 521, baseType: !2625, size: 192, offset: 320)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !280)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2620, file: !45, line: 522, baseType: !2627, size: 1728, offset: 512)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2628, size: 1728, elements: !280)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2629)
!2629 = !{!2630, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2628, file: !45, line: 223, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2633)
!2633 = !{!2634, !2635, !2648, !2649}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2632, file: !45, line: 444, baseType: !186, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2632, file: !45, line: 445, baseType: !2636, size: 64, offset: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2638)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2638, file: !45, line: 311, baseType: !685, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2638, file: !45, line: 312, baseType: !685, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2638, file: !45, line: 313, baseType: !685, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2638, file: !45, line: 314, baseType: !685, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2638, file: !45, line: 315, baseType: !2430, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2638, file: !45, line: 316, baseType: !2430, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2638, file: !45, line: 317, baseType: !2430, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2638, file: !45, line: 318, baseType: !2502, size: 64, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2632, file: !45, line: 446, baseType: !171, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2632, file: !45, line: 447, baseType: !2631, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2628, file: !45, line: 224, baseType: !186, size: 32, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2628, file: !45, line: 226, baseType: !225, size: 128, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2628, file: !45, line: 227, baseType: !328, size: 64, offset: 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2628, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2628, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2628, file: !45, line: 230, baseType: !2466, size: 64, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2628, file: !45, line: 231, baseType: !2466, size: 64, offset: 448)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2628, file: !45, line: 232, baseType: !181, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2620, file: !45, line: 523, baseType: !2659, size: 192, offset: 2240)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, size: 192, elements: !280)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !600, file: !51, line: 1458, baseType: !2661, size: 2112, offset: 4288)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2662)
!2662 = !{!2663, !2664, !2665}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2661, file: !51, line: 1411, baseType: !186, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2661, file: !51, line: 1412, baseType: !1480, size: 128, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2661, file: !51, line: 1413, baseType: !2666, size: 1920, offset: 192)
!2666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 1920, elements: !280)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2668, line: 12, size: 640, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2669 = !{!2670, !2678, !2680, !2685, !2686}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2667, file: !2668, line: 13, baseType: !2671, size: 320)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2672, line: 17, size: 320, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2673 = !{!2674, !2675, !2676, !2677}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2671, file: !2672, line: 18, baseType: !186, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2671, file: !2672, line: 19, baseType: !186, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2671, file: !2672, line: 20, baseType: !1480, size: 128, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2671, file: !2672, line: 22, baseType: !369, size: 128, align: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2667, file: !2668, line: 14, baseType: !2679, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2667, file: !2668, line: 15, baseType: !2681, size: 64, offset: 384)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2682, line: 16, size: 64, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2681, file: !2682, line: 17, baseType: !1215, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2667, file: !2668, line: 16, baseType: !1480, size: 128, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2667, file: !2668, line: 17, baseType: !747, size: 32, offset: 576)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !600, file: !51, line: 1465, baseType: !181, size: 64, offset: 6400)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !600, file: !51, line: 1468, baseType: !193, size: 32, offset: 6464)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !600, file: !51, line: 1470, baseType: !539, size: 64, offset: 6528)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !600, file: !51, line: 1471, baseType: !539, size: 64, offset: 6592)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !600, file: !51, line: 1473, baseType: !195, size: 32, offset: 6656)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !600, file: !51, line: 1474, baseType: !2693, size: 64, offset: 6720)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !600, file: !51, line: 1477, baseType: !2696, size: 256, offset: 6784)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !2226)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !600, file: !51, line: 1478, baseType: !2698, size: 128, offset: 7040)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2699, line: 18, baseType: !2700)
!2699 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2699, line: 16, size: 128, elements: !2701)
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2700, file: !2699, line: 17, baseType: !2703, size: 128)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 128, elements: !190)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !600, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !600, file: !51, line: 1481, baseType: !2706, size: 32, offset: 7200)
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !180, line: 150, baseType: !7)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !600, file: !51, line: 1487, baseType: !1172, size: 192, offset: 7232)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !600, file: !51, line: 1493, baseType: !222, size: 64, offset: 7424)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !600, file: !51, line: 1495, baseType: !2710, size: 64, offset: 7488)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !384, line: 135, size: 1024, align: 512, elements: !2713)
!2713 = !{!2714, !2718, !2719, !2726, !2732, !2736, !2740, !2744, !2745, !2749, !2753, !2758, !2762}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2712, file: !384, line: 136, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!186, !386, !7}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2712, file: !384, line: 137, baseType: !2715, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2712, file: !384, line: 138, baseType: !2720, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!186, !2723, !2725}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2712, file: !384, line: 139, baseType: !2727, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!186, !2723, !7, !222, !2730}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2712, file: !384, line: 141, baseType: !2733, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!186, !2723}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2712, file: !384, line: 142, baseType: !2737, size: 64, offset: 320)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!186, !386}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2712, file: !384, line: 143, baseType: !2741, size: 64, offset: 384)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !386}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2712, file: !384, line: 144, baseType: !2741, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2712, file: !384, line: 145, baseType: !2746, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !386, !429}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2712, file: !384, line: 146, baseType: !2750, size: 64, offset: 576)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!279, !386, !279, !186}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2712, file: !384, line: 147, baseType: !2754, size: 64, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!382, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2712, file: !384, line: 148, baseType: !2759, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!186, !549, !490}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2712, file: !384, line: 149, baseType: !2763, size: 64, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!386, !386, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !600, file: !51, line: 1500, baseType: !186, size: 32, offset: 7552)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !600, file: !51, line: 1502, baseType: !2770, size: 448, offset: 7616)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2414, line: 60, size: 448, elements: !2771)
!2771 = !{!2772, !2777, !2778, !2779, !2780, !2781, !2782}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2770, file: !2414, line: 61, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!328, !2776, !2412}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2770, file: !2414, line: 63, baseType: !2773, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2770, file: !2414, line: 66, baseType: !314, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2770, file: !2414, line: 67, baseType: !186, size: 32, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2770, file: !2414, line: 68, baseType: !7, size: 32, offset: 224)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2770, file: !2414, line: 71, baseType: !225, size: 128, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2770, file: !2414, line: 77, baseType: !2783, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !600, file: !51, line: 1505, baseType: !771, size: 64, offset: 8064)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !600, file: !51, line: 1508, baseType: !771, size: 64, offset: 8128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !600, file: !51, line: 1511, baseType: !186, size: 32, offset: 8192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !600, file: !51, line: 1514, baseType: !908, size: 32, offset: 8224)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !600, file: !51, line: 1517, baseType: !2789, size: 64, offset: 8256)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1954, line: 18, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !600, file: !51, line: 1518, baseType: !635, size: 64, offset: 8320)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !600, file: !51, line: 1525, baseType: !1710, size: 64, offset: 8384)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !600, file: !51, line: 1532, baseType: !2794, size: 64, offset: 8448)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2795, line: 52, size: 64, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2796 = !{!2797}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2794, file: !2795, line: 53, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2795, line: 40, size: 256, elements: !2800)
!2800 = !{!2801, !2802, !2807}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2799, file: !2795, line: 42, baseType: !238)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2799, file: !2795, line: 44, baseType: !2803, size: 192)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2795, line: 28, size: 192, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2803, file: !2795, line: 29, baseType: !225, size: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2803, file: !2795, line: 31, baseType: !314, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2799, file: !2795, line: 49, baseType: !314, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !600, file: !51, line: 1533, baseType: !2794, size: 64, offset: 8512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !600, file: !51, line: 1534, baseType: !369, size: 128, align: 64, offset: 8576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !600, file: !51, line: 1535, baseType: !1953, size: 256, offset: 8704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !600, file: !51, line: 1537, baseType: !1172, size: 192, offset: 8960)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !600, file: !51, line: 1542, baseType: !186, size: 32, offset: 9152)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !600, file: !51, line: 1545, baseType: !238, offset: 9184)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !600, file: !51, line: 1546, baseType: !225, size: 128, offset: 9216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !600, file: !51, line: 1548, baseType: !238, offset: 9344)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !600, file: !51, line: 1549, baseType: !225, size: 128, offset: 9344)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !430, file: !51, line: 624, baseType: !734, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !430, file: !51, line: 631, baseType: !328, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !51, line: 639, baseType: !2820, size: 32, offset: 384)
!2820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !51, line: 639, size: 32, elements: !2821)
!2821 = !{!2822, !2824}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2820, file: !51, line: 640, baseType: !2823, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2820, file: !51, line: 641, baseType: !7, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !430, file: !51, line: 643, baseType: !513, size: 32, offset: 416)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !430, file: !51, line: 644, baseType: !531, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !430, file: !51, line: 645, baseType: !535, size: 128, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !430, file: !51, line: 646, baseType: !535, size: 128, offset: 640)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !430, file: !51, line: 647, baseType: !535, size: 128, offset: 768)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !430, file: !51, line: 648, baseType: !238, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !430, file: !51, line: 649, baseType: !176, size: 16, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !430, file: !51, line: 650, baseType: !1351, size: 8, offset: 912)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !430, file: !51, line: 651, baseType: !1351, size: 8, offset: 920)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !430, file: !51, line: 652, baseType: !2586, size: 64, offset: 960)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !430, file: !51, line: 659, baseType: !328, size: 64, offset: 1024)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !430, file: !51, line: 660, baseType: !767, size: 256, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !430, file: !51, line: 662, baseType: !328, size: 64, offset: 1344)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !430, file: !51, line: 663, baseType: !328, size: 64, offset: 1408)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !430, file: !51, line: 665, baseType: !639, size: 128, offset: 1472)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !430, file: !51, line: 666, baseType: !225, size: 128, offset: 1600)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !430, file: !51, line: 675, baseType: !225, size: 128, offset: 1728)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !430, file: !51, line: 676, baseType: !225, size: 128, offset: 1856)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !430, file: !51, line: 677, baseType: !225, size: 128, offset: 1984)
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !51, line: 678, baseType: !2845, size: 128, offset: 2112)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !51, line: 678, size: 128, elements: !2846)
!2846 = !{!2847, !2848}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2845, file: !51, line: 679, baseType: !635, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2845, file: !51, line: 680, baseType: !369, size: 128, align: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !430, file: !51, line: 682, baseType: !773, size: 64, offset: 2240)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !430, file: !51, line: 683, baseType: !773, size: 64, offset: 2304)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !430, file: !51, line: 684, baseType: !747, size: 32, offset: 2368)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !430, file: !51, line: 685, baseType: !747, size: 32, offset: 2400)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !430, file: !51, line: 686, baseType: !747, size: 32, offset: 2432)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !430, file: !51, line: 688, baseType: !747, size: 32, offset: 2464)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !51, line: 690, baseType: !2856, size: 64, offset: 2496)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !51, line: 690, size: 64, elements: !2857)
!2857 = !{!2858, !3080}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2856, file: !51, line: 691, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2862)
!2862 = !{!2863, !2864, !2868, !2873, !2877, !2878, !2879, !2883, !2896, !2897, !2904, !2908, !2909, !2913, !2914, !2918, !2923, !2924, !2928, !2932, !3040, !3044, !3045, !3049, !3050, !3054, !3058, !3063, !3067, !3071, !3075, !3079}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2861, file: !51, line: 1823, baseType: !171, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2861, file: !51, line: 1824, baseType: !2865, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!531, !356, !531, !186}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2861, file: !51, line: 1825, baseType: !2869, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!310, !356, !279, !325, !2872}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2861, file: !51, line: 1826, baseType: !2874, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!310, !356, !222, !325, !2872}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2861, file: !51, line: 1827, baseType: !844, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2861, file: !51, line: 1828, baseType: !844, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2861, file: !51, line: 1829, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!186, !847, !490}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2861, file: !51, line: 1830, baseType: !2884, size: 64, offset: 448)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!186, !356, !2887}
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2889)
!2889 = !{!2890, !2895}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2888, file: !51, line: 1777, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2892)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!186, !2887, !222, !186, !531, !421, !7}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2888, file: !51, line: 1778, baseType: !531, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2861, file: !51, line: 1831, baseType: !2884, size: 64, offset: 512)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2861, file: !51, line: 1832, baseType: !2898, size: 64, offset: 576)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!2901, !356, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !178, line: 52, baseType: !7)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !619, line: 27, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2861, file: !51, line: 1833, baseType: !2905, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!314, !356, !7, !328}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2861, file: !51, line: 1834, baseType: !2905, size: 64, offset: 704)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2861, file: !51, line: 1835, baseType: !2910, size: 64, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!186, !356, !980}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2861, file: !51, line: 1836, baseType: !328, size: 64, offset: 832)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2861, file: !51, line: 1837, baseType: !2915, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!186, !429, !356}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2861, file: !51, line: 1838, baseType: !2919, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!186, !356, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !181)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2861, file: !51, line: 1839, baseType: !2915, size: 64, offset: 1024)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2861, file: !51, line: 1840, baseType: !2925, size: 64, offset: 1088)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!186, !356, !531, !531, !186}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2861, file: !51, line: 1841, baseType: !2929, size: 64, offset: 1152)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!186, !186, !356, !186}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2861, file: !51, line: 1842, baseType: !2933, size: 64, offset: 1216)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!186, !356, !186, !2936}
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2970, !2971, !2972, !2985, !3016}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2937, file: !51, line: 1063, baseType: !2936, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2937, file: !51, line: 1064, baseType: !225, size: 128, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2937, file: !51, line: 1065, baseType: !639, size: 128, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2937, file: !51, line: 1066, baseType: !225, size: 128, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2937, file: !51, line: 1069, baseType: !225, size: 128, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2937, file: !51, line: 1072, baseType: !2922, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2937, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2937, file: !51, line: 1074, baseType: !427, size: 8, offset: 672)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2937, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2937, file: !51, line: 1076, baseType: !186, size: 32, offset: 736)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2937, file: !51, line: 1077, baseType: !1480, size: 128, offset: 768)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2937, file: !51, line: 1078, baseType: !356, size: 64, offset: 896)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2937, file: !51, line: 1079, baseType: !531, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2937, file: !51, line: 1080, baseType: !531, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2937, file: !51, line: 1082, baseType: !2954, size: 64, offset: 1088)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !2956)
!2956 = !{!2957, !2965, !2966, !2967, !2968, !2969}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2955, file: !51, line: 1315, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2959, line: 20, baseType: !2960)
!2959 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2959, line: 11, elements: !2961)
!2961 = !{!2962}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2960, file: !2959, line: 12, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !250, line: 33, baseType: !2964)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 31, elements: !252)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2955, file: !51, line: 1316, baseType: !186, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2955, file: !51, line: 1317, baseType: !186, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2955, file: !51, line: 1318, baseType: !2954, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2955, file: !51, line: 1319, baseType: !356, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2955, file: !51, line: 1320, baseType: !369, size: 128, align: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2937, file: !51, line: 1084, baseType: !328, size: 64, offset: 1152)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2937, file: !51, line: 1085, baseType: !328, size: 64, offset: 1216)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2937, file: !51, line: 1087, baseType: !2973, size: 64, offset: 1280)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2975)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !2976)
!2976 = !{!2977, !2981}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2975, file: !51, line: 1012, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2936, !2936}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2975, file: !51, line: 1013, baseType: !2982, size: 64, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2936}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2937, file: !51, line: 1088, baseType: !2986, size: 64, offset: 1344)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !2989)
!2989 = !{!2990, !2994, !2998, !2999, !3003, !3007, !3011, !3015}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2988, file: !51, line: 1017, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!2922, !2922}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2988, file: !51, line: 1018, baseType: !2995, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !2922}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2988, file: !51, line: 1019, baseType: !2982, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2988, file: !51, line: 1020, baseType: !3000, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!186, !2936, !186}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2988, file: !51, line: 1021, baseType: !3004, size: 64, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!490, !2936}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2988, file: !51, line: 1022, baseType: !3008, size: 64, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!186, !2936, !186, !228}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2988, file: !51, line: 1023, baseType: !3012, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2936, !821}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2988, file: !51, line: 1024, baseType: !3004, size: 64, offset: 448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2937, file: !51, line: 1097, baseType: !3017, size: 256, offset: 1408)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !51, line: 1089, size: 256, elements: !3018)
!3018 = !{!3019, !3028, !3034}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3017, file: !51, line: 1090, baseType: !3020, size: 256)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3021, line: 10, size: 256, elements: !3022)
!3021 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3022 = !{!3023, !3024, !3027}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3020, file: !3021, line: 11, baseType: !193, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3020, file: !3021, line: 12, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3021, line: 5, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3020, file: !3021, line: 13, baseType: !225, size: 128, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3017, file: !51, line: 1091, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3021, line: 17, size: 64, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3029, file: !3021, line: 18, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3021, line: 16, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3017, file: !51, line: 1096, baseType: !3035, size: 192)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3017, file: !51, line: 1092, size: 192, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3035, file: !51, line: 1093, baseType: !225, size: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3035, file: !51, line: 1094, baseType: !186, size: 32, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3035, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2861, file: !51, line: 1843, baseType: !3041, size: 64, offset: 1280)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!310, !356, !721, !186, !325, !2872, !186}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2861, file: !51, line: 1844, baseType: !1100, size: 64, offset: 1344)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2861, file: !51, line: 1845, baseType: !3046, size: 64, offset: 1408)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!186, !186}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2861, file: !51, line: 1846, baseType: !2933, size: 64, offset: 1472)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2861, file: !51, line: 1847, baseType: !3051, size: 64, offset: 1536)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!310, !2094, !356, !2872, !325, !7}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2861, file: !51, line: 1848, baseType: !3055, size: 64, offset: 1600)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!310, !356, !2872, !2094, !325, !7}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2861, file: !51, line: 1849, baseType: !3059, size: 64, offset: 1664)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!186, !356, !314, !3062, !821}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2861, file: !51, line: 1850, baseType: !3064, size: 64, offset: 1728)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!314, !356, !186, !531, !531}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2861, file: !51, line: 1852, baseType: !3068, size: 64, offset: 1792)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !711, !356}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2861, file: !51, line: 1856, baseType: !3072, size: 64, offset: 1856)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!310, !356, !531, !356, !531, !325, !7}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2861, file: !51, line: 1858, baseType: !3076, size: 64, offset: 1920)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!531, !356, !531, !356, !531, !531, !7}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2861, file: !51, line: 1861, baseType: !2925, size: 64, offset: 1984)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2856, file: !51, line: 692, baseType: !664, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !430, file: !51, line: 694, baseType: !3082, size: 64, offset: 2560)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3083, file: !51, line: 1101, baseType: !238)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3083, file: !51, line: 1102, baseType: !225, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3083, file: !51, line: 1103, baseType: !225, size: 128, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3083, file: !51, line: 1104, baseType: !225, size: 128, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !430, file: !51, line: 695, baseType: !735, size: 1216, align: 64, offset: 2624)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !430, file: !51, line: 696, baseType: !225, size: 128, offset: 3840)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !51, line: 697, baseType: !3092, size: 64, offset: 3968)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !51, line: 697, size: 64, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3107, !3108}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3092, file: !51, line: 698, baseType: !2094, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3092, file: !51, line: 699, baseType: !2611, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3092, file: !51, line: 700, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3099, line: 14, size: 832, elements: !3100)
!3099 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3098, file: !3099, line: 15, baseType: !218, size: 512)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3098, file: !3099, line: 16, baseType: !171, size: 64, offset: 512)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3098, file: !3099, line: 17, baseType: !2859, size: 64, offset: 576)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3098, file: !3099, line: 18, baseType: !225, size: 128, offset: 640)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3098, file: !3099, line: 19, baseType: !513, size: 32, offset: 768)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3098, file: !3099, line: 20, baseType: !7, size: 32, offset: 800)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3092, file: !51, line: 701, baseType: !279, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3092, file: !51, line: 702, baseType: !7, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !430, file: !51, line: 705, baseType: !195, size: 32, offset: 4032)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !430, file: !51, line: 708, baseType: !195, size: 32, offset: 4064)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !430, file: !51, line: 709, baseType: !2693, size: 64, offset: 4096)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !430, file: !51, line: 720, baseType: !181, size: 64, offset: 4160)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !387, file: !384, line: 98, baseType: !3114, size: 256, offset: 448)
!3114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 256, elements: !2226)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !387, file: !384, line: 101, baseType: !3116, size: 32, offset: 704)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3117, line: 25, size: 32, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3118 = !{!3119}
!3119 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3117, line: 26, baseType: !3120, size: 32)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3117, line: 26, size: 32, elements: !3121)
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3117, line: 30, baseType: !3123, size: 32)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3120, file: !3117, line: 30, size: 32, elements: !3124)
!3124 = !{!3125, !3126}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3123, file: !3117, line: 31, baseType: !238)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3123, file: !3117, line: 32, baseType: !186, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !387, file: !384, line: 102, baseType: !2710, size: 64, offset: 768)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !387, file: !384, line: 103, baseType: !599, size: 64, offset: 832)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !387, file: !384, line: 104, baseType: !328, size: 64, offset: 896)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !387, file: !384, line: 105, baseType: !181, size: 64, offset: 960)
!3131 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !384, line: 107, baseType: !3132, size: 128, offset: 1024)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !384, line: 107, size: 128, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3132, file: !384, line: 108, baseType: !225, size: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3132, file: !384, line: 109, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !387, file: !384, line: 111, baseType: !225, size: 128, offset: 1152)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !387, file: !384, line: 112, baseType: !225, size: 128, offset: 1280)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !387, file: !384, line: 120, baseType: !3140, size: 128, offset: 1408)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !384, line: 116, size: 128, elements: !3141)
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3140, file: !384, line: 117, baseType: !639, size: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3140, file: !384, line: 118, baseType: !401, size: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3140, file: !384, line: 119, baseType: !369, size: 128, align: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !357, file: !51, line: 922, baseType: !429, size: 64, offset: 256)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !357, file: !51, line: 923, baseType: !2859, size: 64, offset: 320)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !357, file: !51, line: 929, baseType: !238, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !357, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !357, file: !51, line: 931, baseType: !771, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !357, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !357, file: !51, line: 933, baseType: !2706, size: 32, offset: 544)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !357, file: !51, line: 934, baseType: !1172, size: 192, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !357, file: !51, line: 935, baseType: !531, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !357, file: !51, line: 936, baseType: !3155, size: 192, offset: 832)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3155, file: !51, line: 886, baseType: !2958)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3155, file: !51, line: 887, baseType: !1470, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3155, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3155, file: !51, line: 889, baseType: !435, size: 32, offset: 96)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3155, file: !51, line: 889, baseType: !435, size: 32, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3155, file: !51, line: 890, baseType: !186, size: 32, offset: 160)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !357, file: !51, line: 937, baseType: !1546, size: 64, offset: 1024)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !357, file: !51, line: 938, baseType: !3165, size: 256, offset: 1088)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3172}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3165, file: !51, line: 897, baseType: !328, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3165, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3165, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3165, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3165, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3165, file: !51, line: 904, baseType: !531, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !357, file: !51, line: 940, baseType: !421, size: 64, offset: 1344)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !357, file: !51, line: 945, baseType: !181, size: 64, offset: 1408)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !357, file: !51, line: 949, baseType: !225, size: 128, offset: 1472)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !357, file: !51, line: 950, baseType: !225, size: 128, offset: 1600)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !357, file: !51, line: 952, baseType: !734, size: 64, offset: 1728)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !357, file: !51, line: 953, baseType: !908, size: 32, offset: 1792)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !357, file: !51, line: 954, baseType: !908, size: 32, offset: 1824)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !347, file: !304, line: 174, baseType: !353, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !347, file: !304, line: 176, baseType: !3182, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!186, !356, !231, !346, !980}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !335, file: !304, line: 90, baseType: !330, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !335, file: !304, line: 91, baseType: !3187, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !294, file: !219, line: 143, baseType: !3189, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!3192, !231}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3195)
!3195 = !{!3196, !3197, !3201, !3205, !3211, !3215}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3194, file: !68, line: 40, baseType: !67, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3194, file: !68, line: 41, baseType: !3198, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!490}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3194, file: !68, line: 42, baseType: !3202, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!181}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3194, file: !68, line: 43, baseType: !3206, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!2123, !3209}
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3194, file: !68, line: 44, baseType: !3212, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!2123}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3194, file: !68, line: 45, baseType: !468, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !294, file: !219, line: 144, baseType: !3217, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!2123, !231}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !294, file: !219, line: 145, baseType: !3221, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{null, !231, !3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !218, file: !219, line: 70, baseType: !3227, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !619, line: 123, size: 1024, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3358, !3359, !3360, !3361, !3362}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3228, file: !619, line: 124, baseType: !747, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3228, file: !619, line: 125, baseType: !747, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3228, file: !619, line: 135, baseType: !3227, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3228, file: !619, line: 136, baseType: !222, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3228, file: !619, line: 138, baseType: !760, size: 192, align: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3228, file: !619, line: 140, baseType: !2123, size: 64, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3228, file: !619, line: 141, baseType: !7, size: 32, offset: 448)
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !3228, file: !619, line: 142, baseType: !3238, size: 256, offset: 512)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3228, file: !619, line: 142, size: 256, elements: !3239)
!3239 = !{!3240, !3286, !3290}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3238, file: !619, line: 143, baseType: !3241, size: 192)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !619, line: 91, size: 192, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3241, file: !619, line: 92, baseType: !328, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3241, file: !619, line: 94, baseType: !756, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3241, file: !619, line: 100, baseType: !3246, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !619, line: 180, size: 704, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3258, !3259, !3260, !3284, !3285}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3247, file: !619, line: 182, baseType: !3227, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3247, file: !619, line: 183, baseType: !7, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3247, file: !619, line: 186, baseType: !3252, size: 192, offset: 128)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3253, line: 19, size: 192, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3254 = !{!3255, !3256, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3252, file: !3253, line: 20, baseType: !739, size: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3252, file: !3253, line: 21, baseType: !7, size: 32, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3252, file: !3253, line: 22, baseType: !7, size: 32, offset: 160)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3247, file: !619, line: 187, baseType: !193, size: 32, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3247, file: !619, line: 188, baseType: !193, size: 32, offset: 352)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3247, file: !619, line: 189, baseType: !3261, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !619, line: 168, size: 320, elements: !3263)
!3263 = !{!3264, !3268, !3272, !3276, !3280}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3262, file: !619, line: 169, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!186, !711, !3246}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3262, file: !619, line: 171, baseType: !3269, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!186, !3227, !222, !320}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3262, file: !619, line: 173, baseType: !3273, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!186, !3227}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3262, file: !619, line: 174, baseType: !3277, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!186, !3227, !3227, !222}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3262, file: !619, line: 176, baseType: !3281, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!186, !711, !3227, !3246}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3247, file: !619, line: 192, baseType: !225, size: 128, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3247, file: !619, line: 194, baseType: !1480, size: 128, offset: 576)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3238, file: !619, line: 144, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !619, line: 103, size: 64, elements: !3288)
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3287, file: !619, line: 104, baseType: !3227, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3238, file: !619, line: 145, baseType: !3291, size: 256)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !619, line: 107, size: 256, elements: !3292)
!3292 = !{!3293, !3353, !3356, !3357}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3291, file: !619, line: 108, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3296)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !619, line: 217, size: 768, elements: !3297)
!3297 = !{!3298, !3318, !3322, !3326, !3330, !3334, !3338, !3342, !3343, !3344, !3345, !3349}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3296, file: !619, line: 222, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!186, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !619, line: 197, size: 1088, elements: !3304)
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3303, file: !619, line: 199, baseType: !3227, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3303, file: !619, line: 200, baseType: !356, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3303, file: !619, line: 201, baseType: !711, size: 64, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3303, file: !619, line: 202, baseType: !181, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3303, file: !619, line: 205, baseType: !1172, size: 192, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3303, file: !619, line: 206, baseType: !1172, size: 192, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3303, file: !619, line: 207, baseType: !186, size: 32, offset: 640)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3303, file: !619, line: 208, baseType: !225, size: 128, offset: 704)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3303, file: !619, line: 209, baseType: !279, size: 64, offset: 832)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3303, file: !619, line: 211, baseType: !325, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3303, file: !619, line: 212, baseType: !490, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3303, file: !619, line: 213, baseType: !490, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3303, file: !619, line: 214, baseType: !1008, size: 64, offset: 1024)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3296, file: !619, line: 223, baseType: !3319, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3302}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3296, file: !619, line: 236, baseType: !3323, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!186, !711, !181}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3296, file: !619, line: 238, baseType: !3327, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!181, !711, !2872}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3296, file: !619, line: 239, baseType: !3331, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!181, !711, !181, !2872}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3296, file: !619, line: 240, baseType: !3335, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !711, !181}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3296, file: !619, line: 242, baseType: !3339, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!310, !3302, !279, !325, !531}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3296, file: !619, line: 252, baseType: !325, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3296, file: !619, line: 259, baseType: !490, size: 8, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3296, file: !619, line: 260, baseType: !3339, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3296, file: !619, line: 263, baseType: !3346, size: 64, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!2901, !3302, !2902}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3296, file: !619, line: 266, baseType: !3350, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!186, !3302, !980}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3291, file: !619, line: 109, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !619, line: 31, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3291, file: !619, line: 110, baseType: !531, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3291, file: !619, line: 111, baseType: !3227, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3228, file: !619, line: 148, baseType: !181, size: 64, offset: 768)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3228, file: !619, line: 154, baseType: !421, size: 64, offset: 832)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3228, file: !619, line: 156, baseType: !176, size: 16, offset: 896)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3228, file: !619, line: 157, baseType: !320, size: 16, offset: 912)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3228, file: !619, line: 158, baseType: !3363, size: 64, offset: 960)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !619, line: 32, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !218, file: !219, line: 71, baseType: !3366, size: 32, offset: 448)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3367, line: 19, size: 32, elements: !3368)
!3367 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3366, file: !3367, line: 20, baseType: !1229, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !218, file: !219, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !218, file: !219, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !218, file: !219, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !218, file: !219, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !218, file: !219, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !80, line: 463, baseType: !214, size: 64, offset: 512)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !215, file: !80, line: 465, baseType: !3377, size: 64, offset: 576)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !215, file: !80, line: 467, baseType: !222, size: 64, offset: 640)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !80, line: 468, baseType: !3381, size: 64, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3391, !3396, !3400}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3383, file: !80, line: 88, baseType: !222, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3383, file: !80, line: 89, baseType: !332, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3383, file: !80, line: 90, baseType: !3388, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!186, !214, !274}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3383, file: !80, line: 91, baseType: !3392, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!279, !214, !3395, !3224, !3225}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3383, file: !80, line: 93, baseType: !3397, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !214}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3383, file: !80, line: 95, baseType: !3401, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3404)
!3404 = !{!3405, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3403, file: !87, line: 279, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!186, !214}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3403, file: !87, line: 280, baseType: !3397, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3403, file: !87, line: 281, baseType: !3406, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3403, file: !87, line: 282, baseType: !3406, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3403, file: !87, line: 283, baseType: !3406, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3403, file: !87, line: 284, baseType: !3406, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3403, file: !87, line: 285, baseType: !3406, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3403, file: !87, line: 286, baseType: !3406, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3403, file: !87, line: 287, baseType: !3406, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3403, file: !87, line: 288, baseType: !3406, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3403, file: !87, line: 289, baseType: !3406, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3403, file: !87, line: 290, baseType: !3406, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3403, file: !87, line: 291, baseType: !3406, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3403, file: !87, line: 292, baseType: !3406, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3403, file: !87, line: 293, baseType: !3406, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3403, file: !87, line: 294, baseType: !3406, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3403, file: !87, line: 295, baseType: !3406, size: 64, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3403, file: !87, line: 296, baseType: !3406, size: 64, offset: 1088)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3403, file: !87, line: 297, baseType: !3406, size: 64, offset: 1152)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3403, file: !87, line: 298, baseType: !3406, size: 64, offset: 1216)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3403, file: !87, line: 299, baseType: !3406, size: 64, offset: 1280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3403, file: !87, line: 300, baseType: !3406, size: 64, offset: 1344)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3403, file: !87, line: 301, baseType: !3406, size: 64, offset: 1408)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !215, file: !80, line: 470, baseType: !3432, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3434, line: 82, size: 1408, elements: !3435)
!3434 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3517, !3520, !3521}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3433, file: !3434, line: 83, baseType: !222, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3433, file: !3434, line: 84, baseType: !222, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3433, file: !3434, line: 85, baseType: !214, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3433, file: !3434, line: 86, baseType: !332, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3433, file: !3434, line: 87, baseType: !332, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3433, file: !3434, line: 88, baseType: !332, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3433, file: !3434, line: 90, baseType: !3443, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!186, !214, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3468, !3481, !3482, !3483, !3484, !3485, !3493, !3494, !3495, !3496, !3497, !3498}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3447, file: !74, line: 96, baseType: !222, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3447, file: !74, line: 97, baseType: !3432, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3447, file: !74, line: 99, baseType: !171, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3447, file: !74, line: 100, baseType: !222, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3447, file: !74, line: 102, baseType: !490, size: 8, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3447, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3447, file: !74, line: 105, baseType: !3456, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3459, line: 262, size: 1600, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3460 = !{!3461, !3462, !3463, !3467}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3458, file: !3459, line: 263, baseType: !2696, size: 256)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3458, file: !3459, line: 264, baseType: !2696, size: 256, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3458, file: !3459, line: 265, baseType: !3464, size: 1024, offset: 512)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, elements: !3465)
!3465 = !{!3466}
!3466 = !DISubrange(count: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3458, file: !3459, line: 266, baseType: !2123, size: 64, offset: 1536)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3447, file: !74, line: 106, baseType: !3469, size: 64, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3459, line: 210, size: 256, elements: !3472)
!3472 = !{!3473, !3477, !3479, !3480}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3471, file: !3459, line: 211, baseType: !3474, size: 72)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 72, elements: !3475)
!3475 = !{!3476}
!3476 = !DISubrange(count: 9)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3471, file: !3459, line: 212, baseType: !3478, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3459, line: 14, baseType: !328)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3471, file: !3459, line: 213, baseType: !195, size: 32, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3471, file: !3459, line: 214, baseType: !195, size: 32, offset: 224)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3447, file: !74, line: 108, baseType: !3406, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3447, file: !74, line: 109, baseType: !3397, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3447, file: !74, line: 110, baseType: !3406, size: 64, offset: 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3447, file: !74, line: 111, baseType: !3397, size: 64, offset: 640)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3447, file: !74, line: 112, baseType: !3486, size: 64, offset: 704)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!186, !214, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3490)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3491)
!3491 = !{!3492}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3490, file: !87, line: 51, baseType: !186, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3447, file: !74, line: 113, baseType: !3406, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3447, file: !74, line: 114, baseType: !332, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3447, file: !74, line: 115, baseType: !332, size: 64, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3447, file: !74, line: 117, baseType: !3401, size: 64, offset: 960)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3447, file: !74, line: 118, baseType: !3397, size: 64, offset: 1024)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3447, file: !74, line: 120, baseType: !3499, size: 64, offset: 1088)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3433, file: !3434, line: 91, baseType: !3388, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3433, file: !3434, line: 92, baseType: !3406, size: 64, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3433, file: !3434, line: 93, baseType: !3397, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3433, file: !3434, line: 94, baseType: !3406, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3433, file: !3434, line: 95, baseType: !3397, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3433, file: !3434, line: 97, baseType: !3406, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3433, file: !3434, line: 98, baseType: !3406, size: 64, offset: 832)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3433, file: !3434, line: 100, baseType: !3486, size: 64, offset: 896)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3433, file: !3434, line: 101, baseType: !3406, size: 64, offset: 960)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3433, file: !3434, line: 103, baseType: !3406, size: 64, offset: 1024)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3433, file: !3434, line: 105, baseType: !3406, size: 64, offset: 1088)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3433, file: !3434, line: 107, baseType: !3401, size: 64, offset: 1152)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3433, file: !3434, line: 109, baseType: !3514, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3516)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3434, line: 109, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3433, file: !3434, line: 111, baseType: !3518, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3434, line: 111, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3433, file: !3434, line: 112, baseType: !645, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3433, file: !3434, line: 114, baseType: !490, size: 8, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !215, file: !80, line: 471, baseType: !3446, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !215, file: !80, line: 473, baseType: !181, size: 64, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !215, file: !80, line: 475, baseType: !181, size: 64, offset: 960)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !215, file: !80, line: 480, baseType: !1172, size: 192, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !215, file: !80, line: 484, baseType: !3527, size: 576, offset: 1216)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3527, file: !80, line: 362, baseType: !225, size: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3527, file: !80, line: 363, baseType: !225, size: 128, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3527, file: !80, line: 364, baseType: !225, size: 128, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3527, file: !80, line: 365, baseType: !225, size: 128, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3527, file: !80, line: 366, baseType: !490, size: 8, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3527, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !215, file: !80, line: 485, baseType: !3536, size: 2304, offset: 1792)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3633, !3637}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3536, file: !87, line: 566, baseType: !3489, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3536, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3536, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3536, file: !87, line: 569, baseType: !490, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3536, file: !87, line: 570, baseType: !490, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3536, file: !87, line: 571, baseType: !490, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3536, file: !87, line: 572, baseType: !490, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3536, file: !87, line: 573, baseType: !490, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3536, file: !87, line: 574, baseType: !490, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3536, file: !87, line: 575, baseType: !490, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3536, file: !87, line: 576, baseType: !490, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3536, file: !87, line: 577, baseType: !193, size: 32, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3536, file: !87, line: 578, baseType: !238, offset: 96)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3536, file: !87, line: 580, baseType: !225, size: 128, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3536, file: !87, line: 581, baseType: !1501, size: 192, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3536, file: !87, line: 582, baseType: !3554, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3556, line: 43, size: 1472, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3565, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3555, file: !3556, line: 44, baseType: !222, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3555, file: !3556, line: 45, baseType: !186, size: 32, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3555, file: !3556, line: 46, baseType: !225, size: 128, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3555, file: !3556, line: 47, baseType: !238, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3555, file: !3556, line: 48, baseType: !3563, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3555, file: !3556, line: 49, baseType: !3566, size: 320, offset: 320)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3567, line: 11, size: 320, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3568 = !{!3569, !3570, !3571, !3576}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3566, file: !3567, line: 16, baseType: !639, size: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3566, file: !3567, line: 17, baseType: !328, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3566, file: !3567, line: 18, baseType: !3572, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{null, !3575}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3566, file: !3567, line: 19, baseType: !193, size: 32, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3555, file: !3556, line: 50, baseType: !328, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3555, file: !3556, line: 51, baseType: !1299, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3555, file: !3556, line: 52, baseType: !1299, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3555, file: !3556, line: 53, baseType: !1299, size: 64, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3555, file: !3556, line: 54, baseType: !1299, size: 64, offset: 896)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3555, file: !3556, line: 55, baseType: !1299, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3555, file: !3556, line: 56, baseType: !328, size: 64, offset: 1024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3555, file: !3556, line: 57, baseType: !328, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3555, file: !3556, line: 58, baseType: !328, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3555, file: !3556, line: 59, baseType: !328, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3555, file: !3556, line: 60, baseType: !328, size: 64, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3555, file: !3556, line: 61, baseType: !214, size: 64, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3555, file: !3556, line: 62, baseType: !490, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3555, file: !3556, line: 63, baseType: !490, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3536, file: !87, line: 583, baseType: !490, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3536, file: !87, line: 584, baseType: !490, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3536, file: !87, line: 585, baseType: !490, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3536, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3536, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3536, file: !87, line: 592, baseType: !1291, size: 512, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3536, file: !87, line: 593, baseType: !421, size: 64, offset: 1088)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3536, file: !87, line: 594, baseType: !1953, size: 256, offset: 1152)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3536, file: !87, line: 595, baseType: !1480, size: 128, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3536, file: !87, line: 596, baseType: !3563, size: 64, offset: 1536)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3536, file: !87, line: 597, baseType: !747, size: 32, offset: 1600)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3536, file: !87, line: 598, baseType: !747, size: 32, offset: 1632)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3536, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3536, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3536, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3536, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3536, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3536, file: !87, line: 604, baseType: !490, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3536, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3536, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3536, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3536, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3536, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3536, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3536, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3536, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3536, file: !87, line: 613, baseType: !186, size: 32, offset: 1792)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3536, file: !87, line: 614, baseType: !186, size: 32, offset: 1824)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3536, file: !87, line: 615, baseType: !421, size: 64, offset: 1856)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3536, file: !87, line: 616, baseType: !421, size: 64, offset: 1920)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3536, file: !87, line: 617, baseType: !421, size: 64, offset: 1984)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3536, file: !87, line: 618, baseType: !421, size: 64, offset: 2048)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3536, file: !87, line: 620, baseType: !3624, size: 64, offset: 2112)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3625, file: !87, line: 537, baseType: !238)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3625, file: !87, line: 538, baseType: !7, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3625, file: !87, line: 540, baseType: !225, size: 128, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3625, file: !87, line: 543, baseType: !3631, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3536, file: !87, line: 621, baseType: !3634, size: 64, offset: 2176)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !214, !1443}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3536, file: !87, line: 622, baseType: !3638, size: 64, offset: 2240)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !215, file: !80, line: 486, baseType: !3641, size: 64, offset: 4096)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3650, !3651, !3652}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3642, file: !87, line: 643, baseType: !3403, size: 1472)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3642, file: !87, line: 644, baseType: !3406, size: 64, offset: 1472)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3642, file: !87, line: 645, baseType: !3647, size: 64, offset: 1536)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !214, !490}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3642, file: !87, line: 646, baseType: !3406, size: 64, offset: 1600)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3642, file: !87, line: 647, baseType: !3397, size: 64, offset: 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3642, file: !87, line: 648, baseType: !3397, size: 64, offset: 1728)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !215, file: !80, line: 493, baseType: !3654, size: 64, offset: 4160)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !215, file: !80, line: 499, baseType: !225, size: 128, offset: 4224)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !215, file: !80, line: 502, baseType: !3658, size: 64, offset: 4352)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !215, file: !80, line: 504, baseType: !3662, size: 64, offset: 4416)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !215, file: !80, line: 505, baseType: !421, size: 64, offset: 4480)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !215, file: !80, line: 510, baseType: !421, size: 64, offset: 4544)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !215, file: !80, line: 511, baseType: !3666, size: 64, offset: 4608)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3668)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !215, file: !80, line: 513, baseType: !3670, size: 64, offset: 4672)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3672)
!3672 = !{!3673, !3674}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3671, file: !80, line: 293, baseType: !7, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3671, file: !80, line: 294, baseType: !328, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !215, file: !80, line: 515, baseType: !225, size: 128, offset: 4736)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !215, file: !80, line: 526, baseType: !3677, offset: 4864)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3678, line: 5, elements: !252)
!3678 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !215, file: !80, line: 528, baseType: !3680, size: 64, offset: 4864)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3682, line: 14, flags: DIFlagFwdDecl)
!3682 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !215, file: !80, line: 529, baseType: !3684, size: 64, offset: 4928)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3686, line: 17, size: 192, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3687 = !{!3688, !3689, !3772}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3685, file: !3686, line: 18, baseType: !3684, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3685, file: !3686, line: 19, baseType: !3690, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3686, line: 110, size: 1152, elements: !3693)
!3693 = !{!3694, !3698, !3702, !3708, !3714, !3718, !3722, !3727, !3731, !3732, !3736, !3740, !3744, !3755, !3756, !3757, !3758, !3768}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3692, file: !3686, line: 111, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!3684, !3684}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3692, file: !3686, line: 112, baseType: !3699, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{null, !3684}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3692, file: !3686, line: 113, baseType: !3703, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!490, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3692, file: !3686, line: 114, baseType: !3709, size: 64, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!2123, !3706, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3692, file: !3686, line: 116, baseType: !3715, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!490, !3706, !222}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3692, file: !3686, line: 118, baseType: !3719, size: 64, offset: 320)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!186, !3706, !222, !7, !181, !325}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3692, file: !3686, line: 123, baseType: !3723, size: 64, offset: 384)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!186, !3706, !222, !3726, !325}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3692, file: !3686, line: 126, baseType: !3728, size: 64, offset: 448)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!222, !3706}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3692, file: !3686, line: 127, baseType: !3728, size: 64, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3692, file: !3686, line: 128, baseType: !3733, size: 64, offset: 576)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3684, !3706}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3692, file: !3686, line: 130, baseType: !3737, size: 64, offset: 640)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3684, !3706, !3684}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3692, file: !3686, line: 133, baseType: !3741, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3684, !3706, !222}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3692, file: !3686, line: 135, baseType: !3745, size: 64, offset: 768)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!186, !3706, !222, !222, !7, !7, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3686, line: 43, size: 640, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3749, file: !3686, line: 44, baseType: !3684, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3749, file: !3686, line: 45, baseType: !7, size: 32, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3749, file: !3686, line: 46, baseType: !3754, size: 512, offset: 128)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 512, elements: !1329)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3692, file: !3686, line: 140, baseType: !3737, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3692, file: !3686, line: 143, baseType: !3733, size: 64, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3692, file: !3686, line: 145, baseType: !3695, size: 64, offset: 960)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3692, file: !3686, line: 146, baseType: !3759, size: 64, offset: 1024)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!186, !3706, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3686, line: 29, size: 128, elements: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3763, file: !3686, line: 30, baseType: !7, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3763, file: !3686, line: 31, baseType: !7, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3763, file: !3686, line: 32, baseType: !3706, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3692, file: !3686, line: 148, baseType: !3769, size: 64, offset: 1088)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!186, !3706, !214}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3685, file: !3686, line: 20, baseType: !214, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !215, file: !80, line: 534, baseType: !513, size: 32, offset: 4992)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !215, file: !80, line: 535, baseType: !193, size: 32, offset: 5024)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !215, file: !80, line: 537, baseType: !238, offset: 5056)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !215, file: !80, line: 538, baseType: !225, size: 128, offset: 5056)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !215, file: !80, line: 540, baseType: !3778, size: 64, offset: 5184)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3780, line: 54, size: 960, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3792, !3796, !3797, !3798, !3799, !3803, !3807, !3808}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3779, file: !3780, line: 55, baseType: !222, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3779, file: !3780, line: 56, baseType: !171, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3779, file: !3780, line: 58, baseType: !332, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3779, file: !3780, line: 59, baseType: !332, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3779, file: !3780, line: 60, baseType: !231, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3779, file: !3780, line: 62, baseType: !3388, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3779, file: !3780, line: 63, baseType: !3789, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!279, !214, !3395}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3779, file: !3780, line: 65, baseType: !3793, size: 64, offset: 448)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3778}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3779, file: !3780, line: 66, baseType: !3397, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3779, file: !3780, line: 68, baseType: !3406, size: 64, offset: 576)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3779, file: !3780, line: 70, baseType: !3192, size: 64, offset: 640)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3779, file: !3780, line: 71, baseType: !3800, size: 64, offset: 704)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!2123, !214}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3779, file: !3780, line: 73, baseType: !3804, size: 64, offset: 768)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !214, !3224, !3225}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3779, file: !3780, line: 75, baseType: !3401, size: 64, offset: 832)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3779, file: !3780, line: 77, baseType: !3518, size: 64, offset: 896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !215, file: !80, line: 541, baseType: !332, size: 64, offset: 5248)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !215, file: !80, line: 543, baseType: !3397, size: 64, offset: 5312)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !215, file: !80, line: 544, baseType: !3812, size: 64, offset: 5376)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !215, file: !80, line: 545, baseType: !3815, size: 64, offset: 5440)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !215, file: !80, line: 547, baseType: !490, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !215, file: !80, line: 548, baseType: !490, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !215, file: !80, line: 549, baseType: !490, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !215, file: !80, line: 550, baseType: !490, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !211, file: !6, line: 426, baseType: !214, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !211, file: !6, line: 427, baseType: !186, size: 32, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !211, file: !6, line: 428, baseType: !222, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !211, file: !6, line: 429, baseType: !1351, size: 8, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !211, file: !6, line: 433, baseType: !1351, size: 8, offset: 264)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !211, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !211, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !211, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !211, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !211, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !211, file: !6, line: 444, baseType: !186, size: 32, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !211, file: !6, line: 446, baseType: !1172, size: 192, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !211, file: !6, line: 448, baseType: !3834, size: 128, offset: 576)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3835)
!3835 = !{!3836}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3834, file: !6, line: 418, baseType: !3837, size: 128)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 128, elements: !206)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !211, file: !6, line: 449, baseType: !182, size: 64, offset: 704)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !211, file: !6, line: 450, baseType: !210, size: 64, offset: 768)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !211, file: !6, line: 452, baseType: !186, size: 32, offset: 832)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !211, file: !6, line: 459, baseType: !186, size: 32, offset: 864)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !211, file: !6, line: 460, baseType: !186, size: 32, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !211, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !183, file: !6, line: 647, baseType: !3845, size: 640, offset: 640)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3846)
!3846 = !{!3847, !3858, !3866, !3874, !3875, !3876, !3879, !3881, !3882, !3883}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3845, file: !6, line: 68, baseType: !3848, size: 72)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !101, line: 407, size: 72, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3848, file: !101, line: 408, baseType: !1352, size: 8)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3848, file: !101, line: 409, baseType: !1352, size: 8, offset: 8)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3848, file: !101, line: 411, baseType: !1352, size: 8, offset: 16)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3848, file: !101, line: 412, baseType: !1352, size: 8, offset: 24)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3848, file: !101, line: 413, baseType: !177, size: 16, offset: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3848, file: !101, line: 414, baseType: !1352, size: 8, offset: 48)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3848, file: !101, line: 418, baseType: !1352, size: 8, offset: 56)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3848, file: !101, line: 419, baseType: !1352, size: 8, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3845, file: !6, line: 69, baseType: !3859, size: 48, offset: 72)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !101, line: 689, size: 48, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3859, file: !101, line: 690, baseType: !1352, size: 8)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3859, file: !101, line: 691, baseType: !1352, size: 8, offset: 8)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3859, file: !101, line: 693, baseType: !1352, size: 8, offset: 16)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3859, file: !101, line: 694, baseType: !1352, size: 8, offset: 24)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3859, file: !101, line: 695, baseType: !177, size: 16, offset: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3845, file: !6, line: 70, baseType: !3867, size: 64, offset: 120)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !101, line: 677, size: 64, elements: !3868)
!3868 = !{!3869, !3870, !3871, !3872}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3867, file: !101, line: 678, baseType: !1352, size: 8)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3867, file: !101, line: 679, baseType: !1352, size: 8, offset: 8)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3867, file: !101, line: 680, baseType: !177, size: 16, offset: 16)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3867, file: !101, line: 681, baseType: !3873, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !178, line: 31, baseType: !195)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3845, file: !6, line: 71, baseType: !225, size: 128, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3845, file: !6, line: 72, baseType: !181, size: 64, offset: 320)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3845, file: !6, line: 73, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3845, file: !6, line: 75, baseType: !3880, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3845, file: !6, line: 76, baseType: !186, size: 32, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3845, file: !6, line: 77, baseType: !186, size: 32, offset: 544)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3845, file: !6, line: 78, baseType: !186, size: 32, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !183, file: !6, line: 649, baseType: !215, size: 5568, offset: 1280)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !183, file: !6, line: 651, baseType: !3886, size: 144, offset: 6848)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !101, line: 289, size: 144, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3886, file: !101, line: 290, baseType: !1352, size: 8)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3886, file: !101, line: 291, baseType: !1352, size: 8, offset: 8)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3886, file: !101, line: 293, baseType: !177, size: 16, offset: 16)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3886, file: !101, line: 294, baseType: !1352, size: 8, offset: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3886, file: !101, line: 295, baseType: !1352, size: 8, offset: 40)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3886, file: !101, line: 296, baseType: !1352, size: 8, offset: 48)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3886, file: !101, line: 297, baseType: !1352, size: 8, offset: 56)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3886, file: !101, line: 298, baseType: !177, size: 16, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3886, file: !101, line: 299, baseType: !177, size: 16, offset: 80)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3886, file: !101, line: 300, baseType: !177, size: 16, offset: 96)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3886, file: !101, line: 301, baseType: !1352, size: 8, offset: 112)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3886, file: !101, line: 302, baseType: !1352, size: 8, offset: 120)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3886, file: !101, line: 303, baseType: !1352, size: 8, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3886, file: !101, line: 304, baseType: !1352, size: 8, offset: 136)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !183, file: !6, line: 652, baseType: !3903, size: 64, offset: 7040)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3905)
!3905 = !{!3906, !3914, !3922, !3934, !3947, !3956}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3904, file: !6, line: 397, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !101, line: 844, size: 40, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3908, file: !101, line: 845, baseType: !1352, size: 8)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3908, file: !101, line: 846, baseType: !1352, size: 8, offset: 8)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3908, file: !101, line: 848, baseType: !177, size: 16, offset: 16)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3908, file: !101, line: 849, baseType: !1352, size: 8, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3904, file: !6, line: 400, baseType: !3915, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !101, line: 895, size: 56, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3921}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3916, file: !101, line: 896, baseType: !1352, size: 8)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3916, file: !101, line: 897, baseType: !1352, size: 8, offset: 8)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3916, file: !101, line: 898, baseType: !1352, size: 8, offset: 16)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3916, file: !101, line: 899, baseType: !3873, size: 32, offset: 24)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3904, file: !6, line: 401, baseType: !3923, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !101, line: 917, size: 80, elements: !3925)
!3925 = !{!3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3924, file: !101, line: 918, baseType: !1352, size: 8)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3924, file: !101, line: 919, baseType: !1352, size: 8, offset: 8)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3924, file: !101, line: 920, baseType: !1352, size: 8, offset: 16)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3924, file: !101, line: 921, baseType: !1352, size: 8, offset: 24)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3924, file: !101, line: 923, baseType: !177, size: 16, offset: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3924, file: !101, line: 928, baseType: !1352, size: 8, offset: 48)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3924, file: !101, line: 929, baseType: !1352, size: 8, offset: 56)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3924, file: !101, line: 930, baseType: !177, size: 16, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3904, file: !6, line: 402, baseType: !3935, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !101, line: 955, size: 128, elements: !3937)
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3936, file: !101, line: 956, baseType: !1352, size: 8)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3936, file: !101, line: 957, baseType: !1352, size: 8, offset: 8)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3936, file: !101, line: 958, baseType: !1352, size: 8, offset: 16)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3936, file: !101, line: 959, baseType: !1352, size: 8, offset: 24)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3936, file: !101, line: 960, baseType: !3873, size: 32, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3936, file: !101, line: 963, baseType: !177, size: 16, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3936, file: !101, line: 967, baseType: !177, size: 16, offset: 80)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3936, file: !101, line: 968, baseType: !3946, size: 32, offset: 96)
!3946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3873, size: 32, elements: !1370)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3904, file: !6, line: 403, baseType: !3948, size: 64, offset: 256)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !101, line: 940, size: 160, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3949, file: !101, line: 941, baseType: !1352, size: 8)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3949, file: !101, line: 942, baseType: !1352, size: 8, offset: 8)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3949, file: !101, line: 943, baseType: !1352, size: 8, offset: 16)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3949, file: !101, line: 944, baseType: !1352, size: 8, offset: 24)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3949, file: !101, line: 945, baseType: !2703, size: 128, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3904, file: !6, line: 404, baseType: !3957, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !101, line: 1080, size: 24, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3958, file: !101, line: 1081, baseType: !1352, size: 8)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3958, file: !101, line: 1082, baseType: !1352, size: 8, offset: 8)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3958, file: !101, line: 1083, baseType: !1352, size: 8, offset: 16)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !183, file: !6, line: 653, baseType: !3964, size: 64, offset: 7104)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3966)
!3966 = !{!3967, !3978, !3979, !3992, !4034, !4043, !4044}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3965, file: !6, line: 375, baseType: !3968, size: 72)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !101, line: 349, size: 72, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3968, file: !101, line: 350, baseType: !1352, size: 8)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3968, file: !101, line: 351, baseType: !1352, size: 8, offset: 8)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3968, file: !101, line: 353, baseType: !177, size: 16, offset: 16)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3968, file: !101, line: 354, baseType: !1352, size: 8, offset: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3968, file: !101, line: 355, baseType: !1352, size: 8, offset: 40)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3968, file: !101, line: 356, baseType: !1352, size: 8, offset: 48)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3968, file: !101, line: 357, baseType: !1352, size: 8, offset: 56)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3968, file: !101, line: 358, baseType: !1352, size: 8, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3965, file: !6, line: 377, baseType: !279, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3965, file: !6, line: 381, baseType: !3980, size: 1024, offset: 192)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3981, size: 1024, elements: !190)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !101, line: 783, size: 64, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3982, file: !101, line: 784, baseType: !1352, size: 8)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3982, file: !101, line: 785, baseType: !1352, size: 8, offset: 8)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3982, file: !101, line: 787, baseType: !1352, size: 8, offset: 16)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3982, file: !101, line: 788, baseType: !1352, size: 8, offset: 24)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3982, file: !101, line: 789, baseType: !1352, size: 8, offset: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3982, file: !101, line: 790, baseType: !1352, size: 8, offset: 40)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3982, file: !101, line: 791, baseType: !1352, size: 8, offset: 48)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3982, file: !101, line: 792, baseType: !1352, size: 8, offset: 56)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3965, file: !6, line: 385, baseType: !3993, size: 2048, offset: 1216)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3994, size: 2048, elements: !2226)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3996)
!3996 = !{!3997, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3995, file: !6, line: 235, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !4000)
!4000 = !{!4001, !4013, !4014, !4015, !4017}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3999, file: !6, line: 83, baseType: !4002, size: 72)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !101, line: 389, size: 72, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4002, file: !101, line: 390, baseType: !1352, size: 8)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4002, file: !101, line: 391, baseType: !1352, size: 8, offset: 8)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4002, file: !101, line: 393, baseType: !1352, size: 8, offset: 16)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4002, file: !101, line: 394, baseType: !1352, size: 8, offset: 24)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4002, file: !101, line: 395, baseType: !1352, size: 8, offset: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4002, file: !101, line: 396, baseType: !1352, size: 8, offset: 40)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4002, file: !101, line: 397, baseType: !1352, size: 8, offset: 48)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4002, file: !101, line: 398, baseType: !1352, size: 8, offset: 56)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4002, file: !101, line: 399, baseType: !1352, size: 8, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3999, file: !6, line: 85, baseType: !186, size: 32, offset: 96)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3999, file: !6, line: 86, baseType: !3880, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3999, file: !6, line: 91, baseType: !4016, size: 64, offset: 192)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3999, file: !6, line: 93, baseType: !279, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3995, file: !6, line: 237, baseType: !3998, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3995, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3995, file: !6, line: 243, baseType: !3981, size: 64, offset: 192)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3995, file: !6, line: 245, baseType: !186, size: 32, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3995, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3995, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3995, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3995, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3995, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3995, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3995, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3995, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3995, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3995, file: !6, line: 257, baseType: !215, size: 5568, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3995, file: !6, line: 258, baseType: !214, size: 64, offset: 5952)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3995, file: !6, line: 259, baseType: !1953, size: 256, offset: 6016)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3965, file: !6, line: 389, baseType: !4035, size: 2048, offset: 3264)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4036, size: 2048, elements: !2226)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4038)
!4038 = !{!4039, !4040, !4041}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4037, file: !6, line: 323, baseType: !7, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4037, file: !6, line: 324, baseType: !3366, size: 32, offset: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4037, file: !6, line: 328, baseType: !4042, offset: 64)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3999, elements: !2327)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3965, file: !6, line: 391, baseType: !3880, size: 64, offset: 5312)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3965, file: !6, line: 392, baseType: !186, size: 32, offset: 5376)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !183, file: !6, line: 655, baseType: !3964, size: 64, offset: 7168)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !183, file: !6, line: 656, baseType: !4047, size: 1024, offset: 7232)
!4047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4016, size: 1024, elements: !190)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !183, file: !6, line: 657, baseType: !4047, size: 1024, offset: 8256)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !183, file: !6, line: 659, baseType: !4050, size: 64, offset: 9280)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !183, file: !6, line: 661, baseType: !176, size: 16, offset: 9344)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !183, file: !6, line: 662, baseType: !1351, size: 8, offset: 9360)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !183, file: !6, line: 663, baseType: !1351, size: 8, offset: 9368)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !183, file: !6, line: 664, baseType: !1351, size: 8, offset: 9376)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !183, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !183, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !183, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !183, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !183, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !183, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !183, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !183, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !183, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !183, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !183, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !183, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !183, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !183, file: !6, line: 679, baseType: !186, size: 32, offset: 9408)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !183, file: !6, line: 682, baseType: !279, size: 64, offset: 9472)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !183, file: !6, line: 683, baseType: !279, size: 64, offset: 9536)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !183, file: !6, line: 684, baseType: !279, size: 64, offset: 9600)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !183, file: !6, line: 686, baseType: !225, size: 128, offset: 9664)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !183, file: !6, line: 688, baseType: !186, size: 32, offset: 9792)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !183, file: !6, line: 690, baseType: !193, size: 32, offset: 9824)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !183, file: !6, line: 691, baseType: !747, size: 32, offset: 9856)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !183, file: !6, line: 693, baseType: !328, size: 64, offset: 9920)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !183, file: !6, line: 696, baseType: !328, size: 64, offset: 9984)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !183, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !183, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !183, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !183, file: !6, line: 702, baseType: !4082, size: 64, offset: 10112)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !183, file: !6, line: 703, baseType: !186, size: 32, offset: 10176)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !183, file: !6, line: 704, baseType: !121, size: 32, offset: 10208)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !183, file: !6, line: 705, baseType: !4087, size: 64, offset: 10240)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4087, file: !6, line: 506, baseType: !7, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4087, file: !6, line: 512, baseType: !186, size: 32, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !183, file: !6, line: 706, baseType: !4092, size: 128, offset: 10304)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4092, file: !6, line: 529, baseType: !7, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4092, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4092, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4092, file: !6, line: 551, baseType: !186, size: 32, offset: 96)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !183, file: !6, line: 707, baseType: !4092, size: 128, offset: 10432)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !183, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !183, file: !6, line: 710, baseType: !859, size: 16, offset: 10592)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !183, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4103 = !{!0, !4104, !4109, !4114, !4119, !4124, !4129, !4190}
!4104 = !DIGlobalVariableExpression(var: !4105, expr: !DIExpression())
!4105 = distinct !DIGlobalVariable(name: "__exitcall_xbox_remote_driver_exit", scope: !2, file: !3, line: 304, type: !4106, isLocal: true, isDefinition: true)
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4107, line: 117, baseType: !4108)
!4107 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!4109 = !DIGlobalVariableExpression(var: !4110, expr: !DIExpression())
!4110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author238", scope: !2, file: !3, line: 306, type: !4111, isLocal: true, isDefinition: true, align: 8)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 504, elements: !4112)
!4112 = !{!4113}
!4113 = !DISubrange(count: 63)
!4114 = !DIGlobalVariableExpression(var: !4115, expr: !DIExpression())
!4115 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description239", scope: !2, file: !3, line: 307, type: !4116, isLocal: true, isDefinition: true, align: 8)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 416, elements: !4117)
!4117 = !{!4118}
!4118 = !DISubrange(count: 52)
!4119 = !DIGlobalVariableExpression(var: !4120, expr: !DIExpression())
!4120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file240", scope: !2, file: !3, line: 308, type: !4121, isLocal: true, isDefinition: true, align: 8)
!4121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 368, elements: !4122)
!4122 = !{!4123}
!4123 = !DISubrange(count: 46)
!4124 = !DIGlobalVariableExpression(var: !4125, expr: !DIExpression())
!4125 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license241", scope: !2, file: !3, line: 308, type: !4126, isLocal: true, isDefinition: true, align: 8)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 192, elements: !4127)
!4127 = !{!4128}
!4128 = !DISubrange(count: 24)
!4129 = !DIGlobalVariableExpression(var: !4130, expr: !DIExpression())
!4130 = distinct !DIGlobalVariable(name: "xbox_remote_driver", scope: !2, file: !3, line: 297, type: !4131, isLocal: true, isDefinition: true)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4132)
!4132 = !{!4133, !4134, !4155, !4159, !4163, !4167, !4171, !4172, !4173, !4174, !4175, !4176, !4181, !4186, !4187, !4188, !4189}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4131, file: !6, line: 1185, baseType: !222, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4131, file: !6, line: 1187, baseType: !4135, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!186, !3994, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4140)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3459, line: 121, size: 256, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4140, file: !3459, line: 123, baseType: !174, size: 16)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4140, file: !3459, line: 126, baseType: !174, size: 16, offset: 16)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4140, file: !3459, line: 127, baseType: !174, size: 16, offset: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4140, file: !3459, line: 128, baseType: !174, size: 16, offset: 48)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4140, file: !3459, line: 129, baseType: !174, size: 16, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4140, file: !3459, line: 132, baseType: !1352, size: 8, offset: 80)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4140, file: !3459, line: 133, baseType: !1352, size: 8, offset: 88)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4140, file: !3459, line: 134, baseType: !1352, size: 8, offset: 96)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4140, file: !3459, line: 137, baseType: !1352, size: 8, offset: 104)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4140, file: !3459, line: 138, baseType: !1352, size: 8, offset: 112)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4140, file: !3459, line: 139, baseType: !1352, size: 8, offset: 120)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4140, file: !3459, line: 142, baseType: !1352, size: 8, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4140, file: !3459, line: 145, baseType: !3478, size: 64, align: 64, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4131, file: !6, line: 1190, baseType: !4156, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !3994}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4131, file: !6, line: 1192, baseType: !4160, size: 64, offset: 192)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!186, !3994, !7, !181}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4131, file: !6, line: 1195, baseType: !4164, size: 64, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!186, !3994, !3489}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4131, file: !6, line: 1196, baseType: !4168, size: 64, offset: 320)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!186, !3994}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4131, file: !6, line: 1197, baseType: !4168, size: 64, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4131, file: !6, line: 1199, baseType: !4168, size: 64, offset: 448)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4131, file: !6, line: 1200, baseType: !4168, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4131, file: !6, line: 1202, baseType: !4138, size: 64, offset: 576)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4131, file: !6, line: 1203, baseType: !332, size: 64, offset: 640)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4131, file: !6, line: 1205, baseType: !4177, size: 128, offset: 704)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4178)
!4178 = !{!4179, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4177, file: !6, line: 1092, baseType: !238)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4177, file: !6, line: 1093, baseType: !225, size: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4131, file: !6, line: 1206, baseType: !4182, size: 1216, offset: 832)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4182, file: !6, line: 1114, baseType: !3447, size: 1152)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4182, file: !6, line: 1115, baseType: !186, size: 32, offset: 1152)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4131, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4131, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4131, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4131, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4190 = !DIGlobalVariableExpression(var: !4191, expr: !DIExpression())
!4191 = distinct !DIGlobalVariable(name: "xbox_remote_table", scope: !2, file: !3, line: 38, type: !4192, isLocal: true, isDefinition: true)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4139, size: 768, elements: !280)
!4193 = !{i32 7, !"Dwarf Version", i32 4}
!4194 = !{i32 2, !"Debug Info Version", i32 3}
!4195 = !{i32 1, !"wchar_size", i32 2}
!4196 = !{i32 1, !"Code Model", i32 2}
!4197 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4198 = distinct !DISubprogram(name: "xbox_remote_driver_init", scope: !3, file: !3, line: 304, type: !4199, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!186}
!4201 = !DILocation(line: 304, column: 1, scope: !4198)
!4202 = distinct !DISubprogram(name: "xbox_remote_driver_exit", scope: !3, file: !3, line: 304, type: !1874, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4203 = !DILocation(line: 304, column: 1, scope: !4202)
!4204 = distinct !DISubprogram(name: "xbox_remote_probe", scope: !3, file: !3, line: 187, type: !4136, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4205 = !DILocalVariable(name: "interface", arg: 1, scope: !4204, file: !3, line: 187, type: !3994)
!4206 = !DILocation(line: 187, column: 52, scope: !4204)
!4207 = !DILocalVariable(name: "id", arg: 2, scope: !4204, file: !3, line: 188, type: !4138)
!4208 = !DILocation(line: 188, column: 37, scope: !4204)
!4209 = !DILocalVariable(name: "udev", scope: !4204, file: !3, line: 190, type: !182)
!4210 = !DILocation(line: 190, column: 21, scope: !4204)
!4211 = !DILocation(line: 190, column: 48, scope: !4204)
!4212 = !DILocation(line: 190, column: 28, scope: !4204)
!4213 = !DILocalVariable(name: "iface_host", scope: !4204, file: !3, line: 191, type: !3998)
!4214 = !DILocation(line: 191, column: 29, scope: !4204)
!4215 = !DILocation(line: 191, column: 42, scope: !4204)
!4216 = !DILocation(line: 191, column: 53, scope: !4204)
!4217 = !DILocalVariable(name: "endpoint_in", scope: !4204, file: !3, line: 192, type: !4218)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!4219 = !DILocation(line: 192, column: 34, scope: !4204)
!4220 = !DILocalVariable(name: "xbox_remote", scope: !4204, file: !3, line: 193, type: !4221)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xbox_remote", file: !3, line: 52, size: 1600, elements: !4223)
!4223 = !{!4224, !4611, !4612, !4613, !4675, !4677, !4681}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4222, file: !3, line: 53, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !158, line: 162, size: 9536, elements: !4227)
!4227 = !{!4228, !4229, !4230, !4234, !4235, !4236, !4244, !4245, !4246, !4262, !4263, !4264, !4267, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4570, !4574, !4578, !4582, !4583, !4584, !4588, !4592, !4596, !4600, !4601, !4606, !4607}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4226, file: !158, line: 163, baseType: !215, size: 5568)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !4226, file: !158, line: 164, baseType: !490, size: 8, offset: 5568)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !4226, file: !158, line: 165, baseType: !4231, size: 320, offset: 5632)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 320, elements: !4232)
!4232 = !{!4233}
!4233 = !DISubrange(count: 5)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4226, file: !158, line: 166, baseType: !222, size: 64, offset: 5952)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !4226, file: !158, line: 167, baseType: !222, size: 64, offset: 6016)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !4226, file: !158, line: 168, baseType: !4237, size: 64, offset: 6080)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4238, line: 59, size: 64, elements: !4239)
!4238 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4239 = !{!4240, !4241, !4242, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4237, file: !4238, line: 60, baseType: !174, size: 16)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4237, file: !4238, line: 61, baseType: !174, size: 16, offset: 16)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4237, file: !4238, line: 62, baseType: !174, size: 16, offset: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4237, file: !4238, line: 63, baseType: !174, size: 16, offset: 48)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4226, file: !158, line: 169, baseType: !222, size: 64, offset: 6144)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !4226, file: !158, line: 170, baseType: !222, size: 64, offset: 6208)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !4226, file: !158, line: 171, baseType: !4247, size: 256, offset: 6272)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !4248, line: 157, size: 256, elements: !4249)
!4248 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!4249 = !{!4250, !4256, !4257, !4258, !4259, !4260, !4261}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4247, file: !4248, line: 158, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !4248, line: 140, size: 128, elements: !4253)
!4253 = !{!4254, !4255}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4252, file: !4248, line: 141, baseType: !421, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4252, file: !4248, line: 142, baseType: !193, size: 32, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4247, file: !4248, line: 159, baseType: !7, size: 32, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4247, file: !4248, line: 160, baseType: !7, size: 32, offset: 96)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4247, file: !4248, line: 161, baseType: !7, size: 32, offset: 128)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !4247, file: !4248, line: 162, baseType: !126, size: 32, offset: 160)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4247, file: !4248, line: 163, baseType: !222, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4247, file: !4248, line: 164, baseType: !238, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4226, file: !158, line: 172, baseType: !1172, size: 192, offset: 6528)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4226, file: !158, line: 173, baseType: !7, size: 32, offset: 6720)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4226, file: !158, line: 174, baseType: !4265, size: 64, offset: 6784)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !158, line: 174, flags: DIFlagFwdDecl)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4226, file: !158, line: 175, baseType: !4268, size: 64, offset: 6848)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4270, line: 131, size: 10432, elements: !4271)
!4270 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4277, !4278, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4305, !4310, !4405, !4408, !4409, !4410, !4412, !4415, !4425, !4426, !4427, !4428, !4429, !4433, !4437, !4441, !4445, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4532, !4533}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4269, file: !4270, line: 132, baseType: !222, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4269, file: !4270, line: 133, baseType: !222, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4269, file: !4270, line: 134, baseType: !222, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4269, file: !4270, line: 135, baseType: !4237, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4269, file: !4270, line: 137, baseType: !1369, size: 64, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4269, file: !4270, line: 139, baseType: !1369, size: 64, offset: 320)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4269, file: !4270, line: 140, baseType: !4279, size: 768, offset: 384)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 768, elements: !2232)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4269, file: !4270, line: 141, baseType: !1369, size: 64, offset: 1152)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4269, file: !4270, line: 142, baseType: !1369, size: 64, offset: 1216)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4269, file: !4270, line: 143, baseType: !1369, size: 64, offset: 1280)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4269, file: !4270, line: 144, baseType: !1369, size: 64, offset: 1344)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4269, file: !4270, line: 145, baseType: !1369, size: 64, offset: 1408)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4269, file: !4270, line: 146, baseType: !3837, size: 128, offset: 1472)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4269, file: !4270, line: 147, baseType: !1369, size: 64, offset: 1600)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4269, file: !4270, line: 149, baseType: !7, size: 32, offset: 1664)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4269, file: !4270, line: 151, baseType: !7, size: 32, offset: 1696)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4269, file: !4270, line: 152, baseType: !7, size: 32, offset: 1728)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4269, file: !4270, line: 153, baseType: !181, size: 64, offset: 1792)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4269, file: !4270, line: 155, baseType: !4292, size: 64, offset: 1856)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!186, !4268, !4295, !2679}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4238, line: 114, size: 320, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4297, file: !4238, line: 116, baseType: !1352, size: 8)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4297, file: !4238, line: 117, baseType: !1352, size: 8, offset: 8)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4297, file: !4238, line: 118, baseType: !174, size: 16, offset: 16)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4297, file: !4238, line: 119, baseType: !195, size: 32, offset: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4297, file: !4238, line: 120, baseType: !4304, size: 256, offset: 64)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 256, elements: !2226)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4269, file: !4270, line: 158, baseType: !4306, size: 64, offset: 1920)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!186, !4268, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4269, file: !4270, line: 161, baseType: !4311, size: 64, offset: 1984)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4270, line: 534, size: 896, elements: !4313)
!4313 = !{!4314, !4381, !4385, !4389, !4393, !4394, !4398, !4399, !4400, !4401, !4402, !4403}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4312, file: !4270, line: 535, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!186, !4268, !4318, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4238, line: 450, size: 384, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4324, !4329, !4334}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4319, file: !4238, line: 451, baseType: !174, size: 16)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4319, file: !4238, line: 452, baseType: !1203, size: 16, offset: 16)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4319, file: !4238, line: 453, baseType: !174, size: 16, offset: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4319, file: !4238, line: 454, baseType: !4325, size: 32, offset: 48)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4238, line: 316, size: 32, elements: !4326)
!4326 = !{!4327, !4328}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4325, file: !4238, line: 317, baseType: !174, size: 16)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4325, file: !4238, line: 318, baseType: !174, size: 16, offset: 16)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4319, file: !4238, line: 455, baseType: !4330, size: 32, offset: 80)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4238, line: 306, size: 32, elements: !4331)
!4331 = !{!4332, !4333}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4330, file: !4238, line: 307, baseType: !174, size: 16)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4330, file: !4238, line: 308, baseType: !174, size: 16, offset: 16)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4319, file: !4238, line: 463, baseType: !4335, size: 256, offset: 128)
!4335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4319, file: !4238, line: 457, size: 256, elements: !4336)
!4336 = !{!4337, !4348, !4354, !4366, !4376}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4335, file: !4238, line: 458, baseType: !4338, size: 80)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4238, line: 345, size: 80, elements: !4339)
!4339 = !{!4340, !4341}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4338, file: !4238, line: 346, baseType: !1203, size: 16)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4338, file: !4238, line: 347, baseType: !4342, size: 64, offset: 16)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4238, line: 333, size: 64, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4342, file: !4238, line: 334, baseType: !174, size: 16)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4342, file: !4238, line: 335, baseType: !174, size: 16, offset: 16)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4342, file: !4238, line: 336, baseType: !174, size: 16, offset: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4342, file: !4238, line: 337, baseType: !174, size: 16, offset: 48)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4335, file: !4238, line: 459, baseType: !4349, size: 96)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4238, line: 356, size: 96, elements: !4350)
!4350 = !{!4351, !4352, !4353}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4349, file: !4238, line: 357, baseType: !1203, size: 16)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4349, file: !4238, line: 358, baseType: !1203, size: 16, offset: 16)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4349, file: !4238, line: 359, baseType: !4342, size: 64, offset: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4335, file: !4238, line: 460, baseType: !4355, size: 256)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4238, line: 401, size: 256, elements: !4356)
!4356 = !{!4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4355, file: !4238, line: 402, baseType: !174, size: 16)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4355, file: !4238, line: 403, baseType: !174, size: 16, offset: 16)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4355, file: !4238, line: 404, baseType: !1203, size: 16, offset: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4355, file: !4238, line: 405, baseType: !1203, size: 16, offset: 48)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4355, file: !4238, line: 406, baseType: !174, size: 16, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4355, file: !4238, line: 408, baseType: !4342, size: 64, offset: 80)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4355, file: !4238, line: 410, baseType: !195, size: 32, offset: 160)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4355, file: !4238, line: 411, baseType: !4365, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4335, file: !4238, line: 461, baseType: !4367, size: 192)
!4367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4368, size: 192, elements: !206)
!4368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4238, line: 372, size: 96, elements: !4369)
!4369 = !{!4370, !4371, !4372, !4373, !4374, !4375}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4368, file: !4238, line: 373, baseType: !174, size: 16)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4368, file: !4238, line: 374, baseType: !174, size: 16, offset: 16)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4368, file: !4238, line: 376, baseType: !1203, size: 16, offset: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4368, file: !4238, line: 377, baseType: !1203, size: 16, offset: 48)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4368, file: !4238, line: 379, baseType: !174, size: 16, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4368, file: !4238, line: 380, baseType: !1203, size: 16, offset: 80)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4335, file: !4238, line: 462, baseType: !4377, size: 32)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4238, line: 422, size: 32, elements: !4378)
!4378 = !{!4379, !4380}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4377, file: !4238, line: 423, baseType: !174, size: 16)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4377, file: !4238, line: 424, baseType: !174, size: 16, offset: 16)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4312, file: !4270, line: 537, baseType: !4382, size: 64, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!186, !4268, !186}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4312, file: !4270, line: 539, baseType: !4386, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!186, !4268, !186, !186}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4312, file: !4270, line: 540, baseType: !4390, size: 64, offset: 192)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{null, !4268, !859}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4312, file: !4270, line: 541, baseType: !4390, size: 64, offset: 256)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4312, file: !4270, line: 543, baseType: !4395, size: 64, offset: 320)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4311}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4312, file: !4270, line: 545, baseType: !181, size: 64, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4312, file: !4270, line: 547, baseType: !3837, size: 128, offset: 448)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4312, file: !4270, line: 549, baseType: !1172, size: 192, offset: 576)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4312, file: !4270, line: 551, baseType: !186, size: 32, offset: 768)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4312, file: !4270, line: 552, baseType: !4318, size: 64, offset: 832)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4312, file: !4270, line: 553, baseType: !4404, offset: 896)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, elements: !2327)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4269, file: !4270, line: 163, baseType: !4406, size: 64, offset: 2048)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4270, line: 24, flags: DIFlagFwdDecl)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4269, file: !4270, line: 165, baseType: !7, size: 32, offset: 2112)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4269, file: !4270, line: 166, baseType: !3566, size: 320, offset: 2176)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4269, file: !4270, line: 168, baseType: !4411, size: 64, offset: 2496)
!4411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 64, elements: !206)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4269, file: !4270, line: 170, baseType: !4413, size: 64, offset: 2560)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4270, line: 170, flags: DIFlagFwdDecl)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4269, file: !4270, line: 172, baseType: !4416, size: 64, offset: 2624)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4238, line: 90, size: 192, elements: !4418)
!4418 = !{!4419, !4420, !4421, !4422, !4423, !4424}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4417, file: !4238, line: 91, baseType: !1444, size: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4417, file: !4238, line: 92, baseType: !1444, size: 32, offset: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4417, file: !4238, line: 93, baseType: !1444, size: 32, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4417, file: !4238, line: 94, baseType: !1444, size: 32, offset: 96)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4417, file: !4238, line: 95, baseType: !1444, size: 32, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4417, file: !4238, line: 96, baseType: !1444, size: 32, offset: 160)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4269, file: !4270, line: 174, baseType: !4279, size: 768, offset: 2688)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4269, file: !4270, line: 175, baseType: !1369, size: 64, offset: 3456)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4269, file: !4270, line: 176, baseType: !1369, size: 64, offset: 3520)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4269, file: !4270, line: 177, baseType: !1369, size: 64, offset: 3584)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4269, file: !4270, line: 179, baseType: !4430, size: 64, offset: 3648)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!186, !4268}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4269, file: !4270, line: 180, baseType: !4434, size: 64, offset: 3712)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !4268}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4269, file: !4270, line: 181, baseType: !4438, size: 64, offset: 3776)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!186, !4268, !356}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4269, file: !4270, line: 182, baseType: !4442, size: 64, offset: 3840)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!186, !4268, !7, !7, !186}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4269, file: !4270, line: 184, baseType: !4446, size: 64, offset: 3904)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4270, line: 337, size: 576, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4519, !4520}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4447, file: !4270, line: 339, baseType: !181, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4447, file: !4270, line: 341, baseType: !186, size: 32, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4447, file: !4270, line: 342, baseType: !222, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4447, file: !4270, line: 344, baseType: !4268, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4447, file: !4270, line: 345, baseType: !4454, size: 64, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4270, line: 302, size: 960, elements: !4456)
!4456 = !{!4457, !4458, !4462, !4473, !4477, !4481, !4508, !4512, !4513, !4514, !4515, !4516, !4517, !4518}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4455, file: !4270, line: 304, baseType: !181, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4455, file: !4270, line: 306, baseType: !4459, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !4446, !7, !7, !186}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4455, file: !4270, line: 307, baseType: !4463, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{null, !4446, !4466, !7}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4468)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4270, line: 32, size: 64, elements: !4469)
!4469 = !{!4470, !4471, !4472}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4468, file: !4270, line: 33, baseType: !174, size: 16)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4468, file: !4270, line: 34, baseType: !174, size: 16, offset: 16)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4468, file: !4270, line: 35, baseType: !1444, size: 32, offset: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4455, file: !4270, line: 309, baseType: !4474, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!490, !4446, !7, !7, !186}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4455, file: !4270, line: 310, baseType: !4478, size: 64, offset: 256)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!490, !4454, !4268}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4455, file: !4270, line: 311, baseType: !4482, size: 64, offset: 320)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!186, !4454, !4268, !4485}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4487)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3459, line: 342, size: 1600, elements: !4488)
!4488 = !{!4489, !4490, !4491, !4492, !4493, !4494, !4496, !4498, !4499, !4500, !4501, !4502, !4503, !4505, !4506, !4507}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4487, file: !3459, line: 344, baseType: !3478, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4487, file: !3459, line: 346, baseType: !174, size: 16, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4487, file: !3459, line: 347, baseType: !174, size: 16, offset: 80)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4487, file: !3459, line: 348, baseType: !174, size: 16, offset: 96)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4487, file: !3459, line: 349, baseType: !174, size: 16, offset: 112)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4487, file: !3459, line: 351, baseType: !4495, size: 64, offset: 128)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3478, size: 64, elements: !1370)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4487, file: !3459, line: 352, baseType: !4497, size: 768, offset: 192)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3478, size: 768, elements: !2232)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4487, file: !3459, line: 353, baseType: !4495, size: 64, offset: 960)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4487, file: !3459, line: 354, baseType: !4495, size: 64, offset: 1024)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4487, file: !3459, line: 355, baseType: !4495, size: 64, offset: 1088)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4487, file: !3459, line: 356, baseType: !4495, size: 64, offset: 1152)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4487, file: !3459, line: 357, baseType: !4495, size: 64, offset: 1216)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4487, file: !3459, line: 358, baseType: !4504, size: 128, offset: 1280)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3478, size: 128, elements: !206)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4487, file: !3459, line: 359, baseType: !4495, size: 64, offset: 1408)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4487, file: !3459, line: 360, baseType: !4495, size: 64, offset: 1472)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4487, file: !3459, line: 362, baseType: !3478, size: 64, offset: 1536)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4455, file: !4270, line: 312, baseType: !4509, size: 64, offset: 384)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4446}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4455, file: !4270, line: 313, baseType: !4509, size: 64, offset: 448)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4455, file: !4270, line: 315, baseType: !490, size: 8, offset: 512)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4455, file: !4270, line: 316, baseType: !186, size: 32, offset: 544)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4455, file: !4270, line: 317, baseType: !222, size: 64, offset: 576)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4455, file: !4270, line: 319, baseType: !4485, size: 64, offset: 640)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4455, file: !4270, line: 321, baseType: !225, size: 128, offset: 704)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4455, file: !4270, line: 322, baseType: !225, size: 128, offset: 832)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4447, file: !4270, line: 347, baseType: !225, size: 128, offset: 320)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4447, file: !4270, line: 348, baseType: !225, size: 128, offset: 448)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4269, file: !4270, line: 186, baseType: !238, offset: 3968)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4269, file: !4270, line: 187, baseType: !1172, size: 192, offset: 3968)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4269, file: !4270, line: 189, baseType: !7, size: 32, offset: 4160)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4269, file: !4270, line: 190, baseType: !490, size: 8, offset: 4192)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4269, file: !4270, line: 192, baseType: !215, size: 5568, offset: 4224)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4269, file: !4270, line: 194, baseType: !225, size: 128, offset: 9792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4269, file: !4270, line: 195, baseType: !225, size: 128, offset: 9920)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4269, file: !4270, line: 197, baseType: !7, size: 32, offset: 10048)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4269, file: !4270, line: 198, baseType: !7, size: 32, offset: 10080)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4269, file: !4270, line: 199, baseType: !4531, size: 64, offset: 10112)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4269, file: !4270, line: 201, baseType: !490, size: 8, offset: 10176)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4269, file: !4270, line: 203, baseType: !4534, size: 192, offset: 10240)
!4534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1299, size: 192, elements: !280)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !4226, file: !158, line: 176, baseType: !157, size: 32, offset: 6912)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4226, file: !158, line: 177, baseType: !490, size: 8, offset: 6944)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !4226, file: !158, line: 178, baseType: !490, size: 8, offset: 6952)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !4226, file: !158, line: 179, baseType: !421, size: 64, offset: 6976)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !4226, file: !158, line: 180, baseType: !421, size: 64, offset: 7040)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !4226, file: !158, line: 181, baseType: !421, size: 64, offset: 7104)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !4226, file: !158, line: 182, baseType: !126, size: 32, offset: 7168)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !4226, file: !158, line: 183, baseType: !4543, size: 64, offset: 7200)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !158, line: 38, size: 64, elements: !4544)
!4544 = !{!4545, !4546}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4543, file: !158, line: 39, baseType: !193, size: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4543, file: !158, line: 40, baseType: !193, size: 32, offset: 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !4226, file: !158, line: 184, baseType: !4543, size: 64, offset: 7264)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !4226, file: !158, line: 185, baseType: !193, size: 32, offset: 7328)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4226, file: !158, line: 186, baseType: !193, size: 32, offset: 7360)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4226, file: !158, line: 187, baseType: !181, size: 64, offset: 7424)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !4226, file: !158, line: 188, baseType: !238, offset: 7488)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !4226, file: !158, line: 189, baseType: !490, size: 8, offset: 7488)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !4226, file: !158, line: 190, baseType: !328, size: 64, offset: 7552)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !4226, file: !158, line: 191, baseType: !3566, size: 320, offset: 7616)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !4226, file: !158, line: 192, baseType: !3566, size: 320, offset: 7936)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !4226, file: !158, line: 193, baseType: !193, size: 32, offset: 8256)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !4226, file: !158, line: 194, baseType: !126, size: 32, offset: 8288)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !4226, file: !158, line: 195, baseType: !421, size: 64, offset: 8320)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !4226, file: !158, line: 196, baseType: !1351, size: 8, offset: 8384)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4226, file: !158, line: 197, baseType: !193, size: 32, offset: 8416)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4226, file: !158, line: 198, baseType: !193, size: 32, offset: 8448)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4226, file: !158, line: 199, baseType: !193, size: 32, offset: 8480)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !4226, file: !158, line: 200, baseType: !193, size: 32, offset: 8512)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !4226, file: !158, line: 201, baseType: !193, size: 32, offset: 8544)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4226, file: !158, line: 211, baseType: !490, size: 8, offset: 8576)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !4226, file: !158, line: 212, baseType: !4567, size: 64, offset: 8640)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!186, !4225, !3662}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4226, file: !158, line: 213, baseType: !4571, size: 64, offset: 8704)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!186, !4225}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4226, file: !158, line: 214, baseType: !4575, size: 64, offset: 8768)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !4225}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !4226, file: !158, line: 215, baseType: !4579, size: 64, offset: 8832)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!186, !4225, !193}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !4226, file: !158, line: 216, baseType: !4579, size: 64, offset: 8896)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !4226, file: !158, line: 217, baseType: !4579, size: 64, offset: 8960)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !4226, file: !158, line: 218, baseType: !4585, size: 64, offset: 9024)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!186, !4225, !193, !193}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !4226, file: !158, line: 219, baseType: !4589, size: 64, offset: 9088)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!186, !4225, !2679, !7}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !4226, file: !158, line: 220, baseType: !4593, size: 64, offset: 9152)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{null, !4225, !490}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !4226, file: !158, line: 221, baseType: !4597, size: 64, offset: 9216)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!186, !4225, !186}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !4226, file: !158, line: 222, baseType: !4597, size: 64, offset: 9280)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !4226, file: !158, line: 223, baseType: !4602, size: 64, offset: 9344)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!186, !4225, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !4226, file: !158, line: 225, baseType: !4602, size: 64, offset: 9408)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !4226, file: !158, line: 227, baseType: !4608, size: 64, offset: 9472)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!186, !4225, !7}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !4222, file: !3, line: 54, baseType: !182, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4222, file: !3, line: 55, baseType: !3994, size: 64, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "irq_urb", scope: !4222, file: !3, line: 57, baseType: !4614, size: 64, offset: 192)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4616)
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4667}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4615, file: !6, line: 1563, baseType: !3366, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4615, file: !6, line: 1564, baseType: !186, size: 32, offset: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4615, file: !6, line: 1565, baseType: !181, size: 64, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4615, file: !6, line: 1566, baseType: !747, size: 32, offset: 128)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4615, file: !6, line: 1567, baseType: !747, size: 32, offset: 160)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4615, file: !6, line: 1570, baseType: !225, size: 128, offset: 192)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4615, file: !6, line: 1572, baseType: !225, size: 128, offset: 320)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4615, file: !6, line: 1573, baseType: !4625, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4627)
!4627 = !{!4628, !4629, !4630, !4631, !4632}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4626, file: !6, line: 1361, baseType: !225, size: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4626, file: !6, line: 1362, baseType: !1480, size: 128, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4626, file: !6, line: 1363, baseType: !238, offset: 256)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4626, file: !6, line: 1364, baseType: !747, size: 32, offset: 256)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4626, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4615, file: !6, line: 1574, baseType: !182, size: 64, offset: 512)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4615, file: !6, line: 1575, baseType: !4016, size: 64, offset: 576)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4615, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4615, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4615, file: !6, line: 1578, baseType: !186, size: 32, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4615, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4615, file: !6, line: 1580, baseType: !181, size: 64, offset: 768)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4615, file: !6, line: 1581, baseType: !919, size: 64, offset: 832)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4615, file: !6, line: 1582, baseType: !4642, size: 64, offset: 896)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4644, line: 11, size: 256, elements: !4645)
!4644 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4645 = !{!4646, !4647, !4648, !4649, !4650}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4643, file: !4644, line: 12, baseType: !328, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4643, file: !4644, line: 13, baseType: !7, size: 32, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4643, file: !4644, line: 14, baseType: !7, size: 32, offset: 96)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4643, file: !4644, line: 15, baseType: !919, size: 64, offset: 128)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4643, file: !4644, line: 17, baseType: !7, size: 32, offset: 192)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4615, file: !6, line: 1583, baseType: !186, size: 32, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4615, file: !6, line: 1584, baseType: !186, size: 32, offset: 992)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4615, file: !6, line: 1585, baseType: !193, size: 32, offset: 1024)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4615, file: !6, line: 1586, baseType: !193, size: 32, offset: 1056)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4615, file: !6, line: 1587, baseType: !3880, size: 64, offset: 1088)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4615, file: !6, line: 1588, baseType: !919, size: 64, offset: 1152)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4615, file: !6, line: 1589, baseType: !186, size: 32, offset: 1216)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4615, file: !6, line: 1590, baseType: !186, size: 32, offset: 1248)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4615, file: !6, line: 1591, baseType: !186, size: 32, offset: 1280)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4615, file: !6, line: 1593, baseType: !186, size: 32, offset: 1312)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4615, file: !6, line: 1594, baseType: !181, size: 64, offset: 1344)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4615, file: !6, line: 1595, baseType: !4663, size: 64, offset: 1408)
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4664)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{null, !4614}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4615, file: !6, line: 1596, baseType: !4668, offset: 1472)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4669, elements: !2327)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4669, file: !6, line: 1352, baseType: !7, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4669, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4669, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4669, file: !6, line: 1355, baseType: !186, size: 32, offset: 96)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "inbuf", scope: !4222, file: !3, line: 58, baseType: !4676, size: 64, align: 16, offset: 256)
!4676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 64, elements: !1329)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "rc_name", scope: !4222, file: !3, line: 60, baseType: !4678, size: 640, offset: 320)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 640, elements: !4679)
!4679 = !{!4680}
!4680 = !DISubrange(count: 80)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "rc_phys", scope: !4222, file: !3, line: 61, baseType: !4678, size: 640, offset: 960)
!4682 = !DILocation(line: 193, column: 22, scope: !4204)
!4683 = !DILocalVariable(name: "rc_dev", scope: !4204, file: !3, line: 194, type: !4225)
!4684 = !DILocation(line: 194, column: 17, scope: !4204)
!4685 = !DILocalVariable(name: "err", scope: !4204, file: !3, line: 195, type: !186)
!4686 = !DILocation(line: 195, column: 6, scope: !4204)
!4687 = !DILocation(line: 198, column: 6, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 198, column: 6)
!4689 = !DILocation(line: 198, column: 18, scope: !4688)
!4690 = !DILocation(line: 198, column: 23, scope: !4688)
!4691 = !DILocation(line: 198, column: 37, scope: !4688)
!4692 = !DILocation(line: 198, column: 6, scope: !4204)
!4693 = !DILocation(line: 199, column: 3, scope: !4688)
!4694 = !DILocation(line: 201, column: 6, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 201, column: 6)
!4696 = !DILocation(line: 201, column: 18, scope: !4695)
!4697 = !DILocation(line: 201, column: 23, scope: !4695)
!4698 = !DILocation(line: 201, column: 37, scope: !4695)
!4699 = !DILocation(line: 201, column: 6, scope: !4204)
!4700 = !DILocation(line: 202, column: 3, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 201, column: 43)
!4702 = !DILocation(line: 204, column: 3, scope: !4701)
!4703 = !DILocation(line: 207, column: 17, scope: !4204)
!4704 = !DILocation(line: 207, column: 29, scope: !4204)
!4705 = !DILocation(line: 207, column: 41, scope: !4204)
!4706 = !DILocation(line: 207, column: 14, scope: !4204)
!4707 = !DILocation(line: 209, column: 30, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 209, column: 6)
!4709 = !DILocation(line: 209, column: 7, scope: !4708)
!4710 = !DILocation(line: 209, column: 6, scope: !4204)
!4711 = !DILocation(line: 210, column: 3, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 209, column: 44)
!4713 = !DILocation(line: 211, column: 3, scope: !4712)
!4714 = !DILocation(line: 213, column: 6, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 213, column: 6)
!4716 = !DILocation(line: 213, column: 47, scope: !4715)
!4717 = !DILocation(line: 213, column: 6, scope: !4204)
!4718 = !DILocation(line: 214, column: 3, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 213, column: 53)
!4720 = !DILocation(line: 215, column: 3, scope: !4719)
!4721 = !DILocation(line: 218, column: 16, scope: !4204)
!4722 = !DILocation(line: 218, column: 14, scope: !4204)
!4723 = !DILocation(line: 219, column: 11, scope: !4204)
!4724 = !DILocation(line: 219, column: 9, scope: !4204)
!4725 = !DILocation(line: 220, column: 7, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 220, column: 6)
!4727 = !DILocation(line: 220, column: 19, scope: !4726)
!4728 = !DILocation(line: 220, column: 23, scope: !4726)
!4729 = !DILocation(line: 220, column: 6, scope: !4204)
!4730 = !DILocation(line: 221, column: 3, scope: !4726)
!4731 = !DILocation(line: 224, column: 25, scope: !4204)
!4732 = !DILocation(line: 224, column: 2, scope: !4204)
!4733 = !DILocation(line: 224, column: 15, scope: !4204)
!4734 = !DILocation(line: 224, column: 23, scope: !4204)
!4735 = !DILocation(line: 225, column: 7, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 225, column: 6)
!4737 = !DILocation(line: 225, column: 20, scope: !4736)
!4738 = !DILocation(line: 225, column: 6, scope: !4204)
!4739 = !DILocation(line: 226, column: 3, scope: !4736)
!4740 = !DILocation(line: 228, column: 22, scope: !4204)
!4741 = !DILocation(line: 228, column: 2, scope: !4204)
!4742 = !DILocation(line: 228, column: 15, scope: !4204)
!4743 = !DILocation(line: 228, column: 20, scope: !4204)
!4744 = !DILocation(line: 229, column: 22, scope: !4204)
!4745 = !DILocation(line: 229, column: 2, scope: !4204)
!4746 = !DILocation(line: 229, column: 15, scope: !4204)
!4747 = !DILocation(line: 229, column: 20, scope: !4204)
!4748 = !DILocation(line: 230, column: 27, scope: !4204)
!4749 = !DILocation(line: 230, column: 2, scope: !4204)
!4750 = !DILocation(line: 230, column: 15, scope: !4204)
!4751 = !DILocation(line: 230, column: 25, scope: !4204)
!4752 = !DILocation(line: 232, column: 16, scope: !4204)
!4753 = !DILocation(line: 232, column: 22, scope: !4204)
!4754 = !DILocation(line: 232, column: 35, scope: !4204)
!4755 = !DILocation(line: 232, column: 2, scope: !4204)
!4756 = !DILocation(line: 234, column: 10, scope: !4204)
!4757 = !DILocation(line: 234, column: 23, scope: !4204)
!4758 = !DILocation(line: 234, column: 2, scope: !4204)
!4759 = !DILocation(line: 236, column: 11, scope: !4204)
!4760 = !DILocation(line: 236, column: 24, scope: !4204)
!4761 = !DILocation(line: 237, column: 4, scope: !4204)
!4762 = !DILocation(line: 237, column: 10, scope: !4204)
!4763 = !DILocation(line: 238, column: 4, scope: !4204)
!4764 = !DILocation(line: 238, column: 10, scope: !4204)
!4765 = !DILocation(line: 238, column: 23, scope: !4204)
!4766 = !DILocation(line: 238, column: 26, scope: !4204)
!4767 = !DILocation(line: 238, column: 32, scope: !4204)
!4768 = !DILocation(line: 0, scope: !4204)
!4769 = !DILocation(line: 239, column: 4, scope: !4204)
!4770 = !DILocation(line: 239, column: 10, scope: !4204)
!4771 = !DILocation(line: 236, column: 2, scope: !4204)
!4772 = !DILocation(line: 241, column: 14, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 241, column: 6)
!4774 = !DILocation(line: 241, column: 27, scope: !4773)
!4775 = !DILocation(line: 241, column: 7, scope: !4773)
!4776 = !DILocation(line: 241, column: 6, scope: !4204)
!4777 = !DILocation(line: 242, column: 12, scope: !4773)
!4778 = !DILocation(line: 242, column: 25, scope: !4773)
!4779 = !DILocation(line: 244, column: 5, scope: !4773)
!4780 = !DILocation(line: 245, column: 5, scope: !4773)
!4781 = !DILocation(line: 242, column: 3, scope: !4773)
!4782 = !DILocation(line: 247, column: 2, scope: !4204)
!4783 = !DILocation(line: 247, column: 10, scope: !4204)
!4784 = !DILocation(line: 247, column: 19, scope: !4204)
!4785 = !DILocation(line: 249, column: 22, scope: !4204)
!4786 = !DILocation(line: 249, column: 2, scope: !4204)
!4787 = !DILocation(line: 252, column: 31, scope: !4204)
!4788 = !DILocation(line: 252, column: 44, scope: !4204)
!4789 = !DILocation(line: 252, column: 8, scope: !4204)
!4790 = !DILocation(line: 252, column: 6, scope: !4204)
!4791 = !DILocation(line: 253, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 253, column: 6)
!4793 = !DILocation(line: 253, column: 6, scope: !4204)
!4794 = !DILocation(line: 254, column: 3, scope: !4792)
!4795 = !DILocation(line: 257, column: 27, scope: !4204)
!4796 = !DILocation(line: 257, column: 40, scope: !4204)
!4797 = !DILocation(line: 257, column: 8, scope: !4204)
!4798 = !DILocation(line: 257, column: 6, scope: !4204)
!4799 = !DILocation(line: 258, column: 6, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 258, column: 6)
!4801 = !DILocation(line: 258, column: 6, scope: !4204)
!4802 = !DILocation(line: 259, column: 3, scope: !4800)
!4803 = !DILocation(line: 261, column: 19, scope: !4204)
!4804 = !DILocation(line: 261, column: 30, scope: !4204)
!4805 = !DILocation(line: 261, column: 2, scope: !4204)
!4806 = !DILocation(line: 263, column: 2, scope: !4204)
!4807 = !DILabel(scope: !4204, name: "exit_kill_urbs", file: !3, line: 265)
!4808 = !DILocation(line: 265, column: 1, scope: !4204)
!4809 = !DILocation(line: 266, column: 15, scope: !4204)
!4810 = !DILocation(line: 266, column: 28, scope: !4204)
!4811 = !DILocation(line: 266, column: 2, scope: !4204)
!4812 = !DILabel(scope: !4204, name: "exit_free_buffers", file: !3, line: 267)
!4813 = !DILocation(line: 267, column: 1, scope: !4204)
!4814 = !DILocation(line: 268, column: 15, scope: !4204)
!4815 = !DILocation(line: 268, column: 28, scope: !4204)
!4816 = !DILocation(line: 268, column: 2, scope: !4204)
!4817 = !DILabel(scope: !4204, name: "exit_free_dev_rdev", file: !3, line: 269)
!4818 = !DILocation(line: 269, column: 1, scope: !4204)
!4819 = !DILocation(line: 270, column: 17, scope: !4204)
!4820 = !DILocation(line: 270, column: 2, scope: !4204)
!4821 = !DILocation(line: 271, column: 8, scope: !4204)
!4822 = !DILocation(line: 271, column: 2, scope: !4204)
!4823 = !DILocation(line: 273, column: 9, scope: !4204)
!4824 = !DILocation(line: 273, column: 2, scope: !4204)
!4825 = !DILocation(line: 274, column: 1, scope: !4204)
!4826 = distinct !DISubprogram(name: "xbox_remote_disconnect", scope: !3, file: !3, line: 279, type: !4157, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4827 = !DILocalVariable(name: "interface", arg: 1, scope: !4826, file: !3, line: 279, type: !3994)
!4828 = !DILocation(line: 279, column: 58, scope: !4826)
!4829 = !DILocalVariable(name: "xbox_remote", scope: !4826, file: !3, line: 281, type: !4221)
!4830 = !DILocation(line: 281, column: 22, scope: !4826)
!4831 = !DILocation(line: 283, column: 33, scope: !4826)
!4832 = !DILocation(line: 283, column: 16, scope: !4826)
!4833 = !DILocation(line: 283, column: 14, scope: !4826)
!4834 = !DILocation(line: 284, column: 19, scope: !4826)
!4835 = !DILocation(line: 284, column: 2, scope: !4826)
!4836 = !DILocation(line: 285, column: 7, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 285, column: 6)
!4838 = !DILocation(line: 285, column: 6, scope: !4826)
!4839 = !DILocation(line: 286, column: 3, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 285, column: 20)
!4841 = !DILocation(line: 287, column: 3, scope: !4840)
!4842 = !DILocation(line: 290, column: 15, scope: !4826)
!4843 = !DILocation(line: 290, column: 28, scope: !4826)
!4844 = !DILocation(line: 290, column: 2, scope: !4826)
!4845 = !DILocation(line: 291, column: 23, scope: !4826)
!4846 = !DILocation(line: 291, column: 36, scope: !4826)
!4847 = !DILocation(line: 291, column: 2, scope: !4826)
!4848 = !DILocation(line: 292, column: 15, scope: !4826)
!4849 = !DILocation(line: 292, column: 28, scope: !4826)
!4850 = !DILocation(line: 292, column: 2, scope: !4826)
!4851 = !DILocation(line: 293, column: 8, scope: !4826)
!4852 = !DILocation(line: 293, column: 2, scope: !4826)
!4853 = !DILocation(line: 294, column: 1, scope: !4826)
!4854 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4855, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!182, !3994}
!4857 = !DILocalVariable(name: "intf", arg: 1, scope: !4854, file: !6, line: 715, type: !3994)
!4858 = !DILocation(line: 715, column: 76, scope: !4854)
!4859 = !DILocalVariable(name: "__mptr", scope: !4860, file: !6, line: 717, type: !181)
!4860 = distinct !DILexicalBlock(scope: !4854, file: !6, line: 717, column: 9)
!4861 = !DILocation(line: 717, column: 9, scope: !4860)
!4862 = !DILocation(line: 717, column: 9, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4860, file: !6, line: 717, column: 9)
!4864 = !DILocation(line: 717, column: 2, scope: !4854)
!4865 = distinct !DISubprogram(name: "usb_endpoint_is_int_in", scope: !101, file: !101, line: 596, type: !4866, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!186, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3848)
!4870 = !DILocalVariable(name: "epd", arg: 1, scope: !4865, file: !101, line: 597, type: !4868)
!4871 = !DILocation(line: 597, column: 43, scope: !4865)
!4872 = !DILocation(line: 599, column: 31, scope: !4865)
!4873 = !DILocation(line: 599, column: 9, scope: !4865)
!4874 = !DILocation(line: 599, column: 36, scope: !4865)
!4875 = !DILocation(line: 599, column: 59, scope: !4865)
!4876 = !DILocation(line: 599, column: 39, scope: !4865)
!4877 = !DILocation(line: 0, scope: !4865)
!4878 = !DILocation(line: 599, column: 2, scope: !4865)
!4879 = distinct !DISubprogram(name: "kzalloc", scope: !164, file: !164, line: 662, type: !4880, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!181, !325, !179}
!4882 = !DILocalVariable(name: "s", arg: 1, scope: !4883, file: !164, line: 445, type: !934)
!4883 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !164, file: !164, line: 445, type: !4884, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!181, !934, !179, !325}
!4886 = !DILocation(line: 445, column: 72, scope: !4883, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 552, column: 10, scope: !4888, inlinedAt: !4891)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !164, line: 540, column: 34)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !164, line: 540, column: 6)
!4890 = distinct !DISubprogram(name: "kmalloc", scope: !164, file: !164, line: 538, type: !4880, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4891 = distinct !DILocation(line: 664, column: 9, scope: !4879)
!4892 = !DILocalVariable(name: "flags", arg: 2, scope: !4883, file: !164, line: 446, type: !179)
!4893 = !DILocation(line: 446, column: 9, scope: !4883, inlinedAt: !4887)
!4894 = !DILocalVariable(name: "size", arg: 3, scope: !4883, file: !164, line: 446, type: !325)
!4895 = !DILocation(line: 446, column: 23, scope: !4883, inlinedAt: !4887)
!4896 = !DILocalVariable(name: "ret", scope: !4883, file: !164, line: 448, type: !181)
!4897 = !DILocation(line: 448, column: 8, scope: !4883, inlinedAt: !4887)
!4898 = !DILocalVariable(name: "flags", arg: 1, scope: !4899, file: !164, line: 318, type: !179)
!4899 = distinct !DISubprogram(name: "kmalloc_type", scope: !164, file: !164, line: 318, type: !4900, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!163, !179}
!4902 = !DILocation(line: 318, column: 67, scope: !4899, inlinedAt: !4903)
!4903 = distinct !DILocation(line: 553, column: 20, scope: !4888, inlinedAt: !4891)
!4904 = !DILocalVariable(name: "size", arg: 1, scope: !4905, file: !164, line: 346, type: !325)
!4905 = distinct !DISubprogram(name: "kmalloc_index", scope: !164, file: !164, line: 346, type: !4906, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!7, !325}
!4908 = !DILocation(line: 346, column: 58, scope: !4905, inlinedAt: !4909)
!4909 = distinct !DILocation(line: 547, column: 11, scope: !4888, inlinedAt: !4891)
!4910 = !DILocalVariable(name: "size", arg: 1, scope: !4911, file: !164, line: 472, type: !325)
!4911 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !164, file: !164, line: 472, type: !4912, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!181, !325, !179, !7}
!4914 = !DILocation(line: 472, column: 28, scope: !4911, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 481, column: 9, scope: !4916, inlinedAt: !4917)
!4916 = distinct !DISubprogram(name: "kmalloc_large", scope: !164, file: !164, line: 478, type: !4880, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!4917 = distinct !DILocation(line: 545, column: 11, scope: !4918, inlinedAt: !4891)
!4918 = distinct !DILexicalBlock(scope: !4888, file: !164, line: 544, column: 7)
!4919 = !DILocalVariable(name: "flags", arg: 2, scope: !4911, file: !164, line: 472, type: !179)
!4920 = !DILocation(line: 472, column: 40, scope: !4911, inlinedAt: !4915)
!4921 = !DILocalVariable(name: "order", arg: 3, scope: !4911, file: !164, line: 472, type: !7)
!4922 = !DILocation(line: 472, column: 60, scope: !4911, inlinedAt: !4915)
!4923 = !DILocalVariable(name: "size", arg: 1, scope: !4916, file: !164, line: 478, type: !325)
!4924 = !DILocation(line: 478, column: 51, scope: !4916, inlinedAt: !4917)
!4925 = !DILocalVariable(name: "flags", arg: 2, scope: !4916, file: !164, line: 478, type: !179)
!4926 = !DILocation(line: 478, column: 63, scope: !4916, inlinedAt: !4917)
!4927 = !DILocalVariable(name: "order", scope: !4916, file: !164, line: 480, type: !7)
!4928 = !DILocation(line: 480, column: 15, scope: !4916, inlinedAt: !4917)
!4929 = !DILocalVariable(name: "size", arg: 1, scope: !4890, file: !164, line: 538, type: !325)
!4930 = !DILocation(line: 538, column: 45, scope: !4890, inlinedAt: !4891)
!4931 = !DILocalVariable(name: "flags", arg: 2, scope: !4890, file: !164, line: 538, type: !179)
!4932 = !DILocation(line: 538, column: 57, scope: !4890, inlinedAt: !4891)
!4933 = !DILocalVariable(name: "index", scope: !4888, file: !164, line: 542, type: !7)
!4934 = !DILocation(line: 542, column: 16, scope: !4888, inlinedAt: !4891)
!4935 = !DILocalVariable(name: "size", arg: 1, scope: !4879, file: !164, line: 662, type: !325)
!4936 = !DILocation(line: 662, column: 36, scope: !4879)
!4937 = !DILocalVariable(name: "flags", arg: 2, scope: !4879, file: !164, line: 662, type: !179)
!4938 = !DILocation(line: 662, column: 48, scope: !4879)
!4939 = !DILocation(line: 664, column: 17, scope: !4879)
!4940 = !DILocation(line: 664, column: 23, scope: !4879)
!4941 = !DILocation(line: 664, column: 29, scope: !4879)
!4942 = !DILocation(line: 540, column: 27, scope: !4889, inlinedAt: !4891)
!4943 = !DILocation(line: 540, column: 6, scope: !4889, inlinedAt: !4891)
!4944 = !DILocation(line: 540, column: 6, scope: !4890, inlinedAt: !4891)
!4945 = !DILocation(line: 544, column: 7, scope: !4918, inlinedAt: !4891)
!4946 = !DILocation(line: 544, column: 12, scope: !4918, inlinedAt: !4891)
!4947 = !DILocation(line: 544, column: 7, scope: !4888, inlinedAt: !4891)
!4948 = !DILocation(line: 545, column: 25, scope: !4918, inlinedAt: !4891)
!4949 = !DILocation(line: 545, column: 31, scope: !4918, inlinedAt: !4891)
!4950 = !DILocation(line: 480, column: 33, scope: !4916, inlinedAt: !4917)
!4951 = !DILocation(line: 480, column: 23, scope: !4916, inlinedAt: !4917)
!4952 = !DILocation(line: 481, column: 29, scope: !4916, inlinedAt: !4917)
!4953 = !DILocation(line: 481, column: 35, scope: !4916, inlinedAt: !4917)
!4954 = !DILocation(line: 481, column: 42, scope: !4916, inlinedAt: !4917)
!4955 = !DILocation(line: 474, column: 23, scope: !4911, inlinedAt: !4915)
!4956 = !DILocation(line: 474, column: 29, scope: !4911, inlinedAt: !4915)
!4957 = !DILocation(line: 474, column: 36, scope: !4911, inlinedAt: !4915)
!4958 = !DILocation(line: 474, column: 9, scope: !4911, inlinedAt: !4915)
!4959 = !DILocation(line: 545, column: 4, scope: !4918, inlinedAt: !4891)
!4960 = !DILocation(line: 547, column: 25, scope: !4888, inlinedAt: !4891)
!4961 = !DILocation(line: 348, column: 7, scope: !4962, inlinedAt: !4909)
!4962 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 348, column: 6)
!4963 = !DILocation(line: 348, column: 6, scope: !4905, inlinedAt: !4909)
!4964 = !DILocation(line: 349, column: 3, scope: !4962, inlinedAt: !4909)
!4965 = !DILocation(line: 351, column: 6, scope: !4966, inlinedAt: !4909)
!4966 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 351, column: 6)
!4967 = !DILocation(line: 351, column: 11, scope: !4966, inlinedAt: !4909)
!4968 = !DILocation(line: 351, column: 6, scope: !4905, inlinedAt: !4909)
!4969 = !DILocation(line: 352, column: 3, scope: !4966, inlinedAt: !4909)
!4970 = !DILocation(line: 354, column: 32, scope: !4971, inlinedAt: !4909)
!4971 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 354, column: 6)
!4972 = !DILocation(line: 354, column: 37, scope: !4971, inlinedAt: !4909)
!4973 = !DILocation(line: 354, column: 42, scope: !4971, inlinedAt: !4909)
!4974 = !DILocation(line: 354, column: 45, scope: !4971, inlinedAt: !4909)
!4975 = !DILocation(line: 354, column: 50, scope: !4971, inlinedAt: !4909)
!4976 = !DILocation(line: 354, column: 6, scope: !4905, inlinedAt: !4909)
!4977 = !DILocation(line: 355, column: 3, scope: !4971, inlinedAt: !4909)
!4978 = !DILocation(line: 356, column: 32, scope: !4979, inlinedAt: !4909)
!4979 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 356, column: 6)
!4980 = !DILocation(line: 356, column: 37, scope: !4979, inlinedAt: !4909)
!4981 = !DILocation(line: 356, column: 43, scope: !4979, inlinedAt: !4909)
!4982 = !DILocation(line: 356, column: 46, scope: !4979, inlinedAt: !4909)
!4983 = !DILocation(line: 356, column: 51, scope: !4979, inlinedAt: !4909)
!4984 = !DILocation(line: 356, column: 6, scope: !4905, inlinedAt: !4909)
!4985 = !DILocation(line: 357, column: 3, scope: !4979, inlinedAt: !4909)
!4986 = !DILocation(line: 358, column: 6, scope: !4987, inlinedAt: !4909)
!4987 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 358, column: 6)
!4988 = !DILocation(line: 358, column: 11, scope: !4987, inlinedAt: !4909)
!4989 = !DILocation(line: 358, column: 6, scope: !4905, inlinedAt: !4909)
!4990 = !DILocation(line: 358, column: 26, scope: !4987, inlinedAt: !4909)
!4991 = !DILocation(line: 359, column: 6, scope: !4992, inlinedAt: !4909)
!4992 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 359, column: 6)
!4993 = !DILocation(line: 359, column: 11, scope: !4992, inlinedAt: !4909)
!4994 = !DILocation(line: 359, column: 6, scope: !4905, inlinedAt: !4909)
!4995 = !DILocation(line: 359, column: 26, scope: !4992, inlinedAt: !4909)
!4996 = !DILocation(line: 360, column: 6, scope: !4997, inlinedAt: !4909)
!4997 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 360, column: 6)
!4998 = !DILocation(line: 360, column: 11, scope: !4997, inlinedAt: !4909)
!4999 = !DILocation(line: 360, column: 6, scope: !4905, inlinedAt: !4909)
!5000 = !DILocation(line: 360, column: 26, scope: !4997, inlinedAt: !4909)
!5001 = !DILocation(line: 361, column: 6, scope: !5002, inlinedAt: !4909)
!5002 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 361, column: 6)
!5003 = !DILocation(line: 361, column: 11, scope: !5002, inlinedAt: !4909)
!5004 = !DILocation(line: 361, column: 6, scope: !4905, inlinedAt: !4909)
!5005 = !DILocation(line: 361, column: 26, scope: !5002, inlinedAt: !4909)
!5006 = !DILocation(line: 362, column: 6, scope: !5007, inlinedAt: !4909)
!5007 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 362, column: 6)
!5008 = !DILocation(line: 362, column: 11, scope: !5007, inlinedAt: !4909)
!5009 = !DILocation(line: 362, column: 6, scope: !4905, inlinedAt: !4909)
!5010 = !DILocation(line: 362, column: 26, scope: !5007, inlinedAt: !4909)
!5011 = !DILocation(line: 363, column: 6, scope: !5012, inlinedAt: !4909)
!5012 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 363, column: 6)
!5013 = !DILocation(line: 363, column: 11, scope: !5012, inlinedAt: !4909)
!5014 = !DILocation(line: 363, column: 6, scope: !4905, inlinedAt: !4909)
!5015 = !DILocation(line: 363, column: 26, scope: !5012, inlinedAt: !4909)
!5016 = !DILocation(line: 364, column: 6, scope: !5017, inlinedAt: !4909)
!5017 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 364, column: 6)
!5018 = !DILocation(line: 364, column: 11, scope: !5017, inlinedAt: !4909)
!5019 = !DILocation(line: 364, column: 6, scope: !4905, inlinedAt: !4909)
!5020 = !DILocation(line: 364, column: 26, scope: !5017, inlinedAt: !4909)
!5021 = !DILocation(line: 365, column: 6, scope: !5022, inlinedAt: !4909)
!5022 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 365, column: 6)
!5023 = !DILocation(line: 365, column: 11, scope: !5022, inlinedAt: !4909)
!5024 = !DILocation(line: 365, column: 6, scope: !4905, inlinedAt: !4909)
!5025 = !DILocation(line: 365, column: 26, scope: !5022, inlinedAt: !4909)
!5026 = !DILocation(line: 366, column: 6, scope: !5027, inlinedAt: !4909)
!5027 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 366, column: 6)
!5028 = !DILocation(line: 366, column: 11, scope: !5027, inlinedAt: !4909)
!5029 = !DILocation(line: 366, column: 6, scope: !4905, inlinedAt: !4909)
!5030 = !DILocation(line: 366, column: 26, scope: !5027, inlinedAt: !4909)
!5031 = !DILocation(line: 367, column: 6, scope: !5032, inlinedAt: !4909)
!5032 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 367, column: 6)
!5033 = !DILocation(line: 367, column: 11, scope: !5032, inlinedAt: !4909)
!5034 = !DILocation(line: 367, column: 6, scope: !4905, inlinedAt: !4909)
!5035 = !DILocation(line: 367, column: 26, scope: !5032, inlinedAt: !4909)
!5036 = !DILocation(line: 368, column: 6, scope: !5037, inlinedAt: !4909)
!5037 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 368, column: 6)
!5038 = !DILocation(line: 368, column: 11, scope: !5037, inlinedAt: !4909)
!5039 = !DILocation(line: 368, column: 6, scope: !4905, inlinedAt: !4909)
!5040 = !DILocation(line: 368, column: 26, scope: !5037, inlinedAt: !4909)
!5041 = !DILocation(line: 369, column: 6, scope: !5042, inlinedAt: !4909)
!5042 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 369, column: 6)
!5043 = !DILocation(line: 369, column: 11, scope: !5042, inlinedAt: !4909)
!5044 = !DILocation(line: 369, column: 6, scope: !4905, inlinedAt: !4909)
!5045 = !DILocation(line: 369, column: 26, scope: !5042, inlinedAt: !4909)
!5046 = !DILocation(line: 370, column: 6, scope: !5047, inlinedAt: !4909)
!5047 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 370, column: 6)
!5048 = !DILocation(line: 370, column: 11, scope: !5047, inlinedAt: !4909)
!5049 = !DILocation(line: 370, column: 6, scope: !4905, inlinedAt: !4909)
!5050 = !DILocation(line: 370, column: 26, scope: !5047, inlinedAt: !4909)
!5051 = !DILocation(line: 371, column: 6, scope: !5052, inlinedAt: !4909)
!5052 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 371, column: 6)
!5053 = !DILocation(line: 371, column: 11, scope: !5052, inlinedAt: !4909)
!5054 = !DILocation(line: 371, column: 6, scope: !4905, inlinedAt: !4909)
!5055 = !DILocation(line: 371, column: 26, scope: !5052, inlinedAt: !4909)
!5056 = !DILocation(line: 372, column: 6, scope: !5057, inlinedAt: !4909)
!5057 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 372, column: 6)
!5058 = !DILocation(line: 372, column: 11, scope: !5057, inlinedAt: !4909)
!5059 = !DILocation(line: 372, column: 6, scope: !4905, inlinedAt: !4909)
!5060 = !DILocation(line: 372, column: 26, scope: !5057, inlinedAt: !4909)
!5061 = !DILocation(line: 373, column: 6, scope: !5062, inlinedAt: !4909)
!5062 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 373, column: 6)
!5063 = !DILocation(line: 373, column: 11, scope: !5062, inlinedAt: !4909)
!5064 = !DILocation(line: 373, column: 6, scope: !4905, inlinedAt: !4909)
!5065 = !DILocation(line: 373, column: 26, scope: !5062, inlinedAt: !4909)
!5066 = !DILocation(line: 374, column: 6, scope: !5067, inlinedAt: !4909)
!5067 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 374, column: 6)
!5068 = !DILocation(line: 374, column: 11, scope: !5067, inlinedAt: !4909)
!5069 = !DILocation(line: 374, column: 6, scope: !4905, inlinedAt: !4909)
!5070 = !DILocation(line: 374, column: 26, scope: !5067, inlinedAt: !4909)
!5071 = !DILocation(line: 375, column: 6, scope: !5072, inlinedAt: !4909)
!5072 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 375, column: 6)
!5073 = !DILocation(line: 375, column: 11, scope: !5072, inlinedAt: !4909)
!5074 = !DILocation(line: 375, column: 6, scope: !4905, inlinedAt: !4909)
!5075 = !DILocation(line: 375, column: 27, scope: !5072, inlinedAt: !4909)
!5076 = !DILocation(line: 376, column: 6, scope: !5077, inlinedAt: !4909)
!5077 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 376, column: 6)
!5078 = !DILocation(line: 376, column: 11, scope: !5077, inlinedAt: !4909)
!5079 = !DILocation(line: 376, column: 6, scope: !4905, inlinedAt: !4909)
!5080 = !DILocation(line: 376, column: 32, scope: !5077, inlinedAt: !4909)
!5081 = !DILocation(line: 377, column: 6, scope: !5082, inlinedAt: !4909)
!5082 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 377, column: 6)
!5083 = !DILocation(line: 377, column: 11, scope: !5082, inlinedAt: !4909)
!5084 = !DILocation(line: 377, column: 6, scope: !4905, inlinedAt: !4909)
!5085 = !DILocation(line: 377, column: 32, scope: !5082, inlinedAt: !4909)
!5086 = !DILocation(line: 378, column: 6, scope: !5087, inlinedAt: !4909)
!5087 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 378, column: 6)
!5088 = !DILocation(line: 378, column: 11, scope: !5087, inlinedAt: !4909)
!5089 = !DILocation(line: 378, column: 6, scope: !4905, inlinedAt: !4909)
!5090 = !DILocation(line: 378, column: 32, scope: !5087, inlinedAt: !4909)
!5091 = !DILocation(line: 379, column: 6, scope: !5092, inlinedAt: !4909)
!5092 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 379, column: 6)
!5093 = !DILocation(line: 379, column: 11, scope: !5092, inlinedAt: !4909)
!5094 = !DILocation(line: 379, column: 6, scope: !4905, inlinedAt: !4909)
!5095 = !DILocation(line: 379, column: 33, scope: !5092, inlinedAt: !4909)
!5096 = !DILocation(line: 380, column: 6, scope: !5097, inlinedAt: !4909)
!5097 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 380, column: 6)
!5098 = !DILocation(line: 380, column: 11, scope: !5097, inlinedAt: !4909)
!5099 = !DILocation(line: 380, column: 6, scope: !4905, inlinedAt: !4909)
!5100 = !DILocation(line: 380, column: 33, scope: !5097, inlinedAt: !4909)
!5101 = !DILocation(line: 381, column: 6, scope: !5102, inlinedAt: !4909)
!5102 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 381, column: 6)
!5103 = !DILocation(line: 381, column: 11, scope: !5102, inlinedAt: !4909)
!5104 = !DILocation(line: 381, column: 6, scope: !4905, inlinedAt: !4909)
!5105 = !DILocation(line: 381, column: 33, scope: !5102, inlinedAt: !4909)
!5106 = !DILocation(line: 382, column: 2, scope: !5107, inlinedAt: !4909)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !164, line: 382, column: 2)
!5108 = distinct !DILexicalBlock(scope: !4905, file: !164, line: 382, column: 2)
!5109 = !{i32 -2144647178, i32 -2144647149, i32 -2144647103, i32 -2144647045, i32 -2144646991, i32 -2144646937, i32 -2144646882, i32 -2144646851}
!5110 = !DILocation(line: 382, column: 2, scope: !5111, inlinedAt: !4909)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !164, line: 382, column: 2)
!5112 = distinct !DILexicalBlock(scope: !5108, file: !164, line: 382, column: 2)
!5113 = !{i32 -2144646408, i32 -2144646401, i32 -2144646347, i32 -2144646316, i32 -2144646286}
!5114 = !DILocation(line: 382, column: 2, scope: !5112, inlinedAt: !4909)
!5115 = !DILocation(line: 386, column: 1, scope: !4905, inlinedAt: !4909)
!5116 = !DILocation(line: 547, column: 9, scope: !4888, inlinedAt: !4891)
!5117 = !DILocation(line: 549, column: 8, scope: !5118, inlinedAt: !4891)
!5118 = distinct !DILexicalBlock(scope: !4888, file: !164, line: 549, column: 7)
!5119 = !DILocation(line: 549, column: 7, scope: !4888, inlinedAt: !4891)
!5120 = !DILocation(line: 550, column: 4, scope: !5118, inlinedAt: !4891)
!5121 = !DILocation(line: 553, column: 33, scope: !4888, inlinedAt: !4891)
!5122 = !DILocation(line: 325, column: 6, scope: !5123, inlinedAt: !4903)
!5123 = distinct !DILexicalBlock(scope: !4899, file: !164, line: 325, column: 6)
!5124 = !DILocation(line: 325, column: 6, scope: !4899, inlinedAt: !4903)
!5125 = !DILocation(line: 326, column: 3, scope: !5123, inlinedAt: !4903)
!5126 = !DILocation(line: 332, column: 9, scope: !4899, inlinedAt: !4903)
!5127 = !DILocation(line: 332, column: 15, scope: !4899, inlinedAt: !4903)
!5128 = !DILocation(line: 332, column: 2, scope: !4899, inlinedAt: !4903)
!5129 = !DILocation(line: 336, column: 1, scope: !4899, inlinedAt: !4903)
!5130 = !DILocation(line: 553, column: 5, scope: !4888, inlinedAt: !4891)
!5131 = !DILocation(line: 553, column: 41, scope: !4888, inlinedAt: !4891)
!5132 = !DILocation(line: 554, column: 5, scope: !4888, inlinedAt: !4891)
!5133 = !DILocation(line: 554, column: 12, scope: !4888, inlinedAt: !4891)
!5134 = !DILocation(line: 448, column: 31, scope: !4883, inlinedAt: !4887)
!5135 = !DILocation(line: 448, column: 34, scope: !4883, inlinedAt: !4887)
!5136 = !DILocation(line: 448, column: 14, scope: !4883, inlinedAt: !4887)
!5137 = !DILocation(line: 450, column: 22, scope: !4883, inlinedAt: !4887)
!5138 = !DILocation(line: 450, column: 25, scope: !4883, inlinedAt: !4887)
!5139 = !DILocation(line: 450, column: 30, scope: !4883, inlinedAt: !4887)
!5140 = !DILocation(line: 450, column: 36, scope: !4883, inlinedAt: !4887)
!5141 = !DILocation(line: 450, column: 8, scope: !4883, inlinedAt: !4887)
!5142 = !DILocation(line: 450, column: 6, scope: !4883, inlinedAt: !4887)
!5143 = !DILocation(line: 451, column: 9, scope: !4883, inlinedAt: !4887)
!5144 = !DILocation(line: 552, column: 3, scope: !4888, inlinedAt: !4891)
!5145 = !DILocation(line: 557, column: 19, scope: !4890, inlinedAt: !4891)
!5146 = !DILocation(line: 557, column: 25, scope: !4890, inlinedAt: !4891)
!5147 = !DILocation(line: 557, column: 9, scope: !4890, inlinedAt: !4891)
!5148 = !DILocation(line: 557, column: 2, scope: !4890, inlinedAt: !4891)
!5149 = !DILocation(line: 558, column: 1, scope: !4890, inlinedAt: !4891)
!5150 = !DILocation(line: 664, column: 2, scope: !4879)
!5151 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5152, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!186, !182, !279, !325}
!5154 = !DILocalVariable(name: "dev", arg: 1, scope: !5151, file: !6, line: 912, type: !182)
!5155 = !DILocation(line: 912, column: 52, scope: !5151)
!5156 = !DILocalVariable(name: "buf", arg: 2, scope: !5151, file: !6, line: 912, type: !279)
!5157 = !DILocation(line: 912, column: 63, scope: !5151)
!5158 = !DILocalVariable(name: "size", arg: 3, scope: !5151, file: !6, line: 912, type: !325)
!5159 = !DILocation(line: 912, column: 75, scope: !5151)
!5160 = !DILocalVariable(name: "actual", scope: !5151, file: !6, line: 914, type: !186)
!5161 = !DILocation(line: 914, column: 6, scope: !5151)
!5162 = !DILocation(line: 915, column: 20, scope: !5151)
!5163 = !DILocation(line: 915, column: 25, scope: !5151)
!5164 = !DILocation(line: 915, column: 44, scope: !5151)
!5165 = !DILocation(line: 915, column: 49, scope: !5151)
!5166 = !DILocation(line: 915, column: 54, scope: !5151)
!5167 = !DILocation(line: 916, column: 6, scope: !5151)
!5168 = !DILocation(line: 916, column: 11, scope: !5151)
!5169 = !DILocation(line: 915, column: 11, scope: !5151)
!5170 = !DILocation(line: 915, column: 9, scope: !5151)
!5171 = !DILocation(line: 917, column: 10, scope: !5151)
!5172 = !DILocation(line: 917, column: 25, scope: !5151)
!5173 = !DILocation(line: 917, column: 20, scope: !5151)
!5174 = !DILocation(line: 917, column: 17, scope: !5151)
!5175 = !DILocation(line: 917, column: 9, scope: !5151)
!5176 = !DILocation(line: 917, column: 38, scope: !5151)
!5177 = !DILocation(line: 917, column: 2, scope: !5151)
!5178 = distinct !DISubprogram(name: "xbox_remote_rc_init", scope: !3, file: !3, line: 146, type: !5179, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{null, !4221}
!5181 = !DILocalVariable(name: "xbox_remote", arg: 1, scope: !5178, file: !3, line: 146, type: !4221)
!5182 = !DILocation(line: 146, column: 53, scope: !5178)
!5183 = !DILocalVariable(name: "rdev", scope: !5178, file: !3, line: 148, type: !4225)
!5184 = !DILocation(line: 148, column: 17, scope: !5178)
!5185 = !DILocation(line: 148, column: 24, scope: !5178)
!5186 = !DILocation(line: 148, column: 37, scope: !5178)
!5187 = !DILocation(line: 150, column: 15, scope: !5178)
!5188 = !DILocation(line: 150, column: 2, scope: !5178)
!5189 = !DILocation(line: 150, column: 8, scope: !5178)
!5190 = !DILocation(line: 150, column: 13, scope: !5178)
!5191 = !DILocation(line: 151, column: 2, scope: !5178)
!5192 = !DILocation(line: 151, column: 8, scope: !5178)
!5193 = !DILocation(line: 151, column: 26, scope: !5178)
!5194 = !DILocation(line: 152, column: 2, scope: !5178)
!5195 = !DILocation(line: 152, column: 8, scope: !5178)
!5196 = !DILocation(line: 152, column: 20, scope: !5178)
!5197 = !DILocation(line: 154, column: 2, scope: !5178)
!5198 = !DILocation(line: 154, column: 8, scope: !5178)
!5199 = !DILocation(line: 154, column: 13, scope: !5178)
!5200 = !DILocation(line: 155, column: 2, scope: !5178)
!5201 = !DILocation(line: 155, column: 8, scope: !5178)
!5202 = !DILocation(line: 155, column: 14, scope: !5178)
!5203 = !DILocation(line: 157, column: 22, scope: !5178)
!5204 = !DILocation(line: 157, column: 35, scope: !5178)
!5205 = !DILocation(line: 157, column: 2, scope: !5178)
!5206 = !DILocation(line: 157, column: 8, scope: !5178)
!5207 = !DILocation(line: 157, column: 20, scope: !5178)
!5208 = !DILocation(line: 158, column: 21, scope: !5178)
!5209 = !DILocation(line: 158, column: 34, scope: !5178)
!5210 = !DILocation(line: 158, column: 2, scope: !5178)
!5211 = !DILocation(line: 158, column: 8, scope: !5178)
!5212 = !DILocation(line: 158, column: 19, scope: !5178)
!5213 = !DILocation(line: 160, column: 2, scope: !5178)
!5214 = !DILocation(line: 160, column: 8, scope: !5178)
!5215 = !DILocation(line: 160, column: 16, scope: !5178)
!5216 = !DILocation(line: 162, column: 18, scope: !5178)
!5217 = !DILocation(line: 162, column: 31, scope: !5178)
!5218 = !DILocation(line: 162, column: 38, scope: !5178)
!5219 = !DILocation(line: 162, column: 44, scope: !5178)
!5220 = !DILocation(line: 162, column: 2, scope: !5178)
!5221 = !DILocation(line: 163, column: 22, scope: !5178)
!5222 = !DILocation(line: 163, column: 35, scope: !5178)
!5223 = !DILocation(line: 163, column: 46, scope: !5178)
!5224 = !DILocation(line: 163, column: 2, scope: !5178)
!5225 = !DILocation(line: 163, column: 8, scope: !5178)
!5226 = !DILocation(line: 163, column: 12, scope: !5178)
!5227 = !DILocation(line: 163, column: 19, scope: !5178)
!5228 = !DILocation(line: 164, column: 1, scope: !5178)
!5229 = distinct !DISubprogram(name: "xbox_remote_initialize", scope: !3, file: !3, line: 166, type: !5230, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!186, !4221, !4218}
!5232 = !DILocalVariable(name: "xbox_remote", arg: 1, scope: !5229, file: !3, line: 166, type: !4221)
!5233 = !DILocation(line: 166, column: 55, scope: !5229)
!5234 = !DILocalVariable(name: "endpoint_in", arg: 2, scope: !5229, file: !3, line: 167, type: !4218)
!5235 = !DILocation(line: 167, column: 39, scope: !5229)
!5236 = !DILocalVariable(name: "udev", scope: !5229, file: !3, line: 169, type: !182)
!5237 = !DILocation(line: 169, column: 21, scope: !5229)
!5238 = !DILocation(line: 169, column: 28, scope: !5229)
!5239 = !DILocation(line: 169, column: 41, scope: !5229)
!5240 = !DILocalVariable(name: "pipe", scope: !5229, file: !3, line: 170, type: !186)
!5241 = !DILocation(line: 170, column: 6, scope: !5229)
!5242 = !DILocalVariable(name: "maxp", scope: !5229, file: !3, line: 170, type: !186)
!5243 = !DILocation(line: 170, column: 12, scope: !5229)
!5244 = !DILocation(line: 173, column: 9, scope: !5229)
!5245 = !DILocation(line: 173, column: 7, scope: !5229)
!5246 = !DILocation(line: 174, column: 23, scope: !5229)
!5247 = !DILocation(line: 174, column: 29, scope: !5229)
!5248 = !DILocation(line: 174, column: 35, scope: !5229)
!5249 = !DILocation(line: 174, column: 9, scope: !5229)
!5250 = !DILocation(line: 174, column: 7, scope: !5229)
!5251 = !DILocation(line: 175, column: 10, scope: !5229)
!5252 = !DILocation(line: 175, column: 15, scope: !5229)
!5253 = !DILocation(line: 175, column: 9, scope: !5229)
!5254 = !DILocation(line: 175, column: 48, scope: !5229)
!5255 = !DILocation(line: 175, column: 7, scope: !5229)
!5256 = !DILocation(line: 177, column: 19, scope: !5229)
!5257 = !DILocation(line: 177, column: 32, scope: !5229)
!5258 = !DILocation(line: 177, column: 41, scope: !5229)
!5259 = !DILocation(line: 177, column: 47, scope: !5229)
!5260 = !DILocation(line: 177, column: 53, scope: !5229)
!5261 = !DILocation(line: 177, column: 66, scope: !5229)
!5262 = !DILocation(line: 178, column: 5, scope: !5229)
!5263 = !DILocation(line: 178, column: 31, scope: !5229)
!5264 = !DILocation(line: 179, column: 5, scope: !5229)
!5265 = !DILocation(line: 179, column: 18, scope: !5229)
!5266 = !DILocation(line: 177, column: 2, scope: !5229)
!5267 = !DILocation(line: 181, column: 2, scope: !5229)
!5268 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5269, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !3994, !181}
!5271 = !DILocalVariable(name: "intf", arg: 1, scope: !5268, file: !6, line: 268, type: !3994)
!5272 = !DILocation(line: 268, column: 59, scope: !5268)
!5273 = !DILocalVariable(name: "data", arg: 2, scope: !5268, file: !6, line: 268, type: !181)
!5274 = !DILocation(line: 268, column: 71, scope: !5268)
!5275 = !DILocation(line: 270, column: 19, scope: !5268)
!5276 = !DILocation(line: 270, column: 25, scope: !5268)
!5277 = !DILocation(line: 270, column: 30, scope: !5268)
!5278 = !DILocation(line: 270, column: 2, scope: !5268)
!5279 = !DILocation(line: 271, column: 1, scope: !5268)
!5280 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !101, file: !101, line: 542, type: !4866, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5281 = !DILocalVariable(name: "epd", arg: 1, scope: !5280, file: !101, line: 543, type: !4868)
!5282 = !DILocation(line: 543, column: 43, scope: !5280)
!5283 = !DILocation(line: 545, column: 11, scope: !5280)
!5284 = !DILocation(line: 545, column: 16, scope: !5280)
!5285 = !DILocation(line: 545, column: 29, scope: !5280)
!5286 = !DILocation(line: 545, column: 59, scope: !5280)
!5287 = !DILocation(line: 545, column: 2, scope: !5280)
!5288 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !101, file: !101, line: 492, type: !4866, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5289 = !DILocalVariable(name: "epd", arg: 1, scope: !5288, file: !101, line: 492, type: !4868)
!5290 = !DILocation(line: 492, column: 77, scope: !5288)
!5291 = !DILocation(line: 494, column: 11, scope: !5288)
!5292 = !DILocation(line: 494, column: 16, scope: !5288)
!5293 = !DILocation(line: 494, column: 33, scope: !5288)
!5294 = !DILocation(line: 494, column: 58, scope: !5288)
!5295 = !DILocation(line: 494, column: 2, scope: !5288)
!5296 = distinct !DISubprogram(name: "get_order", scope: !5297, file: !5297, line: 29, type: !5298, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5297 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!186, !328}
!5300 = !DILocalVariable(name: "x", arg: 1, scope: !5301, file: !5302, line: 366, type: !422)
!5301 = distinct !DISubprogram(name: "fls64", scope: !5302, file: !5302, line: 366, type: !5303, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5302 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!186, !422}
!5305 = !DILocation(line: 366, column: 40, scope: !5301, inlinedAt: !5306)
!5306 = distinct !DILocation(line: 46, column: 9, scope: !5296)
!5307 = !DILocalVariable(name: "bitpos", scope: !5301, file: !5302, line: 368, type: !186)
!5308 = !DILocation(line: 368, column: 6, scope: !5301, inlinedAt: !5306)
!5309 = !DILocalVariable(name: "size", arg: 1, scope: !5296, file: !5297, line: 29, type: !328)
!5310 = !DILocation(line: 29, column: 63, scope: !5296)
!5311 = !DILocation(line: 31, column: 27, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5296, file: !5297, line: 31, column: 6)
!5313 = !DILocation(line: 31, column: 6, scope: !5312)
!5314 = !DILocation(line: 31, column: 6, scope: !5296)
!5315 = !DILocation(line: 32, column: 8, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !5297, line: 32, column: 7)
!5317 = distinct !DILexicalBlock(scope: !5312, file: !5297, line: 31, column: 34)
!5318 = !DILocation(line: 32, column: 7, scope: !5317)
!5319 = !DILocation(line: 33, column: 4, scope: !5316)
!5320 = !DILocation(line: 35, column: 7, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5317, file: !5297, line: 35, column: 7)
!5322 = !DILocation(line: 35, column: 12, scope: !5321)
!5323 = !DILocation(line: 35, column: 7, scope: !5317)
!5324 = !DILocation(line: 36, column: 4, scope: !5321)
!5325 = !DILocation(line: 38, column: 10, scope: !5317)
!5326 = !DILocation(line: 38, column: 28, scope: !5317)
!5327 = !DILocation(line: 38, column: 41, scope: !5317)
!5328 = !DILocation(line: 38, column: 3, scope: !5317)
!5329 = !DILocation(line: 41, column: 6, scope: !5296)
!5330 = !DILocation(line: 42, column: 7, scope: !5296)
!5331 = !DILocation(line: 46, column: 15, scope: !5296)
!5332 = !DILocation(line: 374, column: 2, scope: !5301, inlinedAt: !5306)
!5333 = !DILocation(line: 376, column: 14, scope: !5301, inlinedAt: !5306)
!5334 = !{i32 308134}
!5335 = !DILocation(line: 377, column: 9, scope: !5301, inlinedAt: !5306)
!5336 = !DILocation(line: 377, column: 16, scope: !5301, inlinedAt: !5306)
!5337 = !DILocation(line: 46, column: 2, scope: !5296)
!5338 = !DILocation(line: 48, column: 1, scope: !5296)
!5339 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5340, file: !5340, line: 30, type: !5341, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5340 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5341 = !DISubroutineType(types: !5342)
!5342 = !{!186, !421}
!5343 = !DILocation(line: 366, column: 40, scope: !5301, inlinedAt: !5344)
!5344 = distinct !DILocation(line: 32, column: 9, scope: !5339)
!5345 = !DILocation(line: 368, column: 6, scope: !5301, inlinedAt: !5344)
!5346 = !DILocalVariable(name: "n", arg: 1, scope: !5339, file: !5340, line: 30, type: !421)
!5347 = !DILocation(line: 30, column: 21, scope: !5339)
!5348 = !DILocation(line: 32, column: 15, scope: !5339)
!5349 = !DILocation(line: 374, column: 2, scope: !5301, inlinedAt: !5344)
!5350 = !DILocation(line: 376, column: 14, scope: !5301, inlinedAt: !5344)
!5351 = !DILocation(line: 377, column: 9, scope: !5301, inlinedAt: !5344)
!5352 = !DILocation(line: 377, column: 16, scope: !5301, inlinedAt: !5344)
!5353 = !DILocation(line: 32, column: 18, scope: !5339)
!5354 = !DILocation(line: 32, column: 2, scope: !5339)
!5355 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5356, file: !5356, line: 137, type: !5357, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5356 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!181, !934, !2123, !325, !179}
!5359 = !DILocalVariable(name: "s", arg: 1, scope: !5355, file: !5356, line: 137, type: !934)
!5360 = !DILocation(line: 137, column: 54, scope: !5355)
!5361 = !DILocalVariable(name: "object", arg: 2, scope: !5355, file: !5356, line: 137, type: !2123)
!5362 = !DILocation(line: 137, column: 69, scope: !5355)
!5363 = !DILocalVariable(name: "size", arg: 3, scope: !5355, file: !5356, line: 138, type: !325)
!5364 = !DILocation(line: 138, column: 12, scope: !5355)
!5365 = !DILocalVariable(name: "flags", arg: 4, scope: !5355, file: !5356, line: 138, type: !179)
!5366 = !DILocation(line: 138, column: 24, scope: !5355)
!5367 = !DILocation(line: 140, column: 17, scope: !5355)
!5368 = !DILocation(line: 140, column: 2, scope: !5355)
!5369 = distinct !DISubprogram(name: "xbox_remote_rc_open", scope: !3, file: !3, line: 64, type: !4572, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5370 = !DILocalVariable(name: "rdev", arg: 1, scope: !5369, file: !3, line: 64, type: !4225)
!5371 = !DILocation(line: 64, column: 47, scope: !5369)
!5372 = !DILocalVariable(name: "xbox_remote", scope: !5369, file: !3, line: 66, type: !4221)
!5373 = !DILocation(line: 66, column: 22, scope: !5369)
!5374 = !DILocation(line: 66, column: 36, scope: !5369)
!5375 = !DILocation(line: 66, column: 42, scope: !5369)
!5376 = !DILocation(line: 69, column: 30, scope: !5369)
!5377 = !DILocation(line: 69, column: 43, scope: !5369)
!5378 = !DILocation(line: 69, column: 2, scope: !5369)
!5379 = !DILocation(line: 69, column: 15, scope: !5369)
!5380 = !DILocation(line: 69, column: 24, scope: !5369)
!5381 = !DILocation(line: 69, column: 28, scope: !5369)
!5382 = !DILocation(line: 70, column: 21, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 70, column: 6)
!5384 = !DILocation(line: 70, column: 34, scope: !5383)
!5385 = !DILocation(line: 70, column: 6, scope: !5383)
!5386 = !DILocation(line: 70, column: 6, scope: !5369)
!5387 = !DILocation(line: 71, column: 3, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 70, column: 56)
!5389 = !DILocation(line: 73, column: 3, scope: !5388)
!5390 = !DILocation(line: 76, column: 2, scope: !5369)
!5391 = !DILocation(line: 77, column: 1, scope: !5369)
!5392 = distinct !DISubprogram(name: "xbox_remote_rc_close", scope: !3, file: !3, line: 79, type: !4576, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5393 = !DILocalVariable(name: "rdev", arg: 1, scope: !5392, file: !3, line: 79, type: !4225)
!5394 = !DILocation(line: 79, column: 49, scope: !5392)
!5395 = !DILocalVariable(name: "xbox_remote", scope: !5392, file: !3, line: 81, type: !4221)
!5396 = !DILocation(line: 81, column: 22, scope: !5392)
!5397 = !DILocation(line: 81, column: 36, scope: !5392)
!5398 = !DILocation(line: 81, column: 42, scope: !5392)
!5399 = !DILocation(line: 83, column: 15, scope: !5392)
!5400 = !DILocation(line: 83, column: 28, scope: !5392)
!5401 = !DILocation(line: 83, column: 2, scope: !5392)
!5402 = !DILocation(line: 84, column: 1, scope: !5392)
!5403 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5404, file: !5404, line: 18, type: !5405, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5404 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5405 = !DISubroutineType(types: !5406)
!5406 = !{null, !5407, !5409}
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5408, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!5410 = !DILocalVariable(name: "dev", arg: 1, scope: !5403, file: !5404, line: 18, type: !5407)
!5411 = !DILocation(line: 18, column: 42, scope: !5403)
!5412 = !DILocalVariable(name: "id", arg: 2, scope: !5403, file: !5404, line: 18, type: !5409)
!5413 = !DILocation(line: 18, column: 64, scope: !5403)
!5414 = !DILocation(line: 20, column: 2, scope: !5403)
!5415 = !DILocation(line: 20, column: 6, scope: !5403)
!5416 = !DILocation(line: 20, column: 14, scope: !5403)
!5417 = !DILocation(line: 21, column: 15, scope: !5403)
!5418 = !DILocation(line: 21, column: 2, scope: !5403)
!5419 = !DILocation(line: 21, column: 6, scope: !5403)
!5420 = !DILocation(line: 21, column: 13, scope: !5403)
!5421 = !DILocation(line: 22, column: 16, scope: !5403)
!5422 = !DILocation(line: 22, column: 2, scope: !5403)
!5423 = !DILocation(line: 22, column: 6, scope: !5403)
!5424 = !DILocation(line: 22, column: 14, scope: !5403)
!5425 = !DILocation(line: 23, column: 16, scope: !5403)
!5426 = !DILocation(line: 23, column: 2, scope: !5403)
!5427 = !DILocation(line: 23, column: 6, scope: !5403)
!5428 = !DILocation(line: 23, column: 14, scope: !5403)
!5429 = !DILocation(line: 24, column: 1, scope: !5403)
!5430 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5431, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!7, !182, !7}
!5433 = !DILocalVariable(name: "dev", arg: 1, scope: !5430, file: !6, line: 1945, type: !182)
!5434 = !DILocation(line: 1945, column: 61, scope: !5430)
!5435 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5430, file: !6, line: 1946, type: !7)
!5436 = !DILocation(line: 1946, column: 16, scope: !5430)
!5437 = !DILocation(line: 1948, column: 10, scope: !5430)
!5438 = !DILocation(line: 1948, column: 15, scope: !5430)
!5439 = !DILocation(line: 1948, column: 22, scope: !5430)
!5440 = !DILocation(line: 1948, column: 31, scope: !5430)
!5441 = !DILocation(line: 1948, column: 40, scope: !5430)
!5442 = !DILocation(line: 1948, column: 28, scope: !5430)
!5443 = !DILocation(line: 1948, column: 2, scope: !5430)
!5444 = distinct !DISubprogram(name: "usb_maxpacket", scope: !6, file: !6, line: 1980, type: !5445, scopeLine: 1981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!174, !182, !186, !186}
!5447 = !DILocalVariable(name: "udev", arg: 1, scope: !5444, file: !6, line: 1980, type: !182)
!5448 = !DILocation(line: 1980, column: 34, scope: !5444)
!5449 = !DILocalVariable(name: "pipe", arg: 2, scope: !5444, file: !6, line: 1980, type: !186)
!5450 = !DILocation(line: 1980, column: 44, scope: !5444)
!5451 = !DILocalVariable(name: "is_out", arg: 3, scope: !5444, file: !6, line: 1980, type: !186)
!5452 = !DILocation(line: 1980, column: 54, scope: !5444)
!5453 = !DILocalVariable(name: "ep", scope: !5444, file: !6, line: 1982, type: !4016)
!5454 = !DILocation(line: 1982, column: 28, scope: !5444)
!5455 = !DILocalVariable(name: "epnum", scope: !5444, file: !6, line: 1983, type: !7)
!5456 = !DILocation(line: 1983, column: 13, scope: !5444)
!5457 = !DILocation(line: 1983, column: 21, scope: !5444)
!5458 = !DILocation(line: 1985, column: 6, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5444, file: !6, line: 1985, column: 6)
!5460 = !DILocation(line: 1985, column: 6, scope: !5444)
!5461 = !DILocalVariable(name: "__ret_warn_on", scope: !5462, file: !6, line: 1986, type: !186)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !6, line: 1986, column: 3)
!5463 = distinct !DILexicalBlock(scope: !5459, file: !6, line: 1985, column: 14)
!5464 = !DILocation(line: 1986, column: 3, scope: !5462)
!5465 = !DILocation(line: 1986, column: 3, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5462, file: !6, line: 1986, column: 3)
!5467 = !DILocation(line: 1986, column: 3, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5466, file: !6, line: 1986, column: 3)
!5469 = !DILocation(line: 1986, column: 3, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5468, file: !6, line: 1986, column: 3)
!5471 = !DILocation(line: 1986, column: 3, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5468, file: !6, line: 1986, column: 3)
!5473 = !{i32 -2142628311, i32 -2142628282, i32 -2142628236, i32 -2142628178, i32 -2142628124, i32 -2142628070, i32 -2142628015, i32 -2142627984}
!5474 = !DILocation(line: 1986, column: 3, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5468, file: !6, line: 1986, column: 3)
!5476 = !{i32 -2142627582, i32 -2142627575, i32 -2142627523, i32 -2142627492, i32 -2142627462}
!5477 = !DILocation(line: 1986, column: 3, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5468, file: !6, line: 1986, column: 3)
!5479 = !DILocation(line: 1987, column: 8, scope: !5463)
!5480 = !DILocation(line: 1987, column: 14, scope: !5463)
!5481 = !DILocation(line: 1987, column: 21, scope: !5463)
!5482 = !DILocation(line: 1987, column: 6, scope: !5463)
!5483 = !DILocation(line: 1988, column: 2, scope: !5463)
!5484 = !DILocalVariable(name: "__ret_warn_on", scope: !5485, file: !6, line: 1989, type: !186)
!5485 = distinct !DILexicalBlock(scope: !5486, file: !6, line: 1989, column: 3)
!5486 = distinct !DILexicalBlock(scope: !5459, file: !6, line: 1988, column: 9)
!5487 = !DILocation(line: 1989, column: 3, scope: !5485)
!5488 = !DILocation(line: 1989, column: 3, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5485, file: !6, line: 1989, column: 3)
!5490 = !DILocation(line: 1989, column: 3, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5489, file: !6, line: 1989, column: 3)
!5492 = !DILocation(line: 1989, column: 3, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5491, file: !6, line: 1989, column: 3)
!5494 = !DILocation(line: 1989, column: 3, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5491, file: !6, line: 1989, column: 3)
!5496 = !{i32 -2142626810, i32 -2142626781, i32 -2142626735, i32 -2142626677, i32 -2142626623, i32 -2142626569, i32 -2142626514, i32 -2142626483}
!5497 = !DILocation(line: 1989, column: 3, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5491, file: !6, line: 1989, column: 3)
!5499 = !{i32 -2142626081, i32 -2142626074, i32 -2142626022, i32 -2142625991, i32 -2142625961}
!5500 = !DILocation(line: 1989, column: 3, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5491, file: !6, line: 1989, column: 3)
!5502 = !DILocation(line: 1990, column: 8, scope: !5486)
!5503 = !DILocation(line: 1990, column: 14, scope: !5486)
!5504 = !DILocation(line: 1990, column: 20, scope: !5486)
!5505 = !DILocation(line: 1990, column: 6, scope: !5486)
!5506 = !DILocation(line: 1992, column: 7, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5444, file: !6, line: 1992, column: 6)
!5508 = !DILocation(line: 1992, column: 6, scope: !5444)
!5509 = !DILocation(line: 1993, column: 3, scope: !5507)
!5510 = !DILocation(line: 1996, column: 28, scope: !5444)
!5511 = !DILocation(line: 1996, column: 32, scope: !5444)
!5512 = !DILocation(line: 1996, column: 9, scope: !5444)
!5513 = !DILocation(line: 1996, column: 2, scope: !5444)
!5514 = !DILocation(line: 1997, column: 1, scope: !5444)
!5515 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5516, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{null, !4614, !182, !7, !181, !186, !4663, !181, !186}
!5518 = !DILocalVariable(name: "urb", arg: 1, scope: !5515, file: !6, line: 1688, type: !4614)
!5519 = !DILocation(line: 1688, column: 49, scope: !5515)
!5520 = !DILocalVariable(name: "dev", arg: 2, scope: !5515, file: !6, line: 1689, type: !182)
!5521 = !DILocation(line: 1689, column: 28, scope: !5515)
!5522 = !DILocalVariable(name: "pipe", arg: 3, scope: !5515, file: !6, line: 1690, type: !7)
!5523 = !DILocation(line: 1690, column: 22, scope: !5515)
!5524 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5515, file: !6, line: 1691, type: !181)
!5525 = !DILocation(line: 1691, column: 15, scope: !5515)
!5526 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5515, file: !6, line: 1692, type: !186)
!5527 = !DILocation(line: 1692, column: 13, scope: !5515)
!5528 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5515, file: !6, line: 1693, type: !4663)
!5529 = !DILocation(line: 1693, column: 24, scope: !5515)
!5530 = !DILocalVariable(name: "context", arg: 7, scope: !5515, file: !6, line: 1694, type: !181)
!5531 = !DILocation(line: 1694, column: 15, scope: !5515)
!5532 = !DILocalVariable(name: "interval", arg: 8, scope: !5515, file: !6, line: 1695, type: !186)
!5533 = !DILocation(line: 1695, column: 13, scope: !5515)
!5534 = !DILocation(line: 1697, column: 13, scope: !5515)
!5535 = !DILocation(line: 1697, column: 2, scope: !5515)
!5536 = !DILocation(line: 1697, column: 7, scope: !5515)
!5537 = !DILocation(line: 1697, column: 11, scope: !5515)
!5538 = !DILocation(line: 1698, column: 14, scope: !5515)
!5539 = !DILocation(line: 1698, column: 2, scope: !5515)
!5540 = !DILocation(line: 1698, column: 7, scope: !5515)
!5541 = !DILocation(line: 1698, column: 12, scope: !5515)
!5542 = !DILocation(line: 1699, column: 25, scope: !5515)
!5543 = !DILocation(line: 1699, column: 2, scope: !5515)
!5544 = !DILocation(line: 1699, column: 7, scope: !5515)
!5545 = !DILocation(line: 1699, column: 23, scope: !5515)
!5546 = !DILocation(line: 1700, column: 32, scope: !5515)
!5547 = !DILocation(line: 1700, column: 2, scope: !5515)
!5548 = !DILocation(line: 1700, column: 7, scope: !5515)
!5549 = !DILocation(line: 1700, column: 30, scope: !5515)
!5550 = !DILocation(line: 1701, column: 18, scope: !5515)
!5551 = !DILocation(line: 1701, column: 2, scope: !5515)
!5552 = !DILocation(line: 1701, column: 7, scope: !5515)
!5553 = !DILocation(line: 1701, column: 16, scope: !5515)
!5554 = !DILocation(line: 1702, column: 17, scope: !5515)
!5555 = !DILocation(line: 1702, column: 2, scope: !5515)
!5556 = !DILocation(line: 1702, column: 7, scope: !5515)
!5557 = !DILocation(line: 1702, column: 15, scope: !5515)
!5558 = !DILocation(line: 1704, column: 6, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5515, file: !6, line: 1704, column: 6)
!5560 = !DILocation(line: 1704, column: 11, scope: !5559)
!5561 = !DILocation(line: 1704, column: 17, scope: !5559)
!5562 = !DILocation(line: 1704, column: 35, scope: !5559)
!5563 = !DILocation(line: 1704, column: 38, scope: !5559)
!5564 = !DILocation(line: 1704, column: 43, scope: !5559)
!5565 = !DILocation(line: 1704, column: 49, scope: !5559)
!5566 = !DILocation(line: 1704, column: 6, scope: !5515)
!5567 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5568, file: !6, line: 1706, type: !186)
!5568 = distinct !DILexicalBlock(scope: !5569, file: !6, line: 1706, column: 14)
!5569 = distinct !DILexicalBlock(scope: !5559, file: !6, line: 1704, column: 69)
!5570 = !DILocation(line: 1706, column: 14, scope: !5568)
!5571 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5572, file: !6, line: 1706, type: !186)
!5572 = distinct !DILexicalBlock(scope: !5568, file: !6, line: 1706, column: 14)
!5573 = !DILocation(line: 1706, column: 14, scope: !5572)
!5574 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5572, file: !6, line: 1706, type: !186)
!5575 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5568, file: !6, line: 1706, type: !186)
!5576 = !DILocation(line: 1706, column: 12, scope: !5569)
!5577 = !DILocation(line: 1708, column: 25, scope: !5569)
!5578 = !DILocation(line: 1708, column: 34, scope: !5569)
!5579 = !DILocation(line: 1708, column: 21, scope: !5569)
!5580 = !DILocation(line: 1708, column: 3, scope: !5569)
!5581 = !DILocation(line: 1708, column: 8, scope: !5569)
!5582 = !DILocation(line: 1708, column: 17, scope: !5569)
!5583 = !DILocation(line: 1709, column: 2, scope: !5569)
!5584 = !DILocation(line: 1710, column: 19, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5559, file: !6, line: 1709, column: 9)
!5586 = !DILocation(line: 1710, column: 3, scope: !5585)
!5587 = !DILocation(line: 1710, column: 8, scope: !5585)
!5588 = !DILocation(line: 1710, column: 17, scope: !5585)
!5589 = !DILocation(line: 1713, column: 2, scope: !5515)
!5590 = !DILocation(line: 1713, column: 7, scope: !5515)
!5591 = !DILocation(line: 1713, column: 19, scope: !5515)
!5592 = !DILocation(line: 1714, column: 1, scope: !5515)
!5593 = distinct !DISubprogram(name: "xbox_remote_irq_in", scope: !3, file: !3, line: 117, type: !4665, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5594 = !DILocalVariable(name: "urb", arg: 1, scope: !5593, file: !3, line: 117, type: !4614)
!5595 = !DILocation(line: 117, column: 44, scope: !5593)
!5596 = !DILocalVariable(name: "xbox_remote", scope: !5593, file: !3, line: 119, type: !4221)
!5597 = !DILocation(line: 119, column: 22, scope: !5593)
!5598 = !DILocation(line: 119, column: 36, scope: !5593)
!5599 = !DILocation(line: 119, column: 41, scope: !5593)
!5600 = !DILocalVariable(name: "retval", scope: !5593, file: !3, line: 120, type: !186)
!5601 = !DILocation(line: 120, column: 6, scope: !5593)
!5602 = !DILocation(line: 122, column: 10, scope: !5593)
!5603 = !DILocation(line: 122, column: 15, scope: !5593)
!5604 = !DILocation(line: 122, column: 2, scope: !5593)
!5605 = !DILocation(line: 124, column: 28, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 122, column: 23)
!5607 = !DILocation(line: 124, column: 3, scope: !5606)
!5608 = !DILocation(line: 125, column: 3, scope: !5606)
!5609 = !DILocation(line: 132, column: 3, scope: !5606)
!5610 = !DILocation(line: 137, column: 2, scope: !5606)
!5611 = !DILocation(line: 139, column: 26, scope: !5593)
!5612 = !DILocation(line: 139, column: 11, scope: !5593)
!5613 = !DILocation(line: 139, column: 9, scope: !5593)
!5614 = !DILocation(line: 140, column: 6, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 140, column: 6)
!5616 = !DILocation(line: 140, column: 6, scope: !5593)
!5617 = !DILocation(line: 141, column: 3, scope: !5615)
!5618 = !DILocation(line: 144, column: 1, scope: !5593)
!5619 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !101, file: !101, line: 647, type: !4866, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5620 = !DILocalVariable(name: "epd", arg: 1, scope: !5619, file: !101, line: 647, type: !4868)
!5621 = !DILocation(line: 647, column: 75, scope: !5619)
!5622 = !DILocation(line: 649, column: 9, scope: !5619)
!5623 = !DILocation(line: 649, column: 44, scope: !5619)
!5624 = !DILocation(line: 649, column: 2, scope: !5619)
!5625 = distinct !DISubprogram(name: "xbox_remote_input_report", scope: !3, file: !3, line: 89, type: !4665, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5626 = !DILocalVariable(name: "p", arg: 1, scope: !5627, file: !5628, line: 64, type: !5631)
!5627 = distinct !DISubprogram(name: "__le16_to_cpup", scope: !5628, file: !5628, line: 64, type: !5629, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5628 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!174, !5631}
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!5633 = !DILocation(line: 64, column: 59, scope: !5627, inlinedAt: !5634)
!5634 = distinct !DILocation(line: 111, column: 6, scope: !5625)
!5635 = !DILocalVariable(name: "urb", arg: 1, scope: !5625, file: !3, line: 89, type: !4614)
!5636 = !DILocation(line: 89, column: 50, scope: !5625)
!5637 = !DILocalVariable(name: "xbox_remote", scope: !5625, file: !3, line: 91, type: !4221)
!5638 = !DILocation(line: 91, column: 22, scope: !5625)
!5639 = !DILocation(line: 91, column: 36, scope: !5625)
!5640 = !DILocation(line: 91, column: 41, scope: !5625)
!5641 = !DILocalVariable(name: "data", scope: !5625, file: !3, line: 92, type: !3880)
!5642 = !DILocation(line: 92, column: 17, scope: !5625)
!5643 = !DILocation(line: 92, column: 24, scope: !5625)
!5644 = !DILocation(line: 92, column: 37, scope: !5625)
!5645 = !DILocation(line: 104, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 104, column: 6)
!5647 = !DILocation(line: 104, column: 11, scope: !5646)
!5648 = !DILocation(line: 104, column: 25, scope: !5646)
!5649 = !DILocation(line: 104, column: 30, scope: !5646)
!5650 = !DILocation(line: 104, column: 33, scope: !5646)
!5651 = !DILocation(line: 104, column: 38, scope: !5646)
!5652 = !DILocation(line: 104, column: 55, scope: !5646)
!5653 = !DILocation(line: 104, column: 52, scope: !5646)
!5654 = !DILocation(line: 104, column: 6, scope: !5625)
!5655 = !DILocation(line: 105, column: 3, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 104, column: 64)
!5657 = !DILocation(line: 107, column: 3, scope: !5656)
!5658 = !DILocation(line: 110, column: 13, scope: !5625)
!5659 = !DILocation(line: 110, column: 26, scope: !5625)
!5660 = !DILocation(line: 111, column: 30, scope: !5625)
!5661 = !DILocation(line: 111, column: 35, scope: !5625)
!5662 = !DILocation(line: 111, column: 19, scope: !5625)
!5663 = !DILocation(line: 66, column: 25, scope: !5627, inlinedAt: !5634)
!5664 = !DILocation(line: 66, column: 24, scope: !5627, inlinedAt: !5634)
!5665 = !DILocation(line: 111, column: 6, scope: !5625)
!5666 = !DILocation(line: 110, column: 2, scope: !5625)
!5667 = !DILocation(line: 112, column: 1, scope: !5625)
!5668 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !5669, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{null, !214, !181}
!5671 = !DILocalVariable(name: "dev", arg: 1, scope: !5668, file: !80, line: 660, type: !214)
!5672 = !DILocation(line: 660, column: 51, scope: !5668)
!5673 = !DILocalVariable(name: "data", arg: 2, scope: !5668, file: !80, line: 660, type: !181)
!5674 = !DILocation(line: 660, column: 62, scope: !5668)
!5675 = !DILocation(line: 662, column: 21, scope: !5668)
!5676 = !DILocation(line: 662, column: 2, scope: !5668)
!5677 = !DILocation(line: 662, column: 7, scope: !5668)
!5678 = !DILocation(line: 662, column: 19, scope: !5668)
!5679 = !DILocation(line: 663, column: 1, scope: !5668)
!5680 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !5681, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!181, !3994}
!5683 = !DILocalVariable(name: "intf", arg: 1, scope: !5680, file: !6, line: 263, type: !3994)
!5684 = !DILocation(line: 263, column: 60, scope: !5680)
!5685 = !DILocation(line: 265, column: 26, scope: !5680)
!5686 = !DILocation(line: 265, column: 32, scope: !5680)
!5687 = !DILocation(line: 265, column: 9, scope: !5680)
!5688 = !DILocation(line: 265, column: 2, scope: !5680)
!5689 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !5690, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !252)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!181, !3712}
!5692 = !DILocalVariable(name: "dev", arg: 1, scope: !5689, file: !80, line: 655, type: !3712)
!5693 = !DILocation(line: 655, column: 58, scope: !5689)
!5694 = !DILocation(line: 657, column: 9, scope: !5689)
!5695 = !DILocation(line: 657, column: 14, scope: !5689)
!5696 = !DILocation(line: 657, column: 2, scope: !5689)
