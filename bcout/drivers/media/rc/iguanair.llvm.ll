; ModuleID = '../bcout/drivers/media/rc/iguanair.llvm.bc'
source_filename = "drivers/media/rc/iguanair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_iguanair_driver_init6:\09\09\09"
module asm ".long\09iguanair_driver_init - .\09\09\09"
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
%struct.iguanair = type { %struct.rc_dev*, %struct.device*, %struct.usb_device*, i16, i8, i8, i8, i64, i64, i8*, %struct.urb*, %struct.urb*, %struct.completion, i8, i32, %struct.send_packet*, [64 x i8], [64 x i8] }
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
%struct.send_packet = type { %struct.packet, i8, i8, i8, i8, [0 x i8] }
%struct.packet = type { i16, i8, i8 }
%struct.ir_raw_event = type { %union.anon.66, i8, i8 }
%union.anon.66 = type { i32 }

@__UNIQUE_ID___addressable_iguanair_driver_init239 = internal global i8* bitcast (i32 ()* @iguanair_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@iguanair_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @iguanair_probe, void (%struct.usb_interface*)* @iguanair_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @iguanair_suspend, i32 (%struct.usb_interface*)* @iguanair_resume, i32 (%struct.usb_interface*)* @iguanair_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @iguanair_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 8 }, align 8, !dbg !4132
@__exitcall_iguanair_driver_exit = internal global void ()* @iguanair_driver_exit, section ".exitcall.exit", align 8, !dbg !4107
@__UNIQUE_ID_description240 = internal constant [52 x i8] c"iguanair.description=IguanaWorks USB IR Transceiver\00", section ".modinfo", align 1, !dbg !4112
@__UNIQUE_ID_author241 = internal constant [43 x i8] c"iguanair.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1, !dbg !4117
@__UNIQUE_ID_file242 = internal constant [40 x i8] c"iguanair.file=drivers/media/rc/iguanair\00", section ".modinfo", align 1, !dbg !4122
@__UNIQUE_ID_license243 = internal constant [21 x i8] c"iguanair.license=GPL\00", section ".modinfo", align 1, !dbg !4127
@.str = private unnamed_addr constant [9 x i8] c"iguanair\00", align 1
@iguanair_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6017, i16 2360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4198
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to submit urb: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"IguanaWorks USB IR Transceiver version 0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rc-rc6-mce\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to register rc device %d\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4193
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to resubmit urb: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"receive overflow\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"control code %02x received\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"failed to get version\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"firmware 0x%04x is too old\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to get buffer size\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"buffer size %u larger than expected\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"failed to get features\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"failed to disable receiver: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"failed to disable receiver for suspend\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"failed to enable receiver after resume\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_iguanair_driver_init239 to i8*), i8* bitcast (void ()* @iguanair_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_iguanair_driver_exit to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_description240, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_author241, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file242, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license243, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_driver_init() #0 section ".init.text" !dbg !4206 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @iguanair_driver, %struct.module* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4209
  ret i32 %call, !dbg !4209
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @iguanair_driver_exit() #0 section ".exit.text" !dbg !4210 {
entry:
  call void @usb_deregister(%struct.usb_driver* @iguanair_driver) #9, !dbg !4211
  ret void, !dbg !4211
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !4212 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %ir = alloca %struct.iguanair*, align 8
  %rc = alloca %struct.rc_dev*, align 8
  %ret = alloca i32, align 4
  %pipein = alloca i32, align 4
  %pipeout = alloca i32, align 4
  %idesc = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4217, metadata !DIExpression()), !dbg !4218
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4219
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4220
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4218
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !4221, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rc, metadata !4710, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4712, metadata !DIExpression()), !dbg !4713
  call void @llvm.dbg.declare(metadata i32* %pipein, metadata !4714, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.declare(metadata i32* %pipeout, metadata !4716, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %idesc, metadata !4718, metadata !DIExpression()), !dbg !4719
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4720
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4721
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4721
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %idesc, align 8, !dbg !4722
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %idesc, align 8, !dbg !4723
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %3, i32 0, i32 0, !dbg !4725
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4726
  %4 = load i8, i8* %bNumEndpoints, align 4, !dbg !4726
  %conv = zext i8 %4 to i32, !dbg !4723
  %cmp = icmp slt i32 %conv, 2, !dbg !4727
  br i1 %cmp, label %if.then, label %if.end, !dbg !4728

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4729
  br label %return, !dbg !4729

if.end:                                           ; preds = %entry
  %call2 = call i8* @kzalloc(i64 240, i32 3264) #9, !dbg !4730
  %5 = bitcast i8* %call2 to %struct.iguanair*, !dbg !4730
  store %struct.iguanair* %5, %struct.iguanair** %ir, align 8, !dbg !4731
  %call3 = call %struct.rc_dev* @rc_allocate_device(i32 1) #9, !dbg !4732
  store %struct.rc_dev* %call3, %struct.rc_dev** %rc, align 8, !dbg !4733
  %6 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4734
  %tobool = icmp ne %struct.iguanair* %6, null, !dbg !4734
  br i1 %tobool, label %lor.lhs.false, label %if.then5, !dbg !4736

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4737
  %tobool4 = icmp ne %struct.rc_dev* %7, null, !dbg !4737
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4738

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -12, i32* %ret, align 4, !dbg !4739
  br label %out, !dbg !4741

if.end6:                                          ; preds = %lor.lhs.false
  %8 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4742
  %9 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4743
  %dma_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %9, i32 0, i32 7, !dbg !4744
  %call7 = call i8* @usb_alloc_coherent(%struct.usb_device* %8, i64 8, i32 3264, i64* %dma_in) #9, !dbg !4745
  %10 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4746
  %buf_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %10, i32 0, i32 9, !dbg !4747
  store i8* %call7, i8** %buf_in, align 8, !dbg !4748
  %11 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4749
  %12 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4750
  %dma_out = getelementptr inbounds %struct.iguanair, %struct.iguanair* %12, i32 0, i32 8, !dbg !4751
  %call8 = call i8* @usb_alloc_coherent(%struct.usb_device* %11, i64 160, i32 3264, i64* %dma_out) #9, !dbg !4752
  %13 = bitcast i8* %call8 to %struct.send_packet*, !dbg !4752
  %14 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4753
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %14, i32 0, i32 15, !dbg !4754
  store %struct.send_packet* %13, %struct.send_packet** %packet, align 8, !dbg !4755
  %call9 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4756
  %15 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4757
  %urb_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %15, i32 0, i32 10, !dbg !4758
  store %struct.urb* %call9, %struct.urb** %urb_in, align 8, !dbg !4759
  %call10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4760
  %16 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4761
  %urb_out = getelementptr inbounds %struct.iguanair, %struct.iguanair* %16, i32 0, i32 11, !dbg !4762
  store %struct.urb* %call10, %struct.urb** %urb_out, align 8, !dbg !4763
  %17 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4764
  %buf_in11 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %17, i32 0, i32 9, !dbg !4766
  %18 = load i8*, i8** %buf_in11, align 8, !dbg !4766
  %tobool12 = icmp ne i8* %18, null, !dbg !4764
  br i1 %tobool12, label %lor.lhs.false13, label %if.then32, !dbg !4767

lor.lhs.false13:                                  ; preds = %if.end6
  %19 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4768
  %packet14 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %19, i32 0, i32 15, !dbg !4769
  %20 = load %struct.send_packet*, %struct.send_packet** %packet14, align 8, !dbg !4769
  %tobool15 = icmp ne %struct.send_packet* %20, null, !dbg !4768
  br i1 %tobool15, label %lor.lhs.false16, label %if.then32, !dbg !4770

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %21 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4771
  %urb_in17 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %21, i32 0, i32 10, !dbg !4772
  %22 = load %struct.urb*, %struct.urb** %urb_in17, align 8, !dbg !4772
  %tobool18 = icmp ne %struct.urb* %22, null, !dbg !4771
  br i1 %tobool18, label %lor.lhs.false19, label %if.then32, !dbg !4773

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %23 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4774
  %urb_out20 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %23, i32 0, i32 11, !dbg !4775
  %24 = load %struct.urb*, %struct.urb** %urb_out20, align 8, !dbg !4775
  %tobool21 = icmp ne %struct.urb* %24, null, !dbg !4774
  br i1 %tobool21, label %lor.lhs.false22, label %if.then32, !dbg !4776

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %idesc, align 8, !dbg !4777
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %25, i32 0, i32 3, !dbg !4778
  %26 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4778
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %26, i64 0, !dbg !4777
  %desc23 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4779
  %call24 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %desc23) #9, !dbg !4780
  %tobool25 = icmp ne i32 %call24, 0, !dbg !4780
  br i1 %tobool25, label %lor.lhs.false26, label %if.then32, !dbg !4781

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %idesc, align 8, !dbg !4782
  %endpoint27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i32 0, i32 3, !dbg !4783
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint27, align 8, !dbg !4783
  %arrayidx28 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %28, i64 1, !dbg !4782
  %desc29 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx28, i32 0, i32 0, !dbg !4784
  %call30 = call i32 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %desc29) #9, !dbg !4785
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4785
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !4786

if.then32:                                        ; preds = %lor.lhs.false26, %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %if.end6
  store i32 -12, i32* %ret, align 4, !dbg !4787
  br label %out, !dbg !4789

if.end33:                                         ; preds = %lor.lhs.false26
  %29 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4790
  %30 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4791
  %rc34 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %30, i32 0, i32 0, !dbg !4792
  store %struct.rc_dev* %29, %struct.rc_dev** %rc34, align 8, !dbg !4793
  %31 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4794
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 7, !dbg !4795
  %32 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4796
  %dev35 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %32, i32 0, i32 1, !dbg !4797
  store %struct.device* %dev, %struct.device** %dev35, align 8, !dbg !4798
  %33 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4799
  %34 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4800
  %udev36 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %34, i32 0, i32 2, !dbg !4801
  store %struct.usb_device* %33, %struct.usb_device** %udev36, align 8, !dbg !4802
  %35 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4803
  %completion = getelementptr inbounds %struct.iguanair, %struct.iguanair* %35, i32 0, i32 12, !dbg !4803
  call void @__init_completion(%struct.completion* %completion) #9, !dbg !4803
  %36 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4804
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %idesc, align 8, !dbg !4804
  %endpoint37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %37, i32 0, i32 3, !dbg !4804
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint37, align 8, !dbg !4804
  %arrayidx38 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %38, i64 1, !dbg !4804
  %desc39 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx38, i32 0, i32 0, !dbg !4804
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc39, i32 0, i32 2, !dbg !4804
  %39 = load i8, i8* %bEndpointAddress, align 2, !dbg !4804
  %conv40 = zext i8 %39 to i32, !dbg !4804
  %call41 = call i32 @__create_pipe(%struct.usb_device* %36, i32 %conv40) #9, !dbg !4804
  %or = or i32 1073741824, %call41, !dbg !4804
  store i32 %or, i32* %pipeout, align 4, !dbg !4805
  %40 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4806
  %urb_out42 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %40, i32 0, i32 11, !dbg !4807
  %41 = load %struct.urb*, %struct.urb** %urb_out42, align 8, !dbg !4807
  %42 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4808
  %43 = load i32, i32* %pipeout, align 4, !dbg !4809
  %44 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4810
  %packet43 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %44, i32 0, i32 15, !dbg !4811
  %45 = load %struct.send_packet*, %struct.send_packet** %packet43, align 8, !dbg !4811
  %46 = bitcast %struct.send_packet* %45 to i8*, !dbg !4810
  %47 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4812
  %48 = bitcast %struct.iguanair* %47 to i8*, !dbg !4812
  call void @usb_fill_int_urb(%struct.urb* %41, %struct.usb_device* %42, i32 %43, i8* %46, i32 160, void (%struct.urb*)* @iguanair_irq_out, i8* %48, i32 1) #9, !dbg !4813
  %49 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4814
  %dma_out44 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %49, i32 0, i32 8, !dbg !4815
  %50 = load i64, i64* %dma_out44, align 8, !dbg !4815
  %51 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4816
  %urb_out45 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %51, i32 0, i32 11, !dbg !4817
  %52 = load %struct.urb*, %struct.urb** %urb_out45, align 8, !dbg !4817
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 15, !dbg !4818
  store i64 %50, i64* %transfer_dma, align 8, !dbg !4819
  %53 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4820
  %urb_out46 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %53, i32 0, i32 11, !dbg !4821
  %54 = load %struct.urb*, %struct.urb** %urb_out46, align 8, !dbg !4821
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 13, !dbg !4822
  %55 = load i32, i32* %transfer_flags, align 4, !dbg !4823
  %or47 = or i32 %55, 4, !dbg !4823
  store i32 %or47, i32* %transfer_flags, align 4, !dbg !4823
  %56 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4824
  %57 = load %struct.usb_host_interface*, %struct.usb_host_interface** %idesc, align 8, !dbg !4824
  %endpoint48 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %57, i32 0, i32 3, !dbg !4824
  %58 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint48, align 8, !dbg !4824
  %arrayidx49 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %58, i64 0, !dbg !4824
  %desc50 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx49, i32 0, i32 0, !dbg !4824
  %bEndpointAddress51 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc50, i32 0, i32 2, !dbg !4824
  %59 = load i8, i8* %bEndpointAddress51, align 2, !dbg !4824
  %conv52 = zext i8 %59 to i32, !dbg !4824
  %call53 = call i32 @__create_pipe(%struct.usb_device* %56, i32 %conv52) #9, !dbg !4824
  %or54 = or i32 1073741824, %call53, !dbg !4824
  %or55 = or i32 %or54, 128, !dbg !4824
  store i32 %or55, i32* %pipein, align 4, !dbg !4825
  %60 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4826
  %urb_in56 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %60, i32 0, i32 10, !dbg !4827
  %61 = load %struct.urb*, %struct.urb** %urb_in56, align 8, !dbg !4827
  %62 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4828
  %63 = load i32, i32* %pipein, align 4, !dbg !4829
  %64 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4830
  %buf_in57 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %64, i32 0, i32 9, !dbg !4831
  %65 = load i8*, i8** %buf_in57, align 8, !dbg !4831
  %66 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4832
  %67 = bitcast %struct.iguanair* %66 to i8*, !dbg !4832
  call void @usb_fill_int_urb(%struct.urb* %61, %struct.usb_device* %62, i32 %63, i8* %65, i32 8, void (%struct.urb*)* @iguanair_rx, i8* %67, i32 1) #9, !dbg !4833
  %68 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4834
  %dma_in58 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %68, i32 0, i32 7, !dbg !4835
  %69 = load i64, i64* %dma_in58, align 8, !dbg !4835
  %70 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4836
  %urb_in59 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %70, i32 0, i32 10, !dbg !4837
  %71 = load %struct.urb*, %struct.urb** %urb_in59, align 8, !dbg !4837
  %transfer_dma60 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 15, !dbg !4838
  store i64 %69, i64* %transfer_dma60, align 8, !dbg !4839
  %72 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4840
  %urb_in61 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %72, i32 0, i32 10, !dbg !4841
  %73 = load %struct.urb*, %struct.urb** %urb_in61, align 8, !dbg !4841
  %transfer_flags62 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 13, !dbg !4842
  %74 = load i32, i32* %transfer_flags62, align 4, !dbg !4843
  %or63 = or i32 %74, 4, !dbg !4843
  store i32 %or63, i32* %transfer_flags62, align 4, !dbg !4843
  %75 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4844
  %urb_in64 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %75, i32 0, i32 10, !dbg !4845
  %76 = load %struct.urb*, %struct.urb** %urb_in64, align 8, !dbg !4845
  %call65 = call i32 @usb_submit_urb(%struct.urb* %76, i32 3264) #9, !dbg !4846
  store i32 %call65, i32* %ret, align 4, !dbg !4847
  %77 = load i32, i32* %ret, align 4, !dbg !4848
  %tobool66 = icmp ne i32 %77, 0, !dbg !4848
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !4850

if.then67:                                        ; preds = %if.end33
  %78 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4851
  %dev68 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %78, i32 0, i32 7, !dbg !4851
  %79 = load i32, i32* %ret, align 4, !dbg !4851
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %79) #10, !dbg !4851
  br label %out, !dbg !4853

if.end69:                                         ; preds = %if.end33
  %80 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4854
  %call70 = call i32 @iguanair_get_features(%struct.iguanair* %80) #9, !dbg !4855
  store i32 %call70, i32* %ret, align 4, !dbg !4856
  %81 = load i32, i32* %ret, align 4, !dbg !4857
  %tobool71 = icmp ne i32 %81, 0, !dbg !4857
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !4859

if.then72:                                        ; preds = %if.end69
  br label %out2, !dbg !4860

if.end73:                                         ; preds = %if.end69
  %82 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4861
  %name = getelementptr inbounds %struct.iguanair, %struct.iguanair* %82, i32 0, i32 16, !dbg !4862
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !4861
  %83 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4863
  %version = getelementptr inbounds %struct.iguanair, %struct.iguanair* %83, i32 0, i32 3, !dbg !4864
  %84 = load i16, i16* %version, align 8, !dbg !4864
  %conv74 = zext i16 %84 to i32, !dbg !4863
  %call75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %conv74) #9, !dbg !4865
  %85 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4866
  %udev76 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %85, i32 0, i32 2, !dbg !4867
  %86 = load %struct.usb_device*, %struct.usb_device** %udev76, align 8, !dbg !4867
  %87 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4868
  %phys = getelementptr inbounds %struct.iguanair, %struct.iguanair* %87, i32 0, i32 17, !dbg !4869
  %arraydecay77 = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !4868
  %call78 = call i32 @usb_make_path(%struct.usb_device* %86, i8* %arraydecay77, i64 64) #9, !dbg !4870
  %88 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4871
  %name79 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %88, i32 0, i32 16, !dbg !4872
  %arraydecay80 = getelementptr inbounds [64 x i8], [64 x i8]* %name79, i64 0, i64 0, !dbg !4871
  %89 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4873
  %device_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %89, i32 0, i32 3, !dbg !4874
  store i8* %arraydecay80, i8** %device_name, align 8, !dbg !4875
  %90 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4876
  %phys81 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %90, i32 0, i32 17, !dbg !4877
  %arraydecay82 = getelementptr inbounds [64 x i8], [64 x i8]* %phys81, i64 0, i64 0, !dbg !4876
  %91 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4878
  %input_phys = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 4, !dbg !4879
  store i8* %arraydecay82, i8** %input_phys, align 8, !dbg !4880
  %92 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4881
  %udev83 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %92, i32 0, i32 2, !dbg !4882
  %93 = load %struct.usb_device*, %struct.usb_device** %udev83, align 8, !dbg !4882
  %94 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4883
  %input_id = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %94, i32 0, i32 5, !dbg !4884
  call void @usb_to_input_id(%struct.usb_device* %93, %struct.input_id* %input_id) #9, !dbg !4885
  %95 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4886
  %dev84 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %95, i32 0, i32 7, !dbg !4887
  %96 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4888
  %dev85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %96, i32 0, i32 0, !dbg !4889
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev85, i32 0, i32 1, !dbg !4890
  store %struct.device* %dev84, %struct.device** %parent, align 8, !dbg !4891
  %97 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4892
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %97, i32 0, i32 16, !dbg !4893
  store i64 0, i64* %allowed_protocols, align 8, !dbg !4894
  %98 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4895
  %99 = bitcast %struct.iguanair* %98 to i8*, !dbg !4895
  %100 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4896
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %100, i32 0, i32 24, !dbg !4897
  store i8* %99, i8** %priv, align 8, !dbg !4898
  %101 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4899
  %open = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %101, i32 0, i32 41, !dbg !4900
  store i32 (%struct.rc_dev*)* @iguanair_open, i32 (%struct.rc_dev*)** %open, align 8, !dbg !4901
  %102 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4902
  %close = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %102, i32 0, i32 42, !dbg !4903
  store void (%struct.rc_dev*)* @iguanair_close, void (%struct.rc_dev*)** %close, align 8, !dbg !4904
  %103 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4905
  %s_tx_mask = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %103, i32 0, i32 43, !dbg !4906
  store i32 (%struct.rc_dev*, i32)* @iguanair_set_tx_mask, i32 (%struct.rc_dev*, i32)** %s_tx_mask, align 8, !dbg !4907
  %104 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4908
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %104, i32 0, i32 44, !dbg !4909
  store i32 (%struct.rc_dev*, i32)* @iguanair_set_tx_carrier, i32 (%struct.rc_dev*, i32)** %s_tx_carrier, align 8, !dbg !4910
  %105 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4911
  %tx_ir = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %105, i32 0, i32 47, !dbg !4912
  store i32 (%struct.rc_dev*, i32*, i32)* @iguanair_tx, i32 (%struct.rc_dev*, i32*, i32)** %tx_ir, align 8, !dbg !4913
  %106 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4914
  %driver_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %106, i32 0, i32 6, !dbg !4915
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %driver_name, align 8, !dbg !4916
  %107 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4917
  %map_name = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %107, i32 0, i32 7, !dbg !4918
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %map_name, align 8, !dbg !4919
  %108 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4920
  %min_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %108, i32 0, i32 35, !dbg !4921
  store i32 1, i32* %min_timeout, align 8, !dbg !4922
  %109 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4923
  %timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %109, i32 0, i32 34, !dbg !4924
  store i32 125000, i32* %timeout, align 4, !dbg !4925
  %110 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4926
  %max_timeout = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %110, i32 0, i32 36, !dbg !4927
  store i32 1250000, i32* %max_timeout, align 4, !dbg !4928
  %111 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4929
  %rx_resolution = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %111, i32 0, i32 37, !dbg !4930
  store i32 21, i32* %rx_resolution, align 8, !dbg !4931
  %112 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4932
  %call86 = call i32 @iguanair_set_tx_carrier(%struct.rc_dev* %112, i32 38000) #9, !dbg !4933
  %113 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4934
  %call87 = call i32 @iguanair_set_tx_mask(%struct.rc_dev* %113, i32 0) #9, !dbg !4935
  %114 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4936
  %call88 = call i32 @rc_register_device(%struct.rc_dev* %114) #9, !dbg !4937
  store i32 %call88, i32* %ret, align 4, !dbg !4938
  %115 = load i32, i32* %ret, align 4, !dbg !4939
  %cmp89 = icmp slt i32 %115, 0, !dbg !4941
  br i1 %cmp89, label %if.then91, label %if.end93, !dbg !4942

if.then91:                                        ; preds = %if.end73
  %116 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4943
  %dev92 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %116, i32 0, i32 7, !dbg !4943
  %117 = load i32, i32* %ret, align 4, !dbg !4943
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %117) #10, !dbg !4943
  br label %out2, !dbg !4945

if.end93:                                         ; preds = %if.end73
  %118 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4946
  %119 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4947
  %120 = bitcast %struct.iguanair* %119 to i8*, !dbg !4947
  call void @usb_set_intfdata(%struct.usb_interface* %118, i8* %120) #9, !dbg !4948
  store i32 0, i32* %retval, align 4, !dbg !4949
  br label %return, !dbg !4949

out2:                                             ; preds = %if.then91, %if.then72
  call void @llvm.dbg.label(metadata !4950), !dbg !4951
  %121 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4952
  %urb_in94 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %121, i32 0, i32 10, !dbg !4953
  %122 = load %struct.urb*, %struct.urb** %urb_in94, align 8, !dbg !4953
  call void @usb_kill_urb(%struct.urb* %122) #9, !dbg !4954
  %123 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4955
  %urb_out95 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %123, i32 0, i32 11, !dbg !4956
  %124 = load %struct.urb*, %struct.urb** %urb_out95, align 8, !dbg !4956
  call void @usb_kill_urb(%struct.urb* %124) #9, !dbg !4957
  br label %out, !dbg !4957

out:                                              ; preds = %out2, %if.then67, %if.then32, %if.then5
  call void @llvm.dbg.label(metadata !4958), !dbg !4959
  %125 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4960
  %tobool96 = icmp ne %struct.iguanair* %125, null, !dbg !4960
  br i1 %tobool96, label %if.then97, label %if.end104, !dbg !4962

if.then97:                                        ; preds = %out
  %126 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4963
  %urb_in98 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %126, i32 0, i32 10, !dbg !4965
  %127 = load %struct.urb*, %struct.urb** %urb_in98, align 8, !dbg !4965
  call void @usb_free_urb(%struct.urb* %127) #9, !dbg !4966
  %128 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4967
  %urb_out99 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %128, i32 0, i32 11, !dbg !4968
  %129 = load %struct.urb*, %struct.urb** %urb_out99, align 8, !dbg !4968
  call void @usb_free_urb(%struct.urb* %129) #9, !dbg !4969
  %130 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4970
  %131 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4971
  %buf_in100 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %131, i32 0, i32 9, !dbg !4972
  %132 = load i8*, i8** %buf_in100, align 8, !dbg !4972
  %133 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4973
  %dma_in101 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %133, i32 0, i32 7, !dbg !4974
  %134 = load i64, i64* %dma_in101, align 8, !dbg !4974
  call void @usb_free_coherent(%struct.usb_device* %130, i64 8, i8* %132, i64 %134) #9, !dbg !4975
  %135 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4976
  %136 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4977
  %packet102 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %136, i32 0, i32 15, !dbg !4978
  %137 = load %struct.send_packet*, %struct.send_packet** %packet102, align 8, !dbg !4978
  %138 = bitcast %struct.send_packet* %137 to i8*, !dbg !4977
  %139 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4979
  %dma_out103 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %139, i32 0, i32 8, !dbg !4980
  %140 = load i64, i64* %dma_out103, align 8, !dbg !4980
  call void @usb_free_coherent(%struct.usb_device* %135, i64 160, i8* %138, i64 %140) #9, !dbg !4981
  br label %if.end104, !dbg !4982

if.end104:                                        ; preds = %if.then97, %out
  %141 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4983
  call void @rc_free_device(%struct.rc_dev* %141) #9, !dbg !4984
  %142 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4985
  %143 = bitcast %struct.iguanair* %142 to i8*, !dbg !4985
  call void @kfree(i8* %143) #9, !dbg !4986
  %144 = load i32, i32* %ret, align 4, !dbg !4987
  store i32 %144, i32* %retval, align 4, !dbg !4988
  br label %return, !dbg !4988

return:                                           ; preds = %if.end104, %if.end93, %if.then
  %145 = load i32, i32* %retval, align 4, !dbg !4989
  ret i32 %145, !dbg !4989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iguanair_disconnect(%struct.usb_interface* %intf) #2 !dbg !4990 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ir = alloca %struct.iguanair*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !4993, metadata !DIExpression()), !dbg !4994
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4995
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4996
  %1 = bitcast i8* %call to %struct.iguanair*, !dbg !4996
  store %struct.iguanair* %1, %struct.iguanair** %ir, align 8, !dbg !4994
  %2 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !4997
  %rc = getelementptr inbounds %struct.iguanair, %struct.iguanair* %2, i32 0, i32 0, !dbg !4998
  %3 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !4998
  call void @rc_unregister_device(%struct.rc_dev* %3) #9, !dbg !4999
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5000
  call void @usb_set_intfdata(%struct.usb_interface* %4, i8* null) #9, !dbg !5001
  %5 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5002
  %urb_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %5, i32 0, i32 10, !dbg !5003
  %6 = load %struct.urb*, %struct.urb** %urb_in, align 8, !dbg !5003
  call void @usb_kill_urb(%struct.urb* %6) #9, !dbg !5004
  %7 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5005
  %urb_out = getelementptr inbounds %struct.iguanair, %struct.iguanair* %7, i32 0, i32 11, !dbg !5006
  %8 = load %struct.urb*, %struct.urb** %urb_out, align 8, !dbg !5006
  call void @usb_kill_urb(%struct.urb* %8) #9, !dbg !5007
  %9 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5008
  %urb_in1 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %9, i32 0, i32 10, !dbg !5009
  %10 = load %struct.urb*, %struct.urb** %urb_in1, align 8, !dbg !5009
  call void @usb_free_urb(%struct.urb* %10) #9, !dbg !5010
  %11 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5011
  %urb_out2 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %11, i32 0, i32 11, !dbg !5012
  %12 = load %struct.urb*, %struct.urb** %urb_out2, align 8, !dbg !5012
  call void @usb_free_urb(%struct.urb* %12) #9, !dbg !5013
  %13 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5014
  %udev = getelementptr inbounds %struct.iguanair, %struct.iguanair* %13, i32 0, i32 2, !dbg !5015
  %14 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5015
  %15 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5016
  %buf_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %15, i32 0, i32 9, !dbg !5017
  %16 = load i8*, i8** %buf_in, align 8, !dbg !5017
  %17 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5018
  %dma_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %17, i32 0, i32 7, !dbg !5019
  %18 = load i64, i64* %dma_in, align 8, !dbg !5019
  call void @usb_free_coherent(%struct.usb_device* %14, i64 8, i8* %16, i64 %18) #9, !dbg !5020
  %19 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5021
  %udev3 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %19, i32 0, i32 2, !dbg !5022
  %20 = load %struct.usb_device*, %struct.usb_device** %udev3, align 8, !dbg !5022
  %21 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5023
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %21, i32 0, i32 15, !dbg !5024
  %22 = load %struct.send_packet*, %struct.send_packet** %packet, align 8, !dbg !5024
  %23 = bitcast %struct.send_packet* %22 to i8*, !dbg !5023
  %24 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5025
  %dma_out = getelementptr inbounds %struct.iguanair, %struct.iguanair* %24, i32 0, i32 8, !dbg !5026
  %25 = load i64, i64* %dma_out, align 8, !dbg !5026
  call void @usb_free_coherent(%struct.usb_device* %20, i64 160, i8* %23, i64 %25) #9, !dbg !5027
  %26 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5028
  %27 = bitcast %struct.iguanair* %26 to i8*, !dbg !5028
  call void @kfree(i8* %27) #9, !dbg !5029
  ret void, !dbg !5030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_suspend(%struct.usb_interface* %intf, i32 %message.coerce) #2 !dbg !5031 {
entry:
  %message = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ir = alloca %struct.iguanair*, align 8
  %rc = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !5034, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5036, metadata !DIExpression()), !dbg !5037
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5038
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5039
  %1 = bitcast i8* %call to %struct.iguanair*, !dbg !5039
  store %struct.iguanair* %1, %struct.iguanair** %ir, align 8, !dbg !5037
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5040, metadata !DIExpression()), !dbg !5041
  store i32 0, i32* %rc, align 4, !dbg !5041
  %2 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5042
  %receiver_on = getelementptr inbounds %struct.iguanair, %struct.iguanair* %2, i32 0, i32 6, !dbg !5044
  %3 = load i8, i8* %receiver_on, align 4, !dbg !5044
  %tobool = trunc i8 %3 to i1, !dbg !5044
  br i1 %tobool, label %if.then, label %if.end4, !dbg !5045

if.then:                                          ; preds = %entry
  %4 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5046
  %call1 = call i32 @iguanair_receiver(%struct.iguanair* %4, i1 zeroext false) #9, !dbg !5048
  store i32 %call1, i32* %rc, align 4, !dbg !5049
  %5 = load i32, i32* %rc, align 4, !dbg !5050
  %tobool2 = icmp ne i32 %5, 0, !dbg !5050
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5052

if.then3:                                         ; preds = %if.then
  %6 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5053
  %dev = getelementptr inbounds %struct.iguanair, %struct.iguanair* %6, i32 0, i32 1, !dbg !5053
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5053
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !5053
  br label %if.end, !dbg !5053

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4, !dbg !5054

if.end4:                                          ; preds = %if.end, %entry
  %8 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5055
  %urb_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %8, i32 0, i32 10, !dbg !5056
  %9 = load %struct.urb*, %struct.urb** %urb_in, align 8, !dbg !5056
  call void @usb_kill_urb(%struct.urb* %9) #9, !dbg !5057
  %10 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5058
  %urb_out = getelementptr inbounds %struct.iguanair, %struct.iguanair* %10, i32 0, i32 11, !dbg !5059
  %11 = load %struct.urb*, %struct.urb** %urb_out, align 8, !dbg !5059
  call void @usb_kill_urb(%struct.urb* %11) #9, !dbg !5060
  %12 = load i32, i32* %rc, align 4, !dbg !5061
  ret i32 %12, !dbg !5062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_resume(%struct.usb_interface* %intf) #2 !dbg !5063 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %ir = alloca %struct.iguanair*, align 8
  %rc = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5066, metadata !DIExpression()), !dbg !5067
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5068
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5069
  %1 = bitcast i8* %call to %struct.iguanair*, !dbg !5069
  store %struct.iguanair* %1, %struct.iguanair** %ir, align 8, !dbg !5067
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5070, metadata !DIExpression()), !dbg !5071
  %2 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5072
  %urb_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %2, i32 0, i32 10, !dbg !5073
  %3 = load %struct.urb*, %struct.urb** %urb_in, align 8, !dbg !5073
  %call1 = call i32 @usb_submit_urb(%struct.urb* %3, i32 3264) #9, !dbg !5074
  store i32 %call1, i32* %rc, align 4, !dbg !5075
  %4 = load i32, i32* %rc, align 4, !dbg !5076
  %tobool = icmp ne i32 %4, 0, !dbg !5076
  br i1 %tobool, label %if.then, label %if.end, !dbg !5078

if.then:                                          ; preds = %entry
  %5 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5079
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 7, !dbg !5079
  %6 = load i32, i32* %rc, align 4, !dbg !5079
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %6) #10, !dbg !5079
  br label %if.end, !dbg !5079

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5080
  %receiver_on = getelementptr inbounds %struct.iguanair, %struct.iguanair* %7, i32 0, i32 6, !dbg !5082
  %8 = load i8, i8* %receiver_on, align 4, !dbg !5082
  %tobool2 = trunc i8 %8 to i1, !dbg !5082
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !5083

if.then3:                                         ; preds = %if.end
  %9 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5084
  %call4 = call i32 @iguanair_receiver(%struct.iguanair* %9, i1 zeroext true) #9, !dbg !5086
  store i32 %call4, i32* %rc, align 4, !dbg !5087
  %10 = load i32, i32* %rc, align 4, !dbg !5088
  %tobool5 = icmp ne i32 %10, 0, !dbg !5088
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5090

if.then6:                                         ; preds = %if.then3
  %11 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5091
  %dev7 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %11, i32 0, i32 1, !dbg !5091
  %12 = load %struct.device*, %struct.device** %dev7, align 8, !dbg !5091
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !5091
  br label %if.end8, !dbg !5091

if.end8:                                          ; preds = %if.then6, %if.then3
  br label %if.end9, !dbg !5092

if.end9:                                          ; preds = %if.end8, %if.end
  %13 = load i32, i32* %rc, align 4, !dbg !5093
  ret i32 %13, !dbg !5094
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !5095 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5100, metadata !DIExpression()), !dbg !5102
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5102
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5102
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5102
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5102
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5102
  store i8* %2, i8** %__mptr, align 8, !dbg !5102
  br label %do.body, !dbg !5102

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5103

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5102
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5102
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5102
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5103
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5102
  ret %struct.usb_device* %5, !dbg !5105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5106 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5109, metadata !DIExpression()), !dbg !5113
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5119, metadata !DIExpression()), !dbg !5120
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5121, metadata !DIExpression()), !dbg !5122
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5123, metadata !DIExpression()), !dbg !5124
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5125, metadata !DIExpression()), !dbg !5129
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5131, metadata !DIExpression()), !dbg !5135
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5137, metadata !DIExpression()), !dbg !5141
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5146, metadata !DIExpression()), !dbg !5147
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5148, metadata !DIExpression()), !dbg !5149
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5150, metadata !DIExpression()), !dbg !5151
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5152, metadata !DIExpression()), !dbg !5153
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5154, metadata !DIExpression()), !dbg !5155
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5156, metadata !DIExpression()), !dbg !5157
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5158, metadata !DIExpression()), !dbg !5159
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5160, metadata !DIExpression()), !dbg !5161
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  %0 = load i64, i64* %size.addr, align 8, !dbg !5166
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5167
  %or = or i32 %1, 256, !dbg !5168
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5169
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5170
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5171

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5172
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5173
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5174

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5175
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5176
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5177
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5178
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5155
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5179
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5180
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5181
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5182
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5183
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5184
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5185
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5185
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5185
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5185
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5185
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5186
  br label %kmalloc.exit, !dbg !5186

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5187
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5188
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5188
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5190

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5191
  br label %kmalloc_index.exit.i, !dbg !5191

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5192
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5194
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5195

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5196
  br label %kmalloc_index.exit.i, !dbg !5196

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5197
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5199
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5200

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5201
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5202
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5203

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5204
  br label %kmalloc_index.exit.i, !dbg !5204

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5205
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5207
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5208

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5209
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5210
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5211

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5212
  br label %kmalloc_index.exit.i, !dbg !5212

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5213
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5215
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5216

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5217
  br label %kmalloc_index.exit.i, !dbg !5217

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5218
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5220
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5221

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5222
  br label %kmalloc_index.exit.i, !dbg !5222

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5223
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5225
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5226

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5227
  br label %kmalloc_index.exit.i, !dbg !5227

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5228
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5230
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5231

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5232
  br label %kmalloc_index.exit.i, !dbg !5232

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5233
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5235
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5236

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5237
  br label %kmalloc_index.exit.i, !dbg !5237

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5238
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5240
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5241

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5242
  br label %kmalloc_index.exit.i, !dbg !5242

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5243
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5245
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5246

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5247
  br label %kmalloc_index.exit.i, !dbg !5247

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5248
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5250
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5251

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5252
  br label %kmalloc_index.exit.i, !dbg !5252

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5253
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5255
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5256

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5257
  br label %kmalloc_index.exit.i, !dbg !5257

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5258
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5260
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5261

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5262
  br label %kmalloc_index.exit.i, !dbg !5262

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5263
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5265
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5266

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5267
  br label %kmalloc_index.exit.i, !dbg !5267

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5268
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5270
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5271

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5272
  br label %kmalloc_index.exit.i, !dbg !5272

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5273
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5275
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5276

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5277
  br label %kmalloc_index.exit.i, !dbg !5277

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5278
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5280
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5281

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5282
  br label %kmalloc_index.exit.i, !dbg !5282

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5283
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5285
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5286

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5287
  br label %kmalloc_index.exit.i, !dbg !5287

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5288
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5290
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5291

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5292
  br label %kmalloc_index.exit.i, !dbg !5292

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5293
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5295
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5296

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5297
  br label %kmalloc_index.exit.i, !dbg !5297

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5298
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5300
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5301

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5302
  br label %kmalloc_index.exit.i, !dbg !5302

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5303
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5305
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5306

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5307
  br label %kmalloc_index.exit.i, !dbg !5307

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5308
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5310
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5311

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5312
  br label %kmalloc_index.exit.i, !dbg !5312

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5313
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5315
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5316

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5317
  br label %kmalloc_index.exit.i, !dbg !5317

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5318
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5320
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5321

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5322
  br label %kmalloc_index.exit.i, !dbg !5322

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5323
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5325
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5326

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5327
  br label %kmalloc_index.exit.i, !dbg !5327

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5328
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5330
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5331

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5332
  br label %kmalloc_index.exit.i, !dbg !5332

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5333, !srcloc !5336
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 211) #11, !dbg !5337, !srcloc !5340
  unreachable, !dbg !5341

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5342
  store i32 %45, i32* %index.i, align 4, !dbg !5343
  %46 = load i32, i32* %index.i, align 4, !dbg !5344
  %tobool.i = icmp ne i32 %46, 0, !dbg !5344
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5346

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5347
  br label %kmalloc.exit, !dbg !5347

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5348
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5349
  %and.i.i = and i32 %48, 17, !dbg !5349
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5349
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5349
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5349
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5349
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5351

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5352
  br label %kmalloc_type.exit.i, !dbg !5352

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5353
  %and2.i.i = and i32 %49, 1, !dbg !5354
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5353
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5353
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5353
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5355
  br label %kmalloc_type.exit.i, !dbg !5355

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5356
  %idxprom.i = zext i32 %51 to i64, !dbg !5357
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5357
  %52 = load i32, i32* %index.i, align 4, !dbg !5358
  %idxprom6.i = zext i32 %52 to i64, !dbg !5357
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5357
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5357
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5359
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5360
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5361
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5362
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5363
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5363
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5363
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5363
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5363
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5124
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5364
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5365
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5366
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5367
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5368
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5369
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5370
  store i8* %62, i8** %retval.i, align 8, !dbg !5371
  br label %kmalloc.exit, !dbg !5371

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5372
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5373
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5374
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5374
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5374
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5374
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5374
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5375
  br label %kmalloc.exit, !dbg !5375

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5376
  ret i8* %65, !dbg !5377
}

; Function Attrs: noredzone
declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5378 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5385
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #9, !dbg !5386
  %tobool = icmp ne i32 %call, 0, !dbg !5386
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5387

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5388
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #9, !dbg !5389
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5387
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5390
  %land.ext = zext i1 %2 to i32, !dbg !5387
  ret i32 %land.ext, !dbg !5391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5392 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5395
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #9, !dbg !5396
  %tobool = icmp ne i32 %call, 0, !dbg !5396
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5397

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5398
  %call1 = call i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %1) #9, !dbg !5399
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5397
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5400
  %land.ext = zext i1 %2 to i32, !dbg !5397
  ret i32 %land.ext, !dbg !5401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #2 !dbg !4195 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5404
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !5405
  store i32 0, i32* %done, align 8, !dbg !5406
  br label %do.body, !dbg !5407

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5408
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !5408
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #9, !dbg !5408
  br label %do.end, !dbg !5408

do.end:                                           ; preds = %do.body
  ret void, !dbg !5410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5411 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5418
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5419
  %1 = load i32, i32* %devnum, align 8, !dbg !5419
  %shl = shl i32 %1, 8, !dbg !5420
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5421
  %shl1 = shl i32 %2, 15, !dbg !5422
  %or = or i32 %shl, %shl1, !dbg !5423
  ret i32 %or, !dbg !5424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5425 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5444
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5445
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5446
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5447
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5448
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5449
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5450
  store i32 %2, i32* %pipe2, align 8, !dbg !5451
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5452
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5453
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5454
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5455
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5456
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5457
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5458
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5459
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5460
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5461
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5462
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5463
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5464
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5465
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5466
  store i8* %10, i8** %context4, align 8, !dbg !5467
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5468
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5470
  %13 = load i32, i32* %speed, align 4, !dbg !5470
  %cmp = icmp eq i32 %13, 3, !dbg !5471
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5472

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5473
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5474
  %15 = load i32, i32* %speed5, align 4, !dbg !5474
  %cmp6 = icmp uge i32 %15, 5, !dbg !5475
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5476

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5477, metadata !DIExpression()), !dbg !5480
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x203, metadata !5481, metadata !DIExpression()), !dbg !5483
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5483
  store i32 %16, i32* %__UNIQUE_ID___x203, align 4, !dbg !5483
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y204, metadata !5484, metadata !DIExpression()), !dbg !5483
  store i32 1, i32* %__UNIQUE_ID___y204, align 4, !dbg !5483
  %17 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !5483
  %18 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !5483
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5483
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5483

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !5483
  br label %cond.end, !dbg !5483

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !5483
  br label %cond.end, !dbg !5483

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5483
  store i32 %cond, i32* %tmp, align 4, !dbg !5483
  %21 = load i32, i32* %tmp, align 4, !dbg !5483
  store i32 %21, i32* %__UNIQUE_ID___x205, align 4, !dbg !5480
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5485, metadata !DIExpression()), !dbg !5480
  store i32 16, i32* %__UNIQUE_ID___y206, align 4, !dbg !5480
  %22 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5480
  %23 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5480
  %cmp9 = icmp slt i32 %22, %23, !dbg !5480
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5480

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5480
  br label %cond.end12, !dbg !5480

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5480
  br label %cond.end12, !dbg !5480

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5480
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5480
  %26 = load i32, i32* %tmp8, align 4, !dbg !5480
  store i32 %26, i32* %interval.addr, align 4, !dbg !5486
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5487
  %sub = sub i32 %27, 1, !dbg !5488
  %shl = shl i32 1, %sub, !dbg !5489
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5490
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5491
  store i32 %shl, i32* %interval14, align 8, !dbg !5492
  br label %if.end, !dbg !5493

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5494
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5496
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5497
  store i32 %29, i32* %interval15, align 8, !dbg !5498
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5499
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5500
  store i32 -1, i32* %start_frame, align 8, !dbg !5501
  ret void, !dbg !5502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iguanair_irq_out(%struct.urb* %urb) #2 !dbg !5503 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %ir = alloca %struct.iguanair*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5506, metadata !DIExpression()), !dbg !5507
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5508
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5509
  %1 = load i8*, i8** %context, align 8, !dbg !5509
  %2 = bitcast i8* %1 to %struct.iguanair*, !dbg !5508
  store %struct.iguanair* %2, %struct.iguanair** %ir, align 8, !dbg !5507
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5510
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5512
  %4 = load i32, i32* %status, align 8, !dbg !5512
  %tobool = icmp ne i32 %4, 0, !dbg !5510
  br i1 %tobool, label %if.then, label %if.end, !dbg !5513

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !5514

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5515
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !5517
  %6 = load i32, i32* %status1, align 8, !dbg !5517
  %cmp = icmp eq i32 %6, 0, !dbg !5518
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !5519

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5520
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %7, i32 0, i32 15, !dbg !5521
  %8 = load %struct.send_packet*, %struct.send_packet** %packet, align 8, !dbg !5521
  %header = getelementptr inbounds %struct.send_packet, %struct.send_packet* %8, i32 0, i32 0, !dbg !5522
  %cmd = getelementptr inbounds %struct.packet, %struct.packet* %header, i32 0, i32 2, !dbg !5523
  %9 = load i8, i8* %cmd, align 1, !dbg !5523
  %conv = zext i8 %9 to i32, !dbg !5520
  %cmp2 = icmp eq i32 %conv, 0, !dbg !5524
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5525

if.then4:                                         ; preds = %land.lhs.true
  %10 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5526
  %completion = getelementptr inbounds %struct.iguanair, %struct.iguanair* %10, i32 0, i32 12, !dbg !5527
  call void @complete(%struct.completion* %completion) #9, !dbg !5528
  br label %if.end5, !dbg !5528

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  ret void, !dbg !5529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iguanair_rx(%struct.urb* %urb) #2 !dbg !5530 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %ir = alloca %struct.iguanair*, align 8
  %rc = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5533, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5535, metadata !DIExpression()), !dbg !5536
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5537
  %tobool = icmp ne %struct.urb* %0, null, !dbg !5537
  br i1 %tobool, label %if.end, label %if.then, !dbg !5539

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !5540

if.end:                                           ; preds = %entry
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5541
  %context = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 27, !dbg !5542
  %2 = load i8*, i8** %context, align 8, !dbg !5542
  %3 = bitcast i8* %2 to %struct.iguanair*, !dbg !5541
  store %struct.iguanair* %3, %struct.iguanair** %ir, align 8, !dbg !5543
  %4 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5544
  %tobool1 = icmp ne %struct.iguanair* %4, null, !dbg !5544
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5546

if.then2:                                         ; preds = %if.end
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5547
  %call = call i32 @usb_unlink_urb(%struct.urb* %5) #9, !dbg !5549
  br label %if.end10, !dbg !5550

if.end3:                                          ; preds = %if.end
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5551
  %status = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 12, !dbg !5552
  %7 = load i32, i32* %status, align 8, !dbg !5552
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb4
    i32 -2, label %sw.bb4
    i32 -108, label %sw.bb4
    i32 -32, label %sw.bb6
  ], !dbg !5553

sw.bb:                                            ; preds = %if.end3
  %8 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5554
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5556
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 20, !dbg !5557
  %10 = load i32, i32* %actual_length, align 4, !dbg !5557
  call void @process_ir_data(%struct.iguanair* %8, i32 %10) #9, !dbg !5558
  br label %sw.epilog, !dbg !5559

sw.bb4:                                           ; preds = %if.end3, %if.end3, %if.end3
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5560
  %call5 = call i32 @usb_unlink_urb(%struct.urb* %11) #9, !dbg !5561
  br label %if.end10, !dbg !5562

sw.bb6:                                           ; preds = %if.end3
  br label %sw.default, !dbg !5562

sw.default:                                       ; preds = %if.end3, %sw.bb6
  br label %sw.epilog, !dbg !5563

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %12 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5564
  %call7 = call i32 @usb_submit_urb(%struct.urb* %12, i32 2592) #9, !dbg !5565
  store i32 %call7, i32* %rc, align 4, !dbg !5566
  %13 = load i32, i32* %rc, align 4, !dbg !5567
  %tobool8 = icmp ne i32 %13, 0, !dbg !5567
  br i1 %tobool8, label %land.lhs.true, label %if.end10, !dbg !5569

land.lhs.true:                                    ; preds = %sw.epilog
  %14 = load i32, i32* %rc, align 4, !dbg !5570
  %cmp = icmp ne i32 %14, -19, !dbg !5571
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !5572

if.then9:                                         ; preds = %land.lhs.true
  %15 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5573
  %dev = getelementptr inbounds %struct.iguanair, %struct.iguanair* %15, i32 0, i32 1, !dbg !5573
  %16 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5573
  %17 = load i32, i32* %rc, align 4, !dbg !5573
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %17) #10, !dbg !5573
  br label %if.end10, !dbg !5573

if.end10:                                         ; preds = %if.then, %if.then2, %sw.bb4, %if.then9, %land.lhs.true, %sw.epilog
  ret void, !dbg !5574
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_get_features(%struct.iguanair* %ir) #2 !dbg !5575 {
entry:
  %ir.addr = alloca %struct.iguanair*, align 8
  %rc = alloca i32, align 4
  store %struct.iguanair* %ir, %struct.iguanair** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5580, metadata !DIExpression()), !dbg !5581
  %0 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5582
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %0, i32 0, i32 15, !dbg !5583
  %1 = load %struct.send_packet*, %struct.send_packet** %packet, align 8, !dbg !5583
  %header = getelementptr inbounds %struct.send_packet, %struct.send_packet* %1, i32 0, i32 0, !dbg !5584
  %start = getelementptr inbounds %struct.packet, %struct.packet* %header, i32 0, i32 0, !dbg !5585
  store i16 0, i16* %start, align 2, !dbg !5586
  %2 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5587
  %packet1 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %2, i32 0, i32 15, !dbg !5588
  %3 = load %struct.send_packet*, %struct.send_packet** %packet1, align 8, !dbg !5588
  %header2 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %3, i32 0, i32 0, !dbg !5589
  %direction = getelementptr inbounds %struct.packet, %struct.packet* %header2, i32 0, i32 1, !dbg !5590
  store i8 -51, i8* %direction, align 2, !dbg !5591
  %4 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5592
  %packet3 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %4, i32 0, i32 15, !dbg !5593
  %5 = load %struct.send_packet*, %struct.send_packet** %packet3, align 8, !dbg !5593
  %header4 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %5, i32 0, i32 0, !dbg !5594
  %cmd = getelementptr inbounds %struct.packet, %struct.packet* %header4, i32 0, i32 2, !dbg !5595
  store i8 0, i8* %cmd, align 1, !dbg !5596
  %6 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5597
  %call = call i32 @iguanair_send(%struct.iguanair* %6, i32 4) #9, !dbg !5598
  %7 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5599
  %packet5 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %7, i32 0, i32 15, !dbg !5600
  %8 = load %struct.send_packet*, %struct.send_packet** %packet5, align 8, !dbg !5600
  %header6 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %8, i32 0, i32 0, !dbg !5601
  %cmd7 = getelementptr inbounds %struct.packet, %struct.packet* %header6, i32 0, i32 2, !dbg !5602
  store i8 1, i8* %cmd7, align 1, !dbg !5603
  %9 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5604
  %call8 = call i32 @iguanair_send(%struct.iguanair* %9, i32 4) #9, !dbg !5605
  store i32 %call8, i32* %rc, align 4, !dbg !5606
  %10 = load i32, i32* %rc, align 4, !dbg !5607
  %tobool = icmp ne i32 %10, 0, !dbg !5607
  br i1 %tobool, label %if.then, label %if.end, !dbg !5609

if.then:                                          ; preds = %entry
  %11 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5610
  %dev = getelementptr inbounds %struct.iguanair, %struct.iguanair* %11, i32 0, i32 1, !dbg !5610
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5610
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !5610
  br label %out, !dbg !5612

if.end:                                           ; preds = %entry
  %13 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5613
  %version = getelementptr inbounds %struct.iguanair, %struct.iguanair* %13, i32 0, i32 3, !dbg !5615
  %14 = load i16, i16* %version, align 8, !dbg !5615
  %conv = zext i16 %14 to i32, !dbg !5613
  %cmp = icmp slt i32 %conv, 517, !dbg !5616
  br i1 %cmp, label %if.then10, label %if.end14, !dbg !5617

if.then10:                                        ; preds = %if.end
  %15 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5618
  %dev11 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %15, i32 0, i32 1, !dbg !5618
  %16 = load %struct.device*, %struct.device** %dev11, align 8, !dbg !5618
  %17 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5618
  %version12 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %17, i32 0, i32 3, !dbg !5618
  %18 = load i16, i16* %version12, align 8, !dbg !5618
  %conv13 = zext i16 %18 to i32, !dbg !5618
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %conv13) #10, !dbg !5618
  store i32 -19, i32* %rc, align 4, !dbg !5620
  br label %out, !dbg !5621

if.end14:                                         ; preds = %if.end
  %19 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5622
  %bufsize = getelementptr inbounds %struct.iguanair, %struct.iguanair* %19, i32 0, i32 4, !dbg !5623
  store i8 -106, i8* %bufsize, align 2, !dbg !5624
  %20 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5625
  %cycle_overhead = getelementptr inbounds %struct.iguanair, %struct.iguanair* %20, i32 0, i32 5, !dbg !5626
  store i8 65, i8* %cycle_overhead, align 1, !dbg !5627
  %21 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5628
  %packet15 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %21, i32 0, i32 15, !dbg !5629
  %22 = load %struct.send_packet*, %struct.send_packet** %packet15, align 8, !dbg !5629
  %header16 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %22, i32 0, i32 0, !dbg !5630
  %cmd17 = getelementptr inbounds %struct.packet, %struct.packet* %header16, i32 0, i32 2, !dbg !5631
  store i8 17, i8* %cmd17, align 1, !dbg !5632
  %23 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5633
  %call18 = call i32 @iguanair_send(%struct.iguanair* %23, i32 4) #9, !dbg !5634
  store i32 %call18, i32* %rc, align 4, !dbg !5635
  %24 = load i32, i32* %rc, align 4, !dbg !5636
  %tobool19 = icmp ne i32 %24, 0, !dbg !5636
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5638

if.then20:                                        ; preds = %if.end14
  %25 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5639
  %dev21 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %25, i32 0, i32 1, !dbg !5639
  %26 = load %struct.device*, %struct.device** %dev21, align 8, !dbg !5639
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5639
  br label %out, !dbg !5641

if.end22:                                         ; preds = %if.end14
  %27 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5642
  %bufsize23 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %27, i32 0, i32 4, !dbg !5644
  %28 = load i8, i8* %bufsize23, align 2, !dbg !5644
  %conv24 = zext i8 %28 to i32, !dbg !5642
  %cmp25 = icmp sgt i32 %conv24, 152, !dbg !5645
  br i1 %cmp25, label %if.then27, label %if.end32, !dbg !5646

if.then27:                                        ; preds = %if.end22
  %29 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5647
  %dev28 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %29, i32 0, i32 1, !dbg !5647
  %30 = load %struct.device*, %struct.device** %dev28, align 8, !dbg !5647
  %31 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5647
  %bufsize29 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %31, i32 0, i32 4, !dbg !5647
  %32 = load i8, i8* %bufsize29, align 2, !dbg !5647
  %conv30 = zext i8 %32 to i32, !dbg !5647
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %conv30) #10, !dbg !5647
  %33 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5649
  %bufsize31 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %33, i32 0, i32 4, !dbg !5650
  store i8 -104, i8* %bufsize31, align 2, !dbg !5651
  br label %if.end32, !dbg !5652

if.end32:                                         ; preds = %if.then27, %if.end22
  %34 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5653
  %packet33 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %34, i32 0, i32 15, !dbg !5654
  %35 = load %struct.send_packet*, %struct.send_packet** %packet33, align 8, !dbg !5654
  %header34 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %35, i32 0, i32 0, !dbg !5655
  %cmd35 = getelementptr inbounds %struct.packet, %struct.packet* %header34, i32 0, i32 2, !dbg !5656
  store i8 16, i8* %cmd35, align 1, !dbg !5657
  %36 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5658
  %call36 = call i32 @iguanair_send(%struct.iguanair* %36, i32 4) #9, !dbg !5659
  store i32 %call36, i32* %rc, align 4, !dbg !5660
  %37 = load i32, i32* %rc, align 4, !dbg !5661
  %tobool37 = icmp ne i32 %37, 0, !dbg !5661
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !5663

if.then38:                                        ; preds = %if.end32
  %38 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !5664
  %dev39 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %38, i32 0, i32 1, !dbg !5664
  %39 = load %struct.device*, %struct.device** %dev39, align 8, !dbg !5664
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !5664
  br label %if.end40, !dbg !5664

if.end40:                                         ; preds = %if.then38, %if.end32
  br label %out, !dbg !5661

out:                                              ; preds = %if.end40, %if.then20, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !5665), !dbg !5666
  %40 = load i32, i32* %rc, align 4, !dbg !5667
  ret i32 %40, !dbg !5668
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5669 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5676, metadata !DIExpression()), !dbg !5677
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5678, metadata !DIExpression()), !dbg !5679
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5680
  %1 = load i64, i64* %size.addr, align 8, !dbg !5681
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5682
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5683
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5683
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5684
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5684
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5685
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5686
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5685
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !5687
  store i32 %call, i32* %actual, align 4, !dbg !5688
  %6 = load i32, i32* %actual, align 4, !dbg !5689
  %7 = load i64, i64* %size.addr, align 8, !dbg !5690
  %conv = trunc i64 %7 to i32, !dbg !5691
  %cmp = icmp sge i32 %6, %conv, !dbg !5692
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5693

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5693

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5694
  br label %cond.end, !dbg !5693

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5693
  ret i32 %cond, !dbg !5695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5696 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5707
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5708
  store i16 3, i16* %bustype, align 2, !dbg !5709
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5710
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5710
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5710
  %2 = load i16, i16* %idVendor, align 8, !dbg !5710
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5711
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5712
  store i16 %2, i16* %vendor, align 2, !dbg !5713
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5714
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5714
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5714
  %5 = load i16, i16* %idProduct, align 2, !dbg !5714
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5715
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5716
  store i16 %5, i16* %product, align 2, !dbg !5717
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5718
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5718
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5718
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5718
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5719
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5720
  store i16 %8, i16* %version, align 2, !dbg !5721
  ret void, !dbg !5722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_open(%struct.rc_dev* %rdev) #2 !dbg !5723 {
entry:
  %rdev.addr = alloca %struct.rc_dev*, align 8
  %ir = alloca %struct.iguanair*, align 8
  %rc = alloca i32, align 4
  store %struct.rc_dev* %rdev, %struct.rc_dev** %rdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rdev.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5726, metadata !DIExpression()), !dbg !5727
  %0 = load %struct.rc_dev*, %struct.rc_dev** %rdev.addr, align 8, !dbg !5728
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5729
  %1 = load i8*, i8** %priv, align 8, !dbg !5729
  %2 = bitcast i8* %1 to %struct.iguanair*, !dbg !5728
  store %struct.iguanair* %2, %struct.iguanair** %ir, align 8, !dbg !5727
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5730, metadata !DIExpression()), !dbg !5731
  %3 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5732
  %call = call i32 @iguanair_receiver(%struct.iguanair* %3, i1 zeroext true) #9, !dbg !5733
  store i32 %call, i32* %rc, align 4, !dbg !5734
  %4 = load i32, i32* %rc, align 4, !dbg !5735
  %cmp = icmp eq i32 %4, 0, !dbg !5737
  br i1 %cmp, label %if.then, label %if.end, !dbg !5738

if.then:                                          ; preds = %entry
  %5 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5739
  %receiver_on = getelementptr inbounds %struct.iguanair, %struct.iguanair* %5, i32 0, i32 6, !dbg !5740
  store i8 1, i8* %receiver_on, align 4, !dbg !5741
  br label %if.end, !dbg !5739

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %rc, align 4, !dbg !5742
  ret i32 %6, !dbg !5743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @iguanair_close(%struct.rc_dev* %rdev) #2 !dbg !5744 {
entry:
  %rdev.addr = alloca %struct.rc_dev*, align 8
  %ir = alloca %struct.iguanair*, align 8
  %rc = alloca i32, align 4
  store %struct.rc_dev* %rdev, %struct.rc_dev** %rdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %rdev.addr, metadata !5745, metadata !DIExpression()), !dbg !5746
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5747, metadata !DIExpression()), !dbg !5748
  %0 = load %struct.rc_dev*, %struct.rc_dev** %rdev.addr, align 8, !dbg !5749
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5750
  %1 = load i8*, i8** %priv, align 8, !dbg !5750
  %2 = bitcast i8* %1 to %struct.iguanair*, !dbg !5749
  store %struct.iguanair* %2, %struct.iguanair** %ir, align 8, !dbg !5748
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5751, metadata !DIExpression()), !dbg !5752
  %3 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5753
  %call = call i32 @iguanair_receiver(%struct.iguanair* %3, i1 zeroext false) #9, !dbg !5754
  store i32 %call, i32* %rc, align 4, !dbg !5755
  %4 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5756
  %receiver_on = getelementptr inbounds %struct.iguanair, %struct.iguanair* %4, i32 0, i32 6, !dbg !5757
  store i8 0, i8* %receiver_on, align 4, !dbg !5758
  %5 = load i32, i32* %rc, align 4, !dbg !5759
  %tobool = icmp ne i32 %5, 0, !dbg !5759
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5761

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %rc, align 4, !dbg !5762
  %cmp = icmp ne i32 %6, -19, !dbg !5763
  br i1 %cmp, label %if.then, label %if.end, !dbg !5764

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5765
  %dev = getelementptr inbounds %struct.iguanair, %struct.iguanair* %7, i32 0, i32 1, !dbg !5765
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5765
  %9 = load i32, i32* %rc, align 4, !dbg !5765
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %9) #10, !dbg !5765
  br label %if.end, !dbg !5765

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !5766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_set_tx_mask(%struct.rc_dev* %dev, i32 %mask) #2 !dbg !5767 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %mask.addr = alloca i32, align 4
  %ir = alloca %struct.iguanair*, align 8
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5774, metadata !DIExpression()), !dbg !5775
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5776
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5777
  %1 = load i8*, i8** %priv, align 8, !dbg !5777
  %2 = bitcast i8* %1 to %struct.iguanair*, !dbg !5776
  store %struct.iguanair* %2, %struct.iguanair** %ir, align 8, !dbg !5775
  %3 = load i32, i32* %mask.addr, align 4, !dbg !5778
  %cmp = icmp ugt i32 %3, 15, !dbg !5780
  br i1 %cmp, label %if.then, label %if.end, !dbg !5781

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %mask.addr, align 4, !dbg !5783
  %shl = shl i32 %4, 4, !dbg !5784
  %conv = trunc i32 %shl to i8, !dbg !5783
  %5 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5785
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %5, i32 0, i32 15, !dbg !5786
  %6 = load %struct.send_packet*, %struct.send_packet** %packet, align 8, !dbg !5786
  %channels = getelementptr inbounds %struct.send_packet, %struct.send_packet* %6, i32 0, i32 2, !dbg !5787
  store i8 %conv, i8* %channels, align 1, !dbg !5788
  store i32 0, i32* %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5790
  ret i32 %7, !dbg !5790
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_set_tx_carrier(%struct.rc_dev* %dev, i32 %carrier) #2 !dbg !5791 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.rc_dev*, align 8
  %carrier.addr = alloca i32, align 4
  %ir = alloca %struct.iguanair*, align 8
  %cycles = alloca i32, align 4
  %fours = alloca i32, align 4
  %sevens = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  store i32 %carrier, i32* %carrier.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %carrier.addr, metadata !5794, metadata !DIExpression()), !dbg !5795
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5796, metadata !DIExpression()), !dbg !5797
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5798
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5799
  %1 = load i8*, i8** %priv, align 8, !dbg !5799
  %2 = bitcast i8* %1 to %struct.iguanair*, !dbg !5798
  store %struct.iguanair* %2, %struct.iguanair** %ir, align 8, !dbg !5797
  %3 = load i32, i32* %carrier.addr, align 4, !dbg !5800
  %cmp = icmp ult i32 %3, 25000, !dbg !5802
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5803

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %carrier.addr, align 4, !dbg !5804
  %cmp1 = icmp ugt i32 %4, 150000, !dbg !5805
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5806

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %carrier.addr, align 4, !dbg !5808
  %6 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5810
  %carrier2 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %6, i32 0, i32 14, !dbg !5811
  %7 = load i32, i32* %carrier2, align 4, !dbg !5811
  %cmp3 = icmp ne i32 %5, %7, !dbg !5812
  br i1 %cmp3, label %if.then4, label %if.end17, !dbg !5813

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %cycles, metadata !5814, metadata !DIExpression()), !dbg !5816
  call void @llvm.dbg.declare(metadata i32* %fours, metadata !5817, metadata !DIExpression()), !dbg !5818
  call void @llvm.dbg.declare(metadata i32* %sevens, metadata !5819, metadata !DIExpression()), !dbg !5820
  %8 = load i32, i32* %carrier.addr, align 4, !dbg !5821
  %9 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5822
  %carrier5 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %9, i32 0, i32 14, !dbg !5823
  store i32 %8, i32* %carrier5, align 4, !dbg !5824
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5825, metadata !DIExpression()), !dbg !5827
  store i32 24000000, i32* %__x, align 4, !dbg !5827
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5828, metadata !DIExpression()), !dbg !5827
  %10 = load i32, i32* %carrier.addr, align 4, !dbg !5827
  %mul = mul i32 %10, 2, !dbg !5827
  store i32 %mul, i32* %__d, align 4, !dbg !5827
  %11 = load i32, i32* %__x, align 4, !dbg !5827
  %12 = load i32, i32* %__d, align 4, !dbg !5827
  %div = udiv i32 %12, 2, !dbg !5827
  %add = add i32 %11, %div, !dbg !5827
  %13 = load i32, i32* %__d, align 4, !dbg !5827
  %div6 = udiv i32 %add, %13, !dbg !5827
  store i32 %div6, i32* %tmp, align 4, !dbg !5827
  %14 = load i32, i32* %tmp, align 4, !dbg !5827
  %15 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5829
  %cycle_overhead = getelementptr inbounds %struct.iguanair, %struct.iguanair* %15, i32 0, i32 5, !dbg !5830
  %16 = load i8, i8* %cycle_overhead, align 1, !dbg !5830
  %conv = zext i8 %16 to i32, !dbg !5829
  %sub = sub i32 %14, %conv, !dbg !5831
  store i32 %sub, i32* %cycles, align 4, !dbg !5832
  %17 = load i32, i32* %cycles, align 4, !dbg !5833
  %sub7 = sub i32 4, %17, !dbg !5834
  %and = and i32 %sub7, 3, !dbg !5835
  store i32 %and, i32* %sevens, align 4, !dbg !5836
  %18 = load i32, i32* %cycles, align 4, !dbg !5837
  %19 = load i32, i32* %sevens, align 4, !dbg !5838
  %mul8 = mul i32 %19, 7, !dbg !5839
  %sub9 = sub i32 %18, %mul8, !dbg !5840
  %div10 = udiv i32 %sub9, 4, !dbg !5841
  store i32 %div10, i32* %fours, align 4, !dbg !5842
  %20 = load i32, i32* %sevens, align 4, !dbg !5843
  %sub11 = sub i32 4, %20, !dbg !5844
  %mul12 = mul i32 %sub11, 2, !dbg !5845
  %conv13 = trunc i32 %mul12 to i8, !dbg !5846
  %21 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5847
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %21, i32 0, i32 15, !dbg !5848
  %22 = load %struct.send_packet*, %struct.send_packet** %packet, align 8, !dbg !5848
  %busy7 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %22, i32 0, i32 3, !dbg !5849
  store i8 %conv13, i8* %busy7, align 2, !dbg !5850
  %23 = load i32, i32* %fours, align 4, !dbg !5851
  %sub14 = sub i32 110, %23, !dbg !5852
  %conv15 = trunc i32 %sub14 to i8, !dbg !5853
  %24 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5854
  %packet16 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %24, i32 0, i32 15, !dbg !5855
  %25 = load %struct.send_packet*, %struct.send_packet** %packet16, align 8, !dbg !5855
  %busy4 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %25, i32 0, i32 4, !dbg !5856
  store i8 %conv15, i8* %busy4, align 1, !dbg !5857
  br label %if.end17, !dbg !5858

if.end17:                                         ; preds = %if.then4, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5859
  br label %return, !dbg !5859

return:                                           ; preds = %if.end17, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !5860
  ret i32 %26, !dbg !5860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_tx(%struct.rc_dev* %dev, i32* %txbuf, i32 %count) #2 !dbg !5861 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %txbuf.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %ir = alloca %struct.iguanair*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %p = alloca i32, align 4
  %periods = alloca i32, align 4
  %rc = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x237 = alloca i32, align 4
  %__UNIQUE_ID___y238 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !5862, metadata !DIExpression()), !dbg !5863
  store i32* %txbuf, i32** %txbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %txbuf.addr, metadata !5864, metadata !DIExpression()), !dbg !5865
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir, metadata !5868, metadata !DIExpression()), !dbg !5869
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !5870
  %priv = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %0, i32 0, i32 24, !dbg !5871
  %1 = load i8*, i8** %priv, align 8, !dbg !5871
  %2 = bitcast i8* %1 to %struct.iguanair*, !dbg !5870
  store %struct.iguanair* %2, %struct.iguanair** %ir, align 8, !dbg !5869
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5872, metadata !DIExpression()), !dbg !5873
  call void @llvm.dbg.declare(metadata i32* %size, metadata !5874, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.declare(metadata i32* %p, metadata !5876, metadata !DIExpression()), !dbg !5877
  call void @llvm.dbg.declare(metadata i32* %periods, metadata !5878, metadata !DIExpression()), !dbg !5879
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5880, metadata !DIExpression()), !dbg !5881
  store i32 0, i32* %size, align 4, !dbg !5882
  store i32 0, i32* %i, align 4, !dbg !5884
  br label %for.cond, !dbg !5885

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5886
  %4 = load i32, i32* %count.addr, align 4, !dbg !5888
  %cmp = icmp ult i32 %3, %4, !dbg !5889
  br i1 %cmp, label %for.body, label %for.end, !dbg !5890

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5891, metadata !DIExpression()), !dbg !5894
  %5 = load i32*, i32** %txbuf.addr, align 8, !dbg !5894
  %6 = load i32, i32* %i, align 4, !dbg !5894
  %idxprom = zext i32 %6 to i64, !dbg !5894
  %arrayidx = getelementptr i32, i32* %5, i64 %idxprom, !dbg !5894
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5894
  %8 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5894
  %carrier = getelementptr inbounds %struct.iguanair, %struct.iguanair* %8, i32 0, i32 14, !dbg !5894
  %9 = load i32, i32* %carrier, align 4, !dbg !5894
  %mul = mul i32 %7, %9, !dbg !5894
  store i32 %mul, i32* %__x, align 4, !dbg !5894
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5895, metadata !DIExpression()), !dbg !5894
  store i32 1000000, i32* %__d, align 4, !dbg !5894
  %10 = load i32, i32* %__x, align 4, !dbg !5894
  %11 = load i32, i32* %__d, align 4, !dbg !5894
  %div = sdiv i32 %11, 2, !dbg !5894
  %add = add i32 %10, %div, !dbg !5894
  %12 = load i32, i32* %__d, align 4, !dbg !5894
  %div1 = udiv i32 %add, %12, !dbg !5894
  store i32 %div1, i32* %tmp, align 4, !dbg !5894
  %13 = load i32, i32* %tmp, align 4, !dbg !5894
  store i32 %13, i32* %periods, align 4, !dbg !5896
  br label %while.cond, !dbg !5897

while.cond:                                       ; preds = %if.end, %for.body
  %14 = load i32, i32* %periods, align 4, !dbg !5898
  %tobool = icmp ne i32 %14, 0, !dbg !5897
  br i1 %tobool, label %while.body, label %while.end, !dbg !5897

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x237, metadata !5899, metadata !DIExpression()), !dbg !5902
  %15 = load i32, i32* %periods, align 4, !dbg !5902
  store i32 %15, i32* %__UNIQUE_ID___x237, align 4, !dbg !5902
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y238, metadata !5903, metadata !DIExpression()), !dbg !5902
  store i32 127, i32* %__UNIQUE_ID___y238, align 4, !dbg !5902
  %16 = load i32, i32* %__UNIQUE_ID___x237, align 4, !dbg !5902
  %17 = load i32, i32* %__UNIQUE_ID___y238, align 4, !dbg !5902
  %cmp3 = icmp ult i32 %16, %17, !dbg !5902
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !5902

cond.true:                                        ; preds = %while.body
  %18 = load i32, i32* %__UNIQUE_ID___x237, align 4, !dbg !5902
  br label %cond.end, !dbg !5902

cond.false:                                       ; preds = %while.body
  %19 = load i32, i32* %__UNIQUE_ID___y238, align 4, !dbg !5902
  br label %cond.end, !dbg !5902

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !5902
  store i32 %cond, i32* %tmp2, align 4, !dbg !5902
  %20 = load i32, i32* %tmp2, align 4, !dbg !5902
  store i32 %20, i32* %p, align 4, !dbg !5904
  %21 = load i32, i32* %size, align 4, !dbg !5905
  %22 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5907
  %bufsize = getelementptr inbounds %struct.iguanair, %struct.iguanair* %22, i32 0, i32 4, !dbg !5908
  %23 = load i8, i8* %bufsize, align 2, !dbg !5908
  %conv = zext i8 %23 to i32, !dbg !5907
  %cmp4 = icmp uge i32 %21, %conv, !dbg !5909
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5910

if.then:                                          ; preds = %cond.end
  store i32 -22, i32* %rc, align 4, !dbg !5911
  br label %out, !dbg !5913

if.end:                                           ; preds = %cond.end
  %24 = load i32, i32* %p, align 4, !dbg !5914
  %25 = load i32, i32* %i, align 4, !dbg !5915
  %and = and i32 %25, 1, !dbg !5916
  %tobool6 = icmp ne i32 %and, 0, !dbg !5917
  %26 = zext i1 %tobool6 to i64, !dbg !5917
  %cond7 = select i1 %tobool6, i32 128, i32 0, !dbg !5917
  %or = or i32 %24, %cond7, !dbg !5918
  %conv8 = trunc i32 %or to i8, !dbg !5914
  %27 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5919
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %27, i32 0, i32 15, !dbg !5920
  %28 = load %struct.send_packet*, %struct.send_packet** %packet, align 8, !dbg !5920
  %payload = getelementptr inbounds %struct.send_packet, %struct.send_packet* %28, i32 0, i32 5, !dbg !5921
  %29 = load i32, i32* %size, align 4, !dbg !5922
  %inc = add i32 %29, 1, !dbg !5922
  store i32 %inc, i32* %size, align 4, !dbg !5922
  %idxprom9 = zext i32 %29 to i64, !dbg !5919
  %arrayidx10 = getelementptr [0 x i8], [0 x i8]* %payload, i64 0, i64 %idxprom9, !dbg !5919
  store i8 %conv8, i8* %arrayidx10, align 1, !dbg !5923
  %30 = load i32, i32* %p, align 4, !dbg !5924
  %31 = load i32, i32* %periods, align 4, !dbg !5925
  %sub = sub i32 %31, %30, !dbg !5925
  store i32 %sub, i32* %periods, align 4, !dbg !5925
  br label %while.cond, !dbg !5897, !llvm.loop !5926

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !5928

for.inc:                                          ; preds = %while.end
  %32 = load i32, i32* %i, align 4, !dbg !5929
  %inc11 = add i32 %32, 1, !dbg !5929
  store i32 %inc11, i32* %i, align 4, !dbg !5929
  br label %for.cond, !dbg !5930, !llvm.loop !5931

for.end:                                          ; preds = %for.cond
  %33 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5933
  %packet12 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %33, i32 0, i32 15, !dbg !5934
  %34 = load %struct.send_packet*, %struct.send_packet** %packet12, align 8, !dbg !5934
  %header = getelementptr inbounds %struct.send_packet, %struct.send_packet* %34, i32 0, i32 0, !dbg !5935
  %start = getelementptr inbounds %struct.packet, %struct.packet* %header, i32 0, i32 0, !dbg !5936
  store i16 0, i16* %start, align 2, !dbg !5937
  %35 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5938
  %packet13 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %35, i32 0, i32 15, !dbg !5939
  %36 = load %struct.send_packet*, %struct.send_packet** %packet13, align 8, !dbg !5939
  %header14 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %36, i32 0, i32 0, !dbg !5940
  %direction = getelementptr inbounds %struct.packet, %struct.packet* %header14, i32 0, i32 1, !dbg !5941
  store i8 -51, i8* %direction, align 2, !dbg !5942
  %37 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5943
  %packet15 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %37, i32 0, i32 15, !dbg !5944
  %38 = load %struct.send_packet*, %struct.send_packet** %packet15, align 8, !dbg !5944
  %header16 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %38, i32 0, i32 0, !dbg !5945
  %cmd = getelementptr inbounds %struct.packet, %struct.packet* %header16, i32 0, i32 2, !dbg !5946
  store i8 21, i8* %cmd, align 1, !dbg !5947
  %39 = load i32, i32* %size, align 4, !dbg !5948
  %conv17 = trunc i32 %39 to i8, !dbg !5948
  %40 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5949
  %packet18 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %40, i32 0, i32 15, !dbg !5950
  %41 = load %struct.send_packet*, %struct.send_packet** %packet18, align 8, !dbg !5950
  %length = getelementptr inbounds %struct.send_packet, %struct.send_packet* %41, i32 0, i32 1, !dbg !5951
  store i8 %conv17, i8* %length, align 2, !dbg !5952
  %42 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5953
  %tx_overflow = getelementptr inbounds %struct.iguanair, %struct.iguanair* %42, i32 0, i32 13, !dbg !5954
  store i8 0, i8* %tx_overflow, align 8, !dbg !5955
  %43 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5956
  %44 = load i32, i32* %size, align 4, !dbg !5957
  %conv19 = zext i32 %44 to i64, !dbg !5957
  %add20 = add i64 8, %conv19, !dbg !5958
  %conv21 = trunc i64 %add20 to i32, !dbg !5959
  %call = call i32 @iguanair_send(%struct.iguanair* %43, i32 %conv21) #9, !dbg !5960
  store i32 %call, i32* %rc, align 4, !dbg !5961
  %45 = load i32, i32* %rc, align 4, !dbg !5962
  %cmp22 = icmp eq i32 %45, 0, !dbg !5964
  br i1 %cmp22, label %land.lhs.true, label %if.end28, !dbg !5965

land.lhs.true:                                    ; preds = %for.end
  %46 = load %struct.iguanair*, %struct.iguanair** %ir, align 8, !dbg !5966
  %tx_overflow24 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %46, i32 0, i32 13, !dbg !5967
  %47 = load i8, i8* %tx_overflow24, align 8, !dbg !5967
  %tobool25 = trunc i8 %47 to i1, !dbg !5967
  br i1 %tobool25, label %if.then27, label %if.end28, !dbg !5968

if.then27:                                        ; preds = %land.lhs.true
  store i32 -75, i32* %rc, align 4, !dbg !5969
  br label %if.end28, !dbg !5970

if.end28:                                         ; preds = %if.then27, %land.lhs.true, %for.end
  br label %out, !dbg !5967

out:                                              ; preds = %if.end28, %if.then
  call void @llvm.dbg.label(metadata !5971), !dbg !5972
  %48 = load i32, i32* %rc, align 4, !dbg !5973
  %tobool29 = icmp ne i32 %48, 0, !dbg !5973
  br i1 %tobool29, label %cond.true30, label %cond.false31, !dbg !5973

cond.true30:                                      ; preds = %out
  %49 = load i32, i32* %rc, align 4, !dbg !5974
  br label %cond.end32, !dbg !5973

cond.false31:                                     ; preds = %out
  %50 = load i32, i32* %count.addr, align 4, !dbg !5975
  br label %cond.end32, !dbg !5973

cond.end32:                                       ; preds = %cond.false31, %cond.true30
  %cond33 = phi i32 [ %49, %cond.true30 ], [ %50, %cond.false31 ], !dbg !5973
  ret i32 %cond33, !dbg !5976
}

; Function Attrs: noredzone
declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5977 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5982, metadata !DIExpression()), !dbg !5983
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5984
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5985
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5986
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5987
  ret void, !dbg !5988
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @rc_free_device(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5989 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5993, metadata !DIExpression()), !dbg !5998
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6000, metadata !DIExpression()), !dbg !6001
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  %0 = load i64, i64* %size.addr, align 8, !dbg !6004
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6006
  br i1 %1, label %if.then, label %if.end447, !dbg !6007

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6008
  %tobool = icmp ne i64 %2, 0, !dbg !6008
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6011

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6012
  br label %return, !dbg !6012

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6013
  %cmp = icmp ult i64 %3, 4096, !dbg !6015
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6016

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6017
  br label %return, !dbg !6017

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub = sub i64 %4, 1, !dbg !6018
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6018
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6018

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub4 = sub i64 %6, 1, !dbg !6018
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6018
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6018

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub6 = sub i64 %8, 1, !dbg !6018
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6018
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6018

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6018

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub9 = sub i64 %9, 1, !dbg !6018
  %and = and i64 %sub9, -9223372036854775808, !dbg !6018
  %tobool10 = icmp ne i64 %and, 0, !dbg !6018
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6018

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6018

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub13 = sub i64 %10, 1, !dbg !6018
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6018
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6018
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6018

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6018

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub18 = sub i64 %11, 1, !dbg !6018
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6018
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6018
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6018

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6018

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub23 = sub i64 %12, 1, !dbg !6018
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6018
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6018
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6018

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6018

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub28 = sub i64 %13, 1, !dbg !6018
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6018
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6018
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6018

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6018

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub33 = sub i64 %14, 1, !dbg !6018
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6018
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6018
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6018

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6018

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub38 = sub i64 %15, 1, !dbg !6018
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6018
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6018
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6018

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6018

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub43 = sub i64 %16, 1, !dbg !6018
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6018
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6018
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6018

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6018

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub48 = sub i64 %17, 1, !dbg !6018
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6018
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6018
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6018

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6018

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub53 = sub i64 %18, 1, !dbg !6018
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6018
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6018
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6018

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6018

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub58 = sub i64 %19, 1, !dbg !6018
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6018
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6018
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6018

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6018

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub63 = sub i64 %20, 1, !dbg !6018
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6018
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6018
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6018

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6018

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub68 = sub i64 %21, 1, !dbg !6018
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6018
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6018
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6018

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6018

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub73 = sub i64 %22, 1, !dbg !6018
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6018
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6018
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6018

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6018

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub78 = sub i64 %23, 1, !dbg !6018
  %and79 = and i64 %sub78, 562949953421312, !dbg !6018
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6018
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6018

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6018

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub83 = sub i64 %24, 1, !dbg !6018
  %and84 = and i64 %sub83, 281474976710656, !dbg !6018
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6018
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6018

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6018

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub88 = sub i64 %25, 1, !dbg !6018
  %and89 = and i64 %sub88, 140737488355328, !dbg !6018
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6018
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6018

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6018

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub93 = sub i64 %26, 1, !dbg !6018
  %and94 = and i64 %sub93, 70368744177664, !dbg !6018
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6018
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6018

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6018

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub98 = sub i64 %27, 1, !dbg !6018
  %and99 = and i64 %sub98, 35184372088832, !dbg !6018
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6018
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6018

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6018

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub103 = sub i64 %28, 1, !dbg !6018
  %and104 = and i64 %sub103, 17592186044416, !dbg !6018
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6018
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6018

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6018

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub108 = sub i64 %29, 1, !dbg !6018
  %and109 = and i64 %sub108, 8796093022208, !dbg !6018
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6018
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6018

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6018

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub113 = sub i64 %30, 1, !dbg !6018
  %and114 = and i64 %sub113, 4398046511104, !dbg !6018
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6018
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6018

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6018

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub118 = sub i64 %31, 1, !dbg !6018
  %and119 = and i64 %sub118, 2199023255552, !dbg !6018
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6018
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6018

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6018

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub123 = sub i64 %32, 1, !dbg !6018
  %and124 = and i64 %sub123, 1099511627776, !dbg !6018
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6018
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6018

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6018

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub128 = sub i64 %33, 1, !dbg !6018
  %and129 = and i64 %sub128, 549755813888, !dbg !6018
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6018
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6018

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6018

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub133 = sub i64 %34, 1, !dbg !6018
  %and134 = and i64 %sub133, 274877906944, !dbg !6018
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6018
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6018

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6018

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub138 = sub i64 %35, 1, !dbg !6018
  %and139 = and i64 %sub138, 137438953472, !dbg !6018
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6018
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6018

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6018

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub143 = sub i64 %36, 1, !dbg !6018
  %and144 = and i64 %sub143, 68719476736, !dbg !6018
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6018
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6018

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6018

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub148 = sub i64 %37, 1, !dbg !6018
  %and149 = and i64 %sub148, 34359738368, !dbg !6018
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6018
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6018

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6018

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub153 = sub i64 %38, 1, !dbg !6018
  %and154 = and i64 %sub153, 17179869184, !dbg !6018
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6018
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6018

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6018

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub158 = sub i64 %39, 1, !dbg !6018
  %and159 = and i64 %sub158, 8589934592, !dbg !6018
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6018
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6018

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6018

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub163 = sub i64 %40, 1, !dbg !6018
  %and164 = and i64 %sub163, 4294967296, !dbg !6018
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6018
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6018

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6018

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub168 = sub i64 %41, 1, !dbg !6018
  %and169 = and i64 %sub168, 2147483648, !dbg !6018
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6018
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6018

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6018

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub173 = sub i64 %42, 1, !dbg !6018
  %and174 = and i64 %sub173, 1073741824, !dbg !6018
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6018
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6018

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6018

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub178 = sub i64 %43, 1, !dbg !6018
  %and179 = and i64 %sub178, 536870912, !dbg !6018
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6018
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6018

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6018

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub183 = sub i64 %44, 1, !dbg !6018
  %and184 = and i64 %sub183, 268435456, !dbg !6018
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6018
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6018

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6018

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub188 = sub i64 %45, 1, !dbg !6018
  %and189 = and i64 %sub188, 134217728, !dbg !6018
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6018
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6018

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6018

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub193 = sub i64 %46, 1, !dbg !6018
  %and194 = and i64 %sub193, 67108864, !dbg !6018
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6018
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6018

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6018

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub198 = sub i64 %47, 1, !dbg !6018
  %and199 = and i64 %sub198, 33554432, !dbg !6018
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6018
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6018

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6018

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub203 = sub i64 %48, 1, !dbg !6018
  %and204 = and i64 %sub203, 16777216, !dbg !6018
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6018
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6018

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6018

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub208 = sub i64 %49, 1, !dbg !6018
  %and209 = and i64 %sub208, 8388608, !dbg !6018
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6018
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6018

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6018

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub213 = sub i64 %50, 1, !dbg !6018
  %and214 = and i64 %sub213, 4194304, !dbg !6018
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6018
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6018

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6018

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub218 = sub i64 %51, 1, !dbg !6018
  %and219 = and i64 %sub218, 2097152, !dbg !6018
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6018
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6018

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6018

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub223 = sub i64 %52, 1, !dbg !6018
  %and224 = and i64 %sub223, 1048576, !dbg !6018
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6018
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6018

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6018

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub228 = sub i64 %53, 1, !dbg !6018
  %and229 = and i64 %sub228, 524288, !dbg !6018
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6018
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6018

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6018

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub233 = sub i64 %54, 1, !dbg !6018
  %and234 = and i64 %sub233, 262144, !dbg !6018
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6018
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6018

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6018

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub238 = sub i64 %55, 1, !dbg !6018
  %and239 = and i64 %sub238, 131072, !dbg !6018
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6018
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6018

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6018

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub243 = sub i64 %56, 1, !dbg !6018
  %and244 = and i64 %sub243, 65536, !dbg !6018
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6018
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6018

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6018

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub248 = sub i64 %57, 1, !dbg !6018
  %and249 = and i64 %sub248, 32768, !dbg !6018
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6018
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6018

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6018

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub253 = sub i64 %58, 1, !dbg !6018
  %and254 = and i64 %sub253, 16384, !dbg !6018
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6018
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6018

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6018

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub258 = sub i64 %59, 1, !dbg !6018
  %and259 = and i64 %sub258, 8192, !dbg !6018
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6018
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6018

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6018

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub263 = sub i64 %60, 1, !dbg !6018
  %and264 = and i64 %sub263, 4096, !dbg !6018
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6018
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6018

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6018

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub268 = sub i64 %61, 1, !dbg !6018
  %and269 = and i64 %sub268, 2048, !dbg !6018
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6018
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6018

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6018

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub273 = sub i64 %62, 1, !dbg !6018
  %and274 = and i64 %sub273, 1024, !dbg !6018
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6018
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6018

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6018

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub278 = sub i64 %63, 1, !dbg !6018
  %and279 = and i64 %sub278, 512, !dbg !6018
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6018
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6018

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6018

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub283 = sub i64 %64, 1, !dbg !6018
  %and284 = and i64 %sub283, 256, !dbg !6018
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6018
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6018

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6018

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub288 = sub i64 %65, 1, !dbg !6018
  %and289 = and i64 %sub288, 128, !dbg !6018
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6018
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6018

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6018

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub293 = sub i64 %66, 1, !dbg !6018
  %and294 = and i64 %sub293, 64, !dbg !6018
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6018
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6018

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6018

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub298 = sub i64 %67, 1, !dbg !6018
  %and299 = and i64 %sub298, 32, !dbg !6018
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6018
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6018

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6018

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub303 = sub i64 %68, 1, !dbg !6018
  %and304 = and i64 %sub303, 16, !dbg !6018
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6018
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6018

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6018

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub308 = sub i64 %69, 1, !dbg !6018
  %and309 = and i64 %sub308, 8, !dbg !6018
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6018
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6018

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6018

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub313 = sub i64 %70, 1, !dbg !6018
  %and314 = and i64 %sub313, 4, !dbg !6018
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6018
  %71 = zext i1 %tobool315 to i64, !dbg !6018
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6018
  br label %cond.end, !dbg !6018

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6018
  br label %cond.end317, !dbg !6018

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6018
  br label %cond.end319, !dbg !6018

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6018
  br label %cond.end321, !dbg !6018

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6018
  br label %cond.end323, !dbg !6018

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6018
  br label %cond.end325, !dbg !6018

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6018
  br label %cond.end327, !dbg !6018

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6018
  br label %cond.end329, !dbg !6018

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6018
  br label %cond.end331, !dbg !6018

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6018
  br label %cond.end333, !dbg !6018

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6018
  br label %cond.end335, !dbg !6018

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6018
  br label %cond.end337, !dbg !6018

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6018
  br label %cond.end339, !dbg !6018

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6018
  br label %cond.end341, !dbg !6018

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6018
  br label %cond.end343, !dbg !6018

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6018
  br label %cond.end345, !dbg !6018

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6018
  br label %cond.end347, !dbg !6018

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6018
  br label %cond.end349, !dbg !6018

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6018
  br label %cond.end351, !dbg !6018

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6018
  br label %cond.end353, !dbg !6018

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6018
  br label %cond.end355, !dbg !6018

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6018
  br label %cond.end357, !dbg !6018

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6018
  br label %cond.end359, !dbg !6018

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6018
  br label %cond.end361, !dbg !6018

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6018
  br label %cond.end363, !dbg !6018

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6018
  br label %cond.end365, !dbg !6018

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6018
  br label %cond.end367, !dbg !6018

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6018
  br label %cond.end369, !dbg !6018

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6018
  br label %cond.end371, !dbg !6018

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6018
  br label %cond.end373, !dbg !6018

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6018
  br label %cond.end375, !dbg !6018

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6018
  br label %cond.end377, !dbg !6018

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6018
  br label %cond.end379, !dbg !6018

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6018
  br label %cond.end381, !dbg !6018

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6018
  br label %cond.end383, !dbg !6018

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6018
  br label %cond.end385, !dbg !6018

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6018
  br label %cond.end387, !dbg !6018

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6018
  br label %cond.end389, !dbg !6018

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6018
  br label %cond.end391, !dbg !6018

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6018
  br label %cond.end393, !dbg !6018

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6018
  br label %cond.end395, !dbg !6018

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6018
  br label %cond.end397, !dbg !6018

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6018
  br label %cond.end399, !dbg !6018

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6018
  br label %cond.end401, !dbg !6018

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6018
  br label %cond.end403, !dbg !6018

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6018
  br label %cond.end405, !dbg !6018

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6018
  br label %cond.end407, !dbg !6018

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6018
  br label %cond.end409, !dbg !6018

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6018
  br label %cond.end411, !dbg !6018

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6018
  br label %cond.end413, !dbg !6018

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6018
  br label %cond.end415, !dbg !6018

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6018
  br label %cond.end417, !dbg !6018

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6018
  br label %cond.end419, !dbg !6018

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6018
  br label %cond.end421, !dbg !6018

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6018
  br label %cond.end423, !dbg !6018

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6018
  br label %cond.end425, !dbg !6018

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6018
  br label %cond.end427, !dbg !6018

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6018
  br label %cond.end429, !dbg !6018

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6018
  br label %cond.end431, !dbg !6018

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6018
  br label %cond.end433, !dbg !6018

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6018
  br label %cond.end435, !dbg !6018

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6018
  br label %cond.end437, !dbg !6018

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6018
  br label %cond.end440, !dbg !6018

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6018

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6018
  br label %cond.end444, !dbg !6018

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6018
  %sub443 = sub i64 %72, 1, !dbg !6018
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !6018
  br label %cond.end444, !dbg !6018

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6018
  %sub446 = sub i32 %cond445, 12, !dbg !6019
  %add = add i32 %sub446, 1, !dbg !6020
  store i32 %add, i32* %retval, align 4, !dbg !6021
  br label %return, !dbg !6021

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6022
  %dec = add i64 %73, -1, !dbg !6022
  store i64 %dec, i64* %size.addr, align 8, !dbg !6022
  %74 = load i64, i64* %size.addr, align 8, !dbg !6023
  %shr = lshr i64 %74, 12, !dbg !6023
  store i64 %shr, i64* %size.addr, align 8, !dbg !6023
  %75 = load i64, i64* %size.addr, align 8, !dbg !6024
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6001
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6025
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6026
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6025, !srcloc !6027
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6025
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6028
  %add.i = add i32 %79, 1, !dbg !6029
  store i32 %add.i, i32* %retval, align 4, !dbg !6030
  br label %return, !dbg !6030

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6031
  ret i32 %80, !dbg !6031
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6032 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5993, metadata !DIExpression()), !dbg !6036
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6000, metadata !DIExpression()), !dbg !6038
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load i64, i64* %n.addr, align 8, !dbg !6041
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6038
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6042
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6043
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6042, !srcloc !6027
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6042
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6044
  %add.i = add i32 %4, 1, !dbg !6045
  %sub = sub i32 %add.i, 1, !dbg !6046
  ret i32 %sub, !dbg !6047
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6048 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6052, metadata !DIExpression()), !dbg !6053
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6060
  ret i8* %0, !dbg !6061
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !6062 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !6065
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !6066
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !6066
  %conv = zext i8 %1 to i32, !dbg !6065
  %and = and i32 %conv, 3, !dbg !6067
  %cmp = icmp eq i32 %and, 3, !dbg !6068
  %conv1 = zext i1 %cmp to i32, !dbg !6068
  ret i32 %conv1, !dbg !6069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !6070 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !6071, metadata !DIExpression()), !dbg !6072
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !6073
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !6074
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !6074
  %conv = zext i8 %1 to i32, !dbg !6073
  %and = and i32 %conv, 128, !dbg !6075
  %cmp = icmp eq i32 %and, 128, !dbg !6076
  %conv1 = zext i1 %cmp to i32, !dbg !6076
  ret i32 %conv1, !dbg !6077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !6078 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !6079, metadata !DIExpression()), !dbg !6080
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !6081
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !6082
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !6082
  %conv = zext i8 %1 to i32, !dbg !6081
  %and = and i32 %conv, 128, !dbg !6083
  %cmp = icmp eq i32 %and, 0, !dbg !6084
  %conv1 = zext i1 %cmp to i32, !dbg !6084
  ret i32 %conv1, !dbg !6085
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @process_ir_data(%struct.iguanair* %ir, i32 %len) #2 !dbg !6086 {
entry:
  %ir.addr = alloca %struct.iguanair*, align 8
  %len.addr = alloca i32, align 4
  %rawir = alloca %struct.ir_raw_event, align 4
  %i = alloca i32, align 4
  %event = alloca i8, align 1
  store %struct.iguanair* %ir, %struct.iguanair** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  %0 = load i32, i32* %len.addr, align 4, !dbg !6093
  %cmp = icmp uge i32 %0, 4, !dbg !6095
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6096

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6097
  %buf_in = getelementptr inbounds %struct.iguanair, %struct.iguanair* %1, i32 0, i32 9, !dbg !6098
  %2 = load i8*, i8** %buf_in, align 8, !dbg !6098
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !6097
  %3 = load i8, i8* %arrayidx, align 1, !dbg !6097
  %conv = zext i8 %3 to i32, !dbg !6097
  %cmp1 = icmp eq i32 %conv, 0, !dbg !6099
  br i1 %cmp1, label %land.lhs.true3, label %if.else, !dbg !6100

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6101
  %buf_in4 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %4, i32 0, i32 9, !dbg !6102
  %5 = load i8*, i8** %buf_in4, align 8, !dbg !6102
  %arrayidx5 = getelementptr i8, i8* %5, i64 1, !dbg !6101
  %6 = load i8, i8* %arrayidx5, align 1, !dbg !6101
  %conv6 = zext i8 %6 to i32, !dbg !6101
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !6103
  br i1 %cmp7, label %if.then, label %if.else, !dbg !6104

if.then:                                          ; preds = %land.lhs.true3
  %7 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6105
  %buf_in9 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %7, i32 0, i32 9, !dbg !6107
  %8 = load i8*, i8** %buf_in9, align 8, !dbg !6107
  %arrayidx10 = getelementptr i8, i8* %8, i64 3, !dbg !6105
  %9 = load i8, i8* %arrayidx10, align 1, !dbg !6105
  %conv11 = zext i8 %9 to i32, !dbg !6105
  switch i32 %conv11, label %sw.default [
    i32 1, label %sw.bb
    i32 17, label %sw.bb22
    i32 16, label %sw.bb30
    i32 50, label %sw.bb38
    i32 20, label %sw.bb39
    i32 18, label %sw.bb39
    i32 21, label %sw.bb39
    i32 49, label %sw.bb41
  ], !dbg !6108

sw.bb:                                            ; preds = %if.then
  %10 = load i32, i32* %len.addr, align 4, !dbg !6109
  %cmp12 = icmp eq i32 %10, 6, !dbg !6112
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !6113

if.then14:                                        ; preds = %sw.bb
  %11 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6114
  %buf_in15 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %11, i32 0, i32 9, !dbg !6116
  %12 = load i8*, i8** %buf_in15, align 8, !dbg !6116
  %arrayidx16 = getelementptr i8, i8* %12, i64 5, !dbg !6114
  %13 = load i8, i8* %arrayidx16, align 1, !dbg !6114
  %conv17 = zext i8 %13 to i32, !dbg !6114
  %shl = shl i32 %conv17, 8, !dbg !6117
  %14 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6118
  %buf_in18 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %14, i32 0, i32 9, !dbg !6119
  %15 = load i8*, i8** %buf_in18, align 8, !dbg !6119
  %arrayidx19 = getelementptr i8, i8* %15, i64 4, !dbg !6118
  %16 = load i8, i8* %arrayidx19, align 1, !dbg !6118
  %conv20 = zext i8 %16 to i32, !dbg !6118
  %or = or i32 %shl, %conv20, !dbg !6120
  %conv21 = trunc i32 %or to i16, !dbg !6121
  %17 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6122
  %version = getelementptr inbounds %struct.iguanair, %struct.iguanair* %17, i32 0, i32 3, !dbg !6123
  store i16 %conv21, i16* %version, align 8, !dbg !6124
  %18 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6125
  %completion = getelementptr inbounds %struct.iguanair, %struct.iguanair* %18, i32 0, i32 12, !dbg !6126
  call void @complete(%struct.completion* %completion) #9, !dbg !6127
  br label %if.end, !dbg !6128

if.end:                                           ; preds = %if.then14, %sw.bb
  br label %sw.epilog, !dbg !6129

sw.bb22:                                          ; preds = %if.then
  %19 = load i32, i32* %len.addr, align 4, !dbg !6130
  %cmp23 = icmp uge i32 %19, 5, !dbg !6132
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !6133

if.then25:                                        ; preds = %sw.bb22
  %20 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6134
  %buf_in26 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %20, i32 0, i32 9, !dbg !6136
  %21 = load i8*, i8** %buf_in26, align 8, !dbg !6136
  %arrayidx27 = getelementptr i8, i8* %21, i64 4, !dbg !6134
  %22 = load i8, i8* %arrayidx27, align 1, !dbg !6134
  %23 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6137
  %bufsize = getelementptr inbounds %struct.iguanair, %struct.iguanair* %23, i32 0, i32 4, !dbg !6138
  store i8 %22, i8* %bufsize, align 2, !dbg !6139
  %24 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6140
  %completion28 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %24, i32 0, i32 12, !dbg !6141
  call void @complete(%struct.completion* %completion28) #9, !dbg !6142
  br label %if.end29, !dbg !6143

if.end29:                                         ; preds = %if.then25, %sw.bb22
  br label %sw.epilog, !dbg !6144

sw.bb30:                                          ; preds = %if.then
  %25 = load i32, i32* %len.addr, align 4, !dbg !6145
  %cmp31 = icmp ugt i32 %25, 5, !dbg !6147
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !6148

if.then33:                                        ; preds = %sw.bb30
  %26 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6149
  %buf_in34 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %26, i32 0, i32 9, !dbg !6151
  %27 = load i8*, i8** %buf_in34, align 8, !dbg !6151
  %arrayidx35 = getelementptr i8, i8* %27, i64 5, !dbg !6149
  %28 = load i8, i8* %arrayidx35, align 1, !dbg !6149
  %29 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6152
  %cycle_overhead = getelementptr inbounds %struct.iguanair, %struct.iguanair* %29, i32 0, i32 5, !dbg !6153
  store i8 %28, i8* %cycle_overhead, align 1, !dbg !6154
  %30 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6155
  %completion36 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %30, i32 0, i32 12, !dbg !6156
  call void @complete(%struct.completion* %completion36) #9, !dbg !6157
  br label %if.end37, !dbg !6158

if.end37:                                         ; preds = %if.then33, %sw.bb30
  br label %sw.epilog, !dbg !6159

sw.bb38:                                          ; preds = %if.then
  %31 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6160
  %tx_overflow = getelementptr inbounds %struct.iguanair, %struct.iguanair* %31, i32 0, i32 13, !dbg !6161
  store i8 1, i8* %tx_overflow, align 8, !dbg !6162
  br label %sw.bb39, !dbg !6160

sw.bb39:                                          ; preds = %if.then, %if.then, %if.then, %sw.bb38
  %32 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6163
  %completion40 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %32, i32 0, i32 12, !dbg !6164
  call void @complete(%struct.completion* %completion40) #9, !dbg !6165
  br label %sw.epilog, !dbg !6166

sw.bb41:                                          ; preds = %if.then
  %33 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6167
  %dev = getelementptr inbounds %struct.iguanair, %struct.iguanair* %33, i32 0, i32 1, !dbg !6167
  %34 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6167
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !6167
  %35 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6168
  %rc = getelementptr inbounds %struct.iguanair, %struct.iguanair* %35, i32 0, i32 0, !dbg !6169
  %36 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !6169
  call void @ir_raw_event_reset(%struct.rc_dev* %36) #9, !dbg !6170
  br label %sw.epilog, !dbg !6171

sw.default:                                       ; preds = %if.then
  %37 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6172
  %dev42 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %37, i32 0, i32 1, !dbg !6172
  %38 = load %struct.device*, %struct.device** %dev42, align 8, !dbg !6172
  %39 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6172
  %buf_in43 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %39, i32 0, i32 9, !dbg !6172
  %40 = load i8*, i8** %buf_in43, align 8, !dbg !6172
  %arrayidx44 = getelementptr i8, i8* %40, i64 3, !dbg !6172
  %41 = load i8, i8* %arrayidx44, align 1, !dbg !6172
  %conv45 = zext i8 %41 to i32, !dbg !6172
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %conv45) #10, !dbg !6172
  br label %sw.epilog, !dbg !6173

sw.epilog:                                        ; preds = %sw.default, %sw.bb41, %sw.bb39, %if.end37, %if.end29, %if.end
  br label %if.end82, !dbg !6174

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %42 = load i32, i32* %len.addr, align 4, !dbg !6175
  %cmp46 = icmp uge i32 %42, 7, !dbg !6177
  br i1 %cmp46, label %if.then48, label %if.end81, !dbg !6178

if.then48:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct.ir_raw_event* %rawir, metadata !6179, metadata !DIExpression()), !dbg !6193
  %43 = bitcast %struct.ir_raw_event* %rawir to i8*, !dbg !6193
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 8, i1 false), !dbg !6193
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6194, metadata !DIExpression()), !dbg !6195
  call void @llvm.dbg.declare(metadata i8* %event, metadata !6196, metadata !DIExpression()), !dbg !6197
  store i8 0, i8* %event, align 1, !dbg !6197
  store i32 0, i32* %i, align 4, !dbg !6198
  br label %for.cond, !dbg !6200

for.cond:                                         ; preds = %for.inc, %if.then48
  %44 = load i32, i32* %i, align 4, !dbg !6201
  %cmp49 = icmp ult i32 %44, 7, !dbg !6203
  br i1 %cmp49, label %for.body, label %for.end, !dbg !6204

for.body:                                         ; preds = %for.cond
  %45 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6205
  %buf_in51 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %45, i32 0, i32 9, !dbg !6208
  %46 = load i8*, i8** %buf_in51, align 8, !dbg !6208
  %47 = load i32, i32* %i, align 4, !dbg !6209
  %idxprom = zext i32 %47 to i64, !dbg !6205
  %arrayidx52 = getelementptr i8, i8* %46, i64 %idxprom, !dbg !6205
  %48 = load i8, i8* %arrayidx52, align 1, !dbg !6205
  %conv53 = zext i8 %48 to i32, !dbg !6205
  %cmp54 = icmp eq i32 %conv53, 128, !dbg !6210
  br i1 %cmp54, label %if.then56, label %if.else57, !dbg !6211

if.then56:                                        ; preds = %for.body
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6212
  %bf.load = load i8, i8* %pulse, align 1, !dbg !6214
  %bf.clear = and i8 %bf.load, -2, !dbg !6214
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !6214
  %49 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6215
  %duration = bitcast %union.anon.66* %49 to i32*, !dbg !6215
  store i32 21845, i32* %duration, align 4, !dbg !6216
  br label %if.end73, !dbg !6217

if.else57:                                        ; preds = %for.body
  %50 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6218
  %buf_in58 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %50, i32 0, i32 9, !dbg !6220
  %51 = load i8*, i8** %buf_in58, align 8, !dbg !6220
  %52 = load i32, i32* %i, align 4, !dbg !6221
  %idxprom59 = zext i32 %52 to i64, !dbg !6218
  %arrayidx60 = getelementptr i8, i8* %51, i64 %idxprom59, !dbg !6218
  %53 = load i8, i8* %arrayidx60, align 1, !dbg !6218
  %conv61 = zext i8 %53 to i32, !dbg !6218
  %and = and i32 %conv61, 128, !dbg !6222
  %cmp62 = icmp eq i32 %and, 0, !dbg !6223
  %conv63 = zext i1 %cmp62 to i32, !dbg !6223
  %pulse64 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 2, !dbg !6224
  %54 = trunc i32 %conv63 to i8, !dbg !6225
  %bf.load65 = load i8, i8* %pulse64, align 1, !dbg !6225
  %bf.value = and i8 %54, 1, !dbg !6225
  %bf.clear66 = and i8 %bf.load65, -2, !dbg !6225
  %bf.set = or i8 %bf.clear66, %bf.value, !dbg !6225
  store i8 %bf.set, i8* %pulse64, align 1, !dbg !6225
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !6225
  %55 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6226
  %buf_in67 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %55, i32 0, i32 9, !dbg !6227
  %56 = load i8*, i8** %buf_in67, align 8, !dbg !6227
  %57 = load i32, i32* %i, align 4, !dbg !6228
  %idxprom68 = zext i32 %57 to i64, !dbg !6226
  %arrayidx69 = getelementptr i8, i8* %56, i64 %idxprom68, !dbg !6226
  %58 = load i8, i8* %arrayidx69, align 1, !dbg !6226
  %conv70 = zext i8 %58 to i32, !dbg !6226
  %and71 = and i32 %conv70, 127, !dbg !6229
  %add = add i32 %and71, 1, !dbg !6230
  %mul = mul i32 %add, 21, !dbg !6231
  %59 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %rawir, i32 0, i32 0, !dbg !6232
  %duration72 = bitcast %union.anon.66* %59 to i32*, !dbg !6232
  store i32 %mul, i32* %duration72, align 4, !dbg !6233
  br label %if.end73

if.end73:                                         ; preds = %if.else57, %if.then56
  %60 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6234
  %rc74 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %60, i32 0, i32 0, !dbg !6236
  %61 = load %struct.rc_dev*, %struct.rc_dev** %rc74, align 8, !dbg !6236
  %call = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %61, %struct.ir_raw_event* %rawir) #9, !dbg !6237
  %tobool = icmp ne i32 %call, 0, !dbg !6237
  br i1 %tobool, label %if.then75, label %if.end76, !dbg !6238

if.then75:                                        ; preds = %if.end73
  store i8 1, i8* %event, align 1, !dbg !6239
  br label %if.end76, !dbg !6240

if.end76:                                         ; preds = %if.then75, %if.end73
  br label %for.inc, !dbg !6241

for.inc:                                          ; preds = %if.end76
  %62 = load i32, i32* %i, align 4, !dbg !6242
  %inc = add i32 %62, 1, !dbg !6242
  store i32 %inc, i32* %i, align 4, !dbg !6242
  br label %for.cond, !dbg !6243, !llvm.loop !6244

for.end:                                          ; preds = %for.cond
  %63 = load i8, i8* %event, align 1, !dbg !6246
  %tobool77 = trunc i8 %63 to i1, !dbg !6246
  br i1 %tobool77, label %if.then78, label %if.end80, !dbg !6248

if.then78:                                        ; preds = %for.end
  %64 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6249
  %rc79 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %64, i32 0, i32 0, !dbg !6250
  %65 = load %struct.rc_dev*, %struct.rc_dev** %rc79, align 8, !dbg !6250
  call void @ir_raw_event_handle(%struct.rc_dev* %65) #9, !dbg !6251
  br label %if.end80, !dbg !6251

if.end80:                                         ; preds = %if.then78, %for.end
  br label %if.end81, !dbg !6252

if.end81:                                         ; preds = %if.end80, %if.else
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %sw.epilog
  ret void, !dbg !6253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ir_raw_event_reset(%struct.rc_dev* %dev) #2 !dbg !6254 {
entry:
  %dev.addr = alloca %struct.rc_dev*, align 8
  %.compoundliteral = alloca %struct.ir_raw_event, align 4
  store %struct.rc_dev* %dev, %struct.rc_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rc_dev** %dev.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  %0 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6257
  %1 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 0, !dbg !6258
  %2 = bitcast %union.anon.66* %1 to i8*, !dbg !6258
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 4, i1 false), !dbg !6258
  %duty_cycle = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 1, !dbg !6258
  store i8 0, i8* %duty_cycle, align 4, !dbg !6258
  %pulse = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6258
  %bf.load = load i8, i8* %pulse, align 1, !dbg !6258
  %bf.clear = and i8 %bf.load, -2, !dbg !6258
  store i8 %bf.clear, i8* %pulse, align 1, !dbg !6258
  %reset = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6258
  %bf.load1 = load i8, i8* %reset, align 1, !dbg !6258
  %bf.clear2 = and i8 %bf.load1, -3, !dbg !6258
  %bf.set = or i8 %bf.clear2, 2, !dbg !6258
  store i8 %bf.set, i8* %reset, align 1, !dbg !6258
  %timeout = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6258
  %bf.load3 = load i8, i8* %timeout, align 1, !dbg !6258
  %bf.clear4 = and i8 %bf.load3, -5, !dbg !6258
  store i8 %bf.clear4, i8* %timeout, align 1, !dbg !6258
  %carrier_report = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %.compoundliteral, i32 0, i32 2, !dbg !6258
  %bf.load5 = load i8, i8* %carrier_report, align 1, !dbg !6258
  %bf.clear6 = and i8 %bf.load5, -9, !dbg !6258
  store i8 %bf.clear6, i8* %carrier_report, align 1, !dbg !6258
  %call = call i32 @ir_raw_event_store(%struct.rc_dev* %0, %struct.ir_raw_event* %.compoundliteral) #9, !dbg !6259
  %3 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6260
  %idle = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %3, i32 0, i32 14, !dbg !6261
  store i8 1, i8* %idle, align 4, !dbg !6262
  %4 = load %struct.rc_dev*, %struct.rc_dev** %dev.addr, align 8, !dbg !6263
  call void @ir_raw_event_handle(%struct.rc_dev* %4) #9, !dbg !6264
  ret void, !dbg !6265
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i32 @ir_raw_event_store_with_filter(%struct.rc_dev*, %struct.ir_raw_event*) #1

; Function Attrs: noredzone
declare dso_local void @ir_raw_event_handle(%struct.rc_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @ir_raw_event_store(%struct.rc_dev*, %struct.ir_raw_event*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_send(%struct.iguanair* %ir, i32 %size) #2 !dbg !6266 {
entry:
  %retval = alloca i32, align 4
  %ir.addr = alloca %struct.iguanair*, align 8
  %size.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.iguanair* %ir, %struct.iguanair** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6273, metadata !DIExpression()), !dbg !6274
  %0 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6275
  %completion = getelementptr inbounds %struct.iguanair, %struct.iguanair* %0, i32 0, i32 12, !dbg !6276
  call void @reinit_completion(%struct.completion* %completion) #9, !dbg !6277
  %1 = load i32, i32* %size.addr, align 4, !dbg !6278
  %2 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6279
  %urb_out = getelementptr inbounds %struct.iguanair, %struct.iguanair* %2, i32 0, i32 11, !dbg !6280
  %3 = load %struct.urb*, %struct.urb** %urb_out, align 8, !dbg !6280
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 19, !dbg !6281
  store i32 %1, i32* %transfer_buffer_length, align 8, !dbg !6282
  %4 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6283
  %urb_out1 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %4, i32 0, i32 11, !dbg !6284
  %5 = load %struct.urb*, %struct.urb** %urb_out1, align 8, !dbg !6284
  %call = call i32 @usb_submit_urb(%struct.urb* %5, i32 3264) #9, !dbg !6285
  store i32 %call, i32* %rc, align 4, !dbg !6286
  %6 = load i32, i32* %rc, align 4, !dbg !6287
  %tobool = icmp ne i32 %6, 0, !dbg !6287
  br i1 %tobool, label %if.then, label %if.end, !dbg !6289

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %rc, align 4, !dbg !6290
  store i32 %7, i32* %retval, align 4, !dbg !6291
  br label %return, !dbg !6291

if.end:                                           ; preds = %entry
  %8 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6292
  %completion2 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %8, i32 0, i32 12, !dbg !6294
  %call3 = call i64 @wait_for_completion_timeout(%struct.completion* %completion2, i64 1000) #9, !dbg !6295
  %cmp = icmp eq i64 %call3, 0, !dbg !6296
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6297

if.then4:                                         ; preds = %if.end
  store i32 -110, i32* %retval, align 4, !dbg !6298
  br label %return, !dbg !6298

if.end5:                                          ; preds = %if.end
  %9 = load i32, i32* %rc, align 4, !dbg !6299
  store i32 %9, i32* %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6301
  ret i32 %10, !dbg !6301
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #2 !dbg !6302 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !6305
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !6306
  store i32 0, i32* %done, align 8, !dbg !6307
  ret void, !dbg !6308
}

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iguanair_receiver(%struct.iguanair* %ir, i1 zeroext %enable) #2 !dbg !6309 {
entry:
  %ir.addr = alloca %struct.iguanair*, align 8
  %enable.addr = alloca i8, align 1
  store %struct.iguanair* %ir, %struct.iguanair** %ir.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iguanair** %ir.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !6314, metadata !DIExpression()), !dbg !6315
  %0 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6316
  %packet = getelementptr inbounds %struct.iguanair, %struct.iguanair* %0, i32 0, i32 15, !dbg !6317
  %1 = load %struct.send_packet*, %struct.send_packet** %packet, align 8, !dbg !6317
  %header = getelementptr inbounds %struct.send_packet, %struct.send_packet* %1, i32 0, i32 0, !dbg !6318
  %start = getelementptr inbounds %struct.packet, %struct.packet* %header, i32 0, i32 0, !dbg !6319
  store i16 0, i16* %start, align 2, !dbg !6320
  %2 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6321
  %packet1 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %2, i32 0, i32 15, !dbg !6322
  %3 = load %struct.send_packet*, %struct.send_packet** %packet1, align 8, !dbg !6322
  %header2 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %3, i32 0, i32 0, !dbg !6323
  %direction = getelementptr inbounds %struct.packet, %struct.packet* %header2, i32 0, i32 1, !dbg !6324
  store i8 -51, i8* %direction, align 2, !dbg !6325
  %4 = load i8, i8* %enable.addr, align 1, !dbg !6326
  %tobool = trunc i8 %4 to i1, !dbg !6326
  %5 = zext i1 %tobool to i64, !dbg !6326
  %cond = select i1 %tobool, i32 18, i32 20, !dbg !6326
  %conv = trunc i32 %cond to i8, !dbg !6326
  %6 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6327
  %packet3 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %6, i32 0, i32 15, !dbg !6328
  %7 = load %struct.send_packet*, %struct.send_packet** %packet3, align 8, !dbg !6328
  %header4 = getelementptr inbounds %struct.send_packet, %struct.send_packet* %7, i32 0, i32 0, !dbg !6329
  %cmd = getelementptr inbounds %struct.packet, %struct.packet* %header4, i32 0, i32 2, !dbg !6330
  store i8 %conv, i8* %cmd, align 1, !dbg !6331
  %8 = load i8, i8* %enable.addr, align 1, !dbg !6332
  %tobool5 = trunc i8 %8 to i1, !dbg !6332
  br i1 %tobool5, label %if.then, label %if.end, !dbg !6334

if.then:                                          ; preds = %entry
  %9 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6335
  %rc = getelementptr inbounds %struct.iguanair, %struct.iguanair* %9, i32 0, i32 0, !dbg !6336
  %10 = load %struct.rc_dev*, %struct.rc_dev** %rc, align 8, !dbg !6336
  call void @ir_raw_event_reset(%struct.rc_dev* %10) #9, !dbg !6337
  br label %if.end, !dbg !6337

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.iguanair*, %struct.iguanair** %ir.addr, align 8, !dbg !6338
  %call = call i32 @iguanair_send(%struct.iguanair* %11, i32 4) #9, !dbg !6339
  ret i32 %call, !dbg !6340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6341 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6344, metadata !DIExpression()), !dbg !6345
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6346, metadata !DIExpression()), !dbg !6347
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6348
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6349
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6350
  store i8* %0, i8** %driver_data, align 8, !dbg !6351
  ret void, !dbg !6352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6353 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6358
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6359
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6360
  ret i8* %call, !dbg !6361
}

; Function Attrs: noredzone
declare dso_local void @rc_unregister_device(%struct.rc_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6362 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6365, metadata !DIExpression()), !dbg !6366
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6367
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6368
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6368
  ret i8* %1, !dbg !6369
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
!llvm.module.flags = !{!4201, !4202, !4203, !4204}
!llvm.ident = !{!4205}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iguanair_driver_init239", scope: !2, file: !3, line: 565, type: !181, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !175, globals: !4106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/rc/iguanair.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !112, !121, !126, !157, !163, !170}
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
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!175 = !{!176, !179, !181, !182, !186, !862, !3858}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !178, line: 76, flags: DIFlagFwdDecl)
!178 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !180, line: 148, baseType: !7)
!180 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !184)
!184 = !{!185, !187, !192, !197, !198, !199, !200, !201, !204, !205, !209, !210, !3847, !3888, !3889, !3906, !3967, !4049, !4050, !4052, !4053, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4088, !4089, !4090, !4095, !4102, !4103, !4104, !4105}
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
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !196, line: 27, baseType: !7)
!196 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !183, file: !6, line: 635, baseType: !100, size: 32, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !183, file: !6, line: 636, baseType: !112, size: 32, offset: 224)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !183, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !183, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !183, file: !6, line: 640, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !183, file: !6, line: 641, baseType: !186, size: 32, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !183, file: !6, line: 643, baseType: !206, size: 64, offset: 416)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 2)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !6, line: 645, baseType: !182, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !183, file: !6, line: 646, baseType: !211, size: 64, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !213)
!213 = !{!214, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3841, !3842, !3843, !3844, !3845, !3846}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !212, file: !6, line: 425, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !217)
!217 = !{!218, !3378, !3379, !3382, !3383, !3434, !3525, !3526, !3527, !3528, !3529, !3538, !3643, !3656, !3659, !3660, !3664, !3666, !3667, !3668, !3672, !3678, !3679, !3682, !3686, !3776, !3777, !3778, !3779, !3780, !3812, !3813, !3814, !3817, !3820, !3821, !3822, !3823}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !216, file: !80, line: 462, baseType: !219, size: 512)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !220, line: 64, size: 512, elements: !221)
!220 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!221 = !{!222, !225, !231, !233, !293, !3229, !3368, !3373, !3374, !3375, !3376, !3377}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !220, line: 65, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !219, file: !220, line: 66, baseType: !226, size: 128, offset: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !180, line: 178, size: 128, elements: !227)
!227 = !{!228, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !180, line: 179, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !226, file: !180, line: 179, baseType: !229, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !220, line: 67, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !219, file: !220, line: 68, baseType: !234, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !220, line: 192, size: 704, elements: !236)
!236 = !{!237, !238, !254, !255}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !235, file: !220, line: 193, baseType: !226, size: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !235, file: !220, line: 194, baseType: !239, offset: 128)
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
!254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !235, file: !220, line: 195, baseType: !219, size: 512, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !235, file: !220, line: 196, baseType: !256, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !220, line: 156, size: 192, elements: !259)
!259 = !{!260, !265, !270}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !258, file: !220, line: 157, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!186, !234, !232}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !220, line: 158, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!223, !234, !232}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !258, file: !220, line: 159, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!186, !234, !232, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !220, line: 148, size: 20736, elements: !277)
!277 = !{!278, !283, !287, !288, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !276, file: !220, line: 149, baseType: !279, size: 192)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 192, elements: !281)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !276, file: !220, line: 150, baseType: !284, size: 4096, offset: 192)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4096, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !276, file: !220, line: 151, baseType: !186, size: 32, offset: 4288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !276, file: !220, line: 152, baseType: !289, size: 16384, offset: 4320)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 16384, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 2048)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !276, file: !220, line: 153, baseType: !186, size: 32, offset: 20704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !219, file: !220, line: 69, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !220, line: 138, size: 448, elements: !296)
!296 = !{!297, !301, !331, !333, !3191, !3219, !3223}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !295, file: !220, line: 139, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !232}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !295, file: !220, line: 140, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !305, line: 230, size: 128, elements: !306)
!305 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !323}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !304, file: !305, line: 231, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !232, !316, !280}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !180, line: 60, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !313, line: 73, baseType: !314)
!313 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !313, line: 15, baseType: !315)
!315 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !305, line: 30, size: 128, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !305, line: 31, baseType: !223, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !317, file: !305, line: 32, baseType: !321, size: 16, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !180, line: 19, baseType: !322)
!322 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !304, file: !305, line: 232, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!311, !232, !316, !223, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 55, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !313, line: 72, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !313, line: 16, baseType: !330)
!330 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !295, file: !220, line: 141, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !295, file: !220, line: 142, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !305, line: 84, size: 320, elements: !338)
!338 = !{!339, !340, !344, !3188, !3189}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !305, line: 85, baseType: !223, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !337, file: !305, line: 86, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!321, !232, !316, !186}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !337, file: !305, line: 88, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!321, !232, !348, !186}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !305, line: 168, size: 448, elements: !350)
!350 = !{!351, !352, !353, !354, !3183, !3184}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !349, file: !305, line: 169, baseType: !317, size: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !305, line: 170, baseType: !327, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !349, file: !305, line: 171, baseType: !181, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !349, file: !305, line: 172, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!311, !358, !232, !348, !280, !533, !327}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !360)
!360 = !{!361, !379, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3166, !3167, !3176, !3177, !3178, !3179, !3180, !3181, !3182}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !359, file: !51, line: 920, baseType: !362, size: 128)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !51, line: 917, size: 128, elements: !363)
!363 = !{!364, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !362, file: !51, line: 918, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !366, line: 58, size: 64, elements: !367)
!366 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !366, line: 59, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !362, file: !51, line: 919, baseType: !371, size: 128, align: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !180, line: 216, size: 128, align: 64, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !180, line: 217, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !371, file: !180, line: 218, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !374}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !359, file: !51, line: 921, baseType: !380, size: 128, offset: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !381, line: 8, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !380, file: !381, line: 9, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !386, line: 18, flags: DIFlagFwdDecl)
!386 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !380, file: !381, line: 10, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !386, line: 89, size: 1536, elements: !390)
!390 = !{!391, !392, !402, !410, !411, !430, !3116, !3118, !3130, !3131, !3132, !3133, !3134, !3140, !3141, !3142}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !389, file: !386, line: 91, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !389, file: !386, line: 92, baseType: !393, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !394, line: 277, baseType: !395)
!394 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !394, line: 277, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !395, file: !394, line: 277, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !394, line: 70, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !394, line: 65, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !399, file: !394, line: 66, baseType: !7, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !389, file: !386, line: 93, baseType: !403, size: 128, offset: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !404, line: 38, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !404, line: 39, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !403, file: !404, line: 39, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !389, file: !386, line: 94, baseType: !388, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !389, file: !386, line: 95, baseType: !412, size: 128, offset: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !386, line: 47, size: 128, elements: !413)
!413 = !{!414, !426}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !386, line: 48, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !412, file: !386, line: 48, size: 64, elements: !416)
!416 = !{!417, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !386, line: 49, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !386, line: 49, size: 64, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !418, file: !386, line: 50, baseType: !193, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !418, file: !386, line: 50, baseType: !193, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !415, file: !386, line: 52, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !194, line: 23, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !196, line: 31, baseType: !425)
!425 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !386, line: 54, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !389, file: !386, line: 96, baseType: !431, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !433)
!433 = !{!434, !435, !436, !444, !451, !452, !600, !2819, !2820, !2821, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !3084, !3092, !3093, !3094, !3112, !3113, !3114, !3115}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !432, file: !51, line: 611, baseType: !321, size: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !432, file: !51, line: 612, baseType: !322, size: 16, offset: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !432, file: !51, line: 613, baseType: !437, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !438, line: 23, baseType: !439)
!438 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !438, line: 21, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !438, line: 22, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !180, line: 32, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !313, line: 49, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !432, file: !51, line: 614, baseType: !445, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !438, line: 28, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !438, line: 26, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !438, line: 27, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !180, line: 33, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !313, line: 50, baseType: !7)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !432, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !432, file: !51, line: 622, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !456)
!456 = !{!457, !461, !474, !478, !484, !488, !494, !498, !502, !506, !510, !511, !517, !521, !547, !576, !580, !586, !591, !595, !596}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !455, file: !51, line: 1865, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!388, !431, !388, !7}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !455, file: !51, line: 1866, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!223, !388, !431, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !467, line: 10, size: 128, elements: !468)
!467 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!468 = !{!469, !473}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !466, file: !467, line: 11, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !181}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !466, file: !467, line: 12, baseType: !181, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !455, file: !51, line: 1867, baseType: !475, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!186, !431, !186}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !455, file: !51, line: 1868, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !431, !186}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !455, file: !51, line: 1870, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!186, !388, !280, !186}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !455, file: !51, line: 1872, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!186, !431, !388, !321, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !180, line: 30, baseType: !493)
!493 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !455, file: !51, line: 1873, baseType: !495, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!186, !388, !431, !388}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !455, file: !51, line: 1874, baseType: !499, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!186, !431, !388}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !455, file: !51, line: 1875, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!186, !431, !388, !223}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !455, file: !51, line: 1876, baseType: !507, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!186, !431, !388, !321}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !455, file: !51, line: 1877, baseType: !499, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !455, file: !51, line: 1878, baseType: !512, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!186, !431, !388, !321, !515}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !180, line: 16, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !180, line: 13, baseType: !193)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !455, file: !51, line: 1879, baseType: !518, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!186, !431, !388, !431, !388, !7}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !455, file: !51, line: 1881, baseType: !522, size: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!186, !388, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !536, !544, !545, !546}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !526, file: !51, line: 220, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !526, file: !51, line: 221, baseType: !321, size: 16, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !526, file: !51, line: 222, baseType: !437, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !526, file: !51, line: 223, baseType: !445, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !526, file: !51, line: 224, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !180, line: 46, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !313, line: 88, baseType: !535)
!535 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !526, file: !51, line: 225, baseType: !537, size: 128, offset: 192)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !538, line: 13, size: 128, elements: !539)
!538 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!539 = !{!540, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !537, file: !538, line: 14, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !538, line: 8, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !196, line: 30, baseType: !535)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !537, file: !538, line: 15, baseType: !315, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !526, file: !51, line: 226, baseType: !537, size: 128, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !526, file: !51, line: 227, baseType: !537, size: 128, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !526, file: !51, line: 234, baseType: !358, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !455, file: !51, line: 1882, baseType: !548, size: 64, offset: 896)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!186, !551, !553, !193, !7}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !555, line: 22, size: 1152, elements: !556)
!555 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !558, !559, !560, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !554, file: !555, line: 23, baseType: !193, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !554, file: !555, line: 24, baseType: !321, size: 16, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !554, file: !555, line: 25, baseType: !7, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !554, file: !555, line: 26, baseType: !561, size: 32, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !180, line: 104, baseType: !193)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !554, file: !555, line: 27, baseType: !423, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !554, file: !555, line: 28, baseType: !423, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !554, file: !555, line: 37, baseType: !423, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !554, file: !555, line: 38, baseType: !515, size: 32, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !554, file: !555, line: 39, baseType: !515, size: 32, offset: 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !554, file: !555, line: 40, baseType: !437, size: 32, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !554, file: !555, line: 41, baseType: !445, size: 32, offset: 416)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !554, file: !555, line: 42, baseType: !533, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !554, file: !555, line: 43, baseType: !537, size: 128, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !554, file: !555, line: 44, baseType: !537, size: 128, offset: 640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !554, file: !555, line: 45, baseType: !537, size: 128, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !554, file: !555, line: 46, baseType: !537, size: 128, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !554, file: !555, line: 47, baseType: !423, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !554, file: !555, line: 48, baseType: !423, size: 64, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !455, file: !51, line: 1883, baseType: !577, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!311, !388, !280, !327}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !455, file: !51, line: 1884, baseType: !581, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!186, !431, !584, !423, !423}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !455, file: !51, line: 1886, baseType: !587, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!186, !431, !590, !186}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !455, file: !51, line: 1887, baseType: !592, size: 64, offset: 1152)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!186, !431, !388, !358, !7, !321}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !455, file: !51, line: 1890, baseType: !507, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !455, file: !51, line: 1891, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!186, !431, !482, !186}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !432, file: !51, line: 623, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !656, !2426, !2508, !2591, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2607, !2611, !2612, !2615, !2616, !2619, !2620, !2621, !2662, !2689, !2690, !2691, !2692, !2693, !2694, !2697, !2699, !2706, !2707, !2709, !2710, !2711, !2770, !2771, !2786, !2787, !2788, !2789, !2790, !2793, !2794, !2795, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !602, file: !51, line: 1417, baseType: !226, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !602, file: !51, line: 1418, baseType: !515, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !602, file: !51, line: 1419, baseType: !429, size: 8, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !602, file: !51, line: 1420, baseType: !330, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !602, file: !51, line: 1421, baseType: !533, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !602, file: !51, line: 1422, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !612)
!612 = !{!613, !614, !615, !622, !626, !630, !634, !635, !636, !646, !649, !650, !651, !653, !654, !655}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !611, file: !51, line: 2229, baseType: !223, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !611, file: !51, line: 2230, baseType: !186, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !611, file: !51, line: 2238, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!186, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !621, line: 28, flags: DIFlagFwdDecl)
!621 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !611, file: !51, line: 2239, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !611, file: !51, line: 2240, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!388, !610, !186, !223, !181}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !611, file: !51, line: 2242, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !601}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !51, line: 2243, baseType: !176, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !51, line: 2244, baseType: !610, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !611, file: !51, line: 2245, baseType: !637, size: 64, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !180, line: 182, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !637, file: !180, line: 183, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !180, line: 186, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !641, file: !180, line: 187, baseType: !640, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !641, file: !180, line: 187, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !611, file: !51, line: 2247, baseType: !647, offset: 576)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !648, line: 187, elements: !253)
!648 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !611, file: !51, line: 2248, baseType: !647, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !611, file: !51, line: 2249, baseType: !647, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !611, file: !51, line: 2250, baseType: !652, offset: 576)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, elements: !281)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !611, file: !51, line: 2252, baseType: !647, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !611, file: !51, line: 2253, baseType: !647, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !611, file: !51, line: 2254, baseType: !647, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !602, file: !51, line: 1423, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !660)
!660 = !{!661, !665, !669, !670, !674, !680, !684, !685, !686, !690, !694, !695, !696, !697, !703, !708, !709, !716, !717, !718, !719, !2410, !2425}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !659, file: !51, line: 1936, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!431, !601}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !659, file: !51, line: 1937, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !431}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !659, file: !51, line: 1938, baseType: !666, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !659, file: !51, line: 1940, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !431, !186}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !659, file: !51, line: 1941, baseType: !675, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!186, !431, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 289, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !659, file: !51, line: 1942, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!186, !431}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !659, file: !51, line: 1943, baseType: !666, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !659, file: !51, line: 1944, baseType: !631, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !659, file: !51, line: 1945, baseType: !687, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!186, !601, !186}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !659, file: !51, line: 1946, baseType: !691, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!186, !601}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !659, file: !51, line: 1947, baseType: !691, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !659, file: !51, line: 1948, baseType: !691, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !659, file: !51, line: 1949, baseType: !691, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !659, file: !51, line: 1950, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!186, !388, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !659, file: !51, line: 1951, baseType: !704, size: 64, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!186, !601, !707, !280}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !659, file: !51, line: 1952, baseType: !631, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !659, file: !51, line: 1954, baseType: !710, size: 64, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!186, !713, !388}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !715, line: 539, flags: DIFlagFwdDecl)
!715 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !659, file: !51, line: 1955, baseType: !710, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !659, file: !51, line: 1956, baseType: !710, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !659, file: !51, line: 1957, baseType: !710, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !659, file: !51, line: 1963, baseType: !720, size: 64, offset: 1280)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!186, !601, !723, !179}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !725, line: 68, size: 512, align: 128, elements: !726)
!725 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !728, !2402, !2409}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !725, line: 69, baseType: !330, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 77, baseType: !729, size: 320, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 77, size: 320, elements: !730)
!730 = !{!731, !918, !923, !951, !959, !965, !2333, !2401}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 78, baseType: !732, size: 320)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 78, size: 320, elements: !733)
!733 = !{!734, !735, !916, !917}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !732, file: !725, line: 84, baseType: !226, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !732, file: !725, line: 86, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !738)
!738 = !{!739, !740, !747, !748, !753, !768, !784, !785, !786, !787, !909, !910, !913, !914, !915}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !737, file: !51, line: 452, baseType: !431, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !737, file: !51, line: 453, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !742, line: 292, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !741, file: !742, line: 293, baseType: !239)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !741, file: !742, line: 295, baseType: !179, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !741, file: !742, line: 296, baseType: !181, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !737, file: !51, line: 454, baseType: !179, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !737, file: !51, line: 455, baseType: !749, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !180, line: 168, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 166, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !180, line: 167, baseType: !186, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !737, file: !51, line: 460, baseType: !754, size: 128, offset: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !755, line: 125, size: 128, elements: !756)
!755 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !754, file: !755, line: 126, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !755, line: 31, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !758, file: !755, line: 32, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !755, line: 24, size: 192, align: 64, elements: !763)
!763 = !{!764, !765, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !762, file: !755, line: 25, baseType: !330, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !762, file: !755, line: 26, baseType: !761, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !762, file: !755, line: 27, baseType: !761, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !754, file: !755, line: 127, baseType: !761, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !737, file: !51, line: 461, baseType: !769, size: 256, offset: 384)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !770, line: 35, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !780, !781, !783}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !769, file: !770, line: 36, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !774, line: 13, baseType: !775)
!774 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !180, line: 175, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 173, size: 64, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !776, file: !180, line: 174, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !194, line: 22, baseType: !542)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !770, line: 42, baseType: !773, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !769, file: !770, line: 46, baseType: !782, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !240, line: 29, baseType: !247)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !769, file: !770, line: 47, baseType: !226, size: 128, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !737, file: !51, line: 462, baseType: !330, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !737, file: !51, line: 463, baseType: !330, size: 64, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !737, file: !51, line: 464, baseType: !330, size: 64, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !737, file: !51, line: 465, baseType: !788, size: 64, offset: 832)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !791)
!791 = !{!792, !796, !800, !804, !808, !812, !818, !824, !828, !833, !837, !841, !845, !873, !877, !883, !884, !885, !889, !894, !898, !905}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !790, file: !51, line: 368, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!186, !723, !678}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !790, file: !51, line: 369, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!186, !358, !723}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !790, file: !51, line: 372, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!186, !736, !678}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !790, file: !51, line: 375, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!186, !723}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !790, file: !51, line: 381, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!186, !358, !736, !229, !7}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !790, file: !51, line: 383, baseType: !813, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !790, file: !51, line: 385, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!186, !358, !736, !533, !7, !7, !822, !823}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !790, file: !51, line: 388, baseType: !825, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!186, !358, !736, !533, !7, !7, !723, !181}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !790, file: !51, line: 393, baseType: !829, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !736, !832}
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !180, line: 125, baseType: !423)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !790, file: !51, line: 394, baseType: !834, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !723, !7, !7}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !790, file: !51, line: 395, baseType: !838, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!186, !723, !179}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !790, file: !51, line: 396, baseType: !842, size: 64, offset: 704)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !723}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !790, file: !51, line: 397, baseType: !846, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!311, !849, !871}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !851)
!851 = !{!852, !853, !854, !858, !859, !860, !863, !864}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !850, file: !51, line: 321, baseType: !358, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !850, file: !51, line: 326, baseType: !533, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !850, file: !51, line: 327, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !849, !315, !315}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !850, file: !51, line: 328, baseType: !181, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !850, file: !51, line: 329, baseType: !186, size: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !850, file: !51, line: 330, baseType: !861, size: 16, offset: 288)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !194, line: 19, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !196, line: 24, baseType: !322)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !850, file: !51, line: 331, baseType: !861, size: 16, offset: 304)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !51, line: 332, baseType: !865, size: 64, offset: 320)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !51, line: 332, size: 64, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !865, file: !51, line: 333, baseType: !7, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !865, file: !51, line: 334, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !790, file: !51, line: 402, baseType: !874, size: 64, offset: 832)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!186, !736, !723, !723, !13}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !790, file: !51, line: 404, baseType: !878, size: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!492, !723, !881}
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !882, line: 305, baseType: !7)
!882 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!883 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !790, file: !51, line: 405, baseType: !842, size: 64, offset: 960)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !790, file: !51, line: 406, baseType: !805, size: 64, offset: 1024)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !790, file: !51, line: 407, baseType: !886, size: 64, offset: 1088)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!186, !723, !330, !330}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !790, file: !51, line: 409, baseType: !890, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !723, !893, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !790, file: !51, line: 410, baseType: !895, size: 64, offset: 1216)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!186, !736, !723}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !790, file: !51, line: 413, baseType: !899, size: 64, offset: 1280)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!186, !902, !358, !904}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !790, file: !51, line: 415, baseType: !906, size: 64, offset: 1344)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !358}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !51, line: 466, baseType: !330, size: 64, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !737, file: !51, line: 467, baseType: !911, size: 32, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !912, line: 8, baseType: !193)
!912 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !737, file: !51, line: 468, baseType: !239, offset: 992)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !737, file: !51, line: 469, baseType: !226, size: 128, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !737, file: !51, line: 470, baseType: !181, size: 64, offset: 1152)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !732, file: !725, line: 87, baseType: !330, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !732, file: !725, line: 94, baseType: !330, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 96, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 96, size: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !919, file: !725, line: 101, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !180, line: 143, baseType: !423)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 103, baseType: !924, size: 320)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 103, size: 320, elements: !925)
!925 = !{!926, !936, !939, !940}
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !725, line: 104, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !725, line: 104, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !927, file: !725, line: 105, baseType: !226, size: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !725, line: 106, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !927, file: !725, line: 106, size: 128, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !931, file: !725, line: 107, baseType: !723, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !931, file: !725, line: 109, baseType: !186, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !931, file: !725, line: 110, baseType: !186, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !924, file: !725, line: 117, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !725, line: 117, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !924, file: !725, line: 119, baseType: !181, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !725, line: 120, baseType: !941, size: 64, offset: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !725, line: 120, size: 64, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !941, file: !725, line: 121, baseType: !181, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !941, file: !725, line: 122, baseType: !330, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !725, line: 123, baseType: !946, size: 32)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !725, line: 123, size: 32, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !946, file: !725, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !946, file: !725, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !946, file: !725, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 130, baseType: !952, size: 192)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 130, size: 192, elements: !953)
!953 = !{!954, !955, !956, !957, !958}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !952, file: !725, line: 131, baseType: !330, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !952, file: !725, line: 134, baseType: !429, size: 8, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !952, file: !725, line: 135, baseType: !429, size: 8, offset: 72)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !952, file: !725, line: 136, baseType: !749, size: 32, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !952, file: !725, line: 137, baseType: !7, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 139, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 139, size: 256, elements: !961)
!961 = !{!962, !963, !964}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !960, file: !725, line: 140, baseType: !330, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !960, file: !725, line: 141, baseType: !749, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !960, file: !725, line: 143, baseType: !226, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 145, baseType: !966, size: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 145, size: 256, elements: !967)
!967 = !{!968, !969, !971, !972, !2332}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !966, file: !725, line: 146, baseType: !330, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !966, file: !725, line: 147, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !715, line: 509, baseType: !723)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !966, file: !725, line: 148, baseType: !330, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !725, line: 149, baseType: !973, size: 64, offset: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !725, line: 149, size: 64, elements: !974)
!974 = !{!975, !2331}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !973, file: !725, line: 150, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !725, line: 388, size: 7296, elements: !978)
!978 = !{!979, !2327}
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !725, line: 389, baseType: !980, size: 7296)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !725, line: 389, size: 7296, elements: !981)
!981 = !{!982, !1100, !1101, !1102, !1106, !1107, !1108, !1109, !1110, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1151, !1159, !1162, !1208, !1209, !2311, !2312, !2315, !2316, !2317, !2320, !2321, !2322, !2325, !2326}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !980, file: !725, line: 390, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !725, line: 305, size: 1472, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !1000, !1001, !1006, !1007, !1010, !1094, !1095, !1096, !1097, !1098}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !984, file: !725, line: 308, baseType: !330, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !984, file: !725, line: 309, baseType: !330, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !984, file: !725, line: 313, baseType: !983, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !984, file: !725, line: 313, baseType: !983, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !984, file: !725, line: 315, baseType: !762, size: 192, align: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !984, file: !725, line: 323, baseType: !330, size: 64, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !984, file: !725, line: 327, baseType: !976, size: 64, offset: 512)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !984, file: !725, line: 333, baseType: !994, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !715, line: 284, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !715, line: 284, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !995, file: !715, line: 284, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !999, line: 19, baseType: !330)
!999 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !984, file: !725, line: 334, baseType: !330, size: 64, offset: 640)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !984, file: !725, line: 343, baseType: !1002, size: 256, offset: 704)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !725, line: 340, size: 256, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1002, file: !725, line: 341, baseType: !762, size: 192, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1002, file: !725, line: 342, baseType: !330, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !984, file: !725, line: 351, baseType: !226, size: 128, offset: 960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !984, file: !725, line: 353, baseType: !1008, size: 64, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !725, line: 353, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !984, file: !725, line: 356, baseType: !1011, size: 64, offset: 1152)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1014)
!1014 = !{!1015, !1019, !1020, !1024, !1028, !1068, !1072, !1076, !1080, !1081, !1082, !1086, !1090}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1013, file: !21, line: 558, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !983}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1013, file: !21, line: 559, baseType: !1016, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1013, file: !21, line: 560, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!186, !983, !330}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1013, file: !21, line: 561, baseType: !1025, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!186, !983}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1013, file: !21, line: 562, baseType: !1029, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !725, line: 682, baseType: !7)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1035)
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1041, !1048, !1055, !1061, !1062, !1063, !1065, !1067}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1034, file: !21, line: 509, baseType: !983, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1034, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1034, file: !21, line: 511, baseType: !179, size: 32, offset: 96)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1034, file: !21, line: 512, baseType: !330, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1034, file: !21, line: 513, baseType: !330, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1034, file: !21, line: 514, baseType: !1042, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !715, line: 385, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 385, size: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1044, file: !715, line: 385, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !999, line: 15, baseType: !330)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1034, file: !21, line: 516, baseType: !1049, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !715, line: 359, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 359, size: 64, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1051, file: !715, line: 359, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !999, line: 16, baseType: !330)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1034, file: !21, line: 519, baseType: !1056, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !999, line: 21, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !999, line: 21, size: 64, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1057, file: !999, line: 21, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !999, line: 14, baseType: !330)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1034, file: !21, line: 521, baseType: !723, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1034, file: !21, line: 522, baseType: !723, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1034, file: !21, line: 528, baseType: !1064, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1034, file: !21, line: 532, baseType: !1066, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1034, file: !21, line: 536, baseType: !970, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1013, file: !21, line: 563, baseType: !1069, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!1032, !1033, !20}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1013, file: !21, line: 565, baseType: !1073, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !1033, !330, !330}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1013, file: !21, line: 567, baseType: !1077, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!330, !983}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1013, file: !21, line: 571, baseType: !1029, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1013, file: !21, line: 574, baseType: !1029, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1013, file: !21, line: 579, baseType: !1083, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!186, !983, !330, !181, !186, !186}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1013, file: !21, line: 585, baseType: !1087, size: 64, offset: 704)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!223, !983}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1013, file: !21, line: 615, baseType: !1091, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!723, !983, !330}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !984, file: !725, line: 359, baseType: !330, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !984, file: !725, line: 361, baseType: !358, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !984, file: !725, line: 362, baseType: !181, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !984, file: !725, line: 365, baseType: !773, size: 64, offset: 1408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !984, file: !725, line: 373, baseType: !1099, offset: 1472)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !725, line: 296, elements: !253)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !980, file: !725, line: 391, baseType: !758, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !980, file: !725, line: 392, baseType: !423, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !980, file: !725, line: 394, baseType: !1103, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!330, !358, !330, !330, !330, !330}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !980, file: !725, line: 398, baseType: !330, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !980, file: !725, line: 399, baseType: !330, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !980, file: !725, line: 405, baseType: !330, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !980, file: !725, line: 406, baseType: !330, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !980, file: !725, line: 407, baseType: !1111, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !715, line: 286, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 286, size: 64, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1113, file: !715, line: 286, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !999, line: 18, baseType: !330)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !980, file: !725, line: 416, baseType: !749, size: 32, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !980, file: !725, line: 428, baseType: !749, size: 32, offset: 608)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !980, file: !725, line: 437, baseType: !749, size: 32, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !980, file: !725, line: 447, baseType: !749, size: 32, offset: 672)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !980, file: !725, line: 450, baseType: !773, size: 64, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !980, file: !725, line: 452, baseType: !186, size: 32, offset: 768)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !980, file: !725, line: 454, baseType: !239, offset: 800)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !980, file: !725, line: 457, baseType: !769, size: 256, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !980, file: !725, line: 459, baseType: !226, size: 128, offset: 1088)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !980, file: !725, line: 466, baseType: !330, size: 64, offset: 1216)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !980, file: !725, line: 467, baseType: !330, size: 64, offset: 1280)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !980, file: !725, line: 469, baseType: !330, size: 64, offset: 1344)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !980, file: !725, line: 470, baseType: !330, size: 64, offset: 1408)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !980, file: !725, line: 471, baseType: !775, size: 64, offset: 1472)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !980, file: !725, line: 472, baseType: !330, size: 64, offset: 1536)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !980, file: !725, line: 473, baseType: !330, size: 64, offset: 1600)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !980, file: !725, line: 474, baseType: !330, size: 64, offset: 1664)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !980, file: !725, line: 475, baseType: !330, size: 64, offset: 1728)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !980, file: !725, line: 477, baseType: !239, offset: 1792)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !980, file: !725, line: 478, baseType: !330, size: 64, offset: 1792)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !980, file: !725, line: 478, baseType: !330, size: 64, offset: 1856)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !980, file: !725, line: 478, baseType: !330, size: 64, offset: 1920)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !980, file: !725, line: 478, baseType: !330, size: 64, offset: 1984)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !980, file: !725, line: 479, baseType: !330, size: 64, offset: 2048)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !980, file: !725, line: 479, baseType: !330, size: 64, offset: 2112)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !980, file: !725, line: 479, baseType: !330, size: 64, offset: 2176)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !980, file: !725, line: 480, baseType: !330, size: 64, offset: 2240)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !980, file: !725, line: 480, baseType: !330, size: 64, offset: 2304)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !980, file: !725, line: 480, baseType: !330, size: 64, offset: 2368)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !980, file: !725, line: 480, baseType: !330, size: 64, offset: 2432)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !980, file: !725, line: 482, baseType: !1148, size: 2816, offset: 2496)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 2816, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 44)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !980, file: !725, line: 488, baseType: !1152, size: 256, offset: 5312)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1153, line: 60, size: 256, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1152, file: !1153, line: 61, baseType: !1156, size: 256)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 256, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 4)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !980, file: !725, line: 490, baseType: !1160, size: 64, offset: 5568)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !725, line: 490, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !980, file: !725, line: 493, baseType: !1163, size: 896, offset: 5632)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1164, line: 53, baseType: !1165)
!1164 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1164, line: 13, size: 896, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1173, !1174, !1181, !1182, !1202, !1203, !1204}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1165, file: !1164, line: 18, baseType: !423, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1165, file: !1164, line: 28, baseType: !775, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1165, file: !1164, line: 31, baseType: !769, size: 256, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1165, file: !1164, line: 32, baseType: !1171, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1164, line: 32, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1165, file: !1164, line: 37, baseType: !322, size: 16, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1165, file: !1164, line: 40, baseType: !1175, size: 192, offset: 512)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1176, line: 53, size: 192, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1175, file: !1176, line: 54, baseType: !773, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1175, file: !1176, line: 55, baseType: !239, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1175, file: !1176, line: 59, baseType: !226, size: 128, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1165, file: !1164, line: 41, baseType: !181, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1165, file: !1164, line: 42, baseType: !1183, size: 64, offset: 768)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1186, line: 13, size: 896, elements: !1187)
!1186 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1185, file: !1186, line: 14, baseType: !181, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1185, file: !1186, line: 15, baseType: !330, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1185, file: !1186, line: 17, baseType: !330, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1185, file: !1186, line: 17, baseType: !330, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1185, file: !1186, line: 19, baseType: !315, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1185, file: !1186, line: 21, baseType: !315, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1185, file: !1186, line: 22, baseType: !315, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1185, file: !1186, line: 23, baseType: !315, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1185, file: !1186, line: 24, baseType: !315, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1185, file: !1186, line: 25, baseType: !315, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1185, file: !1186, line: 26, baseType: !315, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1185, file: !1186, line: 27, baseType: !315, size: 64, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1185, file: !1186, line: 28, baseType: !315, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1185, file: !1186, line: 29, baseType: !315, size: 64, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1165, file: !1164, line: 44, baseType: !749, size: 32, offset: 832)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1165, file: !1164, line: 50, baseType: !861, size: 16, offset: 864)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1165, file: !1164, line: 51, baseType: !1205, size: 16, offset: 880)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !194, line: 18, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !196, line: 23, baseType: !1207)
!1207 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !725, line: 495, baseType: !330, size: 64, offset: 6528)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !980, file: !725, line: 497, baseType: !1210, size: 64, offset: 6592)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !725, line: 381, size: 384, elements: !1212)
!1212 = !{!1213, !1214, !2310}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1211, file: !725, line: 382, baseType: !749, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1211, file: !725, line: 383, baseType: !1215, size: 128, offset: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !725, line: 376, size: 128, elements: !1216)
!1216 = !{!1217, !2308}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1215, file: !725, line: 377, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1220, line: 640, size: 48640, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222, !1228, !1230, !1231, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1248, !1266, !1277, !1362, !1363, !1364, !1375, !1376, !1378, !1379, !1380, !1381, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1460, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1498, !1500, !1501, !1502, !1514, !1515, !1516, !1517, !1518, !1519, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1543, !1548, !1730, !1731, !1732, !1733, !1734, !1737, !1740, !1743, !1746, !1749, !1850, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1896, !1897, !1898, !1899, !1900, !1905, !1906, !1907, !1910, !1911, !1914, !1917, !1920, !1923, !1966, !1969, !1970, !2049, !2050, !2053, !2054, !2057, !2058, !2059, !2063, !2064, !2065, !2078, !2079, !2080, !2090, !2095, !2098, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1219, file: !1220, line: 646, baseType: !1223, size: 128)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1224, line: 56, size: 128, elements: !1225)
!1224 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !1224, line: 57, baseType: !330, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1223, file: !1224, line: 58, baseType: !193, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1219, file: !1220, line: 649, baseType: !1229, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !315)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1219, file: !1220, line: 657, baseType: !181, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1219, file: !1220, line: 658, baseType: !1232, size: 32, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1233, line: 113, baseType: !1234)
!1233 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1233, line: 111, size: 32, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1234, file: !1233, line: 112, baseType: !749, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1219, file: !1220, line: 660, baseType: !7, size: 32, offset: 288)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1219, file: !1220, line: 661, baseType: !7, size: 32, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1219, file: !1220, line: 684, baseType: !186, size: 32, offset: 352)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1219, file: !1220, line: 686, baseType: !186, size: 32, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1219, file: !1220, line: 687, baseType: !186, size: 32, offset: 416)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1219, file: !1220, line: 688, baseType: !186, size: 32, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1219, file: !1220, line: 689, baseType: !7, size: 32, offset: 480)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1219, file: !1220, line: 691, baseType: !1245, size: 64, offset: 512)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1220, line: 691, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1219, file: !1220, line: 692, baseType: !1249, size: 832, offset: 576)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1220, line: 451, size: 832, elements: !1250)
!1250 = !{!1251, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1249, file: !1220, line: 453, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1220, line: 325, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1252, file: !1220, line: 326, baseType: !330, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1252, file: !1220, line: 327, baseType: !193, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1249, file: !1220, line: 454, baseType: !762, size: 192, align: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1249, file: !1220, line: 455, baseType: !226, size: 128, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1249, file: !1220, line: 456, baseType: !7, size: 32, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1249, file: !1220, line: 458, baseType: !423, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1249, file: !1220, line: 459, baseType: !423, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1249, file: !1220, line: 460, baseType: !423, size: 64, offset: 640)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1249, file: !1220, line: 461, baseType: !423, size: 64, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1249, file: !1220, line: 463, baseType: !423, size: 64, offset: 768)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1249, file: !1220, line: 465, baseType: !1265, offset: 832)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1220, line: 415, elements: !253)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1219, file: !1220, line: 693, baseType: !1267, size: 384, offset: 1408)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1220, line: 489, size: 384, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1267, file: !1220, line: 490, baseType: !226, size: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1267, file: !1220, line: 491, baseType: !330, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1267, file: !1220, line: 492, baseType: !330, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1267, file: !1220, line: 493, baseType: !7, size: 32, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1267, file: !1220, line: 494, baseType: !322, size: 16, offset: 288)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1267, file: !1220, line: 495, baseType: !322, size: 16, offset: 304)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1267, file: !1220, line: 497, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1219, file: !1220, line: 697, baseType: !1278, size: 1792, offset: 1792)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1220, line: 507, size: 1792, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1359, !1360}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1278, file: !1220, line: 508, baseType: !762, size: 192, align: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1278, file: !1220, line: 515, baseType: !423, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1278, file: !1220, line: 516, baseType: !423, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1278, file: !1220, line: 517, baseType: !423, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1278, file: !1220, line: 518, baseType: !423, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1278, file: !1220, line: 519, baseType: !423, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1278, file: !1220, line: 526, baseType: !779, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1278, file: !1220, line: 527, baseType: !423, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !1220, line: 528, baseType: !7, size: 32, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1278, file: !1220, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1278, file: !1220, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1278, file: !1220, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1278, file: !1220, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1278, file: !1220, line: 563, baseType: !1294, size: 512, offset: 704)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1295)
!1295 = !{!1296, !1304, !1305, !1310, !1353, !1356, !1357, !1358}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1294, file: !27, line: 119, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1298, line: 9, size: 256, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1297, file: !1298, line: 10, baseType: !762, size: 192, align: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1297, file: !1298, line: 11, baseType: !1302, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1303, line: 29, baseType: !779)
!1303 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1294, file: !27, line: 120, baseType: !1302, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1294, file: !27, line: 121, baseType: !1306, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!26, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1294, file: !27, line: 122, baseType: !1311, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1313)
!1313 = !{!1314, !1334, !1335, !1338, !1343, !1344, !1348, !1352}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1312, file: !27, line: 160, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !27, line: 215, baseType: !782)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1316, file: !27, line: 216, baseType: !7, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1316, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1316, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1316, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1316, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1316, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1316, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1316, file: !27, line: 233, baseType: !1302, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1316, file: !27, line: 234, baseType: !1309, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1316, file: !27, line: 235, baseType: !1302, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1316, file: !27, line: 236, baseType: !1309, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1316, file: !27, line: 237, baseType: !1331, size: 4096, offset: 512)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 4096, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 8)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1312, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1312, file: !27, line: 162, baseType: !1336, size: 32, offset: 96)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !180, line: 27, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !313, line: 96, baseType: !186)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1312, file: !27, line: 163, baseType: !1339, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !394, line: 276, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !394, line: 276, size: 32, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1340, file: !394, line: 276, baseType: !398, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1312, file: !27, line: 164, baseType: !1309, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1312, file: !27, line: 165, baseType: !1345, size: 128, offset: 256)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1298, line: 14, size: 128, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1345, file: !1298, line: 15, baseType: !754, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1312, file: !27, line: 166, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1302}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1312, file: !27, line: 167, baseType: !1302, size: 64, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1294, file: !27, line: 123, baseType: !1354, size: 8, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !194, line: 17, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !196, line: 21, baseType: !429)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1294, file: !27, line: 124, baseType: !1354, size: 8, offset: 456)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1294, file: !27, line: 125, baseType: !1354, size: 8, offset: 464)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1294, file: !27, line: 126, baseType: !1354, size: 8, offset: 472)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1278, file: !1220, line: 572, baseType: !1294, size: 512, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1278, file: !1220, line: 580, baseType: !1361, size: 64, offset: 1728)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1219, file: !1220, line: 721, baseType: !7, size: 32, offset: 3584)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1219, file: !1220, line: 722, baseType: !186, size: 32, offset: 3616)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1219, file: !1220, line: 723, baseType: !1365, size: 64, offset: 3648)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1368, line: 17, baseType: !1369)
!1368 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1368, line: 17, size: 64, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1369, file: !1368, line: 17, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 1)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1219, file: !1220, line: 724, baseType: !1367, size: 64, offset: 3712)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1219, file: !1220, line: 749, baseType: !1377, offset: 3776)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1220, line: 290, elements: !253)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1219, file: !1220, line: 751, baseType: !226, size: 128, offset: 3776)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1219, file: !1220, line: 757, baseType: !976, size: 64, offset: 3904)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1219, file: !1220, line: 758, baseType: !976, size: 64, offset: 3968)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1219, file: !1220, line: 761, baseType: !1382, size: 320, offset: 4032)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1153, line: 34, size: 320, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1382, file: !1153, line: 35, baseType: !423, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1382, file: !1153, line: 36, baseType: !1386, size: 256, offset: 64)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 256, elements: !1157)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1219, file: !1220, line: 766, baseType: !186, size: 32, offset: 4352)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1219, file: !1220, line: 767, baseType: !186, size: 32, offset: 4384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1219, file: !1220, line: 768, baseType: !186, size: 32, offset: 4416)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1219, file: !1220, line: 770, baseType: !186, size: 32, offset: 4448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1219, file: !1220, line: 772, baseType: !330, size: 64, offset: 4480)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1219, file: !1220, line: 775, baseType: !7, size: 32, offset: 4544)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1219, file: !1220, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1219, file: !1220, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1219, file: !1220, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1219, file: !1220, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1219, file: !1220, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1219, file: !1220, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1219, file: !1220, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1219, file: !1220, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1219, file: !1220, line: 831, baseType: !330, size: 64, offset: 4672)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1219, file: !1220, line: 833, baseType: !1403, size: 384, offset: 4736)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1404)
!1404 = !{!1405, !1410}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1403, file: !32, line: 26, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!315, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !32, line: 27, baseType: !1411, size: 320, offset: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1403, file: !32, line: 27, size: 320, elements: !1412)
!1412 = !{!1413, !1423, !1450}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1411, file: !32, line: 36, baseType: !1414, size: 320)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !32, line: 29, size: 320, elements: !1415)
!1415 = !{!1416, !1418, !1419, !1420, !1421, !1422}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1414, file: !32, line: 30, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1414, file: !32, line: 31, baseType: !193, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !32, line: 32, baseType: !193, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1414, file: !32, line: 33, baseType: !193, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1414, file: !32, line: 34, baseType: !423, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1414, file: !32, line: 35, baseType: !1417, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1411, file: !32, line: 46, baseType: !1424, size: 192)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !32, line: 38, size: 192, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1449}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1424, file: !32, line: 39, baseType: !1336, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1424, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !32, line: 41, baseType: !1429, size: 64, offset: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !32, line: 41, size: 64, elements: !1430)
!1430 = !{!1431, !1439}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1429, file: !32, line: 42, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1434, line: 7, size: 128, elements: !1435)
!1434 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1433, file: !1434, line: 8, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !313, line: 93, baseType: !535)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1433, file: !1434, line: 9, baseType: !535, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1429, file: !32, line: 43, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1442, line: 7, size: 64, elements: !1443)
!1442 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1448}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1441, file: !1442, line: 8, baseType: !1445, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1442, line: 5, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !194, line: 20, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !196, line: 26, baseType: !186)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1441, file: !1442, line: 9, baseType: !1446, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1424, file: !32, line: 45, baseType: !423, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1411, file: !32, line: 54, baseType: !1451, size: 256)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !32, line: 48, size: 256, elements: !1452)
!1452 = !{!1453, !1456, !1457, !1458, !1459}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1451, file: !32, line: 49, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1451, file: !32, line: 50, baseType: !186, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1451, file: !32, line: 51, baseType: !186, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1451, file: !32, line: 52, baseType: !330, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1451, file: !32, line: 53, baseType: !330, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1219, file: !1220, line: 835, baseType: !1461, size: 32, offset: 5120)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !180, line: 22, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !313, line: 28, baseType: !186)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1219, file: !1220, line: 836, baseType: !1461, size: 32, offset: 5152)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1219, file: !1220, line: 840, baseType: !330, size: 64, offset: 5184)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1219, file: !1220, line: 849, baseType: !1218, size: 64, offset: 5248)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1219, file: !1220, line: 852, baseType: !1218, size: 64, offset: 5312)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1219, file: !1220, line: 857, baseType: !226, size: 128, offset: 5376)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1219, file: !1220, line: 858, baseType: !226, size: 128, offset: 5504)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1219, file: !1220, line: 859, baseType: !1218, size: 64, offset: 5632)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1219, file: !1220, line: 867, baseType: !226, size: 128, offset: 5696)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1219, file: !1220, line: 868, baseType: !226, size: 128, offset: 5824)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1219, file: !1220, line: 871, baseType: !1473, size: 64, offset: 5952)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1481, !1482, !1489, !1490}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1474, file: !60, line: 61, baseType: !1232, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1474, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1474, file: !60, line: 63, baseType: !239, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1474, file: !60, line: 65, baseType: !1480, size: 256, offset: 64)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !1157)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1474, file: !60, line: 66, baseType: !637, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1474, file: !60, line: 68, baseType: !1483, size: 128, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1484, line: 40, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1484, line: 36, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1485, file: !1484, line: 37, baseType: !239)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1485, file: !1484, line: 38, baseType: !226, size: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1474, file: !60, line: 69, baseType: !371, size: 128, align: 64, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1474, file: !60, line: 70, baseType: !1491, size: 128, offset: 640)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 128, elements: !1373)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1492, file: !60, line: 55, baseType: !186, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1492, file: !60, line: 56, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1219, file: !1220, line: 872, baseType: !1499, size: 512, offset: 6016)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 512, elements: !1157)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1219, file: !1220, line: 873, baseType: !226, size: 128, offset: 6528)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1219, file: !1220, line: 874, baseType: !226, size: 128, offset: 6656)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1219, file: !1220, line: 876, baseType: !1503, size: 64, offset: 6784)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1505, line: 26, size: 192, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1504, file: !1505, line: 27, baseType: !7, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1504, file: !1505, line: 28, baseType: !1509, size: 128, offset: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1510, line: 43, size: 128, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !1510, line: 44, baseType: !782)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1509, file: !1510, line: 45, baseType: !226, size: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1219, file: !1220, line: 879, baseType: !707, size: 64, offset: 6848)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1219, file: !1220, line: 882, baseType: !707, size: 64, offset: 6912)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1219, file: !1220, line: 884, baseType: !423, size: 64, offset: 6976)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1219, file: !1220, line: 885, baseType: !423, size: 64, offset: 7040)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1219, file: !1220, line: 890, baseType: !423, size: 64, offset: 7104)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1219, file: !1220, line: 891, baseType: !1520, size: 128, offset: 7168)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1220, line: 242, size: 128, elements: !1521)
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1520, file: !1220, line: 244, baseType: !423, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1520, file: !1220, line: 245, baseType: !423, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1520, file: !1220, line: 246, baseType: !782, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1219, file: !1220, line: 900, baseType: !330, size: 64, offset: 7296)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1219, file: !1220, line: 901, baseType: !330, size: 64, offset: 7360)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1219, file: !1220, line: 904, baseType: !423, size: 64, offset: 7424)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1219, file: !1220, line: 907, baseType: !423, size: 64, offset: 7488)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1219, file: !1220, line: 910, baseType: !330, size: 64, offset: 7552)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1219, file: !1220, line: 911, baseType: !330, size: 64, offset: 7616)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1219, file: !1220, line: 914, baseType: !1532, size: 640, offset: 7680)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1533, line: 123, size: 640, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535, !1541, !1542}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1532, file: !1533, line: 124, baseType: !1536, size: 576)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 576, elements: !281)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1533, line: 108, size: 192, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1537, file: !1533, line: 109, baseType: !423, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1537, file: !1533, line: 110, baseType: !1345, size: 128, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1532, file: !1533, line: 125, baseType: !7, size: 32, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1532, file: !1533, line: 126, baseType: !7, size: 32, offset: 608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1219, file: !1220, line: 917, baseType: !1544, size: 192, offset: 8320)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1533, line: 134, size: 192, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1544, file: !1533, line: 135, baseType: !371, size: 128, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1544, file: !1533, line: 136, baseType: !7, size: 32, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1219, file: !1220, line: 923, baseType: !1549, size: 64, offset: 8512)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1552, line: 111, size: 1280, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1571, !1572, !1573, !1574, !1575, !1576, !1683, !1684, !1685, !1686, !1712, !1715, !1725}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1551, file: !1552, line: 112, baseType: !749, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1551, file: !1552, line: 120, baseType: !437, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1551, file: !1552, line: 121, baseType: !445, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1551, file: !1552, line: 122, baseType: !437, size: 32, offset: 96)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1551, file: !1552, line: 123, baseType: !445, size: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1551, file: !1552, line: 124, baseType: !437, size: 32, offset: 160)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1551, file: !1552, line: 125, baseType: !445, size: 32, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1551, file: !1552, line: 126, baseType: !437, size: 32, offset: 224)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1551, file: !1552, line: 127, baseType: !445, size: 32, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1551, file: !1552, line: 128, baseType: !7, size: 32, offset: 288)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1551, file: !1552, line: 129, baseType: !1565, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1566, line: 26, baseType: !1567)
!1566 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1566, line: 24, size: 64, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1567, file: !1566, line: 25, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !207)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1551, file: !1552, line: 130, baseType: !1565, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1551, file: !1552, line: 131, baseType: !1565, size: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1551, file: !1552, line: 132, baseType: !1565, size: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1551, file: !1552, line: 133, baseType: !1565, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1551, file: !1552, line: 135, baseType: !429, size: 8, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1551, file: !1552, line: 137, baseType: !1577, size: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1579, line: 189, size: 1664, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1582, !1585, !1590, !1591, !1594, !1595, !1600, !1601, !1602, !1603, !1605, !1606, !1607, !1608, !1609, !1647, !1668}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1578, file: !1579, line: 190, baseType: !1232, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1578, file: !1579, line: 191, baseType: !1583, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1579, line: 28, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !180, line: 98, baseType: !1446)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 192, baseType: !1586, size: 192, offset: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 192, size: 192, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1586, file: !1579, line: 193, baseType: !226, size: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1586, file: !1579, line: 194, baseType: !762, size: 192, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1578, file: !1579, line: 199, baseType: !769, size: 256, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1578, file: !1579, line: 200, baseType: !1592, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1579, line: 200, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1578, file: !1579, line: 201, baseType: !181, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 202, baseType: !1596, size: 64, offset: 640)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 202, size: 64, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1596, file: !1579, line: 203, baseType: !541, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1596, file: !1579, line: 204, baseType: !541, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1578, file: !1579, line: 206, baseType: !541, size: 64, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1578, file: !1579, line: 207, baseType: !437, size: 32, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1578, file: !1579, line: 208, baseType: !445, size: 32, offset: 800)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1578, file: !1579, line: 209, baseType: !1604, size: 32, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1579, line: 31, baseType: !561)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1578, file: !1579, line: 210, baseType: !322, size: 16, offset: 864)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1578, file: !1579, line: 211, baseType: !322, size: 16, offset: 880)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1578, file: !1579, line: 215, baseType: !1207, size: 16, offset: 896)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1579, line: 222, baseType: !330, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 239, baseType: !1610, size: 320, offset: 1024)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 239, size: 320, elements: !1611)
!1611 = !{!1612, !1639}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1610, file: !1579, line: 240, baseType: !1613, size: 320)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1579, line: 108, size: 320, elements: !1614)
!1614 = !{!1615, !1616, !1628, !1631, !1638}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1613, file: !1579, line: 110, baseType: !330, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !1579, line: 111, baseType: !1617, size: 64, offset: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1613, file: !1579, line: 111, size: 64, elements: !1618)
!1618 = !{!1619, !1627}
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1579, line: 112, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !1579, line: 112, size: 64, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1620, file: !1579, line: 114, baseType: !861, size: 16)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1620, file: !1579, line: 115, baseType: !1624, size: 48, offset: 16)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 48, elements: !1625)
!1625 = !{!1626}
!1626 = !DISubrange(count: 6)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1617, file: !1579, line: 121, baseType: !330, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1613, file: !1579, line: 123, baseType: !1629, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1579, line: 96, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1613, file: !1579, line: 124, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1579, line: 102, size: 192, elements: !1634)
!1634 = !{!1635, !1636, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1633, file: !1579, line: 103, baseType: !371, size: 128, align: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1633, file: !1579, line: 104, baseType: !1232, size: 32, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1633, file: !1579, line: 105, baseType: !492, size: 8, offset: 160)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1613, file: !1579, line: 125, baseType: !223, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !1579, line: 241, baseType: !1640, size: 320)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !1579, line: 241, size: 320, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1640, file: !1579, line: 242, baseType: !330, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1640, file: !1579, line: 243, baseType: !330, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1640, file: !1579, line: 244, baseType: !1629, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1640, file: !1579, line: 245, baseType: !1632, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1640, file: !1579, line: 246, baseType: !280, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 254, baseType: !1648, size: 256, offset: 1344)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 254, size: 256, elements: !1649)
!1649 = !{!1650, !1656}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1648, file: !1579, line: 255, baseType: !1651, size: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1579, line: 128, size: 256, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1651, file: !1579, line: 129, baseType: !181, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1651, file: !1579, line: 130, baseType: !1655, size: 256)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !1157)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1579, line: 256, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1579, line: 256, size: 256, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1657, file: !1579, line: 258, baseType: !226, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1657, file: !1579, line: 259, baseType: !1661, size: 128, offset: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1662, line: 22, size: 128, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1667}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1661, file: !1662, line: 23, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1662, line: 23, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1661, file: !1662, line: 24, baseType: !330, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1578, file: !1579, line: 274, baseType: !1669, size: 64, offset: 1600)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1579, line: 170, size: 192, elements: !1671)
!1671 = !{!1672, !1681, !1682}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1670, file: !1579, line: 171, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1579, line: 165, baseType: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!186, !1577, !1677, !1679, !1577}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1670, file: !1579, line: 172, baseType: !1577, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1670, file: !1579, line: 173, baseType: !1629, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1551, file: !1552, line: 138, baseType: !1577, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1551, file: !1552, line: 139, baseType: !1577, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1551, file: !1552, line: 140, baseType: !1577, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1551, file: !1552, line: 145, baseType: !1687, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1689, line: 13, size: 896, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1688, file: !1689, line: 14, baseType: !1232, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1688, file: !1689, line: 15, baseType: !749, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1688, file: !1689, line: 16, baseType: !749, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1688, file: !1689, line: 21, baseType: !773, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1688, file: !1689, line: 27, baseType: !330, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1688, file: !1689, line: 28, baseType: !330, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1688, file: !1689, line: 29, baseType: !773, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1688, file: !1689, line: 32, baseType: !641, size: 128, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1688, file: !1689, line: 33, baseType: !437, size: 32, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1688, file: !1689, line: 37, baseType: !773, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1688, file: !1689, line: 44, baseType: !1702, size: 256, offset: 640)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1703, line: 15, size: 256, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1702, file: !1703, line: 16, baseType: !782)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1702, file: !1703, line: 18, baseType: !186, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1702, file: !1703, line: 19, baseType: !186, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1702, file: !1703, line: 20, baseType: !186, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1702, file: !1703, line: 21, baseType: !186, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1702, file: !1703, line: 22, baseType: !330, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1703, line: 23, baseType: !330, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1551, file: !1552, line: 146, baseType: !1713, size: 64, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !438, line: 18, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1551, file: !1552, line: 147, baseType: !1716, size: 64, offset: 1088)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1552, line: 25, size: 64, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1717, file: !1552, line: 26, baseType: !749, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1717, file: !1552, line: 27, baseType: !186, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1717, file: !1552, line: 28, baseType: !1722, offset: 64)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, elements: !1723)
!1723 = !{!1724}
!1724 = !DISubrange(count: 0)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !1552, line: 149, baseType: !1726, size: 128, offset: 1152)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !1552, line: 149, size: 128, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1726, file: !1552, line: 150, baseType: !186, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1726, file: !1552, line: 151, baseType: !371, size: 128, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1219, file: !1220, line: 926, baseType: !1549, size: 64, offset: 8576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1219, file: !1220, line: 929, baseType: !1549, size: 64, offset: 8640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1219, file: !1220, line: 933, baseType: !1577, size: 64, offset: 8704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1219, file: !1220, line: 943, baseType: !188, size: 128, offset: 8768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1219, file: !1220, line: 945, baseType: !1735, size: 64, offset: 8896)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1220, line: 49, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1219, file: !1220, line: 956, baseType: !1738, size: 64, offset: 8960)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1220, line: 45, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1219, file: !1220, line: 959, baseType: !1741, size: 64, offset: 9024)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1220, line: 959, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1219, file: !1220, line: 962, baseType: !1744, size: 64, offset: 9088)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1220, line: 66, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1219, file: !1220, line: 966, baseType: !1747, size: 64, offset: 9152)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1220, line: 50, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1219, file: !1220, line: 969, baseType: !1750, size: 64, offset: 9216)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1752, line: 82, size: 7296, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1789, !1798, !1799, !1801, !1802, !1803, !1806, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1836, !1837, !1844, !1845, !1846, !1847, !1848, !1849}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1751, file: !1752, line: 83, baseType: !1232, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1751, file: !1752, line: 84, baseType: !749, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1751, file: !1752, line: 85, baseType: !186, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1751, file: !1752, line: 86, baseType: !226, size: 128, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1751, file: !1752, line: 88, baseType: !1483, size: 128, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1751, file: !1752, line: 91, baseType: !1218, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1751, file: !1752, line: 94, baseType: !1761, size: 192, offset: 448)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1762, line: 30, size: 192, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1761, file: !1762, line: 31, baseType: !226, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1761, file: !1762, line: 32, baseType: !1766, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1767, line: 25, baseType: !1768)
!1767 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1767, line: 23, size: 64, elements: !1769)
!1769 = !{!1770}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1768, file: !1767, line: 24, baseType: !1372, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1751, file: !1752, line: 97, baseType: !637, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1751, file: !1752, line: 100, baseType: !186, size: 32, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1751, file: !1752, line: 106, baseType: !186, size: 32, offset: 736)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1751, file: !1752, line: 107, baseType: !1218, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1751, file: !1752, line: 110, baseType: !186, size: 32, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !1752, line: 111, baseType: !7, size: 32, offset: 864)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1751, file: !1752, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1751, file: !1752, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1751, file: !1752, line: 128, baseType: !186, size: 32, offset: 928)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1751, file: !1752, line: 129, baseType: !226, size: 128, offset: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1751, file: !1752, line: 132, baseType: !1294, size: 512, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1751, file: !1752, line: 133, baseType: !1302, size: 64, offset: 1600)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1751, file: !1752, line: 140, baseType: !1784, size: 256, offset: 1664)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1785, size: 256, elements: !207)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1752, line: 38, size: 128, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1785, file: !1752, line: 39, baseType: !423, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1785, file: !1752, line: 40, baseType: !423, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1751, file: !1752, line: 146, baseType: !1790, size: 192, offset: 1920)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1752, line: 66, size: 192, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1790, file: !1752, line: 67, baseType: !1793, size: 192)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1752, line: 47, size: 192, elements: !1794)
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1793, file: !1752, line: 48, baseType: !775, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1793, file: !1752, line: 49, baseType: !775, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1793, file: !1752, line: 50, baseType: !775, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1751, file: !1752, line: 150, baseType: !1532, size: 640, offset: 2112)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1751, file: !1752, line: 153, baseType: !1800, size: 256, offset: 2752)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 256, elements: !1157)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1751, file: !1752, line: 159, baseType: !1473, size: 64, offset: 3008)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1751, file: !1752, line: 162, baseType: !186, size: 32, offset: 3072)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1751, file: !1752, line: 164, baseType: !1804, size: 64, offset: 3136)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1752, line: 164, flags: DIFlagFwdDecl)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1751, file: !1752, line: 175, baseType: !1807, size: 32, offset: 3200)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !394, line: 805, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 798, size: 32, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1808, file: !394, line: 803, baseType: !393, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1808, file: !394, line: 804, baseType: !239, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1751, file: !1752, line: 176, baseType: !423, size: 64, offset: 3264)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1751, file: !1752, line: 176, baseType: !423, size: 64, offset: 3328)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1751, file: !1752, line: 176, baseType: !423, size: 64, offset: 3392)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1751, file: !1752, line: 176, baseType: !423, size: 64, offset: 3456)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1751, file: !1752, line: 177, baseType: !423, size: 64, offset: 3520)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1751, file: !1752, line: 178, baseType: !423, size: 64, offset: 3584)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1751, file: !1752, line: 179, baseType: !1520, size: 128, offset: 3648)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1751, file: !1752, line: 180, baseType: !330, size: 64, offset: 3776)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1751, file: !1752, line: 180, baseType: !330, size: 64, offset: 3840)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1751, file: !1752, line: 180, baseType: !330, size: 64, offset: 3904)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1751, file: !1752, line: 180, baseType: !330, size: 64, offset: 3968)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1751, file: !1752, line: 181, baseType: !330, size: 64, offset: 4032)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1751, file: !1752, line: 181, baseType: !330, size: 64, offset: 4096)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1751, file: !1752, line: 181, baseType: !330, size: 64, offset: 4160)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1751, file: !1752, line: 181, baseType: !330, size: 64, offset: 4224)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1751, file: !1752, line: 182, baseType: !330, size: 64, offset: 4288)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1751, file: !1752, line: 182, baseType: !330, size: 64, offset: 4352)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1751, file: !1752, line: 182, baseType: !330, size: 64, offset: 4416)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1751, file: !1752, line: 182, baseType: !330, size: 64, offset: 4480)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1751, file: !1752, line: 183, baseType: !330, size: 64, offset: 4544)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1751, file: !1752, line: 183, baseType: !330, size: 64, offset: 4608)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1751, file: !1752, line: 184, baseType: !1834, offset: 4672)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1835, line: 12, elements: !253)
!1835 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1751, file: !1752, line: 192, baseType: !425, size: 64, offset: 4672)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1751, file: !1752, line: 203, baseType: !1838, size: 2048, offset: 4736)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1839, size: 2048, elements: !190)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1840, line: 43, size: 128, elements: !1841)
!1840 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1839, file: !1840, line: 44, baseType: !329, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1839, file: !1840, line: 45, baseType: !329, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1751, file: !1752, line: 220, baseType: !492, size: 8, offset: 6784)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1751, file: !1752, line: 221, baseType: !1207, size: 16, offset: 6800)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1751, file: !1752, line: 222, baseType: !1207, size: 16, offset: 6816)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1751, file: !1752, line: 224, baseType: !976, size: 64, offset: 6848)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1751, file: !1752, line: 227, baseType: !1175, size: 192, offset: 6912)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1751, file: !1752, line: 233, baseType: !1175, size: 192, offset: 7104)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1219, file: !1220, line: 970, baseType: !1851, size: 64, offset: 9280)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1752, line: 20, size: 16576, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1852, file: !1752, line: 21, baseType: !239)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1852, file: !1752, line: 22, baseType: !1232, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1852, file: !1752, line: 23, baseType: !1483, size: 128, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1852, file: !1752, line: 24, baseType: !1858, size: 16384, offset: 192)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1859, size: 16384, elements: !285)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1762, line: 49, size: 256, elements: !1860)
!1860 = !{!1861}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1859, file: !1762, line: 50, baseType: !1862, size: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1762, line: 35, size: 256, elements: !1863)
!1863 = !{!1864, !1871, !1872, !1878}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1862, file: !1762, line: 37, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1866, line: 19, baseType: !1867)
!1866 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1866, line: 18, baseType: !1869)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !186}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1862, file: !1762, line: 38, baseType: !330, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1862, file: !1762, line: 44, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1866, line: 22, baseType: !1874)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1866, line: 21, baseType: !1876)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1862, file: !1762, line: 46, baseType: !1766, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1219, file: !1220, line: 971, baseType: !1766, size: 64, offset: 9344)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1219, file: !1220, line: 972, baseType: !1766, size: 64, offset: 9408)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1219, file: !1220, line: 974, baseType: !1766, size: 64, offset: 9472)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1219, file: !1220, line: 975, baseType: !1761, size: 192, offset: 9536)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1219, file: !1220, line: 976, baseType: !330, size: 64, offset: 9728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1219, file: !1220, line: 977, baseType: !327, size: 64, offset: 9792)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1219, file: !1220, line: 978, baseType: !7, size: 32, offset: 9856)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1219, file: !1220, line: 980, baseType: !374, size: 64, offset: 9920)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1219, file: !1220, line: 989, baseType: !1888, size: 128, offset: 9984)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1889, line: 35, size: 128, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1892, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1888, file: !1889, line: 36, baseType: !186, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1888, file: !1889, line: 37, baseType: !749, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1888, file: !1889, line: 38, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1889, line: 23, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1219, file: !1220, line: 992, baseType: !423, size: 64, offset: 10112)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1219, file: !1220, line: 993, baseType: !423, size: 64, offset: 10176)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1219, file: !1220, line: 996, baseType: !239, offset: 10240)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1219, file: !1220, line: 999, baseType: !782, offset: 10240)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1219, file: !1220, line: 1001, baseType: !1901, size: 64, offset: 10240)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1220, line: 636, size: 64, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1901, file: !1220, line: 637, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1219, file: !1220, line: 1005, baseType: !754, size: 128, offset: 10304)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1219, file: !1220, line: 1007, baseType: !1218, size: 64, offset: 10432)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1219, file: !1220, line: 1009, baseType: !1908, size: 64, offset: 10496)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1220, line: 1009, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1219, file: !1220, line: 1043, baseType: !181, size: 64, offset: 10560)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1219, file: !1220, line: 1046, baseType: !1912, size: 64, offset: 10624)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1220, line: 41, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1219, file: !1220, line: 1050, baseType: !1915, size: 64, offset: 10688)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1220, line: 42, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1219, file: !1220, line: 1054, baseType: !1918, size: 64, offset: 10752)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1220, line: 55, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1219, file: !1220, line: 1056, baseType: !1921, size: 64, offset: 10816)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1220, line: 40, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1219, file: !1220, line: 1058, baseType: !1924, size: 64, offset: 10880)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1926, line: 99, size: 704, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933, !1934, !1953, !1954}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1925, file: !1926, line: 100, baseType: !773, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1925, file: !1926, line: 101, baseType: !749, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1925, file: !1926, line: 102, baseType: !749, size: 32, offset: 96)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1925, file: !1926, line: 105, baseType: !239, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1925, file: !1926, line: 107, baseType: !322, size: 16, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1925, file: !1926, line: 109, baseType: !741, size: 128, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1925, file: !1926, line: 110, baseType: !1935, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1926, line: 73, size: 448, elements: !1937)
!1937 = !{!1938, !1941, !1942, !1947, !1952}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1936, file: !1926, line: 74, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1926, line: 74, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1936, file: !1926, line: 75, baseType: !1924, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1926, line: 83, baseType: !1943, size: 128, offset: 128)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1926, line: 83, size: 128, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1943, file: !1926, line: 84, baseType: !226, size: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1943, file: !1926, line: 85, baseType: !937, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1926, line: 87, baseType: !1948, size: 128, offset: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1926, line: 87, size: 128, elements: !1949)
!1949 = !{!1950, !1951}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1948, file: !1926, line: 88, baseType: !641, size: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1948, file: !1926, line: 89, baseType: !371, size: 128, align: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !1926, line: 92, baseType: !7, size: 32, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1925, file: !1926, line: 111, baseType: !637, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1925, file: !1926, line: 113, baseType: !1955, size: 256, offset: 448)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1956, line: 102, size: 256, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1955, file: !1956, line: 103, baseType: !773, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1955, file: !1956, line: 104, baseType: !226, size: 128, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1955, file: !1956, line: 105, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1956, line: 21, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1219, file: !1220, line: 1061, baseType: !1967, size: 64, offset: 10944)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1220, line: 43, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1219, file: !1220, line: 1064, baseType: !330, size: 64, offset: 11008)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1219, file: !1220, line: 1065, baseType: !1971, size: 64, offset: 11072)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1762, line: 14, baseType: !1973)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1762, line: 12, size: 384, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !1762, line: 13, baseType: !1976, size: 384)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1973, file: !1762, line: 13, size: 384, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1976, file: !1762, line: 13, baseType: !186, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1976, file: !1762, line: 13, baseType: !186, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1976, file: !1762, line: 13, baseType: !186, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1976, file: !1762, line: 13, baseType: !1982, size: 256, offset: 128)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1983, line: 32, size: 256, elements: !1984)
!1983 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1990, !2003, !2009, !2018, !2038, !2043}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1982, file: !1983, line: 37, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 34, size: 64, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1986, file: !1983, line: 35, baseType: !1462, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1986, file: !1983, line: 36, baseType: !443, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1982, file: !1983, line: 45, baseType: !1991, size: 192)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 40, size: 192, elements: !1992)
!1992 = !{!1993, !1995, !1996, !2002}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1991, file: !1983, line: 41, baseType: !1994, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !313, line: 95, baseType: !186)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1991, file: !1983, line: 42, baseType: !186, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1991, file: !1983, line: 43, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1983, line: 11, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1983, line: 8, size: 64, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1998, file: !1983, line: 9, baseType: !186, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1998, file: !1983, line: 10, baseType: !181, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1991, file: !1983, line: 44, baseType: !186, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1982, file: !1983, line: 52, baseType: !2004, size: 128)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 48, size: 128, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2004, file: !1983, line: 49, baseType: !1462, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2004, file: !1983, line: 50, baseType: !443, size: 32, offset: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2004, file: !1983, line: 51, baseType: !1997, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1982, file: !1983, line: 61, baseType: !2010, size: 256)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 55, size: 256, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015, !2017}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2010, file: !1983, line: 56, baseType: !1462, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2010, file: !1983, line: 57, baseType: !443, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2010, file: !1983, line: 58, baseType: !186, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2010, file: !1983, line: 59, baseType: !2016, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !313, line: 94, baseType: !314)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2010, file: !1983, line: 60, baseType: !2016, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1982, file: !1983, line: 95, baseType: !2019, size: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 64, size: 256, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2019, file: !1983, line: 65, baseType: !181, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1983, line: 77, baseType: !2023, size: 192, offset: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2019, file: !1983, line: 77, size: 192, elements: !2024)
!2024 = !{!2025, !2026, !2033}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2023, file: !1983, line: 82, baseType: !1207, size: 16)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2023, file: !1983, line: 88, baseType: !2027, size: 192)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !1983, line: 84, size: 192, elements: !2028)
!2028 = !{!2029, !2031, !2032}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2027, file: !1983, line: 85, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !1332)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2027, file: !1983, line: 86, baseType: !181, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2027, file: !1983, line: 87, baseType: !181, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2023, file: !1983, line: 93, baseType: !2034, size: 96)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !1983, line: 90, size: 96, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2034, file: !1983, line: 91, baseType: !2030, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2034, file: !1983, line: 92, baseType: !195, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1982, file: !1983, line: 101, baseType: !2039, size: 128)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 98, size: 128, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2039, file: !1983, line: 99, baseType: !315, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2039, file: !1983, line: 100, baseType: !186, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1982, file: !1983, line: 108, baseType: !2044, size: 128)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1983, line: 104, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2044, file: !1983, line: 105, baseType: !181, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2044, file: !1983, line: 106, baseType: !186, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2044, file: !1983, line: 107, baseType: !7, size: 32, offset: 96)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1219, file: !1220, line: 1067, baseType: !1834, offset: 11136)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1219, file: !1220, line: 1099, baseType: !2051, size: 64, offset: 11136)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1220, line: 56, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1219, file: !1220, line: 1103, baseType: !226, size: 128, offset: 11200)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1219, file: !1220, line: 1104, baseType: !2055, size: 64, offset: 11328)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1220, line: 46, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1219, file: !1220, line: 1105, baseType: !1175, size: 192, offset: 11392)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1219, file: !1220, line: 1106, baseType: !7, size: 32, offset: 11584)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1219, file: !1220, line: 1109, baseType: !2060, size: 128, offset: 11648)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2061, size: 128, elements: !207)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1220, line: 51, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1219, file: !1220, line: 1110, baseType: !1175, size: 192, offset: 11776)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1219, file: !1220, line: 1111, baseType: !226, size: 128, offset: 11968)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1219, file: !1220, line: 1173, baseType: !2066, size: 64, offset: 12096)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2068, line: 62, size: 256, align: 256, elements: !2069)
!2068 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2069 = !{!2070, !2071, !2072, !2077}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2067, file: !2068, line: 75, baseType: !195, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2067, file: !2068, line: 90, baseType: !195, size: 32, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2067, file: !2068, line: 124, baseType: !2073, size: 64, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2068, line: 109, size: 64, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2073, file: !2068, line: 110, baseType: !424, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2073, file: !2068, line: 112, baseType: !424, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2067, file: !2068, line: 144, baseType: !195, size: 32, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1219, file: !1220, line: 1174, baseType: !193, size: 32, offset: 12160)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1219, file: !1220, line: 1179, baseType: !330, size: 64, offset: 12224)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1219, file: !1220, line: 1182, baseType: !2081, size: 128, offset: 12288)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1153, line: 76, size: 128, elements: !2082)
!2082 = !{!2083, !2088, !2089}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2081, file: !1153, line: 85, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2085, line: 7, size: 64, elements: !2086)
!2085 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2084, file: !2085, line: 12, baseType: !1369, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2081, file: !1153, line: 88, baseType: !492, size: 8, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2081, file: !1153, line: 95, baseType: !492, size: 8, offset: 72)
!2090 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !1220, line: 1184, baseType: !2091, size: 128, offset: 12416)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1219, file: !1220, line: 1184, size: 128, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2091, file: !1220, line: 1185, baseType: !1232, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2091, file: !1220, line: 1186, baseType: !371, size: 128, align: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1219, file: !1220, line: 1190, baseType: !2096, size: 64, offset: 12544)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1220, line: 53, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1219, file: !1220, line: 1192, baseType: !2099, size: 128, offset: 12608)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1153, line: 64, size: 128, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2099, file: !1153, line: 65, baseType: !723, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2099, file: !1153, line: 67, baseType: !195, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2099, file: !1153, line: 68, baseType: !195, size: 32, offset: 96)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1219, file: !1220, line: 1206, baseType: !186, size: 32, offset: 12736)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1219, file: !1220, line: 1207, baseType: !186, size: 32, offset: 12768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1219, file: !1220, line: 1209, baseType: !330, size: 64, offset: 12800)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1219, file: !1220, line: 1219, baseType: !423, size: 64, offset: 12864)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1219, file: !1220, line: 1220, baseType: !423, size: 64, offset: 12928)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1219, file: !1220, line: 1317, baseType: !186, size: 32, offset: 12992)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1219, file: !1220, line: 1319, baseType: !1218, size: 64, offset: 13056)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1219, file: !1220, line: 1322, baseType: !2112, size: 64, offset: 13120)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2114, line: 56, size: 512, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2124}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2113, file: !2114, line: 57, baseType: !2112, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2113, file: !2114, line: 58, baseType: !181, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2113, file: !2114, line: 59, baseType: !330, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2114, line: 60, baseType: !330, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2113, file: !2114, line: 61, baseType: !822, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2113, file: !2114, line: 62, baseType: !7, size: 32, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2113, file: !2114, line: 63, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !180, line: 153, baseType: !423)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2113, file: !2114, line: 64, baseType: !2125, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1219, file: !1220, line: 1326, baseType: !1232, size: 32, offset: 13184)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1219, file: !1220, line: 1342, baseType: !181, size: 64, offset: 13248)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1219, file: !1220, line: 1343, baseType: !424, size: 64, offset: 13312)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1219, file: !1220, line: 1344, baseType: !423, size: 64, offset: 13376)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1219, file: !1220, line: 1345, baseType: !424, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1219, file: !1220, line: 1346, baseType: !424, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1219, file: !1220, line: 1347, baseType: !424, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1219, file: !1220, line: 1348, baseType: !371, size: 128, align: 64, offset: 13504)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1219, file: !1220, line: 1358, baseType: !2136, size: 34816, offset: 13824)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2137, line: 485, size: 34816, elements: !2138)
!2137 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2168, !2169, !2170, !2171, !2172, !2173, !2176, !2177, !2178}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2136, file: !2137, line: 487, baseType: !2140, size: 192)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2141, size: 192, elements: !281)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2142, line: 16, size: 64, elements: !2143)
!2142 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2141, file: !2142, line: 17, baseType: !861, size: 16)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2141, file: !2142, line: 18, baseType: !861, size: 16, offset: 16)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2141, file: !2142, line: 19, baseType: !861, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2141, file: !2142, line: 19, baseType: !861, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2141, file: !2142, line: 19, baseType: !861, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2141, file: !2142, line: 19, baseType: !861, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2141, file: !2142, line: 19, baseType: !861, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2141, file: !2142, line: 20, baseType: !861, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2141, file: !2142, line: 20, baseType: !861, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2141, file: !2142, line: 20, baseType: !861, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2141, file: !2142, line: 20, baseType: !861, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2141, file: !2142, line: 20, baseType: !861, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2141, file: !2142, line: 20, baseType: !861, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2136, file: !2137, line: 491, baseType: !330, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2136, file: !2137, line: 495, baseType: !322, size: 16, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2136, file: !2137, line: 496, baseType: !322, size: 16, offset: 272)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2136, file: !2137, line: 497, baseType: !322, size: 16, offset: 288)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2136, file: !2137, line: 498, baseType: !322, size: 16, offset: 304)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2136, file: !2137, line: 502, baseType: !330, size: 64, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2136, file: !2137, line: 503, baseType: !330, size: 64, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2136, file: !2137, line: 514, baseType: !2165, size: 256, offset: 448)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2166, size: 256, elements: !1157)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2137, line: 483, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2136, file: !2137, line: 516, baseType: !330, size: 64, offset: 704)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2136, file: !2137, line: 518, baseType: !330, size: 64, offset: 768)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2136, file: !2137, line: 520, baseType: !330, size: 64, offset: 832)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2136, file: !2137, line: 521, baseType: !330, size: 64, offset: 896)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2136, file: !2137, line: 522, baseType: !330, size: 64, offset: 960)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2136, file: !2137, line: 528, baseType: !2174, size: 64, offset: 1024)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2137, line: 10, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2136, file: !2137, line: 535, baseType: !330, size: 64, offset: 1088)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2136, file: !2137, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2136, file: !2137, line: 540, baseType: !2179, size: 33280, offset: 1536)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2180, line: 317, size: 33280, elements: !2181)
!2180 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !{!2182, !2183, !2184}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2179, file: !2180, line: 330, baseType: !7, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2179, file: !2180, line: 337, baseType: !330, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2179, file: !2180, line: 348, baseType: !2185, size: 32768, offset: 512)
!2185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2180, line: 304, size: 32768, elements: !2186)
!2186 = !{!2187, !2202, !2241, !2291, !2304}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2185, file: !2180, line: 305, baseType: !2188, size: 896)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2180, line: 12, size: 896, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2201}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2188, file: !2180, line: 13, baseType: !193, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2188, file: !2180, line: 14, baseType: !193, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2188, file: !2180, line: 15, baseType: !193, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2188, file: !2180, line: 16, baseType: !193, size: 32, offset: 96)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2188, file: !2180, line: 17, baseType: !193, size: 32, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2188, file: !2180, line: 18, baseType: !193, size: 32, offset: 160)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2188, file: !2180, line: 19, baseType: !193, size: 32, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2188, file: !2180, line: 22, baseType: !2198, size: 640, offset: 224)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 640, elements: !2199)
!2199 = !{!2200}
!2200 = !DISubrange(count: 20)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2188, file: !2180, line: 25, baseType: !193, size: 32, offset: 864)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2185, file: !2180, line: 306, baseType: !2203, size: 4096, align: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2180, line: 34, size: 4096, align: 128, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2224, !2225, !2226, !2230, !2232, !2236}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2203, file: !2180, line: 35, baseType: !861, size: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2203, file: !2180, line: 36, baseType: !861, size: 16, offset: 16)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2203, file: !2180, line: 37, baseType: !861, size: 16, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2203, file: !2180, line: 38, baseType: !861, size: 16, offset: 48)
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2203, file: !2180, line: 39, baseType: !2210, size: 128, offset: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2203, file: !2180, line: 39, size: 128, elements: !2211)
!2211 = !{!2212, !2217}
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2210, file: !2180, line: 40, baseType: !2213, size: 128)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !2180, line: 40, size: 128, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2213, file: !2180, line: 41, baseType: !423, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2213, file: !2180, line: 42, baseType: !423, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2210, file: !2180, line: 44, baseType: !2218, size: 128)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !2180, line: 44, size: 128, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2218, file: !2180, line: 45, baseType: !193, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2218, file: !2180, line: 46, baseType: !193, size: 32, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2218, file: !2180, line: 47, baseType: !193, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2218, file: !2180, line: 48, baseType: !193, size: 32, offset: 96)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2203, file: !2180, line: 51, baseType: !193, size: 32, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2203, file: !2180, line: 52, baseType: !193, size: 32, offset: 224)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2203, file: !2180, line: 55, baseType: !2227, size: 1024, offset: 256)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 1024, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2203, file: !2180, line: 58, baseType: !2231, size: 2048, offset: 1280)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2048, elements: !285)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2203, file: !2180, line: 60, baseType: !2233, size: 384, offset: 3328)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 384, elements: !2234)
!2234 = !{!2235}
!2235 = !DISubrange(count: 12)
!2236 = !DIDerivedType(tag: DW_TAG_member, scope: !2203, file: !2180, line: 62, baseType: !2237, size: 384, offset: 3712)
!2237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2203, file: !2180, line: 62, size: 384, elements: !2238)
!2238 = !{!2239, !2240}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2237, file: !2180, line: 63, baseType: !2233, size: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2237, file: !2180, line: 64, baseType: !2233, size: 384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2185, file: !2180, line: 307, baseType: !2242, size: 1088)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2180, line: 79, size: 1088, elements: !2243)
!2243 = !{!2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2290}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2242, file: !2180, line: 80, baseType: !193, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2242, file: !2180, line: 81, baseType: !193, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2242, file: !2180, line: 82, baseType: !193, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2242, file: !2180, line: 83, baseType: !193, size: 32, offset: 96)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2242, file: !2180, line: 84, baseType: !193, size: 32, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2242, file: !2180, line: 85, baseType: !193, size: 32, offset: 160)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2242, file: !2180, line: 86, baseType: !193, size: 32, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2242, file: !2180, line: 88, baseType: !2198, size: 640, offset: 224)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2242, file: !2180, line: 89, baseType: !1354, size: 8, offset: 864)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2242, file: !2180, line: 90, baseType: !1354, size: 8, offset: 872)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2242, file: !2180, line: 91, baseType: !1354, size: 8, offset: 880)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2242, file: !2180, line: 92, baseType: !1354, size: 8, offset: 888)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2242, file: !2180, line: 93, baseType: !1354, size: 8, offset: 896)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2242, file: !2180, line: 94, baseType: !1354, size: 8, offset: 904)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2242, file: !2180, line: 95, baseType: !2259, size: 64, offset: 960)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2261, line: 11, size: 128, elements: !2262)
!2261 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2260, file: !2261, line: 12, baseType: !315, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2260, file: !2261, line: 13, baseType: !2265, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2267, line: 56, size: 1344, elements: !2268)
!2267 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2266, file: !2267, line: 61, baseType: !330, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2266, file: !2267, line: 62, baseType: !330, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2266, file: !2267, line: 63, baseType: !330, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2266, file: !2267, line: 64, baseType: !330, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2266, file: !2267, line: 65, baseType: !330, size: 64, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2266, file: !2267, line: 66, baseType: !330, size: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2266, file: !2267, line: 68, baseType: !330, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2266, file: !2267, line: 69, baseType: !330, size: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2266, file: !2267, line: 70, baseType: !330, size: 64, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2266, file: !2267, line: 71, baseType: !330, size: 64, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2266, file: !2267, line: 72, baseType: !330, size: 64, offset: 640)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2266, file: !2267, line: 73, baseType: !330, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2266, file: !2267, line: 74, baseType: !330, size: 64, offset: 768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2266, file: !2267, line: 75, baseType: !330, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2266, file: !2267, line: 76, baseType: !330, size: 64, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2266, file: !2267, line: 81, baseType: !330, size: 64, offset: 960)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2266, file: !2267, line: 83, baseType: !330, size: 64, offset: 1024)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2266, file: !2267, line: 84, baseType: !330, size: 64, offset: 1088)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2266, file: !2267, line: 85, baseType: !330, size: 64, offset: 1152)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2266, file: !2267, line: 86, baseType: !330, size: 64, offset: 1216)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2266, file: !2267, line: 87, baseType: !330, size: 64, offset: 1280)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2242, file: !2180, line: 96, baseType: !193, size: 32, offset: 1024)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2185, file: !2180, line: 308, baseType: !2292, size: 4608, align: 512)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2180, line: 289, size: 4608, align: 512, elements: !2293)
!2293 = !{!2294, !2295, !2302}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2292, file: !2180, line: 290, baseType: !2203, size: 4096, align: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2292, file: !2180, line: 291, baseType: !2296, size: 512, offset: 4096)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2180, line: 268, size: 512, elements: !2297)
!2297 = !{!2298, !2299, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2296, file: !2180, line: 269, baseType: !423, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2296, file: !2180, line: 270, baseType: !423, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2296, file: !2180, line: 271, baseType: !2301, size: 384, offset: 128)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !1625)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2292, file: !2180, line: 292, baseType: !2303, offset: 4608)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, elements: !1723)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2185, file: !2180, line: 309, baseType: !2305, size: 32768)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 32768, elements: !2306)
!2306 = !{!2307}
!2307 = !DISubrange(count: 4096)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1215, file: !725, line: 378, baseType: !2309, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1211, file: !725, line: 384, baseType: !1504, size: 192, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !980, file: !725, line: 500, baseType: !239, offset: 6656)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !980, file: !725, line: 501, baseType: !2313, size: 64, offset: 6656)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !725, line: 387, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !980, file: !725, line: 516, baseType: !1713, size: 64, offset: 6720)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !980, file: !725, line: 519, baseType: !358, size: 64, offset: 6784)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !980, file: !725, line: 521, baseType: !2318, size: 64, offset: 6848)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !725, line: 521, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !980, file: !725, line: 545, baseType: !749, size: 32, offset: 6912)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !980, file: !725, line: 548, baseType: !492, size: 8, offset: 6944)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !980, file: !725, line: 550, baseType: !2323, offset: 6952)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2324, line: 142, elements: !253)
!2324 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !980, file: !725, line: 554, baseType: !1955, size: 256, offset: 6976)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !980, file: !725, line: 557, baseType: !193, size: 32, offset: 7232)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !977, file: !725, line: 565, baseType: !2328, offset: 7296)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, elements: !2329)
!2329 = !{!2330}
!2330 = !DISubrange(count: -1)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !973, file: !725, line: 151, baseType: !749, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !966, file: !725, line: 156, baseType: !239, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 159, baseType: !2334, size: 128)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 159, size: 128, elements: !2335)
!2335 = !{!2336, !2400}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2334, file: !725, line: 161, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2339)
!2339 = !{!2340, !2350, !2371, !2372, !2373, !2374, !2375, !2387, !2388, !2389}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2338, file: !38, line: 111, baseType: !2341, size: 384)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2342)
!2342 = !{!2343, !2345, !2346, !2347, !2348, !2349}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2341, file: !38, line: 20, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2341, file: !38, line: 21, baseType: !2344, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2341, file: !38, line: 22, baseType: !2344, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2341, file: !38, line: 23, baseType: !330, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2341, file: !38, line: 24, baseType: !330, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2341, file: !38, line: 25, baseType: !330, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2338, file: !38, line: 112, baseType: !2351, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2353, line: 105, size: 128, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2352, file: !2353, line: 110, baseType: !330, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2352, file: !2353, line: 118, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2353, line: 95, size: 448, elements: !2359)
!2359 = !{!2360, !2361, !2366, !2367, !2368, !2369, !2370}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2358, file: !2353, line: 96, baseType: !773, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2358, file: !2353, line: 97, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2353, line: 60, baseType: !2364)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2351}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2358, file: !2353, line: 98, baseType: !2362, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2358, file: !2353, line: 99, baseType: !492, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2358, file: !2353, line: 100, baseType: !492, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2358, file: !2353, line: 101, baseType: !371, size: 128, align: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2358, file: !2353, line: 102, baseType: !2351, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2338, file: !38, line: 113, baseType: !2352, size: 128, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2338, file: !38, line: 114, baseType: !1504, size: 192, offset: 576)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2338, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2338, file: !38, line: 117, baseType: !2376, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2378)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2379)
!2379 = !{!2380, !2381, !2385, !2386}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2378, file: !38, line: 73, baseType: !842, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2378, file: !38, line: 78, baseType: !2382, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2337}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2378, file: !38, line: 83, baseType: !2382, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2378, file: !38, line: 89, baseType: !1029, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2338, file: !38, line: 118, baseType: !181, size: 64, offset: 896)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2338, file: !38, line: 119, baseType: !186, size: 32, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !38, line: 120, baseType: !2390, size: 128, offset: 1024)
!2390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !38, line: 120, size: 128, elements: !2391)
!2391 = !{!2392, !2398}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2390, file: !38, line: 121, baseType: !2393, size: 128)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2394, line: 6, size: 128, elements: !2395)
!2394 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2393, file: !2394, line: 7, baseType: !423, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2393, file: !2394, line: 8, baseType: !423, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2390, file: !38, line: 122, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, elements: !1723)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2334, file: !725, line: 162, baseType: !181, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !729, file: !725, line: 176, baseType: !371, size: 128, align: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 179, baseType: !2403, size: 32, offset: 384)
!2403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 179, size: 32, elements: !2404)
!2404 = !{!2405, !2406, !2407, !2408}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2403, file: !725, line: 184, baseType: !749, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2403, file: !725, line: 192, baseType: !7, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2403, file: !725, line: 194, baseType: !7, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2403, file: !725, line: 195, baseType: !186, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !724, file: !725, line: 199, baseType: !749, size: 32, offset: 416)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !659, file: !51, line: 1964, baseType: !2411, size: 64, offset: 1344)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!315, !601, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2416, line: 12, size: 256, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2417 = !{!2418, !2419, !2420, !2421, !2422}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2415, file: !2416, line: 13, baseType: !179, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2415, file: !2416, line: 16, baseType: !186, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2415, file: !2416, line: 23, baseType: !330, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2415, file: !2416, line: 30, baseType: !330, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2415, file: !2416, line: 33, baseType: !2423, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !725, line: 27, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !659, file: !51, line: 1966, baseType: !2411, size: 64, offset: 1408)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !602, file: !51, line: 1424, baseType: !2427, size: 64, offset: 448)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2429)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2430)
!2430 = !{!2431, !2477, !2481, !2485, !2486, !2487, !2488, !2489, !2494, !2499, !2503}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2429, file: !45, line: 323, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!186, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2462, !2463, !2464}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2436, file: !45, line: 295, baseType: !641, size: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2436, file: !45, line: 296, baseType: !226, size: 128, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2436, file: !45, line: 297, baseType: !226, size: 128, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2436, file: !45, line: 298, baseType: !226, size: 128, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2436, file: !45, line: 299, baseType: !1175, size: 192, offset: 512)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2436, file: !45, line: 300, baseType: !239, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2436, file: !45, line: 301, baseType: !749, size: 32, offset: 704)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2436, file: !45, line: 302, baseType: !601, size: 64, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2436, file: !45, line: 303, baseType: !2447, size: 64, offset: 832)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2448)
!2448 = !{!2449, !2461}
!2449 = !DIDerivedType(tag: DW_TAG_member, scope: !2447, file: !45, line: 69, baseType: !2450, size: 32)
!2450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2447, file: !45, line: 69, size: 32, elements: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2450, file: !45, line: 70, baseType: !437, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2450, file: !45, line: 71, baseType: !445, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2450, file: !45, line: 72, baseType: !2455, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2456, line: 24, baseType: !2457)
!2456 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2456, line: 22, size: 32, elements: !2458)
!2458 = !{!2459}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2457, file: !2456, line: 23, baseType: !2460, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2456, line: 20, baseType: !443)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2447, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2436, file: !45, line: 304, baseType: !533, size: 64, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2436, file: !45, line: 305, baseType: !330, size: 64, offset: 960)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2436, file: !45, line: 306, baseType: !2465, size: 576, offset: 1024)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2466)
!2466 = !{!2467, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2465, file: !45, line: 206, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !535)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2465, file: !45, line: 207, baseType: !2468, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2465, file: !45, line: 208, baseType: !2468, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2465, file: !45, line: 209, baseType: !2468, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2465, file: !45, line: 210, baseType: !2468, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2465, file: !45, line: 211, baseType: !2468, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2465, file: !45, line: 212, baseType: !2468, size: 64, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2465, file: !45, line: 213, baseType: !541, size: 64, offset: 448)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2465, file: !45, line: 214, baseType: !541, size: 64, offset: 512)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2429, file: !45, line: 324, baseType: !2478, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2435, !601, !186}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2429, file: !45, line: 325, baseType: !2482, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !2435}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2429, file: !45, line: 326, baseType: !2432, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2429, file: !45, line: 327, baseType: !2432, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2429, file: !45, line: 328, baseType: !2432, size: 64, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2429, file: !45, line: 329, baseType: !687, size: 64, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2429, file: !45, line: 332, baseType: !2490, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!2493, !431}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2429, file: !45, line: 333, baseType: !2495, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!186, !431, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2429, file: !45, line: 335, baseType: !2500, size: 64, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!186, !431, !2493}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2429, file: !45, line: 337, baseType: !2504, size: 64, offset: 640)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!186, !601, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !602, file: !51, line: 1425, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2512)
!2512 = !{!2513, !2517, !2518, !2522, !2523, !2524, !2539, !2562, !2566, !2567, !2590}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2511, file: !45, line: 429, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!186, !601, !186, !186, !551}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2511, file: !45, line: 430, baseType: !687, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2511, file: !45, line: 431, baseType: !2519, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!186, !601, !7}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2511, file: !45, line: 432, baseType: !2519, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2511, file: !45, line: 433, baseType: !687, size: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2511, file: !45, line: 434, baseType: !2525, size: 64, offset: 320)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!186, !601, !186, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2529, file: !45, line: 416, baseType: !186, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2529, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2529, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2529, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2529, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2529, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2529, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2529, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2511, file: !45, line: 435, baseType: !2540, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!186, !601, !2447, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2545)
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2544, file: !45, line: 344, baseType: !186, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2544, file: !45, line: 345, baseType: !423, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2544, file: !45, line: 346, baseType: !423, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2544, file: !45, line: 347, baseType: !423, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2544, file: !45, line: 348, baseType: !423, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2544, file: !45, line: 349, baseType: !423, size: 64, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2544, file: !45, line: 350, baseType: !423, size: 64, offset: 384)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2544, file: !45, line: 351, baseType: !779, size: 64, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2544, file: !45, line: 353, baseType: !779, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2544, file: !45, line: 354, baseType: !186, size: 32, offset: 576)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2544, file: !45, line: 355, baseType: !186, size: 32, offset: 608)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2544, file: !45, line: 356, baseType: !423, size: 64, offset: 640)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2544, file: !45, line: 357, baseType: !423, size: 64, offset: 704)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2544, file: !45, line: 358, baseType: !423, size: 64, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2544, file: !45, line: 359, baseType: !779, size: 64, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2544, file: !45, line: 360, baseType: !186, size: 32, offset: 896)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2511, file: !45, line: 436, baseType: !2563, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!186, !601, !2507, !2543}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2511, file: !45, line: 438, baseType: !2540, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2511, file: !45, line: 439, baseType: !2568, size: 64, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!186, !601, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2573)
!2573 = !{!2574, !2575}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2572, file: !45, line: 410, baseType: !7, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2572, file: !45, line: 411, baseType: !2576, size: 1344, offset: 64)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2577, size: 1344, elements: !281)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2589}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2577, file: !45, line: 396, baseType: !7, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2577, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2577, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2577, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2577, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2577, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2577, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2577, file: !45, line: 404, baseType: !425, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2577, file: !45, line: 405, baseType: !2588, size: 64, offset: 320)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !180, line: 126, baseType: !423)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2577, file: !45, line: 406, baseType: !2588, size: 64, offset: 384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2511, file: !45, line: 440, baseType: !2519, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !602, file: !51, line: 1426, baseType: !2592, size: 64, offset: 576)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2594)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !602, file: !51, line: 1427, baseType: !330, size: 64, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !602, file: !51, line: 1428, baseType: !330, size: 64, offset: 704)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !602, file: !51, line: 1429, baseType: !330, size: 64, offset: 768)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !602, file: !51, line: 1430, baseType: !388, size: 64, offset: 832)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !602, file: !51, line: 1431, baseType: !769, size: 256, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !602, file: !51, line: 1432, baseType: !186, size: 32, offset: 1152)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !602, file: !51, line: 1433, baseType: !749, size: 32, offset: 1184)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !602, file: !51, line: 1437, baseType: !2603, size: 64, offset: 1216)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !602, file: !51, line: 1449, baseType: !2608, size: 64, offset: 1280)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !404, line: 34, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2608, file: !404, line: 35, baseType: !407, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !602, file: !51, line: 1450, baseType: !226, size: 128, offset: 1344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !602, file: !51, line: 1451, baseType: !2613, size: 64, offset: 1472)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !602, file: !51, line: 1452, baseType: !1921, size: 64, offset: 1536)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !602, file: !51, line: 1453, baseType: !2617, size: 64, offset: 1600)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !602, file: !51, line: 1454, baseType: !641, size: 128, offset: 1664)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !602, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !602, file: !51, line: 1456, baseType: !2622, size: 2432, offset: 1856)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2623)
!2623 = !{!2624, !2625, !2626, !2628, !2660}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2622, file: !45, line: 519, baseType: !7, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2622, file: !45, line: 520, baseType: !769, size: 256, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2622, file: !45, line: 521, baseType: !2627, size: 192, offset: 320)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !281)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2622, file: !45, line: 522, baseType: !2629, size: 1728, offset: 512)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2630, size: 1728, elements: !281)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2631)
!2631 = !{!2632, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2630, file: !45, line: 223, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2635)
!2635 = !{!2636, !2637, !2650, !2651}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2634, file: !45, line: 444, baseType: !186, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2634, file: !45, line: 445, baseType: !2638, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2640, file: !45, line: 311, baseType: !687, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2640, file: !45, line: 312, baseType: !687, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2640, file: !45, line: 313, baseType: !687, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2640, file: !45, line: 314, baseType: !687, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2640, file: !45, line: 315, baseType: !2432, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2640, file: !45, line: 316, baseType: !2432, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2640, file: !45, line: 317, baseType: !2432, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2640, file: !45, line: 318, baseType: !2504, size: 64, offset: 448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2634, file: !45, line: 446, baseType: !176, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2634, file: !45, line: 447, baseType: !2633, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2630, file: !45, line: 224, baseType: !186, size: 32, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2630, file: !45, line: 226, baseType: !226, size: 128, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2630, file: !45, line: 227, baseType: !330, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2630, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2630, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2630, file: !45, line: 230, baseType: !2468, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2630, file: !45, line: 231, baseType: !2468, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2630, file: !45, line: 232, baseType: !181, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2622, file: !45, line: 523, baseType: !2661, size: 192, offset: 2240)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2638, size: 192, elements: !281)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !602, file: !51, line: 1458, baseType: !2663, size: 2112, offset: 4288)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2664)
!2664 = !{!2665, !2666, !2667}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2663, file: !51, line: 1411, baseType: !186, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2663, file: !51, line: 1412, baseType: !1483, size: 128, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2663, file: !51, line: 1413, baseType: !2668, size: 1920, offset: 192)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2669, size: 1920, elements: !281)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2670, line: 12, size: 640, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2671 = !{!2672, !2680, !2682, !2687, !2688}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2669, file: !2670, line: 13, baseType: !2673, size: 320)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2674, line: 17, size: 320, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2673, file: !2674, line: 18, baseType: !186, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2673, file: !2674, line: 19, baseType: !186, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2673, file: !2674, line: 20, baseType: !1483, size: 128, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2673, file: !2674, line: 22, baseType: !371, size: 128, align: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2669, file: !2670, line: 14, baseType: !2681, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2669, file: !2670, line: 15, baseType: !2683, size: 64, offset: 384)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2684, line: 16, size: 64, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2685 = !{!2686}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2683, file: !2684, line: 17, baseType: !1218, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2669, file: !2670, line: 16, baseType: !1483, size: 128, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2669, file: !2670, line: 17, baseType: !749, size: 32, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !602, file: !51, line: 1465, baseType: !181, size: 64, offset: 6400)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !602, file: !51, line: 1468, baseType: !193, size: 32, offset: 6464)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !602, file: !51, line: 1470, baseType: !541, size: 64, offset: 6528)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !602, file: !51, line: 1471, baseType: !541, size: 64, offset: 6592)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !602, file: !51, line: 1473, baseType: !195, size: 32, offset: 6656)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !602, file: !51, line: 1474, baseType: !2695, size: 64, offset: 6720)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !602, file: !51, line: 1477, baseType: !2698, size: 256, offset: 6784)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !2228)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !602, file: !51, line: 1478, baseType: !2700, size: 128, offset: 7040)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2701, line: 18, baseType: !2702)
!2701 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2701, line: 16, size: 128, elements: !2703)
!2703 = !{!2704}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2702, file: !2701, line: 17, baseType: !2705, size: 128)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 128, elements: !190)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !602, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !602, file: !51, line: 1481, baseType: !2708, size: 32, offset: 7200)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !180, line: 150, baseType: !7)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !602, file: !51, line: 1487, baseType: !1175, size: 192, offset: 7232)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !602, file: !51, line: 1493, baseType: !223, size: 64, offset: 7424)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !602, file: !51, line: 1495, baseType: !2712, size: 64, offset: 7488)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !386, line: 135, size: 1024, align: 512, elements: !2715)
!2715 = !{!2716, !2720, !2721, !2728, !2734, !2738, !2742, !2746, !2747, !2751, !2755, !2760, !2764}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2714, file: !386, line: 136, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!186, !388, !7}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2714, file: !386, line: 137, baseType: !2717, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2714, file: !386, line: 138, baseType: !2722, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!186, !2725, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2714, file: !386, line: 139, baseType: !2729, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!186, !2725, !7, !223, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2714, file: !386, line: 141, baseType: !2735, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!186, !2725}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2714, file: !386, line: 142, baseType: !2739, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!186, !388}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2714, file: !386, line: 143, baseType: !2743, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{null, !388}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2714, file: !386, line: 144, baseType: !2743, size: 64, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2714, file: !386, line: 145, baseType: !2748, size: 64, offset: 512)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !388, !431}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2714, file: !386, line: 146, baseType: !2752, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!280, !388, !280, !186}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2714, file: !386, line: 147, baseType: !2756, size: 64, offset: 640)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!384, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2714, file: !386, line: 148, baseType: !2761, size: 64, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!186, !551, !492}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2714, file: !386, line: 149, baseType: !2765, size: 64, offset: 768)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!388, !388, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !602, file: !51, line: 1500, baseType: !186, size: 32, offset: 7552)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !602, file: !51, line: 1502, baseType: !2772, size: 448, offset: 7616)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2416, line: 60, size: 448, elements: !2773)
!2773 = !{!2774, !2779, !2780, !2781, !2782, !2783, !2784}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2772, file: !2416, line: 61, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!330, !2778, !2414}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2772, file: !2416, line: 63, baseType: !2775, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2772, file: !2416, line: 66, baseType: !315, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2772, file: !2416, line: 67, baseType: !186, size: 32, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2772, file: !2416, line: 68, baseType: !7, size: 32, offset: 224)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2772, file: !2416, line: 71, baseType: !226, size: 128, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2772, file: !2416, line: 77, baseType: !2785, size: 64, offset: 384)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !602, file: !51, line: 1505, baseType: !773, size: 64, offset: 8064)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !602, file: !51, line: 1508, baseType: !773, size: 64, offset: 8128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !602, file: !51, line: 1511, baseType: !186, size: 32, offset: 8192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !602, file: !51, line: 1514, baseType: !911, size: 32, offset: 8224)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !602, file: !51, line: 1517, baseType: !2791, size: 64, offset: 8256)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1956, line: 18, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !602, file: !51, line: 1518, baseType: !637, size: 64, offset: 8320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !602, file: !51, line: 1525, baseType: !1713, size: 64, offset: 8384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !602, file: !51, line: 1532, baseType: !2796, size: 64, offset: 8448)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2797, line: 52, size: 64, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2796, file: !2797, line: 53, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2797, line: 40, size: 256, elements: !2802)
!2802 = !{!2803, !2804, !2809}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2801, file: !2797, line: 42, baseType: !239)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2801, file: !2797, line: 44, baseType: !2805, size: 192)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2797, line: 28, size: 192, elements: !2806)
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2805, file: !2797, line: 29, baseType: !226, size: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2805, file: !2797, line: 31, baseType: !315, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2801, file: !2797, line: 49, baseType: !315, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !602, file: !51, line: 1533, baseType: !2796, size: 64, offset: 8512)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !602, file: !51, line: 1534, baseType: !371, size: 128, align: 64, offset: 8576)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !602, file: !51, line: 1535, baseType: !1955, size: 256, offset: 8704)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !602, file: !51, line: 1537, baseType: !1175, size: 192, offset: 8960)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !602, file: !51, line: 1542, baseType: !186, size: 32, offset: 9152)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !602, file: !51, line: 1545, baseType: !239, offset: 9184)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !602, file: !51, line: 1546, baseType: !226, size: 128, offset: 9216)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !602, file: !51, line: 1548, baseType: !239, offset: 9344)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !602, file: !51, line: 1549, baseType: !226, size: 128, offset: 9344)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !432, file: !51, line: 624, baseType: !736, size: 64, offset: 256)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !432, file: !51, line: 631, baseType: !330, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !51, line: 639, baseType: !2822, size: 32, offset: 384)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !51, line: 639, size: 32, elements: !2823)
!2823 = !{!2824, !2826}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2822, file: !51, line: 640, baseType: !2825, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2822, file: !51, line: 641, baseType: !7, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !432, file: !51, line: 643, baseType: !515, size: 32, offset: 416)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !432, file: !51, line: 644, baseType: !533, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !432, file: !51, line: 645, baseType: !537, size: 128, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !432, file: !51, line: 646, baseType: !537, size: 128, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !432, file: !51, line: 647, baseType: !537, size: 128, offset: 768)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !432, file: !51, line: 648, baseType: !239, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !432, file: !51, line: 649, baseType: !322, size: 16, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !432, file: !51, line: 650, baseType: !1354, size: 8, offset: 912)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !432, file: !51, line: 651, baseType: !1354, size: 8, offset: 920)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !432, file: !51, line: 652, baseType: !2588, size: 64, offset: 960)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !432, file: !51, line: 659, baseType: !330, size: 64, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !432, file: !51, line: 660, baseType: !769, size: 256, offset: 1088)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !432, file: !51, line: 662, baseType: !330, size: 64, offset: 1344)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !432, file: !51, line: 663, baseType: !330, size: 64, offset: 1408)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !432, file: !51, line: 665, baseType: !641, size: 128, offset: 1472)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !432, file: !51, line: 666, baseType: !226, size: 128, offset: 1600)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !432, file: !51, line: 675, baseType: !226, size: 128, offset: 1728)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !432, file: !51, line: 676, baseType: !226, size: 128, offset: 1856)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !432, file: !51, line: 677, baseType: !226, size: 128, offset: 1984)
!2846 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !51, line: 678, baseType: !2847, size: 128, offset: 2112)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !51, line: 678, size: 128, elements: !2848)
!2848 = !{!2849, !2850}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2847, file: !51, line: 679, baseType: !637, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2847, file: !51, line: 680, baseType: !371, size: 128, align: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !432, file: !51, line: 682, baseType: !775, size: 64, offset: 2240)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !432, file: !51, line: 683, baseType: !775, size: 64, offset: 2304)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !432, file: !51, line: 684, baseType: !749, size: 32, offset: 2368)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !432, file: !51, line: 685, baseType: !749, size: 32, offset: 2400)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !432, file: !51, line: 686, baseType: !749, size: 32, offset: 2432)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !432, file: !51, line: 688, baseType: !749, size: 32, offset: 2464)
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !51, line: 690, baseType: !2858, size: 64, offset: 2496)
!2858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !51, line: 690, size: 64, elements: !2859)
!2859 = !{!2860, !3083}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2858, file: !51, line: 691, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2863)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2864)
!2864 = !{!2865, !2866, !2870, !2875, !2879, !2880, !2881, !2885, !2898, !2899, !2907, !2911, !2912, !2916, !2917, !2921, !2926, !2927, !2931, !2935, !3043, !3047, !3048, !3052, !3053, !3057, !3061, !3066, !3070, !3074, !3078, !3082}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2863, file: !51, line: 1823, baseType: !176, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2863, file: !51, line: 1824, baseType: !2867, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!533, !358, !533, !186}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2863, file: !51, line: 1825, baseType: !2871, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!311, !358, !280, !327, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2863, file: !51, line: 1826, baseType: !2876, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!311, !358, !223, !327, !2874}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2863, file: !51, line: 1827, baseType: !846, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2863, file: !51, line: 1828, baseType: !846, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2863, file: !51, line: 1829, baseType: !2882, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!186, !849, !492}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2863, file: !51, line: 1830, baseType: !2886, size: 64, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!186, !358, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2891)
!2891 = !{!2892, !2897}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2890, file: !51, line: 1777, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2894)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!186, !2889, !223, !186, !533, !423, !7}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2890, file: !51, line: 1778, baseType: !533, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2863, file: !51, line: 1831, baseType: !2886, size: 64, offset: 512)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2863, file: !51, line: 1832, baseType: !2900, size: 64, offset: 576)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!2903, !358, !2905}
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2904, line: 52, baseType: !7)
!2904 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !621, line: 27, flags: DIFlagFwdDecl)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2863, file: !51, line: 1833, baseType: !2908, size: 64, offset: 640)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!315, !358, !7, !330}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2863, file: !51, line: 1834, baseType: !2908, size: 64, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2863, file: !51, line: 1835, baseType: !2913, size: 64, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!186, !358, !983}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2863, file: !51, line: 1836, baseType: !330, size: 64, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2863, file: !51, line: 1837, baseType: !2918, size: 64, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!186, !431, !358}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2863, file: !51, line: 1838, baseType: !2922, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!186, !358, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !181)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2863, file: !51, line: 1839, baseType: !2918, size: 64, offset: 1024)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2863, file: !51, line: 1840, baseType: !2928, size: 64, offset: 1088)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!186, !358, !533, !533, !186}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2863, file: !51, line: 1841, baseType: !2932, size: 64, offset: 1152)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!186, !186, !358, !186}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2863, file: !51, line: 1842, baseType: !2936, size: 64, offset: 1216)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!186, !358, !186, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2973, !2974, !2975, !2988, !3019}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2940, file: !51, line: 1063, baseType: !2939, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2940, file: !51, line: 1064, baseType: !226, size: 128, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2940, file: !51, line: 1065, baseType: !641, size: 128, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2940, file: !51, line: 1066, baseType: !226, size: 128, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2940, file: !51, line: 1069, baseType: !226, size: 128, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2940, file: !51, line: 1072, baseType: !2925, size: 64, offset: 576)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2940, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2940, file: !51, line: 1074, baseType: !429, size: 8, offset: 672)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2940, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2940, file: !51, line: 1076, baseType: !186, size: 32, offset: 736)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2940, file: !51, line: 1077, baseType: !1483, size: 128, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2940, file: !51, line: 1078, baseType: !358, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2940, file: !51, line: 1079, baseType: !533, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2940, file: !51, line: 1080, baseType: !533, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2940, file: !51, line: 1082, baseType: !2957, size: 64, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !2959)
!2959 = !{!2960, !2968, !2969, !2970, !2971, !2972}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2958, file: !51, line: 1315, baseType: !2961)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2962, line: 20, baseType: !2963)
!2962 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2962, line: 11, elements: !2964)
!2964 = !{!2965}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2963, file: !2962, line: 12, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !251, line: 33, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 31, elements: !253)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2958, file: !51, line: 1316, baseType: !186, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2958, file: !51, line: 1317, baseType: !186, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2958, file: !51, line: 1318, baseType: !2957, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2958, file: !51, line: 1319, baseType: !358, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2958, file: !51, line: 1320, baseType: !371, size: 128, align: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2940, file: !51, line: 1084, baseType: !330, size: 64, offset: 1152)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2940, file: !51, line: 1085, baseType: !330, size: 64, offset: 1216)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2940, file: !51, line: 1087, baseType: !2976, size: 64, offset: 1280)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2978)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !2979)
!2979 = !{!2980, !2984}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2978, file: !51, line: 1012, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2939, !2939}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2978, file: !51, line: 1013, baseType: !2985, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2939}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2940, file: !51, line: 1088, baseType: !2989, size: 64, offset: 1344)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !2992)
!2992 = !{!2993, !2997, !3001, !3002, !3006, !3010, !3014, !3018}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2991, file: !51, line: 1017, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2925, !2925}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2991, file: !51, line: 1018, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2925}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2991, file: !51, line: 1019, baseType: !2985, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2991, file: !51, line: 1020, baseType: !3003, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!186, !2939, !186}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2991, file: !51, line: 1021, baseType: !3007, size: 64, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!492, !2939}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2991, file: !51, line: 1022, baseType: !3011, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!186, !2939, !186, !229}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2991, file: !51, line: 1023, baseType: !3015, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2939, !823}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2991, file: !51, line: 1024, baseType: !3007, size: 64, offset: 448)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2940, file: !51, line: 1097, baseType: !3020, size: 256, offset: 1408)
!3020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2940, file: !51, line: 1089, size: 256, elements: !3021)
!3021 = !{!3022, !3031, !3037}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3020, file: !51, line: 1090, baseType: !3023, size: 256)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3024, line: 10, size: 256, elements: !3025)
!3024 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3025 = !{!3026, !3027, !3030}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3023, file: !3024, line: 11, baseType: !193, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3023, file: !3024, line: 12, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3024, line: 5, flags: DIFlagFwdDecl)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3023, file: !3024, line: 13, baseType: !226, size: 128, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3020, file: !51, line: 1091, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3024, line: 17, size: 64, elements: !3033)
!3033 = !{!3034}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3032, file: !3024, line: 18, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3024, line: 16, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3020, file: !51, line: 1096, baseType: !3038, size: 192)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3020, file: !51, line: 1092, size: 192, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3038, file: !51, line: 1093, baseType: !226, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3038, file: !51, line: 1094, baseType: !186, size: 32, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3038, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2863, file: !51, line: 1843, baseType: !3044, size: 64, offset: 1280)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!311, !358, !723, !186, !327, !2874, !186}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2863, file: !51, line: 1844, baseType: !1103, size: 64, offset: 1344)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2863, file: !51, line: 1845, baseType: !3049, size: 64, offset: 1408)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!186, !186}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2863, file: !51, line: 1846, baseType: !2936, size: 64, offset: 1472)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2863, file: !51, line: 1847, baseType: !3054, size: 64, offset: 1536)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!311, !2096, !358, !2874, !327, !7}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2863, file: !51, line: 1848, baseType: !3058, size: 64, offset: 1600)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!311, !358, !2874, !2096, !327, !7}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2863, file: !51, line: 1849, baseType: !3062, size: 64, offset: 1664)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!186, !358, !315, !3065, !823}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2863, file: !51, line: 1850, baseType: !3067, size: 64, offset: 1728)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!315, !358, !186, !533, !533}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2863, file: !51, line: 1852, baseType: !3071, size: 64, offset: 1792)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !713, !358}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2863, file: !51, line: 1856, baseType: !3075, size: 64, offset: 1856)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!311, !358, !533, !358, !533, !327, !7}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2863, file: !51, line: 1858, baseType: !3079, size: 64, offset: 1920)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!533, !358, !533, !358, !533, !533, !7}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2863, file: !51, line: 1861, baseType: !2928, size: 64, offset: 1984)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2858, file: !51, line: 692, baseType: !666, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !432, file: !51, line: 694, baseType: !3085, size: 64, offset: 2560)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3086, file: !51, line: 1101, baseType: !239)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3086, file: !51, line: 1102, baseType: !226, size: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3086, file: !51, line: 1103, baseType: !226, size: 128, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3086, file: !51, line: 1104, baseType: !226, size: 128, offset: 256)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !432, file: !51, line: 695, baseType: !737, size: 1216, align: 64, offset: 2624)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !432, file: !51, line: 696, baseType: !226, size: 128, offset: 3840)
!3094 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !51, line: 697, baseType: !3095, size: 64, offset: 3968)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !51, line: 697, size: 64, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3110, !3111}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3095, file: !51, line: 698, baseType: !2096, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3095, file: !51, line: 699, baseType: !2613, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3095, file: !51, line: 700, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3102, line: 14, size: 832, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3101, file: !3102, line: 15, baseType: !219, size: 512)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3101, file: !3102, line: 16, baseType: !176, size: 64, offset: 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3101, file: !3102, line: 17, baseType: !2861, size: 64, offset: 576)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3101, file: !3102, line: 18, baseType: !226, size: 128, offset: 640)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3101, file: !3102, line: 19, baseType: !515, size: 32, offset: 768)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3101, file: !3102, line: 20, baseType: !7, size: 32, offset: 800)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3095, file: !51, line: 701, baseType: !280, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3095, file: !51, line: 702, baseType: !7, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !432, file: !51, line: 705, baseType: !195, size: 32, offset: 4032)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !432, file: !51, line: 708, baseType: !195, size: 32, offset: 4064)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !432, file: !51, line: 709, baseType: !2695, size: 64, offset: 4096)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !432, file: !51, line: 720, baseType: !181, size: 64, offset: 4160)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !389, file: !386, line: 98, baseType: !3117, size: 256, offset: 448)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 256, elements: !2228)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !389, file: !386, line: 101, baseType: !3119, size: 32, offset: 704)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3120, line: 25, size: 32, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3119, file: !3120, line: 26, baseType: !3123, size: 32)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3119, file: !3120, line: 26, size: 32, elements: !3124)
!3124 = !{!3125}
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !3120, line: 30, baseType: !3126, size: 32)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3123, file: !3120, line: 30, size: 32, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3126, file: !3120, line: 31, baseType: !239)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3126, file: !3120, line: 32, baseType: !186, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !389, file: !386, line: 102, baseType: !2712, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !389, file: !386, line: 103, baseType: !601, size: 64, offset: 832)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !389, file: !386, line: 104, baseType: !330, size: 64, offset: 896)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !389, file: !386, line: 105, baseType: !181, size: 64, offset: 960)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !386, line: 107, baseType: !3135, size: 128, offset: 1024)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 107, size: 128, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3135, file: !386, line: 108, baseType: !226, size: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3135, file: !386, line: 109, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !389, file: !386, line: 111, baseType: !226, size: 128, offset: 1152)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !389, file: !386, line: 112, baseType: !226, size: 128, offset: 1280)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !389, file: !386, line: 120, baseType: !3143, size: 128, offset: 1408)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 116, size: 128, elements: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3143, file: !386, line: 117, baseType: !641, size: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3143, file: !386, line: 118, baseType: !403, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3143, file: !386, line: 119, baseType: !371, size: 128, align: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !359, file: !51, line: 922, baseType: !431, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !359, file: !51, line: 923, baseType: !2861, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !359, file: !51, line: 929, baseType: !239, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !359, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !359, file: !51, line: 931, baseType: !773, size: 64, offset: 448)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !359, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !359, file: !51, line: 933, baseType: !2708, size: 32, offset: 544)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !359, file: !51, line: 934, baseType: !1175, size: 192, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !359, file: !51, line: 935, baseType: !533, size: 64, offset: 768)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !359, file: !51, line: 936, baseType: !3158, size: 192, offset: 832)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3159)
!3159 = !{!3160, !3161, !3162, !3163, !3164, !3165}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3158, file: !51, line: 886, baseType: !2961)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3158, file: !51, line: 887, baseType: !1473, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3158, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3158, file: !51, line: 889, baseType: !437, size: 32, offset: 96)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3158, file: !51, line: 889, baseType: !437, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3158, file: !51, line: 890, baseType: !186, size: 32, offset: 160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !359, file: !51, line: 937, baseType: !1549, size: 64, offset: 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !359, file: !51, line: 938, baseType: !3168, size: 256, offset: 1088)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3168, file: !51, line: 897, baseType: !330, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3168, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3168, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3168, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3168, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3168, file: !51, line: 904, baseType: !533, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !359, file: !51, line: 940, baseType: !423, size: 64, offset: 1344)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !359, file: !51, line: 945, baseType: !181, size: 64, offset: 1408)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !359, file: !51, line: 949, baseType: !226, size: 128, offset: 1472)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !359, file: !51, line: 950, baseType: !226, size: 128, offset: 1600)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !51, line: 952, baseType: !736, size: 64, offset: 1728)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !359, file: !51, line: 953, baseType: !911, size: 32, offset: 1792)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !359, file: !51, line: 954, baseType: !911, size: 32, offset: 1824)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !349, file: !305, line: 174, baseType: !355, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !305, line: 176, baseType: !3185, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!186, !358, !232, !348, !983}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !337, file: !305, line: 90, baseType: !332, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !337, file: !305, line: 91, baseType: !3190, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !295, file: !220, line: 143, baseType: !3192, size: 64, offset: 256)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!3195, !232}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3198)
!3198 = !{!3199, !3200, !3204, !3208, !3214, !3218}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3197, file: !68, line: 40, baseType: !67, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3197, file: !68, line: 41, baseType: !3201, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!492}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3197, file: !68, line: 42, baseType: !3205, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!181}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3197, file: !68, line: 43, baseType: !3209, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!2125, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3197, file: !68, line: 44, baseType: !3215, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!2125}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3197, file: !68, line: 45, baseType: !470, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !295, file: !220, line: 144, baseType: !3220, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!2125, !232}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !295, file: !220, line: 145, baseType: !3224, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !232, !3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !219, file: !220, line: 70, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !621, line: 123, size: 1024, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3361, !3362, !3363, !3364, !3365}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3231, file: !621, line: 124, baseType: !749, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3231, file: !621, line: 125, baseType: !749, size: 32, offset: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3231, file: !621, line: 135, baseType: !3230, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3231, file: !621, line: 136, baseType: !223, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3231, file: !621, line: 138, baseType: !762, size: 192, align: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3231, file: !621, line: 140, baseType: !2125, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3231, file: !621, line: 141, baseType: !7, size: 32, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !3231, file: !621, line: 142, baseType: !3241, size: 256, offset: 512)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3231, file: !621, line: 142, size: 256, elements: !3242)
!3242 = !{!3243, !3289, !3293}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3241, file: !621, line: 143, baseType: !3244, size: 192)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !621, line: 91, size: 192, elements: !3245)
!3245 = !{!3246, !3247, !3248}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3244, file: !621, line: 92, baseType: !330, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3244, file: !621, line: 94, baseType: !758, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3244, file: !621, line: 100, baseType: !3249, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !621, line: 180, size: 704, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3261, !3262, !3263, !3287, !3288}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3250, file: !621, line: 182, baseType: !3230, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3250, file: !621, line: 183, baseType: !7, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3250, file: !621, line: 186, baseType: !3255, size: 192, offset: 128)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3256, line: 19, size: 192, elements: !3257)
!3256 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3257 = !{!3258, !3259, !3260}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3255, file: !3256, line: 20, baseType: !741, size: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3255, file: !3256, line: 21, baseType: !7, size: 32, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3255, file: !3256, line: 22, baseType: !7, size: 32, offset: 160)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3250, file: !621, line: 187, baseType: !193, size: 32, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3250, file: !621, line: 188, baseType: !193, size: 32, offset: 352)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3250, file: !621, line: 189, baseType: !3264, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !621, line: 168, size: 320, elements: !3266)
!3266 = !{!3267, !3271, !3275, !3279, !3283}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3265, file: !621, line: 169, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!186, !713, !3249}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3265, file: !621, line: 171, baseType: !3272, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!186, !3230, !223, !321}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3265, file: !621, line: 173, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!186, !3230}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3265, file: !621, line: 174, baseType: !3280, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!186, !3230, !3230, !223}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3265, file: !621, line: 176, baseType: !3284, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!186, !713, !3230, !3249}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3250, file: !621, line: 192, baseType: !226, size: 128, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3250, file: !621, line: 194, baseType: !1483, size: 128, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3241, file: !621, line: 144, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !621, line: 103, size: 64, elements: !3291)
!3291 = !{!3292}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3290, file: !621, line: 104, baseType: !3230, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3241, file: !621, line: 145, baseType: !3294, size: 256)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !621, line: 107, size: 256, elements: !3295)
!3295 = !{!3296, !3356, !3359, !3360}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3294, file: !621, line: 108, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3299)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !621, line: 217, size: 768, elements: !3300)
!3300 = !{!3301, !3321, !3325, !3329, !3333, !3337, !3341, !3345, !3346, !3347, !3348, !3352}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3299, file: !621, line: 222, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!186, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !621, line: 197, size: 1088, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3306, file: !621, line: 199, baseType: !3230, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3306, file: !621, line: 200, baseType: !358, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3306, file: !621, line: 201, baseType: !713, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3306, file: !621, line: 202, baseType: !181, size: 64, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3306, file: !621, line: 205, baseType: !1175, size: 192, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3306, file: !621, line: 206, baseType: !1175, size: 192, offset: 448)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3306, file: !621, line: 207, baseType: !186, size: 32, offset: 640)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3306, file: !621, line: 208, baseType: !226, size: 128, offset: 704)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3306, file: !621, line: 209, baseType: !280, size: 64, offset: 832)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3306, file: !621, line: 211, baseType: !327, size: 64, offset: 896)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3306, file: !621, line: 212, baseType: !492, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3306, file: !621, line: 213, baseType: !492, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3306, file: !621, line: 214, baseType: !1011, size: 64, offset: 1024)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3299, file: !621, line: 223, baseType: !3322, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !3305}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3299, file: !621, line: 236, baseType: !3326, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!186, !713, !181}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3299, file: !621, line: 238, baseType: !3330, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!181, !713, !2874}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3299, file: !621, line: 239, baseType: !3334, size: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!181, !713, !181, !2874}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3299, file: !621, line: 240, baseType: !3338, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !713, !181}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3299, file: !621, line: 242, baseType: !3342, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!311, !3305, !280, !327, !533}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3299, file: !621, line: 252, baseType: !327, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3299, file: !621, line: 259, baseType: !492, size: 8, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3299, file: !621, line: 260, baseType: !3342, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3299, file: !621, line: 263, baseType: !3349, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!2903, !3305, !2905}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3299, file: !621, line: 266, baseType: !3353, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!186, !3305, !983}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3294, file: !621, line: 109, baseType: !3357, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !621, line: 31, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3294, file: !621, line: 110, baseType: !533, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3294, file: !621, line: 111, baseType: !3230, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3231, file: !621, line: 148, baseType: !181, size: 64, offset: 768)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3231, file: !621, line: 154, baseType: !423, size: 64, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3231, file: !621, line: 156, baseType: !322, size: 16, offset: 896)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3231, file: !621, line: 157, baseType: !321, size: 16, offset: 912)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3231, file: !621, line: 158, baseType: !3366, size: 64, offset: 960)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !621, line: 32, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !219, file: !220, line: 71, baseType: !3369, size: 32, offset: 448)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3370, line: 19, size: 32, elements: !3371)
!3370 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3371 = !{!3372}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3369, file: !3370, line: 20, baseType: !1232, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !219, file: !220, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !219, file: !220, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !219, file: !220, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !219, file: !220, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !219, file: !220, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !80, line: 463, baseType: !215, size: 64, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !216, file: !80, line: 465, baseType: !3380, size: 64, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !216, file: !80, line: 467, baseType: !223, size: 64, offset: 640)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !216, file: !80, line: 468, baseType: !3384, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3386)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3394, !3399, !3403}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3386, file: !80, line: 88, baseType: !223, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3386, file: !80, line: 89, baseType: !334, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3386, file: !80, line: 90, baseType: !3391, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!186, !215, !275}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3386, file: !80, line: 91, baseType: !3395, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!280, !215, !3398, !3227, !3228}
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3386, file: !80, line: 93, baseType: !3400, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !215}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3386, file: !80, line: 95, baseType: !3404, size: 64, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3407)
!3407 = !{!3408, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3406, file: !87, line: 279, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!186, !215}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3406, file: !87, line: 280, baseType: !3400, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3406, file: !87, line: 281, baseType: !3409, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3406, file: !87, line: 282, baseType: !3409, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3406, file: !87, line: 283, baseType: !3409, size: 64, offset: 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3406, file: !87, line: 284, baseType: !3409, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3406, file: !87, line: 285, baseType: !3409, size: 64, offset: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3406, file: !87, line: 286, baseType: !3409, size: 64, offset: 448)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3406, file: !87, line: 287, baseType: !3409, size: 64, offset: 512)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3406, file: !87, line: 288, baseType: !3409, size: 64, offset: 576)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3406, file: !87, line: 289, baseType: !3409, size: 64, offset: 640)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3406, file: !87, line: 290, baseType: !3409, size: 64, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3406, file: !87, line: 291, baseType: !3409, size: 64, offset: 768)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3406, file: !87, line: 292, baseType: !3409, size: 64, offset: 832)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3406, file: !87, line: 293, baseType: !3409, size: 64, offset: 896)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3406, file: !87, line: 294, baseType: !3409, size: 64, offset: 960)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3406, file: !87, line: 295, baseType: !3409, size: 64, offset: 1024)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3406, file: !87, line: 296, baseType: !3409, size: 64, offset: 1088)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3406, file: !87, line: 297, baseType: !3409, size: 64, offset: 1152)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3406, file: !87, line: 298, baseType: !3409, size: 64, offset: 1216)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3406, file: !87, line: 299, baseType: !3409, size: 64, offset: 1280)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3406, file: !87, line: 300, baseType: !3409, size: 64, offset: 1344)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3406, file: !87, line: 301, baseType: !3409, size: 64, offset: 1408)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !216, file: !80, line: 470, baseType: !3435, size: 64, offset: 768)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3437, line: 82, size: 1408, elements: !3438)
!3437 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3520, !3523, !3524}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3436, file: !3437, line: 83, baseType: !223, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3436, file: !3437, line: 84, baseType: !223, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3436, file: !3437, line: 85, baseType: !215, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3436, file: !3437, line: 86, baseType: !334, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3436, file: !3437, line: 87, baseType: !334, size: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3436, file: !3437, line: 88, baseType: !334, size: 64, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3436, file: !3437, line: 90, baseType: !3446, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!186, !215, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3471, !3484, !3485, !3486, !3487, !3488, !3496, !3497, !3498, !3499, !3500, !3501}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3450, file: !74, line: 96, baseType: !223, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3450, file: !74, line: 97, baseType: !3435, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3450, file: !74, line: 99, baseType: !176, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3450, file: !74, line: 100, baseType: !223, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3450, file: !74, line: 102, baseType: !492, size: 8, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3450, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3450, file: !74, line: 105, baseType: !3459, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3462, line: 262, size: 1600, elements: !3463)
!3462 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3463 = !{!3464, !3465, !3466, !3470}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3461, file: !3462, line: 263, baseType: !2698, size: 256)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3461, file: !3462, line: 264, baseType: !2698, size: 256, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3461, file: !3462, line: 265, baseType: !3467, size: 1024, offset: 512)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, elements: !3468)
!3468 = !{!3469}
!3469 = !DISubrange(count: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3461, file: !3462, line: 266, baseType: !2125, size: 64, offset: 1536)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3450, file: !74, line: 106, baseType: !3472, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3462, line: 210, size: 256, elements: !3475)
!3475 = !{!3476, !3480, !3482, !3483}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3474, file: !3462, line: 211, baseType: !3477, size: 72)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 72, elements: !3478)
!3478 = !{!3479}
!3479 = !DISubrange(count: 9)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3474, file: !3462, line: 212, baseType: !3481, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3462, line: 14, baseType: !330)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3474, file: !3462, line: 213, baseType: !195, size: 32, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3474, file: !3462, line: 214, baseType: !195, size: 32, offset: 224)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3450, file: !74, line: 108, baseType: !3409, size: 64, offset: 448)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3450, file: !74, line: 109, baseType: !3400, size: 64, offset: 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3450, file: !74, line: 110, baseType: !3409, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3450, file: !74, line: 111, baseType: !3400, size: 64, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3450, file: !74, line: 112, baseType: !3489, size: 64, offset: 704)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!186, !215, !3492}
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3494)
!3494 = !{!3495}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3493, file: !87, line: 51, baseType: !186, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3450, file: !74, line: 113, baseType: !3409, size: 64, offset: 768)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3450, file: !74, line: 114, baseType: !334, size: 64, offset: 832)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3450, file: !74, line: 115, baseType: !334, size: 64, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3450, file: !74, line: 117, baseType: !3404, size: 64, offset: 960)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3450, file: !74, line: 118, baseType: !3400, size: 64, offset: 1024)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3450, file: !74, line: 120, baseType: !3502, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3436, file: !3437, line: 91, baseType: !3391, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3436, file: !3437, line: 92, baseType: !3409, size: 64, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3436, file: !3437, line: 93, baseType: !3400, size: 64, offset: 576)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3436, file: !3437, line: 94, baseType: !3409, size: 64, offset: 640)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3436, file: !3437, line: 95, baseType: !3400, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3436, file: !3437, line: 97, baseType: !3409, size: 64, offset: 768)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3436, file: !3437, line: 98, baseType: !3409, size: 64, offset: 832)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3436, file: !3437, line: 100, baseType: !3489, size: 64, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3436, file: !3437, line: 101, baseType: !3409, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3436, file: !3437, line: 103, baseType: !3409, size: 64, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3436, file: !3437, line: 105, baseType: !3409, size: 64, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3436, file: !3437, line: 107, baseType: !3404, size: 64, offset: 1152)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3436, file: !3437, line: 109, baseType: !3517, size: 64, offset: 1216)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3519)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3437, line: 109, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3436, file: !3437, line: 111, baseType: !3521, size: 64, offset: 1280)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3437, line: 111, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3436, file: !3437, line: 112, baseType: !647, offset: 1344)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3436, file: !3437, line: 114, baseType: !492, size: 8, offset: 1344)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !216, file: !80, line: 471, baseType: !3449, size: 64, offset: 832)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !216, file: !80, line: 473, baseType: !181, size: 64, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !216, file: !80, line: 475, baseType: !181, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !216, file: !80, line: 480, baseType: !1175, size: 192, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !216, file: !80, line: 484, baseType: !3530, size: 576, offset: 1216)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3530, file: !80, line: 362, baseType: !226, size: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3530, file: !80, line: 363, baseType: !226, size: 128, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3530, file: !80, line: 364, baseType: !226, size: 128, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3530, file: !80, line: 365, baseType: !226, size: 128, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3530, file: !80, line: 366, baseType: !492, size: 8, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3530, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !216, file: !80, line: 485, baseType: !3539, size: 2304, offset: 1792)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3636, !3640}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3539, file: !87, line: 566, baseType: !3492, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3539, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3539, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3539, file: !87, line: 569, baseType: !492, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3539, file: !87, line: 570, baseType: !492, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3539, file: !87, line: 571, baseType: !492, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3539, file: !87, line: 572, baseType: !492, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3539, file: !87, line: 573, baseType: !492, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3539, file: !87, line: 574, baseType: !492, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3539, file: !87, line: 575, baseType: !492, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3539, file: !87, line: 576, baseType: !492, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3539, file: !87, line: 577, baseType: !193, size: 32, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3539, file: !87, line: 578, baseType: !239, offset: 96)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3539, file: !87, line: 580, baseType: !226, size: 128, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3539, file: !87, line: 581, baseType: !1504, size: 192, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3539, file: !87, line: 582, baseType: !3557, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3559, line: 43, size: 1472, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3568, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3558, file: !3559, line: 44, baseType: !223, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3558, file: !3559, line: 45, baseType: !186, size: 32, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3558, file: !3559, line: 46, baseType: !226, size: 128, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3558, file: !3559, line: 47, baseType: !239, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3558, file: !3559, line: 48, baseType: !3566, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3558, file: !3559, line: 49, baseType: !3569, size: 320, offset: 320)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3570, line: 11, size: 320, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3571 = !{!3572, !3573, !3574, !3579}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3569, file: !3570, line: 16, baseType: !641, size: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3569, file: !3570, line: 17, baseType: !330, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3569, file: !3570, line: 18, baseType: !3575, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3569, file: !3570, line: 19, baseType: !193, size: 32, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3558, file: !3559, line: 50, baseType: !330, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3558, file: !3559, line: 51, baseType: !1302, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3558, file: !3559, line: 52, baseType: !1302, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3558, file: !3559, line: 53, baseType: !1302, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3558, file: !3559, line: 54, baseType: !1302, size: 64, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3558, file: !3559, line: 55, baseType: !1302, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3558, file: !3559, line: 56, baseType: !330, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3558, file: !3559, line: 57, baseType: !330, size: 64, offset: 1088)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3558, file: !3559, line: 58, baseType: !330, size: 64, offset: 1152)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3558, file: !3559, line: 59, baseType: !330, size: 64, offset: 1216)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3558, file: !3559, line: 60, baseType: !330, size: 64, offset: 1280)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3558, file: !3559, line: 61, baseType: !215, size: 64, offset: 1344)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3558, file: !3559, line: 62, baseType: !492, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3558, file: !3559, line: 63, baseType: !492, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3539, file: !87, line: 583, baseType: !492, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3539, file: !87, line: 584, baseType: !492, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3539, file: !87, line: 585, baseType: !492, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3539, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3539, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3539, file: !87, line: 592, baseType: !1294, size: 512, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3539, file: !87, line: 593, baseType: !423, size: 64, offset: 1088)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3539, file: !87, line: 594, baseType: !1955, size: 256, offset: 1152)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3539, file: !87, line: 595, baseType: !1483, size: 128, offset: 1408)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3539, file: !87, line: 596, baseType: !3566, size: 64, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3539, file: !87, line: 597, baseType: !749, size: 32, offset: 1600)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3539, file: !87, line: 598, baseType: !749, size: 32, offset: 1632)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3539, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3539, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3539, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3539, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3539, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3539, file: !87, line: 604, baseType: !492, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3539, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3539, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3539, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3539, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3539, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3539, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3539, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3539, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3539, file: !87, line: 613, baseType: !186, size: 32, offset: 1792)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3539, file: !87, line: 614, baseType: !186, size: 32, offset: 1824)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3539, file: !87, line: 615, baseType: !423, size: 64, offset: 1856)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3539, file: !87, line: 616, baseType: !423, size: 64, offset: 1920)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3539, file: !87, line: 617, baseType: !423, size: 64, offset: 1984)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3539, file: !87, line: 618, baseType: !423, size: 64, offset: 2048)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3539, file: !87, line: 620, baseType: !3627, size: 64, offset: 2112)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3628, file: !87, line: 537, baseType: !239)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3628, file: !87, line: 538, baseType: !7, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3628, file: !87, line: 540, baseType: !226, size: 128, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3628, file: !87, line: 543, baseType: !3634, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3539, file: !87, line: 621, baseType: !3637, size: 64, offset: 2176)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !215, !1446}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3539, file: !87, line: 622, baseType: !3641, size: 64, offset: 2240)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !216, file: !80, line: 486, baseType: !3644, size: 64, offset: 4096)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3653, !3654, !3655}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3645, file: !87, line: 643, baseType: !3406, size: 1472)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3645, file: !87, line: 644, baseType: !3409, size: 64, offset: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3645, file: !87, line: 645, baseType: !3650, size: 64, offset: 1536)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !215, !492}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3645, file: !87, line: 646, baseType: !3409, size: 64, offset: 1600)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3645, file: !87, line: 647, baseType: !3400, size: 64, offset: 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3645, file: !87, line: 648, baseType: !3400, size: 64, offset: 1728)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !216, file: !80, line: 493, baseType: !3657, size: 64, offset: 4160)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !216, file: !80, line: 499, baseType: !226, size: 128, offset: 4224)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !216, file: !80, line: 502, baseType: !3661, size: 64, offset: 4352)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3663)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !216, file: !80, line: 504, baseType: !3665, size: 64, offset: 4416)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !216, file: !80, line: 505, baseType: !423, size: 64, offset: 4480)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !216, file: !80, line: 510, baseType: !423, size: 64, offset: 4544)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !216, file: !80, line: 511, baseType: !3669, size: 64, offset: 4608)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3671)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !216, file: !80, line: 513, baseType: !3673, size: 64, offset: 4672)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3675)
!3675 = !{!3676, !3677}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3674, file: !80, line: 293, baseType: !7, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3674, file: !80, line: 294, baseType: !330, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !216, file: !80, line: 515, baseType: !226, size: 128, offset: 4736)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !216, file: !80, line: 526, baseType: !3680, offset: 4864)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3681, line: 5, elements: !253)
!3681 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !216, file: !80, line: 528, baseType: !3683, size: 64, offset: 4864)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3685, line: 14, flags: DIFlagFwdDecl)
!3685 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !216, file: !80, line: 529, baseType: !3687, size: 64, offset: 4928)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3689, line: 17, size: 192, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3690 = !{!3691, !3692, !3775}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3688, file: !3689, line: 18, baseType: !3687, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3688, file: !3689, line: 19, baseType: !3693, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3689, line: 110, size: 1152, elements: !3696)
!3696 = !{!3697, !3701, !3705, !3711, !3717, !3721, !3725, !3730, !3734, !3735, !3739, !3743, !3747, !3758, !3759, !3760, !3761, !3771}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3695, file: !3689, line: 111, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!3687, !3687}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3695, file: !3689, line: 112, baseType: !3702, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3687}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3695, file: !3689, line: 113, baseType: !3706, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!492, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3688)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3695, file: !3689, line: 114, baseType: !3712, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!2125, !3709, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3695, file: !3689, line: 116, baseType: !3718, size: 64, offset: 256)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!492, !3709, !223}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3695, file: !3689, line: 118, baseType: !3722, size: 64, offset: 320)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!186, !3709, !223, !7, !181, !327}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3695, file: !3689, line: 123, baseType: !3726, size: 64, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!186, !3709, !223, !3729, !327}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3695, file: !3689, line: 126, baseType: !3731, size: 64, offset: 448)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!223, !3709}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3695, file: !3689, line: 127, baseType: !3731, size: 64, offset: 512)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3695, file: !3689, line: 128, baseType: !3736, size: 64, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!3687, !3709}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3695, file: !3689, line: 130, baseType: !3740, size: 64, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!3687, !3709, !3687}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3695, file: !3689, line: 133, baseType: !3744, size: 64, offset: 704)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!3687, !3709, !223}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3695, file: !3689, line: 135, baseType: !3748, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!186, !3709, !223, !223, !7, !7, !3751}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3689, line: 43, size: 640, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3752, file: !3689, line: 44, baseType: !3687, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3752, file: !3689, line: 45, baseType: !7, size: 32, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3752, file: !3689, line: 46, baseType: !3757, size: 512, offset: 128)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 512, elements: !1332)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3695, file: !3689, line: 140, baseType: !3740, size: 64, offset: 832)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3695, file: !3689, line: 143, baseType: !3736, size: 64, offset: 896)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3695, file: !3689, line: 145, baseType: !3698, size: 64, offset: 960)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3695, file: !3689, line: 146, baseType: !3762, size: 64, offset: 1024)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!186, !3709, !3765}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3689, line: 29, size: 128, elements: !3767)
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3766, file: !3689, line: 30, baseType: !7, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3766, file: !3689, line: 31, baseType: !7, size: 32, offset: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3766, file: !3689, line: 32, baseType: !3709, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3695, file: !3689, line: 148, baseType: !3772, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!186, !3709, !215}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3688, file: !3689, line: 20, baseType: !215, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !216, file: !80, line: 534, baseType: !515, size: 32, offset: 4992)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !216, file: !80, line: 535, baseType: !193, size: 32, offset: 5024)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !216, file: !80, line: 537, baseType: !239, offset: 5056)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !216, file: !80, line: 538, baseType: !226, size: 128, offset: 5056)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !216, file: !80, line: 540, baseType: !3781, size: 64, offset: 5184)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3783, line: 54, size: 960, elements: !3784)
!3783 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3795, !3799, !3800, !3801, !3802, !3806, !3810, !3811}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3782, file: !3783, line: 55, baseType: !223, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3782, file: !3783, line: 56, baseType: !176, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3782, file: !3783, line: 58, baseType: !334, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3782, file: !3783, line: 59, baseType: !334, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3782, file: !3783, line: 60, baseType: !232, size: 64, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3782, file: !3783, line: 62, baseType: !3391, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3782, file: !3783, line: 63, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!280, !215, !3398}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3782, file: !3783, line: 65, baseType: !3796, size: 64, offset: 448)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3781}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3782, file: !3783, line: 66, baseType: !3400, size: 64, offset: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3782, file: !3783, line: 68, baseType: !3409, size: 64, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3782, file: !3783, line: 70, baseType: !3195, size: 64, offset: 640)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3782, file: !3783, line: 71, baseType: !3803, size: 64, offset: 704)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!2125, !215}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3782, file: !3783, line: 73, baseType: !3807, size: 64, offset: 768)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !215, !3227, !3228}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3782, file: !3783, line: 75, baseType: !3404, size: 64, offset: 832)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3782, file: !3783, line: 77, baseType: !3521, size: 64, offset: 896)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !216, file: !80, line: 541, baseType: !334, size: 64, offset: 5248)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !216, file: !80, line: 543, baseType: !3400, size: 64, offset: 5312)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !216, file: !80, line: 544, baseType: !3815, size: 64, offset: 5376)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !216, file: !80, line: 545, baseType: !3818, size: 64, offset: 5440)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !216, file: !80, line: 547, baseType: !492, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !216, file: !80, line: 548, baseType: !492, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !216, file: !80, line: 549, baseType: !492, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !216, file: !80, line: 550, baseType: !492, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !212, file: !6, line: 426, baseType: !215, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !212, file: !6, line: 427, baseType: !186, size: 32, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !212, file: !6, line: 428, baseType: !223, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !212, file: !6, line: 429, baseType: !1354, size: 8, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !212, file: !6, line: 433, baseType: !1354, size: 8, offset: 264)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !212, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !212, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !212, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !212, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !212, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !212, file: !6, line: 444, baseType: !186, size: 32, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !212, file: !6, line: 446, baseType: !1175, size: 192, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !212, file: !6, line: 448, baseType: !3837, size: 128, offset: 576)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3838)
!3838 = !{!3839}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3837, file: !6, line: 418, baseType: !3840, size: 128)
!3840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 128, elements: !207)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !212, file: !6, line: 449, baseType: !182, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !212, file: !6, line: 450, baseType: !211, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !212, file: !6, line: 452, baseType: !186, size: 32, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !212, file: !6, line: 459, baseType: !186, size: 32, offset: 864)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !212, file: !6, line: 460, baseType: !186, size: 32, offset: 896)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !212, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !183, file: !6, line: 647, baseType: !3848, size: 640, offset: 640)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3849)
!3849 = !{!3850, !3862, !3870, !3878, !3879, !3880, !3883, !3885, !3886, !3887}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3848, file: !6, line: 68, baseType: !3851, size: 72)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !101, line: 407, size: 72, elements: !3852)
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3859, !3860, !3861}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3851, file: !101, line: 408, baseType: !1355, size: 8)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3851, file: !101, line: 409, baseType: !1355, size: 8, offset: 8)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3851, file: !101, line: 411, baseType: !1355, size: 8, offset: 16)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3851, file: !101, line: 412, baseType: !1355, size: 8, offset: 24)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3851, file: !101, line: 413, baseType: !3858, size: 16, offset: 32)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2904, line: 29, baseType: !862)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3851, file: !101, line: 414, baseType: !1355, size: 8, offset: 48)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3851, file: !101, line: 418, baseType: !1355, size: 8, offset: 56)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3851, file: !101, line: 419, baseType: !1355, size: 8, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3848, file: !6, line: 69, baseType: !3863, size: 48, offset: 72)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !101, line: 689, size: 48, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3863, file: !101, line: 690, baseType: !1355, size: 8)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3863, file: !101, line: 691, baseType: !1355, size: 8, offset: 8)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3863, file: !101, line: 693, baseType: !1355, size: 8, offset: 16)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3863, file: !101, line: 694, baseType: !1355, size: 8, offset: 24)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3863, file: !101, line: 695, baseType: !3858, size: 16, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3848, file: !6, line: 70, baseType: !3871, size: 64, offset: 120)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !101, line: 677, size: 64, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3871, file: !101, line: 678, baseType: !1355, size: 8)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3871, file: !101, line: 679, baseType: !1355, size: 8, offset: 8)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3871, file: !101, line: 680, baseType: !3858, size: 16, offset: 16)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3871, file: !101, line: 681, baseType: !3877, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2904, line: 31, baseType: !195)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3848, file: !6, line: 71, baseType: !226, size: 128, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3848, file: !6, line: 72, baseType: !181, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3848, file: !6, line: 73, baseType: !3881, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3848, file: !6, line: 75, baseType: !3884, size: 64, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3848, file: !6, line: 76, baseType: !186, size: 32, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3848, file: !6, line: 77, baseType: !186, size: 32, offset: 544)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3848, file: !6, line: 78, baseType: !186, size: 32, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !183, file: !6, line: 649, baseType: !216, size: 5568, offset: 1280)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !183, file: !6, line: 651, baseType: !3890, size: 144, offset: 6848)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !101, line: 289, size: 144, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3890, file: !101, line: 290, baseType: !1355, size: 8)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3890, file: !101, line: 291, baseType: !1355, size: 8, offset: 8)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3890, file: !101, line: 293, baseType: !3858, size: 16, offset: 16)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3890, file: !101, line: 294, baseType: !1355, size: 8, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3890, file: !101, line: 295, baseType: !1355, size: 8, offset: 40)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3890, file: !101, line: 296, baseType: !1355, size: 8, offset: 48)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3890, file: !101, line: 297, baseType: !1355, size: 8, offset: 56)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3890, file: !101, line: 298, baseType: !3858, size: 16, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3890, file: !101, line: 299, baseType: !3858, size: 16, offset: 80)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3890, file: !101, line: 300, baseType: !3858, size: 16, offset: 96)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3890, file: !101, line: 301, baseType: !1355, size: 8, offset: 112)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3890, file: !101, line: 302, baseType: !1355, size: 8, offset: 120)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3890, file: !101, line: 303, baseType: !1355, size: 8, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3890, file: !101, line: 304, baseType: !1355, size: 8, offset: 136)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !183, file: !6, line: 652, baseType: !3907, size: 64, offset: 7040)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3909)
!3909 = !{!3910, !3918, !3926, !3938, !3951, !3960}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3908, file: !6, line: 397, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !101, line: 844, size: 40, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3912, file: !101, line: 845, baseType: !1355, size: 8)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3912, file: !101, line: 846, baseType: !1355, size: 8, offset: 8)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3912, file: !101, line: 848, baseType: !3858, size: 16, offset: 16)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3912, file: !101, line: 849, baseType: !1355, size: 8, offset: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3908, file: !6, line: 400, baseType: !3919, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !101, line: 895, size: 56, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3920, file: !101, line: 896, baseType: !1355, size: 8)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3920, file: !101, line: 897, baseType: !1355, size: 8, offset: 8)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3920, file: !101, line: 898, baseType: !1355, size: 8, offset: 16)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3920, file: !101, line: 899, baseType: !3877, size: 32, offset: 24)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3908, file: !6, line: 401, baseType: !3927, size: 64, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !101, line: 917, size: 80, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3928, file: !101, line: 918, baseType: !1355, size: 8)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3928, file: !101, line: 919, baseType: !1355, size: 8, offset: 8)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3928, file: !101, line: 920, baseType: !1355, size: 8, offset: 16)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3928, file: !101, line: 921, baseType: !1355, size: 8, offset: 24)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3928, file: !101, line: 923, baseType: !3858, size: 16, offset: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3928, file: !101, line: 928, baseType: !1355, size: 8, offset: 48)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3928, file: !101, line: 929, baseType: !1355, size: 8, offset: 56)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3928, file: !101, line: 930, baseType: !3858, size: 16, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3908, file: !6, line: 402, baseType: !3939, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !101, line: 955, size: 128, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3940, file: !101, line: 956, baseType: !1355, size: 8)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3940, file: !101, line: 957, baseType: !1355, size: 8, offset: 8)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3940, file: !101, line: 958, baseType: !1355, size: 8, offset: 16)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3940, file: !101, line: 959, baseType: !1355, size: 8, offset: 24)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3940, file: !101, line: 960, baseType: !3877, size: 32, offset: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3940, file: !101, line: 963, baseType: !3858, size: 16, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3940, file: !101, line: 967, baseType: !3858, size: 16, offset: 80)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3940, file: !101, line: 968, baseType: !3950, size: 32, offset: 96)
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3877, size: 32, elements: !1373)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3908, file: !6, line: 403, baseType: !3952, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !101, line: 940, size: 160, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3953, file: !101, line: 941, baseType: !1355, size: 8)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3953, file: !101, line: 942, baseType: !1355, size: 8, offset: 8)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3953, file: !101, line: 943, baseType: !1355, size: 8, offset: 16)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3953, file: !101, line: 944, baseType: !1355, size: 8, offset: 24)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3953, file: !101, line: 945, baseType: !2705, size: 128, offset: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3908, file: !6, line: 404, baseType: !3961, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !101, line: 1080, size: 24, elements: !3963)
!3963 = !{!3964, !3965, !3966}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3962, file: !101, line: 1081, baseType: !1355, size: 8)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3962, file: !101, line: 1082, baseType: !1355, size: 8, offset: 8)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3962, file: !101, line: 1083, baseType: !1355, size: 8, offset: 16)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !183, file: !6, line: 653, baseType: !3968, size: 64, offset: 7104)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3970)
!3970 = !{!3971, !3982, !3983, !3996, !4038, !4047, !4048}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3969, file: !6, line: 375, baseType: !3972, size: 72)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !101, line: 349, size: 72, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3972, file: !101, line: 350, baseType: !1355, size: 8)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3972, file: !101, line: 351, baseType: !1355, size: 8, offset: 8)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3972, file: !101, line: 353, baseType: !3858, size: 16, offset: 16)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3972, file: !101, line: 354, baseType: !1355, size: 8, offset: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3972, file: !101, line: 355, baseType: !1355, size: 8, offset: 40)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3972, file: !101, line: 356, baseType: !1355, size: 8, offset: 48)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3972, file: !101, line: 357, baseType: !1355, size: 8, offset: 56)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3972, file: !101, line: 358, baseType: !1355, size: 8, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3969, file: !6, line: 377, baseType: !280, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3969, file: !6, line: 381, baseType: !3984, size: 1024, offset: 192)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3985, size: 1024, elements: !190)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !101, line: 783, size: 64, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3986, file: !101, line: 784, baseType: !1355, size: 8)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3986, file: !101, line: 785, baseType: !1355, size: 8, offset: 8)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3986, file: !101, line: 787, baseType: !1355, size: 8, offset: 16)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3986, file: !101, line: 788, baseType: !1355, size: 8, offset: 24)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3986, file: !101, line: 789, baseType: !1355, size: 8, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3986, file: !101, line: 790, baseType: !1355, size: 8, offset: 40)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3986, file: !101, line: 791, baseType: !1355, size: 8, offset: 48)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3986, file: !101, line: 792, baseType: !1355, size: 8, offset: 56)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3969, file: !6, line: 385, baseType: !3997, size: 2048, offset: 1216)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3998, size: 2048, elements: !2228)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !4000)
!4000 = !{!4001, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3999, file: !6, line: 235, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !4004)
!4004 = !{!4005, !4017, !4018, !4019, !4021}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4003, file: !6, line: 83, baseType: !4006, size: 72)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !101, line: 389, size: 72, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4006, file: !101, line: 390, baseType: !1355, size: 8)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4006, file: !101, line: 391, baseType: !1355, size: 8, offset: 8)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4006, file: !101, line: 393, baseType: !1355, size: 8, offset: 16)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4006, file: !101, line: 394, baseType: !1355, size: 8, offset: 24)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4006, file: !101, line: 395, baseType: !1355, size: 8, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4006, file: !101, line: 396, baseType: !1355, size: 8, offset: 40)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4006, file: !101, line: 397, baseType: !1355, size: 8, offset: 48)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4006, file: !101, line: 398, baseType: !1355, size: 8, offset: 56)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4006, file: !101, line: 399, baseType: !1355, size: 8, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4003, file: !6, line: 85, baseType: !186, size: 32, offset: 96)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4003, file: !6, line: 86, baseType: !3884, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4003, file: !6, line: 91, baseType: !4020, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4003, file: !6, line: 93, baseType: !280, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3999, file: !6, line: 237, baseType: !4002, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3999, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3999, file: !6, line: 243, baseType: !3985, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3999, file: !6, line: 245, baseType: !186, size: 32, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3999, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3999, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3999, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3999, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3999, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3999, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3999, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3999, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3999, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3999, file: !6, line: 257, baseType: !216, size: 5568, offset: 384)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3999, file: !6, line: 258, baseType: !215, size: 64, offset: 5952)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3999, file: !6, line: 259, baseType: !1955, size: 256, offset: 6016)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3969, file: !6, line: 389, baseType: !4039, size: 2048, offset: 3264)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4040, size: 2048, elements: !2228)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4042)
!4042 = !{!4043, !4044, !4045}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4041, file: !6, line: 323, baseType: !7, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4041, file: !6, line: 324, baseType: !3369, size: 32, offset: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4041, file: !6, line: 328, baseType: !4046, offset: 64)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4003, elements: !2329)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3969, file: !6, line: 391, baseType: !3884, size: 64, offset: 5312)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3969, file: !6, line: 392, baseType: !186, size: 32, offset: 5376)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !183, file: !6, line: 655, baseType: !3968, size: 64, offset: 7168)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !183, file: !6, line: 656, baseType: !4051, size: 1024, offset: 7232)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4020, size: 1024, elements: !190)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !183, file: !6, line: 657, baseType: !4051, size: 1024, offset: 8256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !183, file: !6, line: 659, baseType: !4054, size: 64, offset: 9280)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !183, file: !6, line: 661, baseType: !322, size: 16, offset: 9344)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !183, file: !6, line: 662, baseType: !1354, size: 8, offset: 9360)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !183, file: !6, line: 663, baseType: !1354, size: 8, offset: 9368)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !183, file: !6, line: 664, baseType: !1354, size: 8, offset: 9376)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !183, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !183, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !183, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !183, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !183, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !183, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !183, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !183, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !183, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !183, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !183, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !183, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !183, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !183, file: !6, line: 679, baseType: !186, size: 32, offset: 9408)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !183, file: !6, line: 682, baseType: !280, size: 64, offset: 9472)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !183, file: !6, line: 683, baseType: !280, size: 64, offset: 9536)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !183, file: !6, line: 684, baseType: !280, size: 64, offset: 9600)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !183, file: !6, line: 686, baseType: !226, size: 128, offset: 9664)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !183, file: !6, line: 688, baseType: !186, size: 32, offset: 9792)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !183, file: !6, line: 690, baseType: !193, size: 32, offset: 9824)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !183, file: !6, line: 691, baseType: !749, size: 32, offset: 9856)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !183, file: !6, line: 693, baseType: !330, size: 64, offset: 9920)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !183, file: !6, line: 696, baseType: !330, size: 64, offset: 9984)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !183, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !183, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !183, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !183, file: !6, line: 702, baseType: !4086, size: 64, offset: 10112)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !183, file: !6, line: 703, baseType: !186, size: 32, offset: 10176)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !183, file: !6, line: 704, baseType: !121, size: 32, offset: 10208)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !183, file: !6, line: 705, baseType: !4091, size: 64, offset: 10240)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4092)
!4092 = !{!4093, !4094}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4091, file: !6, line: 506, baseType: !7, size: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4091, file: !6, line: 512, baseType: !186, size: 32, offset: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !183, file: !6, line: 706, baseType: !4096, size: 128, offset: 10304)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4097)
!4097 = !{!4098, !4099, !4100, !4101}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4096, file: !6, line: 529, baseType: !7, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4096, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4096, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4096, file: !6, line: 551, baseType: !186, size: 32, offset: 96)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !183, file: !6, line: 707, baseType: !4096, size: 128, offset: 10432)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !183, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !183, file: !6, line: 710, baseType: !861, size: 16, offset: 10592)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !183, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4106 = !{!0, !4107, !4112, !4117, !4122, !4127, !4132, !4193, !4198}
!4107 = !DIGlobalVariableExpression(var: !4108, expr: !DIExpression())
!4108 = distinct !DIGlobalVariable(name: "__exitcall_iguanair_driver_exit", scope: !2, file: !3, line: 565, type: !4109, isLocal: true, isDefinition: true)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4110, line: 117, baseType: !4111)
!4110 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!4112 = !DIGlobalVariableExpression(var: !4113, expr: !DIExpression())
!4113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description240", scope: !2, file: !3, line: 567, type: !4114, isLocal: true, isDefinition: true, align: 8)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 416, elements: !4115)
!4115 = !{!4116}
!4116 = !DISubrange(count: 52)
!4117 = !DIGlobalVariableExpression(var: !4118, expr: !DIExpression())
!4118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author241", scope: !2, file: !3, line: 568, type: !4119, isLocal: true, isDefinition: true, align: 8)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 344, elements: !4120)
!4120 = !{!4121}
!4121 = !DISubrange(count: 43)
!4122 = !DIGlobalVariableExpression(var: !4123, expr: !DIExpression())
!4123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file242", scope: !2, file: !3, line: 569, type: !4124, isLocal: true, isDefinition: true, align: 8)
!4124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 320, elements: !4125)
!4125 = !{!4126}
!4126 = !DISubrange(count: 40)
!4127 = !DIGlobalVariableExpression(var: !4128, expr: !DIExpression())
!4128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license243", scope: !2, file: !3, line: 569, type: !4129, isLocal: true, isDefinition: true, align: 8)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 168, elements: !4130)
!4130 = !{!4131}
!4131 = !DISubrange(count: 21)
!4132 = !DIGlobalVariableExpression(var: !4133, expr: !DIExpression())
!4133 = distinct !DIGlobalVariable(name: "iguanair_driver", scope: !2, file: !3, line: 554, type: !4134, isLocal: true, isDefinition: true)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4135)
!4135 = !{!4136, !4137, !4158, !4162, !4166, !4170, !4174, !4175, !4176, !4177, !4178, !4179, !4184, !4189, !4190, !4191, !4192}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4134, file: !6, line: 1185, baseType: !223, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4134, file: !6, line: 1187, baseType: !4138, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!186, !3998, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4143)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3462, line: 121, size: 256, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4143, file: !3462, line: 123, baseType: !862, size: 16)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4143, file: !3462, line: 126, baseType: !862, size: 16, offset: 16)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4143, file: !3462, line: 127, baseType: !862, size: 16, offset: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4143, file: !3462, line: 128, baseType: !862, size: 16, offset: 48)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4143, file: !3462, line: 129, baseType: !862, size: 16, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4143, file: !3462, line: 132, baseType: !1355, size: 8, offset: 80)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4143, file: !3462, line: 133, baseType: !1355, size: 8, offset: 88)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4143, file: !3462, line: 134, baseType: !1355, size: 8, offset: 96)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4143, file: !3462, line: 137, baseType: !1355, size: 8, offset: 104)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4143, file: !3462, line: 138, baseType: !1355, size: 8, offset: 112)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4143, file: !3462, line: 139, baseType: !1355, size: 8, offset: 120)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4143, file: !3462, line: 142, baseType: !1355, size: 8, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4143, file: !3462, line: 145, baseType: !3481, size: 64, align: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4134, file: !6, line: 1190, baseType: !4159, size: 64, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !3998}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4134, file: !6, line: 1192, baseType: !4163, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!186, !3998, !7, !181}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4134, file: !6, line: 1195, baseType: !4167, size: 64, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!186, !3998, !3492}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4134, file: !6, line: 1196, baseType: !4171, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!186, !3998}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4134, file: !6, line: 1197, baseType: !4171, size: 64, offset: 384)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4134, file: !6, line: 1199, baseType: !4171, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4134, file: !6, line: 1200, baseType: !4171, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4134, file: !6, line: 1202, baseType: !4141, size: 64, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4134, file: !6, line: 1203, baseType: !334, size: 64, offset: 640)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4134, file: !6, line: 1205, baseType: !4180, size: 128, offset: 704)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4181)
!4181 = !{!4182, !4183}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4180, file: !6, line: 1092, baseType: !239)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4180, file: !6, line: 1093, baseType: !226, size: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4134, file: !6, line: 1206, baseType: !4185, size: 1216, offset: 832)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4186)
!4186 = !{!4187, !4188}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4185, file: !6, line: 1114, baseType: !3450, size: 1152)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4185, file: !6, line: 1115, baseType: !186, size: 32, offset: 1152)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4134, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4134, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4134, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4134, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4193 = !DIGlobalVariableExpression(var: !4194, expr: !DIExpression())
!4194 = distinct !DIGlobalVariable(name: "__key", scope: !4195, file: !1505, line: 88, type: !647, isLocal: true, isDefinition: true)
!4195 = distinct !DISubprogram(name: "__init_completion", scope: !1505, file: !1505, line: 85, type: !4196, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !1503}
!4198 = !DIGlobalVariableExpression(var: !4199, expr: !DIExpression())
!4199 = distinct !DIGlobalVariable(name: "iguanair_table", scope: !2, file: !3, line: 549, type: !4200, isLocal: true, isDefinition: true)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4142, size: 512, elements: !207)
!4201 = !{i32 7, !"Dwarf Version", i32 4}
!4202 = !{i32 2, !"Debug Info Version", i32 3}
!4203 = !{i32 1, !"wchar_size", i32 2}
!4204 = !{i32 1, !"Code Model", i32 2}
!4205 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4206 = distinct !DISubprogram(name: "iguanair_driver_init", scope: !3, file: !3, line: 565, type: !4207, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!186}
!4209 = !DILocation(line: 565, column: 1, scope: !4206)
!4210 = distinct !DISubprogram(name: "iguanair_driver_exit", scope: !3, file: !3, line: 565, type: !1876, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4211 = !DILocation(line: 565, column: 1, scope: !4210)
!4212 = distinct !DISubprogram(name: "iguanair_probe", scope: !3, file: !3, line: 386, type: !4139, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4213 = !DILocalVariable(name: "intf", arg: 1, scope: !4212, file: !3, line: 386, type: !3998)
!4214 = !DILocation(line: 386, column: 49, scope: !4212)
!4215 = !DILocalVariable(name: "id", arg: 2, scope: !4212, file: !3, line: 387, type: !4141)
!4216 = !DILocation(line: 387, column: 34, scope: !4212)
!4217 = !DILocalVariable(name: "udev", scope: !4212, file: !3, line: 389, type: !182)
!4218 = !DILocation(line: 389, column: 21, scope: !4212)
!4219 = !DILocation(line: 389, column: 48, scope: !4212)
!4220 = !DILocation(line: 389, column: 28, scope: !4212)
!4221 = !DILocalVariable(name: "ir", scope: !4212, file: !3, line: 390, type: !4222)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iguanair", file: !3, line: 19, size: 1920, elements: !4224)
!4224 = !{!4225, !4612, !4613, !4614, !4616, !4618, !4619, !4620, !4621, !4622, !4624, !4686, !4687, !4688, !4689, !4690, !4706, !4708}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !4223, file: !3, line: 20, baseType: !4226, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !158, line: 162, size: 9536, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4235, !4236, !4237, !4245, !4246, !4247, !4263, !4264, !4265, !4268, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4571, !4575, !4579, !4583, !4584, !4585, !4589, !4593, !4597, !4601, !4602, !4607, !4608}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4227, file: !158, line: 163, baseType: !216, size: 5568)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !4227, file: !158, line: 164, baseType: !492, size: 8, offset: 5568)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !4227, file: !158, line: 165, baseType: !4232, size: 320, offset: 5632)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 320, elements: !4233)
!4233 = !{!4234}
!4234 = !DISubrange(count: 5)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4227, file: !158, line: 166, baseType: !223, size: 64, offset: 5952)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !4227, file: !158, line: 167, baseType: !223, size: 64, offset: 6016)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !4227, file: !158, line: 168, baseType: !4238, size: 64, offset: 6080)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4239, line: 59, size: 64, elements: !4240)
!4239 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4240 = !{!4241, !4242, !4243, !4244}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4238, file: !4239, line: 60, baseType: !862, size: 16)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4238, file: !4239, line: 61, baseType: !862, size: 16, offset: 16)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4238, file: !4239, line: 62, baseType: !862, size: 16, offset: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4238, file: !4239, line: 63, baseType: !862, size: 16, offset: 48)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4227, file: !158, line: 169, baseType: !223, size: 64, offset: 6144)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !4227, file: !158, line: 170, baseType: !223, size: 64, offset: 6208)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !4227, file: !158, line: 171, baseType: !4248, size: 256, offset: 6272)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !4249, line: 157, size: 256, elements: !4250)
!4249 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!4250 = !{!4251, !4257, !4258, !4259, !4260, !4261, !4262}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4248, file: !4249, line: 158, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !4249, line: 140, size: 128, elements: !4254)
!4254 = !{!4255, !4256}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4253, file: !4249, line: 141, baseType: !423, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4253, file: !4249, line: 142, baseType: !193, size: 32, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4248, file: !4249, line: 159, baseType: !7, size: 32, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4248, file: !4249, line: 160, baseType: !7, size: 32, offset: 96)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4248, file: !4249, line: 161, baseType: !7, size: 32, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !4248, file: !4249, line: 162, baseType: !126, size: 32, offset: 160)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4248, file: !4249, line: 163, baseType: !223, size: 64, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4248, file: !4249, line: 164, baseType: !239, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4227, file: !158, line: 172, baseType: !1175, size: 192, offset: 6528)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4227, file: !158, line: 173, baseType: !7, size: 32, offset: 6720)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4227, file: !158, line: 174, baseType: !4266, size: 64, offset: 6784)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !158, line: 174, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4227, file: !158, line: 175, baseType: !4269, size: 64, offset: 6848)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4271, line: 131, size: 10432, elements: !4272)
!4271 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4306, !4311, !4406, !4409, !4410, !4411, !4413, !4416, !4426, !4427, !4428, !4429, !4430, !4434, !4438, !4442, !4446, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4533, !4534}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4270, file: !4271, line: 132, baseType: !223, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4270, file: !4271, line: 133, baseType: !223, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4270, file: !4271, line: 134, baseType: !223, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4270, file: !4271, line: 135, baseType: !4238, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4270, file: !4271, line: 137, baseType: !1372, size: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4270, file: !4271, line: 139, baseType: !1372, size: 64, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4270, file: !4271, line: 140, baseType: !4280, size: 768, offset: 384)
!4280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 768, elements: !2234)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4270, file: !4271, line: 141, baseType: !1372, size: 64, offset: 1152)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4270, file: !4271, line: 142, baseType: !1372, size: 64, offset: 1216)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4270, file: !4271, line: 143, baseType: !1372, size: 64, offset: 1280)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4270, file: !4271, line: 144, baseType: !1372, size: 64, offset: 1344)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4270, file: !4271, line: 145, baseType: !1372, size: 64, offset: 1408)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4270, file: !4271, line: 146, baseType: !3840, size: 128, offset: 1472)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4270, file: !4271, line: 147, baseType: !1372, size: 64, offset: 1600)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4270, file: !4271, line: 149, baseType: !7, size: 32, offset: 1664)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4270, file: !4271, line: 151, baseType: !7, size: 32, offset: 1696)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4270, file: !4271, line: 152, baseType: !7, size: 32, offset: 1728)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4270, file: !4271, line: 153, baseType: !181, size: 64, offset: 1792)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4270, file: !4271, line: 155, baseType: !4293, size: 64, offset: 1856)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!186, !4269, !4296, !2681}
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4298)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4239, line: 114, size: 320, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4303, !4304}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4298, file: !4239, line: 116, baseType: !1355, size: 8)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4298, file: !4239, line: 117, baseType: !1355, size: 8, offset: 8)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4298, file: !4239, line: 118, baseType: !862, size: 16, offset: 16)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4298, file: !4239, line: 119, baseType: !195, size: 32, offset: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4298, file: !4239, line: 120, baseType: !4305, size: 256, offset: 64)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !2228)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4270, file: !4271, line: 158, baseType: !4307, size: 64, offset: 1920)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!186, !4269, !4310}
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4270, file: !4271, line: 161, baseType: !4312, size: 64, offset: 1984)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4271, line: 534, size: 896, elements: !4314)
!4314 = !{!4315, !4382, !4386, !4390, !4394, !4395, !4399, !4400, !4401, !4402, !4403, !4404}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4313, file: !4271, line: 535, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!186, !4269, !4319, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4239, line: 450, size: 384, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4325, !4330, !4335}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4320, file: !4239, line: 451, baseType: !862, size: 16)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4320, file: !4239, line: 452, baseType: !1206, size: 16, offset: 16)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4320, file: !4239, line: 453, baseType: !862, size: 16, offset: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4320, file: !4239, line: 454, baseType: !4326, size: 32, offset: 48)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4239, line: 316, size: 32, elements: !4327)
!4327 = !{!4328, !4329}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4326, file: !4239, line: 317, baseType: !862, size: 16)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4326, file: !4239, line: 318, baseType: !862, size: 16, offset: 16)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4320, file: !4239, line: 455, baseType: !4331, size: 32, offset: 80)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4239, line: 306, size: 32, elements: !4332)
!4332 = !{!4333, !4334}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4331, file: !4239, line: 307, baseType: !862, size: 16)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4331, file: !4239, line: 308, baseType: !862, size: 16, offset: 16)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4320, file: !4239, line: 463, baseType: !4336, size: 256, offset: 128)
!4336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !4239, line: 457, size: 256, elements: !4337)
!4337 = !{!4338, !4349, !4355, !4367, !4377}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4336, file: !4239, line: 458, baseType: !4339, size: 80)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4239, line: 345, size: 80, elements: !4340)
!4340 = !{!4341, !4342}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4339, file: !4239, line: 346, baseType: !1206, size: 16)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4339, file: !4239, line: 347, baseType: !4343, size: 64, offset: 16)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4239, line: 333, size: 64, elements: !4344)
!4344 = !{!4345, !4346, !4347, !4348}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4343, file: !4239, line: 334, baseType: !862, size: 16)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4343, file: !4239, line: 335, baseType: !862, size: 16, offset: 16)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4343, file: !4239, line: 336, baseType: !862, size: 16, offset: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4343, file: !4239, line: 337, baseType: !862, size: 16, offset: 48)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4336, file: !4239, line: 459, baseType: !4350, size: 96)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4239, line: 356, size: 96, elements: !4351)
!4351 = !{!4352, !4353, !4354}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4350, file: !4239, line: 357, baseType: !1206, size: 16)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4350, file: !4239, line: 358, baseType: !1206, size: 16, offset: 16)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4350, file: !4239, line: 359, baseType: !4343, size: 64, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4336, file: !4239, line: 460, baseType: !4356, size: 256)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4239, line: 401, size: 256, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4356, file: !4239, line: 402, baseType: !862, size: 16)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4356, file: !4239, line: 403, baseType: !862, size: 16, offset: 16)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4356, file: !4239, line: 404, baseType: !1206, size: 16, offset: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4356, file: !4239, line: 405, baseType: !1206, size: 16, offset: 48)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4356, file: !4239, line: 406, baseType: !862, size: 16, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4356, file: !4239, line: 408, baseType: !4343, size: 64, offset: 80)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4356, file: !4239, line: 410, baseType: !195, size: 32, offset: 160)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4356, file: !4239, line: 411, baseType: !4366, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4336, file: !4239, line: 461, baseType: !4368, size: 192)
!4368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4369, size: 192, elements: !207)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4239, line: 372, size: 96, elements: !4370)
!4370 = !{!4371, !4372, !4373, !4374, !4375, !4376}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4369, file: !4239, line: 373, baseType: !862, size: 16)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4369, file: !4239, line: 374, baseType: !862, size: 16, offset: 16)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4369, file: !4239, line: 376, baseType: !1206, size: 16, offset: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4369, file: !4239, line: 377, baseType: !1206, size: 16, offset: 48)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4369, file: !4239, line: 379, baseType: !862, size: 16, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4369, file: !4239, line: 380, baseType: !1206, size: 16, offset: 80)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4336, file: !4239, line: 462, baseType: !4378, size: 32)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4239, line: 422, size: 32, elements: !4379)
!4379 = !{!4380, !4381}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4378, file: !4239, line: 423, baseType: !862, size: 16)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4378, file: !4239, line: 424, baseType: !862, size: 16, offset: 16)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4313, file: !4271, line: 537, baseType: !4383, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!186, !4269, !186}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4313, file: !4271, line: 539, baseType: !4387, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!186, !4269, !186, !186}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4313, file: !4271, line: 540, baseType: !4391, size: 64, offset: 192)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{null, !4269, !861}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4313, file: !4271, line: 541, baseType: !4391, size: 64, offset: 256)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4313, file: !4271, line: 543, baseType: !4396, size: 64, offset: 320)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !4312}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4313, file: !4271, line: 545, baseType: !181, size: 64, offset: 384)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4313, file: !4271, line: 547, baseType: !3840, size: 128, offset: 448)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4313, file: !4271, line: 549, baseType: !1175, size: 192, offset: 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4313, file: !4271, line: 551, baseType: !186, size: 32, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4313, file: !4271, line: 552, baseType: !4319, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4313, file: !4271, line: 553, baseType: !4405, offset: 896)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, elements: !2329)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4270, file: !4271, line: 163, baseType: !4407, size: 64, offset: 2048)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4271, line: 24, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4270, file: !4271, line: 165, baseType: !7, size: 32, offset: 2112)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4270, file: !4271, line: 166, baseType: !3569, size: 320, offset: 2176)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4270, file: !4271, line: 168, baseType: !4412, size: 64, offset: 2496)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 64, elements: !207)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4270, file: !4271, line: 170, baseType: !4414, size: 64, offset: 2560)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4271, line: 170, flags: DIFlagFwdDecl)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4270, file: !4271, line: 172, baseType: !4417, size: 64, offset: 2624)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4239, line: 90, size: 192, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4425}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4418, file: !4239, line: 91, baseType: !1447, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4418, file: !4239, line: 92, baseType: !1447, size: 32, offset: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4418, file: !4239, line: 93, baseType: !1447, size: 32, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4418, file: !4239, line: 94, baseType: !1447, size: 32, offset: 96)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4418, file: !4239, line: 95, baseType: !1447, size: 32, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4418, file: !4239, line: 96, baseType: !1447, size: 32, offset: 160)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4270, file: !4271, line: 174, baseType: !4280, size: 768, offset: 2688)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4270, file: !4271, line: 175, baseType: !1372, size: 64, offset: 3456)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4270, file: !4271, line: 176, baseType: !1372, size: 64, offset: 3520)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4270, file: !4271, line: 177, baseType: !1372, size: 64, offset: 3584)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4270, file: !4271, line: 179, baseType: !4431, size: 64, offset: 3648)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!186, !4269}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4270, file: !4271, line: 180, baseType: !4435, size: 64, offset: 3712)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !4269}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4270, file: !4271, line: 181, baseType: !4439, size: 64, offset: 3776)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!186, !4269, !358}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4270, file: !4271, line: 182, baseType: !4443, size: 64, offset: 3840)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!186, !4269, !7, !7, !186}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4270, file: !4271, line: 184, baseType: !4447, size: 64, offset: 3904)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4271, line: 337, size: 576, elements: !4449)
!4449 = !{!4450, !4451, !4452, !4453, !4454, !4520, !4521}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4448, file: !4271, line: 339, baseType: !181, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4448, file: !4271, line: 341, baseType: !186, size: 32, offset: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4448, file: !4271, line: 342, baseType: !223, size: 64, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4448, file: !4271, line: 344, baseType: !4269, size: 64, offset: 192)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4448, file: !4271, line: 345, baseType: !4455, size: 64, offset: 256)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4271, line: 302, size: 960, elements: !4457)
!4457 = !{!4458, !4459, !4463, !4474, !4478, !4482, !4509, !4513, !4514, !4515, !4516, !4517, !4518, !4519}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4456, file: !4271, line: 304, baseType: !181, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4456, file: !4271, line: 306, baseType: !4460, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{null, !4447, !7, !7, !186}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4456, file: !4271, line: 307, baseType: !4464, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !4447, !4467, !7}
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4469)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4271, line: 32, size: 64, elements: !4470)
!4470 = !{!4471, !4472, !4473}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4469, file: !4271, line: 33, baseType: !862, size: 16)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4469, file: !4271, line: 34, baseType: !862, size: 16, offset: 16)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4469, file: !4271, line: 35, baseType: !1447, size: 32, offset: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4456, file: !4271, line: 309, baseType: !4475, size: 64, offset: 192)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!492, !4447, !7, !7, !186}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4456, file: !4271, line: 310, baseType: !4479, size: 64, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!492, !4455, !4269}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4456, file: !4271, line: 311, baseType: !4483, size: 64, offset: 320)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!186, !4455, !4269, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4488)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3462, line: 342, size: 1600, elements: !4489)
!4489 = !{!4490, !4491, !4492, !4493, !4494, !4495, !4497, !4499, !4500, !4501, !4502, !4503, !4504, !4506, !4507, !4508}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4488, file: !3462, line: 344, baseType: !3481, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4488, file: !3462, line: 346, baseType: !862, size: 16, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4488, file: !3462, line: 347, baseType: !862, size: 16, offset: 80)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4488, file: !3462, line: 348, baseType: !862, size: 16, offset: 96)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4488, file: !3462, line: 349, baseType: !862, size: 16, offset: 112)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4488, file: !3462, line: 351, baseType: !4496, size: 64, offset: 128)
!4496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3481, size: 64, elements: !1373)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4488, file: !3462, line: 352, baseType: !4498, size: 768, offset: 192)
!4498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3481, size: 768, elements: !2234)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4488, file: !3462, line: 353, baseType: !4496, size: 64, offset: 960)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4488, file: !3462, line: 354, baseType: !4496, size: 64, offset: 1024)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4488, file: !3462, line: 355, baseType: !4496, size: 64, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4488, file: !3462, line: 356, baseType: !4496, size: 64, offset: 1152)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4488, file: !3462, line: 357, baseType: !4496, size: 64, offset: 1216)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4488, file: !3462, line: 358, baseType: !4505, size: 128, offset: 1280)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3481, size: 128, elements: !207)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4488, file: !3462, line: 359, baseType: !4496, size: 64, offset: 1408)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4488, file: !3462, line: 360, baseType: !4496, size: 64, offset: 1472)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4488, file: !3462, line: 362, baseType: !3481, size: 64, offset: 1536)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4456, file: !4271, line: 312, baseType: !4510, size: 64, offset: 384)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !4447}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4456, file: !4271, line: 313, baseType: !4510, size: 64, offset: 448)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4456, file: !4271, line: 315, baseType: !492, size: 8, offset: 512)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4456, file: !4271, line: 316, baseType: !186, size: 32, offset: 544)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4456, file: !4271, line: 317, baseType: !223, size: 64, offset: 576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4456, file: !4271, line: 319, baseType: !4486, size: 64, offset: 640)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4456, file: !4271, line: 321, baseType: !226, size: 128, offset: 704)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4456, file: !4271, line: 322, baseType: !226, size: 128, offset: 832)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4448, file: !4271, line: 347, baseType: !226, size: 128, offset: 320)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4448, file: !4271, line: 348, baseType: !226, size: 128, offset: 448)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4270, file: !4271, line: 186, baseType: !239, offset: 3968)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4270, file: !4271, line: 187, baseType: !1175, size: 192, offset: 3968)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4270, file: !4271, line: 189, baseType: !7, size: 32, offset: 4160)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4270, file: !4271, line: 190, baseType: !492, size: 8, offset: 4192)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4270, file: !4271, line: 192, baseType: !216, size: 5568, offset: 4224)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4270, file: !4271, line: 194, baseType: !226, size: 128, offset: 9792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4270, file: !4271, line: 195, baseType: !226, size: 128, offset: 9920)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4270, file: !4271, line: 197, baseType: !7, size: 32, offset: 10048)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4270, file: !4271, line: 198, baseType: !7, size: 32, offset: 10080)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4270, file: !4271, line: 199, baseType: !4532, size: 64, offset: 10112)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4270, file: !4271, line: 201, baseType: !492, size: 8, offset: 10176)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4270, file: !4271, line: 203, baseType: !4535, size: 192, offset: 10240)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 192, elements: !281)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !4227, file: !158, line: 176, baseType: !157, size: 32, offset: 6912)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4227, file: !158, line: 177, baseType: !492, size: 8, offset: 6944)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !4227, file: !158, line: 178, baseType: !492, size: 8, offset: 6952)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !4227, file: !158, line: 179, baseType: !423, size: 64, offset: 6976)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !4227, file: !158, line: 180, baseType: !423, size: 64, offset: 7040)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !4227, file: !158, line: 181, baseType: !423, size: 64, offset: 7104)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !4227, file: !158, line: 182, baseType: !126, size: 32, offset: 7168)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !4227, file: !158, line: 183, baseType: !4544, size: 64, offset: 7200)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !158, line: 38, size: 64, elements: !4545)
!4545 = !{!4546, !4547}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4544, file: !158, line: 39, baseType: !193, size: 32)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4544, file: !158, line: 40, baseType: !193, size: 32, offset: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !4227, file: !158, line: 184, baseType: !4544, size: 64, offset: 7264)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !4227, file: !158, line: 185, baseType: !193, size: 32, offset: 7328)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4227, file: !158, line: 186, baseType: !193, size: 32, offset: 7360)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4227, file: !158, line: 187, baseType: !181, size: 64, offset: 7424)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !4227, file: !158, line: 188, baseType: !239, offset: 7488)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !4227, file: !158, line: 189, baseType: !492, size: 8, offset: 7488)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !4227, file: !158, line: 190, baseType: !330, size: 64, offset: 7552)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !4227, file: !158, line: 191, baseType: !3569, size: 320, offset: 7616)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !4227, file: !158, line: 192, baseType: !3569, size: 320, offset: 7936)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !4227, file: !158, line: 193, baseType: !193, size: 32, offset: 8256)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !4227, file: !158, line: 194, baseType: !126, size: 32, offset: 8288)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !4227, file: !158, line: 195, baseType: !423, size: 64, offset: 8320)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !4227, file: !158, line: 196, baseType: !1354, size: 8, offset: 8384)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4227, file: !158, line: 197, baseType: !193, size: 32, offset: 8416)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4227, file: !158, line: 198, baseType: !193, size: 32, offset: 8448)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4227, file: !158, line: 199, baseType: !193, size: 32, offset: 8480)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !4227, file: !158, line: 200, baseType: !193, size: 32, offset: 8512)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !4227, file: !158, line: 201, baseType: !193, size: 32, offset: 8544)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4227, file: !158, line: 211, baseType: !492, size: 8, offset: 8576)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !4227, file: !158, line: 212, baseType: !4568, size: 64, offset: 8640)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!186, !4226, !3665}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4227, file: !158, line: 213, baseType: !4572, size: 64, offset: 8704)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!186, !4226}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4227, file: !158, line: 214, baseType: !4576, size: 64, offset: 8768)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !4226}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !4227, file: !158, line: 215, baseType: !4580, size: 64, offset: 8832)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!186, !4226, !193}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !4227, file: !158, line: 216, baseType: !4580, size: 64, offset: 8896)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !4227, file: !158, line: 217, baseType: !4580, size: 64, offset: 8960)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !4227, file: !158, line: 218, baseType: !4586, size: 64, offset: 9024)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!186, !4226, !193, !193}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !4227, file: !158, line: 219, baseType: !4590, size: 64, offset: 9088)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!186, !4226, !2681, !7}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !4227, file: !158, line: 220, baseType: !4594, size: 64, offset: 9152)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{null, !4226, !492}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !4227, file: !158, line: 221, baseType: !4598, size: 64, offset: 9216)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!186, !4226, !186}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !4227, file: !158, line: 222, baseType: !4598, size: 64, offset: 9280)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !4227, file: !158, line: 223, baseType: !4603, size: 64, offset: 9344)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!186, !4226, !4606}
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !4227, file: !158, line: 225, baseType: !4603, size: 64, offset: 9408)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !4227, file: !158, line: 227, baseType: !4609, size: 64, offset: 9472)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!186, !4226, !7}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4223, file: !3, line: 22, baseType: !215, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !4223, file: !3, line: 23, baseType: !182, size: 64, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4223, file: !3, line: 25, baseType: !4615, size: 16, offset: 192)
!4615 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !180, line: 103, baseType: !861)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !4223, file: !3, line: 26, baseType: !4617, size: 8, offset: 208)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !180, line: 102, baseType: !1354)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_overhead", scope: !4223, file: !3, line: 27, baseType: !4617, size: 8, offset: 216)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "receiver_on", scope: !4223, file: !3, line: 30, baseType: !492, size: 8, offset: 224)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "dma_in", scope: !4223, file: !3, line: 31, baseType: !922, size: 64, offset: 256)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_out", scope: !4223, file: !3, line: 31, baseType: !922, size: 64, offset: 320)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "buf_in", scope: !4223, file: !3, line: 32, baseType: !4623, size: 64, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "urb_in", scope: !4223, file: !3, line: 33, baseType: !4625, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4627)
!4627 = !{!4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4678}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4626, file: !6, line: 1563, baseType: !3369, size: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4626, file: !6, line: 1564, baseType: !186, size: 32, offset: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4626, file: !6, line: 1565, baseType: !181, size: 64, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4626, file: !6, line: 1566, baseType: !749, size: 32, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4626, file: !6, line: 1567, baseType: !749, size: 32, offset: 160)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4626, file: !6, line: 1570, baseType: !226, size: 128, offset: 192)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4626, file: !6, line: 1572, baseType: !226, size: 128, offset: 320)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4626, file: !6, line: 1573, baseType: !4636, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4642, !4643}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4637, file: !6, line: 1361, baseType: !226, size: 128)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4637, file: !6, line: 1362, baseType: !1483, size: 128, offset: 128)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4637, file: !6, line: 1363, baseType: !239, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4637, file: !6, line: 1364, baseType: !749, size: 32, offset: 256)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4637, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4626, file: !6, line: 1574, baseType: !182, size: 64, offset: 512)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4626, file: !6, line: 1575, baseType: !4020, size: 64, offset: 576)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4626, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4626, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4626, file: !6, line: 1578, baseType: !186, size: 32, offset: 704)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4626, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4626, file: !6, line: 1580, baseType: !181, size: 64, offset: 768)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4626, file: !6, line: 1581, baseType: !922, size: 64, offset: 832)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4626, file: !6, line: 1582, baseType: !4653, size: 64, offset: 896)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4655, line: 11, size: 256, elements: !4656)
!4655 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4656 = !{!4657, !4658, !4659, !4660, !4661}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4654, file: !4655, line: 12, baseType: !330, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4654, file: !4655, line: 13, baseType: !7, size: 32, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4654, file: !4655, line: 14, baseType: !7, size: 32, offset: 96)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4654, file: !4655, line: 15, baseType: !922, size: 64, offset: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4654, file: !4655, line: 17, baseType: !7, size: 32, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4626, file: !6, line: 1583, baseType: !186, size: 32, offset: 960)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4626, file: !6, line: 1584, baseType: !186, size: 32, offset: 992)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4626, file: !6, line: 1585, baseType: !193, size: 32, offset: 1024)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4626, file: !6, line: 1586, baseType: !193, size: 32, offset: 1056)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4626, file: !6, line: 1587, baseType: !3884, size: 64, offset: 1088)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4626, file: !6, line: 1588, baseType: !922, size: 64, offset: 1152)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4626, file: !6, line: 1589, baseType: !186, size: 32, offset: 1216)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4626, file: !6, line: 1590, baseType: !186, size: 32, offset: 1248)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4626, file: !6, line: 1591, baseType: !186, size: 32, offset: 1280)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4626, file: !6, line: 1593, baseType: !186, size: 32, offset: 1312)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4626, file: !6, line: 1594, baseType: !181, size: 64, offset: 1344)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4626, file: !6, line: 1595, baseType: !4674, size: 64, offset: 1408)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4675)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{null, !4625}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4626, file: !6, line: 1596, baseType: !4679, offset: 1472)
!4679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4680, elements: !2329)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4681)
!4681 = !{!4682, !4683, !4684, !4685}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4680, file: !6, line: 1352, baseType: !7, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4680, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4680, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4680, file: !6, line: 1355, baseType: !186, size: 32, offset: 96)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "urb_out", scope: !4223, file: !3, line: 33, baseType: !4625, size: 64, offset: 512)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4223, file: !3, line: 34, baseType: !1504, size: 192, offset: 576)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "tx_overflow", scope: !4223, file: !3, line: 37, baseType: !492, size: 8, offset: 768)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !4223, file: !3, line: 38, baseType: !561, size: 32, offset: 800)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !4223, file: !3, line: 39, baseType: !4691, size: 64, offset: 832)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "send_packet", file: !3, line: 70, size: 64, elements: !4693)
!4693 = !{!4694, !4700, !4701, !4702, !4703, !4704}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4692, file: !3, line: 71, baseType: !4695, size: 32)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet", file: !3, line: 64, size: 32, elements: !4696)
!4696 = !{!4697, !4698, !4699}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4695, file: !3, line: 65, baseType: !4615, size: 16)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4695, file: !3, line: 66, baseType: !4617, size: 8, offset: 16)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4695, file: !3, line: 67, baseType: !4617, size: 8, offset: 24)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4692, file: !3, line: 72, baseType: !4617, size: 8, offset: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !4692, file: !3, line: 73, baseType: !4617, size: 8, offset: 40)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "busy7", scope: !4692, file: !3, line: 74, baseType: !4617, size: 8, offset: 48)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "busy4", scope: !4692, file: !3, line: 75, baseType: !4617, size: 8, offset: 56)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !4692, file: !3, line: 76, baseType: !4705, offset: 64)
!4705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4617, elements: !2329)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4223, file: !3, line: 41, baseType: !4707, size: 512, offset: 896)
!4707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 512, elements: !285)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4223, file: !3, line: 42, baseType: !4707, size: 512, offset: 1408)
!4709 = !DILocation(line: 390, column: 19, scope: !4212)
!4710 = !DILocalVariable(name: "rc", scope: !4212, file: !3, line: 391, type: !4226)
!4711 = !DILocation(line: 391, column: 17, scope: !4212)
!4712 = !DILocalVariable(name: "ret", scope: !4212, file: !3, line: 392, type: !186)
!4713 = !DILocation(line: 392, column: 6, scope: !4212)
!4714 = !DILocalVariable(name: "pipein", scope: !4212, file: !3, line: 392, type: !186)
!4715 = !DILocation(line: 392, column: 11, scope: !4212)
!4716 = !DILocalVariable(name: "pipeout", scope: !4212, file: !3, line: 392, type: !186)
!4717 = !DILocation(line: 392, column: 19, scope: !4212)
!4718 = !DILocalVariable(name: "idesc", scope: !4212, file: !3, line: 393, type: !4002)
!4719 = !DILocation(line: 393, column: 29, scope: !4212)
!4720 = !DILocation(line: 395, column: 10, scope: !4212)
!4721 = !DILocation(line: 395, column: 16, scope: !4212)
!4722 = !DILocation(line: 395, column: 8, scope: !4212)
!4723 = !DILocation(line: 396, column: 6, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 396, column: 6)
!4725 = !DILocation(line: 396, column: 13, scope: !4724)
!4726 = !DILocation(line: 396, column: 18, scope: !4724)
!4727 = !DILocation(line: 396, column: 32, scope: !4724)
!4728 = !DILocation(line: 396, column: 6, scope: !4212)
!4729 = !DILocation(line: 397, column: 3, scope: !4724)
!4730 = !DILocation(line: 399, column: 7, scope: !4212)
!4731 = !DILocation(line: 399, column: 5, scope: !4212)
!4732 = !DILocation(line: 400, column: 7, scope: !4212)
!4733 = !DILocation(line: 400, column: 5, scope: !4212)
!4734 = !DILocation(line: 401, column: 7, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 401, column: 6)
!4736 = !DILocation(line: 401, column: 10, scope: !4735)
!4737 = !DILocation(line: 401, column: 14, scope: !4735)
!4738 = !DILocation(line: 401, column: 6, scope: !4212)
!4739 = !DILocation(line: 402, column: 7, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 401, column: 18)
!4741 = !DILocation(line: 403, column: 3, scope: !4740)
!4742 = !DILocation(line: 406, column: 34, scope: !4212)
!4743 = !DILocation(line: 407, column: 10, scope: !4212)
!4744 = !DILocation(line: 407, column: 14, scope: !4212)
!4745 = !DILocation(line: 406, column: 15, scope: !4212)
!4746 = !DILocation(line: 406, column: 2, scope: !4212)
!4747 = !DILocation(line: 406, column: 6, scope: !4212)
!4748 = !DILocation(line: 406, column: 13, scope: !4212)
!4749 = !DILocation(line: 408, column: 34, scope: !4212)
!4750 = !DILocation(line: 409, column: 10, scope: !4212)
!4751 = !DILocation(line: 409, column: 14, scope: !4212)
!4752 = !DILocation(line: 408, column: 15, scope: !4212)
!4753 = !DILocation(line: 408, column: 2, scope: !4212)
!4754 = !DILocation(line: 408, column: 6, scope: !4212)
!4755 = !DILocation(line: 408, column: 13, scope: !4212)
!4756 = !DILocation(line: 410, column: 15, scope: !4212)
!4757 = !DILocation(line: 410, column: 2, scope: !4212)
!4758 = !DILocation(line: 410, column: 6, scope: !4212)
!4759 = !DILocation(line: 410, column: 13, scope: !4212)
!4760 = !DILocation(line: 411, column: 16, scope: !4212)
!4761 = !DILocation(line: 411, column: 2, scope: !4212)
!4762 = !DILocation(line: 411, column: 6, scope: !4212)
!4763 = !DILocation(line: 411, column: 14, scope: !4212)
!4764 = !DILocation(line: 413, column: 7, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 413, column: 6)
!4766 = !DILocation(line: 413, column: 11, scope: !4765)
!4767 = !DILocation(line: 413, column: 18, scope: !4765)
!4768 = !DILocation(line: 413, column: 22, scope: !4765)
!4769 = !DILocation(line: 413, column: 26, scope: !4765)
!4770 = !DILocation(line: 413, column: 33, scope: !4765)
!4771 = !DILocation(line: 413, column: 37, scope: !4765)
!4772 = !DILocation(line: 413, column: 41, scope: !4765)
!4773 = !DILocation(line: 413, column: 48, scope: !4765)
!4774 = !DILocation(line: 413, column: 52, scope: !4765)
!4775 = !DILocation(line: 413, column: 56, scope: !4765)
!4776 = !DILocation(line: 413, column: 64, scope: !4765)
!4777 = !DILocation(line: 414, column: 31, scope: !4765)
!4778 = !DILocation(line: 414, column: 38, scope: !4765)
!4779 = !DILocation(line: 414, column: 50, scope: !4765)
!4780 = !DILocation(line: 414, column: 7, scope: !4765)
!4781 = !DILocation(line: 414, column: 56, scope: !4765)
!4782 = !DILocation(line: 415, column: 32, scope: !4765)
!4783 = !DILocation(line: 415, column: 39, scope: !4765)
!4784 = !DILocation(line: 415, column: 51, scope: !4765)
!4785 = !DILocation(line: 415, column: 7, scope: !4765)
!4786 = !DILocation(line: 413, column: 6, scope: !4212)
!4787 = !DILocation(line: 416, column: 7, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 415, column: 58)
!4789 = !DILocation(line: 417, column: 3, scope: !4788)
!4790 = !DILocation(line: 420, column: 11, scope: !4212)
!4791 = !DILocation(line: 420, column: 2, scope: !4212)
!4792 = !DILocation(line: 420, column: 6, scope: !4212)
!4793 = !DILocation(line: 420, column: 9, scope: !4212)
!4794 = !DILocation(line: 421, column: 13, scope: !4212)
!4795 = !DILocation(line: 421, column: 19, scope: !4212)
!4796 = !DILocation(line: 421, column: 2, scope: !4212)
!4797 = !DILocation(line: 421, column: 6, scope: !4212)
!4798 = !DILocation(line: 421, column: 10, scope: !4212)
!4799 = !DILocation(line: 422, column: 13, scope: !4212)
!4800 = !DILocation(line: 422, column: 2, scope: !4212)
!4801 = !DILocation(line: 422, column: 6, scope: !4212)
!4802 = !DILocation(line: 422, column: 11, scope: !4212)
!4803 = !DILocation(line: 424, column: 2, scope: !4212)
!4804 = !DILocation(line: 425, column: 12, scope: !4212)
!4805 = !DILocation(line: 425, column: 10, scope: !4212)
!4806 = !DILocation(line: 427, column: 19, scope: !4212)
!4807 = !DILocation(line: 427, column: 23, scope: !4212)
!4808 = !DILocation(line: 427, column: 32, scope: !4212)
!4809 = !DILocation(line: 427, column: 38, scope: !4212)
!4810 = !DILocation(line: 427, column: 47, scope: !4212)
!4811 = !DILocation(line: 427, column: 51, scope: !4212)
!4812 = !DILocation(line: 428, column: 25, scope: !4212)
!4813 = !DILocation(line: 427, column: 2, scope: !4212)
!4814 = !DILocation(line: 429, column: 30, scope: !4212)
!4815 = !DILocation(line: 429, column: 34, scope: !4212)
!4816 = !DILocation(line: 429, column: 2, scope: !4212)
!4817 = !DILocation(line: 429, column: 6, scope: !4212)
!4818 = !DILocation(line: 429, column: 15, scope: !4212)
!4819 = !DILocation(line: 429, column: 28, scope: !4212)
!4820 = !DILocation(line: 430, column: 2, scope: !4212)
!4821 = !DILocation(line: 430, column: 6, scope: !4212)
!4822 = !DILocation(line: 430, column: 15, scope: !4212)
!4823 = !DILocation(line: 430, column: 30, scope: !4212)
!4824 = !DILocation(line: 432, column: 11, scope: !4212)
!4825 = !DILocation(line: 432, column: 9, scope: !4212)
!4826 = !DILocation(line: 433, column: 19, scope: !4212)
!4827 = !DILocation(line: 433, column: 23, scope: !4212)
!4828 = !DILocation(line: 433, column: 31, scope: !4212)
!4829 = !DILocation(line: 433, column: 37, scope: !4212)
!4830 = !DILocation(line: 433, column: 45, scope: !4212)
!4831 = !DILocation(line: 433, column: 49, scope: !4212)
!4832 = !DILocation(line: 434, column: 22, scope: !4212)
!4833 = !DILocation(line: 433, column: 2, scope: !4212)
!4834 = !DILocation(line: 435, column: 29, scope: !4212)
!4835 = !DILocation(line: 435, column: 33, scope: !4212)
!4836 = !DILocation(line: 435, column: 2, scope: !4212)
!4837 = !DILocation(line: 435, column: 6, scope: !4212)
!4838 = !DILocation(line: 435, column: 14, scope: !4212)
!4839 = !DILocation(line: 435, column: 27, scope: !4212)
!4840 = !DILocation(line: 436, column: 2, scope: !4212)
!4841 = !DILocation(line: 436, column: 6, scope: !4212)
!4842 = !DILocation(line: 436, column: 14, scope: !4212)
!4843 = !DILocation(line: 436, column: 29, scope: !4212)
!4844 = !DILocation(line: 438, column: 23, scope: !4212)
!4845 = !DILocation(line: 438, column: 27, scope: !4212)
!4846 = !DILocation(line: 438, column: 8, scope: !4212)
!4847 = !DILocation(line: 438, column: 6, scope: !4212)
!4848 = !DILocation(line: 439, column: 6, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 439, column: 6)
!4850 = !DILocation(line: 439, column: 6, scope: !4212)
!4851 = !DILocation(line: 440, column: 3, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 439, column: 11)
!4853 = !DILocation(line: 441, column: 3, scope: !4852)
!4854 = !DILocation(line: 444, column: 30, scope: !4212)
!4855 = !DILocation(line: 444, column: 8, scope: !4212)
!4856 = !DILocation(line: 444, column: 6, scope: !4212)
!4857 = !DILocation(line: 445, column: 6, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 445, column: 6)
!4859 = !DILocation(line: 445, column: 6, scope: !4212)
!4860 = !DILocation(line: 446, column: 3, scope: !4858)
!4861 = !DILocation(line: 448, column: 11, scope: !4212)
!4862 = !DILocation(line: 448, column: 15, scope: !4212)
!4863 = !DILocation(line: 449, column: 52, scope: !4212)
!4864 = !DILocation(line: 449, column: 56, scope: !4212)
!4865 = !DILocation(line: 448, column: 2, scope: !4212)
!4866 = !DILocation(line: 451, column: 16, scope: !4212)
!4867 = !DILocation(line: 451, column: 20, scope: !4212)
!4868 = !DILocation(line: 451, column: 26, scope: !4212)
!4869 = !DILocation(line: 451, column: 30, scope: !4212)
!4870 = !DILocation(line: 451, column: 2, scope: !4212)
!4871 = !DILocation(line: 453, column: 20, scope: !4212)
!4872 = !DILocation(line: 453, column: 24, scope: !4212)
!4873 = !DILocation(line: 453, column: 2, scope: !4212)
!4874 = !DILocation(line: 453, column: 6, scope: !4212)
!4875 = !DILocation(line: 453, column: 18, scope: !4212)
!4876 = !DILocation(line: 454, column: 19, scope: !4212)
!4877 = !DILocation(line: 454, column: 23, scope: !4212)
!4878 = !DILocation(line: 454, column: 2, scope: !4212)
!4879 = !DILocation(line: 454, column: 6, scope: !4212)
!4880 = !DILocation(line: 454, column: 17, scope: !4212)
!4881 = !DILocation(line: 455, column: 18, scope: !4212)
!4882 = !DILocation(line: 455, column: 22, scope: !4212)
!4883 = !DILocation(line: 455, column: 29, scope: !4212)
!4884 = !DILocation(line: 455, column: 33, scope: !4212)
!4885 = !DILocation(line: 455, column: 2, scope: !4212)
!4886 = !DILocation(line: 456, column: 20, scope: !4212)
!4887 = !DILocation(line: 456, column: 26, scope: !4212)
!4888 = !DILocation(line: 456, column: 2, scope: !4212)
!4889 = !DILocation(line: 456, column: 6, scope: !4212)
!4890 = !DILocation(line: 456, column: 10, scope: !4212)
!4891 = !DILocation(line: 456, column: 17, scope: !4212)
!4892 = !DILocation(line: 457, column: 2, scope: !4212)
!4893 = !DILocation(line: 457, column: 6, scope: !4212)
!4894 = !DILocation(line: 457, column: 24, scope: !4212)
!4895 = !DILocation(line: 458, column: 13, scope: !4212)
!4896 = !DILocation(line: 458, column: 2, scope: !4212)
!4897 = !DILocation(line: 458, column: 6, scope: !4212)
!4898 = !DILocation(line: 458, column: 11, scope: !4212)
!4899 = !DILocation(line: 459, column: 2, scope: !4212)
!4900 = !DILocation(line: 459, column: 6, scope: !4212)
!4901 = !DILocation(line: 459, column: 11, scope: !4212)
!4902 = !DILocation(line: 460, column: 2, scope: !4212)
!4903 = !DILocation(line: 460, column: 6, scope: !4212)
!4904 = !DILocation(line: 460, column: 12, scope: !4212)
!4905 = !DILocation(line: 461, column: 2, scope: !4212)
!4906 = !DILocation(line: 461, column: 6, scope: !4212)
!4907 = !DILocation(line: 461, column: 16, scope: !4212)
!4908 = !DILocation(line: 462, column: 2, scope: !4212)
!4909 = !DILocation(line: 462, column: 6, scope: !4212)
!4910 = !DILocation(line: 462, column: 19, scope: !4212)
!4911 = !DILocation(line: 463, column: 2, scope: !4212)
!4912 = !DILocation(line: 463, column: 6, scope: !4212)
!4913 = !DILocation(line: 463, column: 12, scope: !4212)
!4914 = !DILocation(line: 464, column: 2, scope: !4212)
!4915 = !DILocation(line: 464, column: 6, scope: !4212)
!4916 = !DILocation(line: 464, column: 18, scope: !4212)
!4917 = !DILocation(line: 465, column: 2, scope: !4212)
!4918 = !DILocation(line: 465, column: 6, scope: !4212)
!4919 = !DILocation(line: 465, column: 15, scope: !4212)
!4920 = !DILocation(line: 466, column: 2, scope: !4212)
!4921 = !DILocation(line: 466, column: 6, scope: !4212)
!4922 = !DILocation(line: 466, column: 18, scope: !4212)
!4923 = !DILocation(line: 467, column: 2, scope: !4212)
!4924 = !DILocation(line: 467, column: 6, scope: !4212)
!4925 = !DILocation(line: 467, column: 14, scope: !4212)
!4926 = !DILocation(line: 468, column: 2, scope: !4212)
!4927 = !DILocation(line: 468, column: 6, scope: !4212)
!4928 = !DILocation(line: 468, column: 18, scope: !4212)
!4929 = !DILocation(line: 469, column: 2, scope: !4212)
!4930 = !DILocation(line: 469, column: 6, scope: !4212)
!4931 = !DILocation(line: 469, column: 20, scope: !4212)
!4932 = !DILocation(line: 471, column: 26, scope: !4212)
!4933 = !DILocation(line: 471, column: 2, scope: !4212)
!4934 = !DILocation(line: 472, column: 23, scope: !4212)
!4935 = !DILocation(line: 472, column: 2, scope: !4212)
!4936 = !DILocation(line: 474, column: 27, scope: !4212)
!4937 = !DILocation(line: 474, column: 8, scope: !4212)
!4938 = !DILocation(line: 474, column: 6, scope: !4212)
!4939 = !DILocation(line: 475, column: 6, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 475, column: 6)
!4941 = !DILocation(line: 475, column: 10, scope: !4940)
!4942 = !DILocation(line: 475, column: 6, scope: !4212)
!4943 = !DILocation(line: 476, column: 3, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 475, column: 15)
!4945 = !DILocation(line: 477, column: 3, scope: !4944)
!4946 = !DILocation(line: 480, column: 19, scope: !4212)
!4947 = !DILocation(line: 480, column: 25, scope: !4212)
!4948 = !DILocation(line: 480, column: 2, scope: !4212)
!4949 = !DILocation(line: 482, column: 2, scope: !4212)
!4950 = !DILabel(scope: !4212, name: "out2", file: !3, line: 483)
!4951 = !DILocation(line: 483, column: 1, scope: !4212)
!4952 = !DILocation(line: 484, column: 15, scope: !4212)
!4953 = !DILocation(line: 484, column: 19, scope: !4212)
!4954 = !DILocation(line: 484, column: 2, scope: !4212)
!4955 = !DILocation(line: 485, column: 15, scope: !4212)
!4956 = !DILocation(line: 485, column: 19, scope: !4212)
!4957 = !DILocation(line: 485, column: 2, scope: !4212)
!4958 = !DILabel(scope: !4212, name: "out", file: !3, line: 486)
!4959 = !DILocation(line: 486, column: 1, scope: !4212)
!4960 = !DILocation(line: 487, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 487, column: 6)
!4962 = !DILocation(line: 487, column: 6, scope: !4212)
!4963 = !DILocation(line: 488, column: 16, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 487, column: 10)
!4965 = !DILocation(line: 488, column: 20, scope: !4964)
!4966 = !DILocation(line: 488, column: 3, scope: !4964)
!4967 = !DILocation(line: 489, column: 16, scope: !4964)
!4968 = !DILocation(line: 489, column: 20, scope: !4964)
!4969 = !DILocation(line: 489, column: 3, scope: !4964)
!4970 = !DILocation(line: 490, column: 21, scope: !4964)
!4971 = !DILocation(line: 490, column: 42, scope: !4964)
!4972 = !DILocation(line: 490, column: 46, scope: !4964)
!4973 = !DILocation(line: 490, column: 54, scope: !4964)
!4974 = !DILocation(line: 490, column: 58, scope: !4964)
!4975 = !DILocation(line: 490, column: 3, scope: !4964)
!4976 = !DILocation(line: 491, column: 21, scope: !4964)
!4977 = !DILocation(line: 491, column: 43, scope: !4964)
!4978 = !DILocation(line: 491, column: 47, scope: !4964)
!4979 = !DILocation(line: 492, column: 9, scope: !4964)
!4980 = !DILocation(line: 492, column: 13, scope: !4964)
!4981 = !DILocation(line: 491, column: 3, scope: !4964)
!4982 = !DILocation(line: 493, column: 2, scope: !4964)
!4983 = !DILocation(line: 494, column: 17, scope: !4212)
!4984 = !DILocation(line: 494, column: 2, scope: !4212)
!4985 = !DILocation(line: 495, column: 8, scope: !4212)
!4986 = !DILocation(line: 495, column: 2, scope: !4212)
!4987 = !DILocation(line: 496, column: 9, scope: !4212)
!4988 = !DILocation(line: 496, column: 2, scope: !4212)
!4989 = !DILocation(line: 497, column: 1, scope: !4212)
!4990 = distinct !DISubprogram(name: "iguanair_disconnect", scope: !3, file: !3, line: 499, type: !4160, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4991 = !DILocalVariable(name: "intf", arg: 1, scope: !4990, file: !3, line: 499, type: !3998)
!4992 = !DILocation(line: 499, column: 55, scope: !4990)
!4993 = !DILocalVariable(name: "ir", scope: !4990, file: !3, line: 501, type: !4222)
!4994 = !DILocation(line: 501, column: 19, scope: !4990)
!4995 = !DILocation(line: 501, column: 41, scope: !4990)
!4996 = !DILocation(line: 501, column: 24, scope: !4990)
!4997 = !DILocation(line: 503, column: 23, scope: !4990)
!4998 = !DILocation(line: 503, column: 27, scope: !4990)
!4999 = !DILocation(line: 503, column: 2, scope: !4990)
!5000 = !DILocation(line: 504, column: 19, scope: !4990)
!5001 = !DILocation(line: 504, column: 2, scope: !4990)
!5002 = !DILocation(line: 505, column: 15, scope: !4990)
!5003 = !DILocation(line: 505, column: 19, scope: !4990)
!5004 = !DILocation(line: 505, column: 2, scope: !4990)
!5005 = !DILocation(line: 506, column: 15, scope: !4990)
!5006 = !DILocation(line: 506, column: 19, scope: !4990)
!5007 = !DILocation(line: 506, column: 2, scope: !4990)
!5008 = !DILocation(line: 507, column: 15, scope: !4990)
!5009 = !DILocation(line: 507, column: 19, scope: !4990)
!5010 = !DILocation(line: 507, column: 2, scope: !4990)
!5011 = !DILocation(line: 508, column: 15, scope: !4990)
!5012 = !DILocation(line: 508, column: 19, scope: !4990)
!5013 = !DILocation(line: 508, column: 2, scope: !4990)
!5014 = !DILocation(line: 509, column: 20, scope: !4990)
!5015 = !DILocation(line: 509, column: 24, scope: !4990)
!5016 = !DILocation(line: 509, column: 45, scope: !4990)
!5017 = !DILocation(line: 509, column: 49, scope: !4990)
!5018 = !DILocation(line: 509, column: 57, scope: !4990)
!5019 = !DILocation(line: 509, column: 61, scope: !4990)
!5020 = !DILocation(line: 509, column: 2, scope: !4990)
!5021 = !DILocation(line: 510, column: 20, scope: !4990)
!5022 = !DILocation(line: 510, column: 24, scope: !4990)
!5023 = !DILocation(line: 510, column: 46, scope: !4990)
!5024 = !DILocation(line: 510, column: 50, scope: !4990)
!5025 = !DILocation(line: 510, column: 58, scope: !4990)
!5026 = !DILocation(line: 510, column: 62, scope: !4990)
!5027 = !DILocation(line: 510, column: 2, scope: !4990)
!5028 = !DILocation(line: 511, column: 8, scope: !4990)
!5029 = !DILocation(line: 511, column: 2, scope: !4990)
!5030 = !DILocation(line: 512, column: 1, scope: !4990)
!5031 = distinct !DISubprogram(name: "iguanair_suspend", scope: !3, file: !3, line: 514, type: !4168, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5032 = !DILocalVariable(name: "intf", arg: 1, scope: !5031, file: !3, line: 514, type: !3998)
!5033 = !DILocation(line: 514, column: 51, scope: !5031)
!5034 = !DILocalVariable(name: "message", arg: 2, scope: !5031, file: !3, line: 514, type: !3492)
!5035 = !DILocation(line: 514, column: 70, scope: !5031)
!5036 = !DILocalVariable(name: "ir", scope: !5031, file: !3, line: 516, type: !4222)
!5037 = !DILocation(line: 516, column: 19, scope: !5031)
!5038 = !DILocation(line: 516, column: 41, scope: !5031)
!5039 = !DILocation(line: 516, column: 24, scope: !5031)
!5040 = !DILocalVariable(name: "rc", scope: !5031, file: !3, line: 517, type: !186)
!5041 = !DILocation(line: 517, column: 6, scope: !5031)
!5042 = !DILocation(line: 519, column: 6, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 519, column: 6)
!5044 = !DILocation(line: 519, column: 10, scope: !5043)
!5045 = !DILocation(line: 519, column: 6, scope: !5031)
!5046 = !DILocation(line: 520, column: 26, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 519, column: 23)
!5048 = !DILocation(line: 520, column: 8, scope: !5047)
!5049 = !DILocation(line: 520, column: 6, scope: !5047)
!5050 = !DILocation(line: 521, column: 7, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 521, column: 7)
!5052 = !DILocation(line: 521, column: 7, scope: !5047)
!5053 = !DILocation(line: 522, column: 4, scope: !5051)
!5054 = !DILocation(line: 523, column: 2, scope: !5047)
!5055 = !DILocation(line: 525, column: 15, scope: !5031)
!5056 = !DILocation(line: 525, column: 19, scope: !5031)
!5057 = !DILocation(line: 525, column: 2, scope: !5031)
!5058 = !DILocation(line: 526, column: 15, scope: !5031)
!5059 = !DILocation(line: 526, column: 19, scope: !5031)
!5060 = !DILocation(line: 526, column: 2, scope: !5031)
!5061 = !DILocation(line: 528, column: 9, scope: !5031)
!5062 = !DILocation(line: 528, column: 2, scope: !5031)
!5063 = distinct !DISubprogram(name: "iguanair_resume", scope: !3, file: !3, line: 531, type: !4172, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5064 = !DILocalVariable(name: "intf", arg: 1, scope: !5063, file: !3, line: 531, type: !3998)
!5065 = !DILocation(line: 531, column: 50, scope: !5063)
!5066 = !DILocalVariable(name: "ir", scope: !5063, file: !3, line: 533, type: !4222)
!5067 = !DILocation(line: 533, column: 19, scope: !5063)
!5068 = !DILocation(line: 533, column: 41, scope: !5063)
!5069 = !DILocation(line: 533, column: 24, scope: !5063)
!5070 = !DILocalVariable(name: "rc", scope: !5063, file: !3, line: 534, type: !186)
!5071 = !DILocation(line: 534, column: 6, scope: !5063)
!5072 = !DILocation(line: 536, column: 22, scope: !5063)
!5073 = !DILocation(line: 536, column: 26, scope: !5063)
!5074 = !DILocation(line: 536, column: 7, scope: !5063)
!5075 = !DILocation(line: 536, column: 5, scope: !5063)
!5076 = !DILocation(line: 537, column: 6, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 537, column: 6)
!5078 = !DILocation(line: 537, column: 6, scope: !5063)
!5079 = !DILocation(line: 538, column: 3, scope: !5077)
!5080 = !DILocation(line: 540, column: 6, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 540, column: 6)
!5082 = !DILocation(line: 540, column: 10, scope: !5081)
!5083 = !DILocation(line: 540, column: 6, scope: !5063)
!5084 = !DILocation(line: 541, column: 26, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 540, column: 23)
!5086 = !DILocation(line: 541, column: 8, scope: !5085)
!5087 = !DILocation(line: 541, column: 6, scope: !5085)
!5088 = !DILocation(line: 542, column: 7, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 542, column: 7)
!5090 = !DILocation(line: 542, column: 7, scope: !5085)
!5091 = !DILocation(line: 543, column: 4, scope: !5089)
!5092 = !DILocation(line: 544, column: 2, scope: !5085)
!5093 = !DILocation(line: 546, column: 9, scope: !5063)
!5094 = !DILocation(line: 546, column: 2, scope: !5063)
!5095 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !5096, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!182, !3998}
!5098 = !DILocalVariable(name: "intf", arg: 1, scope: !5095, file: !6, line: 715, type: !3998)
!5099 = !DILocation(line: 715, column: 76, scope: !5095)
!5100 = !DILocalVariable(name: "__mptr", scope: !5101, file: !6, line: 717, type: !181)
!5101 = distinct !DILexicalBlock(scope: !5095, file: !6, line: 717, column: 9)
!5102 = !DILocation(line: 717, column: 9, scope: !5101)
!5103 = !DILocation(line: 717, column: 9, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5101, file: !6, line: 717, column: 9)
!5105 = !DILocation(line: 717, column: 2, scope: !5095)
!5106 = distinct !DISubprogram(name: "kzalloc", scope: !164, file: !164, line: 662, type: !5107, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!181, !327, !179}
!5109 = !DILocalVariable(name: "s", arg: 1, scope: !5110, file: !164, line: 445, type: !937)
!5110 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !164, file: !164, line: 445, type: !5111, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!181, !937, !179, !327}
!5113 = !DILocation(line: 445, column: 72, scope: !5110, inlinedAt: !5114)
!5114 = distinct !DILocation(line: 552, column: 10, scope: !5115, inlinedAt: !5118)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !164, line: 540, column: 34)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !164, line: 540, column: 6)
!5117 = distinct !DISubprogram(name: "kmalloc", scope: !164, file: !164, line: 538, type: !5107, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5118 = distinct !DILocation(line: 664, column: 9, scope: !5106)
!5119 = !DILocalVariable(name: "flags", arg: 2, scope: !5110, file: !164, line: 446, type: !179)
!5120 = !DILocation(line: 446, column: 9, scope: !5110, inlinedAt: !5114)
!5121 = !DILocalVariable(name: "size", arg: 3, scope: !5110, file: !164, line: 446, type: !327)
!5122 = !DILocation(line: 446, column: 23, scope: !5110, inlinedAt: !5114)
!5123 = !DILocalVariable(name: "ret", scope: !5110, file: !164, line: 448, type: !181)
!5124 = !DILocation(line: 448, column: 8, scope: !5110, inlinedAt: !5114)
!5125 = !DILocalVariable(name: "flags", arg: 1, scope: !5126, file: !164, line: 318, type: !179)
!5126 = distinct !DISubprogram(name: "kmalloc_type", scope: !164, file: !164, line: 318, type: !5127, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!163, !179}
!5129 = !DILocation(line: 318, column: 67, scope: !5126, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 553, column: 20, scope: !5115, inlinedAt: !5118)
!5131 = !DILocalVariable(name: "size", arg: 1, scope: !5132, file: !164, line: 346, type: !327)
!5132 = distinct !DISubprogram(name: "kmalloc_index", scope: !164, file: !164, line: 346, type: !5133, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!7, !327}
!5135 = !DILocation(line: 346, column: 58, scope: !5132, inlinedAt: !5136)
!5136 = distinct !DILocation(line: 547, column: 11, scope: !5115, inlinedAt: !5118)
!5137 = !DILocalVariable(name: "size", arg: 1, scope: !5138, file: !164, line: 472, type: !327)
!5138 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !164, file: !164, line: 472, type: !5139, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!181, !327, !179, !7}
!5141 = !DILocation(line: 472, column: 28, scope: !5138, inlinedAt: !5142)
!5142 = distinct !DILocation(line: 481, column: 9, scope: !5143, inlinedAt: !5144)
!5143 = distinct !DISubprogram(name: "kmalloc_large", scope: !164, file: !164, line: 478, type: !5107, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5144 = distinct !DILocation(line: 545, column: 11, scope: !5145, inlinedAt: !5118)
!5145 = distinct !DILexicalBlock(scope: !5115, file: !164, line: 544, column: 7)
!5146 = !DILocalVariable(name: "flags", arg: 2, scope: !5138, file: !164, line: 472, type: !179)
!5147 = !DILocation(line: 472, column: 40, scope: !5138, inlinedAt: !5142)
!5148 = !DILocalVariable(name: "order", arg: 3, scope: !5138, file: !164, line: 472, type: !7)
!5149 = !DILocation(line: 472, column: 60, scope: !5138, inlinedAt: !5142)
!5150 = !DILocalVariable(name: "size", arg: 1, scope: !5143, file: !164, line: 478, type: !327)
!5151 = !DILocation(line: 478, column: 51, scope: !5143, inlinedAt: !5144)
!5152 = !DILocalVariable(name: "flags", arg: 2, scope: !5143, file: !164, line: 478, type: !179)
!5153 = !DILocation(line: 478, column: 63, scope: !5143, inlinedAt: !5144)
!5154 = !DILocalVariable(name: "order", scope: !5143, file: !164, line: 480, type: !7)
!5155 = !DILocation(line: 480, column: 15, scope: !5143, inlinedAt: !5144)
!5156 = !DILocalVariable(name: "size", arg: 1, scope: !5117, file: !164, line: 538, type: !327)
!5157 = !DILocation(line: 538, column: 45, scope: !5117, inlinedAt: !5118)
!5158 = !DILocalVariable(name: "flags", arg: 2, scope: !5117, file: !164, line: 538, type: !179)
!5159 = !DILocation(line: 538, column: 57, scope: !5117, inlinedAt: !5118)
!5160 = !DILocalVariable(name: "index", scope: !5115, file: !164, line: 542, type: !7)
!5161 = !DILocation(line: 542, column: 16, scope: !5115, inlinedAt: !5118)
!5162 = !DILocalVariable(name: "size", arg: 1, scope: !5106, file: !164, line: 662, type: !327)
!5163 = !DILocation(line: 662, column: 36, scope: !5106)
!5164 = !DILocalVariable(name: "flags", arg: 2, scope: !5106, file: !164, line: 662, type: !179)
!5165 = !DILocation(line: 662, column: 48, scope: !5106)
!5166 = !DILocation(line: 664, column: 17, scope: !5106)
!5167 = !DILocation(line: 664, column: 23, scope: !5106)
!5168 = !DILocation(line: 664, column: 29, scope: !5106)
!5169 = !DILocation(line: 540, column: 27, scope: !5116, inlinedAt: !5118)
!5170 = !DILocation(line: 540, column: 6, scope: !5116, inlinedAt: !5118)
!5171 = !DILocation(line: 540, column: 6, scope: !5117, inlinedAt: !5118)
!5172 = !DILocation(line: 544, column: 7, scope: !5145, inlinedAt: !5118)
!5173 = !DILocation(line: 544, column: 12, scope: !5145, inlinedAt: !5118)
!5174 = !DILocation(line: 544, column: 7, scope: !5115, inlinedAt: !5118)
!5175 = !DILocation(line: 545, column: 25, scope: !5145, inlinedAt: !5118)
!5176 = !DILocation(line: 545, column: 31, scope: !5145, inlinedAt: !5118)
!5177 = !DILocation(line: 480, column: 33, scope: !5143, inlinedAt: !5144)
!5178 = !DILocation(line: 480, column: 23, scope: !5143, inlinedAt: !5144)
!5179 = !DILocation(line: 481, column: 29, scope: !5143, inlinedAt: !5144)
!5180 = !DILocation(line: 481, column: 35, scope: !5143, inlinedAt: !5144)
!5181 = !DILocation(line: 481, column: 42, scope: !5143, inlinedAt: !5144)
!5182 = !DILocation(line: 474, column: 23, scope: !5138, inlinedAt: !5142)
!5183 = !DILocation(line: 474, column: 29, scope: !5138, inlinedAt: !5142)
!5184 = !DILocation(line: 474, column: 36, scope: !5138, inlinedAt: !5142)
!5185 = !DILocation(line: 474, column: 9, scope: !5138, inlinedAt: !5142)
!5186 = !DILocation(line: 545, column: 4, scope: !5145, inlinedAt: !5118)
!5187 = !DILocation(line: 547, column: 25, scope: !5115, inlinedAt: !5118)
!5188 = !DILocation(line: 348, column: 7, scope: !5189, inlinedAt: !5136)
!5189 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 348, column: 6)
!5190 = !DILocation(line: 348, column: 6, scope: !5132, inlinedAt: !5136)
!5191 = !DILocation(line: 349, column: 3, scope: !5189, inlinedAt: !5136)
!5192 = !DILocation(line: 351, column: 6, scope: !5193, inlinedAt: !5136)
!5193 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 351, column: 6)
!5194 = !DILocation(line: 351, column: 11, scope: !5193, inlinedAt: !5136)
!5195 = !DILocation(line: 351, column: 6, scope: !5132, inlinedAt: !5136)
!5196 = !DILocation(line: 352, column: 3, scope: !5193, inlinedAt: !5136)
!5197 = !DILocation(line: 354, column: 32, scope: !5198, inlinedAt: !5136)
!5198 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 354, column: 6)
!5199 = !DILocation(line: 354, column: 37, scope: !5198, inlinedAt: !5136)
!5200 = !DILocation(line: 354, column: 42, scope: !5198, inlinedAt: !5136)
!5201 = !DILocation(line: 354, column: 45, scope: !5198, inlinedAt: !5136)
!5202 = !DILocation(line: 354, column: 50, scope: !5198, inlinedAt: !5136)
!5203 = !DILocation(line: 354, column: 6, scope: !5132, inlinedAt: !5136)
!5204 = !DILocation(line: 355, column: 3, scope: !5198, inlinedAt: !5136)
!5205 = !DILocation(line: 356, column: 32, scope: !5206, inlinedAt: !5136)
!5206 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 356, column: 6)
!5207 = !DILocation(line: 356, column: 37, scope: !5206, inlinedAt: !5136)
!5208 = !DILocation(line: 356, column: 43, scope: !5206, inlinedAt: !5136)
!5209 = !DILocation(line: 356, column: 46, scope: !5206, inlinedAt: !5136)
!5210 = !DILocation(line: 356, column: 51, scope: !5206, inlinedAt: !5136)
!5211 = !DILocation(line: 356, column: 6, scope: !5132, inlinedAt: !5136)
!5212 = !DILocation(line: 357, column: 3, scope: !5206, inlinedAt: !5136)
!5213 = !DILocation(line: 358, column: 6, scope: !5214, inlinedAt: !5136)
!5214 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 358, column: 6)
!5215 = !DILocation(line: 358, column: 11, scope: !5214, inlinedAt: !5136)
!5216 = !DILocation(line: 358, column: 6, scope: !5132, inlinedAt: !5136)
!5217 = !DILocation(line: 358, column: 26, scope: !5214, inlinedAt: !5136)
!5218 = !DILocation(line: 359, column: 6, scope: !5219, inlinedAt: !5136)
!5219 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 359, column: 6)
!5220 = !DILocation(line: 359, column: 11, scope: !5219, inlinedAt: !5136)
!5221 = !DILocation(line: 359, column: 6, scope: !5132, inlinedAt: !5136)
!5222 = !DILocation(line: 359, column: 26, scope: !5219, inlinedAt: !5136)
!5223 = !DILocation(line: 360, column: 6, scope: !5224, inlinedAt: !5136)
!5224 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 360, column: 6)
!5225 = !DILocation(line: 360, column: 11, scope: !5224, inlinedAt: !5136)
!5226 = !DILocation(line: 360, column: 6, scope: !5132, inlinedAt: !5136)
!5227 = !DILocation(line: 360, column: 26, scope: !5224, inlinedAt: !5136)
!5228 = !DILocation(line: 361, column: 6, scope: !5229, inlinedAt: !5136)
!5229 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 361, column: 6)
!5230 = !DILocation(line: 361, column: 11, scope: !5229, inlinedAt: !5136)
!5231 = !DILocation(line: 361, column: 6, scope: !5132, inlinedAt: !5136)
!5232 = !DILocation(line: 361, column: 26, scope: !5229, inlinedAt: !5136)
!5233 = !DILocation(line: 362, column: 6, scope: !5234, inlinedAt: !5136)
!5234 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 362, column: 6)
!5235 = !DILocation(line: 362, column: 11, scope: !5234, inlinedAt: !5136)
!5236 = !DILocation(line: 362, column: 6, scope: !5132, inlinedAt: !5136)
!5237 = !DILocation(line: 362, column: 26, scope: !5234, inlinedAt: !5136)
!5238 = !DILocation(line: 363, column: 6, scope: !5239, inlinedAt: !5136)
!5239 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 363, column: 6)
!5240 = !DILocation(line: 363, column: 11, scope: !5239, inlinedAt: !5136)
!5241 = !DILocation(line: 363, column: 6, scope: !5132, inlinedAt: !5136)
!5242 = !DILocation(line: 363, column: 26, scope: !5239, inlinedAt: !5136)
!5243 = !DILocation(line: 364, column: 6, scope: !5244, inlinedAt: !5136)
!5244 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 364, column: 6)
!5245 = !DILocation(line: 364, column: 11, scope: !5244, inlinedAt: !5136)
!5246 = !DILocation(line: 364, column: 6, scope: !5132, inlinedAt: !5136)
!5247 = !DILocation(line: 364, column: 26, scope: !5244, inlinedAt: !5136)
!5248 = !DILocation(line: 365, column: 6, scope: !5249, inlinedAt: !5136)
!5249 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 365, column: 6)
!5250 = !DILocation(line: 365, column: 11, scope: !5249, inlinedAt: !5136)
!5251 = !DILocation(line: 365, column: 6, scope: !5132, inlinedAt: !5136)
!5252 = !DILocation(line: 365, column: 26, scope: !5249, inlinedAt: !5136)
!5253 = !DILocation(line: 366, column: 6, scope: !5254, inlinedAt: !5136)
!5254 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 366, column: 6)
!5255 = !DILocation(line: 366, column: 11, scope: !5254, inlinedAt: !5136)
!5256 = !DILocation(line: 366, column: 6, scope: !5132, inlinedAt: !5136)
!5257 = !DILocation(line: 366, column: 26, scope: !5254, inlinedAt: !5136)
!5258 = !DILocation(line: 367, column: 6, scope: !5259, inlinedAt: !5136)
!5259 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 367, column: 6)
!5260 = !DILocation(line: 367, column: 11, scope: !5259, inlinedAt: !5136)
!5261 = !DILocation(line: 367, column: 6, scope: !5132, inlinedAt: !5136)
!5262 = !DILocation(line: 367, column: 26, scope: !5259, inlinedAt: !5136)
!5263 = !DILocation(line: 368, column: 6, scope: !5264, inlinedAt: !5136)
!5264 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 368, column: 6)
!5265 = !DILocation(line: 368, column: 11, scope: !5264, inlinedAt: !5136)
!5266 = !DILocation(line: 368, column: 6, scope: !5132, inlinedAt: !5136)
!5267 = !DILocation(line: 368, column: 26, scope: !5264, inlinedAt: !5136)
!5268 = !DILocation(line: 369, column: 6, scope: !5269, inlinedAt: !5136)
!5269 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 369, column: 6)
!5270 = !DILocation(line: 369, column: 11, scope: !5269, inlinedAt: !5136)
!5271 = !DILocation(line: 369, column: 6, scope: !5132, inlinedAt: !5136)
!5272 = !DILocation(line: 369, column: 26, scope: !5269, inlinedAt: !5136)
!5273 = !DILocation(line: 370, column: 6, scope: !5274, inlinedAt: !5136)
!5274 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 370, column: 6)
!5275 = !DILocation(line: 370, column: 11, scope: !5274, inlinedAt: !5136)
!5276 = !DILocation(line: 370, column: 6, scope: !5132, inlinedAt: !5136)
!5277 = !DILocation(line: 370, column: 26, scope: !5274, inlinedAt: !5136)
!5278 = !DILocation(line: 371, column: 6, scope: !5279, inlinedAt: !5136)
!5279 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 371, column: 6)
!5280 = !DILocation(line: 371, column: 11, scope: !5279, inlinedAt: !5136)
!5281 = !DILocation(line: 371, column: 6, scope: !5132, inlinedAt: !5136)
!5282 = !DILocation(line: 371, column: 26, scope: !5279, inlinedAt: !5136)
!5283 = !DILocation(line: 372, column: 6, scope: !5284, inlinedAt: !5136)
!5284 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 372, column: 6)
!5285 = !DILocation(line: 372, column: 11, scope: !5284, inlinedAt: !5136)
!5286 = !DILocation(line: 372, column: 6, scope: !5132, inlinedAt: !5136)
!5287 = !DILocation(line: 372, column: 26, scope: !5284, inlinedAt: !5136)
!5288 = !DILocation(line: 373, column: 6, scope: !5289, inlinedAt: !5136)
!5289 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 373, column: 6)
!5290 = !DILocation(line: 373, column: 11, scope: !5289, inlinedAt: !5136)
!5291 = !DILocation(line: 373, column: 6, scope: !5132, inlinedAt: !5136)
!5292 = !DILocation(line: 373, column: 26, scope: !5289, inlinedAt: !5136)
!5293 = !DILocation(line: 374, column: 6, scope: !5294, inlinedAt: !5136)
!5294 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 374, column: 6)
!5295 = !DILocation(line: 374, column: 11, scope: !5294, inlinedAt: !5136)
!5296 = !DILocation(line: 374, column: 6, scope: !5132, inlinedAt: !5136)
!5297 = !DILocation(line: 374, column: 26, scope: !5294, inlinedAt: !5136)
!5298 = !DILocation(line: 375, column: 6, scope: !5299, inlinedAt: !5136)
!5299 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 375, column: 6)
!5300 = !DILocation(line: 375, column: 11, scope: !5299, inlinedAt: !5136)
!5301 = !DILocation(line: 375, column: 6, scope: !5132, inlinedAt: !5136)
!5302 = !DILocation(line: 375, column: 27, scope: !5299, inlinedAt: !5136)
!5303 = !DILocation(line: 376, column: 6, scope: !5304, inlinedAt: !5136)
!5304 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 376, column: 6)
!5305 = !DILocation(line: 376, column: 11, scope: !5304, inlinedAt: !5136)
!5306 = !DILocation(line: 376, column: 6, scope: !5132, inlinedAt: !5136)
!5307 = !DILocation(line: 376, column: 32, scope: !5304, inlinedAt: !5136)
!5308 = !DILocation(line: 377, column: 6, scope: !5309, inlinedAt: !5136)
!5309 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 377, column: 6)
!5310 = !DILocation(line: 377, column: 11, scope: !5309, inlinedAt: !5136)
!5311 = !DILocation(line: 377, column: 6, scope: !5132, inlinedAt: !5136)
!5312 = !DILocation(line: 377, column: 32, scope: !5309, inlinedAt: !5136)
!5313 = !DILocation(line: 378, column: 6, scope: !5314, inlinedAt: !5136)
!5314 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 378, column: 6)
!5315 = !DILocation(line: 378, column: 11, scope: !5314, inlinedAt: !5136)
!5316 = !DILocation(line: 378, column: 6, scope: !5132, inlinedAt: !5136)
!5317 = !DILocation(line: 378, column: 32, scope: !5314, inlinedAt: !5136)
!5318 = !DILocation(line: 379, column: 6, scope: !5319, inlinedAt: !5136)
!5319 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 379, column: 6)
!5320 = !DILocation(line: 379, column: 11, scope: !5319, inlinedAt: !5136)
!5321 = !DILocation(line: 379, column: 6, scope: !5132, inlinedAt: !5136)
!5322 = !DILocation(line: 379, column: 33, scope: !5319, inlinedAt: !5136)
!5323 = !DILocation(line: 380, column: 6, scope: !5324, inlinedAt: !5136)
!5324 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 380, column: 6)
!5325 = !DILocation(line: 380, column: 11, scope: !5324, inlinedAt: !5136)
!5326 = !DILocation(line: 380, column: 6, scope: !5132, inlinedAt: !5136)
!5327 = !DILocation(line: 380, column: 33, scope: !5324, inlinedAt: !5136)
!5328 = !DILocation(line: 381, column: 6, scope: !5329, inlinedAt: !5136)
!5329 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 381, column: 6)
!5330 = !DILocation(line: 381, column: 11, scope: !5329, inlinedAt: !5136)
!5331 = !DILocation(line: 381, column: 6, scope: !5132, inlinedAt: !5136)
!5332 = !DILocation(line: 381, column: 33, scope: !5329, inlinedAt: !5136)
!5333 = !DILocation(line: 382, column: 2, scope: !5334, inlinedAt: !5136)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !164, line: 382, column: 2)
!5335 = distinct !DILexicalBlock(scope: !5132, file: !164, line: 382, column: 2)
!5336 = !{i32 -2142549564, i32 -2142549535, i32 -2142549489, i32 -2142549431, i32 -2142549377, i32 -2142549323, i32 -2142549268, i32 -2142549237}
!5337 = !DILocation(line: 382, column: 2, scope: !5338, inlinedAt: !5136)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !164, line: 382, column: 2)
!5339 = distinct !DILexicalBlock(scope: !5335, file: !164, line: 382, column: 2)
!5340 = !{i32 -2142548794, i32 -2142548787, i32 -2142548733, i32 -2142548702, i32 -2142548672}
!5341 = !DILocation(line: 382, column: 2, scope: !5339, inlinedAt: !5136)
!5342 = !DILocation(line: 386, column: 1, scope: !5132, inlinedAt: !5136)
!5343 = !DILocation(line: 547, column: 9, scope: !5115, inlinedAt: !5118)
!5344 = !DILocation(line: 549, column: 8, scope: !5345, inlinedAt: !5118)
!5345 = distinct !DILexicalBlock(scope: !5115, file: !164, line: 549, column: 7)
!5346 = !DILocation(line: 549, column: 7, scope: !5115, inlinedAt: !5118)
!5347 = !DILocation(line: 550, column: 4, scope: !5345, inlinedAt: !5118)
!5348 = !DILocation(line: 553, column: 33, scope: !5115, inlinedAt: !5118)
!5349 = !DILocation(line: 325, column: 6, scope: !5350, inlinedAt: !5130)
!5350 = distinct !DILexicalBlock(scope: !5126, file: !164, line: 325, column: 6)
!5351 = !DILocation(line: 325, column: 6, scope: !5126, inlinedAt: !5130)
!5352 = !DILocation(line: 326, column: 3, scope: !5350, inlinedAt: !5130)
!5353 = !DILocation(line: 332, column: 9, scope: !5126, inlinedAt: !5130)
!5354 = !DILocation(line: 332, column: 15, scope: !5126, inlinedAt: !5130)
!5355 = !DILocation(line: 332, column: 2, scope: !5126, inlinedAt: !5130)
!5356 = !DILocation(line: 336, column: 1, scope: !5126, inlinedAt: !5130)
!5357 = !DILocation(line: 553, column: 5, scope: !5115, inlinedAt: !5118)
!5358 = !DILocation(line: 553, column: 41, scope: !5115, inlinedAt: !5118)
!5359 = !DILocation(line: 554, column: 5, scope: !5115, inlinedAt: !5118)
!5360 = !DILocation(line: 554, column: 12, scope: !5115, inlinedAt: !5118)
!5361 = !DILocation(line: 448, column: 31, scope: !5110, inlinedAt: !5114)
!5362 = !DILocation(line: 448, column: 34, scope: !5110, inlinedAt: !5114)
!5363 = !DILocation(line: 448, column: 14, scope: !5110, inlinedAt: !5114)
!5364 = !DILocation(line: 450, column: 22, scope: !5110, inlinedAt: !5114)
!5365 = !DILocation(line: 450, column: 25, scope: !5110, inlinedAt: !5114)
!5366 = !DILocation(line: 450, column: 30, scope: !5110, inlinedAt: !5114)
!5367 = !DILocation(line: 450, column: 36, scope: !5110, inlinedAt: !5114)
!5368 = !DILocation(line: 450, column: 8, scope: !5110, inlinedAt: !5114)
!5369 = !DILocation(line: 450, column: 6, scope: !5110, inlinedAt: !5114)
!5370 = !DILocation(line: 451, column: 9, scope: !5110, inlinedAt: !5114)
!5371 = !DILocation(line: 552, column: 3, scope: !5115, inlinedAt: !5118)
!5372 = !DILocation(line: 557, column: 19, scope: !5117, inlinedAt: !5118)
!5373 = !DILocation(line: 557, column: 25, scope: !5117, inlinedAt: !5118)
!5374 = !DILocation(line: 557, column: 9, scope: !5117, inlinedAt: !5118)
!5375 = !DILocation(line: 557, column: 2, scope: !5117, inlinedAt: !5118)
!5376 = !DILocation(line: 558, column: 1, scope: !5117, inlinedAt: !5118)
!5377 = !DILocation(line: 664, column: 2, scope: !5106)
!5378 = distinct !DISubprogram(name: "usb_endpoint_is_int_in", scope: !101, file: !101, line: 596, type: !5379, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!186, !5381}
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!5383 = !DILocalVariable(name: "epd", arg: 1, scope: !5378, file: !101, line: 597, type: !5381)
!5384 = !DILocation(line: 597, column: 43, scope: !5378)
!5385 = !DILocation(line: 599, column: 31, scope: !5378)
!5386 = !DILocation(line: 599, column: 9, scope: !5378)
!5387 = !DILocation(line: 599, column: 36, scope: !5378)
!5388 = !DILocation(line: 599, column: 59, scope: !5378)
!5389 = !DILocation(line: 599, column: 39, scope: !5378)
!5390 = !DILocation(line: 0, scope: !5378)
!5391 = !DILocation(line: 599, column: 2, scope: !5378)
!5392 = distinct !DISubprogram(name: "usb_endpoint_is_int_out", scope: !101, file: !101, line: 609, type: !5379, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5393 = !DILocalVariable(name: "epd", arg: 1, scope: !5392, file: !101, line: 610, type: !5381)
!5394 = !DILocation(line: 610, column: 43, scope: !5392)
!5395 = !DILocation(line: 612, column: 31, scope: !5392)
!5396 = !DILocation(line: 612, column: 9, scope: !5392)
!5397 = !DILocation(line: 612, column: 36, scope: !5392)
!5398 = !DILocation(line: 612, column: 60, scope: !5392)
!5399 = !DILocation(line: 612, column: 39, scope: !5392)
!5400 = !DILocation(line: 0, scope: !5392)
!5401 = !DILocation(line: 612, column: 2, scope: !5392)
!5402 = !DILocalVariable(name: "x", arg: 1, scope: !4195, file: !1505, line: 85, type: !1503)
!5403 = !DILocation(line: 85, column: 57, scope: !4195)
!5404 = !DILocation(line: 87, column: 2, scope: !4195)
!5405 = !DILocation(line: 87, column: 5, scope: !4195)
!5406 = !DILocation(line: 87, column: 10, scope: !4195)
!5407 = !DILocation(line: 88, column: 2, scope: !4195)
!5408 = !DILocation(line: 88, column: 2, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !4195, file: !1505, line: 88, column: 2)
!5410 = !DILocation(line: 89, column: 1, scope: !4195)
!5411 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5412, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5412 = !DISubroutineType(types: !5413)
!5413 = !{!7, !182, !7}
!5414 = !DILocalVariable(name: "dev", arg: 1, scope: !5411, file: !6, line: 1945, type: !182)
!5415 = !DILocation(line: 1945, column: 61, scope: !5411)
!5416 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5411, file: !6, line: 1946, type: !7)
!5417 = !DILocation(line: 1946, column: 16, scope: !5411)
!5418 = !DILocation(line: 1948, column: 10, scope: !5411)
!5419 = !DILocation(line: 1948, column: 15, scope: !5411)
!5420 = !DILocation(line: 1948, column: 22, scope: !5411)
!5421 = !DILocation(line: 1948, column: 31, scope: !5411)
!5422 = !DILocation(line: 1948, column: 40, scope: !5411)
!5423 = !DILocation(line: 1948, column: 28, scope: !5411)
!5424 = !DILocation(line: 1948, column: 2, scope: !5411)
!5425 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5426, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5426 = !DISubroutineType(types: !5427)
!5427 = !{null, !4625, !182, !7, !181, !186, !4674, !181, !186}
!5428 = !DILocalVariable(name: "urb", arg: 1, scope: !5425, file: !6, line: 1688, type: !4625)
!5429 = !DILocation(line: 1688, column: 49, scope: !5425)
!5430 = !DILocalVariable(name: "dev", arg: 2, scope: !5425, file: !6, line: 1689, type: !182)
!5431 = !DILocation(line: 1689, column: 28, scope: !5425)
!5432 = !DILocalVariable(name: "pipe", arg: 3, scope: !5425, file: !6, line: 1690, type: !7)
!5433 = !DILocation(line: 1690, column: 22, scope: !5425)
!5434 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5425, file: !6, line: 1691, type: !181)
!5435 = !DILocation(line: 1691, column: 15, scope: !5425)
!5436 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5425, file: !6, line: 1692, type: !186)
!5437 = !DILocation(line: 1692, column: 13, scope: !5425)
!5438 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5425, file: !6, line: 1693, type: !4674)
!5439 = !DILocation(line: 1693, column: 24, scope: !5425)
!5440 = !DILocalVariable(name: "context", arg: 7, scope: !5425, file: !6, line: 1694, type: !181)
!5441 = !DILocation(line: 1694, column: 15, scope: !5425)
!5442 = !DILocalVariable(name: "interval", arg: 8, scope: !5425, file: !6, line: 1695, type: !186)
!5443 = !DILocation(line: 1695, column: 13, scope: !5425)
!5444 = !DILocation(line: 1697, column: 13, scope: !5425)
!5445 = !DILocation(line: 1697, column: 2, scope: !5425)
!5446 = !DILocation(line: 1697, column: 7, scope: !5425)
!5447 = !DILocation(line: 1697, column: 11, scope: !5425)
!5448 = !DILocation(line: 1698, column: 14, scope: !5425)
!5449 = !DILocation(line: 1698, column: 2, scope: !5425)
!5450 = !DILocation(line: 1698, column: 7, scope: !5425)
!5451 = !DILocation(line: 1698, column: 12, scope: !5425)
!5452 = !DILocation(line: 1699, column: 25, scope: !5425)
!5453 = !DILocation(line: 1699, column: 2, scope: !5425)
!5454 = !DILocation(line: 1699, column: 7, scope: !5425)
!5455 = !DILocation(line: 1699, column: 23, scope: !5425)
!5456 = !DILocation(line: 1700, column: 32, scope: !5425)
!5457 = !DILocation(line: 1700, column: 2, scope: !5425)
!5458 = !DILocation(line: 1700, column: 7, scope: !5425)
!5459 = !DILocation(line: 1700, column: 30, scope: !5425)
!5460 = !DILocation(line: 1701, column: 18, scope: !5425)
!5461 = !DILocation(line: 1701, column: 2, scope: !5425)
!5462 = !DILocation(line: 1701, column: 7, scope: !5425)
!5463 = !DILocation(line: 1701, column: 16, scope: !5425)
!5464 = !DILocation(line: 1702, column: 17, scope: !5425)
!5465 = !DILocation(line: 1702, column: 2, scope: !5425)
!5466 = !DILocation(line: 1702, column: 7, scope: !5425)
!5467 = !DILocation(line: 1702, column: 15, scope: !5425)
!5468 = !DILocation(line: 1704, column: 6, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5425, file: !6, line: 1704, column: 6)
!5470 = !DILocation(line: 1704, column: 11, scope: !5469)
!5471 = !DILocation(line: 1704, column: 17, scope: !5469)
!5472 = !DILocation(line: 1704, column: 35, scope: !5469)
!5473 = !DILocation(line: 1704, column: 38, scope: !5469)
!5474 = !DILocation(line: 1704, column: 43, scope: !5469)
!5475 = !DILocation(line: 1704, column: 49, scope: !5469)
!5476 = !DILocation(line: 1704, column: 6, scope: !5425)
!5477 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5478, file: !6, line: 1706, type: !186)
!5478 = distinct !DILexicalBlock(scope: !5479, file: !6, line: 1706, column: 14)
!5479 = distinct !DILexicalBlock(scope: !5469, file: !6, line: 1704, column: 69)
!5480 = !DILocation(line: 1706, column: 14, scope: !5478)
!5481 = !DILocalVariable(name: "__UNIQUE_ID___x203", scope: !5482, file: !6, line: 1706, type: !186)
!5482 = distinct !DILexicalBlock(scope: !5478, file: !6, line: 1706, column: 14)
!5483 = !DILocation(line: 1706, column: 14, scope: !5482)
!5484 = !DILocalVariable(name: "__UNIQUE_ID___y204", scope: !5482, file: !6, line: 1706, type: !186)
!5485 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5478, file: !6, line: 1706, type: !186)
!5486 = !DILocation(line: 1706, column: 12, scope: !5479)
!5487 = !DILocation(line: 1708, column: 25, scope: !5479)
!5488 = !DILocation(line: 1708, column: 34, scope: !5479)
!5489 = !DILocation(line: 1708, column: 21, scope: !5479)
!5490 = !DILocation(line: 1708, column: 3, scope: !5479)
!5491 = !DILocation(line: 1708, column: 8, scope: !5479)
!5492 = !DILocation(line: 1708, column: 17, scope: !5479)
!5493 = !DILocation(line: 1709, column: 2, scope: !5479)
!5494 = !DILocation(line: 1710, column: 19, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5469, file: !6, line: 1709, column: 9)
!5496 = !DILocation(line: 1710, column: 3, scope: !5495)
!5497 = !DILocation(line: 1710, column: 8, scope: !5495)
!5498 = !DILocation(line: 1710, column: 17, scope: !5495)
!5499 = !DILocation(line: 1713, column: 2, scope: !5425)
!5500 = !DILocation(line: 1713, column: 7, scope: !5425)
!5501 = !DILocation(line: 1713, column: 19, scope: !5425)
!5502 = !DILocation(line: 1714, column: 1, scope: !5425)
!5503 = distinct !DISubprogram(name: "iguanair_irq_out", scope: !3, file: !3, line: 177, type: !4676, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5504 = !DILocalVariable(name: "urb", arg: 1, scope: !5503, file: !3, line: 177, type: !4625)
!5505 = !DILocation(line: 177, column: 42, scope: !5503)
!5506 = !DILocalVariable(name: "ir", scope: !5503, file: !3, line: 179, type: !4222)
!5507 = !DILocation(line: 179, column: 19, scope: !5503)
!5508 = !DILocation(line: 179, column: 24, scope: !5503)
!5509 = !DILocation(line: 179, column: 29, scope: !5503)
!5510 = !DILocation(line: 181, column: 6, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 181, column: 6)
!5512 = !DILocation(line: 181, column: 11, scope: !5511)
!5513 = !DILocation(line: 181, column: 6, scope: !5503)
!5514 = !DILocation(line: 182, column: 3, scope: !5511)
!5515 = !DILocation(line: 185, column: 6, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 185, column: 6)
!5517 = !DILocation(line: 185, column: 11, scope: !5516)
!5518 = !DILocation(line: 185, column: 18, scope: !5516)
!5519 = !DILocation(line: 185, column: 23, scope: !5516)
!5520 = !DILocation(line: 185, column: 26, scope: !5516)
!5521 = !DILocation(line: 185, column: 30, scope: !5516)
!5522 = !DILocation(line: 185, column: 38, scope: !5516)
!5523 = !DILocation(line: 185, column: 45, scope: !5516)
!5524 = !DILocation(line: 185, column: 49, scope: !5516)
!5525 = !DILocation(line: 185, column: 6, scope: !5503)
!5526 = !DILocation(line: 186, column: 13, scope: !5516)
!5527 = !DILocation(line: 186, column: 17, scope: !5516)
!5528 = !DILocation(line: 186, column: 3, scope: !5516)
!5529 = !DILocation(line: 187, column: 1, scope: !5503)
!5530 = distinct !DISubprogram(name: "iguanair_rx", scope: !3, file: !3, line: 143, type: !4676, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5531 = !DILocalVariable(name: "urb", arg: 1, scope: !5530, file: !3, line: 143, type: !4625)
!5532 = !DILocation(line: 143, column: 37, scope: !5530)
!5533 = !DILocalVariable(name: "ir", scope: !5530, file: !3, line: 145, type: !4222)
!5534 = !DILocation(line: 145, column: 19, scope: !5530)
!5535 = !DILocalVariable(name: "rc", scope: !5530, file: !3, line: 146, type: !186)
!5536 = !DILocation(line: 146, column: 6, scope: !5530)
!5537 = !DILocation(line: 148, column: 7, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 148, column: 6)
!5539 = !DILocation(line: 148, column: 6, scope: !5530)
!5540 = !DILocation(line: 149, column: 3, scope: !5538)
!5541 = !DILocation(line: 151, column: 7, scope: !5530)
!5542 = !DILocation(line: 151, column: 12, scope: !5530)
!5543 = !DILocation(line: 151, column: 5, scope: !5530)
!5544 = !DILocation(line: 152, column: 7, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 152, column: 6)
!5546 = !DILocation(line: 152, column: 6, scope: !5530)
!5547 = !DILocation(line: 153, column: 18, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 152, column: 11)
!5549 = !DILocation(line: 153, column: 3, scope: !5548)
!5550 = !DILocation(line: 154, column: 3, scope: !5548)
!5551 = !DILocation(line: 157, column: 10, scope: !5530)
!5552 = !DILocation(line: 157, column: 15, scope: !5530)
!5553 = !DILocation(line: 157, column: 2, scope: !5530)
!5554 = !DILocation(line: 159, column: 19, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 157, column: 23)
!5556 = !DILocation(line: 159, column: 23, scope: !5555)
!5557 = !DILocation(line: 159, column: 28, scope: !5555)
!5558 = !DILocation(line: 159, column: 3, scope: !5555)
!5559 = !DILocation(line: 160, column: 3, scope: !5555)
!5560 = !DILocation(line: 164, column: 18, scope: !5555)
!5561 = !DILocation(line: 164, column: 3, scope: !5555)
!5562 = !DILocation(line: 165, column: 3, scope: !5555)
!5563 = !DILocation(line: 169, column: 3, scope: !5555)
!5564 = !DILocation(line: 172, column: 22, scope: !5530)
!5565 = !DILocation(line: 172, column: 7, scope: !5530)
!5566 = !DILocation(line: 172, column: 5, scope: !5530)
!5567 = !DILocation(line: 173, column: 6, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 173, column: 6)
!5569 = !DILocation(line: 173, column: 9, scope: !5568)
!5570 = !DILocation(line: 173, column: 12, scope: !5568)
!5571 = !DILocation(line: 173, column: 15, scope: !5568)
!5572 = !DILocation(line: 173, column: 6, scope: !5530)
!5573 = !DILocation(line: 174, column: 3, scope: !5568)
!5574 = !DILocation(line: 175, column: 1, scope: !5530)
!5575 = distinct !DISubprogram(name: "iguanair_get_features", scope: !3, file: !3, line: 206, type: !5576, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5576 = !DISubroutineType(types: !5577)
!5577 = !{!186, !4222}
!5578 = !DILocalVariable(name: "ir", arg: 1, scope: !5575, file: !3, line: 206, type: !4222)
!5579 = !DILocation(line: 206, column: 51, scope: !5575)
!5580 = !DILocalVariable(name: "rc", scope: !5575, file: !3, line: 208, type: !186)
!5581 = !DILocation(line: 208, column: 6, scope: !5575)
!5582 = !DILocation(line: 215, column: 2, scope: !5575)
!5583 = !DILocation(line: 215, column: 6, scope: !5575)
!5584 = !DILocation(line: 215, column: 14, scope: !5575)
!5585 = !DILocation(line: 215, column: 21, scope: !5575)
!5586 = !DILocation(line: 215, column: 27, scope: !5575)
!5587 = !DILocation(line: 216, column: 2, scope: !5575)
!5588 = !DILocation(line: 216, column: 6, scope: !5575)
!5589 = !DILocation(line: 216, column: 14, scope: !5575)
!5590 = !DILocation(line: 216, column: 21, scope: !5575)
!5591 = !DILocation(line: 216, column: 31, scope: !5575)
!5592 = !DILocation(line: 217, column: 2, scope: !5575)
!5593 = !DILocation(line: 217, column: 6, scope: !5575)
!5594 = !DILocation(line: 217, column: 14, scope: !5575)
!5595 = !DILocation(line: 217, column: 21, scope: !5575)
!5596 = !DILocation(line: 217, column: 25, scope: !5575)
!5597 = !DILocation(line: 218, column: 16, scope: !5575)
!5598 = !DILocation(line: 218, column: 2, scope: !5575)
!5599 = !DILocation(line: 220, column: 2, scope: !5575)
!5600 = !DILocation(line: 220, column: 6, scope: !5575)
!5601 = !DILocation(line: 220, column: 14, scope: !5575)
!5602 = !DILocation(line: 220, column: 21, scope: !5575)
!5603 = !DILocation(line: 220, column: 25, scope: !5575)
!5604 = !DILocation(line: 221, column: 21, scope: !5575)
!5605 = !DILocation(line: 221, column: 7, scope: !5575)
!5606 = !DILocation(line: 221, column: 5, scope: !5575)
!5607 = !DILocation(line: 222, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 222, column: 6)
!5609 = !DILocation(line: 222, column: 6, scope: !5575)
!5610 = !DILocation(line: 223, column: 3, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 222, column: 10)
!5612 = !DILocation(line: 224, column: 3, scope: !5611)
!5613 = !DILocation(line: 227, column: 6, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 227, column: 6)
!5615 = !DILocation(line: 227, column: 10, scope: !5614)
!5616 = !DILocation(line: 227, column: 18, scope: !5614)
!5617 = !DILocation(line: 227, column: 6, scope: !5575)
!5618 = !DILocation(line: 228, column: 3, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 227, column: 27)
!5620 = !DILocation(line: 229, column: 6, scope: !5619)
!5621 = !DILocation(line: 230, column: 3, scope: !5619)
!5622 = !DILocation(line: 233, column: 2, scope: !5575)
!5623 = !DILocation(line: 233, column: 6, scope: !5575)
!5624 = !DILocation(line: 233, column: 14, scope: !5575)
!5625 = !DILocation(line: 234, column: 2, scope: !5575)
!5626 = !DILocation(line: 234, column: 6, scope: !5575)
!5627 = !DILocation(line: 234, column: 21, scope: !5575)
!5628 = !DILocation(line: 236, column: 2, scope: !5575)
!5629 = !DILocation(line: 236, column: 6, scope: !5575)
!5630 = !DILocation(line: 236, column: 14, scope: !5575)
!5631 = !DILocation(line: 236, column: 21, scope: !5575)
!5632 = !DILocation(line: 236, column: 25, scope: !5575)
!5633 = !DILocation(line: 238, column: 21, scope: !5575)
!5634 = !DILocation(line: 238, column: 7, scope: !5575)
!5635 = !DILocation(line: 238, column: 5, scope: !5575)
!5636 = !DILocation(line: 239, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 239, column: 6)
!5638 = !DILocation(line: 239, column: 6, scope: !5575)
!5639 = !DILocation(line: 240, column: 3, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 239, column: 10)
!5641 = !DILocation(line: 241, column: 3, scope: !5640)
!5642 = !DILocation(line: 244, column: 6, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 244, column: 6)
!5644 = !DILocation(line: 244, column: 10, scope: !5643)
!5645 = !DILocation(line: 244, column: 18, scope: !5643)
!5646 = !DILocation(line: 244, column: 6, scope: !5575)
!5647 = !DILocation(line: 245, column: 3, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 244, column: 30)
!5649 = !DILocation(line: 247, column: 3, scope: !5648)
!5650 = !DILocation(line: 247, column: 7, scope: !5648)
!5651 = !DILocation(line: 247, column: 15, scope: !5648)
!5652 = !DILocation(line: 248, column: 2, scope: !5648)
!5653 = !DILocation(line: 250, column: 2, scope: !5575)
!5654 = !DILocation(line: 250, column: 6, scope: !5575)
!5655 = !DILocation(line: 250, column: 14, scope: !5575)
!5656 = !DILocation(line: 250, column: 21, scope: !5575)
!5657 = !DILocation(line: 250, column: 25, scope: !5575)
!5658 = !DILocation(line: 252, column: 21, scope: !5575)
!5659 = !DILocation(line: 252, column: 7, scope: !5575)
!5660 = !DILocation(line: 252, column: 5, scope: !5575)
!5661 = !DILocation(line: 253, column: 6, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 253, column: 6)
!5663 = !DILocation(line: 253, column: 6, scope: !5575)
!5664 = !DILocation(line: 254, column: 3, scope: !5662)
!5665 = !DILabel(scope: !5575, name: "out", file: !3, line: 255)
!5666 = !DILocation(line: 255, column: 1, scope: !5575)
!5667 = !DILocation(line: 256, column: 9, scope: !5575)
!5668 = !DILocation(line: 256, column: 2, scope: !5575)
!5669 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5670, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!186, !182, !280, !327}
!5672 = !DILocalVariable(name: "dev", arg: 1, scope: !5669, file: !6, line: 912, type: !182)
!5673 = !DILocation(line: 912, column: 52, scope: !5669)
!5674 = !DILocalVariable(name: "buf", arg: 2, scope: !5669, file: !6, line: 912, type: !280)
!5675 = !DILocation(line: 912, column: 63, scope: !5669)
!5676 = !DILocalVariable(name: "size", arg: 3, scope: !5669, file: !6, line: 912, type: !327)
!5677 = !DILocation(line: 912, column: 75, scope: !5669)
!5678 = !DILocalVariable(name: "actual", scope: !5669, file: !6, line: 914, type: !186)
!5679 = !DILocation(line: 914, column: 6, scope: !5669)
!5680 = !DILocation(line: 915, column: 20, scope: !5669)
!5681 = !DILocation(line: 915, column: 25, scope: !5669)
!5682 = !DILocation(line: 915, column: 44, scope: !5669)
!5683 = !DILocation(line: 915, column: 49, scope: !5669)
!5684 = !DILocation(line: 915, column: 54, scope: !5669)
!5685 = !DILocation(line: 916, column: 6, scope: !5669)
!5686 = !DILocation(line: 916, column: 11, scope: !5669)
!5687 = !DILocation(line: 915, column: 11, scope: !5669)
!5688 = !DILocation(line: 915, column: 9, scope: !5669)
!5689 = !DILocation(line: 917, column: 10, scope: !5669)
!5690 = !DILocation(line: 917, column: 25, scope: !5669)
!5691 = !DILocation(line: 917, column: 20, scope: !5669)
!5692 = !DILocation(line: 917, column: 17, scope: !5669)
!5693 = !DILocation(line: 917, column: 9, scope: !5669)
!5694 = !DILocation(line: 917, column: 38, scope: !5669)
!5695 = !DILocation(line: 917, column: 2, scope: !5669)
!5696 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5697, file: !5697, line: 18, type: !5698, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5697 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5698 = !DISubroutineType(types: !5699)
!5699 = !{null, !5700, !5702}
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!5703 = !DILocalVariable(name: "dev", arg: 1, scope: !5696, file: !5697, line: 18, type: !5700)
!5704 = !DILocation(line: 18, column: 42, scope: !5696)
!5705 = !DILocalVariable(name: "id", arg: 2, scope: !5696, file: !5697, line: 18, type: !5702)
!5706 = !DILocation(line: 18, column: 64, scope: !5696)
!5707 = !DILocation(line: 20, column: 2, scope: !5696)
!5708 = !DILocation(line: 20, column: 6, scope: !5696)
!5709 = !DILocation(line: 20, column: 14, scope: !5696)
!5710 = !DILocation(line: 21, column: 15, scope: !5696)
!5711 = !DILocation(line: 21, column: 2, scope: !5696)
!5712 = !DILocation(line: 21, column: 6, scope: !5696)
!5713 = !DILocation(line: 21, column: 13, scope: !5696)
!5714 = !DILocation(line: 22, column: 16, scope: !5696)
!5715 = !DILocation(line: 22, column: 2, scope: !5696)
!5716 = !DILocation(line: 22, column: 6, scope: !5696)
!5717 = !DILocation(line: 22, column: 14, scope: !5696)
!5718 = !DILocation(line: 23, column: 16, scope: !5696)
!5719 = !DILocation(line: 23, column: 2, scope: !5696)
!5720 = !DILocation(line: 23, column: 6, scope: !5696)
!5721 = !DILocation(line: 23, column: 14, scope: !5696)
!5722 = !DILocation(line: 24, column: 1, scope: !5696)
!5723 = distinct !DISubprogram(name: "iguanair_open", scope: !3, file: !3, line: 363, type: !4573, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5724 = !DILocalVariable(name: "rdev", arg: 1, scope: !5723, file: !3, line: 363, type: !4226)
!5725 = !DILocation(line: 363, column: 41, scope: !5723)
!5726 = !DILocalVariable(name: "ir", scope: !5723, file: !3, line: 365, type: !4222)
!5727 = !DILocation(line: 365, column: 19, scope: !5723)
!5728 = !DILocation(line: 365, column: 24, scope: !5723)
!5729 = !DILocation(line: 365, column: 30, scope: !5723)
!5730 = !DILocalVariable(name: "rc", scope: !5723, file: !3, line: 366, type: !186)
!5731 = !DILocation(line: 366, column: 6, scope: !5723)
!5732 = !DILocation(line: 368, column: 25, scope: !5723)
!5733 = !DILocation(line: 368, column: 7, scope: !5723)
!5734 = !DILocation(line: 368, column: 5, scope: !5723)
!5735 = !DILocation(line: 369, column: 6, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 369, column: 6)
!5737 = !DILocation(line: 369, column: 9, scope: !5736)
!5738 = !DILocation(line: 369, column: 6, scope: !5723)
!5739 = !DILocation(line: 370, column: 3, scope: !5736)
!5740 = !DILocation(line: 370, column: 7, scope: !5736)
!5741 = !DILocation(line: 370, column: 19, scope: !5736)
!5742 = !DILocation(line: 372, column: 9, scope: !5723)
!5743 = !DILocation(line: 372, column: 2, scope: !5723)
!5744 = distinct !DISubprogram(name: "iguanair_close", scope: !3, file: !3, line: 375, type: !4577, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5745 = !DILocalVariable(name: "rdev", arg: 1, scope: !5744, file: !3, line: 375, type: !4226)
!5746 = !DILocation(line: 375, column: 43, scope: !5744)
!5747 = !DILocalVariable(name: "ir", scope: !5744, file: !3, line: 377, type: !4222)
!5748 = !DILocation(line: 377, column: 19, scope: !5744)
!5749 = !DILocation(line: 377, column: 24, scope: !5744)
!5750 = !DILocation(line: 377, column: 30, scope: !5744)
!5751 = !DILocalVariable(name: "rc", scope: !5744, file: !3, line: 378, type: !186)
!5752 = !DILocation(line: 378, column: 6, scope: !5744)
!5753 = !DILocation(line: 380, column: 25, scope: !5744)
!5754 = !DILocation(line: 380, column: 7, scope: !5744)
!5755 = !DILocation(line: 380, column: 5, scope: !5744)
!5756 = !DILocation(line: 381, column: 2, scope: !5744)
!5757 = !DILocation(line: 381, column: 6, scope: !5744)
!5758 = !DILocation(line: 381, column: 18, scope: !5744)
!5759 = !DILocation(line: 382, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 382, column: 6)
!5761 = !DILocation(line: 382, column: 9, scope: !5760)
!5762 = !DILocation(line: 382, column: 12, scope: !5760)
!5763 = !DILocation(line: 382, column: 15, scope: !5760)
!5764 = !DILocation(line: 382, column: 6, scope: !5744)
!5765 = !DILocation(line: 383, column: 3, scope: !5760)
!5766 = !DILocation(line: 384, column: 1, scope: !5744)
!5767 = distinct !DISubprogram(name: "iguanair_set_tx_mask", scope: !3, file: !3, line: 315, type: !5768, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!186, !4226, !561}
!5770 = !DILocalVariable(name: "dev", arg: 1, scope: !5767, file: !3, line: 315, type: !4226)
!5771 = !DILocation(line: 315, column: 48, scope: !5767)
!5772 = !DILocalVariable(name: "mask", arg: 2, scope: !5767, file: !3, line: 315, type: !561)
!5773 = !DILocation(line: 315, column: 62, scope: !5767)
!5774 = !DILocalVariable(name: "ir", scope: !5767, file: !3, line: 317, type: !4222)
!5775 = !DILocation(line: 317, column: 19, scope: !5767)
!5776 = !DILocation(line: 317, column: 24, scope: !5767)
!5777 = !DILocation(line: 317, column: 29, scope: !5767)
!5778 = !DILocation(line: 319, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 319, column: 6)
!5780 = !DILocation(line: 319, column: 11, scope: !5779)
!5781 = !DILocation(line: 319, column: 6, scope: !5767)
!5782 = !DILocation(line: 320, column: 3, scope: !5779)
!5783 = !DILocation(line: 322, column: 25, scope: !5767)
!5784 = !DILocation(line: 322, column: 30, scope: !5767)
!5785 = !DILocation(line: 322, column: 2, scope: !5767)
!5786 = !DILocation(line: 322, column: 6, scope: !5767)
!5787 = !DILocation(line: 322, column: 14, scope: !5767)
!5788 = !DILocation(line: 322, column: 23, scope: !5767)
!5789 = !DILocation(line: 324, column: 2, scope: !5767)
!5790 = !DILocation(line: 325, column: 1, scope: !5767)
!5791 = distinct !DISubprogram(name: "iguanair_set_tx_carrier", scope: !3, file: !3, line: 277, type: !5768, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5792 = !DILocalVariable(name: "dev", arg: 1, scope: !5791, file: !3, line: 277, type: !4226)
!5793 = !DILocation(line: 277, column: 51, scope: !5791)
!5794 = !DILocalVariable(name: "carrier", arg: 2, scope: !5791, file: !3, line: 277, type: !561)
!5795 = !DILocation(line: 277, column: 65, scope: !5791)
!5796 = !DILocalVariable(name: "ir", scope: !5791, file: !3, line: 279, type: !4222)
!5797 = !DILocation(line: 279, column: 19, scope: !5791)
!5798 = !DILocation(line: 279, column: 24, scope: !5791)
!5799 = !DILocation(line: 279, column: 29, scope: !5791)
!5800 = !DILocation(line: 281, column: 6, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 281, column: 6)
!5802 = !DILocation(line: 281, column: 14, scope: !5801)
!5803 = !DILocation(line: 281, column: 22, scope: !5801)
!5804 = !DILocation(line: 281, column: 25, scope: !5801)
!5805 = !DILocation(line: 281, column: 33, scope: !5801)
!5806 = !DILocation(line: 281, column: 6, scope: !5791)
!5807 = !DILocation(line: 282, column: 3, scope: !5801)
!5808 = !DILocation(line: 284, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 284, column: 6)
!5810 = !DILocation(line: 284, column: 17, scope: !5809)
!5811 = !DILocation(line: 284, column: 21, scope: !5809)
!5812 = !DILocation(line: 284, column: 14, scope: !5809)
!5813 = !DILocation(line: 284, column: 6, scope: !5791)
!5814 = !DILocalVariable(name: "cycles", scope: !5815, file: !3, line: 285, type: !561)
!5815 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 284, column: 30)
!5816 = !DILocation(line: 285, column: 12, scope: !5815)
!5817 = !DILocalVariable(name: "fours", scope: !5815, file: !3, line: 285, type: !561)
!5818 = !DILocation(line: 285, column: 20, scope: !5815)
!5819 = !DILocalVariable(name: "sevens", scope: !5815, file: !3, line: 285, type: !561)
!5820 = !DILocation(line: 285, column: 27, scope: !5815)
!5821 = !DILocation(line: 287, column: 17, scope: !5815)
!5822 = !DILocation(line: 287, column: 3, scope: !5815)
!5823 = !DILocation(line: 287, column: 7, scope: !5815)
!5824 = !DILocation(line: 287, column: 15, scope: !5815)
!5825 = !DILocalVariable(name: "__x", scope: !5826, file: !3, line: 289, type: !186)
!5826 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 289, column: 12)
!5827 = !DILocation(line: 289, column: 12, scope: !5826)
!5828 = !DILocalVariable(name: "__d", scope: !5826, file: !3, line: 289, type: !7)
!5829 = !DILocation(line: 290, column: 8, scope: !5815)
!5830 = !DILocation(line: 290, column: 12, scope: !5815)
!5831 = !DILocation(line: 289, column: 53, scope: !5815)
!5832 = !DILocation(line: 289, column: 10, scope: !5815)
!5833 = !DILocation(line: 297, column: 17, scope: !5815)
!5834 = !DILocation(line: 297, column: 15, scope: !5815)
!5835 = !DILocation(line: 297, column: 25, scope: !5815)
!5836 = !DILocation(line: 297, column: 10, scope: !5815)
!5837 = !DILocation(line: 298, column: 12, scope: !5815)
!5838 = !DILocation(line: 298, column: 21, scope: !5815)
!5839 = !DILocation(line: 298, column: 28, scope: !5815)
!5840 = !DILocation(line: 298, column: 19, scope: !5815)
!5841 = !DILocation(line: 298, column: 33, scope: !5815)
!5842 = !DILocation(line: 298, column: 9, scope: !5815)
!5843 = !DILocation(line: 308, column: 28, scope: !5815)
!5844 = !DILocation(line: 308, column: 26, scope: !5815)
!5845 = !DILocation(line: 308, column: 36, scope: !5815)
!5846 = !DILocation(line: 308, column: 23, scope: !5815)
!5847 = !DILocation(line: 308, column: 3, scope: !5815)
!5848 = !DILocation(line: 308, column: 7, scope: !5815)
!5849 = !DILocation(line: 308, column: 15, scope: !5815)
!5850 = !DILocation(line: 308, column: 21, scope: !5815)
!5851 = !DILocation(line: 309, column: 29, scope: !5815)
!5852 = !DILocation(line: 309, column: 27, scope: !5815)
!5853 = !DILocation(line: 309, column: 23, scope: !5815)
!5854 = !DILocation(line: 309, column: 3, scope: !5815)
!5855 = !DILocation(line: 309, column: 7, scope: !5815)
!5856 = !DILocation(line: 309, column: 15, scope: !5815)
!5857 = !DILocation(line: 309, column: 21, scope: !5815)
!5858 = !DILocation(line: 310, column: 2, scope: !5815)
!5859 = !DILocation(line: 312, column: 2, scope: !5791)
!5860 = !DILocation(line: 313, column: 1, scope: !5791)
!5861 = distinct !DISubprogram(name: "iguanair_tx", scope: !3, file: !3, line: 327, type: !4591, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5862 = !DILocalVariable(name: "dev", arg: 1, scope: !5861, file: !3, line: 327, type: !4226)
!5863 = !DILocation(line: 327, column: 39, scope: !5861)
!5864 = !DILocalVariable(name: "txbuf", arg: 2, scope: !5861, file: !3, line: 327, type: !2681)
!5865 = !DILocation(line: 327, column: 54, scope: !5861)
!5866 = !DILocalVariable(name: "count", arg: 3, scope: !5861, file: !3, line: 327, type: !7)
!5867 = !DILocation(line: 327, column: 70, scope: !5861)
!5868 = !DILocalVariable(name: "ir", scope: !5861, file: !3, line: 329, type: !4222)
!5869 = !DILocation(line: 329, column: 19, scope: !5861)
!5870 = !DILocation(line: 329, column: 24, scope: !5861)
!5871 = !DILocation(line: 329, column: 29, scope: !5861)
!5872 = !DILocalVariable(name: "i", scope: !5861, file: !3, line: 330, type: !7)
!5873 = !DILocation(line: 330, column: 15, scope: !5861)
!5874 = !DILocalVariable(name: "size", scope: !5861, file: !3, line: 330, type: !7)
!5875 = !DILocation(line: 330, column: 18, scope: !5861)
!5876 = !DILocalVariable(name: "p", scope: !5861, file: !3, line: 330, type: !7)
!5877 = !DILocation(line: 330, column: 24, scope: !5861)
!5878 = !DILocalVariable(name: "periods", scope: !5861, file: !3, line: 330, type: !7)
!5879 = !DILocation(line: 330, column: 27, scope: !5861)
!5880 = !DILocalVariable(name: "rc", scope: !5861, file: !3, line: 331, type: !186)
!5881 = !DILocation(line: 331, column: 6, scope: !5861)
!5882 = !DILocation(line: 334, column: 16, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 334, column: 2)
!5884 = !DILocation(line: 334, column: 9, scope: !5883)
!5885 = !DILocation(line: 334, column: 7, scope: !5883)
!5886 = !DILocation(line: 334, column: 21, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 334, column: 2)
!5888 = !DILocation(line: 334, column: 25, scope: !5887)
!5889 = !DILocation(line: 334, column: 23, scope: !5887)
!5890 = !DILocation(line: 334, column: 2, scope: !5883)
!5891 = !DILocalVariable(name: "__x", scope: !5892, file: !3, line: 335, type: !7)
!5892 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 335, column: 13)
!5893 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 334, column: 37)
!5894 = !DILocation(line: 335, column: 13, scope: !5892)
!5895 = !DILocalVariable(name: "__d", scope: !5892, file: !3, line: 335, type: !186)
!5896 = !DILocation(line: 335, column: 11, scope: !5893)
!5897 = !DILocation(line: 336, column: 3, scope: !5893)
!5898 = !DILocation(line: 336, column: 10, scope: !5893)
!5899 = !DILocalVariable(name: "__UNIQUE_ID___x237", scope: !5900, file: !3, line: 337, type: !7)
!5900 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 337, column: 8)
!5901 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 336, column: 19)
!5902 = !DILocation(line: 337, column: 8, scope: !5900)
!5903 = !DILocalVariable(name: "__UNIQUE_ID___y238", scope: !5900, file: !3, line: 337, type: !7)
!5904 = !DILocation(line: 337, column: 6, scope: !5901)
!5905 = !DILocation(line: 338, column: 8, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 338, column: 8)
!5907 = !DILocation(line: 338, column: 16, scope: !5906)
!5908 = !DILocation(line: 338, column: 20, scope: !5906)
!5909 = !DILocation(line: 338, column: 13, scope: !5906)
!5910 = !DILocation(line: 338, column: 8, scope: !5901)
!5911 = !DILocation(line: 339, column: 8, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 338, column: 29)
!5913 = !DILocation(line: 340, column: 5, scope: !5912)
!5914 = !DILocation(line: 342, column: 34, scope: !5901)
!5915 = !DILocation(line: 342, column: 40, scope: !5901)
!5916 = !DILocation(line: 342, column: 42, scope: !5901)
!5917 = !DILocation(line: 342, column: 39, scope: !5901)
!5918 = !DILocation(line: 342, column: 36, scope: !5901)
!5919 = !DILocation(line: 342, column: 4, scope: !5901)
!5920 = !DILocation(line: 342, column: 8, scope: !5901)
!5921 = !DILocation(line: 342, column: 16, scope: !5901)
!5922 = !DILocation(line: 342, column: 28, scope: !5901)
!5923 = !DILocation(line: 342, column: 32, scope: !5901)
!5924 = !DILocation(line: 343, column: 15, scope: !5901)
!5925 = !DILocation(line: 343, column: 12, scope: !5901)
!5926 = distinct !{!5926, !5897, !5927}
!5927 = !DILocation(line: 344, column: 3, scope: !5893)
!5928 = !DILocation(line: 345, column: 2, scope: !5893)
!5929 = !DILocation(line: 334, column: 33, scope: !5887)
!5930 = !DILocation(line: 334, column: 2, scope: !5887)
!5931 = distinct !{!5931, !5890, !5932}
!5932 = !DILocation(line: 345, column: 2, scope: !5883)
!5933 = !DILocation(line: 347, column: 2, scope: !5861)
!5934 = !DILocation(line: 347, column: 6, scope: !5861)
!5935 = !DILocation(line: 347, column: 14, scope: !5861)
!5936 = !DILocation(line: 347, column: 21, scope: !5861)
!5937 = !DILocation(line: 347, column: 27, scope: !5861)
!5938 = !DILocation(line: 348, column: 2, scope: !5861)
!5939 = !DILocation(line: 348, column: 6, scope: !5861)
!5940 = !DILocation(line: 348, column: 14, scope: !5861)
!5941 = !DILocation(line: 348, column: 21, scope: !5861)
!5942 = !DILocation(line: 348, column: 31, scope: !5861)
!5943 = !DILocation(line: 349, column: 2, scope: !5861)
!5944 = !DILocation(line: 349, column: 6, scope: !5861)
!5945 = !DILocation(line: 349, column: 14, scope: !5861)
!5946 = !DILocation(line: 349, column: 21, scope: !5861)
!5947 = !DILocation(line: 349, column: 25, scope: !5861)
!5948 = !DILocation(line: 350, column: 23, scope: !5861)
!5949 = !DILocation(line: 350, column: 2, scope: !5861)
!5950 = !DILocation(line: 350, column: 6, scope: !5861)
!5951 = !DILocation(line: 350, column: 14, scope: !5861)
!5952 = !DILocation(line: 350, column: 21, scope: !5861)
!5953 = !DILocation(line: 352, column: 2, scope: !5861)
!5954 = !DILocation(line: 352, column: 6, scope: !5861)
!5955 = !DILocation(line: 352, column: 18, scope: !5861)
!5956 = !DILocation(line: 354, column: 21, scope: !5861)
!5957 = !DILocation(line: 354, column: 47, scope: !5861)
!5958 = !DILocation(line: 354, column: 45, scope: !5861)
!5959 = !DILocation(line: 354, column: 25, scope: !5861)
!5960 = !DILocation(line: 354, column: 7, scope: !5861)
!5961 = !DILocation(line: 354, column: 5, scope: !5861)
!5962 = !DILocation(line: 356, column: 6, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 356, column: 6)
!5964 = !DILocation(line: 356, column: 9, scope: !5963)
!5965 = !DILocation(line: 356, column: 14, scope: !5963)
!5966 = !DILocation(line: 356, column: 17, scope: !5963)
!5967 = !DILocation(line: 356, column: 21, scope: !5963)
!5968 = !DILocation(line: 356, column: 6, scope: !5861)
!5969 = !DILocation(line: 357, column: 6, scope: !5963)
!5970 = !DILocation(line: 357, column: 3, scope: !5963)
!5971 = !DILabel(scope: !5861, name: "out", file: !3, line: 359)
!5972 = !DILocation(line: 359, column: 1, scope: !5861)
!5973 = !DILocation(line: 360, column: 9, scope: !5861)
!5974 = !DILocation(line: 360, column: 14, scope: !5861)
!5975 = !DILocation(line: 360, column: 19, scope: !5861)
!5976 = !DILocation(line: 360, column: 2, scope: !5861)
!5977 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5978, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{null, !3998, !181}
!5980 = !DILocalVariable(name: "intf", arg: 1, scope: !5977, file: !6, line: 268, type: !3998)
!5981 = !DILocation(line: 268, column: 59, scope: !5977)
!5982 = !DILocalVariable(name: "data", arg: 2, scope: !5977, file: !6, line: 268, type: !181)
!5983 = !DILocation(line: 268, column: 71, scope: !5977)
!5984 = !DILocation(line: 270, column: 19, scope: !5977)
!5985 = !DILocation(line: 270, column: 25, scope: !5977)
!5986 = !DILocation(line: 270, column: 30, scope: !5977)
!5987 = !DILocation(line: 270, column: 2, scope: !5977)
!5988 = !DILocation(line: 271, column: 1, scope: !5977)
!5989 = distinct !DISubprogram(name: "get_order", scope: !5990, file: !5990, line: 29, type: !5991, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5990 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!186, !330}
!5993 = !DILocalVariable(name: "x", arg: 1, scope: !5994, file: !5995, line: 366, type: !424)
!5994 = distinct !DISubprogram(name: "fls64", scope: !5995, file: !5995, line: 366, type: !5996, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5995 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5996 = !DISubroutineType(types: !5997)
!5997 = !{!186, !424}
!5998 = !DILocation(line: 366, column: 40, scope: !5994, inlinedAt: !5999)
!5999 = distinct !DILocation(line: 46, column: 9, scope: !5989)
!6000 = !DILocalVariable(name: "bitpos", scope: !5994, file: !5995, line: 368, type: !186)
!6001 = !DILocation(line: 368, column: 6, scope: !5994, inlinedAt: !5999)
!6002 = !DILocalVariable(name: "size", arg: 1, scope: !5989, file: !5990, line: 29, type: !330)
!6003 = !DILocation(line: 29, column: 63, scope: !5989)
!6004 = !DILocation(line: 31, column: 27, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5989, file: !5990, line: 31, column: 6)
!6006 = !DILocation(line: 31, column: 6, scope: !6005)
!6007 = !DILocation(line: 31, column: 6, scope: !5989)
!6008 = !DILocation(line: 32, column: 8, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6010, file: !5990, line: 32, column: 7)
!6010 = distinct !DILexicalBlock(scope: !6005, file: !5990, line: 31, column: 34)
!6011 = !DILocation(line: 32, column: 7, scope: !6010)
!6012 = !DILocation(line: 33, column: 4, scope: !6009)
!6013 = !DILocation(line: 35, column: 7, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6010, file: !5990, line: 35, column: 7)
!6015 = !DILocation(line: 35, column: 12, scope: !6014)
!6016 = !DILocation(line: 35, column: 7, scope: !6010)
!6017 = !DILocation(line: 36, column: 4, scope: !6014)
!6018 = !DILocation(line: 38, column: 10, scope: !6010)
!6019 = !DILocation(line: 38, column: 28, scope: !6010)
!6020 = !DILocation(line: 38, column: 41, scope: !6010)
!6021 = !DILocation(line: 38, column: 3, scope: !6010)
!6022 = !DILocation(line: 41, column: 6, scope: !5989)
!6023 = !DILocation(line: 42, column: 7, scope: !5989)
!6024 = !DILocation(line: 46, column: 15, scope: !5989)
!6025 = !DILocation(line: 374, column: 2, scope: !5994, inlinedAt: !5999)
!6026 = !DILocation(line: 376, column: 14, scope: !5994, inlinedAt: !5999)
!6027 = !{i32 388471}
!6028 = !DILocation(line: 377, column: 9, scope: !5994, inlinedAt: !5999)
!6029 = !DILocation(line: 377, column: 16, scope: !5994, inlinedAt: !5999)
!6030 = !DILocation(line: 46, column: 2, scope: !5989)
!6031 = !DILocation(line: 48, column: 1, scope: !5989)
!6032 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6033, file: !6033, line: 30, type: !6034, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6033 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!186, !423}
!6036 = !DILocation(line: 366, column: 40, scope: !5994, inlinedAt: !6037)
!6037 = distinct !DILocation(line: 32, column: 9, scope: !6032)
!6038 = !DILocation(line: 368, column: 6, scope: !5994, inlinedAt: !6037)
!6039 = !DILocalVariable(name: "n", arg: 1, scope: !6032, file: !6033, line: 30, type: !423)
!6040 = !DILocation(line: 30, column: 21, scope: !6032)
!6041 = !DILocation(line: 32, column: 15, scope: !6032)
!6042 = !DILocation(line: 374, column: 2, scope: !5994, inlinedAt: !6037)
!6043 = !DILocation(line: 376, column: 14, scope: !5994, inlinedAt: !6037)
!6044 = !DILocation(line: 377, column: 9, scope: !5994, inlinedAt: !6037)
!6045 = !DILocation(line: 377, column: 16, scope: !5994, inlinedAt: !6037)
!6046 = !DILocation(line: 32, column: 18, scope: !6032)
!6047 = !DILocation(line: 32, column: 2, scope: !6032)
!6048 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6049, file: !6049, line: 137, type: !6050, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6049 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6050 = !DISubroutineType(types: !6051)
!6051 = !{!181, !937, !2125, !327, !179}
!6052 = !DILocalVariable(name: "s", arg: 1, scope: !6048, file: !6049, line: 137, type: !937)
!6053 = !DILocation(line: 137, column: 54, scope: !6048)
!6054 = !DILocalVariable(name: "object", arg: 2, scope: !6048, file: !6049, line: 137, type: !2125)
!6055 = !DILocation(line: 137, column: 69, scope: !6048)
!6056 = !DILocalVariable(name: "size", arg: 3, scope: !6048, file: !6049, line: 138, type: !327)
!6057 = !DILocation(line: 138, column: 12, scope: !6048)
!6058 = !DILocalVariable(name: "flags", arg: 4, scope: !6048, file: !6049, line: 138, type: !179)
!6059 = !DILocation(line: 138, column: 24, scope: !6048)
!6060 = !DILocation(line: 140, column: 17, scope: !6048)
!6061 = !DILocation(line: 140, column: 2, scope: !6048)
!6062 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !101, file: !101, line: 542, type: !5379, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6063 = !DILocalVariable(name: "epd", arg: 1, scope: !6062, file: !101, line: 543, type: !5381)
!6064 = !DILocation(line: 543, column: 43, scope: !6062)
!6065 = !DILocation(line: 545, column: 11, scope: !6062)
!6066 = !DILocation(line: 545, column: 16, scope: !6062)
!6067 = !DILocation(line: 545, column: 29, scope: !6062)
!6068 = !DILocation(line: 545, column: 59, scope: !6062)
!6069 = !DILocation(line: 545, column: 2, scope: !6062)
!6070 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !101, file: !101, line: 492, type: !5379, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6071 = !DILocalVariable(name: "epd", arg: 1, scope: !6070, file: !101, line: 492, type: !5381)
!6072 = !DILocation(line: 492, column: 77, scope: !6070)
!6073 = !DILocation(line: 494, column: 11, scope: !6070)
!6074 = !DILocation(line: 494, column: 16, scope: !6070)
!6075 = !DILocation(line: 494, column: 33, scope: !6070)
!6076 = !DILocation(line: 494, column: 58, scope: !6070)
!6077 = !DILocation(line: 494, column: 2, scope: !6070)
!6078 = distinct !DISubprogram(name: "usb_endpoint_dir_out", scope: !101, file: !101, line: 503, type: !5379, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6079 = !DILocalVariable(name: "epd", arg: 1, scope: !6078, file: !101, line: 504, type: !5381)
!6080 = !DILocation(line: 504, column: 43, scope: !6078)
!6081 = !DILocation(line: 506, column: 11, scope: !6078)
!6082 = !DILocation(line: 506, column: 16, scope: !6078)
!6083 = !DILocation(line: 506, column: 33, scope: !6078)
!6084 = !DILocation(line: 506, column: 58, scope: !6078)
!6085 = !DILocation(line: 506, column: 2, scope: !6078)
!6086 = distinct !DISubprogram(name: "process_ir_data", scope: !3, file: !3, line: 79, type: !6087, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{null, !4222, !7}
!6089 = !DILocalVariable(name: "ir", arg: 1, scope: !6086, file: !3, line: 79, type: !4222)
!6090 = !DILocation(line: 79, column: 46, scope: !6086)
!6091 = !DILocalVariable(name: "len", arg: 2, scope: !6086, file: !3, line: 79, type: !7)
!6092 = !DILocation(line: 79, column: 59, scope: !6086)
!6093 = !DILocation(line: 81, column: 6, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 81, column: 6)
!6095 = !DILocation(line: 81, column: 10, scope: !6094)
!6096 = !DILocation(line: 81, column: 15, scope: !6094)
!6097 = !DILocation(line: 81, column: 18, scope: !6094)
!6098 = !DILocation(line: 81, column: 22, scope: !6094)
!6099 = !DILocation(line: 81, column: 32, scope: !6094)
!6100 = !DILocation(line: 81, column: 37, scope: !6094)
!6101 = !DILocation(line: 81, column: 40, scope: !6094)
!6102 = !DILocation(line: 81, column: 44, scope: !6094)
!6103 = !DILocation(line: 81, column: 54, scope: !6094)
!6104 = !DILocation(line: 81, column: 6, scope: !6086)
!6105 = !DILocation(line: 82, column: 11, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 81, column: 60)
!6107 = !DILocation(line: 82, column: 15, scope: !6106)
!6108 = !DILocation(line: 82, column: 3, scope: !6106)
!6109 = !DILocation(line: 84, column: 8, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 84, column: 8)
!6111 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 82, column: 26)
!6112 = !DILocation(line: 84, column: 12, scope: !6110)
!6113 = !DILocation(line: 84, column: 8, scope: !6111)
!6114 = !DILocation(line: 85, column: 20, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 84, column: 18)
!6116 = !DILocation(line: 85, column: 24, scope: !6115)
!6117 = !DILocation(line: 85, column: 34, scope: !6115)
!6118 = !DILocation(line: 86, column: 8, scope: !6115)
!6119 = !DILocation(line: 86, column: 12, scope: !6115)
!6120 = !DILocation(line: 85, column: 40, scope: !6115)
!6121 = !DILocation(line: 85, column: 19, scope: !6115)
!6122 = !DILocation(line: 85, column: 5, scope: !6115)
!6123 = !DILocation(line: 85, column: 9, scope: !6115)
!6124 = !DILocation(line: 85, column: 17, scope: !6115)
!6125 = !DILocation(line: 87, column: 15, scope: !6115)
!6126 = !DILocation(line: 87, column: 19, scope: !6115)
!6127 = !DILocation(line: 87, column: 5, scope: !6115)
!6128 = !DILocation(line: 88, column: 4, scope: !6115)
!6129 = !DILocation(line: 89, column: 4, scope: !6111)
!6130 = !DILocation(line: 91, column: 8, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 91, column: 8)
!6132 = !DILocation(line: 91, column: 12, scope: !6131)
!6133 = !DILocation(line: 91, column: 8, scope: !6111)
!6134 = !DILocation(line: 92, column: 19, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 91, column: 18)
!6136 = !DILocation(line: 92, column: 23, scope: !6135)
!6137 = !DILocation(line: 92, column: 5, scope: !6135)
!6138 = !DILocation(line: 92, column: 9, scope: !6135)
!6139 = !DILocation(line: 92, column: 17, scope: !6135)
!6140 = !DILocation(line: 93, column: 15, scope: !6135)
!6141 = !DILocation(line: 93, column: 19, scope: !6135)
!6142 = !DILocation(line: 93, column: 5, scope: !6135)
!6143 = !DILocation(line: 94, column: 4, scope: !6135)
!6144 = !DILocation(line: 95, column: 4, scope: !6111)
!6145 = !DILocation(line: 97, column: 8, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 97, column: 8)
!6147 = !DILocation(line: 97, column: 12, scope: !6146)
!6148 = !DILocation(line: 97, column: 8, scope: !6111)
!6149 = !DILocation(line: 98, column: 26, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 97, column: 17)
!6151 = !DILocation(line: 98, column: 30, scope: !6150)
!6152 = !DILocation(line: 98, column: 5, scope: !6150)
!6153 = !DILocation(line: 98, column: 9, scope: !6150)
!6154 = !DILocation(line: 98, column: 24, scope: !6150)
!6155 = !DILocation(line: 99, column: 15, scope: !6150)
!6156 = !DILocation(line: 99, column: 19, scope: !6150)
!6157 = !DILocation(line: 99, column: 5, scope: !6150)
!6158 = !DILocation(line: 100, column: 4, scope: !6150)
!6159 = !DILocation(line: 101, column: 4, scope: !6111)
!6160 = !DILocation(line: 103, column: 4, scope: !6111)
!6161 = !DILocation(line: 103, column: 8, scope: !6111)
!6162 = !DILocation(line: 103, column: 20, scope: !6111)
!6163 = !DILocation(line: 108, column: 14, scope: !6111)
!6164 = !DILocation(line: 108, column: 18, scope: !6111)
!6165 = !DILocation(line: 108, column: 4, scope: !6111)
!6166 = !DILocation(line: 109, column: 4, scope: !6111)
!6167 = !DILocation(line: 111, column: 4, scope: !6111)
!6168 = !DILocation(line: 112, column: 23, scope: !6111)
!6169 = !DILocation(line: 112, column: 27, scope: !6111)
!6170 = !DILocation(line: 112, column: 4, scope: !6111)
!6171 = !DILocation(line: 113, column: 4, scope: !6111)
!6172 = !DILocation(line: 115, column: 4, scope: !6111)
!6173 = !DILocation(line: 117, column: 4, scope: !6111)
!6174 = !DILocation(line: 119, column: 2, scope: !6106)
!6175 = !DILocation(line: 119, column: 13, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 119, column: 13)
!6177 = !DILocation(line: 119, column: 17, scope: !6176)
!6178 = !DILocation(line: 119, column: 13, scope: !6094)
!6179 = !DILocalVariable(name: "rawir", scope: !6180, file: !3, line: 120, type: !6181)
!6180 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 119, column: 23)
!6181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event", file: !158, line: 299, size: 64, elements: !6182)
!6182 = !{!6183, !6188, !6189, !6190, !6191, !6192}
!6183 = !DIDerivedType(tag: DW_TAG_member, scope: !6181, file: !158, line: 300, baseType: !6184, size: 32)
!6184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6181, file: !158, line: 300, size: 32, elements: !6185)
!6185 = !{!6186, !6187}
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !6184, file: !158, line: 301, baseType: !193, size: 32)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "carrier", scope: !6184, file: !158, line: 302, baseType: !193, size: 32)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "duty_cycle", scope: !6181, file: !158, line: 304, baseType: !1354, size: 8, offset: 32)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "pulse", scope: !6181, file: !158, line: 306, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 40)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6181, file: !158, line: 307, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 40)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !6181, file: !158, line: 308, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 40)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_report", scope: !6181, file: !158, line: 309, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 40)
!6193 = !DILocation(line: 120, column: 23, scope: !6180)
!6194 = !DILocalVariable(name: "i", scope: !6180, file: !3, line: 121, type: !7)
!6195 = !DILocation(line: 121, column: 12, scope: !6180)
!6196 = !DILocalVariable(name: "event", scope: !6180, file: !3, line: 122, type: !492)
!6197 = !DILocation(line: 122, column: 8, scope: !6180)
!6198 = !DILocation(line: 124, column: 10, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 124, column: 3)
!6200 = !DILocation(line: 124, column: 8, scope: !6199)
!6201 = !DILocation(line: 124, column: 15, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6199, file: !3, line: 124, column: 3)
!6203 = !DILocation(line: 124, column: 17, scope: !6202)
!6204 = !DILocation(line: 124, column: 3, scope: !6199)
!6205 = !DILocation(line: 125, column: 8, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 125, column: 8)
!6207 = distinct !DILexicalBlock(scope: !6202, file: !3, line: 124, column: 27)
!6208 = !DILocation(line: 125, column: 12, scope: !6206)
!6209 = !DILocation(line: 125, column: 19, scope: !6206)
!6210 = !DILocation(line: 125, column: 22, scope: !6206)
!6211 = !DILocation(line: 125, column: 8, scope: !6207)
!6212 = !DILocation(line: 126, column: 11, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 125, column: 31)
!6214 = !DILocation(line: 126, column: 17, scope: !6213)
!6215 = !DILocation(line: 127, column: 11, scope: !6213)
!6216 = !DILocation(line: 127, column: 20, scope: !6213)
!6217 = !DILocation(line: 128, column: 4, scope: !6213)
!6218 = !DILocation(line: 129, column: 20, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 128, column: 11)
!6220 = !DILocation(line: 129, column: 24, scope: !6219)
!6221 = !DILocation(line: 129, column: 31, scope: !6219)
!6222 = !DILocation(line: 129, column: 34, scope: !6219)
!6223 = !DILocation(line: 129, column: 42, scope: !6219)
!6224 = !DILocation(line: 129, column: 11, scope: !6219)
!6225 = !DILocation(line: 129, column: 17, scope: !6219)
!6226 = !DILocation(line: 130, column: 24, scope: !6219)
!6227 = !DILocation(line: 130, column: 28, scope: !6219)
!6228 = !DILocation(line: 130, column: 35, scope: !6219)
!6229 = !DILocation(line: 130, column: 38, scope: !6219)
!6230 = !DILocation(line: 130, column: 46, scope: !6219)
!6231 = !DILocation(line: 130, column: 51, scope: !6219)
!6232 = !DILocation(line: 130, column: 11, scope: !6219)
!6233 = !DILocation(line: 130, column: 20, scope: !6219)
!6234 = !DILocation(line: 134, column: 39, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 134, column: 8)
!6236 = !DILocation(line: 134, column: 43, scope: !6235)
!6237 = !DILocation(line: 134, column: 8, scope: !6235)
!6238 = !DILocation(line: 134, column: 8, scope: !6207)
!6239 = !DILocation(line: 135, column: 11, scope: !6235)
!6240 = !DILocation(line: 135, column: 5, scope: !6235)
!6241 = !DILocation(line: 136, column: 3, scope: !6207)
!6242 = !DILocation(line: 124, column: 23, scope: !6202)
!6243 = !DILocation(line: 124, column: 3, scope: !6202)
!6244 = distinct !{!6244, !6204, !6245}
!6245 = !DILocation(line: 136, column: 3, scope: !6199)
!6246 = !DILocation(line: 138, column: 7, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 138, column: 7)
!6248 = !DILocation(line: 138, column: 7, scope: !6180)
!6249 = !DILocation(line: 139, column: 24, scope: !6247)
!6250 = !DILocation(line: 139, column: 28, scope: !6247)
!6251 = !DILocation(line: 139, column: 4, scope: !6247)
!6252 = !DILocation(line: 140, column: 2, scope: !6180)
!6253 = !DILocation(line: 141, column: 1, scope: !6086)
!6254 = distinct !DISubprogram(name: "ir_raw_event_reset", scope: !158, file: !158, line: 329, type: !4577, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6255 = !DILocalVariable(name: "dev", arg: 1, scope: !6254, file: !158, line: 329, type: !4226)
!6256 = !DILocation(line: 329, column: 54, scope: !6254)
!6257 = !DILocation(line: 331, column: 21, scope: !6254)
!6258 = !DILocation(line: 331, column: 50, scope: !6254)
!6259 = !DILocation(line: 331, column: 2, scope: !6254)
!6260 = !DILocation(line: 332, column: 2, scope: !6254)
!6261 = !DILocation(line: 332, column: 7, scope: !6254)
!6262 = !DILocation(line: 332, column: 12, scope: !6254)
!6263 = !DILocation(line: 333, column: 22, scope: !6254)
!6264 = !DILocation(line: 333, column: 2, scope: !6254)
!6265 = !DILocation(line: 334, column: 1, scope: !6254)
!6266 = distinct !DISubprogram(name: "iguanair_send", scope: !3, file: !3, line: 189, type: !6267, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!186, !4222, !7}
!6269 = !DILocalVariable(name: "ir", arg: 1, scope: !6266, file: !3, line: 189, type: !4222)
!6270 = !DILocation(line: 189, column: 43, scope: !6266)
!6271 = !DILocalVariable(name: "size", arg: 2, scope: !6266, file: !3, line: 189, type: !7)
!6272 = !DILocation(line: 189, column: 56, scope: !6266)
!6273 = !DILocalVariable(name: "rc", scope: !6266, file: !3, line: 191, type: !186)
!6274 = !DILocation(line: 191, column: 6, scope: !6266)
!6275 = !DILocation(line: 193, column: 21, scope: !6266)
!6276 = !DILocation(line: 193, column: 25, scope: !6266)
!6277 = !DILocation(line: 193, column: 2, scope: !6266)
!6278 = !DILocation(line: 195, column: 40, scope: !6266)
!6279 = !DILocation(line: 195, column: 2, scope: !6266)
!6280 = !DILocation(line: 195, column: 6, scope: !6266)
!6281 = !DILocation(line: 195, column: 15, scope: !6266)
!6282 = !DILocation(line: 195, column: 38, scope: !6266)
!6283 = !DILocation(line: 196, column: 22, scope: !6266)
!6284 = !DILocation(line: 196, column: 26, scope: !6266)
!6285 = !DILocation(line: 196, column: 7, scope: !6266)
!6286 = !DILocation(line: 196, column: 5, scope: !6266)
!6287 = !DILocation(line: 197, column: 6, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 197, column: 6)
!6289 = !DILocation(line: 197, column: 6, scope: !6266)
!6290 = !DILocation(line: 198, column: 10, scope: !6288)
!6291 = !DILocation(line: 198, column: 3, scope: !6288)
!6292 = !DILocation(line: 200, column: 35, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 200, column: 6)
!6294 = !DILocation(line: 200, column: 39, scope: !6293)
!6295 = !DILocation(line: 200, column: 6, scope: !6293)
!6296 = !DILocation(line: 200, column: 60, scope: !6293)
!6297 = !DILocation(line: 200, column: 6, scope: !6266)
!6298 = !DILocation(line: 201, column: 3, scope: !6293)
!6299 = !DILocation(line: 203, column: 9, scope: !6266)
!6300 = !DILocation(line: 203, column: 2, scope: !6266)
!6301 = !DILocation(line: 204, column: 1, scope: !6266)
!6302 = distinct !DISubprogram(name: "reinit_completion", scope: !1505, file: !1505, line: 98, type: !4196, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6303 = !DILocalVariable(name: "x", arg: 1, scope: !6302, file: !1505, line: 98, type: !1503)
!6304 = !DILocation(line: 98, column: 57, scope: !6302)
!6305 = !DILocation(line: 100, column: 2, scope: !6302)
!6306 = !DILocation(line: 100, column: 5, scope: !6302)
!6307 = !DILocation(line: 100, column: 10, scope: !6302)
!6308 = !DILocation(line: 101, column: 1, scope: !6302)
!6309 = distinct !DISubprogram(name: "iguanair_receiver", scope: !3, file: !3, line: 259, type: !6310, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!186, !4222, !492}
!6312 = !DILocalVariable(name: "ir", arg: 1, scope: !6309, file: !3, line: 259, type: !4222)
!6313 = !DILocation(line: 259, column: 47, scope: !6309)
!6314 = !DILocalVariable(name: "enable", arg: 2, scope: !6309, file: !3, line: 259, type: !492)
!6315 = !DILocation(line: 259, column: 56, scope: !6309)
!6316 = !DILocation(line: 261, column: 2, scope: !6309)
!6317 = !DILocation(line: 261, column: 6, scope: !6309)
!6318 = !DILocation(line: 261, column: 14, scope: !6309)
!6319 = !DILocation(line: 261, column: 21, scope: !6309)
!6320 = !DILocation(line: 261, column: 27, scope: !6309)
!6321 = !DILocation(line: 262, column: 2, scope: !6309)
!6322 = !DILocation(line: 262, column: 6, scope: !6309)
!6323 = !DILocation(line: 262, column: 14, scope: !6309)
!6324 = !DILocation(line: 262, column: 21, scope: !6309)
!6325 = !DILocation(line: 262, column: 31, scope: !6309)
!6326 = !DILocation(line: 263, column: 27, scope: !6309)
!6327 = !DILocation(line: 263, column: 2, scope: !6309)
!6328 = !DILocation(line: 263, column: 6, scope: !6309)
!6329 = !DILocation(line: 263, column: 14, scope: !6309)
!6330 = !DILocation(line: 263, column: 21, scope: !6309)
!6331 = !DILocation(line: 263, column: 25, scope: !6309)
!6332 = !DILocation(line: 265, column: 6, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 265, column: 6)
!6334 = !DILocation(line: 265, column: 6, scope: !6309)
!6335 = !DILocation(line: 266, column: 22, scope: !6333)
!6336 = !DILocation(line: 266, column: 26, scope: !6333)
!6337 = !DILocation(line: 266, column: 3, scope: !6333)
!6338 = !DILocation(line: 268, column: 23, scope: !6309)
!6339 = !DILocation(line: 268, column: 9, scope: !6309)
!6340 = !DILocation(line: 268, column: 2, scope: !6309)
!6341 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !6342, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{null, !215, !181}
!6344 = !DILocalVariable(name: "dev", arg: 1, scope: !6341, file: !80, line: 660, type: !215)
!6345 = !DILocation(line: 660, column: 51, scope: !6341)
!6346 = !DILocalVariable(name: "data", arg: 2, scope: !6341, file: !80, line: 660, type: !181)
!6347 = !DILocation(line: 660, column: 62, scope: !6341)
!6348 = !DILocation(line: 662, column: 21, scope: !6341)
!6349 = !DILocation(line: 662, column: 2, scope: !6341)
!6350 = !DILocation(line: 662, column: 7, scope: !6341)
!6351 = !DILocation(line: 662, column: 19, scope: !6341)
!6352 = !DILocation(line: 663, column: 1, scope: !6341)
!6353 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6354, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6354 = !DISubroutineType(types: !6355)
!6355 = !{!181, !3998}
!6356 = !DILocalVariable(name: "intf", arg: 1, scope: !6353, file: !6, line: 263, type: !3998)
!6357 = !DILocation(line: 263, column: 60, scope: !6353)
!6358 = !DILocation(line: 265, column: 26, scope: !6353)
!6359 = !DILocation(line: 265, column: 32, scope: !6353)
!6360 = !DILocation(line: 265, column: 9, scope: !6353)
!6361 = !DILocation(line: 265, column: 2, scope: !6353)
!6362 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !6363, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!181, !3715}
!6365 = !DILocalVariable(name: "dev", arg: 1, scope: !6362, file: !80, line: 655, type: !3715)
!6366 = !DILocation(line: 655, column: 58, scope: !6362)
!6367 = !DILocation(line: 657, column: 9, scope: !6362)
!6368 = !DILocation(line: 657, column: 14, scope: !6362)
!6369 = !DILocation(line: 657, column: 2, scope: !6362)
