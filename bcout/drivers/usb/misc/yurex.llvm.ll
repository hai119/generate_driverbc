; ModuleID = '../bcout/drivers/usb/misc/yurex.llvm.bc'
source_filename = "drivers/usb/misc/yurex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_yurex_driver_init6:\09\09\09"
module asm ".long\09yurex_driver_init - .\09\09\09"
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
%struct.usb_class_driver = type { i8*, i8* (%struct.device*, i16*)*, %struct.file_operations*, i32 }
%struct.kmem_cache = type opaque
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
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.usb_yurex = type { %struct.usb_device*, %struct.usb_interface*, i8, %struct.urb*, i8*, %struct.urb*, %struct.usb_ctrlrequest*, i8*, %struct.kref, %struct.mutex, i8, %struct.fasync_struct*, %struct.wait_queue_head, %struct.spinlock, i64 }
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
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__UNIQUE_ID___addressable_yurex_driver_init216 = internal global i8* bitcast (i32 ()* @yurex_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@yurex_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @yurex_probe, void (%struct.usb_interface*)* @yurex_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @yurex_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !3917
@__exitcall_yurex_driver_exit = internal global void ()* @yurex_driver_exit, section ".exitcall.exit", align 8, !dbg !3902
@__UNIQUE_ID_file217 = internal constant [34 x i8] c"yurex.file=drivers/usb/misc/yurex\00", section ".modinfo", align 1, !dbg !3907
@__UNIQUE_ID_license218 = internal constant [18 x i8] c"yurex.license=GPL\00", section ".modinfo", align 1, !dbg !3912
@.str = private unnamed_addr constant [6 x i8] c"yurex\00", align 1
@yurex_table = internal global [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3141, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3993
@yurex_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3978
@.str.1 = private unnamed_addr constant [15 x i8] c"&dev->io_mutex\00", align 1
@yurex_probe.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3981
@.str.3 = private unnamed_addr constant [12 x i8] c"&dev->waitq\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not find endpoints\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not allocate cntl_buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not allocate int_buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Could not submitting URB\0A\00", align 1
@yurex_class = internal global %struct.usb_class_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* (%struct.device*, i16*)* null, %struct.file_operations* @yurex_fops, i32 192 }, align 8, !dbg !3983
@.str.8 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"USB YUREX device now attached to Yurex #%d\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%s - control failed: %d\0A\00", align 1
@__func__.yurex_control_callback = private unnamed_addr constant [23 x i8] c"yurex_control_callback\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"%s - overflow with length %d, actual length is %d\0A\00", align 1
@__func__.yurex_interrupt = private unnamed_addr constant [16 x i8] c"yurex_interrupt\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s - unknown status received: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%s - usb_submit_urb failed: %d\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"yurex%d\00", align 1
@yurex_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @default_llseek, i64 (%struct.file*, i8*, i64, i64*)* @yurex_read, i64 (%struct.file*, i8*, i64, i64*)* @yurex_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @yurex_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @yurex_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @yurex_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3991
@.str.16 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"drivers/usb/misc/yurex.c\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"%s - failed to send bulk msg, error %d\0A\00", align 1
@__func__.yurex_write = private unnamed_addr constant [12 x i8] c"yurex_write\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"\013%s - error, can't find device for minor %d\00", align 1
@__func__.yurex_open = private unnamed_addr constant [11 x i8] c"yurex_open\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"USB YUREX #%d now disconnected\0A\00", align 1
@llvm.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_yurex_driver_init216 to i8*), i8* bitcast (void ()* @yurex_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_yurex_driver_exit to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_file217, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__UNIQUE_ID_license218, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @yurex_driver_init() #0 section ".init.text" !dbg !4002 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @yurex_driver, %struct.module* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4005
  ret i32 %call, !dbg !4005
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @yurex_driver_exit() #0 section ".exit.text" !dbg !4006 {
entry:
  call void @usb_deregister(%struct.usb_driver* @yurex_driver) #11, !dbg !4007
  ret void, !dbg !4007
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @yurex_probe(%struct.usb_interface* %interface, %struct.usb_device_id* %id) #2 !dbg !3980 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4008, metadata !DIExpression()), !dbg !4012
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4020, metadata !DIExpression()), !dbg !4021
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4022, metadata !DIExpression()), !dbg !4023
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4024, metadata !DIExpression()), !dbg !4025
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4026, metadata !DIExpression()), !dbg !4030
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4032, metadata !DIExpression()), !dbg !4036
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4038, metadata !DIExpression()), !dbg !4042
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4047, metadata !DIExpression()), !dbg !4048
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4049, metadata !DIExpression()), !dbg !4050
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4051, metadata !DIExpression()), !dbg !4052
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4053, metadata !DIExpression()), !dbg !4054
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4055, metadata !DIExpression()), !dbg !4056
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4057, metadata !DIExpression()), !dbg !4058
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4059, metadata !DIExpression()), !dbg !4060
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4061, metadata !DIExpression()), !dbg !4062
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4063, metadata !DIExpression()), !dbg !4070
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4073, metadata !DIExpression()), !dbg !4079
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4081, metadata !DIExpression()), !dbg !4083
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4084, metadata !DIExpression()), !dbg !4086
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %iface_desc = alloca %struct.usb_host_interface*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %retval1 = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 8
  %res = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4087, metadata !DIExpression()), !dbg !4088
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4089, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_desc, metadata !4093, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !4095, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4098, metadata !DIExpression()), !dbg !4099
  store i32 -12, i32* %retval1, align 4, !dbg !4099
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %wait, metadata !4100, metadata !DIExpression()), !dbg !4112
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 0, !dbg !4112
  store i32 0, i32* %flags, align 8, !dbg !4112
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 1, !dbg !4112
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4083
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4083
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #12, !dbg !4086, !srcloc !4113
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !4086
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !4086
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !4086
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !4086
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4086
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4079
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4079
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !4079
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4079
  %7 = bitcast %struct.task_struct* %6 to i8*, !dbg !4112
  store i8* %7, i8** %private, align 8, !dbg !4112
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 2, !dbg !4112
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8, !dbg !4112
  %entry2 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !4112
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry2, i32 0, i32 0, !dbg !4112
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !4112
  store %struct.list_head* %entry3, %struct.list_head** %next, align 8, !dbg !4112
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry2, i32 0, i32 1, !dbg !4112
  %entry4 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !4112
  store %struct.list_head* %entry4, %struct.list_head** %prev, align 8, !dbg !4112
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4114, metadata !DIExpression()), !dbg !4115
  %call5 = call i8* @kzalloc(i64 136, i32 3264) #11, !dbg !4116
  %8 = bitcast i8* %call5 to %struct.usb_yurex*, !dbg !4116
  store %struct.usb_yurex* %8, %struct.usb_yurex** %dev, align 8, !dbg !4117
  %9 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4118
  %tobool = icmp ne %struct.usb_yurex* %9, null, !dbg !4118
  br i1 %tobool, label %if.end, label %if.then, !dbg !4120

if.then:                                          ; preds = %entry
  br label %error, !dbg !4121

if.end:                                           ; preds = %entry
  %10 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4122
  %kref = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %10, i32 0, i32 8, !dbg !4123
  call void @kref_init(%struct.kref* %kref) #11, !dbg !4124
  br label %do.body, !dbg !4125

do.body:                                          ; preds = %if.end
  %11 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4126
  %io_mutex = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %11, i32 0, i32 9, !dbg !4126
  call void @__mutex_init(%struct.mutex* %io_mutex, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @yurex_probe.__key) #11, !dbg !4126
  br label %do.end, !dbg !4126

do.end:                                           ; preds = %do.body
  br label %do.body6, !dbg !4128

do.body6:                                         ; preds = %do.end
  %12 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4129
  %lock = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %12, i32 0, i32 13, !dbg !4129
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4130
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !4131
  %rlock.i = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !4131
  %15 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4129
  %lock8 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %15, i32 0, i32 13, !dbg !4129
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4129
  %rlock = bitcast %union.anon.3* %16 to %struct.raw_spinlock*, !dbg !4129
  %17 = bitcast %struct.spinlock* %lock8 to i8*, !dbg !4129
  %18 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 1 %18, i64 0, i1 false), !dbg !4129
  br label %do.end9, !dbg !4129

do.end9:                                          ; preds = %do.body6
  br label %do.body10, !dbg !4132

do.body10:                                        ; preds = %do.end9
  %19 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4133
  %waitq = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %19, i32 0, i32 12, !dbg !4133
  call void @__init_waitqueue_head(%struct.wait_queue_head* %waitq, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* @yurex_probe.__key.2) #11, !dbg !4133
  br label %do.end11, !dbg !4133

do.end11:                                         ; preds = %do.body10
  %20 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4135
  %call12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %20) #11, !dbg !4136
  %call13 = call %struct.usb_device* @usb_get_dev(%struct.usb_device* %call12) #11, !dbg !4137
  %21 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4138
  %udev = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %21, i32 0, i32 0, !dbg !4139
  store %struct.usb_device* %call13, %struct.usb_device** %udev, align 8, !dbg !4140
  %22 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4141
  %call14 = call %struct.usb_interface* @usb_get_intf(%struct.usb_interface* %22) #11, !dbg !4142
  %23 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4143
  %interface15 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %23, i32 0, i32 1, !dbg !4144
  store %struct.usb_interface* %call14, %struct.usb_interface** %interface15, align 8, !dbg !4145
  %24 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4146
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1, !dbg !4147
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4147
  store %struct.usb_host_interface* %25, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4148
  %26 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4149
  %call16 = call i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %26, %struct.usb_endpoint_descriptor** %endpoint) #11, !dbg !4150
  store i32 %call16, i32* %res, align 4, !dbg !4151
  %27 = load i32, i32* %res, align 4, !dbg !4152
  %tobool17 = icmp ne i32 %27, 0, !dbg !4152
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !4154

if.then18:                                        ; preds = %do.end11
  %28 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4155
  %dev19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 7, !dbg !4155
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !4155
  %29 = load i32, i32* %res, align 4, !dbg !4157
  store i32 %29, i32* %retval1, align 4, !dbg !4158
  br label %error, !dbg !4159

if.end20:                                         ; preds = %do.end11
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4160
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %30, i32 0, i32 2, !dbg !4161
  %31 = load i8, i8* %bEndpointAddress, align 1, !dbg !4161
  %32 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4162
  %int_in_endpointAddr = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %32, i32 0, i32 2, !dbg !4163
  store i8 %31, i8* %int_in_endpointAddr, align 8, !dbg !4164
  %call21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4165
  %33 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4166
  %cntl_urb = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %33, i32 0, i32 5, !dbg !4167
  store %struct.urb* %call21, %struct.urb** %cntl_urb, align 8, !dbg !4168
  %34 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4169
  %cntl_urb22 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %34, i32 0, i32 5, !dbg !4171
  %35 = load %struct.urb*, %struct.urb** %cntl_urb22, align 8, !dbg !4171
  %tobool23 = icmp ne %struct.urb* %35, null, !dbg !4169
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !4172

if.then24:                                        ; preds = %if.end20
  br label %error, !dbg !4173

if.end25:                                         ; preds = %if.end20
  store i64 8, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %36 = load i64, i64* %size.addr.i, align 8, !dbg !4174
  %37 = call i1 @llvm.is.constant.i64(i64 %36) #10, !dbg !4175
  br i1 %37, label %if.then.i, label %if.end9.i, !dbg !4176

if.then.i:                                        ; preds = %if.end25
  %38 = load i64, i64* %size.addr.i, align 8, !dbg !4177
  %cmp.i = icmp ugt i64 %38, 8192, !dbg !4178
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4179

if.then1.i:                                       ; preds = %if.then.i
  %39 = load i64, i64* %size.addr.i, align 8, !dbg !4180
  %40 = load i32, i32* %flags.addr.i, align 4, !dbg !4181
  store i64 %39, i64* %size.addr.i.i, align 8
  store i32 %40, i32* %flags.addr.i.i, align 4
  %41 = load i64, i64* %size.addr.i.i, align 8, !dbg !4182
  %call.i.i = call i32 @get_order(i64 %41) #14, !dbg !4183
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4056
  %42 = load i64, i64* %size.addr.i.i, align 8, !dbg !4184
  %43 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4185
  %44 = load i32, i32* %order.i.i, align 4, !dbg !4186
  store i64 %42, i64* %size.addr.i.i.i, align 8
  store i32 %43, i32* %flags.addr.i.i.i, align 4
  store i32 %44, i32* %order.addr.i.i.i, align 4
  %45 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4187
  %46 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4188
  %47 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4189
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %45, i32 %46, i32 %47) #15, !dbg !4190
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4190
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4190
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4190
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4190
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4191
  br label %kmalloc.exit, !dbg !4191

if.end.i:                                         ; preds = %if.then.i
  %48 = load i64, i64* %size.addr.i, align 8, !dbg !4192
  store i64 %48, i64* %size.addr.i11.i, align 8
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4193
  %tobool.i.i = icmp ne i64 %49, 0, !dbg !4193
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4195

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4196
  br label %kmalloc_index.exit.i, !dbg !4196

if.end.i.i:                                       ; preds = %if.end.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4197
  %cmp.i.i = icmp ule i64 %50, 8, !dbg !4199
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4200

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4201
  br label %kmalloc_index.exit.i, !dbg !4201

if.end2.i.i:                                      ; preds = %if.end.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4202
  %cmp3.i.i = icmp ugt i64 %51, 64, !dbg !4204
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4205

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4206
  %cmp4.i.i = icmp ule i64 %52, 96, !dbg !4207
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4208

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4209
  br label %kmalloc_index.exit.i, !dbg !4209

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4210
  %cmp7.i.i = icmp ugt i64 %53, 128, !dbg !4212
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4213

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4214
  %cmp9.i.i = icmp ule i64 %54, 192, !dbg !4215
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4216

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4217
  br label %kmalloc_index.exit.i, !dbg !4217

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4218
  %cmp12.i.i = icmp ule i64 %55, 8, !dbg !4220
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4221

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4222
  br label %kmalloc_index.exit.i, !dbg !4222

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4223
  %cmp15.i.i = icmp ule i64 %56, 16, !dbg !4225
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4226

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4227
  br label %kmalloc_index.exit.i, !dbg !4227

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4228
  %cmp18.i.i = icmp ule i64 %57, 32, !dbg !4230
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4231

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4232
  br label %kmalloc_index.exit.i, !dbg !4232

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4233
  %cmp21.i.i = icmp ule i64 %58, 64, !dbg !4235
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4236

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4237
  br label %kmalloc_index.exit.i, !dbg !4237

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4238
  %cmp24.i.i = icmp ule i64 %59, 128, !dbg !4240
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4241

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4242
  br label %kmalloc_index.exit.i, !dbg !4242

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %cmp27.i.i = icmp ule i64 %60, 256, !dbg !4245
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4246

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4247
  br label %kmalloc_index.exit.i, !dbg !4247

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4248
  %cmp30.i.i = icmp ule i64 %61, 512, !dbg !4250
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4251

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4252
  br label %kmalloc_index.exit.i, !dbg !4252

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4253
  %cmp33.i.i = icmp ule i64 %62, 1024, !dbg !4255
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4256

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4257
  br label %kmalloc_index.exit.i, !dbg !4257

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4258
  %cmp36.i.i = icmp ule i64 %63, 2048, !dbg !4260
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4261

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4262
  br label %kmalloc_index.exit.i, !dbg !4262

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4263
  %cmp39.i.i = icmp ule i64 %64, 4096, !dbg !4265
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4266

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4267
  br label %kmalloc_index.exit.i, !dbg !4267

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4268
  %cmp42.i.i = icmp ule i64 %65, 8192, !dbg !4270
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4271

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4272
  br label %kmalloc_index.exit.i, !dbg !4272

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4273
  %cmp45.i.i = icmp ule i64 %66, 16384, !dbg !4275
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4276

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4277
  br label %kmalloc_index.exit.i, !dbg !4277

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4278
  %cmp48.i.i = icmp ule i64 %67, 32768, !dbg !4280
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4281

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4282
  br label %kmalloc_index.exit.i, !dbg !4282

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4283
  %cmp51.i.i = icmp ule i64 %68, 65536, !dbg !4285
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4286

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4287
  br label %kmalloc_index.exit.i, !dbg !4287

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4288
  %cmp54.i.i = icmp ule i64 %69, 131072, !dbg !4290
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4291

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4292
  br label %kmalloc_index.exit.i, !dbg !4292

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4293
  %cmp57.i.i = icmp ule i64 %70, 262144, !dbg !4295
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4296

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4297
  br label %kmalloc_index.exit.i, !dbg !4297

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %71 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4298
  %cmp60.i.i = icmp ule i64 %71, 524288, !dbg !4300
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4301

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4302
  br label %kmalloc_index.exit.i, !dbg !4302

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %72 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4303
  %cmp63.i.i = icmp ule i64 %72, 1048576, !dbg !4305
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4306

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4307
  br label %kmalloc_index.exit.i, !dbg !4307

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %73 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4308
  %cmp66.i.i = icmp ule i64 %73, 2097152, !dbg !4310
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4311

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4312
  br label %kmalloc_index.exit.i, !dbg !4312

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %74 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4313
  %cmp69.i.i = icmp ule i64 %74, 4194304, !dbg !4315
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4316

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4317
  br label %kmalloc_index.exit.i, !dbg !4317

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %75 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4318
  %cmp72.i.i = icmp ule i64 %75, 8388608, !dbg !4320
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4321

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4322
  br label %kmalloc_index.exit.i, !dbg !4322

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %76 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4323
  %cmp75.i.i = icmp ule i64 %76, 16777216, !dbg !4325
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4326

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4327
  br label %kmalloc_index.exit.i, !dbg !4327

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %77 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4328
  %cmp78.i.i = icmp ule i64 %77, 33554432, !dbg !4330
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4331

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4332
  br label %kmalloc_index.exit.i, !dbg !4332

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %78 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4333
  %cmp81.i.i = icmp ule i64 %78, 67108864, !dbg !4335
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4336

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4337
  br label %kmalloc_index.exit.i, !dbg !4337

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4338, !srcloc !4341
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4342, !srcloc !4345
  unreachable, !dbg !4346

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %79 = load i32, i32* %retval.i.i, align 4, !dbg !4347
  store i32 %79, i32* %index.i, align 4, !dbg !4348
  %80 = load i32, i32* %index.i, align 4, !dbg !4349
  %tobool.i = icmp ne i32 %80, 0, !dbg !4349
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4351

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4352
  br label %kmalloc.exit, !dbg !4352

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %81 = load i32, i32* %flags.addr.i, align 4, !dbg !4353
  store i32 %81, i32* %flags.addr.i13.i, align 4
  %82 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4354
  %and.i.i = and i32 %82, 17, !dbg !4354
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4354
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4354
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4354
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4354
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4356

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4357
  br label %kmalloc_type.exit.i, !dbg !4357

if.end.i16.i:                                     ; preds = %if.end4.i
  %83 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4358
  %and2.i.i = and i32 %83, 1, !dbg !4359
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4358
  %84 = zext i1 %tobool3.i.i to i64, !dbg !4358
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4358
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4360
  br label %kmalloc_type.exit.i, !dbg !4360

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %85 = load i32, i32* %retval.i12.i, align 4, !dbg !4361
  %idxprom.i = zext i32 %85 to i64, !dbg !4362
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4362
  %86 = load i32, i32* %index.i, align 4, !dbg !4363
  %idxprom6.i = zext i32 %86 to i64, !dbg !4362
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4362
  %87 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4362
  %88 = load i32, i32* %flags.addr.i, align 4, !dbg !4364
  %89 = load i64, i64* %size.addr.i, align 8, !dbg !4365
  store %struct.kmem_cache* %87, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %88, i32* %flags.addr.i17.i, align 4
  store i64 %89, i64* %size.addr.i18.i, align 8
  %90 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4366
  %91 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4367
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %90, i32 %91) #15, !dbg !4368
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4368
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4368
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4368
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4368
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4025
  %92 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4369
  %93 = load i8*, i8** %ret.i.i, align 8, !dbg !4370
  %94 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4371
  %95 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4372
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %92, i8* %93, i64 %94, i32 %95) #15, !dbg !4373
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4374
  %96 = load i8*, i8** %ret.i.i, align 8, !dbg !4375
  store i8* %96, i8** %retval.i, align 8, !dbg !4376
  br label %kmalloc.exit, !dbg !4376

if.end9.i:                                        ; preds = %if.end25
  %97 = load i64, i64* %size.addr.i, align 8, !dbg !4377
  %98 = load i32, i32* %flags.addr.i, align 4, !dbg !4378
  %call10.i = call noalias i8* @__kmalloc(i64 %97, i32 %98) #15, !dbg !4379
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4379
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4379
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4379
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4379
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4380
  br label %kmalloc.exit, !dbg !4380

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %99 = load i8*, i8** %retval.i, align 8, !dbg !4381
  %100 = bitcast i8* %99 to %struct.usb_ctrlrequest*, !dbg !4382
  %101 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4383
  %cntl_req = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %101, i32 0, i32 6, !dbg !4384
  store %struct.usb_ctrlrequest* %100, %struct.usb_ctrlrequest** %cntl_req, align 8, !dbg !4385
  %102 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4386
  %cntl_req27 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %102, i32 0, i32 6, !dbg !4388
  %103 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req27, align 8, !dbg !4388
  %tobool28 = icmp ne %struct.usb_ctrlrequest* %103, null, !dbg !4386
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4389

if.then29:                                        ; preds = %kmalloc.exit
  br label %error, !dbg !4390

if.end30:                                         ; preds = %kmalloc.exit
  %104 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4391
  %udev31 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %104, i32 0, i32 0, !dbg !4392
  %105 = load %struct.usb_device*, %struct.usb_device** %udev31, align 8, !dbg !4392
  %106 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4393
  %cntl_urb32 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %106, i32 0, i32 5, !dbg !4394
  %107 = load %struct.urb*, %struct.urb** %cntl_urb32, align 8, !dbg !4394
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 15, !dbg !4395
  %call33 = call i8* @usb_alloc_coherent(%struct.usb_device* %105, i64 8, i32 3264, i64* %transfer_dma) #11, !dbg !4396
  %108 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4397
  %cntl_buffer = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %108, i32 0, i32 7, !dbg !4398
  store i8* %call33, i8** %cntl_buffer, align 8, !dbg !4399
  %109 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4400
  %cntl_buffer34 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %109, i32 0, i32 7, !dbg !4402
  %110 = load i8*, i8** %cntl_buffer34, align 8, !dbg !4402
  %tobool35 = icmp ne i8* %110, null, !dbg !4400
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !4403

if.then36:                                        ; preds = %if.end30
  %111 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4404
  %dev37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 7, !dbg !4404
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !4404
  br label %error, !dbg !4406

if.end38:                                         ; preds = %if.end30
  %112 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4407
  %cntl_req39 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %112, i32 0, i32 6, !dbg !4408
  %113 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req39, align 8, !dbg !4408
  %bRequestType = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %113, i32 0, i32 0, !dbg !4409
  store i8 33, i8* %bRequestType, align 1, !dbg !4410
  %114 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4411
  %cntl_req40 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %114, i32 0, i32 6, !dbg !4412
  %115 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req40, align 8, !dbg !4412
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %115, i32 0, i32 1, !dbg !4413
  store i8 9, i8* %bRequest, align 1, !dbg !4414
  %116 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4415
  %cntl_req41 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %116, i32 0, i32 6, !dbg !4416
  %117 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req41, align 8, !dbg !4416
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %117, i32 0, i32 2, !dbg !4417
  store i16 512, i16* %wValue, align 1, !dbg !4418
  %118 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4419
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %118, i32 0, i32 0, !dbg !4419
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 2, !dbg !4419
  %119 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4419
  %conv = zext i8 %119 to i16, !dbg !4419
  %120 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4420
  %cntl_req42 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %120, i32 0, i32 6, !dbg !4421
  %121 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req42, align 8, !dbg !4421
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %121, i32 0, i32 3, !dbg !4422
  store i16 %conv, i16* %wIndex, align 1, !dbg !4423
  %122 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4424
  %cntl_req43 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %122, i32 0, i32 6, !dbg !4425
  %123 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req43, align 8, !dbg !4425
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %123, i32 0, i32 4, !dbg !4426
  store i16 8, i16* %wLength, align 1, !dbg !4427
  %124 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4428
  %cntl_urb44 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %124, i32 0, i32 5, !dbg !4429
  %125 = load %struct.urb*, %struct.urb** %cntl_urb44, align 8, !dbg !4429
  %126 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4430
  %udev45 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %126, i32 0, i32 0, !dbg !4431
  %127 = load %struct.usb_device*, %struct.usb_device** %udev45, align 8, !dbg !4431
  %128 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4432
  %udev46 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %128, i32 0, i32 0, !dbg !4432
  %129 = load %struct.usb_device*, %struct.usb_device** %udev46, align 8, !dbg !4432
  %call47 = call i32 @__create_pipe(%struct.usb_device* %129, i32 0) #11, !dbg !4432
  %or = or i32 -2147483648, %call47, !dbg !4432
  %130 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4433
  %cntl_req48 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %130, i32 0, i32 6, !dbg !4434
  %131 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req48, align 8, !dbg !4434
  %132 = bitcast %struct.usb_ctrlrequest* %131 to i8*, !dbg !4435
  %133 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4436
  %cntl_buffer49 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %133, i32 0, i32 7, !dbg !4437
  %134 = load i8*, i8** %cntl_buffer49, align 8, !dbg !4437
  %135 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4438
  %136 = bitcast %struct.usb_yurex* %135 to i8*, !dbg !4438
  call void @usb_fill_control_urb(%struct.urb* %125, %struct.usb_device* %127, i32 %or, i8* %132, i8* %134, i32 8, void (%struct.urb*)* @yurex_control_callback, i8* %136) #11, !dbg !4439
  %137 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4440
  %cntl_urb50 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %137, i32 0, i32 5, !dbg !4441
  %138 = load %struct.urb*, %struct.urb** %cntl_urb50, align 8, !dbg !4441
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 13, !dbg !4442
  %139 = load i32, i32* %transfer_flags, align 4, !dbg !4443
  %or51 = or i32 %139, 4, !dbg !4443
  store i32 %or51, i32* %transfer_flags, align 4, !dbg !4443
  %call52 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #11, !dbg !4444
  %140 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4445
  %urb = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %140, i32 0, i32 3, !dbg !4446
  store %struct.urb* %call52, %struct.urb** %urb, align 8, !dbg !4447
  %141 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4448
  %urb53 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %141, i32 0, i32 3, !dbg !4450
  %142 = load %struct.urb*, %struct.urb** %urb53, align 8, !dbg !4450
  %tobool54 = icmp ne %struct.urb* %142, null, !dbg !4448
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !4451

if.then55:                                        ; preds = %if.end38
  br label %error, !dbg !4452

if.end56:                                         ; preds = %if.end38
  %143 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4453
  %udev57 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %143, i32 0, i32 0, !dbg !4454
  %144 = load %struct.usb_device*, %struct.usb_device** %udev57, align 8, !dbg !4454
  %145 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4455
  %urb58 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %145, i32 0, i32 3, !dbg !4456
  %146 = load %struct.urb*, %struct.urb** %urb58, align 8, !dbg !4456
  %transfer_dma59 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 15, !dbg !4457
  %call60 = call i8* @usb_alloc_coherent(%struct.usb_device* %144, i64 8, i32 3264, i64* %transfer_dma59) #11, !dbg !4458
  %147 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4459
  %int_buffer = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %147, i32 0, i32 4, !dbg !4460
  store i8* %call60, i8** %int_buffer, align 8, !dbg !4461
  %148 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4462
  %int_buffer61 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %148, i32 0, i32 4, !dbg !4464
  %149 = load i8*, i8** %int_buffer61, align 8, !dbg !4464
  %tobool62 = icmp ne i8* %149, null, !dbg !4462
  br i1 %tobool62, label %if.end65, label %if.then63, !dbg !4465

if.then63:                                        ; preds = %if.end56
  %150 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4466
  %dev64 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %150, i32 0, i32 7, !dbg !4466
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !4466
  br label %error, !dbg !4468

if.end65:                                         ; preds = %if.end56
  %151 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4469
  %urb66 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %151, i32 0, i32 3, !dbg !4470
  %152 = load %struct.urb*, %struct.urb** %urb66, align 8, !dbg !4470
  %153 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4471
  %udev67 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %153, i32 0, i32 0, !dbg !4472
  %154 = load %struct.usb_device*, %struct.usb_device** %udev67, align 8, !dbg !4472
  %155 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4473
  %udev68 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %155, i32 0, i32 0, !dbg !4473
  %156 = load %struct.usb_device*, %struct.usb_device** %udev68, align 8, !dbg !4473
  %157 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4473
  %int_in_endpointAddr69 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %157, i32 0, i32 2, !dbg !4473
  %158 = load i8, i8* %int_in_endpointAddr69, align 8, !dbg !4473
  %conv70 = zext i8 %158 to i32, !dbg !4473
  %call71 = call i32 @__create_pipe(%struct.usb_device* %156, i32 %conv70) #11, !dbg !4473
  %or72 = or i32 1073741824, %call71, !dbg !4473
  %or73 = or i32 %or72, 128, !dbg !4473
  %159 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4474
  %int_buffer74 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %159, i32 0, i32 4, !dbg !4475
  %160 = load i8*, i8** %int_buffer74, align 8, !dbg !4475
  %161 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4476
  %162 = bitcast %struct.usb_yurex* %161 to i8*, !dbg !4476
  call void @usb_fill_int_urb(%struct.urb* %152, %struct.usb_device* %154, i32 %or73, i8* %160, i32 8, void (%struct.urb*)* @yurex_interrupt, i8* %162, i32 1) #11, !dbg !4477
  %163 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4478
  %urb75 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %163, i32 0, i32 3, !dbg !4479
  %164 = load %struct.urb*, %struct.urb** %urb75, align 8, !dbg !4479
  %transfer_flags76 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 13, !dbg !4480
  %165 = load i32, i32* %transfer_flags76, align 4, !dbg !4481
  %or77 = or i32 %165, 4, !dbg !4481
  store i32 %or77, i32* %transfer_flags76, align 4, !dbg !4481
  %166 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4482
  %urb78 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %166, i32 0, i32 3, !dbg !4484
  %167 = load %struct.urb*, %struct.urb** %urb78, align 8, !dbg !4484
  %call79 = call i32 @usb_submit_urb(%struct.urb* %167, i32 3264) #11, !dbg !4485
  %tobool80 = icmp ne i32 %call79, 0, !dbg !4485
  br i1 %tobool80, label %if.then81, label %if.end83, !dbg !4486

if.then81:                                        ; preds = %if.end65
  store i32 -5, i32* %retval1, align 4, !dbg !4487
  %168 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4489
  %dev82 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %168, i32 0, i32 7, !dbg !4489
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !4489
  br label %error, !dbg !4490

if.end83:                                         ; preds = %if.end65
  %169 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4491
  %170 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4492
  %171 = bitcast %struct.usb_yurex* %170 to i8*, !dbg !4492
  call void @usb_set_intfdata(%struct.usb_interface* %169, i8* %171) #11, !dbg !4493
  %172 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4494
  %bbu = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %172, i32 0, i32 14, !dbg !4495
  store i64 -1, i64* %bbu, align 8, !dbg !4496
  %173 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4497
  %call84 = call i32 @usb_register_dev(%struct.usb_interface* %173, %struct.usb_class_driver* @yurex_class) #11, !dbg !4498
  store i32 %call84, i32* %retval1, align 4, !dbg !4499
  %174 = load i32, i32* %retval1, align 4, !dbg !4500
  %tobool85 = icmp ne i32 %174, 0, !dbg !4500
  br i1 %tobool85, label %if.then86, label %if.end88, !dbg !4502

if.then86:                                        ; preds = %if.end83
  %175 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4503
  %dev87 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %175, i32 0, i32 7, !dbg !4503
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0)) #13, !dbg !4503
  %176 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4505
  call void @usb_set_intfdata(%struct.usb_interface* %176, i8* null) #11, !dbg !4506
  br label %error, !dbg !4507

if.end88:                                         ; preds = %if.end83
  %177 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4508
  %dev89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %177, i32 0, i32 7, !dbg !4508
  %178 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4508
  %minor = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %178, i32 0, i32 4, !dbg !4508
  %179 = load i32, i32* %minor, align 8, !dbg !4508
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %179) #13, !dbg !4508
  store i32 0, i32* %retval, align 4, !dbg !4509
  br label %return, !dbg !4509

error:                                            ; preds = %if.then86, %if.then81, %if.then63, %if.then55, %if.then36, %if.then29, %if.then24, %if.then18, %if.then
  call void @llvm.dbg.label(metadata !4510), !dbg !4511
  %180 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4512
  %tobool90 = icmp ne %struct.usb_yurex* %180, null, !dbg !4512
  br i1 %tobool90, label %if.then91, label %if.end94, !dbg !4514

if.then91:                                        ; preds = %error
  %181 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4515
  %kref92 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %181, i32 0, i32 8, !dbg !4516
  %call93 = call i32 @kref_put(%struct.kref* %kref92, void (%struct.kref*)* @yurex_delete) #11, !dbg !4517
  br label %if.end94, !dbg !4517

if.end94:                                         ; preds = %if.then91, %error
  %182 = load i32, i32* %retval1, align 4, !dbg !4518
  store i32 %182, i32* %retval, align 4, !dbg !4519
  br label %return, !dbg !4519

return:                                           ; preds = %if.end94, %if.end88
  %183 = load i32, i32* %retval, align 4, !dbg !4520
  ret i32 %183, !dbg !4520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @yurex_disconnect(%struct.usb_interface* %interface) #2 !dbg !4521 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %minor = alloca i32, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.declare(metadata i32* %minor, metadata !4526, metadata !DIExpression()), !dbg !4527
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4528
  %minor1 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 4, !dbg !4529
  %1 = load i32, i32* %minor1, align 8, !dbg !4529
  store i32 %1, i32* %minor, align 4, !dbg !4527
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4530
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %2) #11, !dbg !4531
  %3 = bitcast i8* %call to %struct.usb_yurex*, !dbg !4531
  store %struct.usb_yurex* %3, %struct.usb_yurex** %dev, align 8, !dbg !4532
  %4 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4533
  call void @usb_set_intfdata(%struct.usb_interface* %4, i8* null) #11, !dbg !4534
  %5 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4535
  call void @usb_deregister_dev(%struct.usb_interface* %5, %struct.usb_class_driver* @yurex_class) #11, !dbg !4536
  %6 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4537
  %urb = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %6, i32 0, i32 3, !dbg !4538
  %7 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4538
  call void @usb_poison_urb(%struct.urb* %7) #11, !dbg !4539
  %8 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4540
  %cntl_urb = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %8, i32 0, i32 5, !dbg !4541
  %9 = load %struct.urb*, %struct.urb** %cntl_urb, align 8, !dbg !4541
  call void @usb_poison_urb(%struct.urb* %9) #11, !dbg !4542
  %10 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4543
  %io_mutex = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %10, i32 0, i32 9, !dbg !4544
  call void @mutex_lock(%struct.mutex* %io_mutex) #11, !dbg !4545
  %11 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4546
  %disconnected = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %11, i32 0, i32 10, !dbg !4547
  %bf.load = load i8, i8* %disconnected, align 8, !dbg !4548
  %bf.clear = and i8 %bf.load, -2, !dbg !4548
  %bf.set = or i8 %bf.clear, 1, !dbg !4548
  store i8 %bf.set, i8* %disconnected, align 8, !dbg !4548
  %12 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4549
  %io_mutex2 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %12, i32 0, i32 9, !dbg !4550
  call void @mutex_unlock(%struct.mutex* %io_mutex2) #11, !dbg !4551
  %13 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4552
  %async_queue = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %13, i32 0, i32 11, !dbg !4553
  call void @kill_fasync(%struct.fasync_struct** %async_queue, i32 29, i32 1) #11, !dbg !4554
  %14 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4555
  %waitq = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %14, i32 0, i32 12, !dbg !4555
  call void @__wake_up(%struct.wait_queue_head* %waitq, i32 1, i32 1, i8* null) #11, !dbg !4555
  %15 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4556
  %kref = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %15, i32 0, i32 8, !dbg !4557
  %call3 = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @yurex_delete) #11, !dbg !4558
  %16 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4559
  %dev4 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 7, !dbg !4559
  %17 = load i32, i32* %minor, align 4, !dbg !4559
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 %17) #13, !dbg !4559
  ret void, !dbg !4560
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry*, i32, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4561 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4008, metadata !DIExpression()), !dbg !4562
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4020, metadata !DIExpression()), !dbg !4565
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4022, metadata !DIExpression()), !dbg !4566
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4024, metadata !DIExpression()), !dbg !4567
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4026, metadata !DIExpression()), !dbg !4568
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4032, metadata !DIExpression()), !dbg !4570
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4038, metadata !DIExpression()), !dbg !4572
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4047, metadata !DIExpression()), !dbg !4575
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4049, metadata !DIExpression()), !dbg !4576
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4051, metadata !DIExpression()), !dbg !4577
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4053, metadata !DIExpression()), !dbg !4578
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4055, metadata !DIExpression()), !dbg !4579
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4057, metadata !DIExpression()), !dbg !4580
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4059, metadata !DIExpression()), !dbg !4581
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4061, metadata !DIExpression()), !dbg !4582
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  %0 = load i64, i64* %size.addr, align 8, !dbg !4587
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4588
  %or = or i32 %1, 256, !dbg !4589
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4590
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4591
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4592

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4593
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4594
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4595

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4596
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4597
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4598
  %call.i.i = call i32 @get_order(i64 %7) #14, !dbg !4599
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4579
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4600
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4601
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4602
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4603
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4604
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4605
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #15, !dbg !4606
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4606
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4606
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4606
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4606
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4607
  br label %kmalloc.exit, !dbg !4607

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4608
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4609
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4609
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4610

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4611
  br label %kmalloc_index.exit.i, !dbg !4611

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4612
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4613
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4614

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4615
  br label %kmalloc_index.exit.i, !dbg !4615

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4616
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4617
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4618

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4619
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4620
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4621

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4622
  br label %kmalloc_index.exit.i, !dbg !4622

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4623
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4624
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4625

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4626
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4627
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4628

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4629
  br label %kmalloc_index.exit.i, !dbg !4629

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4630
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4631
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4632

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4633
  br label %kmalloc_index.exit.i, !dbg !4633

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4634
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4635
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4636

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4637
  br label %kmalloc_index.exit.i, !dbg !4637

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4638
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4639
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4640

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4641
  br label %kmalloc_index.exit.i, !dbg !4641

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4642
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4643
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4644

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4645
  br label %kmalloc_index.exit.i, !dbg !4645

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4646
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4647
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4648

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4649
  br label %kmalloc_index.exit.i, !dbg !4649

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4650
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4651
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4652

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4653
  br label %kmalloc_index.exit.i, !dbg !4653

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4654
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4655
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4656

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4659
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4660

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4663
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4664

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4667
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4668

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4669
  br label %kmalloc_index.exit.i, !dbg !4669

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4670
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4671
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4672

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4673
  br label %kmalloc_index.exit.i, !dbg !4673

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4674
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4675
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4676

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4679
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4680

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4681
  br label %kmalloc_index.exit.i, !dbg !4681

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4682
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4683
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4684

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4687
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4688

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4689
  br label %kmalloc_index.exit.i, !dbg !4689

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4690
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4691
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4692

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4693
  br label %kmalloc_index.exit.i, !dbg !4693

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4694
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4695
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4696

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4699
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4700

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4701
  br label %kmalloc_index.exit.i, !dbg !4701

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4703
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4704

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4707
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4708

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4709
  br label %kmalloc_index.exit.i, !dbg !4709

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4710
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4711
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4712

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4713
  br label %kmalloc_index.exit.i, !dbg !4713

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4714
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4715
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4716

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4719
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4720

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4721
  br label %kmalloc_index.exit.i, !dbg !4721

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4722
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4723
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4724

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4726, !srcloc !4341
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4727, !srcloc !4345
  unreachable, !dbg !4728

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4729
  store i32 %45, i32* %index.i, align 4, !dbg !4730
  %46 = load i32, i32* %index.i, align 4, !dbg !4731
  %tobool.i = icmp ne i32 %46, 0, !dbg !4731
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4732

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4733
  br label %kmalloc.exit, !dbg !4733

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4734
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4735
  %and.i.i = and i32 %48, 17, !dbg !4735
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4735
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4735
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4735
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4735
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4736

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4737
  br label %kmalloc_type.exit.i, !dbg !4737

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4738
  %and2.i.i = and i32 %49, 1, !dbg !4739
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4738
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4738
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4738
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4740
  br label %kmalloc_type.exit.i, !dbg !4740

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4741
  %idxprom.i = zext i32 %51 to i64, !dbg !4742
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4742
  %52 = load i32, i32* %index.i, align 4, !dbg !4743
  %idxprom6.i = zext i32 %52 to i64, !dbg !4742
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4742
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4742
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4744
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4745
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4746
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4747
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #15, !dbg !4748
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4748
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4748
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4748
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4748
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4567
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4749
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4750
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4751
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4752
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #15, !dbg !4753
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4754
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4755
  store i8* %62, i8** %retval.i, align 8, !dbg !4756
  br label %kmalloc.exit, !dbg !4756

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4757
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4758
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #15, !dbg !4759
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4759
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4759
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4759
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4759
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4760
  br label %kmalloc.exit, !dbg !4760

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4761
  ret i8* %65, !dbg !4762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #2 !dbg !4763 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4769
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4770
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #11, !dbg !4771
  ret void, !dbg !4772
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @usb_get_dev(%struct.usb_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4773 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4778, metadata !DIExpression()), !dbg !4780
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4780
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4780
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4780
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4780
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4780
  store i8* %2, i8** %__mptr, align 8, !dbg !4780
  br label %do.body, !dbg !4780

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4781

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4780
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4780
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4780
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4781
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4780
  ret %struct.usb_device* %5, !dbg !4783
}

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @usb_get_intf(%struct.usb_interface*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %alt, %struct.usb_endpoint_descriptor** %int_in) #2 !dbg !4784 {
entry:
  %alt.addr = alloca %struct.usb_host_interface*, align 8
  %int_in.addr = alloca %struct.usb_endpoint_descriptor**, align 8
  store %struct.usb_host_interface* %alt, %struct.usb_host_interface** %alt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %alt.addr, metadata !4788, metadata !DIExpression()), !dbg !4789
  store %struct.usb_endpoint_descriptor** %int_in, %struct.usb_endpoint_descriptor*** %int_in.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor*** %int_in.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  %0 = load %struct.usb_host_interface*, %struct.usb_host_interface** %alt.addr, align 8, !dbg !4792
  %1 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %int_in.addr, align 8, !dbg !4793
  %call = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %0, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** null) #11, !dbg !4794
  ret i32 %call, !dbg !4795
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_control_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %setup_packet, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !4796 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %setup_packet.addr = alloca i8*, align 8
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  store i8* %setup_packet, i8** %setup_packet.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %setup_packet.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !4809, metadata !DIExpression()), !dbg !4810
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !4811, metadata !DIExpression()), !dbg !4812
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4815
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4816
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !4817
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !4818
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !4819
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4820
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !4821
  store i32 %2, i32* %pipe2, align 8, !dbg !4822
  %4 = load i8*, i8** %setup_packet.addr, align 8, !dbg !4823
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4824
  %setup_packet3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 21, !dbg !4825
  store i8* %4, i8** %setup_packet3, align 8, !dbg !4826
  %6 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !4827
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4828
  %transfer_buffer4 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 14, !dbg !4829
  store i8* %6, i8** %transfer_buffer4, align 8, !dbg !4830
  %8 = load i32, i32* %buffer_length.addr, align 4, !dbg !4831
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4832
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 19, !dbg !4833
  store i32 %8, i32* %transfer_buffer_length, align 8, !dbg !4834
  %10 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !4835
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4836
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 28, !dbg !4837
  store void (%struct.urb*)* %10, void (%struct.urb*)** %complete, align 8, !dbg !4838
  %12 = load i8*, i8** %context.addr, align 8, !dbg !4839
  %13 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4840
  %context5 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 27, !dbg !4841
  store i8* %12, i8** %context5, align 8, !dbg !4842
  ret void, !dbg !4843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !4844 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4847, metadata !DIExpression()), !dbg !4848
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4851
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !4852
  %1 = load i32, i32* %devnum, align 8, !dbg !4852
  %shl = shl i32 %1, 8, !dbg !4853
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !4854
  %shl1 = shl i32 %2, 15, !dbg !4855
  %or = or i32 %shl, %shl1, !dbg !4856
  ret i32 %or, !dbg !4857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @yurex_control_callback(%struct.urb* %urb) #2 !dbg !4858 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %status = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4859, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !4861, metadata !DIExpression()), !dbg !4862
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4863
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !4864
  %1 = load i8*, i8** %context, align 8, !dbg !4864
  %2 = bitcast i8* %1 to %struct.usb_yurex*, !dbg !4863
  store %struct.usb_yurex* %2, %struct.usb_yurex** %dev, align 8, !dbg !4862
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4865, metadata !DIExpression()), !dbg !4866
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4867
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !4868
  %4 = load i32, i32* %status1, align 8, !dbg !4868
  store i32 %4, i32* %status, align 4, !dbg !4866
  %5 = load i32, i32* %status, align 4, !dbg !4869
  %tobool = icmp ne i32 %5, 0, !dbg !4869
  br i1 %tobool, label %if.then, label %if.end, !dbg !4871

if.then:                                          ; preds = %entry
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4872
  %dev2 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 8, !dbg !4872
  %7 = load %struct.usb_device*, %struct.usb_device** %dev2, align 8, !dbg !4872
  %dev3 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 14, !dbg !4872
  %8 = load i32, i32* %status, align 4, !dbg !4872
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.yurex_control_callback, i64 0, i64 0), i32 %8) #13, !dbg !4872
  %9 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4874
  %waitq = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %9, i32 0, i32 12, !dbg !4874
  call void @__wake_up(%struct.wait_queue_head* %waitq, i32 1, i32 1, i8* null) #11, !dbg !4874
  br label %if.end, !dbg !4875

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !4877 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4884, metadata !DIExpression()), !dbg !4885
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4896
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4897
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !4898
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !4899
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !4900
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4901
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !4902
  store i32 %2, i32* %pipe2, align 8, !dbg !4903
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !4904
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4905
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !4906
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !4907
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !4908
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4909
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !4910
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !4911
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !4912
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4913
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !4914
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !4915
  %10 = load i8*, i8** %context.addr, align 8, !dbg !4916
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4917
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !4918
  store i8* %10, i8** %context4, align 8, !dbg !4919
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4920
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !4922
  %13 = load i32, i32* %speed, align 4, !dbg !4922
  %cmp = icmp eq i32 %13, 3, !dbg !4923
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4924

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4925
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !4926
  %15 = load i32, i32* %speed5, align 4, !dbg !4926
  %cmp6 = icmp uge i32 %15, 5, !dbg !4927
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4928

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !4929, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !4933, metadata !DIExpression()), !dbg !4935
  %16 = load i32, i32* %interval.addr, align 4, !dbg !4935
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !4935
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !4936, metadata !DIExpression()), !dbg !4935
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !4935
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !4935
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !4935
  %cmp7 = icmp sgt i32 %17, %18, !dbg !4935
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !4935

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !4935
  br label %cond.end, !dbg !4935

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !4935
  br label %cond.end, !dbg !4935

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !4935
  store i32 %cond, i32* %tmp, align 4, !dbg !4935
  %21 = load i32, i32* %tmp, align 4, !dbg !4935
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !4932
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !4937, metadata !DIExpression()), !dbg !4932
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !4932
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !4932
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !4932
  %cmp9 = icmp slt i32 %22, %23, !dbg !4932
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !4932

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !4932
  br label %cond.end12, !dbg !4932

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !4932
  br label %cond.end12, !dbg !4932

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !4932
  store i32 %cond13, i32* %tmp8, align 4, !dbg !4932
  %26 = load i32, i32* %tmp8, align 4, !dbg !4932
  store i32 %26, i32* %interval.addr, align 4, !dbg !4938
  %27 = load i32, i32* %interval.addr, align 4, !dbg !4939
  %sub = sub i32 %27, 1, !dbg !4940
  %shl = shl i32 1, %sub, !dbg !4941
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4942
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !4943
  store i32 %shl, i32* %interval14, align 8, !dbg !4944
  br label %if.end, !dbg !4945

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !4946
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4948
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !4949
  store i32 %29, i32* %interval15, align 8, !dbg !4950
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4951
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !4952
  store i32 -1, i32* %start_frame, align 8, !dbg !4953
  ret void, !dbg !4954
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @yurex_interrupt(%struct.urb* %urb) #2 !dbg !4955 {
entry:
  %lock.addr.i51 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i51, metadata !4956, metadata !DIExpression()), !dbg !4960
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4965, metadata !DIExpression()), !dbg !4966
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4063, metadata !DIExpression()), !dbg !4967
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %buf = alloca i8*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy18 = alloca i64, align 8
  %__dummy219 = alloca i64, align 8
  %tmp22 = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4974, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !4976, metadata !DIExpression()), !dbg !4977
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4978
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !4979
  %1 = load i8*, i8** %context, align 8, !dbg !4979
  %2 = bitcast i8* %1 to %struct.usb_yurex*, !dbg !4978
  store %struct.usb_yurex* %2, %struct.usb_yurex** %dev, align 8, !dbg !4977
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4980, metadata !DIExpression()), !dbg !4981
  %3 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4982
  %int_buffer = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %3, i32 0, i32 4, !dbg !4983
  %4 = load i8*, i8** %int_buffer, align 8, !dbg !4983
  store i8* %4, i8** %buf, align 8, !dbg !4981
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4984, metadata !DIExpression()), !dbg !4985
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4986
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !4987
  %6 = load i32, i32* %status1, align 8, !dbg !4987
  store i32 %6, i32* %status, align 4, !dbg !4985
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4988, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !4990, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4992, metadata !DIExpression()), !dbg !4993
  %7 = load i32, i32* %status, align 4, !dbg !4994
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 -75, label %sw.bb2
    i32 -104, label %sw.bb5
    i32 -2, label %sw.bb5
    i32 -108, label %sw.bb5
    i32 -84, label %sw.bb5
    i32 -71, label %sw.bb5
    i32 -62, label %sw.bb5
  ], !dbg !4995

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !4996

sw.bb2:                                           ; preds = %entry
  %8 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4998
  %interface = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %8, i32 0, i32 1, !dbg !4998
  %9 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !4998
  %dev3 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 7, !dbg !4998
  %10 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !4998
  %urb4 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %10, i32 0, i32 3, !dbg !4998
  %11 = load %struct.urb*, %struct.urb** %urb4, align 8, !dbg !4998
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 20, !dbg !4998
  %12 = load i32, i32* %actual_length, align 4, !dbg !4998
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.yurex_interrupt, i64 0, i64 0), i32 8, i32 %12) #13, !dbg !4998
  br label %sw.bb5, !dbg !4998

sw.bb5:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %sw.bb2
  br label %if.end50, !dbg !4999

sw.default:                                       ; preds = %entry
  %13 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5000
  %interface6 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %13, i32 0, i32 1, !dbg !5000
  %14 = load %struct.usb_interface*, %struct.usb_interface** %interface6, align 8, !dbg !5000
  %dev7 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 7, !dbg !5000
  %15 = load i32, i32* %status, align 4, !dbg !5000
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.yurex_interrupt, i64 0, i64 0), i32 %15) #13, !dbg !5000
  br label %if.end50, !dbg !5001

sw.epilog:                                        ; preds = %sw.bb
  %16 = load i8*, i8** %buf, align 8, !dbg !5002
  %arrayidx = getelementptr i8, i8* %16, i64 0, !dbg !5002
  %17 = load i8, i8* %arrayidx, align 1, !dbg !5002
  %conv = zext i8 %17 to i32, !dbg !5002
  switch i32 %conv, label %sw.epilog44 [
    i32 67, label %sw.bb8
    i32 82, label %sw.bb8
    i32 33, label %sw.bb43
  ], !dbg !5003

sw.bb8:                                           ; preds = %sw.epilog, %sw.epilog
  %18 = load i8*, i8** %buf, align 8, !dbg !5004
  %arrayidx9 = getelementptr i8, i8* %18, i64 6, !dbg !5004
  %19 = load i8, i8* %arrayidx9, align 1, !dbg !5004
  %conv10 = zext i8 %19 to i32, !dbg !5004
  %cmp = icmp eq i32 %conv10, 13, !dbg !5005
  br i1 %cmp, label %if.then, label %if.else, !dbg !5006

if.then:                                          ; preds = %sw.bb8
  br label %do.body, !dbg !5007

do.body:                                          ; preds = %if.then
  br label %do.body12, !dbg !5008

do.body12:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5009, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5012, metadata !DIExpression()), !dbg !5011
  %cmp13 = icmp eq i64* %__dummy, %__dummy2, !dbg !5011
  %conv14 = zext i1 %cmp13 to i32, !dbg !5011
  store i32 1, i32* %tmp, align 4, !dbg !5011
  %20 = load i32, i32* %tmp, align 4, !dbg !5011
  br label %do.body15, !dbg !5013

do.body15:                                        ; preds = %do.body12
  br label %do.body16, !dbg !5014

do.body16:                                        ; preds = %do.body15
  br label %do.body17, !dbg !5015

do.body17:                                        ; preds = %do.body16
  call void @llvm.dbg.declare(metadata i64* %__dummy18, metadata !5017, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata i64* %__dummy219, metadata !5021, metadata !DIExpression()), !dbg !5020
  %cmp20 = icmp eq i64* %__dummy18, %__dummy219, !dbg !5020
  %conv21 = zext i1 %cmp20 to i32, !dbg !5020
  store i32 1, i32* %tmp22, align 4, !dbg !5020
  %21 = load i32, i32* %tmp22, align 4, !dbg !5020
  %call = call i64 @arch_local_irq_save() #11, !dbg !5022
  store i64 %call, i64* %flags, align 8, !dbg !5022
  br label %do.end, !dbg !5022

do.end:                                           ; preds = %do.body17
  br label %do.end23, !dbg !5015

do.end23:                                         ; preds = %do.end
  br label %do.body24, !dbg !5014

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5023, !srcloc !5024
  br label %do.body25, !dbg !5023

do.body25:                                        ; preds = %do.body24
  %22 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5025
  %lock = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %22, i32 0, i32 13, !dbg !5025
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5026
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5027
  %rlock.i = bitcast %union.anon.3* %24 to %struct.raw_spinlock*, !dbg !5027
  br label %do.end27, !dbg !5025

do.end27:                                         ; preds = %do.body25
  br label %do.end28, !dbg !5023

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !5014

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !5013

do.end30:                                         ; preds = %do.end29
  br label %do.end31, !dbg !5008

do.end31:                                         ; preds = %do.end30
  %25 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5028
  %bbu = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %25, i32 0, i32 14, !dbg !5029
  store i64 0, i64* %bbu, align 8, !dbg !5030
  store i32 1, i32* %i, align 4, !dbg !5031
  br label %for.cond, !dbg !5033

for.cond:                                         ; preds = %for.inc, %do.end31
  %26 = load i32, i32* %i, align 4, !dbg !5034
  %cmp32 = icmp slt i32 %26, 6, !dbg !5036
  br i1 %cmp32, label %for.body, label %for.end, !dbg !5037

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %buf, align 8, !dbg !5038
  %28 = load i32, i32* %i, align 4, !dbg !5040
  %idxprom = sext i32 %28 to i64, !dbg !5038
  %arrayidx34 = getelementptr i8, i8* %27, i64 %idxprom, !dbg !5038
  %29 = load i8, i8* %arrayidx34, align 1, !dbg !5038
  %conv35 = zext i8 %29 to i64, !dbg !5038
  %30 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5041
  %bbu36 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %30, i32 0, i32 14, !dbg !5042
  %31 = load i64, i64* %bbu36, align 8, !dbg !5043
  %add = add i64 %31, %conv35, !dbg !5043
  store i64 %add, i64* %bbu36, align 8, !dbg !5043
  %32 = load i32, i32* %i, align 4, !dbg !5044
  %cmp37 = icmp ne i32 %32, 5, !dbg !5046
  br i1 %cmp37, label %if.then39, label %if.end, !dbg !5047

if.then39:                                        ; preds = %for.body
  %33 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5048
  %bbu40 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %33, i32 0, i32 14, !dbg !5049
  %34 = load i64, i64* %bbu40, align 8, !dbg !5050
  %shl = shl i64 %34, 8, !dbg !5050
  store i64 %shl, i64* %bbu40, align 8, !dbg !5050
  br label %if.end, !dbg !5048

if.end:                                           ; preds = %if.then39, %for.body
  br label %for.inc, !dbg !5051

for.inc:                                          ; preds = %if.end
  %35 = load i32, i32* %i, align 4, !dbg !5052
  %inc = add i32 %35, 1, !dbg !5052
  store i32 %inc, i32* %i, align 4, !dbg !5052
  br label %for.cond, !dbg !5053, !llvm.loop !5054

for.end:                                          ; preds = %for.cond
  %36 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5056
  %lock41 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %36, i32 0, i32 13, !dbg !5057
  %37 = load i64, i64* %flags, align 8, !dbg !5058
  store %struct.spinlock* %lock41, %struct.spinlock** %lock.addr.i51, align 8
  store i64 %37, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !218, metadata !5059, metadata !DIExpression()) #10, !dbg !5062
  call void @llvm.dbg.declare(metadata !218, metadata !5063, metadata !DIExpression()) #10, !dbg !5062
  store i32 1, i32* %tmp.i, align 4, !dbg !5062
  %38 = load i32, i32* %tmp.i, align 4, !dbg !5062
  call void @llvm.dbg.declare(metadata !218, metadata !5064, metadata !DIExpression()) #10, !dbg !5069
  call void @llvm.dbg.declare(metadata !218, metadata !5070, metadata !DIExpression()) #10, !dbg !5069
  store i32 1, i32* %tmp8.i, align 4, !dbg !5069
  %39 = load i32, i32* %tmp8.i, align 4, !dbg !5069
  %40 = load i64, i64* %flags.addr.i, align 8, !dbg !5071
  call void @arch_local_irq_restore(i64 %40) #15, !dbg !5071
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5072, !srcloc !5074
  %41 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i51, align 8, !dbg !5075
  %42 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %41, i32 0, i32 0, !dbg !5075
  %rlock.i52 = bitcast %union.anon.3* %42 to %struct.raw_spinlock*, !dbg !5075
  %43 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5077
  %async_queue = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %43, i32 0, i32 11, !dbg !5078
  call void @kill_fasync(%struct.fasync_struct** %async_queue, i32 29, i32 1) #11, !dbg !5079
  br label %if.end42, !dbg !5080

if.else:                                          ; preds = %sw.bb8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %for.end
  br label %sw.epilog44, !dbg !5081

sw.bb43:                                          ; preds = %sw.epilog
  %44 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5082
  %waitq = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %44, i32 0, i32 12, !dbg !5082
  call void @__wake_up(%struct.wait_queue_head* %waitq, i32 1, i32 1, i8* null) #11, !dbg !5082
  br label %sw.epilog44, !dbg !5083

sw.epilog44:                                      ; preds = %sw.epilog, %sw.bb43, %if.end42
  %45 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5084
  %urb45 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %45, i32 0, i32 3, !dbg !5085
  %46 = load %struct.urb*, %struct.urb** %urb45, align 8, !dbg !5085
  %call46 = call i32 @usb_submit_urb(%struct.urb* %46, i32 2592) #11, !dbg !5086
  store i32 %call46, i32* %retval, align 4, !dbg !5087
  %47 = load i32, i32* %retval, align 4, !dbg !5088
  %tobool = icmp ne i32 %47, 0, !dbg !5088
  br i1 %tobool, label %if.then47, label %if.end50, !dbg !5090

if.then47:                                        ; preds = %sw.epilog44
  %48 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5091
  %interface48 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %48, i32 0, i32 1, !dbg !5091
  %49 = load %struct.usb_interface*, %struct.usb_interface** %interface48, align 8, !dbg !5091
  %dev49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 7, !dbg !5091
  %50 = load i32, i32* %retval, align 4, !dbg !5091
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.yurex_interrupt, i64 0, i64 0), i32 %50) #13, !dbg !5091
  br label %if.end50, !dbg !5093

if.end50:                                         ; preds = %sw.bb5, %sw.default, %if.then47, %sw.epilog44
  ret void, !dbg !5094
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5095 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5102
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5103
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5104
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #11, !dbg !5105
  ret void, !dbg !5106
}

; Function Attrs: noredzone
declare dso_local i32 @usb_register_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #2 !dbg !5107 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5115
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5117
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #11, !dbg !5118
  br i1 %call, label %if.then, label %if.end, !dbg !5119

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !5120
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5122
  call void %1(%struct.kref* %2) #11, !dbg !5120
  store i32 1, i32* %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5125
  ret i32 %3, !dbg !5125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @yurex_delete(%struct.kref* %kref) #2 !dbg !5126 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_yurex*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !5129, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5131, metadata !DIExpression()), !dbg !5133
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5133
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !5133
  store i8* %1, i8** %__mptr, align 8, !dbg !5133
  br label %do.body, !dbg !5133

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5134

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5133
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !5133
  %3 = bitcast i8* %add.ptr to %struct.usb_yurex*, !dbg !5133
  store %struct.usb_yurex* %3, %struct.usb_yurex** %tmp, align 8, !dbg !5134
  %4 = load %struct.usb_yurex*, %struct.usb_yurex** %tmp, align 8, !dbg !5133
  store %struct.usb_yurex* %4, %struct.usb_yurex** %dev, align 8, !dbg !5130
  %5 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5136
  %cntl_urb = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %5, i32 0, i32 5, !dbg !5138
  %6 = load %struct.urb*, %struct.urb** %cntl_urb, align 8, !dbg !5138
  %tobool = icmp ne %struct.urb* %6, null, !dbg !5136
  br i1 %tobool, label %if.then, label %if.end, !dbg !5139

if.then:                                          ; preds = %do.end
  %7 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5140
  %cntl_urb1 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %7, i32 0, i32 5, !dbg !5142
  %8 = load %struct.urb*, %struct.urb** %cntl_urb1, align 8, !dbg !5142
  call void @usb_kill_urb(%struct.urb* %8) #11, !dbg !5143
  %9 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5144
  %cntl_req = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %9, i32 0, i32 6, !dbg !5145
  %10 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %cntl_req, align 8, !dbg !5145
  %11 = bitcast %struct.usb_ctrlrequest* %10 to i8*, !dbg !5144
  call void @kfree(i8* %11) #11, !dbg !5146
  %12 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5147
  %udev = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %12, i32 0, i32 0, !dbg !5148
  %13 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5148
  %14 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5149
  %cntl_buffer = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %14, i32 0, i32 7, !dbg !5150
  %15 = load i8*, i8** %cntl_buffer, align 8, !dbg !5150
  %16 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5151
  %cntl_urb2 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %16, i32 0, i32 5, !dbg !5152
  %17 = load %struct.urb*, %struct.urb** %cntl_urb2, align 8, !dbg !5152
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 15, !dbg !5153
  %18 = load i64, i64* %transfer_dma, align 8, !dbg !5153
  call void @usb_free_coherent(%struct.usb_device* %13, i64 8, i8* %15, i64 %18) #11, !dbg !5154
  %19 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5155
  %cntl_urb3 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %19, i32 0, i32 5, !dbg !5156
  %20 = load %struct.urb*, %struct.urb** %cntl_urb3, align 8, !dbg !5156
  call void @usb_free_urb(%struct.urb* %20) #11, !dbg !5157
  br label %if.end, !dbg !5158

if.end:                                           ; preds = %if.then, %do.end
  %21 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5159
  %urb = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %21, i32 0, i32 3, !dbg !5161
  %22 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5161
  %tobool4 = icmp ne %struct.urb* %22, null, !dbg !5159
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !5162

if.then5:                                         ; preds = %if.end
  %23 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5163
  %urb6 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %23, i32 0, i32 3, !dbg !5165
  %24 = load %struct.urb*, %struct.urb** %urb6, align 8, !dbg !5165
  call void @usb_kill_urb(%struct.urb* %24) #11, !dbg !5166
  %25 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5167
  %udev7 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %25, i32 0, i32 0, !dbg !5168
  %26 = load %struct.usb_device*, %struct.usb_device** %udev7, align 8, !dbg !5168
  %27 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5169
  %int_buffer = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %27, i32 0, i32 4, !dbg !5170
  %28 = load i8*, i8** %int_buffer, align 8, !dbg !5170
  %29 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5171
  %urb8 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %29, i32 0, i32 3, !dbg !5172
  %30 = load %struct.urb*, %struct.urb** %urb8, align 8, !dbg !5172
  %transfer_dma9 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 15, !dbg !5173
  %31 = load i64, i64* %transfer_dma9, align 8, !dbg !5173
  call void @usb_free_coherent(%struct.usb_device* %26, i64 8, i8* %28, i64 %31) #11, !dbg !5174
  %32 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5175
  %urb10 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %32, i32 0, i32 3, !dbg !5176
  %33 = load %struct.urb*, %struct.urb** %urb10, align 8, !dbg !5176
  call void @usb_free_urb(%struct.urb* %33) #11, !dbg !5177
  br label %if.end11, !dbg !5178

if.end11:                                         ; preds = %if.then5, %if.end
  %34 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5179
  %interface = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %34, i32 0, i32 1, !dbg !5180
  %35 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5180
  call void @usb_put_intf(%struct.usb_interface* %35) #11, !dbg !5181
  %36 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5182
  %udev12 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %36, i32 0, i32 0, !dbg !5183
  %37 = load %struct.usb_device*, %struct.usb_device** %udev12, align 8, !dbg !5183
  call void @usb_put_dev(%struct.usb_device* %37) #11, !dbg !5184
  %38 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5185
  %39 = bitcast %struct.usb_yurex* %38 to i8*, !dbg !5185
  call void @kfree(i8* %39) #11, !dbg !5186
  ret void, !dbg !5187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #2 !dbg !5188 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5192, metadata !DIExpression()), !dbg !5198
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5203, metadata !DIExpression()), !dbg !5204
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5205, metadata !DIExpression()), !dbg !5213
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5215, metadata !DIExpression()), !dbg !5216
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5217, metadata !DIExpression()), !dbg !5218
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5219, metadata !DIExpression()), !dbg !5220
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5225
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5226
  %1 = load i32, i32* %n.addr, align 4, !dbg !5227
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5228
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5228
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5229
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5230
  %conv.i.i = trunc i64 %5 to i32, !dbg !5230
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #15, !dbg !5231
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5232
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5232
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #15, !dbg !5232
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5233
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5234
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5235
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5235
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5235
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5235
  ret void, !dbg !5237
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5238 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  ret i1 true, !dbg !5246
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5247 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  ret void, !dbg !5257
}

; Function Attrs: noredzone
declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5258 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5262, metadata !DIExpression()), !dbg !5267
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5269, metadata !DIExpression()), !dbg !5270
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  %0 = load i64, i64* %size.addr, align 8, !dbg !5273
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5275
  br i1 %1, label %if.then, label %if.end447, !dbg !5276

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5277
  %tobool = icmp ne i64 %2, 0, !dbg !5277
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5280

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5281
  br label %return, !dbg !5281

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5282
  %cmp = icmp ult i64 %3, 4096, !dbg !5284
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5285

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub = sub i64 %4, 1, !dbg !5287
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5287
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5287

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub4 = sub i64 %6, 1, !dbg !5287
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5287
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5287

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub6 = sub i64 %8, 1, !dbg !5287
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5287
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5287

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5287

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub9 = sub i64 %9, 1, !dbg !5287
  %and = and i64 %sub9, -9223372036854775808, !dbg !5287
  %tobool10 = icmp ne i64 %and, 0, !dbg !5287
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5287

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5287

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub13 = sub i64 %10, 1, !dbg !5287
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5287
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5287
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5287

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5287

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub18 = sub i64 %11, 1, !dbg !5287
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5287
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5287
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5287

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5287

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub23 = sub i64 %12, 1, !dbg !5287
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5287
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5287
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5287

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5287

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub28 = sub i64 %13, 1, !dbg !5287
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5287
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5287
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5287

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5287

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub33 = sub i64 %14, 1, !dbg !5287
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5287
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5287
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5287

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5287

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub38 = sub i64 %15, 1, !dbg !5287
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5287
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5287
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5287

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5287

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub43 = sub i64 %16, 1, !dbg !5287
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5287
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5287
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5287

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5287

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub48 = sub i64 %17, 1, !dbg !5287
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5287
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5287
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5287

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5287

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub53 = sub i64 %18, 1, !dbg !5287
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5287
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5287
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5287

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5287

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub58 = sub i64 %19, 1, !dbg !5287
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5287
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5287
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5287

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5287

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub63 = sub i64 %20, 1, !dbg !5287
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5287
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5287
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5287

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5287

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub68 = sub i64 %21, 1, !dbg !5287
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5287
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5287
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5287

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5287

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub73 = sub i64 %22, 1, !dbg !5287
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5287
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5287
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5287

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5287

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub78 = sub i64 %23, 1, !dbg !5287
  %and79 = and i64 %sub78, 562949953421312, !dbg !5287
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5287
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5287

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5287

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub83 = sub i64 %24, 1, !dbg !5287
  %and84 = and i64 %sub83, 281474976710656, !dbg !5287
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5287
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5287

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5287

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub88 = sub i64 %25, 1, !dbg !5287
  %and89 = and i64 %sub88, 140737488355328, !dbg !5287
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5287
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5287

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5287

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub93 = sub i64 %26, 1, !dbg !5287
  %and94 = and i64 %sub93, 70368744177664, !dbg !5287
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5287
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5287

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5287

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub98 = sub i64 %27, 1, !dbg !5287
  %and99 = and i64 %sub98, 35184372088832, !dbg !5287
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5287
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5287

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5287

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub103 = sub i64 %28, 1, !dbg !5287
  %and104 = and i64 %sub103, 17592186044416, !dbg !5287
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5287
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5287

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5287

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub108 = sub i64 %29, 1, !dbg !5287
  %and109 = and i64 %sub108, 8796093022208, !dbg !5287
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5287
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5287

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5287

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub113 = sub i64 %30, 1, !dbg !5287
  %and114 = and i64 %sub113, 4398046511104, !dbg !5287
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5287
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5287

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5287

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub118 = sub i64 %31, 1, !dbg !5287
  %and119 = and i64 %sub118, 2199023255552, !dbg !5287
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5287
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5287

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5287

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub123 = sub i64 %32, 1, !dbg !5287
  %and124 = and i64 %sub123, 1099511627776, !dbg !5287
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5287
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5287

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5287

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub128 = sub i64 %33, 1, !dbg !5287
  %and129 = and i64 %sub128, 549755813888, !dbg !5287
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5287
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5287

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5287

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub133 = sub i64 %34, 1, !dbg !5287
  %and134 = and i64 %sub133, 274877906944, !dbg !5287
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5287
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5287

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5287

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub138 = sub i64 %35, 1, !dbg !5287
  %and139 = and i64 %sub138, 137438953472, !dbg !5287
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5287
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5287

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5287

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub143 = sub i64 %36, 1, !dbg !5287
  %and144 = and i64 %sub143, 68719476736, !dbg !5287
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5287
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5287

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5287

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub148 = sub i64 %37, 1, !dbg !5287
  %and149 = and i64 %sub148, 34359738368, !dbg !5287
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5287
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5287

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5287

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub153 = sub i64 %38, 1, !dbg !5287
  %and154 = and i64 %sub153, 17179869184, !dbg !5287
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5287
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5287

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5287

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub158 = sub i64 %39, 1, !dbg !5287
  %and159 = and i64 %sub158, 8589934592, !dbg !5287
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5287
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5287

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5287

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub163 = sub i64 %40, 1, !dbg !5287
  %and164 = and i64 %sub163, 4294967296, !dbg !5287
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5287
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5287

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5287

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub168 = sub i64 %41, 1, !dbg !5287
  %and169 = and i64 %sub168, 2147483648, !dbg !5287
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5287
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5287

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5287

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub173 = sub i64 %42, 1, !dbg !5287
  %and174 = and i64 %sub173, 1073741824, !dbg !5287
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5287
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5287

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5287

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub178 = sub i64 %43, 1, !dbg !5287
  %and179 = and i64 %sub178, 536870912, !dbg !5287
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5287
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5287

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5287

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub183 = sub i64 %44, 1, !dbg !5287
  %and184 = and i64 %sub183, 268435456, !dbg !5287
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5287
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5287

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5287

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub188 = sub i64 %45, 1, !dbg !5287
  %and189 = and i64 %sub188, 134217728, !dbg !5287
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5287
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5287

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5287

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub193 = sub i64 %46, 1, !dbg !5287
  %and194 = and i64 %sub193, 67108864, !dbg !5287
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5287
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5287

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5287

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub198 = sub i64 %47, 1, !dbg !5287
  %and199 = and i64 %sub198, 33554432, !dbg !5287
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5287
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5287

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5287

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub203 = sub i64 %48, 1, !dbg !5287
  %and204 = and i64 %sub203, 16777216, !dbg !5287
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5287
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5287

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5287

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub208 = sub i64 %49, 1, !dbg !5287
  %and209 = and i64 %sub208, 8388608, !dbg !5287
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5287
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5287

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5287

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub213 = sub i64 %50, 1, !dbg !5287
  %and214 = and i64 %sub213, 4194304, !dbg !5287
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5287
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5287

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5287

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub218 = sub i64 %51, 1, !dbg !5287
  %and219 = and i64 %sub218, 2097152, !dbg !5287
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5287
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5287

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5287

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub223 = sub i64 %52, 1, !dbg !5287
  %and224 = and i64 %sub223, 1048576, !dbg !5287
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5287
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5287

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5287

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub228 = sub i64 %53, 1, !dbg !5287
  %and229 = and i64 %sub228, 524288, !dbg !5287
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5287
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5287

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5287

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub233 = sub i64 %54, 1, !dbg !5287
  %and234 = and i64 %sub233, 262144, !dbg !5287
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5287
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5287

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5287

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub238 = sub i64 %55, 1, !dbg !5287
  %and239 = and i64 %sub238, 131072, !dbg !5287
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5287
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5287

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5287

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub243 = sub i64 %56, 1, !dbg !5287
  %and244 = and i64 %sub243, 65536, !dbg !5287
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5287
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5287

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5287

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub248 = sub i64 %57, 1, !dbg !5287
  %and249 = and i64 %sub248, 32768, !dbg !5287
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5287
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5287

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5287

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub253 = sub i64 %58, 1, !dbg !5287
  %and254 = and i64 %sub253, 16384, !dbg !5287
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5287
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5287

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5287

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub258 = sub i64 %59, 1, !dbg !5287
  %and259 = and i64 %sub258, 8192, !dbg !5287
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5287
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5287

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5287

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub263 = sub i64 %60, 1, !dbg !5287
  %and264 = and i64 %sub263, 4096, !dbg !5287
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5287
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5287

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5287

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub268 = sub i64 %61, 1, !dbg !5287
  %and269 = and i64 %sub268, 2048, !dbg !5287
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5287
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5287

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5287

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub273 = sub i64 %62, 1, !dbg !5287
  %and274 = and i64 %sub273, 1024, !dbg !5287
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5287
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5287

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5287

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub278 = sub i64 %63, 1, !dbg !5287
  %and279 = and i64 %sub278, 512, !dbg !5287
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5287
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5287

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5287

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub283 = sub i64 %64, 1, !dbg !5287
  %and284 = and i64 %sub283, 256, !dbg !5287
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5287
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5287

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5287

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub288 = sub i64 %65, 1, !dbg !5287
  %and289 = and i64 %sub288, 128, !dbg !5287
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5287
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5287

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5287

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub293 = sub i64 %66, 1, !dbg !5287
  %and294 = and i64 %sub293, 64, !dbg !5287
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5287
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5287

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5287

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub298 = sub i64 %67, 1, !dbg !5287
  %and299 = and i64 %sub298, 32, !dbg !5287
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5287
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5287

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5287

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub303 = sub i64 %68, 1, !dbg !5287
  %and304 = and i64 %sub303, 16, !dbg !5287
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5287
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5287

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5287

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub308 = sub i64 %69, 1, !dbg !5287
  %and309 = and i64 %sub308, 8, !dbg !5287
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5287
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5287

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5287

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub313 = sub i64 %70, 1, !dbg !5287
  %and314 = and i64 %sub313, 4, !dbg !5287
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5287
  %71 = zext i1 %tobool315 to i64, !dbg !5287
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5287
  br label %cond.end, !dbg !5287

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5287
  br label %cond.end317, !dbg !5287

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5287
  br label %cond.end319, !dbg !5287

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5287
  br label %cond.end321, !dbg !5287

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5287
  br label %cond.end323, !dbg !5287

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5287
  br label %cond.end325, !dbg !5287

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5287
  br label %cond.end327, !dbg !5287

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5287
  br label %cond.end329, !dbg !5287

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5287
  br label %cond.end331, !dbg !5287

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5287
  br label %cond.end333, !dbg !5287

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5287
  br label %cond.end335, !dbg !5287

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5287
  br label %cond.end337, !dbg !5287

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5287
  br label %cond.end339, !dbg !5287

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5287
  br label %cond.end341, !dbg !5287

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5287
  br label %cond.end343, !dbg !5287

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5287
  br label %cond.end345, !dbg !5287

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5287
  br label %cond.end347, !dbg !5287

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5287
  br label %cond.end349, !dbg !5287

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5287
  br label %cond.end351, !dbg !5287

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5287
  br label %cond.end353, !dbg !5287

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5287
  br label %cond.end355, !dbg !5287

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5287
  br label %cond.end357, !dbg !5287

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5287
  br label %cond.end359, !dbg !5287

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5287
  br label %cond.end361, !dbg !5287

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5287
  br label %cond.end363, !dbg !5287

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5287
  br label %cond.end365, !dbg !5287

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5287
  br label %cond.end367, !dbg !5287

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5287
  br label %cond.end369, !dbg !5287

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5287
  br label %cond.end371, !dbg !5287

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5287
  br label %cond.end373, !dbg !5287

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5287
  br label %cond.end375, !dbg !5287

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5287
  br label %cond.end377, !dbg !5287

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5287
  br label %cond.end379, !dbg !5287

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5287
  br label %cond.end381, !dbg !5287

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5287
  br label %cond.end383, !dbg !5287

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5287
  br label %cond.end385, !dbg !5287

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5287
  br label %cond.end387, !dbg !5287

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5287
  br label %cond.end389, !dbg !5287

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5287
  br label %cond.end391, !dbg !5287

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5287
  br label %cond.end393, !dbg !5287

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5287
  br label %cond.end395, !dbg !5287

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5287
  br label %cond.end397, !dbg !5287

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5287
  br label %cond.end399, !dbg !5287

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5287
  br label %cond.end401, !dbg !5287

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5287
  br label %cond.end403, !dbg !5287

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5287
  br label %cond.end405, !dbg !5287

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5287
  br label %cond.end407, !dbg !5287

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5287
  br label %cond.end409, !dbg !5287

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5287
  br label %cond.end411, !dbg !5287

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5287
  br label %cond.end413, !dbg !5287

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5287
  br label %cond.end415, !dbg !5287

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5287
  br label %cond.end417, !dbg !5287

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5287
  br label %cond.end419, !dbg !5287

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5287
  br label %cond.end421, !dbg !5287

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5287
  br label %cond.end423, !dbg !5287

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5287
  br label %cond.end425, !dbg !5287

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5287
  br label %cond.end427, !dbg !5287

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5287
  br label %cond.end429, !dbg !5287

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5287
  br label %cond.end431, !dbg !5287

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5287
  br label %cond.end433, !dbg !5287

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5287
  br label %cond.end435, !dbg !5287

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5287
  br label %cond.end437, !dbg !5287

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5287
  br label %cond.end440, !dbg !5287

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5287

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5287
  br label %cond.end444, !dbg !5287

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5287
  %sub443 = sub i64 %72, 1, !dbg !5287
  %call = call i32 @__ilog2_u64(i64 %sub443) #14, !dbg !5287
  br label %cond.end444, !dbg !5287

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5287
  %sub446 = sub i32 %cond445, 12, !dbg !5288
  %add = add i32 %sub446, 1, !dbg !5289
  store i32 %add, i32* %retval, align 4, !dbg !5290
  br label %return, !dbg !5290

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5291
  %dec = add i64 %73, -1, !dbg !5291
  store i64 %dec, i64* %size.addr, align 8, !dbg !5291
  %74 = load i64, i64* %size.addr, align 8, !dbg !5292
  %shr = lshr i64 %74, 12, !dbg !5292
  store i64 %shr, i64* %size.addr, align 8, !dbg !5292
  %75 = load i64, i64* %size.addr, align 8, !dbg !5293
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5270
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5294
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5295
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !5294, !srcloc !5296
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5294
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5297
  %add.i = add i32 %79, 1, !dbg !5298
  store i32 %add.i, i32* %retval, align 4, !dbg !5299
  br label %return, !dbg !5299

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5300
  ret i32 %80, !dbg !5300
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5301 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5262, metadata !DIExpression()), !dbg !5305
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5269, metadata !DIExpression()), !dbg !5307
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  %0 = load i64, i64* %n.addr, align 8, !dbg !5310
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5307
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5311
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5312
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !5311, !srcloc !5296
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5311
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5313
  %add.i = add i32 %4, 1, !dbg !5314
  %sub = sub i32 %add.i, 1, !dbg !5315
  ret i32 %sub, !dbg !5316
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5317 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5328
  ret i8* %0, !dbg !5329
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #2 !dbg !5330 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5334, metadata !DIExpression()), !dbg !5335
  %call = call i64 @arch_local_save_flags() #11, !dbg !5336
  store i64 %call, i64* %f, align 8, !dbg !5337
  call void @arch_local_irq_disable() #11, !dbg !5338
  %0 = load i64, i64* %f, align 8, !dbg !5339
  ret i64 %0, !dbg !5340
}

; Function Attrs: noredzone
declare dso_local void @kill_fasync(%struct.fasync_struct**, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #2 !dbg !5341 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5342, metadata !DIExpression()), !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5345, metadata !DIExpression()), !dbg !5344
  %0 = load i64, i64* %__edi, align 8, !dbg !5344
  store i64 %0, i64* %__edi, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5346, metadata !DIExpression()), !dbg !5344
  %1 = load i64, i64* %__esi, align 8, !dbg !5344
  store i64 %1, i64* %__esi, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5347, metadata !DIExpression()), !dbg !5344
  %2 = load i64, i64* %__edx, align 8, !dbg !5344
  store i64 %2, i64* %__edx, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5348, metadata !DIExpression()), !dbg !5344
  %3 = load i64, i64* %__ecx, align 8, !dbg !5344
  store i64 %3, i64* %__ecx, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5349, metadata !DIExpression()), !dbg !5344
  %4 = load i64, i64* %__eax, align 8, !dbg !5344
  store i64 %4, i64* %__eax, align 8, !dbg !5344
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5344
  %6 = call i64 @llvm.read_register.i64(metadata !3996), !dbg !5350
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #10, !dbg !5350, !srcloc !5353
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5350
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5350
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5350
  call void @llvm.write_register.i64(metadata !3996, i64 %asmresult1), !dbg !5350
  %8 = load i64, i64* %__eax, align 8, !dbg !5350
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5354, metadata !DIExpression()), !dbg !5356
  store i64 -1, i64* %__mask, align 8, !dbg !5356
  %9 = load i64, i64* %__mask, align 8, !dbg !5356
  store i64 %9, i64* %tmp, align 8, !dbg !5356
  %10 = load i64, i64* %tmp, align 8, !dbg !5356
  %and = and i64 %8, %10, !dbg !5350
  store i64 %and, i64* %__ret, align 8, !dbg !5350
  %11 = load i64, i64* %__ret, align 8, !dbg !5344
  store i64 %11, i64* %tmp2, align 8, !dbg !5357
  %12 = load i64, i64* %tmp2, align 8, !dbg !5344
  ret i64 %12, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #2 !dbg !5359 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5360, metadata !DIExpression()), !dbg !5362
  %0 = load i64, i64* %__edi, align 8, !dbg !5362
  store i64 %0, i64* %__edi, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5363, metadata !DIExpression()), !dbg !5362
  %1 = load i64, i64* %__esi, align 8, !dbg !5362
  store i64 %1, i64* %__esi, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5364, metadata !DIExpression()), !dbg !5362
  %2 = load i64, i64* %__edx, align 8, !dbg !5362
  store i64 %2, i64* %__edx, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5365, metadata !DIExpression()), !dbg !5362
  %3 = load i64, i64* %__ecx, align 8, !dbg !5362
  store i64 %3, i64* %__ecx, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5366, metadata !DIExpression()), !dbg !5362
  %4 = load i64, i64* %__eax, align 8, !dbg !5362
  store i64 %4, i64* %__eax, align 8, !dbg !5362
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5362
  %6 = call i64 @llvm.read_register.i64(metadata !3996), !dbg !5362
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #10, !dbg !5362, !srcloc !5367
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5362
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5362
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5362
  call void @llvm.write_register.i64(metadata !3996, i64 %asmresult1), !dbg !5362
  ret void, !dbg !5368
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #2 !dbg !5369 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5374, metadata !DIExpression()), !dbg !5376
  %0 = load i64, i64* %__edi, align 8, !dbg !5376
  store i64 %0, i64* %__edi, align 8, !dbg !5376
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5377, metadata !DIExpression()), !dbg !5376
  %1 = load i64, i64* %__esi, align 8, !dbg !5376
  store i64 %1, i64* %__esi, align 8, !dbg !5376
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5378, metadata !DIExpression()), !dbg !5376
  %2 = load i64, i64* %__edx, align 8, !dbg !5376
  store i64 %2, i64* %__edx, align 8, !dbg !5376
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5379, metadata !DIExpression()), !dbg !5376
  %3 = load i64, i64* %__ecx, align 8, !dbg !5376
  store i64 %3, i64* %__ecx, align 8, !dbg !5376
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5380, metadata !DIExpression()), !dbg !5376
  %4 = load i64, i64* %__eax, align 8, !dbg !5376
  store i64 %4, i64* %__eax, align 8, !dbg !5376
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5376
  %6 = call i64 @llvm.read_register.i64(metadata !3996), !dbg !5376
  %7 = load i64, i64* %f.addr, align 8, !dbg !5376
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #10, !dbg !5376, !srcloc !5381
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5376
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5376
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5376
  call void @llvm.write_register.i64(metadata !3996, i64 %asmresult1), !dbg !5376
  ret void, !dbg !5382
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5383 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5390
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5391
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5392
  store i8* %0, i8** %driver_data, align 8, !dbg !5393
  ret void, !dbg !5394
}

; Function Attrs: noredzone
declare dso_local i64 @default_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @yurex_read(%struct.file* %file, i8* %buffer, i64 %count, i64* %ppos) #2 !dbg !5395 {
entry:
  %lock.addr.i57 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i57, metadata !4956, metadata !DIExpression()), !dbg !5396
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4965, metadata !DIExpression()), !dbg !5398
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4063, metadata !DIExpression()), !dbg !5399
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %len = alloca i32, align 4
  %in_buffer = alloca [20 x i8], align 16
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp44 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !5414, metadata !DIExpression()), !dbg !5415
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5416, metadata !DIExpression()), !dbg !5417
  store i32 0, i32* %len, align 4, !dbg !5417
  call void @llvm.dbg.declare(metadata [20 x i8]* %in_buffer, metadata !5418, metadata !DIExpression()), !dbg !5420
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5421, metadata !DIExpression()), !dbg !5422
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5423
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5424
  %1 = load i8*, i8** %private_data, align 8, !dbg !5424
  %2 = bitcast i8* %1 to %struct.usb_yurex*, !dbg !5423
  store %struct.usb_yurex* %2, %struct.usb_yurex** %dev, align 8, !dbg !5425
  %3 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5426
  %io_mutex = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %3, i32 0, i32 9, !dbg !5427
  call void @mutex_lock(%struct.mutex* %io_mutex) #11, !dbg !5428
  %4 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5429
  %disconnected = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %4, i32 0, i32 10, !dbg !5431
  %bf.load = load i8, i8* %disconnected, align 8, !dbg !5431
  %bf.clear = and i8 %bf.load, 1, !dbg !5431
  %bf.cast = zext i8 %bf.clear to i64, !dbg !5431
  %tobool = icmp ne i64 %bf.cast, 0, !dbg !5429
  br i1 %tobool, label %if.then, label %if.end, !dbg !5432

if.then:                                          ; preds = %entry
  %5 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5433
  %io_mutex1 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %5, i32 0, i32 9, !dbg !5435
  call void @mutex_unlock(%struct.mutex* %io_mutex1) #11, !dbg !5436
  store i64 -19, i64* %retval, align 8, !dbg !5437
  br label %return, !dbg !5437

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5438

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5439

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5440, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5443, metadata !DIExpression()), !dbg !5442
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5442
  %conv = zext i1 %cmp to i32, !dbg !5442
  store i32 1, i32* %tmp, align 4, !dbg !5442
  %6 = load i32, i32* %tmp, align 4, !dbg !5442
  br label %do.body3, !dbg !5444

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5445

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5446

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5448, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5452, metadata !DIExpression()), !dbg !5451
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5451
  %conv9 = zext i1 %cmp8 to i32, !dbg !5451
  store i32 1, i32* %tmp10, align 4, !dbg !5451
  %7 = load i32, i32* %tmp10, align 4, !dbg !5451
  %call = call i64 @arch_local_irq_save() #11, !dbg !5453
  store i64 %call, i64* %flags, align 8, !dbg !5453
  br label %do.end, !dbg !5453

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5446

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5445

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5454, !srcloc !5455
  br label %do.body13, !dbg !5454

do.body13:                                        ; preds = %do.body12
  %8 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5456
  %lock = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %8, i32 0, i32 13, !dbg !5456
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5457
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5458
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !5458
  br label %do.end15, !dbg !5456

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5454

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5445

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5444

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5439

do.end19:                                         ; preds = %do.end18
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %in_buffer, i64 0, i64 0, !dbg !5459
  %11 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5460
  %bbu = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %11, i32 0, i32 14, !dbg !5461
  %12 = load i64, i64* %bbu, align 8, !dbg !5461
  %call20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 %12) #11, !dbg !5462
  store i32 %call20, i32* %len, align 4, !dbg !5463
  %13 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5464
  %lock21 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %13, i32 0, i32 13, !dbg !5465
  %14 = load i64, i64* %flags, align 8, !dbg !5466
  store %struct.spinlock* %lock21, %struct.spinlock** %lock.addr.i57, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !218, metadata !5059, metadata !DIExpression()) #10, !dbg !5467
  call void @llvm.dbg.declare(metadata !218, metadata !5063, metadata !DIExpression()) #10, !dbg !5467
  store i32 1, i32* %tmp.i, align 4, !dbg !5467
  %15 = load i32, i32* %tmp.i, align 4, !dbg !5467
  call void @llvm.dbg.declare(metadata !218, metadata !5064, metadata !DIExpression()) #10, !dbg !5468
  call void @llvm.dbg.declare(metadata !218, metadata !5070, metadata !DIExpression()) #10, !dbg !5468
  store i32 1, i32* %tmp8.i, align 4, !dbg !5468
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !5468
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !5469
  call void @arch_local_irq_restore(i64 %17) #15, !dbg !5469
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5470, !srcloc !5074
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i57, align 8, !dbg !5471
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !5471
  %rlock.i58 = bitcast %union.anon.3* %19 to %struct.raw_spinlock*, !dbg !5471
  %20 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5472
  %io_mutex22 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %20, i32 0, i32 9, !dbg !5473
  call void @mutex_unlock(%struct.mutex* %io_mutex22) #11, !dbg !5474
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5475, metadata !DIExpression()), !dbg !5478
  %21 = load i32, i32* %len, align 4, !dbg !5478
  %conv23 = sext i32 %21 to i64, !dbg !5478
  %cmp24 = icmp uge i64 %conv23, 20, !dbg !5478
  %lnot = xor i1 %cmp24, true, !dbg !5478
  %lnot26 = xor i1 %lnot, true, !dbg !5478
  %lnot.ext = zext i1 %lnot26 to i32, !dbg !5478
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5478
  %22 = load i32, i32* %__ret_warn_on, align 4, !dbg !5479
  %tobool27 = icmp ne i32 %22, 0, !dbg !5479
  %lnot28 = xor i1 %tobool27, true, !dbg !5479
  %lnot30 = xor i1 %lnot28, true, !dbg !5479
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5479
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !5479
  %tobool33 = icmp ne i64 %conv32, 0, !dbg !5479
  br i1 %tobool33, label %if.then34, label %if.end43, !dbg !5478

if.then34:                                        ; preds = %do.end19
  br label %do.body35, !dbg !5479

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !5481

do.body36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !5483

do.end37:                                         ; preds = %do.body36
  br label %do.body38, !dbg !5481

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 419, i32 2307, i64 12) #10, !dbg !5485, !srcloc !5487
  br label %do.end39, !dbg !5485

do.end39:                                         ; preds = %do.body38
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 213) #10, !dbg !5488, !srcloc !5490
  br label %do.body40, !dbg !5481

do.body40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !5491

do.end41:                                         ; preds = %do.body40
  br label %do.end42, !dbg !5481

do.end42:                                         ; preds = %do.end41
  br label %if.end43, !dbg !5481

if.end43:                                         ; preds = %do.end42, %do.end19
  %23 = load i32, i32* %__ret_warn_on, align 4, !dbg !5478
  %tobool45 = icmp ne i32 %23, 0, !dbg !5478
  %lnot46 = xor i1 %tobool45, true, !dbg !5478
  %lnot48 = xor i1 %lnot46, true, !dbg !5478
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !5478
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !5478
  store i64 %conv50, i64* %tmp44, align 8, !dbg !5479
  %24 = load i64, i64* %tmp44, align 8, !dbg !5478
  %tobool51 = icmp ne i64 %24, 0, !dbg !5493
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !5494

if.then52:                                        ; preds = %if.end43
  store i64 -5, i64* %retval, align 8, !dbg !5495
  br label %return, !dbg !5495

if.end53:                                         ; preds = %if.end43
  %25 = load i8*, i8** %buffer.addr, align 8, !dbg !5496
  %26 = load i64, i64* %count.addr, align 8, !dbg !5497
  %27 = load i64*, i64** %ppos.addr, align 8, !dbg !5498
  %arraydecay54 = getelementptr inbounds [20 x i8], [20 x i8]* %in_buffer, i64 0, i64 0, !dbg !5499
  %28 = load i32, i32* %len, align 4, !dbg !5500
  %conv55 = sext i32 %28 to i64, !dbg !5500
  %call56 = call i64 @simple_read_from_buffer(i8* %25, i64 %26, i64* %27, i8* %arraydecay54, i64 %conv55) #11, !dbg !5501
  store i64 %call56, i64* %retval, align 8, !dbg !5502
  br label %return, !dbg !5502

return:                                           ; preds = %if.end53, %if.then52, %if.then
  %29 = load i64, i64* %retval, align 8, !dbg !5503
  ret i64 %29, !dbg !5503
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @yurex_write(%struct.file* %file, i8* %user_buffer, i64 %count, i64* %ppos) #2 !dbg !5504 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5505, metadata !DIExpression()), !dbg !5510
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5519, metadata !DIExpression()), !dbg !5520
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5521, metadata !DIExpression()), !dbg !5522
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5523, metadata !DIExpression()), !dbg !5524
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5525, metadata !DIExpression()), !dbg !5528
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5529, metadata !DIExpression()), !dbg !5530
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5531, metadata !DIExpression()), !dbg !5532
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5533, metadata !DIExpression()), !dbg !5534
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4073, metadata !DIExpression()), !dbg !5535
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4081, metadata !DIExpression()), !dbg !5537
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4084, metadata !DIExpression()), !dbg !5538
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %user_buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %i = alloca i32, align 4
  %set = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %buffer = alloca [17 x i8], align 16
  %data = alloca i8*, align 8
  %c = alloca i64, align 8
  %c2 = alloca i64, align 8
  %timeout = alloca i64, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %__UNIQUE_ID___x214 = alloca i64, align 8
  %__UNIQUE_ID___y215 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  store i8* %user_buffer, i8** %user_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %user_buffer.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !5547, metadata !DIExpression()), !dbg !5548
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5549, metadata !DIExpression()), !dbg !5550
  call void @llvm.dbg.declare(metadata i32* %set, metadata !5551, metadata !DIExpression()), !dbg !5552
  store i32 0, i32* %set, align 4, !dbg !5552
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5553, metadata !DIExpression()), !dbg !5554
  store i32 0, i32* %retval1, align 4, !dbg !5554
  call void @llvm.dbg.declare(metadata [17 x i8]* %buffer, metadata !5555, metadata !DIExpression()), !dbg !5559
  call void @llvm.dbg.declare(metadata i8** %data, metadata !5560, metadata !DIExpression()), !dbg !5561
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %buffer, i64 0, i64 0, !dbg !5562
  store i8* %arraydecay, i8** %data, align 8, !dbg !5561
  call void @llvm.dbg.declare(metadata i64* %c, metadata !5563, metadata !DIExpression()), !dbg !5564
  call void @llvm.dbg.declare(metadata i64* %c2, metadata !5565, metadata !DIExpression()), !dbg !5566
  store i64 0, i64* %c2, align 8, !dbg !5566
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5567, metadata !DIExpression()), !dbg !5568
  store i64 0, i64* %timeout, align 8, !dbg !5568
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %wait, metadata !5569, metadata !DIExpression()), !dbg !5570
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 0, !dbg !5570
  store i32 0, i32* %flags, align 8, !dbg !5570
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 1, !dbg !5570
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5537
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5537
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #12, !dbg !5538, !srcloc !4113
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !5538
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !5538
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !5538
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !5538
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5538
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5535
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5535
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !5535
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5535
  %7 = bitcast %struct.task_struct* %6 to i8*, !dbg !5570
  store i8* %7, i8** %private, align 8, !dbg !5570
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 2, !dbg !5570
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8, !dbg !5570
  %entry2 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !5570
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry2, i32 0, i32 0, !dbg !5570
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !5570
  store %struct.list_head* %entry3, %struct.list_head** %next, align 8, !dbg !5570
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry2, i32 0, i32 1, !dbg !5570
  %entry4 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !5570
  store %struct.list_head* %entry4, %struct.list_head** %prev, align 8, !dbg !5570
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x214, metadata !5571, metadata !DIExpression()), !dbg !5573
  store i64 16, i64* %__UNIQUE_ID___x214, align 8, !dbg !5573
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y215, metadata !5574, metadata !DIExpression()), !dbg !5573
  %8 = load i64, i64* %count.addr, align 8, !dbg !5573
  store i64 %8, i64* %__UNIQUE_ID___y215, align 8, !dbg !5573
  %9 = load i64, i64* %__UNIQUE_ID___x214, align 8, !dbg !5573
  %10 = load i64, i64* %__UNIQUE_ID___y215, align 8, !dbg !5573
  %cmp = icmp ult i64 %9, %10, !dbg !5573
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5573

cond.true:                                        ; preds = %entry
  %11 = load i64, i64* %__UNIQUE_ID___x214, align 8, !dbg !5573
  br label %cond.end, !dbg !5573

cond.false:                                       ; preds = %entry
  %12 = load i64, i64* %__UNIQUE_ID___y215, align 8, !dbg !5573
  br label %cond.end, !dbg !5573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !5573
  store i64 %cond, i64* %tmp, align 8, !dbg !5573
  %13 = load i64, i64* %tmp, align 8, !dbg !5573
  store i64 %13, i64* %count.addr, align 8, !dbg !5575
  %14 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5576
  %private_data = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 15, !dbg !5577
  %15 = load i8*, i8** %private_data, align 8, !dbg !5577
  %16 = bitcast i8* %15 to %struct.usb_yurex*, !dbg !5576
  store %struct.usb_yurex* %16, %struct.usb_yurex** %dev, align 8, !dbg !5578
  %17 = load i64, i64* %count.addr, align 8, !dbg !5579
  %cmp5 = icmp eq i64 %17, 0, !dbg !5581
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5582

if.then:                                          ; preds = %cond.end
  br label %error, !dbg !5583

if.end:                                           ; preds = %cond.end
  %18 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5584
  %io_mutex = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %18, i32 0, i32 9, !dbg !5585
  call void @mutex_lock(%struct.mutex* %io_mutex) #11, !dbg !5586
  %19 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5587
  %disconnected = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %19, i32 0, i32 10, !dbg !5589
  %bf.load = load i8, i8* %disconnected, align 8, !dbg !5589
  %bf.clear = and i8 %bf.load, 1, !dbg !5589
  %bf.cast = zext i8 %bf.clear to i64, !dbg !5589
  %tobool = icmp ne i64 %bf.cast, 0, !dbg !5587
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !5590

if.then6:                                         ; preds = %if.end
  %20 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5591
  %io_mutex7 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %20, i32 0, i32 9, !dbg !5593
  call void @mutex_unlock(%struct.mutex* %io_mutex7) #11, !dbg !5594
  store i32 -19, i32* %retval1, align 4, !dbg !5595
  br label %error, !dbg !5596

if.end8:                                          ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [17 x i8], [17 x i8]* %buffer, i64 0, i64 0, !dbg !5597
  %21 = load i8*, i8** %user_buffer.addr, align 8, !dbg !5598
  %22 = load i64, i64* %count.addr, align 8, !dbg !5599
  store i8* %arraydecay9, i8** %to.addr.i, align 8
  store i8* %21, i8** %from.addr.i, align 8
  store i64 %22, i64* %n.addr.i, align 8
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !5600
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !5600
  store i8* %23, i8** %addr.addr.i.i, align 8
  store i64 %24, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5524
  %25 = load i32, i32* %sz.i.i, align 4, !dbg !5601
  %cmp.i.i = icmp sge i32 %25, 0, !dbg !5601
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5601

land.rhs.i.i:                                     ; preds = %if.end8
  %26 = load i32, i32* %sz.i.i, align 4, !dbg !5601
  %conv.i.i = sext i32 %26 to i64, !dbg !5601
  %27 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5601
  %cmp1.i.i = icmp ult i64 %conv.i.i, %27, !dbg !5601
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end8
  %28 = phi i1 [ false, %if.end8 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5603
  %lnot.i.i = xor i1 %28, true, !dbg !5601
  %lnot.ext.i.i = zext i1 %28 to i32, !dbg !5601
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5601
  br i1 %28, label %if.then.i.i, label %if.end10.i.i, !dbg !5604

if.then.i.i:                                      ; preds = %land.end.i.i
  %29 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5605
  %30 = call i1 @llvm.is.constant.i64(i64 %29) #10, !dbg !5608
  br i1 %30, label %if.else.i.i, label %if.then5.i.i, !dbg !5609

if.then5.i.i:                                     ; preds = %if.then.i.i
  %31 = load i32, i32* %sz.i.i, align 4, !dbg !5610
  %32 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5611
  call void @copy_overflow(i32 %31, i64 %32) #15, !dbg !5612
  br label %if.end9.i.i, !dbg !5612

if.else.i.i:                                      ; preds = %if.then.i.i
  %33 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5613
  %tobool6.i.i = trunc i8 %33 to i1, !dbg !5613
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5615

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #15, !dbg !5616
  br label %if.end.i.i, !dbg !5616

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #15, !dbg !5617
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5618
  br label %check_copy_size.exit.i, !dbg !5618

if.end10.i.i:                                     ; preds = %land.end.i.i
  %34 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5528
  %cmp11.i.i = icmp ugt i64 %34, 2147483647, !dbg !5528
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5528
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5528
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5528
  %35 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5619
  %tobool17.i.i = icmp ne i32 %35, 0, !dbg !5619
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5619
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5619
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5619
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5528

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5621, !srcloc !5624
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5625, !srcloc !5627
  br label %if.end31.i.i, !dbg !5628

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %36 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5528
  %tobool32.i.i = icmp ne i32 %36, 0, !dbg !5528
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5528
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5528
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5528
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5619
  %37 = load i64, i64* %tmp.i.i, align 8, !dbg !5528
  %tobool38.i.i = icmp ne i64 %37, 0, !dbg !5629
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5630

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5631
  br label %check_copy_size.exit.i, !dbg !5631

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %38 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5632
  %39 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5633
  %40 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5634
  %tobool41.i.i = trunc i8 %40 to i1, !dbg !5634
  call void @check_object_size(i8* %38, i64 %39, i1 zeroext %tobool41.i.i) #15, !dbg !5635
  store i1 true, i1* %retval.i.i, align 1, !dbg !5636
  br label %check_copy_size.exit.i, !dbg !5636

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %41 = load i1, i1* %retval.i.i, align 1, !dbg !5637
  %lnot.i = xor i1 %41, true, !dbg !5600
  %lnot.ext.i = zext i1 %41 to i32, !dbg !5600
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5600
  br i1 %41, label %if.then.i, label %copy_from_user.exit, !dbg !5638

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %42 = load i8*, i8** %to.addr.i, align 8, !dbg !5639
  %43 = load i8*, i8** %from.addr.i, align 8, !dbg !5640
  %44 = load i64, i64* %n.addr.i, align 8, !dbg !5641
  %call2.i = call i64 @_copy_from_user(i8* %42, i8* %43, i64 %44) #15, !dbg !5642
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5643
  br label %copy_from_user.exit, !dbg !5644

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %45 = load i64, i64* %n.addr.i, align 8, !dbg !5645
  %tobool11 = icmp ne i64 %45, 0, !dbg !5646
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5647

if.then12:                                        ; preds = %copy_from_user.exit
  %46 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5648
  %io_mutex13 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %46, i32 0, i32 9, !dbg !5650
  call void @mutex_unlock(%struct.mutex* %io_mutex13) #11, !dbg !5651
  store i32 -14, i32* %retval1, align 4, !dbg !5652
  br label %error, !dbg !5653

if.end14:                                         ; preds = %copy_from_user.exit
  %47 = load i64, i64* %count.addr, align 8, !dbg !5654
  %arrayidx = getelementptr [17 x i8], [17 x i8]* %buffer, i64 0, i64 %47, !dbg !5655
  store i8 0, i8* %arrayidx, align 1, !dbg !5656
  %48 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5657
  %cntl_buffer = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %48, i32 0, i32 7, !dbg !5658
  %49 = load i8*, i8** %cntl_buffer, align 8, !dbg !5658
  call void @llvm.memset.p0i8.i64(i8* align 1 %49, i8 -1, i64 8, i1 false), !dbg !5659
  %arrayidx15 = getelementptr [17 x i8], [17 x i8]* %buffer, i64 0, i64 0, !dbg !5660
  %50 = load i8, i8* %arrayidx15, align 16, !dbg !5660
  %conv = sext i8 %50 to i32, !dbg !5660
  switch i32 %conv, label %sw.default [
    i32 65, label %sw.bb
    i32 76, label %sw.bb
    i32 82, label %sw.bb24
    i32 86, label %sw.bb24
    i32 83, label %sw.bb32
    i32 48, label %sw.bb33
    i32 49, label %sw.bb33
    i32 50, label %sw.bb33
    i32 51, label %sw.bb33
    i32 52, label %sw.bb33
    i32 53, label %sw.bb33
    i32 54, label %sw.bb33
    i32 55, label %sw.bb33
    i32 56, label %sw.bb33
    i32 57, label %sw.bb33
  ], !dbg !5661

sw.bb:                                            ; preds = %if.end14, %if.end14
  %arrayidx16 = getelementptr [17 x i8], [17 x i8]* %buffer, i64 0, i64 0, !dbg !5662
  %51 = load i8, i8* %arrayidx16, align 16, !dbg !5662
  %52 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5664
  %cntl_buffer17 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %52, i32 0, i32 7, !dbg !5665
  %53 = load i8*, i8** %cntl_buffer17, align 8, !dbg !5665
  %arrayidx18 = getelementptr i8, i8* %53, i64 0, !dbg !5664
  store i8 %51, i8* %arrayidx18, align 1, !dbg !5666
  %arrayidx19 = getelementptr [17 x i8], [17 x i8]* %buffer, i64 0, i64 1, !dbg !5667
  %54 = load i8, i8* %arrayidx19, align 1, !dbg !5667
  %55 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5668
  %cntl_buffer20 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %55, i32 0, i32 7, !dbg !5669
  %56 = load i8*, i8** %cntl_buffer20, align 8, !dbg !5669
  %arrayidx21 = getelementptr i8, i8* %56, i64 1, !dbg !5668
  store i8 %54, i8* %arrayidx21, align 1, !dbg !5670
  %57 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5671
  %cntl_buffer22 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %57, i32 0, i32 7, !dbg !5672
  %58 = load i8*, i8** %cntl_buffer22, align 8, !dbg !5672
  %arrayidx23 = getelementptr i8, i8* %58, i64 2, !dbg !5671
  store i8 13, i8* %arrayidx23, align 1, !dbg !5673
  br label %sw.epilog, !dbg !5674

sw.bb24:                                          ; preds = %if.end14, %if.end14
  %arrayidx25 = getelementptr [17 x i8], [17 x i8]* %buffer, i64 0, i64 0, !dbg !5675
  %59 = load i8, i8* %arrayidx25, align 16, !dbg !5675
  %60 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5676
  %cntl_buffer26 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %60, i32 0, i32 7, !dbg !5677
  %61 = load i8*, i8** %cntl_buffer26, align 8, !dbg !5677
  %arrayidx27 = getelementptr i8, i8* %61, i64 0, !dbg !5676
  store i8 %59, i8* %arrayidx27, align 1, !dbg !5678
  %62 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5679
  %cntl_buffer28 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %62, i32 0, i32 7, !dbg !5680
  %63 = load i8*, i8** %cntl_buffer28, align 8, !dbg !5680
  %arrayidx29 = getelementptr i8, i8* %63, i64 1, !dbg !5679
  store i8 0, i8* %arrayidx29, align 1, !dbg !5681
  %64 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5682
  %cntl_buffer30 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %64, i32 0, i32 7, !dbg !5683
  %65 = load i8*, i8** %cntl_buffer30, align 8, !dbg !5683
  %arrayidx31 = getelementptr i8, i8* %65, i64 2, !dbg !5682
  store i8 13, i8* %arrayidx31, align 1, !dbg !5684
  br label %sw.epilog, !dbg !5685

sw.bb32:                                          ; preds = %if.end14
  %66 = load i8*, i8** %data, align 8, !dbg !5686
  %incdec.ptr = getelementptr i8, i8* %66, i32 1, !dbg !5686
  store i8* %incdec.ptr, i8** %data, align 8, !dbg !5686
  br label %sw.bb33, !dbg !5687

sw.bb33:                                          ; preds = %if.end14, %if.end14, %if.end14, %if.end14, %if.end14, %if.end14, %if.end14, %if.end14, %if.end14, %if.end14, %sw.bb32
  store i32 1, i32* %set, align 4, !dbg !5688
  %67 = load i8*, i8** %data, align 8, !dbg !5689
  %call34 = call i64 @simple_strtoull(i8* %67, i8** null, i32 0) #11, !dbg !5690
  store i64 %call34, i64* %c2, align 8, !dbg !5691
  store i64 %call34, i64* %c, align 8, !dbg !5692
  %68 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5693
  %cntl_buffer35 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %68, i32 0, i32 7, !dbg !5694
  %69 = load i8*, i8** %cntl_buffer35, align 8, !dbg !5694
  %arrayidx36 = getelementptr i8, i8* %69, i64 0, !dbg !5693
  store i8 83, i8* %arrayidx36, align 1, !dbg !5695
  store i32 1, i32* %i, align 4, !dbg !5696
  br label %for.cond, !dbg !5698

for.cond:                                         ; preds = %for.inc, %sw.bb33
  %70 = load i32, i32* %i, align 4, !dbg !5699
  %cmp37 = icmp slt i32 %70, 6, !dbg !5701
  br i1 %cmp37, label %for.body, label %for.end, !dbg !5702

for.body:                                         ; preds = %for.cond
  %71 = load i64, i64* %c, align 8, !dbg !5703
  %shr = lshr i64 %71, 32, !dbg !5705
  %and = and i64 %shr, 255, !dbg !5706
  %conv39 = trunc i64 %and to i8, !dbg !5707
  %72 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5708
  %cntl_buffer40 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %72, i32 0, i32 7, !dbg !5709
  %73 = load i8*, i8** %cntl_buffer40, align 8, !dbg !5709
  %74 = load i32, i32* %i, align 4, !dbg !5710
  %idxprom = sext i32 %74 to i64, !dbg !5708
  %arrayidx41 = getelementptr i8, i8* %73, i64 %idxprom, !dbg !5708
  store i8 %conv39, i8* %arrayidx41, align 1, !dbg !5711
  %75 = load i64, i64* %c, align 8, !dbg !5712
  %shl = shl i64 %75, 8, !dbg !5712
  store i64 %shl, i64* %c, align 8, !dbg !5712
  br label %for.inc, !dbg !5713

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %i, align 4, !dbg !5714
  %inc = add i32 %76, 1, !dbg !5714
  store i32 %inc, i32* %i, align 4, !dbg !5714
  br label %for.cond, !dbg !5715, !llvm.loop !5716

for.end:                                          ; preds = %for.cond
  %arrayidx42 = getelementptr [17 x i8], [17 x i8]* %buffer, i64 0, i64 6, !dbg !5718
  store i8 13, i8* %arrayidx42, align 2, !dbg !5719
  br label %sw.epilog, !dbg !5720

sw.default:                                       ; preds = %if.end14
  %77 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5721
  %io_mutex43 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %77, i32 0, i32 9, !dbg !5722
  call void @mutex_unlock(%struct.mutex* %io_mutex43) #11, !dbg !5723
  store i64 -22, i64* %retval, align 8, !dbg !5724
  br label %return, !dbg !5724

sw.epilog:                                        ; preds = %for.end, %sw.bb24, %sw.bb
  %78 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5725
  %waitq = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %78, i32 0, i32 12, !dbg !5726
  call void @prepare_to_wait(%struct.wait_queue_head* %waitq, %struct.wait_queue_entry* %wait, i32 1) #11, !dbg !5727
  %79 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5728
  %cntl_urb = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %79, i32 0, i32 5, !dbg !5729
  %80 = load %struct.urb*, %struct.urb** %cntl_urb, align 8, !dbg !5729
  %call44 = call i32 @usb_submit_urb(%struct.urb* %80, i32 2592) #11, !dbg !5730
  store i32 %call44, i32* %retval1, align 4, !dbg !5731
  %81 = load i32, i32* %retval1, align 4, !dbg !5732
  %cmp45 = icmp sge i32 %81, 0, !dbg !5734
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !5735

if.then47:                                        ; preds = %sw.epilog
  %call48 = call i64 @schedule_timeout(i64 500) #11, !dbg !5736
  store i64 %call48, i64* %timeout, align 8, !dbg !5737
  br label %if.end49, !dbg !5738

if.end49:                                         ; preds = %if.then47, %sw.epilog
  %82 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5739
  %waitq50 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %82, i32 0, i32 12, !dbg !5740
  call void @finish_wait(%struct.wait_queue_head* %waitq50, %struct.wait_queue_entry* %wait) #11, !dbg !5741
  %83 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5742
  %io_mutex51 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %83, i32 0, i32 9, !dbg !5743
  call void @mutex_unlock(%struct.mutex* %io_mutex51) #11, !dbg !5744
  %84 = load i32, i32* %retval1, align 4, !dbg !5745
  %cmp52 = icmp slt i32 %84, 0, !dbg !5747
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !5748

if.then54:                                        ; preds = %if.end49
  %85 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5749
  %interface = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %85, i32 0, i32 1, !dbg !5749
  %86 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5749
  %dev55 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %86, i32 0, i32 7, !dbg !5749
  %87 = load i32, i32* %retval1, align 4, !dbg !5749
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.yurex_write, i64 0, i64 0), i32 %87) #13, !dbg !5749
  br label %error, !dbg !5751

if.end56:                                         ; preds = %if.end49
  %88 = load i32, i32* %set, align 4, !dbg !5752
  %tobool57 = icmp ne i32 %88, 0, !dbg !5752
  br i1 %tobool57, label %land.lhs.true, label %if.end60, !dbg !5754

land.lhs.true:                                    ; preds = %if.end56
  %89 = load i64, i64* %timeout, align 8, !dbg !5755
  %tobool58 = icmp ne i64 %89, 0, !dbg !5755
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !5756

if.then59:                                        ; preds = %land.lhs.true
  %90 = load i64, i64* %c2, align 8, !dbg !5757
  %91 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5758
  %bbu = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %91, i32 0, i32 14, !dbg !5759
  store i64 %90, i64* %bbu, align 8, !dbg !5760
  br label %if.end60, !dbg !5758

if.end60:                                         ; preds = %if.then59, %land.lhs.true, %if.end56
  %92 = load i64, i64* %timeout, align 8, !dbg !5761
  %tobool61 = icmp ne i64 %92, 0, !dbg !5761
  br i1 %tobool61, label %cond.true62, label %cond.false63, !dbg !5761

cond.true62:                                      ; preds = %if.end60
  %93 = load i64, i64* %count.addr, align 8, !dbg !5762
  br label %cond.end64, !dbg !5761

cond.false63:                                     ; preds = %if.end60
  br label %cond.end64, !dbg !5761

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi i64 [ %93, %cond.true62 ], [ -5, %cond.false63 ], !dbg !5761
  store i64 %cond65, i64* %retval, align 8, !dbg !5763
  br label %return, !dbg !5763

error:                                            ; preds = %if.then54, %if.then12, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !5764), !dbg !5765
  %94 = load i32, i32* %retval1, align 4, !dbg !5766
  %conv66 = sext i32 %94 to i64, !dbg !5766
  store i64 %conv66, i64* %retval, align 8, !dbg !5767
  br label %return, !dbg !5767

return:                                           ; preds = %error, %cond.end64, %sw.default
  %95 = load i64, i64* %retval, align 8, !dbg !5768
  ret i64 %95, !dbg !5768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @yurex_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5769 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  %interface = alloca %struct.usb_interface*, align 8
  %subminor = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !5774, metadata !DIExpression()), !dbg !5775
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface, metadata !5776, metadata !DIExpression()), !dbg !5777
  call void @llvm.dbg.declare(metadata i32* %subminor, metadata !5778, metadata !DIExpression()), !dbg !5779
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5780, metadata !DIExpression()), !dbg !5781
  store i32 0, i32* %retval1, align 4, !dbg !5781
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5782
  %call = call i32 @iminor(%struct.inode* %0) #11, !dbg !5783
  store i32 %call, i32* %subminor, align 4, !dbg !5784
  %1 = load i32, i32* %subminor, align 4, !dbg !5785
  %call2 = call %struct.usb_interface* @usb_find_interface(%struct.usb_driver* @yurex_driver, i32 %1) #11, !dbg !5786
  store %struct.usb_interface* %call2, %struct.usb_interface** %interface, align 8, !dbg !5787
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5788
  %tobool = icmp ne %struct.usb_interface* %2, null, !dbg !5788
  br i1 %tobool, label %if.end, label %if.then, !dbg !5790

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %subminor, align 4, !dbg !5791
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.yurex_open, i64 0, i64 0), i32 %3) #13, !dbg !5793
  store i32 -19, i32* %retval1, align 4, !dbg !5794
  br label %exit, !dbg !5795

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5796
  %call4 = call i8* @usb_get_intfdata(%struct.usb_interface* %4) #11, !dbg !5797
  %5 = bitcast i8* %call4 to %struct.usb_yurex*, !dbg !5797
  store %struct.usb_yurex* %5, %struct.usb_yurex** %dev, align 8, !dbg !5798
  %6 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5799
  %tobool5 = icmp ne %struct.usb_yurex* %6, null, !dbg !5799
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5801

if.then6:                                         ; preds = %if.end
  store i32 -19, i32* %retval1, align 4, !dbg !5802
  br label %exit, !dbg !5804

if.end7:                                          ; preds = %if.end
  %7 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5805
  %kref = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %7, i32 0, i32 8, !dbg !5806
  call void @kref_get(%struct.kref* %kref) #11, !dbg !5807
  %8 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5808
  %io_mutex = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %8, i32 0, i32 9, !dbg !5809
  call void @mutex_lock(%struct.mutex* %io_mutex) #11, !dbg !5810
  %9 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5811
  %10 = bitcast %struct.usb_yurex* %9 to i8*, !dbg !5811
  %11 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5812
  %private_data = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 15, !dbg !5813
  store i8* %10, i8** %private_data, align 8, !dbg !5814
  %12 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5815
  %io_mutex8 = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %12, i32 0, i32 9, !dbg !5816
  call void @mutex_unlock(%struct.mutex* %io_mutex8) #11, !dbg !5817
  br label %exit, !dbg !5817

exit:                                             ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !5818), !dbg !5819
  %13 = load i32, i32* %retval1, align 4, !dbg !5820
  ret i32 %13, !dbg !5821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @yurex_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5822 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.usb_yurex*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5829
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5830
  %1 = load i8*, i8** %private_data, align 8, !dbg !5830
  %2 = bitcast i8* %1 to %struct.usb_yurex*, !dbg !5829
  store %struct.usb_yurex* %2, %struct.usb_yurex** %dev, align 8, !dbg !5831
  %3 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5832
  %cmp = icmp eq %struct.usb_yurex* %3, null, !dbg !5834
  br i1 %cmp, label %if.then, label %if.end, !dbg !5835

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5837
  %kref = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %4, i32 0, i32 8, !dbg !5838
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @yurex_delete) #11, !dbg !5839
  store i32 0, i32* %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5841
  ret i32 %5, !dbg !5841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @yurex_fasync(i32 %fd, %struct.file* %file, i32 %on) #2 !dbg !5842 {
entry:
  %fd.addr = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %on.addr = alloca i32, align 4
  %dev = alloca %struct.usb_yurex*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  store i32 %on, i32* %on.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %on.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata %struct.usb_yurex** %dev, metadata !5849, metadata !DIExpression()), !dbg !5850
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5851
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5852
  %1 = load i8*, i8** %private_data, align 8, !dbg !5852
  %2 = bitcast i8* %1 to %struct.usb_yurex*, !dbg !5851
  store %struct.usb_yurex* %2, %struct.usb_yurex** %dev, align 8, !dbg !5853
  %3 = load i32, i32* %fd.addr, align 4, !dbg !5854
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5855
  %5 = load i32, i32* %on.addr, align 4, !dbg !5856
  %6 = load %struct.usb_yurex*, %struct.usb_yurex** %dev, align 8, !dbg !5857
  %async_queue = getelementptr inbounds %struct.usb_yurex, %struct.usb_yurex* %6, i32 0, i32 11, !dbg !5858
  %call = call i32 @fasync_helper(i32 %3, %struct.file* %4, i32 %5, %struct.fasync_struct** %async_queue) #11, !dbg !5859
  ret i32 %call, !dbg !5860
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i64 @simple_read_from_buffer(i8*, i64, i64*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

; Function Attrs: noredzone
declare dso_local void @prepare_to_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #1

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #1

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !5861 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5864, metadata !DIExpression()), !dbg !5865
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5866, metadata !DIExpression()), !dbg !5867
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5868, metadata !DIExpression()), !dbg !5870
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5870
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5871
  %tobool = icmp ne i32 %0, 0, !dbg !5871
  %lnot = xor i1 %tobool, true, !dbg !5871
  %lnot1 = xor i1 %lnot, true, !dbg !5871
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5871
  %conv = sext i32 %lnot.ext to i64, !dbg !5871
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5871
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5870

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5871

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5873

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5875

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5873
  %2 = load i64, i64* %count.addr, align 8, !dbg !5873
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %1, i64 %2) #11, !dbg !5873
  br label %do.body4, !dbg !5873

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5877

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5879

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5877

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !5881, !srcloc !5883
  br label %do.end8, !dbg !5881

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #10, !dbg !5884, !srcloc !5886
  br label %do.body9, !dbg !5877

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5887

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5877

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5873

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5889

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5873

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5873

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5870
  %tobool15 = icmp ne i32 %3, 0, !dbg !5870
  %lnot16 = xor i1 %tobool15, true, !dbg !5870
  %lnot18 = xor i1 %lnot16, true, !dbg !5870
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5870
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5870
  store i64 %conv20, i64* %tmp, align 8, !dbg !5871
  %4 = load i64, i64* %tmp, align 8, !dbg !5870
  ret void, !dbg !5891
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !5892 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5895, metadata !DIExpression()), !dbg !5896
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  ret void, !dbg !5901
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iminor(%struct.inode* %inode) #2 !dbg !5902 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5905, metadata !DIExpression()), !dbg !5906
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5907
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !5907
  %1 = load i32, i32* %i_rdev, align 4, !dbg !5907
  %and = and i32 %1, 1048575, !dbg !5907
  ret i32 %and, !dbg !5908
}

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @usb_find_interface(%struct.usb_driver*, i32) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !5909 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5914
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5915
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #11, !dbg !5916
  ret i8* %call, !dbg !5917
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #2 !dbg !5918 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5921
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5922
  call void @refcount_inc(%struct.refcount_struct* %refcount) #11, !dbg !5923
  ret void, !dbg !5924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5925 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5930, metadata !DIExpression()), !dbg !5931
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5932
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5933
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5933
  ret i8* %1, !dbg !5934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #2 !dbg !5935 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5940
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #11, !dbg !5941
  ret void, !dbg !5942
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5943 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5950
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5951
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #11, !dbg !5952
  ret void, !dbg !5953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5954 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5957, metadata !DIExpression()), !dbg !5961
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5965, metadata !DIExpression()), !dbg !5966
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5967, metadata !DIExpression()), !dbg !5969
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5970, metadata !DIExpression()), !dbg !5972
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5974, metadata !DIExpression()), !dbg !5975
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5976, metadata !DIExpression()), !dbg !5977
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5978, metadata !DIExpression()), !dbg !5979
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5980, metadata !DIExpression()), !dbg !5981
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5982, metadata !DIExpression()), !dbg !5983
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5984, metadata !DIExpression()), !dbg !5985
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5986, metadata !DIExpression()), !dbg !5987
  %0 = load i32, i32* %i.addr, align 4, !dbg !5988
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5989
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5990
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5991
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5991
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5992
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5993
  %conv.i.i = trunc i64 %5 to i32, !dbg !5993
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #15, !dbg !5994
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5995
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5995
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #15, !dbg !5995
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5996
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5997
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5969
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5969
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5969
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5969
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5969
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #10, !dbg !5969, !srcloc !5998
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5969
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5969
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5969
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5969
  store i32 %15, i32* %old, align 4, !dbg !5987
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5999
  %tobool = icmp ne i32* %16, null, !dbg !5999
  br i1 %tobool, label %if.then, label %if.end, !dbg !6001

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !6002
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !6003
  store i32 %17, i32* %18, align 4, !dbg !6004
  br label %if.end, !dbg !6005

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !6006
  %tobool1 = icmp ne i32 %19, 0, !dbg !6006
  %lnot = xor i1 %tobool1, true, !dbg !6006
  %lnot2 = xor i1 %lnot, true, !dbg !6006
  %lnot3 = xor i1 %lnot2, true, !dbg !6006
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6006
  %conv = sext i32 %lnot.ext to i64, !dbg !6006
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6006
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6008

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6009
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #11, !dbg !6010
  br label %if.end17, !dbg !6010

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6011
  %cmp = icmp slt i32 %21, 0, !dbg !6011
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6011

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !6011
  %23 = load i32, i32* %i.addr, align 4, !dbg !6011
  %add = add i32 %22, %23, !dbg !6011
  %cmp7 = icmp slt i32 %add, 0, !dbg !6011
  br label %lor.end, !dbg !6011

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !6011
  %lnot11 = xor i1 %lnot9, true, !dbg !6011
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6011
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6011
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !6011
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6013

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6014
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #11, !dbg !6015
  br label %if.end16, !dbg !6015

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !6016
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, %struct.fasync_struct**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #2 !dbg !6017 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6022
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #11, !dbg !6023
  ret i1 %call, !dbg !6024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #2 !dbg !6025 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6032
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !6033
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #11, !dbg !6034
  ret i1 %call, !dbg !6035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #2 !dbg !6036 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6039, metadata !DIExpression()), !dbg !6041
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6045, metadata !DIExpression()), !dbg !6046
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !6047, metadata !DIExpression()), !dbg !6049
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5970, metadata !DIExpression()), !dbg !6050
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5974, metadata !DIExpression()), !dbg !6052
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6053, metadata !DIExpression()), !dbg !6054
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6055, metadata !DIExpression()), !dbg !6056
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !6057, metadata !DIExpression()), !dbg !6058
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6059, metadata !DIExpression()), !dbg !6060
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.declare(metadata i32* %old, metadata !6063, metadata !DIExpression()), !dbg !6064
  %0 = load i32, i32* %i.addr, align 4, !dbg !6065
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6066
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !6067
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6068
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6068
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6069
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6070
  %conv.i.i = trunc i64 %5 to i32, !dbg !6070
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #15, !dbg !6071
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6072
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6072
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #15, !dbg !6072
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !6073
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6074
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6049
  %sub.i.i = sub i32 0, %10, !dbg !6049
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !6049
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !6049
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6049
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !6049
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #10, !dbg !6049, !srcloc !6075
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !6049
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !6049
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !6049
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !6049
  store i32 %15, i32* %old, align 4, !dbg !6064
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !6076
  %tobool = icmp ne i32* %16, null, !dbg !6076
  br i1 %tobool, label %if.then, label %if.end, !dbg !6078

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !6079
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !6080
  store i32 %17, i32* %18, align 4, !dbg !6081
  br label %if.end, !dbg !6082

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !6083
  %20 = load i32, i32* %i.addr, align 4, !dbg !6085
  %cmp = icmp eq i32 %19, %20, !dbg !6086
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6087

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !6088, !srcloc !6090
  store i1 true, i1* %retval, align 1, !dbg !6091
  br label %return, !dbg !6091

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6092
  %cmp3 = icmp slt i32 %21, 0, !dbg !6092
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !6092

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !6092
  %23 = load i32, i32* %i.addr, align 4, !dbg !6092
  %sub = sub i32 %22, %23, !dbg !6092
  %cmp4 = icmp slt i32 %sub, 0, !dbg !6092
  br label %lor.end, !dbg !6092

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !6092
  %lnot5 = xor i1 %lnot, true, !dbg !6092
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6092
  %conv = sext i32 %lnot.ext to i64, !dbg !6092
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6092
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6094

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6095
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #11, !dbg !6096
  br label %if.end8, !dbg !6096

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !6097
  br label %return, !dbg !6097

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !6098
  ret i1 %26, !dbg !6098
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_put_intf(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local void @usb_put_dev(%struct.usb_device*) #1

; Function Attrs: noredzone
declare dso_local void @usb_deregister_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

; Function Attrs: noredzone
declare dso_local void @usb_poison_urb(%struct.urb*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { nounwind readnone }
attributes #13 = { cold noredzone }
attributes #14 = { noredzone nounwind readnone }
attributes #15 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3996}
!llvm.module.flags = !{!3997, !3998, !3999, !4000}
!llvm.ident = !{!4001}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_yurex_driver_init216", scope: !2, file: !3, line: 524, type: !144, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !3901, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/misc/yurex.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !99, !108, !113, !118, !125}
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
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !114, line: 10, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117}
!116 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !119, line: 305, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !126, line: 119, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!133 = !{!134, !137, !139, !141, !144, !145, !146, !155, !2855, !2857, !173, !7, !3821}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !136, line: 76, flags: DIFlagFwdDecl)
!136 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !138, line: 148, baseType: !7)
!138 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !140, line: 29, baseType: !141)
!140 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !142, line: 24, baseType: !143)
!142 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !148, line: 640, size: 48640, elements: !149)
!148 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !160, !163, !164, !174, !175, !176, !177, !178, !179, !180, !181, !185, !219, !230, !340, !341, !342, !353, !354, !356, !357, !2170, !2171, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2248, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2263, !2264, !2265, !2267, !2268, !2269, !2270, !2271, !2272, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2296, !2301, !2302, !2303, !2304, !2305, !2307, !2310, !2313, !2316, !2319, !2323, !2424, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2472, !2473, !2474, !2475, !2476, !2481, !2482, !2483, !2486, !2487, !2490, !2493, !2496, !2497, !2529, !2532, !2533, !2612, !2613, !2616, !2617, !2620, !2621, !2622, !2626, !2627, !2628, !2641, !2642, !2643, !2653, !2658, !2659, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !147, file: !148, line: 646, baseType: !151, size: 128)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !152, line: 56, size: 128, elements: !153)
!152 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !152, line: 57, baseType: !155, size: 64)
!155 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !151, file: !152, line: 58, baseType: !157, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !158, line: 21, baseType: !159)
!158 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !142, line: 27, baseType: !7)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !147, file: !148, line: 649, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !162)
!162 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !147, file: !148, line: 657, baseType: !144, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !147, file: !148, line: 658, baseType: !165, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !126, line: 113, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !126, line: 111, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !166, file: !126, line: 112, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !138, line: 168, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 166, size: 32, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !170, file: !138, line: 167, baseType: !173, size: 32)
!173 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !148, line: 660, baseType: !7, size: 32, offset: 288)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !147, file: !148, line: 661, baseType: !7, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !147, file: !148, line: 684, baseType: !173, size: 32, offset: 352)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !147, file: !148, line: 686, baseType: !173, size: 32, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !147, file: !148, line: 687, baseType: !173, size: 32, offset: 416)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !147, file: !148, line: 688, baseType: !173, size: 32, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !147, file: !148, line: 689, baseType: !7, size: 32, offset: 480)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !147, file: !148, line: 691, baseType: !182, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !148, line: 691, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !147, file: !148, line: 692, baseType: !186, size: 832, offset: 576)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !148, line: 451, size: 832, elements: !187)
!187 = !{!188, !193, !201, !207, !208, !212, !213, !214, !215, !216}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !186, file: !148, line: 453, baseType: !189, size: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !148, line: 325, size: 128, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !189, file: !148, line: 326, baseType: !155, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !189, file: !148, line: 327, baseType: !157, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !186, file: !148, line: 454, baseType: !194, size: 192, align: 64, offset: 128)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !195, line: 24, size: 192, align: 64, elements: !196)
!195 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!196 = !{!197, !198, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !194, file: !195, line: 25, baseType: !155, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !194, file: !195, line: 26, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !194, file: !195, line: 27, baseType: !199, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !186, file: !148, line: 455, baseType: !202, size: 128, offset: 320)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !138, line: 178, size: 128, elements: !203)
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !138, line: 179, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !138, line: 179, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !186, file: !148, line: 456, baseType: !7, size: 32, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !186, file: !148, line: 458, baseType: !209, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !158, line: 23, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !142, line: 31, baseType: !211)
!211 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !186, file: !148, line: 459, baseType: !209, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !186, file: !148, line: 460, baseType: !209, size: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !186, file: !148, line: 461, baseType: !209, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !186, file: !148, line: 463, baseType: !209, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !186, file: !148, line: 465, baseType: !217, offset: 832)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !148, line: 415, elements: !218)
!218 = !{}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !147, file: !148, line: 693, baseType: !220, size: 384, offset: 1408)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !148, line: 489, size: 384, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !220, file: !148, line: 490, baseType: !202, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !220, file: !148, line: 491, baseType: !155, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !220, file: !148, line: 492, baseType: !155, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !220, file: !148, line: 493, baseType: !7, size: 32, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !220, file: !148, line: 494, baseType: !143, size: 16, offset: 288)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !220, file: !148, line: 495, baseType: !143, size: 16, offset: 304)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !220, file: !148, line: 497, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !147, file: !148, line: 697, baseType: !231, size: 1792, offset: 1792)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !148, line: 507, size: 1792, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !243, !244, !245, !246, !247, !248, !249, !337, !338}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !231, file: !148, line: 508, baseType: !194, size: 192, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !231, file: !148, line: 515, baseType: !209, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !231, file: !148, line: 516, baseType: !209, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !231, file: !148, line: 517, baseType: !209, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !231, file: !148, line: 518, baseType: !209, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !231, file: !148, line: 519, baseType: !209, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !231, file: !148, line: 526, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !158, line: 22, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !142, line: 30, baseType: !242)
!242 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !231, file: !148, line: 527, baseType: !209, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !148, line: 528, baseType: !7, size: 32, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !231, file: !148, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !231, file: !148, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !231, file: !148, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !231, file: !148, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !231, file: !148, line: 563, baseType: !250, size: 512, offset: 704)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !251)
!251 = !{!252, !260, !261, !266, !330, !334, !335, !336}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !250, file: !21, line: 119, baseType: !253, size: 256)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !254, line: 9, size: 256, elements: !255)
!254 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !254, line: 10, baseType: !194, size: 192, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !253, file: !254, line: 11, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !259, line: 29, baseType: !240)
!259 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !250, file: !21, line: 120, baseType: !258, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !250, file: !21, line: 121, baseType: !262, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!20, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !250, file: !21, line: 122, baseType: !267, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !269)
!269 = !{!270, !298, !299, !303, !313, !314, !325, !329}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !268, file: !21, line: 160, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !273)
!273 = !{!274, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !272, file: !21, line: 215, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !276, line: 29, baseType: !277)
!276 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !276, line: 20, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !277, file: !276, line: 21, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !281, line: 25, baseType: !282)
!281 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 25, elements: !218)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !272, file: !21, line: 216, baseType: !7, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !272, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !272, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !272, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !272, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !272, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !272, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !272, file: !21, line: 233, baseType: !258, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !272, file: !21, line: 234, baseType: !265, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !272, file: !21, line: 235, baseType: !258, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !272, file: !21, line: 236, baseType: !265, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !272, file: !21, line: 237, baseType: !295, size: 4096, offset: 512)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 4096, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !268, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !268, file: !21, line: 162, baseType: !300, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !138, line: 27, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !302, line: 96, baseType: !173)
!302 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !268, file: !21, line: 163, baseType: !304, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !305, line: 276, baseType: !306)
!305 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !305, line: 276, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !306, file: !305, line: 276, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !305, line: 70, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !305, line: 65, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !310, file: !305, line: 66, baseType: !7, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !268, file: !21, line: 164, baseType: !265, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !268, file: !21, line: 165, baseType: !315, size: 128, offset: 256)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !254, line: 14, size: 128, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !315, file: !254, line: 15, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !195, line: 125, size: 128, elements: !319)
!319 = !{!320, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !318, file: !195, line: 126, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !195, line: 31, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !321, file: !195, line: 32, baseType: !199, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !318, file: !195, line: 127, baseType: !199, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !268, file: !21, line: 166, baseType: !326, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!258}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !268, file: !21, line: 167, baseType: !258, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !250, file: !21, line: 123, baseType: !331, size: 8, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !158, line: 17, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !142, line: 21, baseType: !333)
!333 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !250, file: !21, line: 124, baseType: !331, size: 8, offset: 456)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !250, file: !21, line: 125, baseType: !331, size: 8, offset: 464)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !250, file: !21, line: 126, baseType: !331, size: 8, offset: 472)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !231, file: !148, line: 572, baseType: !250, size: 512, offset: 1216)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !231, file: !148, line: 580, baseType: !339, size: 64, offset: 1728)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !147, file: !148, line: 721, baseType: !7, size: 32, offset: 3584)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !147, file: !148, line: 722, baseType: !173, size: 32, offset: 3616)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !147, file: !148, line: 723, baseType: !343, size: 64, offset: 3648)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !346, line: 17, baseType: !347)
!346 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !346, line: 17, size: 64, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !347, file: !346, line: 17, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 1)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !147, file: !148, line: 724, baseType: !345, size: 64, offset: 3712)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !147, file: !148, line: 749, baseType: !355, offset: 3776)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !148, line: 290, elements: !218)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !147, file: !148, line: 751, baseType: !202, size: 128, offset: 3776)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !147, file: !148, line: 757, baseType: !358, size: 64, offset: 3904)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !360, line: 388, size: 7296, elements: !361)
!360 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !2166}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !360, line: 389, baseType: !363, size: 7296)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !360, line: 389, size: 7296, elements: !364)
!364 = !{!365, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2079, !2085, !2088, !2127, !2128, !2150, !2151, !2154, !2155, !2156, !2159, !2160, !2161, !2164, !2165}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !363, file: !360, line: 390, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !360, line: 305, size: 1472, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !384, !385, !390, !391, !394, !398, !399, !2027, !2028, !2029}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !367, file: !360, line: 308, baseType: !155, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !367, file: !360, line: 309, baseType: !155, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !367, file: !360, line: 313, baseType: !366, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !367, file: !360, line: 313, baseType: !366, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !367, file: !360, line: 315, baseType: !194, size: 192, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !367, file: !360, line: 323, baseType: !155, size: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !367, file: !360, line: 327, baseType: !358, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !367, file: !360, line: 333, baseType: !377, size: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !378, line: 284, baseType: !379)
!378 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !378, line: 284, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !379, file: !378, line: 284, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !383, line: 19, baseType: !155)
!383 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !367, file: !360, line: 334, baseType: !155, size: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !367, file: !360, line: 343, baseType: !386, size: 256, offset: 704)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !360, line: 340, size: 256, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !386, file: !360, line: 341, baseType: !194, size: 192, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !386, file: !360, line: 342, baseType: !155, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !367, file: !360, line: 351, baseType: !202, size: 128, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !367, file: !360, line: 353, baseType: !392, size: 64, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !360, line: 353, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !367, file: !360, line: 356, baseType: !395, size: 64, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !360, line: 356, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !367, file: !360, line: 359, baseType: !155, size: 64, offset: 1216)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !367, file: !360, line: 361, baseType: !400, size: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !402)
!402 = !{!403, !421, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1826, !2011, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !401, file: !38, line: 920, baseType: !404, size: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !38, line: 917, size: 128, elements: !405)
!405 = !{!406, !412}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !404, file: !38, line: 918, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !408, line: 58, size: 64, elements: !409)
!408 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !408, line: 59, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !404, file: !38, line: 919, baseType: !413, size: 128, align: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !138, line: 216, size: 128, align: 64, elements: !414)
!414 = !{!415, !417}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !138, line: 217, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !413, file: !138, line: 218, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !416}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !401, file: !38, line: 921, baseType: !422, size: 128, offset: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !423, line: 8, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !422, file: !423, line: 9, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !428, line: 18, flags: DIFlagFwdDecl)
!428 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !422, file: !423, line: 10, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !428, line: 89, size: 1536, elements: !432)
!432 = !{!433, !434, !439, !447, !448, !463, !1755, !1757, !1769, !1770, !1771, !1772, !1773, !1779, !1780, !1781}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !431, file: !428, line: 91, baseType: !7, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !431, file: !428, line: 92, baseType: !435, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !305, line: 277, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !305, line: 277, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !436, file: !305, line: 277, baseType: !309, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !431, file: !428, line: 93, baseType: !440, size: 128, offset: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !441, line: 38, size: 128, elements: !442)
!441 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !441, line: 39, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !440, file: !441, line: 39, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !431, file: !428, line: 94, baseType: !430, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !431, file: !428, line: 95, baseType: !449, size: 128, offset: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !428, line: 47, size: 128, elements: !450)
!450 = !{!451, !460}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !428, line: 48, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !428, line: 48, size: 64, elements: !453)
!453 = !{!454, !459}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !428, line: 49, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !428, line: 49, size: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !455, file: !428, line: 50, baseType: !157, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !455, file: !428, line: 50, baseType: !157, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !452, file: !428, line: 52, baseType: !209, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !428, line: 54, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !431, file: !428, line: 96, baseType: !464, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !466)
!466 = !{!467, !469, !470, !478, !485, !486, !642, !1462, !1463, !1464, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1731, !1739, !1740, !1741, !1751, !1752, !1753, !1754}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !465, file: !38, line: 611, baseType: !468, size: 16)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !138, line: 19, baseType: !143)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !465, file: !38, line: 612, baseType: !143, size: 16, offset: 16)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !465, file: !38, line: 613, baseType: !471, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !472, line: 23, baseType: !473)
!472 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 21, size: 32, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !473, file: !472, line: 22, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !138, line: 32, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !302, line: 49, baseType: !7)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !465, file: !38, line: 614, baseType: !479, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !472, line: 28, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 26, size: 32, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !480, file: !472, line: 27, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !138, line: 33, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !302, line: 50, baseType: !7)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !465, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !465, file: !38, line: 622, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !490)
!490 = !{!491, !495, !511, !515, !521, !526, !532, !536, !540, !544, !548, !549, !555, !559, !583, !612, !622, !628, !633, !637, !638}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !489, file: !38, line: 1865, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!430, !464, !430, !7}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !489, file: !38, line: 1866, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !430, !464, !502}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !504, line: 10, size: 128, elements: !505)
!504 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!505 = !{!506, !510}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !503, file: !504, line: 11, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !144}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !503, file: !504, line: 12, baseType: !144, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !489, file: !38, line: 1867, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!173, !464, !173}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !489, file: !38, line: 1868, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !464, !173}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !489, file: !38, line: 1870, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!173, !430, !525, !173}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !489, file: !38, line: 1872, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!173, !464, !430, !468, !530}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !138, line: 30, baseType: !531)
!531 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !489, file: !38, line: 1873, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!173, !430, !464, !430}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !489, file: !38, line: 1874, baseType: !537, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!173, !464, !430}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !489, file: !38, line: 1875, baseType: !541, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!173, !464, !430, !499}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !489, file: !38, line: 1876, baseType: !545, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!173, !464, !430, !468}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !489, file: !38, line: 1877, baseType: !537, size: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !489, file: !38, line: 1878, baseType: !550, size: 64, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!173, !464, !430, !468, !553}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !138, line: 16, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !138, line: 13, baseType: !157)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !489, file: !38, line: 1879, baseType: !556, size: 64, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!173, !464, !430, !464, !430, !7}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !489, file: !38, line: 1881, baseType: !560, size: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!173, !430, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !565)
!565 = !{!566, !567, !568, !569, !570, !573, !580, !581, !582}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !564, file: !38, line: 220, baseType: !7, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !564, file: !38, line: 221, baseType: !468, size: 16, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !564, file: !38, line: 222, baseType: !471, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !564, file: !38, line: 223, baseType: !479, size: 32, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !564, file: !38, line: 224, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !138, line: 46, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !302, line: 88, baseType: !242)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !564, file: !38, line: 225, baseType: !574, size: 128, offset: 192)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !575, line: 13, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !574, file: !575, line: 14, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !575, line: 8, baseType: !241)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !574, file: !575, line: 15, baseType: !162, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !564, file: !38, line: 226, baseType: !574, size: 128, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !564, file: !38, line: 227, baseType: !574, size: 128, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !564, file: !38, line: 234, baseType: !400, size: 64, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !489, file: !38, line: 1882, baseType: !584, size: 64, offset: 896)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!173, !587, !589, !157, !7}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !591, line: 22, size: 1152, elements: !592)
!591 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!592 = !{!593, !594, !595, !596, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !590, file: !591, line: 23, baseType: !157, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !590, file: !591, line: 24, baseType: !468, size: 16, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !590, file: !591, line: 25, baseType: !7, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !590, file: !591, line: 26, baseType: !597, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 104, baseType: !157)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !590, file: !591, line: 27, baseType: !209, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !590, file: !591, line: 28, baseType: !209, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !590, file: !591, line: 37, baseType: !209, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !590, file: !591, line: 38, baseType: !553, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !590, file: !591, line: 39, baseType: !553, size: 32, offset: 352)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !590, file: !591, line: 40, baseType: !471, size: 32, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !590, file: !591, line: 41, baseType: !479, size: 32, offset: 416)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !590, file: !591, line: 42, baseType: !571, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !590, file: !591, line: 43, baseType: !574, size: 128, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !590, file: !591, line: 44, baseType: !574, size: 128, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !590, file: !591, line: 45, baseType: !574, size: 128, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !590, file: !591, line: 46, baseType: !574, size: 128, offset: 896)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !590, file: !591, line: 47, baseType: !209, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !590, file: !591, line: 48, baseType: !209, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !489, file: !38, line: 1883, baseType: !613, size: 64, offset: 960)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !430, !525, !619}
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !138, line: 60, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !302, line: 73, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !302, line: 15, baseType: !162)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 55, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !302, line: 72, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !302, line: 16, baseType: !155)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !489, file: !38, line: 1884, baseType: !623, size: 64, offset: 1024)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!173, !464, !626, !209, !209}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !489, file: !38, line: 1886, baseType: !629, size: 64, offset: 1088)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!173, !464, !632, !173}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !489, file: !38, line: 1887, baseType: !634, size: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!173, !464, !430, !400, !7, !468}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !489, file: !38, line: 1890, baseType: !545, size: 64, offset: 1216)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !489, file: !38, line: 1891, baseType: !639, size: 64, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!173, !464, !519, !173}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !465, file: !38, line: 623, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !700, !1038, !1126, !1209, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1225, !1229, !1230, !1233, !1236, !1239, !1240, !1241, !1282, !1315, !1316, !1317, !1318, !1319, !1320, !1323, !1327, !1336, !1337, !1339, !1340, !1341, !1400, !1401, !1416, !1417, !1418, !1419, !1420, !1424, !1425, !1428, !1443, !1444, !1445, !1456, !1457, !1458, !1459, !1460, !1461}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !644, file: !38, line: 1417, baseType: !202, size: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !644, file: !38, line: 1418, baseType: !553, size: 32, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !644, file: !38, line: 1419, baseType: !333, size: 8, offset: 160)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !644, file: !38, line: 1420, baseType: !155, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !644, file: !38, line: 1421, baseType: !571, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !644, file: !38, line: 1422, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !654)
!654 = !{!655, !656, !657, !664, !668, !672, !676, !677, !678, !688, !691, !692, !693, !697, !698, !699}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !38, line: 2229, baseType: !499, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !653, file: !38, line: 2230, baseType: !173, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !653, file: !38, line: 2238, baseType: !658, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!173, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !663, line: 28, flags: DIFlagFwdDecl)
!663 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !653, file: !38, line: 2239, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !653, file: !38, line: 2240, baseType: !669, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!430, !652, !173, !499, !144}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !653, file: !38, line: 2242, baseType: !673, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !643}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !653, file: !38, line: 2243, baseType: !134, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !38, line: 2244, baseType: !652, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !653, file: !38, line: 2245, baseType: !679, size: 64, offset: 512)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !138, line: 182, size: 64, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !679, file: !138, line: 183, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !138, line: 186, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !138, line: 187, baseType: !682, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !683, file: !138, line: 187, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !653, file: !38, line: 2247, baseType: !689, offset: 576)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !690, line: 187, elements: !218)
!690 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !653, file: !38, line: 2248, baseType: !689, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !653, file: !38, line: 2249, baseType: !689, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !653, file: !38, line: 2250, baseType: !694, offset: 576)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 3)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !653, file: !38, line: 2252, baseType: !689, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !653, file: !38, line: 2253, baseType: !689, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !653, file: !38, line: 2254, baseType: !689, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !644, file: !38, line: 1423, baseType: !701, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !704)
!704 = !{!705, !709, !713, !714, !718, !724, !728, !729, !730, !734, !738, !739, !740, !741, !747, !752, !753, !759, !760, !761, !762, !1022, !1037}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !703, file: !38, line: 1936, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!464, !643}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !703, file: !38, line: 1937, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !464}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !703, file: !38, line: 1938, baseType: !710, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !703, file: !38, line: 1940, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !464, !173}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !703, file: !38, line: 1941, baseType: !719, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!173, !464, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !703, file: !38, line: 1942, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!173, !464}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !703, file: !38, line: 1943, baseType: !710, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !703, file: !38, line: 1944, baseType: !673, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !703, file: !38, line: 1945, baseType: !731, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!173, !643, !173}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !703, file: !38, line: 1946, baseType: !735, size: 64, offset: 576)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!173, !643}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !703, file: !38, line: 1947, baseType: !735, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !703, file: !38, line: 1948, baseType: !735, size: 64, offset: 704)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !703, file: !38, line: 1949, baseType: !735, size: 64, offset: 768)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !703, file: !38, line: 1950, baseType: !742, size: 64, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!173, !430, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !703, file: !38, line: 1951, baseType: !748, size: 64, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!173, !643, !751, !525}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !703, file: !38, line: 1952, baseType: !673, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !703, file: !38, line: 1954, baseType: !754, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!173, !757, !430}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !378, line: 539, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !703, file: !38, line: 1955, baseType: !754, size: 64, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !703, file: !38, line: 1956, baseType: !754, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !703, file: !38, line: 1957, baseType: !754, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !703, file: !38, line: 1963, baseType: !763, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!173, !643, !766, !137}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !360, line: 68, size: 512, align: 128, elements: !768)
!768 = !{!769, !770, !1014, !1021}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !360, line: 69, baseType: !155, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !360, line: 77, baseType: !771, size: 320, offset: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !360, line: 77, size: 320, elements: !772)
!772 = !{!773, !946, !951, !979, !987, !993, !1006, !1013}
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !360, line: 78, baseType: !774, size: 320)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !360, line: 78, size: 320, elements: !775)
!775 = !{!776, !777, !944, !945}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !774, file: !360, line: 84, baseType: !202, size: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !774, file: !360, line: 86, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !780)
!780 = !{!781, !782, !796, !797, !798, !799, !813, !814, !815, !816, !937, !938, !941, !942, !943}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !779, file: !38, line: 452, baseType: !464, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !779, file: !38, line: 453, baseType: !783, size: 128, offset: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !784, line: 292, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !794, !795}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !783, file: !784, line: 293, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !276, line: 83, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !276, line: 71, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !788, file: !276, line: 72, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !788, file: !276, line: 72, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !791, file: !276, line: 73, baseType: !277)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !783, file: !784, line: 295, baseType: !137, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !783, file: !784, line: 296, baseType: !144, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !779, file: !38, line: 454, baseType: !137, size: 32, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !779, file: !38, line: 455, baseType: !169, size: 32, offset: 224)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !779, file: !38, line: 460, baseType: !318, size: 128, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !779, file: !38, line: 461, baseType: !800, size: 256, offset: 384)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !801, line: 35, size: 256, elements: !802)
!801 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !810, !811, !812}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !800, file: !801, line: 36, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !805, line: 13, baseType: !806)
!805 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !138, line: 175, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 173, size: 64, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !807, file: !138, line: 174, baseType: !240, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !800, file: !801, line: 42, baseType: !804, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !800, file: !801, line: 46, baseType: !275, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !800, file: !801, line: 47, baseType: !202, size: 128, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !779, file: !38, line: 462, baseType: !155, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !779, file: !38, line: 463, baseType: !155, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !779, file: !38, line: 464, baseType: !155, size: 64, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !779, file: !38, line: 465, baseType: !817, size: 64, offset: 832)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !820)
!820 = !{!821, !825, !829, !833, !837, !841, !847, !853, !857, !862, !866, !870, !874, !901, !905, !911, !912, !913, !917, !922, !926, !933}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !819, file: !38, line: 368, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!173, !766, !722}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !819, file: !38, line: 369, baseType: !826, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!173, !400, !766}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !819, file: !38, line: 372, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!173, !778, !722}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !819, file: !38, line: 375, baseType: !834, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!173, !766}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !819, file: !38, line: 381, baseType: !838, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!173, !400, !778, !205, !7}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !819, file: !38, line: 383, baseType: !842, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !819, file: !38, line: 385, baseType: !848, size: 64, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!173, !400, !778, !571, !7, !7, !851, !852}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !819, file: !38, line: 388, baseType: !854, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!173, !400, !778, !571, !7, !7, !766, !144}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !819, file: !38, line: 393, baseType: !858, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!861, !778, !861}
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !138, line: 125, baseType: !209)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !819, file: !38, line: 394, baseType: !863, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !766, !7, !7}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !819, file: !38, line: 395, baseType: !867, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!173, !766, !137}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !819, file: !38, line: 396, baseType: !871, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !766}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !819, file: !38, line: 397, baseType: !875, size: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!616, !878, !899}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !880)
!880 = !{!881, !882, !883, !887, !888, !889, !891, !892}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !879, file: !38, line: 321, baseType: !400, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !879, file: !38, line: 326, baseType: !571, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !879, file: !38, line: 327, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !878, !162, !162}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !879, file: !38, line: 328, baseType: !144, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !879, file: !38, line: 329, baseType: !173, size: 32, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !879, file: !38, line: 330, baseType: !890, size: 16, offset: 288)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !158, line: 19, baseType: !141)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !879, file: !38, line: 331, baseType: !890, size: 16, offset: 304)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !38, line: 332, baseType: !893, size: 64, offset: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !38, line: 332, size: 64, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !893, file: !38, line: 333, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !893, file: !38, line: 334, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !819, file: !38, line: 402, baseType: !902, size: 64, offset: 832)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!173, !778, !766, !766, !13}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !819, file: !38, line: 404, baseType: !906, size: 64, offset: 896)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!530, !766, !909}
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !910, line: 305, baseType: !7)
!910 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!911 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !819, file: !38, line: 405, baseType: !871, size: 64, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !819, file: !38, line: 406, baseType: !834, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !819, file: !38, line: 407, baseType: !914, size: 64, offset: 1088)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!173, !766, !155, !155}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !819, file: !38, line: 409, baseType: !918, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !766, !921, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !819, file: !38, line: 410, baseType: !923, size: 64, offset: 1216)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!173, !778, !766}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !819, file: !38, line: 413, baseType: !927, size: 64, offset: 1280)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!173, !930, !400, !932}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !819, file: !38, line: 415, baseType: !934, size: 64, offset: 1344)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !400}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !38, line: 466, baseType: !155, size: 64, offset: 896)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !779, file: !38, line: 467, baseType: !939, size: 32, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !940, line: 8, baseType: !157)
!940 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !779, file: !38, line: 468, baseType: !787, offset: 992)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !779, file: !38, line: 469, baseType: !202, size: 128, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !779, file: !38, line: 470, baseType: !144, size: 64, offset: 1152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !774, file: !360, line: 87, baseType: !155, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !774, file: !360, line: 94, baseType: !155, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !360, line: 96, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !360, line: 96, size: 64, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !947, file: !360, line: 101, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !138, line: 143, baseType: !209)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !360, line: 103, baseType: !952, size: 320)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !360, line: 103, size: 320, elements: !953)
!953 = !{!954, !964, !967, !968}
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !360, line: 104, baseType: !955, size: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !360, line: 104, size: 128, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !955, file: !360, line: 105, baseType: !202, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !360, line: 106, baseType: !959, size: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !360, line: 106, size: 128, elements: !960)
!960 = !{!961, !962, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !360, line: 107, baseType: !766, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !959, file: !360, line: 109, baseType: !173, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !959, file: !360, line: 110, baseType: !173, size: 32, offset: 96)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !952, file: !360, line: 117, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !360, line: 117, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !952, file: !360, line: 119, baseType: !144, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !952, file: !360, line: 120, baseType: !969, size: 64, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !360, line: 120, size: 64, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !969, file: !360, line: 121, baseType: !144, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !969, file: !360, line: 122, baseType: !155, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !360, line: 123, baseType: !974, size: 32)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !969, file: !360, line: 123, size: 32, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !974, file: !360, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !974, file: !360, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !974, file: !360, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !360, line: 130, baseType: !980, size: 192)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !360, line: 130, size: 192, elements: !981)
!981 = !{!982, !983, !984, !985, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !980, file: !360, line: 131, baseType: !155, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !980, file: !360, line: 134, baseType: !333, size: 8, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !980, file: !360, line: 135, baseType: !333, size: 8, offset: 72)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !980, file: !360, line: 136, baseType: !169, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !980, file: !360, line: 137, baseType: !7, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !360, line: 139, baseType: !988, size: 256)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !360, line: 139, size: 256, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !988, file: !360, line: 140, baseType: !155, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !988, file: !360, line: 141, baseType: !169, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !988, file: !360, line: 143, baseType: !202, size: 128, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !360, line: 145, baseType: !994, size: 256)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !360, line: 145, size: 256, elements: !995)
!995 = !{!996, !997, !999, !1000, !1005}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !994, file: !360, line: 146, baseType: !155, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !994, file: !360, line: 147, baseType: !998, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !378, line: 509, baseType: !766)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !994, file: !360, line: 148, baseType: !155, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !360, line: 149, baseType: !1001, size: 64, offset: 192)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !360, line: 149, size: 64, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1001, file: !360, line: 150, baseType: !358, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1001, file: !360, line: 151, baseType: !169, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !994, file: !360, line: 156, baseType: !787, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !771, file: !360, line: 159, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !771, file: !360, line: 159, size: 128, elements: !1008)
!1008 = !{!1009, !1012}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1007, file: !360, line: 161, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !360, line: 161, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1007, file: !360, line: 162, baseType: !144, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !771, file: !360, line: 176, baseType: !413, size: 128, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !360, line: 179, baseType: !1015, size: 32, offset: 384)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !360, line: 179, size: 32, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1015, file: !360, line: 184, baseType: !169, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1015, file: !360, line: 192, baseType: !7, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1015, file: !360, line: 194, baseType: !7, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1015, file: !360, line: 195, baseType: !173, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !767, file: !360, line: 199, baseType: !169, size: 32, offset: 416)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !703, file: !38, line: 1964, baseType: !1023, size: 64, offset: 1344)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!162, !643, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1028, line: 12, size: 256, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !{!1030, !1031, !1032, !1033, !1034}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1027, file: !1028, line: 13, baseType: !137, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1027, file: !1028, line: 16, baseType: !173, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1027, file: !1028, line: 23, baseType: !155, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1027, file: !1028, line: 30, baseType: !155, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1027, file: !1028, line: 33, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !360, line: 27, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !703, file: !38, line: 1966, baseType: !1023, size: 64, offset: 1408)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !644, file: !38, line: 1424, baseType: !1039, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !1042)
!1042 = !{!1043, !1095, !1099, !1103, !1104, !1105, !1106, !1107, !1112, !1117, !1121}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1041, file: !32, line: 323, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!173, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1061, !1062, !1063, !1064, !1080, !1081, !1082}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1048, file: !32, line: 295, baseType: !683, size: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1048, file: !32, line: 296, baseType: !202, size: 128, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1048, file: !32, line: 297, baseType: !202, size: 128, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1048, file: !32, line: 298, baseType: !202, size: 128, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1048, file: !32, line: 299, baseType: !1055, size: 192, offset: 512)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1056, line: 53, size: 192, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !{!1058, !1059, !1060}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1055, file: !1056, line: 54, baseType: !804, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1055, file: !1056, line: 55, baseType: !787, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1055, file: !1056, line: 59, baseType: !202, size: 128, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1048, file: !32, line: 300, baseType: !787, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1048, file: !32, line: 301, baseType: !169, size: 32, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1048, file: !32, line: 302, baseType: !643, size: 64, offset: 768)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1048, file: !32, line: 303, baseType: !1065, size: 64, offset: 832)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !1066)
!1066 = !{!1067, !1079}
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !32, line: 69, baseType: !1068, size: 32)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !32, line: 69, size: 32, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1068, file: !32, line: 70, baseType: !471, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1068, file: !32, line: 71, baseType: !479, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1068, file: !32, line: 72, baseType: !1073, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1074, line: 24, baseType: !1075)
!1074 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1074, line: 22, size: 32, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1075, file: !1074, line: 23, baseType: !1078, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1074, line: 20, baseType: !477)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1065, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1048, file: !32, line: 304, baseType: !571, size: 64, offset: 896)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1048, file: !32, line: 305, baseType: !155, size: 64, offset: 960)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1048, file: !32, line: 306, baseType: !1083, size: 576, offset: 1024)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !1084)
!1084 = !{!1085, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1083, file: !32, line: 206, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !242)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1083, file: !32, line: 207, baseType: !1086, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1083, file: !32, line: 208, baseType: !1086, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1083, file: !32, line: 209, baseType: !1086, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1083, file: !32, line: 210, baseType: !1086, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1083, file: !32, line: 211, baseType: !1086, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1083, file: !32, line: 212, baseType: !1086, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1083, file: !32, line: 213, baseType: !578, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1083, file: !32, line: 214, baseType: !578, size: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1041, file: !32, line: 324, baseType: !1096, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!1047, !643, !173}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1041, file: !32, line: 325, baseType: !1100, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !1047}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1041, file: !32, line: 326, baseType: !1044, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1041, file: !32, line: 327, baseType: !1044, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1041, file: !32, line: 328, baseType: !1044, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1041, file: !32, line: 329, baseType: !731, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1041, file: !32, line: 332, baseType: !1108, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!1111, !464}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1041, file: !32, line: 333, baseType: !1113, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!173, !464, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1041, file: !32, line: 335, baseType: !1118, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!173, !464, !1111}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1041, file: !32, line: 337, baseType: !1122, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!173, !643, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !644, file: !38, line: 1425, baseType: !1127, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !1130)
!1130 = !{!1131, !1135, !1136, !1140, !1141, !1142, !1157, !1180, !1184, !1185, !1208}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1129, file: !32, line: 429, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!173, !643, !173, !173, !587}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1129, file: !32, line: 430, baseType: !731, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1129, file: !32, line: 431, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!173, !643, !7}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1129, file: !32, line: 432, baseType: !1137, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1129, file: !32, line: 433, baseType: !731, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1129, file: !32, line: 434, baseType: !1143, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!173, !643, !173, !1146}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1147, file: !32, line: 416, baseType: !173, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1147, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1147, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1147, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1147, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1147, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1147, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1147, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1129, file: !32, line: 435, baseType: !1158, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!173, !643, !1065, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1162, file: !32, line: 344, baseType: !173, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1162, file: !32, line: 345, baseType: !209, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1162, file: !32, line: 346, baseType: !209, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1162, file: !32, line: 347, baseType: !209, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1162, file: !32, line: 348, baseType: !209, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1162, file: !32, line: 349, baseType: !209, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1162, file: !32, line: 350, baseType: !209, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1162, file: !32, line: 351, baseType: !240, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1162, file: !32, line: 353, baseType: !240, size: 64, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1162, file: !32, line: 354, baseType: !173, size: 32, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1162, file: !32, line: 355, baseType: !173, size: 32, offset: 608)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1162, file: !32, line: 356, baseType: !209, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1162, file: !32, line: 357, baseType: !209, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1162, file: !32, line: 358, baseType: !209, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1162, file: !32, line: 359, baseType: !240, size: 64, offset: 832)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1162, file: !32, line: 360, baseType: !173, size: 32, offset: 896)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1129, file: !32, line: 436, baseType: !1181, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!173, !643, !1125, !1161}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1129, file: !32, line: 438, baseType: !1158, size: 64, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1129, file: !32, line: 439, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!173, !643, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1190, file: !32, line: 410, baseType: !7, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1190, file: !32, line: 411, baseType: !1194, size: 1344, offset: 64)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 1344, elements: !695)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1207}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !32, line: 396, baseType: !7, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1195, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1195, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1195, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1195, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1195, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1195, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1195, file: !32, line: 404, baseType: !211, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1195, file: !32, line: 405, baseType: !1206, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !138, line: 126, baseType: !209)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1195, file: !32, line: 406, baseType: !1206, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1129, file: !32, line: 440, baseType: !1137, size: 64, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !644, file: !38, line: 1426, baseType: !1210, size: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !644, file: !38, line: 1427, baseType: !155, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !644, file: !38, line: 1428, baseType: !155, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !644, file: !38, line: 1429, baseType: !155, size: 64, offset: 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !644, file: !38, line: 1430, baseType: !430, size: 64, offset: 832)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !644, file: !38, line: 1431, baseType: !800, size: 256, offset: 896)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !644, file: !38, line: 1432, baseType: !173, size: 32, offset: 1152)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !644, file: !38, line: 1433, baseType: !169, size: 32, offset: 1184)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !644, file: !38, line: 1437, baseType: !1221, size: 64, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !644, file: !38, line: 1449, baseType: !1226, size: 64, offset: 1280)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !441, line: 34, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1226, file: !441, line: 35, baseType: !444, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !644, file: !38, line: 1450, baseType: !202, size: 128, offset: 1344)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !644, file: !38, line: 1451, baseType: !1231, size: 64, offset: 1472)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !644, file: !38, line: 1452, baseType: !1234, size: 64, offset: 1536)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !148, line: 40, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !644, file: !38, line: 1453, baseType: !1237, size: 64, offset: 1600)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !644, file: !38, line: 1454, baseType: !683, size: 128, offset: 1664)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !644, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !644, file: !38, line: 1456, baseType: !1242, size: 2432, offset: 1856)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1248, !1280}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !32, line: 519, baseType: !7, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1242, file: !32, line: 520, baseType: !800, size: 256, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1242, file: !32, line: 521, baseType: !1247, size: 192, offset: 320)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 192, elements: !695)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1242, file: !32, line: 522, baseType: !1249, size: 1728, offset: 512)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1250, size: 1728, elements: !695)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !1251)
!1251 = !{!1252, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1250, file: !32, line: 223, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !1255)
!1255 = !{!1256, !1257, !1270, !1271}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1254, file: !32, line: 444, baseType: !173, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1254, file: !32, line: 445, baseType: !1258, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1260, file: !32, line: 311, baseType: !731, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1260, file: !32, line: 312, baseType: !731, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1260, file: !32, line: 313, baseType: !731, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1260, file: !32, line: 314, baseType: !731, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1260, file: !32, line: 315, baseType: !1044, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1260, file: !32, line: 316, baseType: !1044, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1260, file: !32, line: 317, baseType: !1044, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1260, file: !32, line: 318, baseType: !1122, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1254, file: !32, line: 446, baseType: !134, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1254, file: !32, line: 447, baseType: !1253, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1250, file: !32, line: 224, baseType: !173, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1250, file: !32, line: 226, baseType: !202, size: 128, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1250, file: !32, line: 227, baseType: !155, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1250, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1250, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1250, file: !32, line: 230, baseType: !1086, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1250, file: !32, line: 231, baseType: !1086, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1250, file: !32, line: 232, baseType: !144, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1242, file: !32, line: 523, baseType: !1281, size: 192, offset: 2240)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1258, size: 192, elements: !695)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !644, file: !38, line: 1458, baseType: !1283, size: 2112, offset: 4288)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !1284)
!1284 = !{!1285, !1286, !1293}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1283, file: !38, line: 1411, baseType: !173, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1283, file: !38, line: 1412, baseType: !1287, size: 128, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1288, line: 40, baseType: !1289)
!1288 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1288, line: 36, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1289, file: !1288, line: 37, baseType: !787)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1289, file: !1288, line: 38, baseType: !202, size: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1283, file: !38, line: 1413, baseType: !1294, size: 1920, offset: 192)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1295, size: 1920, elements: !695)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1296, line: 12, size: 640, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1297 = !{!1298, !1306, !1308, !1313, !1314}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1295, file: !1296, line: 13, baseType: !1299, size: 320)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1300, line: 17, size: 320, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1299, file: !1300, line: 18, baseType: !173, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1299, file: !1300, line: 19, baseType: !173, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1299, file: !1300, line: 20, baseType: !1287, size: 128, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1299, file: !1300, line: 22, baseType: !413, size: 128, align: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1295, file: !1296, line: 14, baseType: !1307, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1295, file: !1296, line: 15, baseType: !1309, size: 64, offset: 384)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1310, line: 16, size: 64, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1309, file: !1310, line: 17, baseType: !146, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1295, file: !1296, line: 16, baseType: !1287, size: 128, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1295, file: !1296, line: 17, baseType: !169, size: 32, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !644, file: !38, line: 1465, baseType: !144, size: 64, offset: 6400)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !644, file: !38, line: 1468, baseType: !157, size: 32, offset: 6464)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !644, file: !38, line: 1470, baseType: !578, size: 64, offset: 6528)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !644, file: !38, line: 1471, baseType: !578, size: 64, offset: 6592)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !644, file: !38, line: 1473, baseType: !159, size: 32, offset: 6656)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !644, file: !38, line: 1474, baseType: !1321, size: 64, offset: 6720)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !644, file: !38, line: 1477, baseType: !1324, size: 256, offset: 6784)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 256, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !644, file: !38, line: 1478, baseType: !1328, size: 128, offset: 7040)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1329, line: 18, baseType: !1330)
!1329 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1329, line: 16, size: 128, elements: !1331)
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1330, file: !1329, line: 17, baseType: !1333, size: 128)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 128, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 16)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !644, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !644, file: !38, line: 1481, baseType: !1338, size: 32, offset: 7200)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !138, line: 150, baseType: !7)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !644, file: !38, line: 1487, baseType: !1055, size: 192, offset: 7232)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !644, file: !38, line: 1493, baseType: !499, size: 64, offset: 7424)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !644, file: !38, line: 1495, baseType: !1342, size: 64, offset: 7488)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !428, line: 135, size: 1024, align: 512, elements: !1345)
!1345 = !{!1346, !1350, !1351, !1358, !1364, !1368, !1372, !1376, !1377, !1381, !1385, !1390, !1394}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1344, file: !428, line: 136, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!173, !430, !7}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1344, file: !428, line: 137, baseType: !1347, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1344, file: !428, line: 138, baseType: !1352, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!173, !1355, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1344, file: !428, line: 139, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!173, !1355, !7, !499, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1344, file: !428, line: 141, baseType: !1365, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!173, !1355}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1344, file: !428, line: 142, baseType: !1369, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!173, !430}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1344, file: !428, line: 143, baseType: !1373, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !430}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1344, file: !428, line: 144, baseType: !1373, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1344, file: !428, line: 145, baseType: !1378, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !430, !464}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1344, file: !428, line: 146, baseType: !1382, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!525, !430, !525, !173}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1344, file: !428, line: 147, baseType: !1386, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!426, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1344, file: !428, line: 148, baseType: !1391, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!173, !587, !530}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1344, file: !428, line: 149, baseType: !1395, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!430, !430, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !644, file: !38, line: 1500, baseType: !173, size: 32, offset: 7552)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !644, file: !38, line: 1502, baseType: !1402, size: 448, offset: 7616)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1028, line: 60, size: 448, elements: !1403)
!1403 = !{!1404, !1409, !1410, !1411, !1412, !1413, !1414}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1402, file: !1028, line: 61, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!155, !1408, !1026}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1402, file: !1028, line: 63, baseType: !1405, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1402, file: !1028, line: 66, baseType: !162, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1402, file: !1028, line: 67, baseType: !173, size: 32, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1402, file: !1028, line: 68, baseType: !7, size: 32, offset: 224)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1402, file: !1028, line: 71, baseType: !202, size: 128, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1402, file: !1028, line: 77, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !644, file: !38, line: 1505, baseType: !804, size: 64, offset: 8064)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !644, file: !38, line: 1508, baseType: !804, size: 64, offset: 8128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !644, file: !38, line: 1511, baseType: !173, size: 32, offset: 8192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !644, file: !38, line: 1514, baseType: !939, size: 32, offset: 8224)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !644, file: !38, line: 1517, baseType: !1421, size: 64, offset: 8256)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1423, line: 18, flags: DIFlagFwdDecl)
!1423 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !644, file: !38, line: 1518, baseType: !679, size: 64, offset: 8320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !644, file: !38, line: 1525, baseType: !1426, size: 64, offset: 8384)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !360, line: 516, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !644, file: !38, line: 1532, baseType: !1429, size: 64, offset: 8448)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1430, line: 52, size: 64, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1429, file: !1430, line: 53, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1430, line: 40, size: 256, elements: !1435)
!1435 = !{!1436, !1437, !1442}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !1430, line: 42, baseType: !787)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1434, file: !1430, line: 44, baseType: !1438, size: 192)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1430, line: 28, size: 192, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1438, file: !1430, line: 29, baseType: !202, size: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1438, file: !1430, line: 31, baseType: !162, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1434, file: !1430, line: 49, baseType: !162, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !644, file: !38, line: 1533, baseType: !1429, size: 64, offset: 8512)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !644, file: !38, line: 1534, baseType: !413, size: 128, align: 64, offset: 8576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !644, file: !38, line: 1535, baseType: !1446, size: 256, offset: 8704)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1423, line: 102, size: 256, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1446, file: !1423, line: 103, baseType: !804, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1446, file: !1423, line: 104, baseType: !202, size: 128, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1446, file: !1423, line: 105, baseType: !1451, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1423, line: 21, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !644, file: !38, line: 1537, baseType: !1055, size: 192, offset: 8960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !644, file: !38, line: 1542, baseType: !173, size: 32, offset: 9152)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !644, file: !38, line: 1545, baseType: !787, offset: 9184)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !644, file: !38, line: 1546, baseType: !202, size: 128, offset: 9216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !644, file: !38, line: 1548, baseType: !787, offset: 9344)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !644, file: !38, line: 1549, baseType: !202, size: 128, offset: 9344)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !465, file: !38, line: 624, baseType: !778, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !465, file: !38, line: 631, baseType: !155, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !38, line: 639, baseType: !1465, size: 32, offset: 384)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !38, line: 639, size: 32, elements: !1466)
!1466 = !{!1467, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1465, file: !38, line: 640, baseType: !1468, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1465, file: !38, line: 641, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !465, file: !38, line: 643, baseType: !553, size: 32, offset: 416)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !465, file: !38, line: 644, baseType: !571, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !465, file: !38, line: 645, baseType: !574, size: 128, offset: 512)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !465, file: !38, line: 646, baseType: !574, size: 128, offset: 640)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !465, file: !38, line: 647, baseType: !574, size: 128, offset: 768)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !465, file: !38, line: 648, baseType: !787, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !465, file: !38, line: 649, baseType: !143, size: 16, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !465, file: !38, line: 650, baseType: !331, size: 8, offset: 912)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !465, file: !38, line: 651, baseType: !331, size: 8, offset: 920)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !465, file: !38, line: 652, baseType: !1206, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !465, file: !38, line: 659, baseType: !155, size: 64, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !465, file: !38, line: 660, baseType: !800, size: 256, offset: 1088)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !465, file: !38, line: 662, baseType: !155, size: 64, offset: 1344)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !465, file: !38, line: 663, baseType: !155, size: 64, offset: 1408)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !465, file: !38, line: 665, baseType: !683, size: 128, offset: 1472)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !465, file: !38, line: 666, baseType: !202, size: 128, offset: 1600)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !465, file: !38, line: 675, baseType: !202, size: 128, offset: 1728)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !465, file: !38, line: 676, baseType: !202, size: 128, offset: 1856)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !465, file: !38, line: 677, baseType: !202, size: 128, offset: 1984)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !38, line: 678, baseType: !1490, size: 128, offset: 2112)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !38, line: 678, size: 128, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1490, file: !38, line: 679, baseType: !679, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1490, file: !38, line: 680, baseType: !413, size: 128, align: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !465, file: !38, line: 682, baseType: !806, size: 64, offset: 2240)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !465, file: !38, line: 683, baseType: !806, size: 64, offset: 2304)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !465, file: !38, line: 684, baseType: !169, size: 32, offset: 2368)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !465, file: !38, line: 685, baseType: !169, size: 32, offset: 2400)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !465, file: !38, line: 686, baseType: !169, size: 32, offset: 2432)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !465, file: !38, line: 688, baseType: !169, size: 32, offset: 2464)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !38, line: 690, baseType: !1501, size: 64, offset: 2496)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !38, line: 690, size: 64, elements: !1502)
!1502 = !{!1503, !1730}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1501, file: !38, line: 691, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !1507)
!1507 = !{!1508, !1509, !1513, !1518, !1522, !1523, !1524, !1528, !1541, !1542, !1549, !1553, !1554, !1558, !1559, !1563, !1568, !1569, !1573, !1577, !1685, !1689, !1693, !1697, !1698, !1704, !1708, !1713, !1717, !1721, !1725, !1729}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1506, file: !38, line: 1823, baseType: !134, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1506, file: !38, line: 1824, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!571, !400, !571, !173}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1506, file: !38, line: 1825, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!616, !400, !525, !619, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1506, file: !38, line: 1826, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!616, !400, !499, !619, !1517}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1506, file: !38, line: 1827, baseType: !875, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1506, file: !38, line: 1828, baseType: !875, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1506, file: !38, line: 1829, baseType: !1525, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!173, !878, !530}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1506, file: !38, line: 1830, baseType: !1529, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!173, !400, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !1534)
!1534 = !{!1535, !1540}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1533, file: !38, line: 1777, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!173, !1532, !499, !173, !571, !209, !7}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1533, file: !38, line: 1778, baseType: !571, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1506, file: !38, line: 1831, baseType: !1529, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1506, file: !38, line: 1832, baseType: !1543, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1546, !400, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !140, line: 52, baseType: !7)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !663, line: 27, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1506, file: !38, line: 1833, baseType: !1550, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!162, !400, !7, !155}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1506, file: !38, line: 1834, baseType: !1550, size: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1506, file: !38, line: 1835, baseType: !1555, size: 64, offset: 768)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!173, !400, !366}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1506, file: !38, line: 1836, baseType: !155, size: 64, offset: 832)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1506, file: !38, line: 1837, baseType: !1560, size: 64, offset: 896)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!173, !464, !400}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1506, file: !38, line: 1838, baseType: !1564, size: 64, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!173, !400, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !144)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1506, file: !38, line: 1839, baseType: !1560, size: 64, offset: 1024)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1506, file: !38, line: 1840, baseType: !1570, size: 64, offset: 1088)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!173, !400, !571, !571, !173}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1506, file: !38, line: 1841, baseType: !1574, size: 64, offset: 1152)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!173, !173, !400, !173}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !38, line: 1842, baseType: !1578, size: 64, offset: 1216)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!173, !400, !173, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1615, !1616, !1617, !1630, !1661}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1582, file: !38, line: 1063, baseType: !1581, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1582, file: !38, line: 1064, baseType: !202, size: 128, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1582, file: !38, line: 1065, baseType: !683, size: 128, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1582, file: !38, line: 1066, baseType: !202, size: 128, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1582, file: !38, line: 1069, baseType: !202, size: 128, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1582, file: !38, line: 1072, baseType: !1567, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1582, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1582, file: !38, line: 1074, baseType: !333, size: 8, offset: 672)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1582, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1582, file: !38, line: 1076, baseType: !173, size: 32, offset: 736)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1582, file: !38, line: 1077, baseType: !1287, size: 128, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1582, file: !38, line: 1078, baseType: !400, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1582, file: !38, line: 1079, baseType: !571, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1582, file: !38, line: 1080, baseType: !571, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1582, file: !38, line: 1082, baseType: !1599, size: 64, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !1601)
!1601 = !{!1602, !1610, !1611, !1612, !1613, !1614}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1600, file: !38, line: 1315, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1604, line: 20, baseType: !1605)
!1604 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1604, line: 11, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1605, file: !1604, line: 12, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !281, line: 33, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 31, elements: !218)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1600, file: !38, line: 1316, baseType: !173, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1600, file: !38, line: 1317, baseType: !173, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1600, file: !38, line: 1318, baseType: !1599, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1600, file: !38, line: 1319, baseType: !400, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1600, file: !38, line: 1320, baseType: !413, size: 128, align: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1582, file: !38, line: 1084, baseType: !155, size: 64, offset: 1152)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1582, file: !38, line: 1085, baseType: !155, size: 64, offset: 1216)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1582, file: !38, line: 1087, baseType: !1618, size: 64, offset: 1280)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !1621)
!1621 = !{!1622, !1626}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1620, file: !38, line: 1012, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1581, !1581}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1620, file: !38, line: 1013, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1581}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1582, file: !38, line: 1088, baseType: !1631, size: 64, offset: 1344)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !1634)
!1634 = !{!1635, !1639, !1643, !1644, !1648, !1652, !1656, !1660}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1633, file: !38, line: 1017, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!1567, !1567}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1633, file: !38, line: 1018, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1567}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1633, file: !38, line: 1019, baseType: !1627, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1633, file: !38, line: 1020, baseType: !1645, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!173, !1581, !173}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1633, file: !38, line: 1021, baseType: !1649, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!530, !1581}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1633, file: !38, line: 1022, baseType: !1653, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!173, !1581, !173, !205}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1633, file: !38, line: 1023, baseType: !1657, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1581, !852}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1633, file: !38, line: 1024, baseType: !1649, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1582, file: !38, line: 1097, baseType: !1662, size: 256, offset: 1408)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !38, line: 1089, size: 256, elements: !1663)
!1663 = !{!1664, !1673, !1679}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1662, file: !38, line: 1090, baseType: !1665, size: 256)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1666, line: 10, size: 256, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !{!1668, !1669, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1665, file: !1666, line: 11, baseType: !157, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1665, file: !1666, line: 12, baseType: !1670, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1666, line: 5, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1665, file: !1666, line: 13, baseType: !202, size: 128, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1662, file: !38, line: 1091, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1666, line: 17, size: 64, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1674, file: !1666, line: 18, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1666, line: 16, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1662, file: !38, line: 1096, baseType: !1680, size: 192)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !38, line: 1092, size: 192, elements: !1681)
!1681 = !{!1682, !1683, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1680, file: !38, line: 1093, baseType: !202, size: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1680, file: !38, line: 1094, baseType: !173, size: 32, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1680, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1506, file: !38, line: 1843, baseType: !1686, size: 64, offset: 1280)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!616, !400, !766, !173, !619, !1517, !173}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1506, file: !38, line: 1844, baseType: !1690, size: 64, offset: 1344)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!155, !400, !155, !155, !155, !155}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1506, file: !38, line: 1845, baseType: !1694, size: 64, offset: 1408)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!173, !173}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1506, file: !38, line: 1846, baseType: !1578, size: 64, offset: 1472)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1506, file: !38, line: 1847, baseType: !1699, size: 64, offset: 1536)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!616, !1702, !400, !1517, !619, !7}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !148, line: 53, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1506, file: !38, line: 1848, baseType: !1705, size: 64, offset: 1600)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!616, !400, !1517, !1702, !619, !7}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1506, file: !38, line: 1849, baseType: !1709, size: 64, offset: 1664)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!173, !400, !162, !1712, !852}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1506, file: !38, line: 1850, baseType: !1714, size: 64, offset: 1728)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!162, !400, !173, !571, !571}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1506, file: !38, line: 1852, baseType: !1718, size: 64, offset: 1792)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !757, !400}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1506, file: !38, line: 1856, baseType: !1722, size: 64, offset: 1856)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!616, !400, !571, !400, !571, !619, !7}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1506, file: !38, line: 1858, baseType: !1726, size: 64, offset: 1920)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!571, !400, !571, !400, !571, !571, !7}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1506, file: !38, line: 1861, baseType: !1570, size: 64, offset: 1984)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1501, file: !38, line: 692, baseType: !710, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !465, file: !38, line: 694, baseType: !1732, size: 64, offset: 2560)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1733, file: !38, line: 1101, baseType: !787)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1733, file: !38, line: 1102, baseType: !202, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1733, file: !38, line: 1103, baseType: !202, size: 128, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1733, file: !38, line: 1104, baseType: !202, size: 128, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !465, file: !38, line: 695, baseType: !779, size: 1216, align: 64, offset: 2624)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !465, file: !38, line: 696, baseType: !202, size: 128, offset: 3840)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !38, line: 697, baseType: !1742, size: 64, offset: 3968)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !38, line: 697, size: 64, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1749, !1750}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1742, file: !38, line: 698, baseType: !1702, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1742, file: !38, line: 699, baseType: !1231, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1742, file: !38, line: 700, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1742, file: !38, line: 701, baseType: !525, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1742, file: !38, line: 702, baseType: !7, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !465, file: !38, line: 705, baseType: !159, size: 32, offset: 4032)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !465, file: !38, line: 708, baseType: !159, size: 32, offset: 4064)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !465, file: !38, line: 709, baseType: !1321, size: 64, offset: 4096)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !465, file: !38, line: 720, baseType: !144, size: 64, offset: 4160)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !431, file: !428, line: 98, baseType: !1756, size: 256, offset: 448)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !1325)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !431, file: !428, line: 101, baseType: !1758, size: 32, offset: 704)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1759, line: 25, size: 32, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !1759, line: 26, baseType: !1762, size: 32)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1758, file: !1759, line: 26, size: 32, elements: !1763)
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !1759, line: 30, baseType: !1765, size: 32)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !1759, line: 30, size: 32, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1765, file: !1759, line: 31, baseType: !787)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1765, file: !1759, line: 32, baseType: !173, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !431, file: !428, line: 102, baseType: !1342, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !431, file: !428, line: 103, baseType: !643, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !431, file: !428, line: 104, baseType: !155, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !431, file: !428, line: 105, baseType: !144, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !428, line: 107, baseType: !1774, size: 128, offset: 1024)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !428, line: 107, size: 128, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1774, file: !428, line: 108, baseType: !202, size: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1774, file: !428, line: 109, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !431, file: !428, line: 111, baseType: !202, size: 128, offset: 1152)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !431, file: !428, line: 112, baseType: !202, size: 128, offset: 1280)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !431, file: !428, line: 120, baseType: !1782, size: 128, offset: 1408)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !428, line: 116, size: 128, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1782, file: !428, line: 117, baseType: !683, size: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1782, file: !428, line: 118, baseType: !440, size: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1782, file: !428, line: 119, baseType: !413, size: 128, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !401, file: !38, line: 922, baseType: !464, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !401, file: !38, line: 923, baseType: !1504, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !401, file: !38, line: 929, baseType: !787, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !401, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !401, file: !38, line: 931, baseType: !804, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !401, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !401, file: !38, line: 933, baseType: !1338, size: 32, offset: 544)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !401, file: !38, line: 934, baseType: !1055, size: 192, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !401, file: !38, line: 935, baseType: !571, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !401, file: !38, line: 936, baseType: !1797, size: 192, offset: 832)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !1798)
!1798 = !{!1799, !1800, !1822, !1823, !1824, !1825}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !38, line: 886, baseType: !1603)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1797, file: !38, line: 887, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1811, !1812, !1813, !1814}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1802, file: !47, line: 61, baseType: !165, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1802, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1802, file: !47, line: 63, baseType: !787, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1802, file: !47, line: 65, baseType: !1808, size: 256, offset: 64)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 4)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1802, file: !47, line: 66, baseType: !679, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1802, file: !47, line: 68, baseType: !1287, size: 128, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1802, file: !47, line: 69, baseType: !413, size: 128, align: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1802, file: !47, line: 70, baseType: !1815, size: 128, offset: 640)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 128, elements: !351)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1816, file: !47, line: 55, baseType: !173, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1816, file: !47, line: 56, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1797, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1797, file: !38, line: 889, baseType: !471, size: 32, offset: 96)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1797, file: !38, line: 889, baseType: !471, size: 32, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1797, file: !38, line: 890, baseType: !173, size: 32, offset: 160)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !401, file: !38, line: 937, baseType: !1827, size: 64, offset: 1024)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1830, line: 111, size: 1280, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1851, !1852, !1853, !1854, !1855, !1856, !1966, !1967, !1968, !1969, !1995, !1996, !2006}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1829, file: !1830, line: 112, baseType: !169, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1829, file: !1830, line: 120, baseType: !471, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1829, file: !1830, line: 121, baseType: !479, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1829, file: !1830, line: 122, baseType: !471, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1829, file: !1830, line: 123, baseType: !479, size: 32, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1829, file: !1830, line: 124, baseType: !471, size: 32, offset: 160)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1829, file: !1830, line: 125, baseType: !479, size: 32, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1829, file: !1830, line: 126, baseType: !471, size: 32, offset: 224)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1829, file: !1830, line: 127, baseType: !479, size: 32, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1829, file: !1830, line: 128, baseType: !7, size: 32, offset: 288)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1829, file: !1830, line: 129, baseType: !1843, size: 64, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1844, line: 26, baseType: !1845)
!1844 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1844, line: 24, size: 64, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1845, file: !1844, line: 25, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 2)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1829, file: !1830, line: 130, baseType: !1843, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1829, file: !1830, line: 131, baseType: !1843, size: 64, offset: 448)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1829, file: !1830, line: 132, baseType: !1843, size: 64, offset: 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1829, file: !1830, line: 133, baseType: !1843, size: 64, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1829, file: !1830, line: 135, baseType: !333, size: 8, offset: 640)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1829, file: !1830, line: 137, baseType: !1857, size: 64, offset: 704)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1859, line: 189, size: 1664, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1862, !1867, !1872, !1873, !1876, !1877, !1882, !1883, !1884, !1885, !1887, !1888, !1889, !1891, !1892, !1930, !1951}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1858, file: !1859, line: 190, baseType: !165, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1858, file: !1859, line: 191, baseType: !1863, size: 32, offset: 32)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1859, line: 28, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 98, baseType: !1865)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !158, line: 20, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !142, line: 26, baseType: !173)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 192, baseType: !1868, size: 192, offset: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 192, size: 192, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1868, file: !1859, line: 193, baseType: !202, size: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1868, file: !1859, line: 194, baseType: !194, size: 192, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1858, file: !1859, line: 199, baseType: !800, size: 256, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1858, file: !1859, line: 200, baseType: !1874, size: 64, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1859, line: 200, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1858, file: !1859, line: 201, baseType: !144, size: 64, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 202, baseType: !1878, size: 64, offset: 640)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 202, size: 64, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1878, file: !1859, line: 203, baseType: !578, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1878, file: !1859, line: 204, baseType: !578, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1858, file: !1859, line: 206, baseType: !578, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1858, file: !1859, line: 207, baseType: !471, size: 32, offset: 768)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1858, file: !1859, line: 208, baseType: !479, size: 32, offset: 800)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1858, file: !1859, line: 209, baseType: !1886, size: 32, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1859, line: 31, baseType: !597)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1858, file: !1859, line: 210, baseType: !143, size: 16, offset: 864)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1858, file: !1859, line: 211, baseType: !143, size: 16, offset: 880)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1858, file: !1859, line: 215, baseType: !1890, size: 16, offset: 896)
!1890 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !1859, line: 222, baseType: !155, size: 64, offset: 960)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 239, baseType: !1893, size: 320, offset: 1024)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 239, size: 320, elements: !1894)
!1894 = !{!1895, !1922}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1893, file: !1859, line: 240, baseType: !1896, size: 320)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1859, line: 108, size: 320, elements: !1897)
!1897 = !{!1898, !1899, !1911, !1914, !1921}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1896, file: !1859, line: 110, baseType: !155, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1859, line: 111, baseType: !1900, size: 64, offset: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1896, file: !1859, line: 111, size: 64, elements: !1901)
!1901 = !{!1902, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1859, line: 112, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1859, line: 112, size: 64, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1903, file: !1859, line: 114, baseType: !890, size: 16)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1903, file: !1859, line: 115, baseType: !1907, size: 48, offset: 16)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 48, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 6)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1900, file: !1859, line: 121, baseType: !155, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1896, file: !1859, line: 123, baseType: !1912, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1859, line: 96, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1896, file: !1859, line: 124, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1859, line: 102, size: 192, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1916, file: !1859, line: 103, baseType: !413, size: 128, align: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1916, file: !1859, line: 104, baseType: !165, size: 32, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1916, file: !1859, line: 105, baseType: !530, size: 8, offset: 160)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1896, file: !1859, line: 125, baseType: !499, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, scope: !1893, file: !1859, line: 241, baseType: !1923, size: 320)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1893, file: !1859, line: 241, size: 320, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928, !1929}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1923, file: !1859, line: 242, baseType: !155, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1923, file: !1859, line: 243, baseType: !155, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1923, file: !1859, line: 244, baseType: !1912, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1923, file: !1859, line: 245, baseType: !1915, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1923, file: !1859, line: 246, baseType: !525, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 254, baseType: !1931, size: 256, offset: 1344)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 254, size: 256, elements: !1932)
!1932 = !{!1933, !1939}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1931, file: !1859, line: 255, baseType: !1934, size: 256)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1859, line: 128, size: 256, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1934, file: !1859, line: 129, baseType: !144, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1934, file: !1859, line: 130, baseType: !1938, size: 256)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !1809)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !1859, line: 256, baseType: !1940, size: 256)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1931, file: !1859, line: 256, size: 256, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1940, file: !1859, line: 258, baseType: !202, size: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1940, file: !1859, line: 259, baseType: !1944, size: 128, offset: 128)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1945, line: 22, size: 128, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !{!1947, !1950}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1944, file: !1945, line: 23, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1945, line: 23, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1944, file: !1945, line: 24, baseType: !155, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1858, file: !1859, line: 274, baseType: !1952, size: 64, offset: 1600)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1859, line: 170, size: 192, elements: !1954)
!1954 = !{!1955, !1964, !1965}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1953, file: !1859, line: 171, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1859, line: 165, baseType: !1957)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!173, !1857, !1960, !1962, !1857}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1934)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1953, file: !1859, line: 172, baseType: !1857, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1953, file: !1859, line: 173, baseType: !1912, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1829, file: !1830, line: 138, baseType: !1857, size: 64, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1829, file: !1830, line: 139, baseType: !1857, size: 64, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1829, file: !1830, line: 140, baseType: !1857, size: 64, offset: 896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1829, file: !1830, line: 145, baseType: !1970, size: 64, offset: 960)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1972, line: 13, size: 896, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1971, file: !1972, line: 14, baseType: !165, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1971, file: !1972, line: 15, baseType: !169, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1971, file: !1972, line: 16, baseType: !169, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1971, file: !1972, line: 21, baseType: !804, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1971, file: !1972, line: 27, baseType: !155, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1971, file: !1972, line: 28, baseType: !155, size: 64, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1971, file: !1972, line: 29, baseType: !804, size: 64, offset: 320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1971, file: !1972, line: 32, baseType: !683, size: 128, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1971, file: !1972, line: 33, baseType: !471, size: 32, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1971, file: !1972, line: 37, baseType: !804, size: 64, offset: 576)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1971, file: !1972, line: 44, baseType: !1985, size: 256, offset: 640)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1986, line: 15, size: 256, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !1986, line: 16, baseType: !275)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1985, file: !1986, line: 18, baseType: !173, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1985, file: !1986, line: 19, baseType: !173, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1985, file: !1986, line: 20, baseType: !173, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1985, file: !1986, line: 21, baseType: !173, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1985, file: !1986, line: 22, baseType: !155, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1986, line: 23, baseType: !155, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1829, file: !1830, line: 146, baseType: !1426, size: 64, offset: 1024)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1829, file: !1830, line: 147, baseType: !1997, size: 64, offset: 1088)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1830, line: 25, size: 64, elements: !1999)
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1998, file: !1830, line: 26, baseType: !169, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1998, file: !1830, line: 27, baseType: !173, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1998, file: !1830, line: 28, baseType: !2003, offset: 64)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, elements: !2004)
!2004 = !{!2005}
!2005 = !DISubrange(count: 0)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !1830, line: 149, baseType: !2007, size: 128, offset: 1152)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1829, file: !1830, line: 149, size: 128, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2007, file: !1830, line: 150, baseType: !173, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2007, file: !1830, line: 151, baseType: !413, size: 128, align: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !401, file: !38, line: 938, baseType: !2012, size: 256, offset: 1088)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2012, file: !38, line: 897, baseType: !155, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2012, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2012, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2012, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2012, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2012, file: !38, line: 904, baseType: !571, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !401, file: !38, line: 940, baseType: !209, size: 64, offset: 1344)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !401, file: !38, line: 945, baseType: !144, size: 64, offset: 1408)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !401, file: !38, line: 949, baseType: !202, size: 128, offset: 1472)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !401, file: !38, line: 950, baseType: !202, size: 128, offset: 1600)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !401, file: !38, line: 952, baseType: !778, size: 64, offset: 1728)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !401, file: !38, line: 953, baseType: !939, size: 32, offset: 1792)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !401, file: !38, line: 954, baseType: !939, size: 32, offset: 1824)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !367, file: !360, line: 362, baseType: !144, size: 64, offset: 1344)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !367, file: !360, line: 365, baseType: !804, size: 64, offset: 1408)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !367, file: !360, line: 373, baseType: !2030, offset: 1472)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !360, line: 296, elements: !218)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !363, file: !360, line: 391, baseType: !321, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !363, file: !360, line: 392, baseType: !209, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !363, file: !360, line: 394, baseType: !1690, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !363, file: !360, line: 398, baseType: !155, size: 64, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !363, file: !360, line: 399, baseType: !155, size: 64, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !363, file: !360, line: 405, baseType: !155, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !363, file: !360, line: 406, baseType: !155, size: 64, offset: 448)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !363, file: !360, line: 407, baseType: !2039, size: 64, offset: 512)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !378, line: 286, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 286, size: 64, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2041, file: !378, line: 286, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !383, line: 18, baseType: !155)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !363, file: !360, line: 416, baseType: !169, size: 32, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !363, file: !360, line: 428, baseType: !169, size: 32, offset: 608)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !363, file: !360, line: 437, baseType: !169, size: 32, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !363, file: !360, line: 447, baseType: !169, size: 32, offset: 672)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !363, file: !360, line: 450, baseType: !804, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !363, file: !360, line: 452, baseType: !173, size: 32, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !363, file: !360, line: 454, baseType: !787, offset: 800)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !363, file: !360, line: 457, baseType: !800, size: 256, offset: 832)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !363, file: !360, line: 459, baseType: !202, size: 128, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !363, file: !360, line: 466, baseType: !155, size: 64, offset: 1216)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !363, file: !360, line: 467, baseType: !155, size: 64, offset: 1280)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !363, file: !360, line: 469, baseType: !155, size: 64, offset: 1344)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !363, file: !360, line: 470, baseType: !155, size: 64, offset: 1408)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !363, file: !360, line: 471, baseType: !806, size: 64, offset: 1472)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !363, file: !360, line: 472, baseType: !155, size: 64, offset: 1536)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !363, file: !360, line: 473, baseType: !155, size: 64, offset: 1600)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !363, file: !360, line: 474, baseType: !155, size: 64, offset: 1664)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !363, file: !360, line: 475, baseType: !155, size: 64, offset: 1728)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !363, file: !360, line: 477, baseType: !787, offset: 1792)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !363, file: !360, line: 478, baseType: !155, size: 64, offset: 1792)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !363, file: !360, line: 478, baseType: !155, size: 64, offset: 1856)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !363, file: !360, line: 478, baseType: !155, size: 64, offset: 1920)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !363, file: !360, line: 478, baseType: !155, size: 64, offset: 1984)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !363, file: !360, line: 479, baseType: !155, size: 64, offset: 2048)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !363, file: !360, line: 479, baseType: !155, size: 64, offset: 2112)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !363, file: !360, line: 479, baseType: !155, size: 64, offset: 2176)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !363, file: !360, line: 480, baseType: !155, size: 64, offset: 2240)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !363, file: !360, line: 480, baseType: !155, size: 64, offset: 2304)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !363, file: !360, line: 480, baseType: !155, size: 64, offset: 2368)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !363, file: !360, line: 480, baseType: !155, size: 64, offset: 2432)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !363, file: !360, line: 482, baseType: !2076, size: 2816, offset: 2496)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 2816, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 44)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !363, file: !360, line: 488, baseType: !2080, size: 256, offset: 5312)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2081, line: 60, size: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2080, file: !2081, line: 61, baseType: !2084, size: 256)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 256, elements: !1809)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !363, file: !360, line: 490, baseType: !2086, size: 64, offset: 5568)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !360, line: 490, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !363, file: !360, line: 493, baseType: !2089, size: 896, offset: 5632)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2090, line: 53, baseType: !2091)
!2090 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2090, line: 13, size: 896, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2099, !2100, !2101, !2102, !2122, !2123, !2124}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2091, file: !2090, line: 18, baseType: !209, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2091, file: !2090, line: 28, baseType: !806, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2091, file: !2090, line: 31, baseType: !800, size: 256, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2091, file: !2090, line: 32, baseType: !2097, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2090, line: 32, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2091, file: !2090, line: 37, baseType: !143, size: 16, offset: 448)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2091, file: !2090, line: 40, baseType: !1055, size: 192, offset: 512)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2091, file: !2090, line: 41, baseType: !144, size: 64, offset: 704)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2091, file: !2090, line: 42, baseType: !2103, size: 64, offset: 768)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2106, line: 13, size: 896, elements: !2107)
!2106 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2105, file: !2106, line: 14, baseType: !144, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2105, file: !2106, line: 15, baseType: !155, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2105, file: !2106, line: 17, baseType: !155, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2105, file: !2106, line: 17, baseType: !155, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2105, file: !2106, line: 19, baseType: !162, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2105, file: !2106, line: 21, baseType: !162, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2105, file: !2106, line: 22, baseType: !162, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2105, file: !2106, line: 23, baseType: !162, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2105, file: !2106, line: 24, baseType: !162, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2105, file: !2106, line: 25, baseType: !162, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2105, file: !2106, line: 26, baseType: !162, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2105, file: !2106, line: 27, baseType: !162, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2105, file: !2106, line: 28, baseType: !162, size: 64, offset: 768)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2105, file: !2106, line: 29, baseType: !162, size: 64, offset: 832)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2091, file: !2090, line: 44, baseType: !169, size: 32, offset: 832)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2091, file: !2090, line: 50, baseType: !890, size: 16, offset: 864)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2091, file: !2090, line: 51, baseType: !2125, size: 16, offset: 880)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !158, line: 18, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !142, line: 23, baseType: !1890)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !360, line: 495, baseType: !155, size: 64, offset: 6528)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !363, file: !360, line: 497, baseType: !2129, size: 64, offset: 6592)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !360, line: 381, size: 384, elements: !2131)
!2131 = !{!2132, !2133, !2139}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2130, file: !360, line: 382, baseType: !169, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2130, file: !360, line: 383, baseType: !2134, size: 128, offset: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !360, line: 376, size: 128, elements: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2134, file: !360, line: 377, baseType: !146, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2134, file: !360, line: 378, baseType: !2138, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2130, file: !360, line: 384, baseType: !2140, size: 192, offset: 192)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2141, line: 26, size: 192, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2140, file: !2141, line: 27, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2140, file: !2141, line: 28, baseType: !2145, size: 128, offset: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2146, line: 43, size: 128, elements: !2147)
!2146 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2149}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2145, file: !2146, line: 44, baseType: !275)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2145, file: !2146, line: 45, baseType: !202, size: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !363, file: !360, line: 500, baseType: !787, offset: 6656)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !363, file: !360, line: 501, baseType: !2152, size: 64, offset: 6656)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !360, line: 387, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !363, file: !360, line: 516, baseType: !1426, size: 64, offset: 6720)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !363, file: !360, line: 519, baseType: !400, size: 64, offset: 6784)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !363, file: !360, line: 521, baseType: !2157, size: 64, offset: 6848)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !360, line: 521, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !363, file: !360, line: 545, baseType: !169, size: 32, offset: 6912)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !363, file: !360, line: 548, baseType: !530, size: 8, offset: 6944)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !363, file: !360, line: 550, baseType: !2162, offset: 6952)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2163, line: 142, elements: !218)
!2163 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !363, file: !360, line: 554, baseType: !1446, size: 256, offset: 6976)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !363, file: !360, line: 557, baseType: !157, size: 32, offset: 7232)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !359, file: !360, line: 565, baseType: !2167, offset: 7296)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, elements: !2168)
!2168 = !{!2169}
!2169 = !DISubrange(count: -1)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !147, file: !148, line: 758, baseType: !358, size: 64, offset: 3968)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !147, file: !148, line: 761, baseType: !2172, size: 320, offset: 4032)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2081, line: 34, size: 320, elements: !2173)
!2173 = !{!2174, !2175}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2172, file: !2081, line: 35, baseType: !209, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2172, file: !2081, line: 36, baseType: !2176, size: 256, offset: 64)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !1809)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !147, file: !148, line: 766, baseType: !173, size: 32, offset: 4352)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !147, file: !148, line: 767, baseType: !173, size: 32, offset: 4384)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !147, file: !148, line: 768, baseType: !173, size: 32, offset: 4416)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !147, file: !148, line: 770, baseType: !173, size: 32, offset: 4448)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !147, file: !148, line: 772, baseType: !155, size: 64, offset: 4480)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !147, file: !148, line: 775, baseType: !7, size: 32, offset: 4544)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !147, file: !148, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !147, file: !148, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !147, file: !148, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !147, file: !148, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !147, file: !148, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !147, file: !148, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !147, file: !148, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !147, file: !148, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !147, file: !148, line: 831, baseType: !155, size: 64, offset: 4672)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !147, file: !148, line: 833, baseType: !2193, size: 384, offset: 4736)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !2194)
!2194 = !{!2195, !2200}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2193, file: !26, line: 26, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!162, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !26, line: 27, baseType: !2201, size: 320, offset: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !26, line: 27, size: 320, elements: !2202)
!2202 = !{!2203, !2213, !2238}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2201, file: !26, line: 36, baseType: !2204, size: 320)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !26, line: 29, size: 320, elements: !2205)
!2205 = !{!2206, !2208, !2209, !2210, !2211, !2212}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2204, file: !26, line: 30, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2204, file: !26, line: 31, baseType: !157, size: 32, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2204, file: !26, line: 32, baseType: !157, size: 32, offset: 96)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2204, file: !26, line: 33, baseType: !157, size: 32, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2204, file: !26, line: 34, baseType: !209, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2204, file: !26, line: 35, baseType: !2207, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2201, file: !26, line: 46, baseType: !2214, size: 192)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !26, line: 38, size: 192, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2237}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2214, file: !26, line: 39, baseType: !300, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2214, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2214, file: !26, line: 41, baseType: !2219, size: 64, offset: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2214, file: !26, line: 41, size: 64, elements: !2220)
!2220 = !{!2221, !2229}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2219, file: !26, line: 42, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2224, line: 7, size: 128, elements: !2225)
!2224 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2228}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2223, file: !2224, line: 8, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !302, line: 93, baseType: !242)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2223, file: !2224, line: 9, baseType: !242, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2219, file: !26, line: 43, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2232, line: 7, size: 64, elements: !2233)
!2232 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2233 = !{!2234, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2231, file: !2232, line: 8, baseType: !2235, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2232, line: 5, baseType: !1865)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2231, file: !2232, line: 9, baseType: !1865, size: 32, offset: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2214, file: !26, line: 45, baseType: !209, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2201, file: !26, line: 54, baseType: !2239, size: 256)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2201, file: !26, line: 48, size: 256, elements: !2240)
!2240 = !{!2241, !2244, !2245, !2246, !2247}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2239, file: !26, line: 49, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2239, file: !26, line: 50, baseType: !173, size: 32, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2239, file: !26, line: 51, baseType: !173, size: 32, offset: 96)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2239, file: !26, line: 52, baseType: !155, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2239, file: !26, line: 53, baseType: !155, size: 64, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !147, file: !148, line: 835, baseType: !2249, size: 32, offset: 5120)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !138, line: 22, baseType: !2250)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !302, line: 28, baseType: !173)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !147, file: !148, line: 836, baseType: !2249, size: 32, offset: 5152)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !147, file: !148, line: 840, baseType: !155, size: 64, offset: 5184)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !147, file: !148, line: 849, baseType: !146, size: 64, offset: 5248)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !147, file: !148, line: 852, baseType: !146, size: 64, offset: 5312)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !147, file: !148, line: 857, baseType: !202, size: 128, offset: 5376)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !147, file: !148, line: 858, baseType: !202, size: 128, offset: 5504)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !147, file: !148, line: 859, baseType: !146, size: 64, offset: 5632)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !147, file: !148, line: 867, baseType: !202, size: 128, offset: 5696)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !147, file: !148, line: 868, baseType: !202, size: 128, offset: 5824)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !147, file: !148, line: 871, baseType: !1801, size: 64, offset: 5952)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !147, file: !148, line: 872, baseType: !2262, size: 512, offset: 6016)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 512, elements: !1809)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !147, file: !148, line: 873, baseType: !202, size: 128, offset: 6528)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !147, file: !148, line: 874, baseType: !202, size: 128, offset: 6656)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !147, file: !148, line: 876, baseType: !2266, size: 64, offset: 6784)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !147, file: !148, line: 879, baseType: !751, size: 64, offset: 6848)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !147, file: !148, line: 882, baseType: !751, size: 64, offset: 6912)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !147, file: !148, line: 884, baseType: !209, size: 64, offset: 6976)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !147, file: !148, line: 885, baseType: !209, size: 64, offset: 7040)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !147, file: !148, line: 890, baseType: !209, size: 64, offset: 7104)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !147, file: !148, line: 891, baseType: !2273, size: 128, offset: 7168)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !148, line: 242, size: 128, elements: !2274)
!2274 = !{!2275, !2276, !2277}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2273, file: !148, line: 244, baseType: !209, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2273, file: !148, line: 245, baseType: !209, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2273, file: !148, line: 246, baseType: !275, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !147, file: !148, line: 900, baseType: !155, size: 64, offset: 7296)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !147, file: !148, line: 901, baseType: !155, size: 64, offset: 7360)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !147, file: !148, line: 904, baseType: !209, size: 64, offset: 7424)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !147, file: !148, line: 907, baseType: !209, size: 64, offset: 7488)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !147, file: !148, line: 910, baseType: !155, size: 64, offset: 7552)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !147, file: !148, line: 911, baseType: !155, size: 64, offset: 7616)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !147, file: !148, line: 914, baseType: !2285, size: 640, offset: 7680)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2286, line: 123, size: 640, elements: !2287)
!2286 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2287 = !{!2288, !2294, !2295}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2285, file: !2286, line: 124, baseType: !2289, size: 576)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2290, size: 576, elements: !695)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2286, line: 108, size: 192, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2290, file: !2286, line: 109, baseType: !209, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2290, file: !2286, line: 110, baseType: !315, size: 128, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2285, file: !2286, line: 125, baseType: !7, size: 32, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2285, file: !2286, line: 126, baseType: !7, size: 32, offset: 608)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !147, file: !148, line: 917, baseType: !2297, size: 192, offset: 8320)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2286, line: 134, size: 192, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2297, file: !2286, line: 135, baseType: !413, size: 128, align: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2297, file: !2286, line: 136, baseType: !7, size: 32, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !147, file: !148, line: 923, baseType: !1827, size: 64, offset: 8512)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !147, file: !148, line: 926, baseType: !1827, size: 64, offset: 8576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !147, file: !148, line: 929, baseType: !1827, size: 64, offset: 8640)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !147, file: !148, line: 933, baseType: !1857, size: 64, offset: 8704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !147, file: !148, line: 943, baseType: !2306, size: 128, offset: 8768)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 128, elements: !1334)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !147, file: !148, line: 945, baseType: !2308, size: 64, offset: 8896)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !148, line: 49, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !147, file: !148, line: 956, baseType: !2311, size: 64, offset: 8960)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !148, line: 45, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !147, file: !148, line: 959, baseType: !2314, size: 64, offset: 9024)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !148, line: 959, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !147, file: !148, line: 962, baseType: !2317, size: 64, offset: 9088)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !148, line: 66, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !147, file: !148, line: 966, baseType: !2320, size: 64, offset: 9152)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2322, line: 35, flags: DIFlagFwdDecl)
!2322 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !147, file: !148, line: 969, baseType: !2324, size: 64, offset: 9216)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2326, line: 82, size: 7296, elements: !2327)
!2326 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2363, !2372, !2373, !2375, !2376, !2377, !2380, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2410, !2411, !2418, !2419, !2420, !2421, !2422, !2423}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2325, file: !2326, line: 83, baseType: !165, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2325, file: !2326, line: 84, baseType: !169, size: 32, offset: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2325, file: !2326, line: 85, baseType: !173, size: 32, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2325, file: !2326, line: 86, baseType: !202, size: 128, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2325, file: !2326, line: 88, baseType: !1287, size: 128, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2325, file: !2326, line: 91, baseType: !146, size: 64, offset: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2325, file: !2326, line: 94, baseType: !2335, size: 192, offset: 448)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2336, line: 30, size: 192, elements: !2337)
!2336 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2335, file: !2336, line: 31, baseType: !202, size: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2335, file: !2336, line: 32, baseType: !2340, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2341, line: 25, baseType: !2342)
!2341 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2341, line: 23, size: 64, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2342, file: !2341, line: 24, baseType: !350, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2325, file: !2326, line: 97, baseType: !679, size: 64, offset: 640)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2325, file: !2326, line: 100, baseType: !173, size: 32, offset: 704)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2325, file: !2326, line: 106, baseType: !173, size: 32, offset: 736)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2325, file: !2326, line: 107, baseType: !146, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2325, file: !2326, line: 110, baseType: !173, size: 32, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2325, file: !2326, line: 111, baseType: !7, size: 32, offset: 864)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2325, file: !2326, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2325, file: !2326, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2325, file: !2326, line: 128, baseType: !173, size: 32, offset: 928)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2325, file: !2326, line: 129, baseType: !202, size: 128, offset: 960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2325, file: !2326, line: 132, baseType: !250, size: 512, offset: 1088)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2325, file: !2326, line: 133, baseType: !258, size: 64, offset: 1600)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2325, file: !2326, line: 140, baseType: !2358, size: 256, offset: 1664)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2359, size: 256, elements: !1849)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2326, line: 38, size: 128, elements: !2360)
!2360 = !{!2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2359, file: !2326, line: 39, baseType: !209, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2359, file: !2326, line: 40, baseType: !209, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2325, file: !2326, line: 146, baseType: !2364, size: 192, offset: 1920)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2326, line: 66, size: 192, elements: !2365)
!2365 = !{!2366}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2364, file: !2326, line: 67, baseType: !2367, size: 192)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2326, line: 47, size: 192, elements: !2368)
!2368 = !{!2369, !2370, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2367, file: !2326, line: 48, baseType: !806, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2367, file: !2326, line: 49, baseType: !806, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2367, file: !2326, line: 50, baseType: !806, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2325, file: !2326, line: 150, baseType: !2285, size: 640, offset: 2112)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2325, file: !2326, line: 153, baseType: !2374, size: 256, offset: 2752)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, size: 256, elements: !1809)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2325, file: !2326, line: 159, baseType: !1801, size: 64, offset: 3008)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2325, file: !2326, line: 162, baseType: !173, size: 32, offset: 3072)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2325, file: !2326, line: 164, baseType: !2378, size: 64, offset: 3136)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2326, line: 164, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2325, file: !2326, line: 175, baseType: !2381, size: 32, offset: 3200)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !305, line: 805, baseType: !2382)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 798, size: 32, elements: !2383)
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2382, file: !305, line: 803, baseType: !435, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2382, file: !305, line: 804, baseType: !787, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2325, file: !2326, line: 176, baseType: !209, size: 64, offset: 3264)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2325, file: !2326, line: 176, baseType: !209, size: 64, offset: 3328)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2325, file: !2326, line: 176, baseType: !209, size: 64, offset: 3392)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2325, file: !2326, line: 176, baseType: !209, size: 64, offset: 3456)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2325, file: !2326, line: 177, baseType: !209, size: 64, offset: 3520)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2325, file: !2326, line: 178, baseType: !209, size: 64, offset: 3584)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2325, file: !2326, line: 179, baseType: !2273, size: 128, offset: 3648)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2325, file: !2326, line: 180, baseType: !155, size: 64, offset: 3776)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2325, file: !2326, line: 180, baseType: !155, size: 64, offset: 3840)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2325, file: !2326, line: 180, baseType: !155, size: 64, offset: 3904)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2325, file: !2326, line: 180, baseType: !155, size: 64, offset: 3968)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2325, file: !2326, line: 181, baseType: !155, size: 64, offset: 4032)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2325, file: !2326, line: 181, baseType: !155, size: 64, offset: 4096)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2325, file: !2326, line: 181, baseType: !155, size: 64, offset: 4160)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2325, file: !2326, line: 181, baseType: !155, size: 64, offset: 4224)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2325, file: !2326, line: 182, baseType: !155, size: 64, offset: 4288)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2325, file: !2326, line: 182, baseType: !155, size: 64, offset: 4352)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2325, file: !2326, line: 182, baseType: !155, size: 64, offset: 4416)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2325, file: !2326, line: 182, baseType: !155, size: 64, offset: 4480)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2325, file: !2326, line: 183, baseType: !155, size: 64, offset: 4544)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2325, file: !2326, line: 183, baseType: !155, size: 64, offset: 4608)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2325, file: !2326, line: 184, baseType: !2408, offset: 4672)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2409, line: 12, elements: !218)
!2409 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2325, file: !2326, line: 192, baseType: !211, size: 64, offset: 4672)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2325, file: !2326, line: 203, baseType: !2412, size: 2048, offset: 4736)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2413, size: 2048, elements: !1334)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2414, line: 43, size: 128, elements: !2415)
!2414 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !{!2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2413, file: !2414, line: 44, baseType: !621, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2413, file: !2414, line: 45, baseType: !621, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2325, file: !2326, line: 220, baseType: !530, size: 8, offset: 6784)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2325, file: !2326, line: 221, baseType: !1890, size: 16, offset: 6800)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2325, file: !2326, line: 222, baseType: !1890, size: 16, offset: 6816)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2325, file: !2326, line: 224, baseType: !358, size: 64, offset: 6848)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2325, file: !2326, line: 227, baseType: !1055, size: 192, offset: 6912)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2325, file: !2326, line: 233, baseType: !1055, size: 192, offset: 7104)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !147, file: !148, line: 970, baseType: !2425, size: 64, offset: 9280)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2326, line: 20, size: 16576, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2426, file: !2326, line: 21, baseType: !787)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2426, file: !2326, line: 22, baseType: !165, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2426, file: !2326, line: 23, baseType: !1287, size: 128, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2426, file: !2326, line: 24, baseType: !2432, size: 16384, offset: 192)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, size: 16384, elements: !2453)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2336, line: 49, size: 256, elements: !2434)
!2434 = !{!2435}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2433, file: !2336, line: 50, baseType: !2436, size: 256)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2336, line: 35, size: 256, elements: !2437)
!2437 = !{!2438, !2445, !2446, !2452}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2436, file: !2336, line: 37, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2440, line: 19, baseType: !2441)
!2440 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2440, line: 18, baseType: !2443)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !173}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2436, file: !2336, line: 38, baseType: !155, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2436, file: !2336, line: 44, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2440, line: 22, baseType: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2440, line: 21, baseType: !2450)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2436, file: !2336, line: 46, baseType: !2340, size: 64, offset: 192)
!2453 = !{!2454}
!2454 = !DISubrange(count: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !147, file: !148, line: 971, baseType: !2340, size: 64, offset: 9344)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !147, file: !148, line: 972, baseType: !2340, size: 64, offset: 9408)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !147, file: !148, line: 974, baseType: !2340, size: 64, offset: 9472)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !147, file: !148, line: 975, baseType: !2335, size: 192, offset: 9536)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !147, file: !148, line: 976, baseType: !155, size: 64, offset: 9728)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !147, file: !148, line: 977, baseType: !619, size: 64, offset: 9792)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !147, file: !148, line: 978, baseType: !7, size: 32, offset: 9856)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !147, file: !148, line: 980, baseType: !416, size: 64, offset: 9920)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !147, file: !148, line: 989, baseType: !2464, size: 128, offset: 9984)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2465, line: 35, size: 128, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2466 = !{!2467, !2468, !2469}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2464, file: !2465, line: 36, baseType: !173, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2464, file: !2465, line: 37, baseType: !169, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2464, file: !2465, line: 38, baseType: !2470, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2465, line: 23, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !147, file: !148, line: 992, baseType: !209, size: 64, offset: 10112)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !147, file: !148, line: 993, baseType: !209, size: 64, offset: 10176)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !147, file: !148, line: 996, baseType: !787, offset: 10240)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !147, file: !148, line: 999, baseType: !275, offset: 10240)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !147, file: !148, line: 1001, baseType: !2477, size: 64, offset: 10240)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !148, line: 636, size: 64, elements: !2478)
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2477, file: !148, line: 637, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !147, file: !148, line: 1005, baseType: !318, size: 128, offset: 10304)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !147, file: !148, line: 1007, baseType: !146, size: 64, offset: 10432)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !147, file: !148, line: 1009, baseType: !2484, size: 64, offset: 10496)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !148, line: 1009, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !147, file: !148, line: 1043, baseType: !144, size: 64, offset: 10560)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !147, file: !148, line: 1046, baseType: !2488, size: 64, offset: 10624)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !148, line: 41, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !147, file: !148, line: 1050, baseType: !2491, size: 64, offset: 10688)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !148, line: 42, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !147, file: !148, line: 1054, baseType: !2494, size: 64, offset: 10752)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !148, line: 55, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !147, file: !148, line: 1056, baseType: !1234, size: 64, offset: 10816)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !147, file: !148, line: 1058, baseType: !2498, size: 64, offset: 10880)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2500, line: 99, size: 704, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2527, !2528}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2499, file: !2500, line: 100, baseType: !804, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2499, file: !2500, line: 101, baseType: !169, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2499, file: !2500, line: 102, baseType: !169, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2499, file: !2500, line: 105, baseType: !787, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2499, file: !2500, line: 107, baseType: !143, size: 16, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2499, file: !2500, line: 109, baseType: !783, size: 128, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2499, file: !2500, line: 110, baseType: !2509, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2500, line: 73, size: 448, elements: !2511)
!2511 = !{!2512, !2515, !2516, !2521, !2526}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2510, file: !2500, line: 74, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2500, line: 74, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2510, file: !2500, line: 75, baseType: !2498, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !2500, line: 83, baseType: !2517, size: 128, offset: 128)
!2517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2510, file: !2500, line: 83, size: 128, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2517, file: !2500, line: 84, baseType: !202, size: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2517, file: !2500, line: 85, baseType: !965, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !2500, line: 87, baseType: !2522, size: 128, offset: 256)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2510, file: !2500, line: 87, size: 128, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2522, file: !2500, line: 88, baseType: !683, size: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2522, file: !2500, line: 89, baseType: !413, size: 128, align: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2510, file: !2500, line: 92, baseType: !7, size: 32, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2499, file: !2500, line: 111, baseType: !679, size: 64, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2499, file: !2500, line: 113, baseType: !1446, size: 256, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !147, file: !148, line: 1061, baseType: !2530, size: 64, offset: 10944)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !148, line: 43, flags: DIFlagFwdDecl)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !147, file: !148, line: 1064, baseType: !155, size: 64, offset: 11008)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !147, file: !148, line: 1065, baseType: !2534, size: 64, offset: 11072)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2336, line: 14, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2336, line: 12, size: 384, elements: !2537)
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !2336, line: 13, baseType: !2539, size: 384)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !2336, line: 13, size: 384, elements: !2540)
!2540 = !{!2541, !2542, !2543, !2544}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2539, file: !2336, line: 13, baseType: !173, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2539, file: !2336, line: 13, baseType: !173, size: 32, offset: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2539, file: !2336, line: 13, baseType: !173, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2539, file: !2336, line: 13, baseType: !2545, size: 256, offset: 128)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2546, line: 32, size: 256, elements: !2547)
!2546 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2547 = !{!2548, !2553, !2566, !2572, !2581, !2601, !2606}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2545, file: !2546, line: 37, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 34, size: 64, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2549, file: !2546, line: 35, baseType: !2250, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2549, file: !2546, line: 36, baseType: !477, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2545, file: !2546, line: 45, baseType: !2554, size: 192)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 40, size: 192, elements: !2555)
!2555 = !{!2556, !2558, !2559, !2565}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2554, file: !2546, line: 41, baseType: !2557, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !302, line: 95, baseType: !173)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2554, file: !2546, line: 42, baseType: !173, size: 32, offset: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2554, file: !2546, line: 43, baseType: !2560, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2546, line: 11, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2546, line: 8, size: 64, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2561, file: !2546, line: 9, baseType: !173, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2561, file: !2546, line: 10, baseType: !144, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2554, file: !2546, line: 44, baseType: !173, size: 32, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2545, file: !2546, line: 52, baseType: !2567, size: 128)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 48, size: 128, elements: !2568)
!2568 = !{!2569, !2570, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2567, file: !2546, line: 49, baseType: !2250, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2567, file: !2546, line: 50, baseType: !477, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2567, file: !2546, line: 51, baseType: !2560, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2545, file: !2546, line: 61, baseType: !2573, size: 256)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 55, size: 256, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2580}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2573, file: !2546, line: 56, baseType: !2250, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2573, file: !2546, line: 57, baseType: !477, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2573, file: !2546, line: 58, baseType: !173, size: 32, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2573, file: !2546, line: 59, baseType: !2579, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !302, line: 94, baseType: !618)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2573, file: !2546, line: 60, baseType: !2579, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2545, file: !2546, line: 95, baseType: !2582, size: 256)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 64, size: 256, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2582, file: !2546, line: 65, baseType: !144, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2582, file: !2546, line: 77, baseType: !2586, size: 192, offset: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2582, file: !2546, line: 77, size: 192, elements: !2587)
!2587 = !{!2588, !2589, !2596}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2586, file: !2546, line: 82, baseType: !1890, size: 16)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2586, file: !2546, line: 88, baseType: !2590, size: 192)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !2546, line: 84, size: 192, elements: !2591)
!2591 = !{!2592, !2594, !2595}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2590, file: !2546, line: 85, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 64, elements: !296)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2590, file: !2546, line: 86, baseType: !144, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2590, file: !2546, line: 87, baseType: !144, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2586, file: !2546, line: 93, baseType: !2597, size: 96)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !2546, line: 90, size: 96, elements: !2598)
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2597, file: !2546, line: 91, baseType: !2593, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2597, file: !2546, line: 92, baseType: !159, size: 32, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2545, file: !2546, line: 101, baseType: !2602, size: 128)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 98, size: 128, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2602, file: !2546, line: 99, baseType: !162, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2602, file: !2546, line: 100, baseType: !173, size: 32, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2545, file: !2546, line: 108, baseType: !2607, size: 128)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2546, line: 104, size: 128, elements: !2608)
!2608 = !{!2609, !2610, !2611}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2607, file: !2546, line: 105, baseType: !144, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2607, file: !2546, line: 106, baseType: !173, size: 32, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2607, file: !2546, line: 107, baseType: !7, size: 32, offset: 96)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !147, file: !148, line: 1067, baseType: !2408, offset: 11136)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !147, file: !148, line: 1099, baseType: !2614, size: 64, offset: 11136)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !148, line: 56, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !147, file: !148, line: 1103, baseType: !202, size: 128, offset: 11200)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !147, file: !148, line: 1104, baseType: !2618, size: 64, offset: 11328)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !148, line: 46, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !147, file: !148, line: 1105, baseType: !1055, size: 192, offset: 11392)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !147, file: !148, line: 1106, baseType: !7, size: 32, offset: 11584)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !147, file: !148, line: 1109, baseType: !2623, size: 128, offset: 11648)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2624, size: 128, elements: !1849)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !148, line: 51, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !147, file: !148, line: 1110, baseType: !1055, size: 192, offset: 11776)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !147, file: !148, line: 1111, baseType: !202, size: 128, offset: 11968)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !147, file: !148, line: 1173, baseType: !2629, size: 64, offset: 12096)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2631, line: 62, size: 256, align: 256, elements: !2632)
!2631 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2632 = !{!2633, !2634, !2635, !2640}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2630, file: !2631, line: 75, baseType: !159, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2630, file: !2631, line: 90, baseType: !159, size: 32, offset: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2630, file: !2631, line: 124, baseType: !2636, size: 64, offset: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2630, file: !2631, line: 109, size: 64, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2636, file: !2631, line: 110, baseType: !210, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2636, file: !2631, line: 112, baseType: !210, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2630, file: !2631, line: 144, baseType: !159, size: 32, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !147, file: !148, line: 1174, baseType: !157, size: 32, offset: 12160)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !147, file: !148, line: 1179, baseType: !155, size: 64, offset: 12224)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !147, file: !148, line: 1182, baseType: !2644, size: 128, offset: 12288)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2081, line: 76, size: 128, elements: !2645)
!2645 = !{!2646, !2651, !2652}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2644, file: !2081, line: 85, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2648, line: 7, size: 64, elements: !2649)
!2648 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2647, file: !2648, line: 12, baseType: !347, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2644, file: !2081, line: 88, baseType: !530, size: 8, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2644, file: !2081, line: 95, baseType: !530, size: 8, offset: 72)
!2653 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !148, line: 1184, baseType: !2654, size: 128, offset: 12416)
!2654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !148, line: 1184, size: 128, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2654, file: !148, line: 1185, baseType: !165, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2654, file: !148, line: 1186, baseType: !413, size: 128, align: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !147, file: !148, line: 1190, baseType: !1702, size: 64, offset: 12544)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !147, file: !148, line: 1192, baseType: !2660, size: 128, offset: 12608)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2081, line: 64, size: 128, elements: !2661)
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2660, file: !2081, line: 65, baseType: !766, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2660, file: !2081, line: 67, baseType: !159, size: 32, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2660, file: !2081, line: 68, baseType: !159, size: 32, offset: 96)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !147, file: !148, line: 1206, baseType: !173, size: 32, offset: 12736)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !147, file: !148, line: 1207, baseType: !173, size: 32, offset: 12768)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !147, file: !148, line: 1209, baseType: !155, size: 64, offset: 12800)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !147, file: !148, line: 1219, baseType: !209, size: 64, offset: 12864)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !147, file: !148, line: 1220, baseType: !209, size: 64, offset: 12928)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !147, file: !148, line: 1317, baseType: !173, size: 32, offset: 12992)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !147, file: !148, line: 1319, baseType: !146, size: 64, offset: 13056)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !147, file: !148, line: 1322, baseType: !2673, size: 64, offset: 13120)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2675, line: 9, flags: DIFlagFwdDecl)
!2675 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !147, file: !148, line: 1326, baseType: !165, size: 32, offset: 13184)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !147, file: !148, line: 1342, baseType: !144, size: 64, offset: 13248)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !147, file: !148, line: 1343, baseType: !210, size: 64, offset: 13312)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !147, file: !148, line: 1344, baseType: !209, size: 64, offset: 13376)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !147, file: !148, line: 1345, baseType: !210, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !147, file: !148, line: 1346, baseType: !210, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !147, file: !148, line: 1347, baseType: !210, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !147, file: !148, line: 1348, baseType: !413, size: 128, align: 64, offset: 13504)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !147, file: !148, line: 1358, baseType: !2685, size: 34816, offset: 13824)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2686, line: 485, size: 34816, elements: !2687)
!2686 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2687 = !{!2688, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2717, !2718, !2719, !2720, !2721, !2722, !2725, !2726, !2727}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2685, file: !2686, line: 487, baseType: !2689, size: 192)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 192, elements: !695)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2691, line: 16, size: 64, elements: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2690, file: !2691, line: 17, baseType: !890, size: 16)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2690, file: !2691, line: 18, baseType: !890, size: 16, offset: 16)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2690, file: !2691, line: 19, baseType: !890, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2690, file: !2691, line: 19, baseType: !890, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2690, file: !2691, line: 19, baseType: !890, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2690, file: !2691, line: 19, baseType: !890, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2690, file: !2691, line: 19, baseType: !890, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2690, file: !2691, line: 20, baseType: !890, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2690, file: !2691, line: 20, baseType: !890, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2690, file: !2691, line: 20, baseType: !890, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2690, file: !2691, line: 20, baseType: !890, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2690, file: !2691, line: 20, baseType: !890, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2690, file: !2691, line: 20, baseType: !890, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2685, file: !2686, line: 491, baseType: !155, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2685, file: !2686, line: 495, baseType: !143, size: 16, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2685, file: !2686, line: 496, baseType: !143, size: 16, offset: 272)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2685, file: !2686, line: 497, baseType: !143, size: 16, offset: 288)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2685, file: !2686, line: 498, baseType: !143, size: 16, offset: 304)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2685, file: !2686, line: 502, baseType: !155, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2685, file: !2686, line: 503, baseType: !155, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2685, file: !2686, line: 514, baseType: !2714, size: 256, offset: 448)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 256, elements: !1809)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2686, line: 483, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2685, file: !2686, line: 516, baseType: !155, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2685, file: !2686, line: 518, baseType: !155, size: 64, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2685, file: !2686, line: 520, baseType: !155, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2685, file: !2686, line: 521, baseType: !155, size: 64, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2685, file: !2686, line: 522, baseType: !155, size: 64, offset: 960)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2685, file: !2686, line: 528, baseType: !2723, size: 64, offset: 1024)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2686, line: 10, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2685, file: !2686, line: 535, baseType: !155, size: 64, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2685, file: !2686, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2685, file: !2686, line: 540, baseType: !2728, size: 33280, offset: 1536)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2729, line: 317, size: 33280, elements: !2730)
!2729 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2730 = !{!2731, !2732, !2733}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2728, file: !2729, line: 330, baseType: !7, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2728, file: !2729, line: 337, baseType: !155, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2728, file: !2729, line: 348, baseType: !2734, size: 32768, offset: 512)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2729, line: 304, size: 32768, elements: !2735)
!2735 = !{!2736, !2751, !2788, !2838, !2851}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2734, file: !2729, line: 305, baseType: !2737, size: 896)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2729, line: 12, size: 896, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2750}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2737, file: !2729, line: 13, baseType: !157, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2737, file: !2729, line: 14, baseType: !157, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2737, file: !2729, line: 15, baseType: !157, size: 32, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2737, file: !2729, line: 16, baseType: !157, size: 32, offset: 96)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2737, file: !2729, line: 17, baseType: !157, size: 32, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2737, file: !2729, line: 18, baseType: !157, size: 32, offset: 160)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2737, file: !2729, line: 19, baseType: !157, size: 32, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2737, file: !2729, line: 22, baseType: !2747, size: 640, offset: 224)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 640, elements: !2748)
!2748 = !{!2749}
!2749 = !DISubrange(count: 20)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2737, file: !2729, line: 25, baseType: !157, size: 32, offset: 864)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2734, file: !2729, line: 306, baseType: !2752, size: 4096, align: 128)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2729, line: 34, size: 4096, align: 128, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2773, !2774, !2775, !2777, !2779, !2783}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2752, file: !2729, line: 35, baseType: !890, size: 16)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2752, file: !2729, line: 36, baseType: !890, size: 16, offset: 16)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2752, file: !2729, line: 37, baseType: !890, size: 16, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2752, file: !2729, line: 38, baseType: !890, size: 16, offset: 48)
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !2729, line: 39, baseType: !2759, size: 128, offset: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !2729, line: 39, size: 128, elements: !2760)
!2760 = !{!2761, !2766}
!2761 = !DIDerivedType(tag: DW_TAG_member, scope: !2759, file: !2729, line: 40, baseType: !2762, size: 128)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2759, file: !2729, line: 40, size: 128, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2762, file: !2729, line: 41, baseType: !209, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2762, file: !2729, line: 42, baseType: !209, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2759, file: !2729, line: 44, baseType: !2767, size: 128)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2759, file: !2729, line: 44, size: 128, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2767, file: !2729, line: 45, baseType: !157, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2767, file: !2729, line: 46, baseType: !157, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2767, file: !2729, line: 47, baseType: !157, size: 32, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2767, file: !2729, line: 48, baseType: !157, size: 32, offset: 96)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2752, file: !2729, line: 51, baseType: !157, size: 32, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2752, file: !2729, line: 52, baseType: !157, size: 32, offset: 224)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2752, file: !2729, line: 55, baseType: !2776, size: 1024, offset: 256)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1024, elements: !1325)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2752, file: !2729, line: 58, baseType: !2778, size: 2048, offset: 1280)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 2048, elements: !2453)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2752, file: !2729, line: 60, baseType: !2780, size: 384, offset: 3328)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 384, elements: !2781)
!2781 = !{!2782}
!2782 = !DISubrange(count: 12)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !2729, line: 62, baseType: !2784, size: 384, offset: 3712)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !2729, line: 62, size: 384, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2784, file: !2729, line: 63, baseType: !2780, size: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2784, file: !2729, line: 64, baseType: !2780, size: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2734, file: !2729, line: 307, baseType: !2789, size: 1088)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2729, line: 79, size: 1088, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2837}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2789, file: !2729, line: 80, baseType: !157, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2789, file: !2729, line: 81, baseType: !157, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2789, file: !2729, line: 82, baseType: !157, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2789, file: !2729, line: 83, baseType: !157, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2789, file: !2729, line: 84, baseType: !157, size: 32, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2789, file: !2729, line: 85, baseType: !157, size: 32, offset: 160)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2789, file: !2729, line: 86, baseType: !157, size: 32, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2789, file: !2729, line: 88, baseType: !2747, size: 640, offset: 224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2789, file: !2729, line: 89, baseType: !331, size: 8, offset: 864)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2789, file: !2729, line: 90, baseType: !331, size: 8, offset: 872)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2789, file: !2729, line: 91, baseType: !331, size: 8, offset: 880)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2789, file: !2729, line: 92, baseType: !331, size: 8, offset: 888)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2789, file: !2729, line: 93, baseType: !331, size: 8, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2789, file: !2729, line: 94, baseType: !331, size: 8, offset: 904)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2789, file: !2729, line: 95, baseType: !2806, size: 64, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2808, line: 11, size: 128, elements: !2809)
!2808 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2807, file: !2808, line: 12, baseType: !162, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2807, file: !2808, line: 13, baseType: !2812, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2814, line: 56, size: 1344, elements: !2815)
!2814 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2813, file: !2814, line: 61, baseType: !155, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2813, file: !2814, line: 62, baseType: !155, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2813, file: !2814, line: 63, baseType: !155, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2813, file: !2814, line: 64, baseType: !155, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2813, file: !2814, line: 65, baseType: !155, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2813, file: !2814, line: 66, baseType: !155, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2813, file: !2814, line: 68, baseType: !155, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2813, file: !2814, line: 69, baseType: !155, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2813, file: !2814, line: 70, baseType: !155, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2813, file: !2814, line: 71, baseType: !155, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2813, file: !2814, line: 72, baseType: !155, size: 64, offset: 640)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2813, file: !2814, line: 73, baseType: !155, size: 64, offset: 704)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2813, file: !2814, line: 74, baseType: !155, size: 64, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2813, file: !2814, line: 75, baseType: !155, size: 64, offset: 832)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2813, file: !2814, line: 76, baseType: !155, size: 64, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2813, file: !2814, line: 81, baseType: !155, size: 64, offset: 960)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2813, file: !2814, line: 83, baseType: !155, size: 64, offset: 1024)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2813, file: !2814, line: 84, baseType: !155, size: 64, offset: 1088)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2814, line: 85, baseType: !155, size: 64, offset: 1152)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2813, file: !2814, line: 86, baseType: !155, size: 64, offset: 1216)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2813, file: !2814, line: 87, baseType: !155, size: 64, offset: 1280)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2789, file: !2729, line: 96, baseType: !157, size: 32, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2734, file: !2729, line: 308, baseType: !2839, size: 4608, align: 512)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2729, line: 289, size: 4608, align: 512, elements: !2840)
!2840 = !{!2841, !2842, !2849}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2839, file: !2729, line: 290, baseType: !2752, size: 4096, align: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2839, file: !2729, line: 291, baseType: !2843, size: 512, offset: 4096)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2729, line: 268, size: 512, elements: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2843, file: !2729, line: 269, baseType: !209, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2843, file: !2729, line: 270, baseType: !209, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2843, file: !2729, line: 271, baseType: !2848, size: 384, offset: 128)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 384, elements: !1908)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2839, file: !2729, line: 292, baseType: !2850, offset: 4608)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, elements: !2004)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2734, file: !2729, line: 309, baseType: !2852, size: 32768)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 32768, elements: !2853)
!2853 = !{!2854}
!2854 = !DISubrange(count: 4096)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !173)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !2859)
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2870, !2871, !2873, !2874, !3563, !3603, !3604, !3621, !3682, !3764, !3765, !3767, !3768, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3803, !3804, !3805, !3810, !3817, !3818, !3819, !3820}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !2858, file: !6, line: 632, baseType: !173, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !2858, file: !6, line: 633, baseType: !2306, size: 128, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !2858, file: !6, line: 634, baseType: !157, size: 32, offset: 160)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2858, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !2858, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !2858, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !2858, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !2858, file: !6, line: 640, baseType: !2868, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !2858, file: !6, line: 641, baseType: !173, size: 32, offset: 384)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !2858, file: !6, line: 643, baseType: !2872, size: 64, offset: 416)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1849)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2858, file: !6, line: 645, baseType: !2857, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2858, file: !6, line: 646, baseType: !2875, size: 64, offset: 576)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !2877)
!2877 = !{!2878, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3557, !3558, !3559, !3560, !3561, !3562}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !2876, file: !6, line: 425, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !2881)
!2881 = !{!2882, !3181, !3182, !3185, !3186, !3237, !3328, !3329, !3330, !3331, !3332, !3341, !3446, !3459, !3462, !3463, !3467, !3469, !3470, !3471, !3475, !3481, !3482, !3485, !3489, !3492, !3493, !3494, !3495, !3496, !3528, !3529, !3530, !3533, !3536, !3537, !3538, !3539}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2880, file: !67, line: 462, baseType: !2883, size: 512)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2884, line: 64, size: 512, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2885 = !{!2886, !2887, !2888, !2890, !2930, !3032, !3171, !3176, !3177, !3178, !3179, !3180}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2883, file: !2884, line: 65, baseType: !499, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2883, file: !2884, line: 66, baseType: !202, size: 128, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2883, file: !2884, line: 67, baseType: !2889, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2883, file: !2884, line: 68, baseType: !2891, size: 64, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2884, line: 192, size: 704, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2897}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2892, file: !2884, line: 193, baseType: !202, size: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2892, file: !2884, line: 194, baseType: !787, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2892, file: !2884, line: 195, baseType: !2883, size: 512, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2892, file: !2884, line: 196, baseType: !2898, size: 64, offset: 640)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2884, line: 156, size: 192, elements: !2901)
!2901 = !{!2902, !2907, !2912}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2900, file: !2884, line: 157, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!173, !2891, !2889}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2900, file: !2884, line: 158, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!499, !2891, !2889}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2900, file: !2884, line: 159, baseType: !2913, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2914)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!173, !2891, !2889, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2884, line: 148, size: 20736, elements: !2919)
!2919 = !{!2920, !2922, !2924, !2925, !2929}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2918, file: !2884, line: 149, baseType: !2921, size: 192)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 192, elements: !695)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2918, file: !2884, line: 150, baseType: !2923, size: 4096, offset: 192)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 4096, elements: !2453)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2918, file: !2884, line: 151, baseType: !173, size: 32, offset: 4288)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2918, file: !2884, line: 152, baseType: !2926, size: 16384, offset: 4320)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 16384, elements: !2927)
!2927 = !{!2928}
!2928 = !DISubrange(count: 2048)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2918, file: !2884, line: 153, baseType: !173, size: 32, offset: 20704)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2883, file: !2884, line: 69, baseType: !2931, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2884, line: 138, size: 448, elements: !2933)
!2933 = !{!2934, !2938, !2957, !2959, !2992, !3022, !3026}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2932, file: !2884, line: 139, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2889}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2932, file: !2884, line: 140, baseType: !2939, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2941)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2942, line: 230, size: 128, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2943 = !{!2944, !2953}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2941, file: !2942, line: 231, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!616, !2889, !2948, !525}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2942, line: 30, size: 128, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2949, file: !2942, line: 31, baseType: !499, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2949, file: !2942, line: 32, baseType: !468, size: 16, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2941, file: !2942, line: 232, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!616, !2889, !2948, !499, !619}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2932, file: !2884, line: 141, baseType: !2958, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2932, file: !2884, line: 142, baseType: !2960, size: 64, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2942, line: 84, size: 320, elements: !2964)
!2964 = !{!2965, !2966, !2970, !2989, !2990}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2963, file: !2942, line: 85, baseType: !499, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2963, file: !2942, line: 86, baseType: !2967, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!468, !2889, !2948, !173}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2963, file: !2942, line: 88, baseType: !2971, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!468, !2889, !2974, !173}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2942, line: 168, size: 448, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2984, !2985}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2975, file: !2942, line: 169, baseType: !2949, size: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2975, file: !2942, line: 170, baseType: !619, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2975, file: !2942, line: 171, baseType: !144, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2975, file: !2942, line: 172, baseType: !2981, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!616, !400, !2889, !2974, !525, !571, !619}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2975, file: !2942, line: 174, baseType: !2981, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2975, file: !2942, line: 176, baseType: !2986, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!173, !400, !2889, !2974, !366}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2963, file: !2942, line: 90, baseType: !2958, size: 64, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2963, file: !2942, line: 91, baseType: !2991, size: 64, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2932, file: !2884, line: 143, baseType: !2993, size: 64, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2996, !2889}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2998)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2999)
!2999 = !{!3000, !3001, !3005, !3009, !3017, !3021}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2998, file: !55, line: 40, baseType: !54, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2998, file: !55, line: 41, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!530}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2998, file: !55, line: 42, baseType: !3006, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!144}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2998, file: !55, line: 43, baseType: !3010, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!3013, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2998, file: !55, line: 44, baseType: !3018, size: 64, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!3013}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2998, file: !55, line: 45, baseType: !507, size: 64, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2932, file: !2884, line: 144, baseType: !3023, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!3013, !2889}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2932, file: !2884, line: 145, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2889, !3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2883, file: !2884, line: 70, baseType: !3033, size: 64, offset: 384)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !663, line: 123, size: 1024, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3164, !3165, !3166, !3167, !3168}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3034, file: !663, line: 124, baseType: !169, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3034, file: !663, line: 125, baseType: !169, size: 32, offset: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3034, file: !663, line: 135, baseType: !3033, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3034, file: !663, line: 136, baseType: !499, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3034, file: !663, line: 138, baseType: !194, size: 192, align: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3034, file: !663, line: 140, baseType: !3013, size: 64, offset: 384)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3034, file: !663, line: 141, baseType: !7, size: 32, offset: 448)
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !3034, file: !663, line: 142, baseType: !3044, size: 256, offset: 512)
!3044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3034, file: !663, line: 142, size: 256, elements: !3045)
!3045 = !{!3046, !3092, !3096}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3044, file: !663, line: 143, baseType: !3047, size: 192)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !663, line: 91, size: 192, elements: !3048)
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3047, file: !663, line: 92, baseType: !155, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3047, file: !663, line: 94, baseType: !321, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3047, file: !663, line: 100, baseType: !3052, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !663, line: 180, size: 704, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3064, !3065, !3066, !3090, !3091}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3053, file: !663, line: 182, baseType: !3033, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3053, file: !663, line: 183, baseType: !7, size: 32, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3053, file: !663, line: 186, baseType: !3058, size: 192, offset: 128)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3059, line: 19, size: 192, elements: !3060)
!3059 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3058, file: !3059, line: 20, baseType: !783, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3058, file: !3059, line: 21, baseType: !7, size: 32, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3058, file: !3059, line: 22, baseType: !7, size: 32, offset: 160)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3053, file: !663, line: 187, baseType: !157, size: 32, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3053, file: !663, line: 188, baseType: !157, size: 32, offset: 352)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3053, file: !663, line: 189, baseType: !3067, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !663, line: 168, size: 320, elements: !3069)
!3069 = !{!3070, !3074, !3078, !3082, !3086}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3068, file: !663, line: 169, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!173, !757, !3052}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3068, file: !663, line: 171, baseType: !3075, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!173, !3033, !499, !468}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3068, file: !663, line: 173, baseType: !3079, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!173, !3033}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3068, file: !663, line: 174, baseType: !3083, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!173, !3033, !3033, !499}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3068, file: !663, line: 176, baseType: !3087, size: 64, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!173, !757, !3033, !3052}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3053, file: !663, line: 192, baseType: !202, size: 128, offset: 448)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3053, file: !663, line: 194, baseType: !1287, size: 128, offset: 576)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3044, file: !663, line: 144, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !663, line: 103, size: 64, elements: !3094)
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3093, file: !663, line: 104, baseType: !3033, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3044, file: !663, line: 145, baseType: !3097, size: 256)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !663, line: 107, size: 256, elements: !3098)
!3098 = !{!3099, !3159, !3162, !3163}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3097, file: !663, line: 108, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3102)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !663, line: 217, size: 768, elements: !3103)
!3103 = !{!3104, !3124, !3128, !3132, !3136, !3140, !3144, !3148, !3149, !3150, !3151, !3155}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3102, file: !663, line: 222, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!173, !3108}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !663, line: 197, size: 1088, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3109, file: !663, line: 199, baseType: !3033, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3109, file: !663, line: 200, baseType: !400, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3109, file: !663, line: 201, baseType: !757, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3109, file: !663, line: 202, baseType: !144, size: 64, offset: 192)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3109, file: !663, line: 205, baseType: !1055, size: 192, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3109, file: !663, line: 206, baseType: !1055, size: 192, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3109, file: !663, line: 207, baseType: !173, size: 32, offset: 640)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3109, file: !663, line: 208, baseType: !202, size: 128, offset: 704)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3109, file: !663, line: 209, baseType: !525, size: 64, offset: 832)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3109, file: !663, line: 211, baseType: !619, size: 64, offset: 896)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3109, file: !663, line: 212, baseType: !530, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3109, file: !663, line: 213, baseType: !530, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3109, file: !663, line: 214, baseType: !395, size: 64, offset: 1024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3102, file: !663, line: 223, baseType: !3125, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !3108}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3102, file: !663, line: 236, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!173, !757, !144}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3102, file: !663, line: 238, baseType: !3133, size: 64, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!144, !757, !1517}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3102, file: !663, line: 239, baseType: !3137, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!144, !757, !144, !1517}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3102, file: !663, line: 240, baseType: !3141, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !757, !144}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3102, file: !663, line: 242, baseType: !3145, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!616, !3108, !525, !619, !571}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3102, file: !663, line: 252, baseType: !619, size: 64, offset: 448)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3102, file: !663, line: 259, baseType: !530, size: 8, offset: 512)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3102, file: !663, line: 260, baseType: !3145, size: 64, offset: 576)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3102, file: !663, line: 263, baseType: !3152, size: 64, offset: 640)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!1546, !3108, !1547}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3102, file: !663, line: 266, baseType: !3156, size: 64, offset: 704)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!173, !3108, !366}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3097, file: !663, line: 109, baseType: !3160, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !663, line: 31, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3097, file: !663, line: 110, baseType: !571, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3097, file: !663, line: 111, baseType: !3033, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3034, file: !663, line: 148, baseType: !144, size: 64, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3034, file: !663, line: 154, baseType: !209, size: 64, offset: 832)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3034, file: !663, line: 156, baseType: !143, size: 16, offset: 896)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3034, file: !663, line: 157, baseType: !468, size: 16, offset: 912)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3034, file: !663, line: 158, baseType: !3169, size: 64, offset: 960)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !663, line: 32, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2883, file: !2884, line: 71, baseType: !3172, size: 32, offset: 448)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3173, line: 19, size: 32, elements: !3174)
!3173 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3172, file: !3173, line: 20, baseType: !165, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2883, file: !2884, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2883, file: !2884, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2883, file: !2884, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2883, file: !2884, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2883, file: !2884, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2880, file: !67, line: 463, baseType: !2879, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2880, file: !67, line: 465, baseType: !3183, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2880, file: !67, line: 467, baseType: !499, size: 64, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2880, file: !67, line: 468, baseType: !3187, size: 64, offset: 704)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3189)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3197, !3202, !3206}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3189, file: !67, line: 88, baseType: !499, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3189, file: !67, line: 89, baseType: !2960, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3189, file: !67, line: 90, baseType: !3194, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!173, !2879, !2917}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3189, file: !67, line: 91, baseType: !3198, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!525, !2879, !3201, !3030, !3031}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3189, file: !67, line: 93, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !2879}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3189, file: !67, line: 95, baseType: !3207, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3209)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3210)
!3210 = !{!3211, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3209, file: !74, line: 279, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!173, !2879}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3209, file: !74, line: 280, baseType: !3203, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3209, file: !74, line: 281, baseType: !3212, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3209, file: !74, line: 282, baseType: !3212, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3209, file: !74, line: 283, baseType: !3212, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3209, file: !74, line: 284, baseType: !3212, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3209, file: !74, line: 285, baseType: !3212, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3209, file: !74, line: 286, baseType: !3212, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3209, file: !74, line: 287, baseType: !3212, size: 64, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3209, file: !74, line: 288, baseType: !3212, size: 64, offset: 576)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3209, file: !74, line: 289, baseType: !3212, size: 64, offset: 640)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3209, file: !74, line: 290, baseType: !3212, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3209, file: !74, line: 291, baseType: !3212, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3209, file: !74, line: 292, baseType: !3212, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3209, file: !74, line: 293, baseType: !3212, size: 64, offset: 896)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3209, file: !74, line: 294, baseType: !3212, size: 64, offset: 960)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3209, file: !74, line: 295, baseType: !3212, size: 64, offset: 1024)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3209, file: !74, line: 296, baseType: !3212, size: 64, offset: 1088)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3209, file: !74, line: 297, baseType: !3212, size: 64, offset: 1152)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3209, file: !74, line: 298, baseType: !3212, size: 64, offset: 1216)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3209, file: !74, line: 299, baseType: !3212, size: 64, offset: 1280)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3209, file: !74, line: 300, baseType: !3212, size: 64, offset: 1344)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3209, file: !74, line: 301, baseType: !3212, size: 64, offset: 1408)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2880, file: !67, line: 470, baseType: !3238, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3240, line: 82, size: 1408, elements: !3241)
!3240 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3247, !3248, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3323, !3326, !3327}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3239, file: !3240, line: 83, baseType: !499, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3239, file: !3240, line: 84, baseType: !499, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3239, file: !3240, line: 85, baseType: !2879, size: 64, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3239, file: !3240, line: 86, baseType: !2960, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3239, file: !3240, line: 87, baseType: !2960, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3239, file: !3240, line: 88, baseType: !2960, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3239, file: !3240, line: 90, baseType: !3249, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!173, !2879, !3252}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3274, !3287, !3288, !3289, !3290, !3291, !3299, !3300, !3301, !3302, !3303, !3304}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3253, file: !61, line: 96, baseType: !499, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3253, file: !61, line: 97, baseType: !3238, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3253, file: !61, line: 99, baseType: !134, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3253, file: !61, line: 100, baseType: !499, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3253, file: !61, line: 102, baseType: !530, size: 8, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3253, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3253, file: !61, line: 105, baseType: !3262, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3265, line: 262, size: 1600, elements: !3266)
!3265 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3266 = !{!3267, !3268, !3269, !3273}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3264, file: !3265, line: 263, baseType: !1324, size: 256)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3264, file: !3265, line: 264, baseType: !1324, size: 256, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3264, file: !3265, line: 265, baseType: !3270, size: 1024, offset: 512)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 1024, elements: !3271)
!3271 = !{!3272}
!3272 = !DISubrange(count: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3264, file: !3265, line: 266, baseType: !3013, size: 64, offset: 1536)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3253, file: !61, line: 106, baseType: !3275, size: 64, offset: 384)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3265, line: 210, size: 256, elements: !3278)
!3278 = !{!3279, !3283, !3285, !3286}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3277, file: !3265, line: 211, baseType: !3280, size: 72)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 72, elements: !3281)
!3281 = !{!3282}
!3282 = !DISubrange(count: 9)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3277, file: !3265, line: 212, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3265, line: 14, baseType: !155)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3277, file: !3265, line: 213, baseType: !159, size: 32, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3277, file: !3265, line: 214, baseType: !159, size: 32, offset: 224)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3253, file: !61, line: 108, baseType: !3212, size: 64, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3253, file: !61, line: 109, baseType: !3203, size: 64, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3253, file: !61, line: 110, baseType: !3212, size: 64, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3253, file: !61, line: 111, baseType: !3203, size: 64, offset: 640)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3253, file: !61, line: 112, baseType: !3292, size: 64, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!173, !2879, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3296)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3297)
!3297 = !{!3298}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3296, file: !74, line: 51, baseType: !173, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3253, file: !61, line: 113, baseType: !3212, size: 64, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3253, file: !61, line: 114, baseType: !2960, size: 64, offset: 832)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3253, file: !61, line: 115, baseType: !2960, size: 64, offset: 896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3253, file: !61, line: 117, baseType: !3207, size: 64, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3253, file: !61, line: 118, baseType: !3203, size: 64, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3253, file: !61, line: 120, baseType: !3305, size: 64, offset: 1088)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3239, file: !3240, line: 91, baseType: !3194, size: 64, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3239, file: !3240, line: 92, baseType: !3212, size: 64, offset: 512)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3239, file: !3240, line: 93, baseType: !3203, size: 64, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3239, file: !3240, line: 94, baseType: !3212, size: 64, offset: 640)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3239, file: !3240, line: 95, baseType: !3203, size: 64, offset: 704)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3239, file: !3240, line: 97, baseType: !3212, size: 64, offset: 768)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3239, file: !3240, line: 98, baseType: !3212, size: 64, offset: 832)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3239, file: !3240, line: 100, baseType: !3292, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3239, file: !3240, line: 101, baseType: !3212, size: 64, offset: 960)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3239, file: !3240, line: 103, baseType: !3212, size: 64, offset: 1024)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3239, file: !3240, line: 105, baseType: !3212, size: 64, offset: 1088)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3239, file: !3240, line: 107, baseType: !3207, size: 64, offset: 1152)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3239, file: !3240, line: 109, baseType: !3320, size: 64, offset: 1216)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3322)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3240, line: 109, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3239, file: !3240, line: 111, baseType: !3324, size: 64, offset: 1280)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3240, line: 111, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3239, file: !3240, line: 112, baseType: !689, offset: 1344)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3239, file: !3240, line: 114, baseType: !530, size: 8, offset: 1344)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2880, file: !67, line: 471, baseType: !3252, size: 64, offset: 832)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2880, file: !67, line: 473, baseType: !144, size: 64, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2880, file: !67, line: 475, baseType: !144, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2880, file: !67, line: 480, baseType: !1055, size: 192, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2880, file: !67, line: 484, baseType: !3333, size: 576, offset: 1216)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3334)
!3334 = !{!3335, !3336, !3337, !3338, !3339, !3340}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3333, file: !67, line: 362, baseType: !202, size: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3333, file: !67, line: 363, baseType: !202, size: 128, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3333, file: !67, line: 364, baseType: !202, size: 128, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3333, file: !67, line: 365, baseType: !202, size: 128, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3333, file: !67, line: 366, baseType: !530, size: 8, offset: 512)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3333, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2880, file: !67, line: 485, baseType: !3342, size: 2304, offset: 1792)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3439, !3443}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3342, file: !74, line: 566, baseType: !3295, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3342, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3342, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3342, file: !74, line: 569, baseType: !530, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3342, file: !74, line: 570, baseType: !530, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3342, file: !74, line: 571, baseType: !530, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3342, file: !74, line: 572, baseType: !530, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3342, file: !74, line: 573, baseType: !530, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3342, file: !74, line: 574, baseType: !530, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3342, file: !74, line: 575, baseType: !530, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3342, file: !74, line: 576, baseType: !530, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3342, file: !74, line: 577, baseType: !157, size: 32, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3342, file: !74, line: 578, baseType: !787, offset: 96)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3342, file: !74, line: 580, baseType: !202, size: 128, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3342, file: !74, line: 581, baseType: !2140, size: 192, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3342, file: !74, line: 582, baseType: !3360, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3362, line: 43, size: 1472, elements: !3363)
!3362 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3371, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3361, file: !3362, line: 44, baseType: !499, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3361, file: !3362, line: 45, baseType: !173, size: 32, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3361, file: !3362, line: 46, baseType: !202, size: 128, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3361, file: !3362, line: 47, baseType: !787, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3361, file: !3362, line: 48, baseType: !3369, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3361, file: !3362, line: 49, baseType: !3372, size: 320, offset: 320)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3373, line: 11, size: 320, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3374 = !{!3375, !3376, !3377, !3382}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3372, file: !3373, line: 16, baseType: !683, size: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3372, file: !3373, line: 17, baseType: !155, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3372, file: !3373, line: 18, baseType: !3378, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{null, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3372, file: !3373, line: 19, baseType: !157, size: 32, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3361, file: !3362, line: 50, baseType: !155, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3361, file: !3362, line: 51, baseType: !258, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3361, file: !3362, line: 52, baseType: !258, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3361, file: !3362, line: 53, baseType: !258, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3361, file: !3362, line: 54, baseType: !258, size: 64, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3361, file: !3362, line: 55, baseType: !258, size: 64, offset: 960)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3361, file: !3362, line: 56, baseType: !155, size: 64, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3361, file: !3362, line: 57, baseType: !155, size: 64, offset: 1088)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3361, file: !3362, line: 58, baseType: !155, size: 64, offset: 1152)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3361, file: !3362, line: 59, baseType: !155, size: 64, offset: 1216)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3361, file: !3362, line: 60, baseType: !155, size: 64, offset: 1280)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3361, file: !3362, line: 61, baseType: !2879, size: 64, offset: 1344)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3361, file: !3362, line: 62, baseType: !530, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3361, file: !3362, line: 63, baseType: !530, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3342, file: !74, line: 583, baseType: !530, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3342, file: !74, line: 584, baseType: !530, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3342, file: !74, line: 585, baseType: !530, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3342, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3342, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3342, file: !74, line: 592, baseType: !250, size: 512, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3342, file: !74, line: 593, baseType: !209, size: 64, offset: 1088)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3342, file: !74, line: 594, baseType: !1446, size: 256, offset: 1152)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3342, file: !74, line: 595, baseType: !1287, size: 128, offset: 1408)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3342, file: !74, line: 596, baseType: !3369, size: 64, offset: 1536)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3342, file: !74, line: 597, baseType: !169, size: 32, offset: 1600)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3342, file: !74, line: 598, baseType: !169, size: 32, offset: 1632)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3342, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3342, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3342, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3342, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3342, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3342, file: !74, line: 604, baseType: !530, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3342, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3342, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3342, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3342, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3342, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3342, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3342, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3342, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3342, file: !74, line: 613, baseType: !173, size: 32, offset: 1792)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3342, file: !74, line: 614, baseType: !173, size: 32, offset: 1824)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3342, file: !74, line: 615, baseType: !209, size: 64, offset: 1856)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3342, file: !74, line: 616, baseType: !209, size: 64, offset: 1920)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3342, file: !74, line: 617, baseType: !209, size: 64, offset: 1984)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3342, file: !74, line: 618, baseType: !209, size: 64, offset: 2048)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3342, file: !74, line: 620, baseType: !3430, size: 64, offset: 2112)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3431, file: !74, line: 537, baseType: !787)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3431, file: !74, line: 538, baseType: !7, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3431, file: !74, line: 540, baseType: !202, size: 128, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3431, file: !74, line: 543, baseType: !3437, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3342, file: !74, line: 621, baseType: !3440, size: 64, offset: 2176)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !2879, !1865}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3342, file: !74, line: 622, baseType: !3444, size: 64, offset: 2240)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2880, file: !67, line: 486, baseType: !3447, size: 64, offset: 4096)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3456, !3457, !3458}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3448, file: !74, line: 643, baseType: !3209, size: 1472)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3448, file: !74, line: 644, baseType: !3212, size: 64, offset: 1472)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3448, file: !74, line: 645, baseType: !3453, size: 64, offset: 1536)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{null, !2879, !530}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3448, file: !74, line: 646, baseType: !3212, size: 64, offset: 1600)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3448, file: !74, line: 647, baseType: !3203, size: 64, offset: 1664)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3448, file: !74, line: 648, baseType: !3203, size: 64, offset: 1728)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2880, file: !67, line: 493, baseType: !3460, size: 64, offset: 4160)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2880, file: !67, line: 499, baseType: !202, size: 128, offset: 4224)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2880, file: !67, line: 502, baseType: !3464, size: 64, offset: 4352)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2880, file: !67, line: 504, baseType: !3468, size: 64, offset: 4416)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2880, file: !67, line: 505, baseType: !209, size: 64, offset: 4480)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2880, file: !67, line: 510, baseType: !209, size: 64, offset: 4544)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2880, file: !67, line: 511, baseType: !3472, size: 64, offset: 4608)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3474)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2880, file: !67, line: 513, baseType: !3476, size: 64, offset: 4672)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3478)
!3478 = !{!3479, !3480}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3477, file: !67, line: 293, baseType: !7, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3477, file: !67, line: 294, baseType: !155, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2880, file: !67, line: 515, baseType: !202, size: 128, offset: 4736)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2880, file: !67, line: 526, baseType: !3483, offset: 4864)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3484, line: 5, elements: !218)
!3484 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2880, file: !67, line: 528, baseType: !3486, size: 64, offset: 4864)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3488, line: 14, flags: DIFlagFwdDecl)
!3488 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2880, file: !67, line: 529, baseType: !3490, size: 64, offset: 4928)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3240, line: 22, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2880, file: !67, line: 534, baseType: !553, size: 32, offset: 4992)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2880, file: !67, line: 535, baseType: !157, size: 32, offset: 5024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2880, file: !67, line: 537, baseType: !787, offset: 5056)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2880, file: !67, line: 538, baseType: !202, size: 128, offset: 5056)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2880, file: !67, line: 540, baseType: !3497, size: 64, offset: 5184)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3499, line: 54, size: 960, elements: !3500)
!3499 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3511, !3515, !3516, !3517, !3518, !3522, !3526, !3527}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3498, file: !3499, line: 55, baseType: !499, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3498, file: !3499, line: 56, baseType: !134, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3498, file: !3499, line: 58, baseType: !2960, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3498, file: !3499, line: 59, baseType: !2960, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3498, file: !3499, line: 60, baseType: !2889, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3498, file: !3499, line: 62, baseType: !3194, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3498, file: !3499, line: 63, baseType: !3508, size: 64, offset: 384)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!525, !2879, !3201}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3498, file: !3499, line: 65, baseType: !3512, size: 64, offset: 448)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !3497}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3498, file: !3499, line: 66, baseType: !3203, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3498, file: !3499, line: 68, baseType: !3212, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3498, file: !3499, line: 70, baseType: !2996, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3498, file: !3499, line: 71, baseType: !3519, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!3013, !2879}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3498, file: !3499, line: 73, baseType: !3523, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !2879, !3030, !3031}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3498, file: !3499, line: 75, baseType: !3207, size: 64, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3498, file: !3499, line: 77, baseType: !3324, size: 64, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2880, file: !67, line: 541, baseType: !2960, size: 64, offset: 5248)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2880, file: !67, line: 543, baseType: !3203, size: 64, offset: 5312)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2880, file: !67, line: 544, baseType: !3531, size: 64, offset: 5376)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2880, file: !67, line: 545, baseType: !3534, size: 64, offset: 5440)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2880, file: !67, line: 547, baseType: !530, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2880, file: !67, line: 548, baseType: !530, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2880, file: !67, line: 549, baseType: !530, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2880, file: !67, line: 550, baseType: !530, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !2876, file: !6, line: 426, baseType: !2879, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !2876, file: !6, line: 427, baseType: !173, size: 32, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !2876, file: !6, line: 428, baseType: !499, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !2876, file: !6, line: 429, baseType: !331, size: 8, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !2876, file: !6, line: 433, baseType: !331, size: 8, offset: 264)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !2876, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !2876, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !2876, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !2876, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !2876, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !2876, file: !6, line: 444, baseType: !173, size: 32, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !2876, file: !6, line: 446, baseType: !1055, size: 192, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !2876, file: !6, line: 448, baseType: !3553, size: 128, offset: 576)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3554)
!3554 = !{!3555}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3553, file: !6, line: 418, baseType: !3556, size: 128)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !1849)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !2876, file: !6, line: 449, baseType: !2857, size: 64, offset: 704)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !2876, file: !6, line: 450, baseType: !2875, size: 64, offset: 768)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !2876, file: !6, line: 452, baseType: !173, size: 32, offset: 832)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !2876, file: !6, line: 459, baseType: !173, size: 32, offset: 864)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !2876, file: !6, line: 460, baseType: !173, size: 32, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !2876, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !2858, file: !6, line: 647, baseType: !3564, size: 640, offset: 640)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3565)
!3565 = !{!3566, !3577, !3585, !3593, !3594, !3595, !3598, !3600, !3601, !3602}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3564, file: !6, line: 68, baseType: !3567, size: 72)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3567, file: !88, line: 408, baseType: !332, size: 8)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3567, file: !88, line: 409, baseType: !332, size: 8, offset: 8)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3567, file: !88, line: 411, baseType: !332, size: 8, offset: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3567, file: !88, line: 412, baseType: !332, size: 8, offset: 24)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3567, file: !88, line: 413, baseType: !139, size: 16, offset: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3567, file: !88, line: 414, baseType: !332, size: 8, offset: 48)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3567, file: !88, line: 418, baseType: !332, size: 8, offset: 56)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3567, file: !88, line: 419, baseType: !332, size: 8, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3564, file: !6, line: 69, baseType: !3578, size: 48, offset: 72)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583, !3584}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3578, file: !88, line: 690, baseType: !332, size: 8)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3578, file: !88, line: 691, baseType: !332, size: 8, offset: 8)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3578, file: !88, line: 693, baseType: !332, size: 8, offset: 16)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3578, file: !88, line: 694, baseType: !332, size: 8, offset: 24)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3578, file: !88, line: 695, baseType: !139, size: 16, offset: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3564, file: !6, line: 70, baseType: !3586, size: 64, offset: 120)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3586, file: !88, line: 678, baseType: !332, size: 8)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3586, file: !88, line: 679, baseType: !332, size: 8, offset: 8)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3586, file: !88, line: 680, baseType: !139, size: 16, offset: 16)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3586, file: !88, line: 681, baseType: !3592, size: 32, offset: 32)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !140, line: 31, baseType: !159)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3564, file: !6, line: 71, baseType: !202, size: 128, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3564, file: !6, line: 72, baseType: !144, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3564, file: !6, line: 73, baseType: !3596, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3564, file: !6, line: 75, baseType: !3599, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3564, file: !6, line: 76, baseType: !173, size: 32, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3564, file: !6, line: 77, baseType: !173, size: 32, offset: 544)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3564, file: !6, line: 78, baseType: !173, size: 32, offset: 576)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2858, file: !6, line: 649, baseType: !2880, size: 5568, offset: 1280)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !2858, file: !6, line: 651, baseType: !3605, size: 144, offset: 6848)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3606)
!3606 = !{!3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3605, file: !88, line: 290, baseType: !332, size: 8)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3605, file: !88, line: 291, baseType: !332, size: 8, offset: 8)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3605, file: !88, line: 293, baseType: !139, size: 16, offset: 16)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3605, file: !88, line: 294, baseType: !332, size: 8, offset: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3605, file: !88, line: 295, baseType: !332, size: 8, offset: 40)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3605, file: !88, line: 296, baseType: !332, size: 8, offset: 48)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3605, file: !88, line: 297, baseType: !332, size: 8, offset: 56)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3605, file: !88, line: 298, baseType: !139, size: 16, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3605, file: !88, line: 299, baseType: !139, size: 16, offset: 80)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3605, file: !88, line: 300, baseType: !139, size: 16, offset: 96)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3605, file: !88, line: 301, baseType: !332, size: 8, offset: 112)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3605, file: !88, line: 302, baseType: !332, size: 8, offset: 120)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3605, file: !88, line: 303, baseType: !332, size: 8, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3605, file: !88, line: 304, baseType: !332, size: 8, offset: 136)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !2858, file: !6, line: 652, baseType: !3622, size: 64, offset: 7040)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3624)
!3624 = !{!3625, !3633, !3641, !3653, !3666, !3675}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3623, file: !6, line: 397, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3627, file: !88, line: 845, baseType: !332, size: 8)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3627, file: !88, line: 846, baseType: !332, size: 8, offset: 8)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3627, file: !88, line: 848, baseType: !139, size: 16, offset: 16)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3627, file: !88, line: 849, baseType: !332, size: 8, offset: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3623, file: !6, line: 400, baseType: !3634, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3635, file: !88, line: 896, baseType: !332, size: 8)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3635, file: !88, line: 897, baseType: !332, size: 8, offset: 8)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3635, file: !88, line: 898, baseType: !332, size: 8, offset: 16)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3635, file: !88, line: 899, baseType: !3592, size: 32, offset: 24)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3623, file: !6, line: 401, baseType: !3642, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3643, file: !88, line: 918, baseType: !332, size: 8)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3643, file: !88, line: 919, baseType: !332, size: 8, offset: 8)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3643, file: !88, line: 920, baseType: !332, size: 8, offset: 16)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3643, file: !88, line: 921, baseType: !332, size: 8, offset: 24)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3643, file: !88, line: 923, baseType: !139, size: 16, offset: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3643, file: !88, line: 928, baseType: !332, size: 8, offset: 48)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3643, file: !88, line: 929, baseType: !332, size: 8, offset: 56)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3643, file: !88, line: 930, baseType: !139, size: 16, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3623, file: !6, line: 402, baseType: !3654, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3655, file: !88, line: 956, baseType: !332, size: 8)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3655, file: !88, line: 957, baseType: !332, size: 8, offset: 8)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3655, file: !88, line: 958, baseType: !332, size: 8, offset: 16)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3655, file: !88, line: 959, baseType: !332, size: 8, offset: 24)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3655, file: !88, line: 960, baseType: !3592, size: 32, offset: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3655, file: !88, line: 963, baseType: !139, size: 16, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3655, file: !88, line: 967, baseType: !139, size: 16, offset: 80)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3655, file: !88, line: 968, baseType: !3665, size: 32, offset: 96)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3592, size: 32, elements: !351)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3623, file: !6, line: 403, baseType: !3667, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673, !3674}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3668, file: !88, line: 941, baseType: !332, size: 8)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3668, file: !88, line: 942, baseType: !332, size: 8, offset: 8)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3668, file: !88, line: 943, baseType: !332, size: 8, offset: 16)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3668, file: !88, line: 944, baseType: !332, size: 8, offset: 24)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3668, file: !88, line: 945, baseType: !1333, size: 128, offset: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3623, file: !6, line: 404, baseType: !3676, size: 64, offset: 320)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3678)
!3678 = !{!3679, !3680, !3681}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3677, file: !88, line: 1081, baseType: !332, size: 8)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3677, file: !88, line: 1082, baseType: !332, size: 8, offset: 8)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3677, file: !88, line: 1083, baseType: !332, size: 8, offset: 16)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2858, file: !6, line: 653, baseType: !3683, size: 64, offset: 7104)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3685)
!3685 = !{!3686, !3697, !3698, !3711, !3753, !3762, !3763}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3684, file: !6, line: 375, baseType: !3687, size: 72)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3688)
!3688 = !{!3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3687, file: !88, line: 350, baseType: !332, size: 8)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3687, file: !88, line: 351, baseType: !332, size: 8, offset: 8)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3687, file: !88, line: 353, baseType: !139, size: 16, offset: 16)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3687, file: !88, line: 354, baseType: !332, size: 8, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3687, file: !88, line: 355, baseType: !332, size: 8, offset: 40)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3687, file: !88, line: 356, baseType: !332, size: 8, offset: 48)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3687, file: !88, line: 357, baseType: !332, size: 8, offset: 56)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3687, file: !88, line: 358, baseType: !332, size: 8, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3684, file: !6, line: 377, baseType: !525, size: 64, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3684, file: !6, line: 381, baseType: !3699, size: 1024, offset: 192)
!3699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3700, size: 1024, elements: !1334)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3701, file: !88, line: 784, baseType: !332, size: 8)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3701, file: !88, line: 785, baseType: !332, size: 8, offset: 8)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3701, file: !88, line: 787, baseType: !332, size: 8, offset: 16)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3701, file: !88, line: 788, baseType: !332, size: 8, offset: 24)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3701, file: !88, line: 789, baseType: !332, size: 8, offset: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3701, file: !88, line: 790, baseType: !332, size: 8, offset: 40)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3701, file: !88, line: 791, baseType: !332, size: 8, offset: 48)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3701, file: !88, line: 792, baseType: !332, size: 8, offset: 56)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3684, file: !6, line: 385, baseType: !3712, size: 2048, offset: 1216)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3713, size: 2048, elements: !1325)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3715)
!3715 = !{!3716, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3714, file: !6, line: 235, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3719)
!3719 = !{!3720, !3732, !3733, !3734, !3736}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3718, file: !6, line: 83, baseType: !3721, size: 72)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3721, file: !88, line: 390, baseType: !332, size: 8)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3721, file: !88, line: 391, baseType: !332, size: 8, offset: 8)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3721, file: !88, line: 393, baseType: !332, size: 8, offset: 16)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3721, file: !88, line: 394, baseType: !332, size: 8, offset: 24)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3721, file: !88, line: 395, baseType: !332, size: 8, offset: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3721, file: !88, line: 396, baseType: !332, size: 8, offset: 40)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3721, file: !88, line: 397, baseType: !332, size: 8, offset: 48)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3721, file: !88, line: 398, baseType: !332, size: 8, offset: 56)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3721, file: !88, line: 399, baseType: !332, size: 8, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3718, file: !6, line: 85, baseType: !173, size: 32, offset: 96)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3718, file: !6, line: 86, baseType: !3599, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3718, file: !6, line: 91, baseType: !3735, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3718, file: !6, line: 93, baseType: !525, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3714, file: !6, line: 237, baseType: !3717, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3714, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3714, file: !6, line: 243, baseType: !3700, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3714, file: !6, line: 245, baseType: !173, size: 32, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3714, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3714, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3714, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3714, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3714, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3714, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3714, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3714, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3714, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3714, file: !6, line: 257, baseType: !2880, size: 5568, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3714, file: !6, line: 258, baseType: !2879, size: 64, offset: 5952)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3714, file: !6, line: 259, baseType: !1446, size: 256, offset: 6016)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3684, file: !6, line: 389, baseType: !3754, size: 2048, offset: 3264)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3755, size: 2048, elements: !1325)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3757)
!3757 = !{!3758, !3759, !3760}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3756, file: !6, line: 323, baseType: !7, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3756, file: !6, line: 324, baseType: !3172, size: 32, offset: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3756, file: !6, line: 328, baseType: !3761, offset: 64)
!3761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3718, elements: !2168)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3684, file: !6, line: 391, baseType: !3599, size: 64, offset: 5312)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3684, file: !6, line: 392, baseType: !173, size: 32, offset: 5376)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !2858, file: !6, line: 655, baseType: !3683, size: 64, offset: 7168)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !2858, file: !6, line: 656, baseType: !3766, size: 1024, offset: 7232)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3735, size: 1024, elements: !1334)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !2858, file: !6, line: 657, baseType: !3766, size: 1024, offset: 8256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !2858, file: !6, line: 659, baseType: !3769, size: 64, offset: 9280)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !2858, file: !6, line: 661, baseType: !143, size: 16, offset: 9344)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !2858, file: !6, line: 662, baseType: !331, size: 8, offset: 9360)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2858, file: !6, line: 663, baseType: !331, size: 8, offset: 9368)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !2858, file: !6, line: 664, baseType: !331, size: 8, offset: 9376)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !2858, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !2858, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !2858, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !2858, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !2858, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !2858, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !2858, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !2858, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !2858, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !2858, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !2858, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !2858, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !2858, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !2858, file: !6, line: 679, baseType: !173, size: 32, offset: 9408)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !2858, file: !6, line: 682, baseType: !525, size: 64, offset: 9472)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2858, file: !6, line: 683, baseType: !525, size: 64, offset: 9536)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2858, file: !6, line: 684, baseType: !525, size: 64, offset: 9600)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !2858, file: !6, line: 686, baseType: !202, size: 128, offset: 9664)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !2858, file: !6, line: 688, baseType: !173, size: 32, offset: 9792)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !2858, file: !6, line: 690, baseType: !157, size: 32, offset: 9824)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !2858, file: !6, line: 691, baseType: !169, size: 32, offset: 9856)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !2858, file: !6, line: 693, baseType: !155, size: 64, offset: 9920)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !2858, file: !6, line: 696, baseType: !155, size: 64, offset: 9984)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !2858, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !2858, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !2858, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !2858, file: !6, line: 702, baseType: !3801, size: 64, offset: 10112)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !2858, file: !6, line: 703, baseType: !173, size: 32, offset: 10176)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2858, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !2858, file: !6, line: 705, baseType: !3806, size: 64, offset: 10240)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3806, file: !6, line: 506, baseType: !7, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3806, file: !6, line: 512, baseType: !173, size: 32, offset: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !2858, file: !6, line: 706, baseType: !3811, size: 128, offset: 10304)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3816}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3811, file: !6, line: 529, baseType: !7, size: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3811, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3811, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3811, file: !6, line: 551, baseType: !173, size: 32, offset: 96)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !2858, file: !6, line: 707, baseType: !3811, size: 128, offset: 10432)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !2858, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !2858, file: !6, line: 710, baseType: !890, size: 16, offset: 10592)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !2858, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_yurex", file: !3, line: 51, size: 1088, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3882, !3883, !3884, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3822, file: !3, line: 52, baseType: !2857, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3822, file: !3, line: 53, baseType: !3713, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "int_in_endpointAddr", scope: !3822, file: !3, line: 54, baseType: !332, size: 8, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !3822, file: !3, line: 55, baseType: !3828, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3874}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3829, file: !6, line: 1563, baseType: !3172, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !3829, file: !6, line: 1564, baseType: !173, size: 32, offset: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3829, file: !6, line: 1565, baseType: !144, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3829, file: !6, line: 1566, baseType: !169, size: 32, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !3829, file: !6, line: 1567, baseType: !169, size: 32, offset: 160)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3829, file: !6, line: 1570, baseType: !202, size: 128, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !3829, file: !6, line: 1572, baseType: !202, size: 128, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !3829, file: !6, line: 1573, baseType: !3839, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3840, file: !6, line: 1361, baseType: !202, size: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3840, file: !6, line: 1362, baseType: !1287, size: 128, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3840, file: !6, line: 1363, baseType: !787, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3840, file: !6, line: 1364, baseType: !169, size: 32, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3840, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3829, file: !6, line: 1574, baseType: !2857, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3829, file: !6, line: 1575, baseType: !3735, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3829, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3829, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3829, file: !6, line: 1578, baseType: !173, size: 32, offset: 704)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !3829, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !3829, file: !6, line: 1580, baseType: !144, size: 64, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !3829, file: !6, line: 1581, baseType: !950, size: 64, offset: 832)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3829, file: !6, line: 1582, baseType: !3856, size: 64, offset: 896)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !3829, file: !6, line: 1583, baseType: !173, size: 32, offset: 960)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !3829, file: !6, line: 1584, baseType: !173, size: 32, offset: 992)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !3829, file: !6, line: 1585, baseType: !157, size: 32, offset: 1024)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3829, file: !6, line: 1586, baseType: !157, size: 32, offset: 1056)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !3829, file: !6, line: 1587, baseType: !3599, size: 64, offset: 1088)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !3829, file: !6, line: 1588, baseType: !950, size: 64, offset: 1152)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !3829, file: !6, line: 1589, baseType: !173, size: 32, offset: 1216)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !3829, file: !6, line: 1590, baseType: !173, size: 32, offset: 1248)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3829, file: !6, line: 1591, baseType: !173, size: 32, offset: 1280)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !3829, file: !6, line: 1593, baseType: !173, size: 32, offset: 1312)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3829, file: !6, line: 1594, baseType: !144, size: 64, offset: 1344)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3829, file: !6, line: 1595, baseType: !3870, size: 64, offset: 1408)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !3871)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3828}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !3829, file: !6, line: 1596, baseType: !3875, offset: 1472)
!3875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3876, elements: !2168)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3876, file: !6, line: 1352, baseType: !7, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3876, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3876, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3876, file: !6, line: 1355, baseType: !173, size: 32, offset: 96)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "int_buffer", scope: !3822, file: !3, line: 56, baseType: !3599, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "cntl_urb", scope: !3822, file: !3, line: 57, baseType: !3828, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cntl_req", scope: !3822, file: !3, line: 58, baseType: !3885, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !88, line: 213, size: 64, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !3886, file: !88, line: 214, baseType: !332, size: 8)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !3886, file: !88, line: 215, baseType: !332, size: 8, offset: 8)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !3886, file: !88, line: 216, baseType: !139, size: 16, offset: 16)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !3886, file: !88, line: 217, baseType: !139, size: 16, offset: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !3886, file: !88, line: 218, baseType: !139, size: 16, offset: 48)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "cntl_buffer", scope: !3822, file: !3, line: 59, baseType: !3599, size: 64, offset: 448)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3822, file: !3, line: 61, baseType: !3172, size: 32, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "io_mutex", scope: !3822, file: !3, line: 62, baseType: !1055, size: 192, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3822, file: !3, line: 63, baseType: !155, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !3822, file: !3, line: 64, baseType: !1599, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3822, file: !3, line: 65, baseType: !1287, size: 128, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3822, file: !3, line: 67, baseType: !787, offset: 1024)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bbu", scope: !3822, file: !3, line: 68, baseType: !241, size: 64, offset: 1024)
!3901 = !{!0, !3902, !3907, !3912, !3917, !3978, !3981, !3983, !3991, !3993}
!3902 = !DIGlobalVariableExpression(var: !3903, expr: !DIExpression())
!3903 = distinct !DIGlobalVariable(name: "__exitcall_yurex_driver_exit", scope: !2, file: !3, line: 524, type: !3904, isLocal: true, isDefinition: true)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3905, line: 117, baseType: !3906)
!3905 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!3907 = !DIGlobalVariableExpression(var: !3908, expr: !DIExpression())
!3908 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file217", scope: !2, file: !3, line: 526, type: !3909, isLocal: true, isDefinition: true, align: 8)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 272, elements: !3910)
!3910 = !{!3911}
!3911 = !DISubrange(count: 34)
!3912 = !DIGlobalVariableExpression(var: !3913, expr: !DIExpression())
!3913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license218", scope: !2, file: !3, line: 526, type: !3914, isLocal: true, isDefinition: true, align: 8)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 144, elements: !3915)
!3915 = !{!3916}
!3916 = !DISubrange(count: 18)
!3917 = !DIGlobalVariableExpression(var: !3918, expr: !DIExpression())
!3918 = distinct !DIGlobalVariable(name: "yurex_driver", scope: !2, file: !3, line: 334, type: !3919, isLocal: true, isDefinition: true)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3920)
!3920 = !{!3921, !3922, !3943, !3947, !3951, !3955, !3959, !3960, !3961, !3962, !3963, !3964, !3969, !3974, !3975, !3976, !3977}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3919, file: !6, line: 1185, baseType: !499, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3919, file: !6, line: 1187, baseType: !3923, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!173, !3713, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3265, line: 121, size: 256, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3928, file: !3265, line: 123, baseType: !141, size: 16)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3928, file: !3265, line: 126, baseType: !141, size: 16, offset: 16)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3928, file: !3265, line: 127, baseType: !141, size: 16, offset: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3928, file: !3265, line: 128, baseType: !141, size: 16, offset: 48)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3928, file: !3265, line: 129, baseType: !141, size: 16, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3928, file: !3265, line: 132, baseType: !332, size: 8, offset: 80)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3928, file: !3265, line: 133, baseType: !332, size: 8, offset: 88)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3928, file: !3265, line: 134, baseType: !332, size: 8, offset: 96)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3928, file: !3265, line: 137, baseType: !332, size: 8, offset: 104)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3928, file: !3265, line: 138, baseType: !332, size: 8, offset: 112)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3928, file: !3265, line: 139, baseType: !332, size: 8, offset: 120)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3928, file: !3265, line: 142, baseType: !332, size: 8, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3928, file: !3265, line: 145, baseType: !3284, size: 64, align: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3919, file: !6, line: 1190, baseType: !3944, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3713}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3919, file: !6, line: 1192, baseType: !3948, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!173, !3713, !7, !144}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3919, file: !6, line: 1195, baseType: !3952, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!173, !3713, !3295}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3919, file: !6, line: 1196, baseType: !3956, size: 64, offset: 320)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!173, !3713}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3919, file: !6, line: 1197, baseType: !3956, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3919, file: !6, line: 1199, baseType: !3956, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3919, file: !6, line: 1200, baseType: !3956, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3919, file: !6, line: 1202, baseType: !3926, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3919, file: !6, line: 1203, baseType: !2960, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3919, file: !6, line: 1205, baseType: !3965, size: 128, offset: 704)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3966)
!3966 = !{!3967, !3968}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3965, file: !6, line: 1092, baseType: !787)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3965, file: !6, line: 1093, baseType: !202, size: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3919, file: !6, line: 1206, baseType: !3970, size: 1216, offset: 832)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3971)
!3971 = !{!3972, !3973}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3970, file: !6, line: 1114, baseType: !3253, size: 1152)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3970, file: !6, line: 1115, baseType: !173, size: 32, offset: 1152)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3919, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3919, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3919, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3919, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3978 = !DIGlobalVariableExpression(var: !3979, expr: !DIExpression())
!3979 = distinct !DIGlobalVariable(name: "__key", scope: !3980, file: !3, line: 203, type: !689, isLocal: true, isDefinition: true)
!3980 = distinct !DISubprogram(name: "yurex_probe", scope: !3, file: !3, line: 189, type: !3924, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!3981 = !DIGlobalVariableExpression(var: !3982, expr: !DIExpression())
!3982 = distinct !DIGlobalVariable(name: "__key", scope: !3980, file: !3, line: 205, type: !689, isLocal: true, isDefinition: true)
!3983 = !DIGlobalVariableExpression(var: !3984, expr: !DIExpression())
!3984 = distinct !DIGlobalVariable(name: "yurex_class", scope: !2, file: !3, line: 118, type: !3985, isLocal: true, isDefinition: true)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_class_driver", file: !6, line: 1274, size: 256, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3985, file: !6, line: 1275, baseType: !525, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3985, file: !6, line: 1276, baseType: !3508, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3985, file: !6, line: 1277, baseType: !1504, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "minor_base", scope: !3985, file: !6, line: 1278, baseType: !173, size: 32, offset: 192)
!3991 = !DIGlobalVariableExpression(var: !3992, expr: !DIExpression())
!3992 = distinct !DIGlobalVariable(name: "yurex_fops", scope: !2, file: !3, line: 514, type: !1505, isLocal: true, isDefinition: true)
!3993 = !DIGlobalVariableExpression(var: !3994, expr: !DIExpression())
!3994 = distinct !DIGlobalVariable(name: "yurex_table", scope: !2, file: !3, line: 38, type: !3995, isLocal: true, isDefinition: true)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3928, size: 512, elements: !1849)
!3996 = !{!"rsp"}
!3997 = !{i32 7, !"Dwarf Version", i32 4}
!3998 = !{i32 2, !"Debug Info Version", i32 3}
!3999 = !{i32 1, !"wchar_size", i32 2}
!4000 = !{i32 1, !"Code Model", i32 2}
!4001 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4002 = distinct !DISubprogram(name: "yurex_driver_init", scope: !3, file: !3, line: 524, type: !4003, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!173}
!4005 = !DILocation(line: 524, column: 1, scope: !4002)
!4006 = distinct !DISubprogram(name: "yurex_driver_exit", scope: !3, file: !3, line: 524, type: !2450, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4007 = !DILocation(line: 524, column: 1, scope: !4006)
!4008 = !DILocalVariable(name: "s", arg: 1, scope: !4009, file: !119, line: 445, type: !965)
!4009 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !119, file: !119, line: 445, type: !4010, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!144, !965, !137, !619}
!4012 = !DILocation(line: 445, column: 72, scope: !4009, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 552, column: 10, scope: !4014, inlinedAt: !4019)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !119, line: 540, column: 34)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !119, line: 540, column: 6)
!4016 = distinct !DISubprogram(name: "kmalloc", scope: !119, file: !119, line: 538, type: !4017, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!144, !619, !137}
!4019 = distinct !DILocation(line: 227, column: 18, scope: !3980)
!4020 = !DILocalVariable(name: "flags", arg: 2, scope: !4009, file: !119, line: 446, type: !137)
!4021 = !DILocation(line: 446, column: 9, scope: !4009, inlinedAt: !4013)
!4022 = !DILocalVariable(name: "size", arg: 3, scope: !4009, file: !119, line: 446, type: !619)
!4023 = !DILocation(line: 446, column: 23, scope: !4009, inlinedAt: !4013)
!4024 = !DILocalVariable(name: "ret", scope: !4009, file: !119, line: 448, type: !144)
!4025 = !DILocation(line: 448, column: 8, scope: !4009, inlinedAt: !4013)
!4026 = !DILocalVariable(name: "flags", arg: 1, scope: !4027, file: !119, line: 318, type: !137)
!4027 = distinct !DISubprogram(name: "kmalloc_type", scope: !119, file: !119, line: 318, type: !4028, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!118, !137}
!4030 = !DILocation(line: 318, column: 67, scope: !4027, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 553, column: 20, scope: !4014, inlinedAt: !4019)
!4032 = !DILocalVariable(name: "size", arg: 1, scope: !4033, file: !119, line: 346, type: !619)
!4033 = distinct !DISubprogram(name: "kmalloc_index", scope: !119, file: !119, line: 346, type: !4034, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!7, !619}
!4036 = !DILocation(line: 346, column: 58, scope: !4033, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 547, column: 11, scope: !4014, inlinedAt: !4019)
!4038 = !DILocalVariable(name: "size", arg: 1, scope: !4039, file: !119, line: 472, type: !619)
!4039 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !119, file: !119, line: 472, type: !4040, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!144, !619, !137, !7}
!4042 = !DILocation(line: 472, column: 28, scope: !4039, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 481, column: 9, scope: !4044, inlinedAt: !4045)
!4044 = distinct !DISubprogram(name: "kmalloc_large", scope: !119, file: !119, line: 478, type: !4017, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4045 = distinct !DILocation(line: 545, column: 11, scope: !4046, inlinedAt: !4019)
!4046 = distinct !DILexicalBlock(scope: !4014, file: !119, line: 544, column: 7)
!4047 = !DILocalVariable(name: "flags", arg: 2, scope: !4039, file: !119, line: 472, type: !137)
!4048 = !DILocation(line: 472, column: 40, scope: !4039, inlinedAt: !4043)
!4049 = !DILocalVariable(name: "order", arg: 3, scope: !4039, file: !119, line: 472, type: !7)
!4050 = !DILocation(line: 472, column: 60, scope: !4039, inlinedAt: !4043)
!4051 = !DILocalVariable(name: "size", arg: 1, scope: !4044, file: !119, line: 478, type: !619)
!4052 = !DILocation(line: 478, column: 51, scope: !4044, inlinedAt: !4045)
!4053 = !DILocalVariable(name: "flags", arg: 2, scope: !4044, file: !119, line: 478, type: !137)
!4054 = !DILocation(line: 478, column: 63, scope: !4044, inlinedAt: !4045)
!4055 = !DILocalVariable(name: "order", scope: !4044, file: !119, line: 480, type: !7)
!4056 = !DILocation(line: 480, column: 15, scope: !4044, inlinedAt: !4045)
!4057 = !DILocalVariable(name: "size", arg: 1, scope: !4016, file: !119, line: 538, type: !619)
!4058 = !DILocation(line: 538, column: 45, scope: !4016, inlinedAt: !4019)
!4059 = !DILocalVariable(name: "flags", arg: 2, scope: !4016, file: !119, line: 538, type: !137)
!4060 = !DILocation(line: 538, column: 57, scope: !4016, inlinedAt: !4019)
!4061 = !DILocalVariable(name: "index", scope: !4014, file: !119, line: 542, type: !7)
!4062 = !DILocation(line: 542, column: 16, scope: !4014, inlinedAt: !4019)
!4063 = !DILocalVariable(name: "lock", arg: 1, scope: !4064, file: !4065, line: 327, type: !4069)
!4064 = distinct !DISubprogram(name: "spinlock_check", scope: !4065, file: !4065, line: 327, type: !4066, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4065 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!4068, !4069}
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!4070 = !DILocation(line: 327, column: 67, scope: !4064, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 204, column: 2, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 204, column: 2)
!4073 = !DILocalVariable(name: "pscr_ret__", scope: !4074, file: !4075, line: 15, type: !146)
!4074 = distinct !DILexicalBlock(scope: !4076, file: !4075, line: 15, column: 9)
!4075 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!4076 = distinct !DISubprogram(name: "get_current", scope: !4075, file: !4075, line: 13, type: !4077, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!146}
!4079 = !DILocation(line: 15, column: 9, scope: !4074, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 195, column: 2, scope: !3980)
!4081 = !DILocalVariable(name: "__vpp_verify", scope: !4082, file: !4075, line: 15, type: !3013)
!4082 = distinct !DILexicalBlock(scope: !4074, file: !4075, line: 15, column: 9)
!4083 = !DILocation(line: 15, column: 9, scope: !4082, inlinedAt: !4080)
!4084 = !DILocalVariable(name: "pfo_val__", scope: !4085, file: !4075, line: 15, type: !209)
!4085 = distinct !DILexicalBlock(scope: !4074, file: !4075, line: 15, column: 9)
!4086 = !DILocation(line: 15, column: 9, scope: !4085, inlinedAt: !4080)
!4087 = !DILocalVariable(name: "interface", arg: 1, scope: !3980, file: !3, line: 189, type: !3713)
!4088 = !DILocation(line: 189, column: 46, scope: !3980)
!4089 = !DILocalVariable(name: "id", arg: 2, scope: !3980, file: !3, line: 189, type: !3926)
!4090 = !DILocation(line: 189, column: 85, scope: !3980)
!4091 = !DILocalVariable(name: "dev", scope: !3980, file: !3, line: 191, type: !3821)
!4092 = !DILocation(line: 191, column: 20, scope: !3980)
!4093 = !DILocalVariable(name: "iface_desc", scope: !3980, file: !3, line: 192, type: !3717)
!4094 = !DILocation(line: 192, column: 29, scope: !3980)
!4095 = !DILocalVariable(name: "endpoint", scope: !3980, file: !3, line: 193, type: !4096)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!4097 = !DILocation(line: 193, column: 34, scope: !3980)
!4098 = !DILocalVariable(name: "retval", scope: !3980, file: !3, line: 194, type: !173)
!4099 = !DILocation(line: 194, column: 6, scope: !3980)
!4100 = !DILocalVariable(name: "wait", scope: !3980, file: !3, line: 195, type: !4101)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1288, line: 29, size: 320, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4111}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4101, file: !1288, line: 30, baseType: !7, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4101, file: !1288, line: 31, baseType: !144, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4101, file: !1288, line: 32, baseType: !4106, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1288, line: 16, baseType: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!173, !4110, !7, !173, !144}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4101, file: !1288, line: 33, baseType: !202, size: 128, offset: 192)
!4112 = !DILocation(line: 195, column: 2, scope: !3980)
!4113 = !{i32 -2146678503}
!4114 = !DILocalVariable(name: "res", scope: !3980, file: !3, line: 196, type: !173)
!4115 = !DILocation(line: 196, column: 6, scope: !3980)
!4116 = !DILocation(line: 199, column: 8, scope: !3980)
!4117 = !DILocation(line: 199, column: 6, scope: !3980)
!4118 = !DILocation(line: 200, column: 7, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 200, column: 6)
!4120 = !DILocation(line: 200, column: 6, scope: !3980)
!4121 = !DILocation(line: 201, column: 3, scope: !4119)
!4122 = !DILocation(line: 202, column: 13, scope: !3980)
!4123 = !DILocation(line: 202, column: 18, scope: !3980)
!4124 = !DILocation(line: 202, column: 2, scope: !3980)
!4125 = !DILocation(line: 203, column: 2, scope: !3980)
!4126 = !DILocation(line: 203, column: 2, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 203, column: 2)
!4128 = !DILocation(line: 204, column: 2, scope: !3980)
!4129 = !DILocation(line: 204, column: 2, scope: !4072)
!4130 = !DILocation(line: 329, column: 10, scope: !4064, inlinedAt: !4071)
!4131 = !DILocation(line: 329, column: 16, scope: !4064, inlinedAt: !4071)
!4132 = !DILocation(line: 205, column: 2, scope: !3980)
!4133 = !DILocation(line: 205, column: 2, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 205, column: 2)
!4135 = !DILocation(line: 207, column: 46, scope: !3980)
!4136 = !DILocation(line: 207, column: 26, scope: !3980)
!4137 = !DILocation(line: 207, column: 14, scope: !3980)
!4138 = !DILocation(line: 207, column: 2, scope: !3980)
!4139 = !DILocation(line: 207, column: 7, scope: !3980)
!4140 = !DILocation(line: 207, column: 12, scope: !3980)
!4141 = !DILocation(line: 208, column: 32, scope: !3980)
!4142 = !DILocation(line: 208, column: 19, scope: !3980)
!4143 = !DILocation(line: 208, column: 2, scope: !3980)
!4144 = !DILocation(line: 208, column: 7, scope: !3980)
!4145 = !DILocation(line: 208, column: 17, scope: !3980)
!4146 = !DILocation(line: 211, column: 15, scope: !3980)
!4147 = !DILocation(line: 211, column: 26, scope: !3980)
!4148 = !DILocation(line: 211, column: 13, scope: !3980)
!4149 = !DILocation(line: 212, column: 33, scope: !3980)
!4150 = !DILocation(line: 212, column: 8, scope: !3980)
!4151 = !DILocation(line: 212, column: 6, scope: !3980)
!4152 = !DILocation(line: 213, column: 6, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 213, column: 6)
!4154 = !DILocation(line: 213, column: 6, scope: !3980)
!4155 = !DILocation(line: 214, column: 3, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 213, column: 11)
!4157 = !DILocation(line: 215, column: 12, scope: !4156)
!4158 = !DILocation(line: 215, column: 10, scope: !4156)
!4159 = !DILocation(line: 216, column: 3, scope: !4156)
!4160 = !DILocation(line: 219, column: 29, scope: !3980)
!4161 = !DILocation(line: 219, column: 39, scope: !3980)
!4162 = !DILocation(line: 219, column: 2, scope: !3980)
!4163 = !DILocation(line: 219, column: 7, scope: !3980)
!4164 = !DILocation(line: 219, column: 27, scope: !3980)
!4165 = !DILocation(line: 222, column: 18, scope: !3980)
!4166 = !DILocation(line: 222, column: 2, scope: !3980)
!4167 = !DILocation(line: 222, column: 7, scope: !3980)
!4168 = !DILocation(line: 222, column: 16, scope: !3980)
!4169 = !DILocation(line: 223, column: 7, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 223, column: 6)
!4171 = !DILocation(line: 223, column: 12, scope: !4170)
!4172 = !DILocation(line: 223, column: 6, scope: !3980)
!4173 = !DILocation(line: 224, column: 3, scope: !4170)
!4174 = !DILocation(line: 540, column: 27, scope: !4015, inlinedAt: !4019)
!4175 = !DILocation(line: 540, column: 6, scope: !4015, inlinedAt: !4019)
!4176 = !DILocation(line: 540, column: 6, scope: !4016, inlinedAt: !4019)
!4177 = !DILocation(line: 544, column: 7, scope: !4046, inlinedAt: !4019)
!4178 = !DILocation(line: 544, column: 12, scope: !4046, inlinedAt: !4019)
!4179 = !DILocation(line: 544, column: 7, scope: !4014, inlinedAt: !4019)
!4180 = !DILocation(line: 545, column: 25, scope: !4046, inlinedAt: !4019)
!4181 = !DILocation(line: 545, column: 31, scope: !4046, inlinedAt: !4019)
!4182 = !DILocation(line: 480, column: 33, scope: !4044, inlinedAt: !4045)
!4183 = !DILocation(line: 480, column: 23, scope: !4044, inlinedAt: !4045)
!4184 = !DILocation(line: 481, column: 29, scope: !4044, inlinedAt: !4045)
!4185 = !DILocation(line: 481, column: 35, scope: !4044, inlinedAt: !4045)
!4186 = !DILocation(line: 481, column: 42, scope: !4044, inlinedAt: !4045)
!4187 = !DILocation(line: 474, column: 23, scope: !4039, inlinedAt: !4043)
!4188 = !DILocation(line: 474, column: 29, scope: !4039, inlinedAt: !4043)
!4189 = !DILocation(line: 474, column: 36, scope: !4039, inlinedAt: !4043)
!4190 = !DILocation(line: 474, column: 9, scope: !4039, inlinedAt: !4043)
!4191 = !DILocation(line: 545, column: 4, scope: !4046, inlinedAt: !4019)
!4192 = !DILocation(line: 547, column: 25, scope: !4014, inlinedAt: !4019)
!4193 = !DILocation(line: 348, column: 7, scope: !4194, inlinedAt: !4037)
!4194 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 348, column: 6)
!4195 = !DILocation(line: 348, column: 6, scope: !4033, inlinedAt: !4037)
!4196 = !DILocation(line: 349, column: 3, scope: !4194, inlinedAt: !4037)
!4197 = !DILocation(line: 351, column: 6, scope: !4198, inlinedAt: !4037)
!4198 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 351, column: 6)
!4199 = !DILocation(line: 351, column: 11, scope: !4198, inlinedAt: !4037)
!4200 = !DILocation(line: 351, column: 6, scope: !4033, inlinedAt: !4037)
!4201 = !DILocation(line: 352, column: 3, scope: !4198, inlinedAt: !4037)
!4202 = !DILocation(line: 354, column: 32, scope: !4203, inlinedAt: !4037)
!4203 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 354, column: 6)
!4204 = !DILocation(line: 354, column: 37, scope: !4203, inlinedAt: !4037)
!4205 = !DILocation(line: 354, column: 42, scope: !4203, inlinedAt: !4037)
!4206 = !DILocation(line: 354, column: 45, scope: !4203, inlinedAt: !4037)
!4207 = !DILocation(line: 354, column: 50, scope: !4203, inlinedAt: !4037)
!4208 = !DILocation(line: 354, column: 6, scope: !4033, inlinedAt: !4037)
!4209 = !DILocation(line: 355, column: 3, scope: !4203, inlinedAt: !4037)
!4210 = !DILocation(line: 356, column: 32, scope: !4211, inlinedAt: !4037)
!4211 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 356, column: 6)
!4212 = !DILocation(line: 356, column: 37, scope: !4211, inlinedAt: !4037)
!4213 = !DILocation(line: 356, column: 43, scope: !4211, inlinedAt: !4037)
!4214 = !DILocation(line: 356, column: 46, scope: !4211, inlinedAt: !4037)
!4215 = !DILocation(line: 356, column: 51, scope: !4211, inlinedAt: !4037)
!4216 = !DILocation(line: 356, column: 6, scope: !4033, inlinedAt: !4037)
!4217 = !DILocation(line: 357, column: 3, scope: !4211, inlinedAt: !4037)
!4218 = !DILocation(line: 358, column: 6, scope: !4219, inlinedAt: !4037)
!4219 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 358, column: 6)
!4220 = !DILocation(line: 358, column: 11, scope: !4219, inlinedAt: !4037)
!4221 = !DILocation(line: 358, column: 6, scope: !4033, inlinedAt: !4037)
!4222 = !DILocation(line: 358, column: 26, scope: !4219, inlinedAt: !4037)
!4223 = !DILocation(line: 359, column: 6, scope: !4224, inlinedAt: !4037)
!4224 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 359, column: 6)
!4225 = !DILocation(line: 359, column: 11, scope: !4224, inlinedAt: !4037)
!4226 = !DILocation(line: 359, column: 6, scope: !4033, inlinedAt: !4037)
!4227 = !DILocation(line: 359, column: 26, scope: !4224, inlinedAt: !4037)
!4228 = !DILocation(line: 360, column: 6, scope: !4229, inlinedAt: !4037)
!4229 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 360, column: 6)
!4230 = !DILocation(line: 360, column: 11, scope: !4229, inlinedAt: !4037)
!4231 = !DILocation(line: 360, column: 6, scope: !4033, inlinedAt: !4037)
!4232 = !DILocation(line: 360, column: 26, scope: !4229, inlinedAt: !4037)
!4233 = !DILocation(line: 361, column: 6, scope: !4234, inlinedAt: !4037)
!4234 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 361, column: 6)
!4235 = !DILocation(line: 361, column: 11, scope: !4234, inlinedAt: !4037)
!4236 = !DILocation(line: 361, column: 6, scope: !4033, inlinedAt: !4037)
!4237 = !DILocation(line: 361, column: 26, scope: !4234, inlinedAt: !4037)
!4238 = !DILocation(line: 362, column: 6, scope: !4239, inlinedAt: !4037)
!4239 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 362, column: 6)
!4240 = !DILocation(line: 362, column: 11, scope: !4239, inlinedAt: !4037)
!4241 = !DILocation(line: 362, column: 6, scope: !4033, inlinedAt: !4037)
!4242 = !DILocation(line: 362, column: 26, scope: !4239, inlinedAt: !4037)
!4243 = !DILocation(line: 363, column: 6, scope: !4244, inlinedAt: !4037)
!4244 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 363, column: 6)
!4245 = !DILocation(line: 363, column: 11, scope: !4244, inlinedAt: !4037)
!4246 = !DILocation(line: 363, column: 6, scope: !4033, inlinedAt: !4037)
!4247 = !DILocation(line: 363, column: 26, scope: !4244, inlinedAt: !4037)
!4248 = !DILocation(line: 364, column: 6, scope: !4249, inlinedAt: !4037)
!4249 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 364, column: 6)
!4250 = !DILocation(line: 364, column: 11, scope: !4249, inlinedAt: !4037)
!4251 = !DILocation(line: 364, column: 6, scope: !4033, inlinedAt: !4037)
!4252 = !DILocation(line: 364, column: 26, scope: !4249, inlinedAt: !4037)
!4253 = !DILocation(line: 365, column: 6, scope: !4254, inlinedAt: !4037)
!4254 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 365, column: 6)
!4255 = !DILocation(line: 365, column: 11, scope: !4254, inlinedAt: !4037)
!4256 = !DILocation(line: 365, column: 6, scope: !4033, inlinedAt: !4037)
!4257 = !DILocation(line: 365, column: 26, scope: !4254, inlinedAt: !4037)
!4258 = !DILocation(line: 366, column: 6, scope: !4259, inlinedAt: !4037)
!4259 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 366, column: 6)
!4260 = !DILocation(line: 366, column: 11, scope: !4259, inlinedAt: !4037)
!4261 = !DILocation(line: 366, column: 6, scope: !4033, inlinedAt: !4037)
!4262 = !DILocation(line: 366, column: 26, scope: !4259, inlinedAt: !4037)
!4263 = !DILocation(line: 367, column: 6, scope: !4264, inlinedAt: !4037)
!4264 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 367, column: 6)
!4265 = !DILocation(line: 367, column: 11, scope: !4264, inlinedAt: !4037)
!4266 = !DILocation(line: 367, column: 6, scope: !4033, inlinedAt: !4037)
!4267 = !DILocation(line: 367, column: 26, scope: !4264, inlinedAt: !4037)
!4268 = !DILocation(line: 368, column: 6, scope: !4269, inlinedAt: !4037)
!4269 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 368, column: 6)
!4270 = !DILocation(line: 368, column: 11, scope: !4269, inlinedAt: !4037)
!4271 = !DILocation(line: 368, column: 6, scope: !4033, inlinedAt: !4037)
!4272 = !DILocation(line: 368, column: 26, scope: !4269, inlinedAt: !4037)
!4273 = !DILocation(line: 369, column: 6, scope: !4274, inlinedAt: !4037)
!4274 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 369, column: 6)
!4275 = !DILocation(line: 369, column: 11, scope: !4274, inlinedAt: !4037)
!4276 = !DILocation(line: 369, column: 6, scope: !4033, inlinedAt: !4037)
!4277 = !DILocation(line: 369, column: 26, scope: !4274, inlinedAt: !4037)
!4278 = !DILocation(line: 370, column: 6, scope: !4279, inlinedAt: !4037)
!4279 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 370, column: 6)
!4280 = !DILocation(line: 370, column: 11, scope: !4279, inlinedAt: !4037)
!4281 = !DILocation(line: 370, column: 6, scope: !4033, inlinedAt: !4037)
!4282 = !DILocation(line: 370, column: 26, scope: !4279, inlinedAt: !4037)
!4283 = !DILocation(line: 371, column: 6, scope: !4284, inlinedAt: !4037)
!4284 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 371, column: 6)
!4285 = !DILocation(line: 371, column: 11, scope: !4284, inlinedAt: !4037)
!4286 = !DILocation(line: 371, column: 6, scope: !4033, inlinedAt: !4037)
!4287 = !DILocation(line: 371, column: 26, scope: !4284, inlinedAt: !4037)
!4288 = !DILocation(line: 372, column: 6, scope: !4289, inlinedAt: !4037)
!4289 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 372, column: 6)
!4290 = !DILocation(line: 372, column: 11, scope: !4289, inlinedAt: !4037)
!4291 = !DILocation(line: 372, column: 6, scope: !4033, inlinedAt: !4037)
!4292 = !DILocation(line: 372, column: 26, scope: !4289, inlinedAt: !4037)
!4293 = !DILocation(line: 373, column: 6, scope: !4294, inlinedAt: !4037)
!4294 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 373, column: 6)
!4295 = !DILocation(line: 373, column: 11, scope: !4294, inlinedAt: !4037)
!4296 = !DILocation(line: 373, column: 6, scope: !4033, inlinedAt: !4037)
!4297 = !DILocation(line: 373, column: 26, scope: !4294, inlinedAt: !4037)
!4298 = !DILocation(line: 374, column: 6, scope: !4299, inlinedAt: !4037)
!4299 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 374, column: 6)
!4300 = !DILocation(line: 374, column: 11, scope: !4299, inlinedAt: !4037)
!4301 = !DILocation(line: 374, column: 6, scope: !4033, inlinedAt: !4037)
!4302 = !DILocation(line: 374, column: 26, scope: !4299, inlinedAt: !4037)
!4303 = !DILocation(line: 375, column: 6, scope: !4304, inlinedAt: !4037)
!4304 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 375, column: 6)
!4305 = !DILocation(line: 375, column: 11, scope: !4304, inlinedAt: !4037)
!4306 = !DILocation(line: 375, column: 6, scope: !4033, inlinedAt: !4037)
!4307 = !DILocation(line: 375, column: 27, scope: !4304, inlinedAt: !4037)
!4308 = !DILocation(line: 376, column: 6, scope: !4309, inlinedAt: !4037)
!4309 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 376, column: 6)
!4310 = !DILocation(line: 376, column: 11, scope: !4309, inlinedAt: !4037)
!4311 = !DILocation(line: 376, column: 6, scope: !4033, inlinedAt: !4037)
!4312 = !DILocation(line: 376, column: 32, scope: !4309, inlinedAt: !4037)
!4313 = !DILocation(line: 377, column: 6, scope: !4314, inlinedAt: !4037)
!4314 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 377, column: 6)
!4315 = !DILocation(line: 377, column: 11, scope: !4314, inlinedAt: !4037)
!4316 = !DILocation(line: 377, column: 6, scope: !4033, inlinedAt: !4037)
!4317 = !DILocation(line: 377, column: 32, scope: !4314, inlinedAt: !4037)
!4318 = !DILocation(line: 378, column: 6, scope: !4319, inlinedAt: !4037)
!4319 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 378, column: 6)
!4320 = !DILocation(line: 378, column: 11, scope: !4319, inlinedAt: !4037)
!4321 = !DILocation(line: 378, column: 6, scope: !4033, inlinedAt: !4037)
!4322 = !DILocation(line: 378, column: 32, scope: !4319, inlinedAt: !4037)
!4323 = !DILocation(line: 379, column: 6, scope: !4324, inlinedAt: !4037)
!4324 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 379, column: 6)
!4325 = !DILocation(line: 379, column: 11, scope: !4324, inlinedAt: !4037)
!4326 = !DILocation(line: 379, column: 6, scope: !4033, inlinedAt: !4037)
!4327 = !DILocation(line: 379, column: 33, scope: !4324, inlinedAt: !4037)
!4328 = !DILocation(line: 380, column: 6, scope: !4329, inlinedAt: !4037)
!4329 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 380, column: 6)
!4330 = !DILocation(line: 380, column: 11, scope: !4329, inlinedAt: !4037)
!4331 = !DILocation(line: 380, column: 6, scope: !4033, inlinedAt: !4037)
!4332 = !DILocation(line: 380, column: 33, scope: !4329, inlinedAt: !4037)
!4333 = !DILocation(line: 381, column: 6, scope: !4334, inlinedAt: !4037)
!4334 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 381, column: 6)
!4335 = !DILocation(line: 381, column: 11, scope: !4334, inlinedAt: !4037)
!4336 = !DILocation(line: 381, column: 6, scope: !4033, inlinedAt: !4037)
!4337 = !DILocation(line: 381, column: 33, scope: !4334, inlinedAt: !4037)
!4338 = !DILocation(line: 382, column: 2, scope: !4339, inlinedAt: !4037)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !119, line: 382, column: 2)
!4340 = distinct !DILexicalBlock(scope: !4033, file: !119, line: 382, column: 2)
!4341 = !{i32 -2144642318, i32 -2144642289, i32 -2144642243, i32 -2144642185, i32 -2144642131, i32 -2144642077, i32 -2144642022, i32 -2144641991}
!4342 = !DILocation(line: 382, column: 2, scope: !4343, inlinedAt: !4037)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !119, line: 382, column: 2)
!4344 = distinct !DILexicalBlock(scope: !4340, file: !119, line: 382, column: 2)
!4345 = !{i32 -2144641548, i32 -2144641541, i32 -2144641487, i32 -2144641456, i32 -2144641426}
!4346 = !DILocation(line: 382, column: 2, scope: !4344, inlinedAt: !4037)
!4347 = !DILocation(line: 386, column: 1, scope: !4033, inlinedAt: !4037)
!4348 = !DILocation(line: 547, column: 9, scope: !4014, inlinedAt: !4019)
!4349 = !DILocation(line: 549, column: 8, scope: !4350, inlinedAt: !4019)
!4350 = distinct !DILexicalBlock(scope: !4014, file: !119, line: 549, column: 7)
!4351 = !DILocation(line: 549, column: 7, scope: !4014, inlinedAt: !4019)
!4352 = !DILocation(line: 550, column: 4, scope: !4350, inlinedAt: !4019)
!4353 = !DILocation(line: 553, column: 33, scope: !4014, inlinedAt: !4019)
!4354 = !DILocation(line: 325, column: 6, scope: !4355, inlinedAt: !4031)
!4355 = distinct !DILexicalBlock(scope: !4027, file: !119, line: 325, column: 6)
!4356 = !DILocation(line: 325, column: 6, scope: !4027, inlinedAt: !4031)
!4357 = !DILocation(line: 326, column: 3, scope: !4355, inlinedAt: !4031)
!4358 = !DILocation(line: 332, column: 9, scope: !4027, inlinedAt: !4031)
!4359 = !DILocation(line: 332, column: 15, scope: !4027, inlinedAt: !4031)
!4360 = !DILocation(line: 332, column: 2, scope: !4027, inlinedAt: !4031)
!4361 = !DILocation(line: 336, column: 1, scope: !4027, inlinedAt: !4031)
!4362 = !DILocation(line: 553, column: 5, scope: !4014, inlinedAt: !4019)
!4363 = !DILocation(line: 553, column: 41, scope: !4014, inlinedAt: !4019)
!4364 = !DILocation(line: 554, column: 5, scope: !4014, inlinedAt: !4019)
!4365 = !DILocation(line: 554, column: 12, scope: !4014, inlinedAt: !4019)
!4366 = !DILocation(line: 448, column: 31, scope: !4009, inlinedAt: !4013)
!4367 = !DILocation(line: 448, column: 34, scope: !4009, inlinedAt: !4013)
!4368 = !DILocation(line: 448, column: 14, scope: !4009, inlinedAt: !4013)
!4369 = !DILocation(line: 450, column: 22, scope: !4009, inlinedAt: !4013)
!4370 = !DILocation(line: 450, column: 25, scope: !4009, inlinedAt: !4013)
!4371 = !DILocation(line: 450, column: 30, scope: !4009, inlinedAt: !4013)
!4372 = !DILocation(line: 450, column: 36, scope: !4009, inlinedAt: !4013)
!4373 = !DILocation(line: 450, column: 8, scope: !4009, inlinedAt: !4013)
!4374 = !DILocation(line: 450, column: 6, scope: !4009, inlinedAt: !4013)
!4375 = !DILocation(line: 451, column: 9, scope: !4009, inlinedAt: !4013)
!4376 = !DILocation(line: 552, column: 3, scope: !4014, inlinedAt: !4019)
!4377 = !DILocation(line: 557, column: 19, scope: !4016, inlinedAt: !4019)
!4378 = !DILocation(line: 557, column: 25, scope: !4016, inlinedAt: !4019)
!4379 = !DILocation(line: 557, column: 9, scope: !4016, inlinedAt: !4019)
!4380 = !DILocation(line: 557, column: 2, scope: !4016, inlinedAt: !4019)
!4381 = !DILocation(line: 558, column: 1, scope: !4016, inlinedAt: !4019)
!4382 = !DILocation(line: 227, column: 18, scope: !3980)
!4383 = !DILocation(line: 227, column: 2, scope: !3980)
!4384 = !DILocation(line: 227, column: 7, scope: !3980)
!4385 = !DILocation(line: 227, column: 16, scope: !3980)
!4386 = !DILocation(line: 228, column: 7, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 228, column: 6)
!4388 = !DILocation(line: 228, column: 12, scope: !4387)
!4389 = !DILocation(line: 228, column: 6, scope: !3980)
!4390 = !DILocation(line: 229, column: 3, scope: !4387)
!4391 = !DILocation(line: 232, column: 40, scope: !3980)
!4392 = !DILocation(line: 232, column: 45, scope: !3980)
!4393 = !DILocation(line: 234, column: 13, scope: !3980)
!4394 = !DILocation(line: 234, column: 18, scope: !3980)
!4395 = !DILocation(line: 234, column: 28, scope: !3980)
!4396 = !DILocation(line: 232, column: 21, scope: !3980)
!4397 = !DILocation(line: 232, column: 2, scope: !3980)
!4398 = !DILocation(line: 232, column: 7, scope: !3980)
!4399 = !DILocation(line: 232, column: 19, scope: !3980)
!4400 = !DILocation(line: 235, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 235, column: 6)
!4402 = !DILocation(line: 235, column: 12, scope: !4401)
!4403 = !DILocation(line: 235, column: 6, scope: !3980)
!4404 = !DILocation(line: 236, column: 3, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 235, column: 25)
!4406 = !DILocation(line: 237, column: 3, scope: !4405)
!4407 = !DILocation(line: 241, column: 2, scope: !3980)
!4408 = !DILocation(line: 241, column: 7, scope: !3980)
!4409 = !DILocation(line: 241, column: 17, scope: !3980)
!4410 = !DILocation(line: 241, column: 30, scope: !3980)
!4411 = !DILocation(line: 243, column: 2, scope: !3980)
!4412 = !DILocation(line: 243, column: 7, scope: !3980)
!4413 = !DILocation(line: 243, column: 17, scope: !3980)
!4414 = !DILocation(line: 243, column: 26, scope: !3980)
!4415 = !DILocation(line: 244, column: 2, scope: !3980)
!4416 = !DILocation(line: 244, column: 7, scope: !3980)
!4417 = !DILocation(line: 244, column: 17, scope: !3980)
!4418 = !DILocation(line: 244, column: 24, scope: !3980)
!4419 = !DILocation(line: 245, column: 26, scope: !3980)
!4420 = !DILocation(line: 245, column: 2, scope: !3980)
!4421 = !DILocation(line: 245, column: 7, scope: !3980)
!4422 = !DILocation(line: 245, column: 17, scope: !3980)
!4423 = !DILocation(line: 245, column: 24, scope: !3980)
!4424 = !DILocation(line: 246, column: 2, scope: !3980)
!4425 = !DILocation(line: 246, column: 7, scope: !3980)
!4426 = !DILocation(line: 246, column: 17, scope: !3980)
!4427 = !DILocation(line: 246, column: 25, scope: !3980)
!4428 = !DILocation(line: 248, column: 23, scope: !3980)
!4429 = !DILocation(line: 248, column: 28, scope: !3980)
!4430 = !DILocation(line: 248, column: 38, scope: !3980)
!4431 = !DILocation(line: 248, column: 43, scope: !3980)
!4432 = !DILocation(line: 249, column: 9, scope: !3980)
!4433 = !DILocation(line: 250, column: 17, scope: !3980)
!4434 = !DILocation(line: 250, column: 22, scope: !3980)
!4435 = !DILocation(line: 250, column: 9, scope: !3980)
!4436 = !DILocation(line: 250, column: 32, scope: !3980)
!4437 = !DILocation(line: 250, column: 37, scope: !3980)
!4438 = !DILocation(line: 251, column: 49, scope: !3980)
!4439 = !DILocation(line: 248, column: 2, scope: !3980)
!4440 = !DILocation(line: 252, column: 2, scope: !3980)
!4441 = !DILocation(line: 252, column: 7, scope: !3980)
!4442 = !DILocation(line: 252, column: 17, scope: !3980)
!4443 = !DILocation(line: 252, column: 32, scope: !3980)
!4444 = !DILocation(line: 256, column: 13, scope: !3980)
!4445 = !DILocation(line: 256, column: 2, scope: !3980)
!4446 = !DILocation(line: 256, column: 7, scope: !3980)
!4447 = !DILocation(line: 256, column: 11, scope: !3980)
!4448 = !DILocation(line: 257, column: 7, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 257, column: 6)
!4450 = !DILocation(line: 257, column: 12, scope: !4449)
!4451 = !DILocation(line: 257, column: 6, scope: !3980)
!4452 = !DILocation(line: 258, column: 3, scope: !4449)
!4453 = !DILocation(line: 261, column: 39, scope: !3980)
!4454 = !DILocation(line: 261, column: 44, scope: !3980)
!4455 = !DILocation(line: 262, column: 19, scope: !3980)
!4456 = !DILocation(line: 262, column: 24, scope: !3980)
!4457 = !DILocation(line: 262, column: 29, scope: !3980)
!4458 = !DILocation(line: 261, column: 20, scope: !3980)
!4459 = !DILocation(line: 261, column: 2, scope: !3980)
!4460 = !DILocation(line: 261, column: 7, scope: !3980)
!4461 = !DILocation(line: 261, column: 18, scope: !3980)
!4462 = !DILocation(line: 263, column: 7, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 263, column: 6)
!4464 = !DILocation(line: 263, column: 12, scope: !4463)
!4465 = !DILocation(line: 263, column: 6, scope: !3980)
!4466 = !DILocation(line: 264, column: 3, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 263, column: 24)
!4468 = !DILocation(line: 265, column: 3, scope: !4467)
!4469 = !DILocation(line: 269, column: 19, scope: !3980)
!4470 = !DILocation(line: 269, column: 24, scope: !3980)
!4471 = !DILocation(line: 269, column: 29, scope: !3980)
!4472 = !DILocation(line: 269, column: 34, scope: !3980)
!4473 = !DILocation(line: 270, column: 5, scope: !3980)
!4474 = !DILocation(line: 271, column: 5, scope: !3980)
!4475 = !DILocation(line: 271, column: 10, scope: !3980)
!4476 = !DILocation(line: 272, column: 5, scope: !3980)
!4477 = !DILocation(line: 269, column: 2, scope: !3980)
!4478 = !DILocation(line: 273, column: 2, scope: !3980)
!4479 = !DILocation(line: 273, column: 7, scope: !3980)
!4480 = !DILocation(line: 273, column: 12, scope: !3980)
!4481 = !DILocation(line: 273, column: 27, scope: !3980)
!4482 = !DILocation(line: 274, column: 21, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 274, column: 6)
!4484 = !DILocation(line: 274, column: 26, scope: !4483)
!4485 = !DILocation(line: 274, column: 6, scope: !4483)
!4486 = !DILocation(line: 274, column: 6, scope: !3980)
!4487 = !DILocation(line: 275, column: 10, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 274, column: 44)
!4489 = !DILocation(line: 276, column: 3, scope: !4488)
!4490 = !DILocation(line: 277, column: 3, scope: !4488)
!4491 = !DILocation(line: 281, column: 19, scope: !3980)
!4492 = !DILocation(line: 281, column: 30, scope: !3980)
!4493 = !DILocation(line: 281, column: 2, scope: !3980)
!4494 = !DILocation(line: 282, column: 2, scope: !3980)
!4495 = !DILocation(line: 282, column: 7, scope: !3980)
!4496 = !DILocation(line: 282, column: 11, scope: !3980)
!4497 = !DILocation(line: 285, column: 28, scope: !3980)
!4498 = !DILocation(line: 285, column: 11, scope: !3980)
!4499 = !DILocation(line: 285, column: 9, scope: !3980)
!4500 = !DILocation(line: 286, column: 6, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 286, column: 6)
!4502 = !DILocation(line: 286, column: 6, scope: !3980)
!4503 = !DILocation(line: 287, column: 3, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 286, column: 14)
!4505 = !DILocation(line: 289, column: 20, scope: !4504)
!4506 = !DILocation(line: 289, column: 3, scope: !4504)
!4507 = !DILocation(line: 290, column: 3, scope: !4504)
!4508 = !DILocation(line: 293, column: 2, scope: !3980)
!4509 = !DILocation(line: 297, column: 2, scope: !3980)
!4510 = !DILabel(scope: !3980, name: "error", file: !3, line: 299)
!4511 = !DILocation(line: 299, column: 1, scope: !3980)
!4512 = !DILocation(line: 300, column: 6, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 300, column: 6)
!4514 = !DILocation(line: 300, column: 6, scope: !3980)
!4515 = !DILocation(line: 302, column: 13, scope: !4513)
!4516 = !DILocation(line: 302, column: 18, scope: !4513)
!4517 = !DILocation(line: 302, column: 3, scope: !4513)
!4518 = !DILocation(line: 303, column: 9, scope: !3980)
!4519 = !DILocation(line: 303, column: 2, scope: !3980)
!4520 = !DILocation(line: 304, column: 1, scope: !3980)
!4521 = distinct !DISubprogram(name: "yurex_disconnect", scope: !3, file: !3, line: 306, type: !3945, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4522 = !DILocalVariable(name: "interface", arg: 1, scope: !4521, file: !3, line: 306, type: !3713)
!4523 = !DILocation(line: 306, column: 52, scope: !4521)
!4524 = !DILocalVariable(name: "dev", scope: !4521, file: !3, line: 308, type: !3821)
!4525 = !DILocation(line: 308, column: 20, scope: !4521)
!4526 = !DILocalVariable(name: "minor", scope: !4521, file: !3, line: 309, type: !173)
!4527 = !DILocation(line: 309, column: 6, scope: !4521)
!4528 = !DILocation(line: 309, column: 14, scope: !4521)
!4529 = !DILocation(line: 309, column: 25, scope: !4521)
!4530 = !DILocation(line: 311, column: 25, scope: !4521)
!4531 = !DILocation(line: 311, column: 8, scope: !4521)
!4532 = !DILocation(line: 311, column: 6, scope: !4521)
!4533 = !DILocation(line: 312, column: 19, scope: !4521)
!4534 = !DILocation(line: 312, column: 2, scope: !4521)
!4535 = !DILocation(line: 315, column: 21, scope: !4521)
!4536 = !DILocation(line: 315, column: 2, scope: !4521)
!4537 = !DILocation(line: 318, column: 17, scope: !4521)
!4538 = !DILocation(line: 318, column: 22, scope: !4521)
!4539 = !DILocation(line: 318, column: 2, scope: !4521)
!4540 = !DILocation(line: 319, column: 17, scope: !4521)
!4541 = !DILocation(line: 319, column: 22, scope: !4521)
!4542 = !DILocation(line: 319, column: 2, scope: !4521)
!4543 = !DILocation(line: 320, column: 14, scope: !4521)
!4544 = !DILocation(line: 320, column: 19, scope: !4521)
!4545 = !DILocation(line: 320, column: 2, scope: !4521)
!4546 = !DILocation(line: 321, column: 2, scope: !4521)
!4547 = !DILocation(line: 321, column: 7, scope: !4521)
!4548 = !DILocation(line: 321, column: 20, scope: !4521)
!4549 = !DILocation(line: 322, column: 16, scope: !4521)
!4550 = !DILocation(line: 322, column: 21, scope: !4521)
!4551 = !DILocation(line: 322, column: 2, scope: !4521)
!4552 = !DILocation(line: 325, column: 15, scope: !4521)
!4553 = !DILocation(line: 325, column: 20, scope: !4521)
!4554 = !DILocation(line: 325, column: 2, scope: !4521)
!4555 = !DILocation(line: 326, column: 2, scope: !4521)
!4556 = !DILocation(line: 329, column: 12, scope: !4521)
!4557 = !DILocation(line: 329, column: 17, scope: !4521)
!4558 = !DILocation(line: 329, column: 2, scope: !4521)
!4559 = !DILocation(line: 331, column: 2, scope: !4521)
!4560 = !DILocation(line: 332, column: 1, scope: !4521)
!4561 = distinct !DISubprogram(name: "kzalloc", scope: !119, file: !119, line: 662, type: !4017, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4562 = !DILocation(line: 445, column: 72, scope: !4009, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 552, column: 10, scope: !4014, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 664, column: 9, scope: !4561)
!4565 = !DILocation(line: 446, column: 9, scope: !4009, inlinedAt: !4563)
!4566 = !DILocation(line: 446, column: 23, scope: !4009, inlinedAt: !4563)
!4567 = !DILocation(line: 448, column: 8, scope: !4009, inlinedAt: !4563)
!4568 = !DILocation(line: 318, column: 67, scope: !4027, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 553, column: 20, scope: !4014, inlinedAt: !4564)
!4570 = !DILocation(line: 346, column: 58, scope: !4033, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 547, column: 11, scope: !4014, inlinedAt: !4564)
!4572 = !DILocation(line: 472, column: 28, scope: !4039, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 481, column: 9, scope: !4044, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 545, column: 11, scope: !4046, inlinedAt: !4564)
!4575 = !DILocation(line: 472, column: 40, scope: !4039, inlinedAt: !4573)
!4576 = !DILocation(line: 472, column: 60, scope: !4039, inlinedAt: !4573)
!4577 = !DILocation(line: 478, column: 51, scope: !4044, inlinedAt: !4574)
!4578 = !DILocation(line: 478, column: 63, scope: !4044, inlinedAt: !4574)
!4579 = !DILocation(line: 480, column: 15, scope: !4044, inlinedAt: !4574)
!4580 = !DILocation(line: 538, column: 45, scope: !4016, inlinedAt: !4564)
!4581 = !DILocation(line: 538, column: 57, scope: !4016, inlinedAt: !4564)
!4582 = !DILocation(line: 542, column: 16, scope: !4014, inlinedAt: !4564)
!4583 = !DILocalVariable(name: "size", arg: 1, scope: !4561, file: !119, line: 662, type: !619)
!4584 = !DILocation(line: 662, column: 36, scope: !4561)
!4585 = !DILocalVariable(name: "flags", arg: 2, scope: !4561, file: !119, line: 662, type: !137)
!4586 = !DILocation(line: 662, column: 48, scope: !4561)
!4587 = !DILocation(line: 664, column: 17, scope: !4561)
!4588 = !DILocation(line: 664, column: 23, scope: !4561)
!4589 = !DILocation(line: 664, column: 29, scope: !4561)
!4590 = !DILocation(line: 540, column: 27, scope: !4015, inlinedAt: !4564)
!4591 = !DILocation(line: 540, column: 6, scope: !4015, inlinedAt: !4564)
!4592 = !DILocation(line: 540, column: 6, scope: !4016, inlinedAt: !4564)
!4593 = !DILocation(line: 544, column: 7, scope: !4046, inlinedAt: !4564)
!4594 = !DILocation(line: 544, column: 12, scope: !4046, inlinedAt: !4564)
!4595 = !DILocation(line: 544, column: 7, scope: !4014, inlinedAt: !4564)
!4596 = !DILocation(line: 545, column: 25, scope: !4046, inlinedAt: !4564)
!4597 = !DILocation(line: 545, column: 31, scope: !4046, inlinedAt: !4564)
!4598 = !DILocation(line: 480, column: 33, scope: !4044, inlinedAt: !4574)
!4599 = !DILocation(line: 480, column: 23, scope: !4044, inlinedAt: !4574)
!4600 = !DILocation(line: 481, column: 29, scope: !4044, inlinedAt: !4574)
!4601 = !DILocation(line: 481, column: 35, scope: !4044, inlinedAt: !4574)
!4602 = !DILocation(line: 481, column: 42, scope: !4044, inlinedAt: !4574)
!4603 = !DILocation(line: 474, column: 23, scope: !4039, inlinedAt: !4573)
!4604 = !DILocation(line: 474, column: 29, scope: !4039, inlinedAt: !4573)
!4605 = !DILocation(line: 474, column: 36, scope: !4039, inlinedAt: !4573)
!4606 = !DILocation(line: 474, column: 9, scope: !4039, inlinedAt: !4573)
!4607 = !DILocation(line: 545, column: 4, scope: !4046, inlinedAt: !4564)
!4608 = !DILocation(line: 547, column: 25, scope: !4014, inlinedAt: !4564)
!4609 = !DILocation(line: 348, column: 7, scope: !4194, inlinedAt: !4571)
!4610 = !DILocation(line: 348, column: 6, scope: !4033, inlinedAt: !4571)
!4611 = !DILocation(line: 349, column: 3, scope: !4194, inlinedAt: !4571)
!4612 = !DILocation(line: 351, column: 6, scope: !4198, inlinedAt: !4571)
!4613 = !DILocation(line: 351, column: 11, scope: !4198, inlinedAt: !4571)
!4614 = !DILocation(line: 351, column: 6, scope: !4033, inlinedAt: !4571)
!4615 = !DILocation(line: 352, column: 3, scope: !4198, inlinedAt: !4571)
!4616 = !DILocation(line: 354, column: 32, scope: !4203, inlinedAt: !4571)
!4617 = !DILocation(line: 354, column: 37, scope: !4203, inlinedAt: !4571)
!4618 = !DILocation(line: 354, column: 42, scope: !4203, inlinedAt: !4571)
!4619 = !DILocation(line: 354, column: 45, scope: !4203, inlinedAt: !4571)
!4620 = !DILocation(line: 354, column: 50, scope: !4203, inlinedAt: !4571)
!4621 = !DILocation(line: 354, column: 6, scope: !4033, inlinedAt: !4571)
!4622 = !DILocation(line: 355, column: 3, scope: !4203, inlinedAt: !4571)
!4623 = !DILocation(line: 356, column: 32, scope: !4211, inlinedAt: !4571)
!4624 = !DILocation(line: 356, column: 37, scope: !4211, inlinedAt: !4571)
!4625 = !DILocation(line: 356, column: 43, scope: !4211, inlinedAt: !4571)
!4626 = !DILocation(line: 356, column: 46, scope: !4211, inlinedAt: !4571)
!4627 = !DILocation(line: 356, column: 51, scope: !4211, inlinedAt: !4571)
!4628 = !DILocation(line: 356, column: 6, scope: !4033, inlinedAt: !4571)
!4629 = !DILocation(line: 357, column: 3, scope: !4211, inlinedAt: !4571)
!4630 = !DILocation(line: 358, column: 6, scope: !4219, inlinedAt: !4571)
!4631 = !DILocation(line: 358, column: 11, scope: !4219, inlinedAt: !4571)
!4632 = !DILocation(line: 358, column: 6, scope: !4033, inlinedAt: !4571)
!4633 = !DILocation(line: 358, column: 26, scope: !4219, inlinedAt: !4571)
!4634 = !DILocation(line: 359, column: 6, scope: !4224, inlinedAt: !4571)
!4635 = !DILocation(line: 359, column: 11, scope: !4224, inlinedAt: !4571)
!4636 = !DILocation(line: 359, column: 6, scope: !4033, inlinedAt: !4571)
!4637 = !DILocation(line: 359, column: 26, scope: !4224, inlinedAt: !4571)
!4638 = !DILocation(line: 360, column: 6, scope: !4229, inlinedAt: !4571)
!4639 = !DILocation(line: 360, column: 11, scope: !4229, inlinedAt: !4571)
!4640 = !DILocation(line: 360, column: 6, scope: !4033, inlinedAt: !4571)
!4641 = !DILocation(line: 360, column: 26, scope: !4229, inlinedAt: !4571)
!4642 = !DILocation(line: 361, column: 6, scope: !4234, inlinedAt: !4571)
!4643 = !DILocation(line: 361, column: 11, scope: !4234, inlinedAt: !4571)
!4644 = !DILocation(line: 361, column: 6, scope: !4033, inlinedAt: !4571)
!4645 = !DILocation(line: 361, column: 26, scope: !4234, inlinedAt: !4571)
!4646 = !DILocation(line: 362, column: 6, scope: !4239, inlinedAt: !4571)
!4647 = !DILocation(line: 362, column: 11, scope: !4239, inlinedAt: !4571)
!4648 = !DILocation(line: 362, column: 6, scope: !4033, inlinedAt: !4571)
!4649 = !DILocation(line: 362, column: 26, scope: !4239, inlinedAt: !4571)
!4650 = !DILocation(line: 363, column: 6, scope: !4244, inlinedAt: !4571)
!4651 = !DILocation(line: 363, column: 11, scope: !4244, inlinedAt: !4571)
!4652 = !DILocation(line: 363, column: 6, scope: !4033, inlinedAt: !4571)
!4653 = !DILocation(line: 363, column: 26, scope: !4244, inlinedAt: !4571)
!4654 = !DILocation(line: 364, column: 6, scope: !4249, inlinedAt: !4571)
!4655 = !DILocation(line: 364, column: 11, scope: !4249, inlinedAt: !4571)
!4656 = !DILocation(line: 364, column: 6, scope: !4033, inlinedAt: !4571)
!4657 = !DILocation(line: 364, column: 26, scope: !4249, inlinedAt: !4571)
!4658 = !DILocation(line: 365, column: 6, scope: !4254, inlinedAt: !4571)
!4659 = !DILocation(line: 365, column: 11, scope: !4254, inlinedAt: !4571)
!4660 = !DILocation(line: 365, column: 6, scope: !4033, inlinedAt: !4571)
!4661 = !DILocation(line: 365, column: 26, scope: !4254, inlinedAt: !4571)
!4662 = !DILocation(line: 366, column: 6, scope: !4259, inlinedAt: !4571)
!4663 = !DILocation(line: 366, column: 11, scope: !4259, inlinedAt: !4571)
!4664 = !DILocation(line: 366, column: 6, scope: !4033, inlinedAt: !4571)
!4665 = !DILocation(line: 366, column: 26, scope: !4259, inlinedAt: !4571)
!4666 = !DILocation(line: 367, column: 6, scope: !4264, inlinedAt: !4571)
!4667 = !DILocation(line: 367, column: 11, scope: !4264, inlinedAt: !4571)
!4668 = !DILocation(line: 367, column: 6, scope: !4033, inlinedAt: !4571)
!4669 = !DILocation(line: 367, column: 26, scope: !4264, inlinedAt: !4571)
!4670 = !DILocation(line: 368, column: 6, scope: !4269, inlinedAt: !4571)
!4671 = !DILocation(line: 368, column: 11, scope: !4269, inlinedAt: !4571)
!4672 = !DILocation(line: 368, column: 6, scope: !4033, inlinedAt: !4571)
!4673 = !DILocation(line: 368, column: 26, scope: !4269, inlinedAt: !4571)
!4674 = !DILocation(line: 369, column: 6, scope: !4274, inlinedAt: !4571)
!4675 = !DILocation(line: 369, column: 11, scope: !4274, inlinedAt: !4571)
!4676 = !DILocation(line: 369, column: 6, scope: !4033, inlinedAt: !4571)
!4677 = !DILocation(line: 369, column: 26, scope: !4274, inlinedAt: !4571)
!4678 = !DILocation(line: 370, column: 6, scope: !4279, inlinedAt: !4571)
!4679 = !DILocation(line: 370, column: 11, scope: !4279, inlinedAt: !4571)
!4680 = !DILocation(line: 370, column: 6, scope: !4033, inlinedAt: !4571)
!4681 = !DILocation(line: 370, column: 26, scope: !4279, inlinedAt: !4571)
!4682 = !DILocation(line: 371, column: 6, scope: !4284, inlinedAt: !4571)
!4683 = !DILocation(line: 371, column: 11, scope: !4284, inlinedAt: !4571)
!4684 = !DILocation(line: 371, column: 6, scope: !4033, inlinedAt: !4571)
!4685 = !DILocation(line: 371, column: 26, scope: !4284, inlinedAt: !4571)
!4686 = !DILocation(line: 372, column: 6, scope: !4289, inlinedAt: !4571)
!4687 = !DILocation(line: 372, column: 11, scope: !4289, inlinedAt: !4571)
!4688 = !DILocation(line: 372, column: 6, scope: !4033, inlinedAt: !4571)
!4689 = !DILocation(line: 372, column: 26, scope: !4289, inlinedAt: !4571)
!4690 = !DILocation(line: 373, column: 6, scope: !4294, inlinedAt: !4571)
!4691 = !DILocation(line: 373, column: 11, scope: !4294, inlinedAt: !4571)
!4692 = !DILocation(line: 373, column: 6, scope: !4033, inlinedAt: !4571)
!4693 = !DILocation(line: 373, column: 26, scope: !4294, inlinedAt: !4571)
!4694 = !DILocation(line: 374, column: 6, scope: !4299, inlinedAt: !4571)
!4695 = !DILocation(line: 374, column: 11, scope: !4299, inlinedAt: !4571)
!4696 = !DILocation(line: 374, column: 6, scope: !4033, inlinedAt: !4571)
!4697 = !DILocation(line: 374, column: 26, scope: !4299, inlinedAt: !4571)
!4698 = !DILocation(line: 375, column: 6, scope: !4304, inlinedAt: !4571)
!4699 = !DILocation(line: 375, column: 11, scope: !4304, inlinedAt: !4571)
!4700 = !DILocation(line: 375, column: 6, scope: !4033, inlinedAt: !4571)
!4701 = !DILocation(line: 375, column: 27, scope: !4304, inlinedAt: !4571)
!4702 = !DILocation(line: 376, column: 6, scope: !4309, inlinedAt: !4571)
!4703 = !DILocation(line: 376, column: 11, scope: !4309, inlinedAt: !4571)
!4704 = !DILocation(line: 376, column: 6, scope: !4033, inlinedAt: !4571)
!4705 = !DILocation(line: 376, column: 32, scope: !4309, inlinedAt: !4571)
!4706 = !DILocation(line: 377, column: 6, scope: !4314, inlinedAt: !4571)
!4707 = !DILocation(line: 377, column: 11, scope: !4314, inlinedAt: !4571)
!4708 = !DILocation(line: 377, column: 6, scope: !4033, inlinedAt: !4571)
!4709 = !DILocation(line: 377, column: 32, scope: !4314, inlinedAt: !4571)
!4710 = !DILocation(line: 378, column: 6, scope: !4319, inlinedAt: !4571)
!4711 = !DILocation(line: 378, column: 11, scope: !4319, inlinedAt: !4571)
!4712 = !DILocation(line: 378, column: 6, scope: !4033, inlinedAt: !4571)
!4713 = !DILocation(line: 378, column: 32, scope: !4319, inlinedAt: !4571)
!4714 = !DILocation(line: 379, column: 6, scope: !4324, inlinedAt: !4571)
!4715 = !DILocation(line: 379, column: 11, scope: !4324, inlinedAt: !4571)
!4716 = !DILocation(line: 379, column: 6, scope: !4033, inlinedAt: !4571)
!4717 = !DILocation(line: 379, column: 33, scope: !4324, inlinedAt: !4571)
!4718 = !DILocation(line: 380, column: 6, scope: !4329, inlinedAt: !4571)
!4719 = !DILocation(line: 380, column: 11, scope: !4329, inlinedAt: !4571)
!4720 = !DILocation(line: 380, column: 6, scope: !4033, inlinedAt: !4571)
!4721 = !DILocation(line: 380, column: 33, scope: !4329, inlinedAt: !4571)
!4722 = !DILocation(line: 381, column: 6, scope: !4334, inlinedAt: !4571)
!4723 = !DILocation(line: 381, column: 11, scope: !4334, inlinedAt: !4571)
!4724 = !DILocation(line: 381, column: 6, scope: !4033, inlinedAt: !4571)
!4725 = !DILocation(line: 381, column: 33, scope: !4334, inlinedAt: !4571)
!4726 = !DILocation(line: 382, column: 2, scope: !4339, inlinedAt: !4571)
!4727 = !DILocation(line: 382, column: 2, scope: !4343, inlinedAt: !4571)
!4728 = !DILocation(line: 382, column: 2, scope: !4344, inlinedAt: !4571)
!4729 = !DILocation(line: 386, column: 1, scope: !4033, inlinedAt: !4571)
!4730 = !DILocation(line: 547, column: 9, scope: !4014, inlinedAt: !4564)
!4731 = !DILocation(line: 549, column: 8, scope: !4350, inlinedAt: !4564)
!4732 = !DILocation(line: 549, column: 7, scope: !4014, inlinedAt: !4564)
!4733 = !DILocation(line: 550, column: 4, scope: !4350, inlinedAt: !4564)
!4734 = !DILocation(line: 553, column: 33, scope: !4014, inlinedAt: !4564)
!4735 = !DILocation(line: 325, column: 6, scope: !4355, inlinedAt: !4569)
!4736 = !DILocation(line: 325, column: 6, scope: !4027, inlinedAt: !4569)
!4737 = !DILocation(line: 326, column: 3, scope: !4355, inlinedAt: !4569)
!4738 = !DILocation(line: 332, column: 9, scope: !4027, inlinedAt: !4569)
!4739 = !DILocation(line: 332, column: 15, scope: !4027, inlinedAt: !4569)
!4740 = !DILocation(line: 332, column: 2, scope: !4027, inlinedAt: !4569)
!4741 = !DILocation(line: 336, column: 1, scope: !4027, inlinedAt: !4569)
!4742 = !DILocation(line: 553, column: 5, scope: !4014, inlinedAt: !4564)
!4743 = !DILocation(line: 553, column: 41, scope: !4014, inlinedAt: !4564)
!4744 = !DILocation(line: 554, column: 5, scope: !4014, inlinedAt: !4564)
!4745 = !DILocation(line: 554, column: 12, scope: !4014, inlinedAt: !4564)
!4746 = !DILocation(line: 448, column: 31, scope: !4009, inlinedAt: !4563)
!4747 = !DILocation(line: 448, column: 34, scope: !4009, inlinedAt: !4563)
!4748 = !DILocation(line: 448, column: 14, scope: !4009, inlinedAt: !4563)
!4749 = !DILocation(line: 450, column: 22, scope: !4009, inlinedAt: !4563)
!4750 = !DILocation(line: 450, column: 25, scope: !4009, inlinedAt: !4563)
!4751 = !DILocation(line: 450, column: 30, scope: !4009, inlinedAt: !4563)
!4752 = !DILocation(line: 450, column: 36, scope: !4009, inlinedAt: !4563)
!4753 = !DILocation(line: 450, column: 8, scope: !4009, inlinedAt: !4563)
!4754 = !DILocation(line: 450, column: 6, scope: !4009, inlinedAt: !4563)
!4755 = !DILocation(line: 451, column: 9, scope: !4009, inlinedAt: !4563)
!4756 = !DILocation(line: 552, column: 3, scope: !4014, inlinedAt: !4564)
!4757 = !DILocation(line: 557, column: 19, scope: !4016, inlinedAt: !4564)
!4758 = !DILocation(line: 557, column: 25, scope: !4016, inlinedAt: !4564)
!4759 = !DILocation(line: 557, column: 9, scope: !4016, inlinedAt: !4564)
!4760 = !DILocation(line: 557, column: 2, scope: !4016, inlinedAt: !4564)
!4761 = !DILocation(line: 558, column: 1, scope: !4016, inlinedAt: !4564)
!4762 = !DILocation(line: 664, column: 2, scope: !4561)
!4763 = distinct !DISubprogram(name: "kref_init", scope: !3173, file: !3173, line: 29, type: !4764, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{null, !4766}
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!4767 = !DILocalVariable(name: "kref", arg: 1, scope: !4763, file: !3173, line: 29, type: !4766)
!4768 = !DILocation(line: 29, column: 43, scope: !4763)
!4769 = !DILocation(line: 31, column: 16, scope: !4763)
!4770 = !DILocation(line: 31, column: 22, scope: !4763)
!4771 = !DILocation(line: 31, column: 2, scope: !4763)
!4772 = !DILocation(line: 32, column: 1, scope: !4763)
!4773 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4774, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!2857, !3713}
!4776 = !DILocalVariable(name: "intf", arg: 1, scope: !4773, file: !6, line: 715, type: !3713)
!4777 = !DILocation(line: 715, column: 76, scope: !4773)
!4778 = !DILocalVariable(name: "__mptr", scope: !4779, file: !6, line: 717, type: !144)
!4779 = distinct !DILexicalBlock(scope: !4773, file: !6, line: 717, column: 9)
!4780 = !DILocation(line: 717, column: 9, scope: !4779)
!4781 = !DILocation(line: 717, column: 9, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4779, file: !6, line: 717, column: 9)
!4783 = !DILocation(line: 717, column: 2, scope: !4773)
!4784 = distinct !DISubprogram(name: "usb_find_int_in_endpoint", scope: !6, file: !6, line: 132, type: !4785, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!173, !3717, !4787}
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4788 = !DILocalVariable(name: "alt", arg: 1, scope: !4784, file: !6, line: 132, type: !3717)
!4789 = !DILocation(line: 132, column: 53, scope: !4784)
!4790 = !DILocalVariable(name: "int_in", arg: 2, scope: !4784, file: !6, line: 133, type: !4787)
!4791 = !DILocation(line: 133, column: 36, scope: !4784)
!4792 = !DILocation(line: 135, column: 35, scope: !4784)
!4793 = !DILocation(line: 135, column: 52, scope: !4784)
!4794 = !DILocation(line: 135, column: 9, scope: !4784)
!4795 = !DILocation(line: 135, column: 2, scope: !4784)
!4796 = distinct !DISubprogram(name: "usb_fill_control_urb", scope: !6, file: !6, line: 1616, type: !4797, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{null, !3828, !2857, !7, !3599, !144, !173, !3870, !144}
!4799 = !DILocalVariable(name: "urb", arg: 1, scope: !4796, file: !6, line: 1616, type: !3828)
!4800 = !DILocation(line: 1616, column: 53, scope: !4796)
!4801 = !DILocalVariable(name: "dev", arg: 2, scope: !4796, file: !6, line: 1617, type: !2857)
!4802 = !DILocation(line: 1617, column: 25, scope: !4796)
!4803 = !DILocalVariable(name: "pipe", arg: 3, scope: !4796, file: !6, line: 1618, type: !7)
!4804 = !DILocation(line: 1618, column: 19, scope: !4796)
!4805 = !DILocalVariable(name: "setup_packet", arg: 4, scope: !4796, file: !6, line: 1619, type: !3599)
!4806 = !DILocation(line: 1619, column: 21, scope: !4796)
!4807 = !DILocalVariable(name: "transfer_buffer", arg: 5, scope: !4796, file: !6, line: 1620, type: !144)
!4808 = !DILocation(line: 1620, column: 12, scope: !4796)
!4809 = !DILocalVariable(name: "buffer_length", arg: 6, scope: !4796, file: !6, line: 1621, type: !173)
!4810 = !DILocation(line: 1621, column: 10, scope: !4796)
!4811 = !DILocalVariable(name: "complete_fn", arg: 7, scope: !4796, file: !6, line: 1622, type: !3870)
!4812 = !DILocation(line: 1622, column: 21, scope: !4796)
!4813 = !DILocalVariable(name: "context", arg: 8, scope: !4796, file: !6, line: 1623, type: !144)
!4814 = !DILocation(line: 1623, column: 12, scope: !4796)
!4815 = !DILocation(line: 1625, column: 13, scope: !4796)
!4816 = !DILocation(line: 1625, column: 2, scope: !4796)
!4817 = !DILocation(line: 1625, column: 7, scope: !4796)
!4818 = !DILocation(line: 1625, column: 11, scope: !4796)
!4819 = !DILocation(line: 1626, column: 14, scope: !4796)
!4820 = !DILocation(line: 1626, column: 2, scope: !4796)
!4821 = !DILocation(line: 1626, column: 7, scope: !4796)
!4822 = !DILocation(line: 1626, column: 12, scope: !4796)
!4823 = !DILocation(line: 1627, column: 22, scope: !4796)
!4824 = !DILocation(line: 1627, column: 2, scope: !4796)
!4825 = !DILocation(line: 1627, column: 7, scope: !4796)
!4826 = !DILocation(line: 1627, column: 20, scope: !4796)
!4827 = !DILocation(line: 1628, column: 25, scope: !4796)
!4828 = !DILocation(line: 1628, column: 2, scope: !4796)
!4829 = !DILocation(line: 1628, column: 7, scope: !4796)
!4830 = !DILocation(line: 1628, column: 23, scope: !4796)
!4831 = !DILocation(line: 1629, column: 32, scope: !4796)
!4832 = !DILocation(line: 1629, column: 2, scope: !4796)
!4833 = !DILocation(line: 1629, column: 7, scope: !4796)
!4834 = !DILocation(line: 1629, column: 30, scope: !4796)
!4835 = !DILocation(line: 1630, column: 18, scope: !4796)
!4836 = !DILocation(line: 1630, column: 2, scope: !4796)
!4837 = !DILocation(line: 1630, column: 7, scope: !4796)
!4838 = !DILocation(line: 1630, column: 16, scope: !4796)
!4839 = !DILocation(line: 1631, column: 17, scope: !4796)
!4840 = !DILocation(line: 1631, column: 2, scope: !4796)
!4841 = !DILocation(line: 1631, column: 7, scope: !4796)
!4842 = !DILocation(line: 1631, column: 15, scope: !4796)
!4843 = !DILocation(line: 1632, column: 1, scope: !4796)
!4844 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !4845, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!7, !2857, !7}
!4847 = !DILocalVariable(name: "dev", arg: 1, scope: !4844, file: !6, line: 1945, type: !2857)
!4848 = !DILocation(line: 1945, column: 61, scope: !4844)
!4849 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4844, file: !6, line: 1946, type: !7)
!4850 = !DILocation(line: 1946, column: 16, scope: !4844)
!4851 = !DILocation(line: 1948, column: 10, scope: !4844)
!4852 = !DILocation(line: 1948, column: 15, scope: !4844)
!4853 = !DILocation(line: 1948, column: 22, scope: !4844)
!4854 = !DILocation(line: 1948, column: 31, scope: !4844)
!4855 = !DILocation(line: 1948, column: 40, scope: !4844)
!4856 = !DILocation(line: 1948, column: 28, scope: !4844)
!4857 = !DILocation(line: 1948, column: 2, scope: !4844)
!4858 = distinct !DISubprogram(name: "yurex_control_callback", scope: !3, file: !3, line: 76, type: !3872, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4859 = !DILocalVariable(name: "urb", arg: 1, scope: !4858, file: !3, line: 76, type: !3828)
!4860 = !DILocation(line: 76, column: 48, scope: !4858)
!4861 = !DILocalVariable(name: "dev", scope: !4858, file: !3, line: 78, type: !3821)
!4862 = !DILocation(line: 78, column: 20, scope: !4858)
!4863 = !DILocation(line: 78, column: 26, scope: !4858)
!4864 = !DILocation(line: 78, column: 31, scope: !4858)
!4865 = !DILocalVariable(name: "status", scope: !4858, file: !3, line: 79, type: !173)
!4866 = !DILocation(line: 79, column: 6, scope: !4858)
!4867 = !DILocation(line: 79, column: 15, scope: !4858)
!4868 = !DILocation(line: 79, column: 20, scope: !4858)
!4869 = !DILocation(line: 81, column: 6, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 81, column: 6)
!4871 = !DILocation(line: 81, column: 6, scope: !4858)
!4872 = !DILocation(line: 82, column: 3, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 81, column: 14)
!4874 = !DILocation(line: 84, column: 3, scope: !4873)
!4875 = !DILocation(line: 85, column: 3, scope: !4873)
!4876 = !DILocation(line: 88, column: 1, scope: !4858)
!4877 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !4878, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{null, !3828, !2857, !7, !144, !173, !3870, !144, !173}
!4880 = !DILocalVariable(name: "urb", arg: 1, scope: !4877, file: !6, line: 1688, type: !3828)
!4881 = !DILocation(line: 1688, column: 49, scope: !4877)
!4882 = !DILocalVariable(name: "dev", arg: 2, scope: !4877, file: !6, line: 1689, type: !2857)
!4883 = !DILocation(line: 1689, column: 28, scope: !4877)
!4884 = !DILocalVariable(name: "pipe", arg: 3, scope: !4877, file: !6, line: 1690, type: !7)
!4885 = !DILocation(line: 1690, column: 22, scope: !4877)
!4886 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !4877, file: !6, line: 1691, type: !144)
!4887 = !DILocation(line: 1691, column: 15, scope: !4877)
!4888 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !4877, file: !6, line: 1692, type: !173)
!4889 = !DILocation(line: 1692, column: 13, scope: !4877)
!4890 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !4877, file: !6, line: 1693, type: !3870)
!4891 = !DILocation(line: 1693, column: 24, scope: !4877)
!4892 = !DILocalVariable(name: "context", arg: 7, scope: !4877, file: !6, line: 1694, type: !144)
!4893 = !DILocation(line: 1694, column: 15, scope: !4877)
!4894 = !DILocalVariable(name: "interval", arg: 8, scope: !4877, file: !6, line: 1695, type: !173)
!4895 = !DILocation(line: 1695, column: 13, scope: !4877)
!4896 = !DILocation(line: 1697, column: 13, scope: !4877)
!4897 = !DILocation(line: 1697, column: 2, scope: !4877)
!4898 = !DILocation(line: 1697, column: 7, scope: !4877)
!4899 = !DILocation(line: 1697, column: 11, scope: !4877)
!4900 = !DILocation(line: 1698, column: 14, scope: !4877)
!4901 = !DILocation(line: 1698, column: 2, scope: !4877)
!4902 = !DILocation(line: 1698, column: 7, scope: !4877)
!4903 = !DILocation(line: 1698, column: 12, scope: !4877)
!4904 = !DILocation(line: 1699, column: 25, scope: !4877)
!4905 = !DILocation(line: 1699, column: 2, scope: !4877)
!4906 = !DILocation(line: 1699, column: 7, scope: !4877)
!4907 = !DILocation(line: 1699, column: 23, scope: !4877)
!4908 = !DILocation(line: 1700, column: 32, scope: !4877)
!4909 = !DILocation(line: 1700, column: 2, scope: !4877)
!4910 = !DILocation(line: 1700, column: 7, scope: !4877)
!4911 = !DILocation(line: 1700, column: 30, scope: !4877)
!4912 = !DILocation(line: 1701, column: 18, scope: !4877)
!4913 = !DILocation(line: 1701, column: 2, scope: !4877)
!4914 = !DILocation(line: 1701, column: 7, scope: !4877)
!4915 = !DILocation(line: 1701, column: 16, scope: !4877)
!4916 = !DILocation(line: 1702, column: 17, scope: !4877)
!4917 = !DILocation(line: 1702, column: 2, scope: !4877)
!4918 = !DILocation(line: 1702, column: 7, scope: !4877)
!4919 = !DILocation(line: 1702, column: 15, scope: !4877)
!4920 = !DILocation(line: 1704, column: 6, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4877, file: !6, line: 1704, column: 6)
!4922 = !DILocation(line: 1704, column: 11, scope: !4921)
!4923 = !DILocation(line: 1704, column: 17, scope: !4921)
!4924 = !DILocation(line: 1704, column: 35, scope: !4921)
!4925 = !DILocation(line: 1704, column: 38, scope: !4921)
!4926 = !DILocation(line: 1704, column: 43, scope: !4921)
!4927 = !DILocation(line: 1704, column: 49, scope: !4921)
!4928 = !DILocation(line: 1704, column: 6, scope: !4877)
!4929 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !4930, file: !6, line: 1706, type: !173)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !6, line: 1706, column: 14)
!4931 = distinct !DILexicalBlock(scope: !4921, file: !6, line: 1704, column: 69)
!4932 = !DILocation(line: 1706, column: 14, scope: !4930)
!4933 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !4934, file: !6, line: 1706, type: !173)
!4934 = distinct !DILexicalBlock(scope: !4930, file: !6, line: 1706, column: 14)
!4935 = !DILocation(line: 1706, column: 14, scope: !4934)
!4936 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !4934, file: !6, line: 1706, type: !173)
!4937 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !4930, file: !6, line: 1706, type: !173)
!4938 = !DILocation(line: 1706, column: 12, scope: !4931)
!4939 = !DILocation(line: 1708, column: 25, scope: !4931)
!4940 = !DILocation(line: 1708, column: 34, scope: !4931)
!4941 = !DILocation(line: 1708, column: 21, scope: !4931)
!4942 = !DILocation(line: 1708, column: 3, scope: !4931)
!4943 = !DILocation(line: 1708, column: 8, scope: !4931)
!4944 = !DILocation(line: 1708, column: 17, scope: !4931)
!4945 = !DILocation(line: 1709, column: 2, scope: !4931)
!4946 = !DILocation(line: 1710, column: 19, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4921, file: !6, line: 1709, column: 9)
!4948 = !DILocation(line: 1710, column: 3, scope: !4947)
!4949 = !DILocation(line: 1710, column: 8, scope: !4947)
!4950 = !DILocation(line: 1710, column: 17, scope: !4947)
!4951 = !DILocation(line: 1713, column: 2, scope: !4877)
!4952 = !DILocation(line: 1713, column: 7, scope: !4877)
!4953 = !DILocation(line: 1713, column: 19, scope: !4877)
!4954 = !DILocation(line: 1714, column: 1, scope: !4877)
!4955 = distinct !DISubprogram(name: "yurex_interrupt", scope: !3, file: !3, line: 124, type: !3872, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4956 = !DILocalVariable(name: "lock", arg: 1, scope: !4957, file: !4065, line: 407, type: !4069)
!4957 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4065, file: !4065, line: 407, type: !4958, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !4069, !155}
!4960 = !DILocation(line: 407, column: 64, scope: !4957, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 167, column: 4, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 157, column: 26)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 157, column: 7)
!4964 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 154, column: 18)
!4965 = !DILocalVariable(name: "flags", arg: 2, scope: !4957, file: !4065, line: 407, type: !155)
!4966 = !DILocation(line: 407, column: 84, scope: !4957, inlinedAt: !4961)
!4967 = !DILocation(line: 327, column: 67, scope: !4064, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 158, column: 4, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 158, column: 4)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 158, column: 4)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 158, column: 4)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 158, column: 4)
!4973 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 158, column: 4)
!4974 = !DILocalVariable(name: "urb", arg: 1, scope: !4955, file: !3, line: 124, type: !3828)
!4975 = !DILocation(line: 124, column: 41, scope: !4955)
!4976 = !DILocalVariable(name: "dev", scope: !4955, file: !3, line: 126, type: !3821)
!4977 = !DILocation(line: 126, column: 20, scope: !4955)
!4978 = !DILocation(line: 126, column: 26, scope: !4955)
!4979 = !DILocation(line: 126, column: 31, scope: !4955)
!4980 = !DILocalVariable(name: "buf", scope: !4955, file: !3, line: 127, type: !3599)
!4981 = !DILocation(line: 127, column: 17, scope: !4955)
!4982 = !DILocation(line: 127, column: 23, scope: !4955)
!4983 = !DILocation(line: 127, column: 28, scope: !4955)
!4984 = !DILocalVariable(name: "status", scope: !4955, file: !3, line: 128, type: !173)
!4985 = !DILocation(line: 128, column: 6, scope: !4955)
!4986 = !DILocation(line: 128, column: 15, scope: !4955)
!4987 = !DILocation(line: 128, column: 20, scope: !4955)
!4988 = !DILocalVariable(name: "flags", scope: !4955, file: !3, line: 129, type: !155)
!4989 = !DILocation(line: 129, column: 16, scope: !4955)
!4990 = !DILocalVariable(name: "retval", scope: !4955, file: !3, line: 130, type: !173)
!4991 = !DILocation(line: 130, column: 6, scope: !4955)
!4992 = !DILocalVariable(name: "i", scope: !4955, file: !3, line: 130, type: !173)
!4993 = !DILocation(line: 130, column: 14, scope: !4955)
!4994 = !DILocation(line: 132, column: 10, scope: !4955)
!4995 = !DILocation(line: 132, column: 2, scope: !4955)
!4996 = !DILocation(line: 134, column: 3, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 132, column: 18)
!4998 = !DILocation(line: 137, column: 3, scope: !4997)
!4999 = !DILocation(line: 146, column: 3, scope: !4997)
!5000 = !DILocation(line: 148, column: 3, scope: !4997)
!5001 = !DILocation(line: 150, column: 3, scope: !4997)
!5002 = !DILocation(line: 154, column: 10, scope: !4955)
!5003 = !DILocation(line: 154, column: 2, scope: !4955)
!5004 = !DILocation(line: 157, column: 7, scope: !4963)
!5005 = !DILocation(line: 157, column: 14, scope: !4963)
!5006 = !DILocation(line: 157, column: 7, scope: !4964)
!5007 = !DILocation(line: 158, column: 4, scope: !4962)
!5008 = !DILocation(line: 158, column: 4, scope: !4973)
!5009 = !DILocalVariable(name: "__dummy", scope: !5010, file: !3, line: 158, type: !155)
!5010 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 158, column: 4)
!5011 = !DILocation(line: 158, column: 4, scope: !5010)
!5012 = !DILocalVariable(name: "__dummy2", scope: !5010, file: !3, line: 158, type: !155)
!5013 = !DILocation(line: 158, column: 4, scope: !4972)
!5014 = !DILocation(line: 158, column: 4, scope: !4971)
!5015 = !DILocation(line: 158, column: 4, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 158, column: 4)
!5017 = !DILocalVariable(name: "__dummy", scope: !5018, file: !3, line: 158, type: !155)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 158, column: 4)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 158, column: 4)
!5020 = !DILocation(line: 158, column: 4, scope: !5018)
!5021 = !DILocalVariable(name: "__dummy2", scope: !5018, file: !3, line: 158, type: !155)
!5022 = !DILocation(line: 158, column: 4, scope: !5019)
!5023 = !DILocation(line: 158, column: 4, scope: !4970)
!5024 = !{i32 -2142453822}
!5025 = !DILocation(line: 158, column: 4, scope: !4969)
!5026 = !DILocation(line: 329, column: 10, scope: !4064, inlinedAt: !4968)
!5027 = !DILocation(line: 329, column: 16, scope: !4064, inlinedAt: !4968)
!5028 = !DILocation(line: 159, column: 4, scope: !4962)
!5029 = !DILocation(line: 159, column: 9, scope: !4962)
!5030 = !DILocation(line: 159, column: 13, scope: !4962)
!5031 = !DILocation(line: 160, column: 11, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 160, column: 4)
!5033 = !DILocation(line: 160, column: 9, scope: !5032)
!5034 = !DILocation(line: 160, column: 16, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 160, column: 4)
!5036 = !DILocation(line: 160, column: 18, scope: !5035)
!5037 = !DILocation(line: 160, column: 4, scope: !5032)
!5038 = !DILocation(line: 161, column: 17, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 160, column: 28)
!5040 = !DILocation(line: 161, column: 21, scope: !5039)
!5041 = !DILocation(line: 161, column: 5, scope: !5039)
!5042 = !DILocation(line: 161, column: 10, scope: !5039)
!5043 = !DILocation(line: 161, column: 14, scope: !5039)
!5044 = !DILocation(line: 162, column: 9, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 162, column: 9)
!5046 = !DILocation(line: 162, column: 11, scope: !5045)
!5047 = !DILocation(line: 162, column: 9, scope: !5039)
!5048 = !DILocation(line: 163, column: 6, scope: !5045)
!5049 = !DILocation(line: 163, column: 11, scope: !5045)
!5050 = !DILocation(line: 163, column: 15, scope: !5045)
!5051 = !DILocation(line: 164, column: 4, scope: !5039)
!5052 = !DILocation(line: 160, column: 24, scope: !5035)
!5053 = !DILocation(line: 160, column: 4, scope: !5035)
!5054 = distinct !{!5054, !5037, !5055}
!5055 = !DILocation(line: 164, column: 4, scope: !5032)
!5056 = !DILocation(line: 167, column: 28, scope: !4962)
!5057 = !DILocation(line: 167, column: 33, scope: !4962)
!5058 = !DILocation(line: 167, column: 39, scope: !4962)
!5059 = !DILocalVariable(name: "__dummy", scope: !5060, file: !4065, line: 409, type: !155)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !4065, line: 409, column: 2)
!5061 = distinct !DILexicalBlock(scope: !4957, file: !4065, line: 409, column: 2)
!5062 = !DILocation(line: 409, column: 2, scope: !5060, inlinedAt: !4961)
!5063 = !DILocalVariable(name: "__dummy2", scope: !5060, file: !4065, line: 409, type: !155)
!5064 = !DILocalVariable(name: "__dummy", scope: !5065, file: !4065, line: 409, type: !155)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !4065, line: 409, column: 2)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !4065, line: 409, column: 2)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !4065, line: 409, column: 2)
!5068 = distinct !DILexicalBlock(scope: !5061, file: !4065, line: 409, column: 2)
!5069 = !DILocation(line: 409, column: 2, scope: !5065, inlinedAt: !4961)
!5070 = !DILocalVariable(name: "__dummy2", scope: !5065, file: !4065, line: 409, type: !155)
!5071 = !DILocation(line: 409, column: 2, scope: !5066, inlinedAt: !4961)
!5072 = !DILocation(line: 409, column: 2, scope: !5073, inlinedAt: !4961)
!5073 = distinct !DILexicalBlock(scope: !5068, file: !4065, line: 409, column: 2)
!5074 = !{i32 -2145520565}
!5075 = !DILocation(line: 409, column: 2, scope: !5076, inlinedAt: !4961)
!5076 = distinct !DILexicalBlock(scope: !5073, file: !4065, line: 409, column: 2)
!5077 = !DILocation(line: 169, column: 17, scope: !4962)
!5078 = !DILocation(line: 169, column: 22, scope: !4962)
!5079 = !DILocation(line: 169, column: 4, scope: !4962)
!5080 = !DILocation(line: 170, column: 3, scope: !4962)
!5081 = !DILocation(line: 174, column: 3, scope: !4964)
!5082 = !DILocation(line: 178, column: 3, scope: !4964)
!5083 = !DILocation(line: 179, column: 3, scope: !4964)
!5084 = !DILocation(line: 182, column: 26, scope: !4955)
!5085 = !DILocation(line: 182, column: 31, scope: !4955)
!5086 = !DILocation(line: 182, column: 11, scope: !4955)
!5087 = !DILocation(line: 182, column: 9, scope: !4955)
!5088 = !DILocation(line: 183, column: 6, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 183, column: 6)
!5090 = !DILocation(line: 183, column: 6, scope: !4955)
!5091 = !DILocation(line: 184, column: 3, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 183, column: 14)
!5093 = !DILocation(line: 186, column: 2, scope: !5092)
!5094 = !DILocation(line: 187, column: 1, scope: !4955)
!5095 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5096, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{null, !3713, !144}
!5098 = !DILocalVariable(name: "intf", arg: 1, scope: !5095, file: !6, line: 268, type: !3713)
!5099 = !DILocation(line: 268, column: 59, scope: !5095)
!5100 = !DILocalVariable(name: "data", arg: 2, scope: !5095, file: !6, line: 268, type: !144)
!5101 = !DILocation(line: 268, column: 71, scope: !5095)
!5102 = !DILocation(line: 270, column: 19, scope: !5095)
!5103 = !DILocation(line: 270, column: 25, scope: !5095)
!5104 = !DILocation(line: 270, column: 30, scope: !5095)
!5105 = !DILocation(line: 270, column: 2, scope: !5095)
!5106 = !DILocation(line: 271, column: 1, scope: !5095)
!5107 = distinct !DISubprogram(name: "kref_put", scope: !3173, file: !3173, line: 62, type: !5108, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!173, !4766, !5110}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!5111 = !DILocalVariable(name: "kref", arg: 1, scope: !5107, file: !3173, line: 62, type: !4766)
!5112 = !DILocation(line: 62, column: 41, scope: !5107)
!5113 = !DILocalVariable(name: "release", arg: 2, scope: !5107, file: !3173, line: 62, type: !5110)
!5114 = !DILocation(line: 62, column: 54, scope: !5107)
!5115 = !DILocation(line: 64, column: 29, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5107, file: !3173, line: 64, column: 6)
!5117 = !DILocation(line: 64, column: 35, scope: !5116)
!5118 = !DILocation(line: 64, column: 6, scope: !5116)
!5119 = !DILocation(line: 64, column: 6, scope: !5107)
!5120 = !DILocation(line: 65, column: 3, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5116, file: !3173, line: 64, column: 46)
!5122 = !DILocation(line: 65, column: 11, scope: !5121)
!5123 = !DILocation(line: 66, column: 3, scope: !5121)
!5124 = !DILocation(line: 68, column: 2, scope: !5107)
!5125 = !DILocation(line: 69, column: 1, scope: !5107)
!5126 = distinct !DISubprogram(name: "yurex_delete", scope: !3, file: !3, line: 90, type: !4764, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5127 = !DILocalVariable(name: "kref", arg: 1, scope: !5126, file: !3, line: 90, type: !4766)
!5128 = !DILocation(line: 90, column: 39, scope: !5126)
!5129 = !DILocalVariable(name: "dev", scope: !5126, file: !3, line: 92, type: !3821)
!5130 = !DILocation(line: 92, column: 20, scope: !5126)
!5131 = !DILocalVariable(name: "__mptr", scope: !5132, file: !3, line: 92, type: !144)
!5132 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 92, column: 26)
!5133 = !DILocation(line: 92, column: 26, scope: !5132)
!5134 = !DILocation(line: 92, column: 26, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 92, column: 26)
!5136 = !DILocation(line: 96, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 96, column: 6)
!5138 = !DILocation(line: 96, column: 11, scope: !5137)
!5139 = !DILocation(line: 96, column: 6, scope: !5126)
!5140 = !DILocation(line: 97, column: 16, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 96, column: 21)
!5142 = !DILocation(line: 97, column: 21, scope: !5141)
!5143 = !DILocation(line: 97, column: 3, scope: !5141)
!5144 = !DILocation(line: 98, column: 9, scope: !5141)
!5145 = !DILocation(line: 98, column: 14, scope: !5141)
!5146 = !DILocation(line: 98, column: 3, scope: !5141)
!5147 = !DILocation(line: 99, column: 21, scope: !5141)
!5148 = !DILocation(line: 99, column: 26, scope: !5141)
!5149 = !DILocation(line: 100, column: 5, scope: !5141)
!5150 = !DILocation(line: 100, column: 10, scope: !5141)
!5151 = !DILocation(line: 100, column: 23, scope: !5141)
!5152 = !DILocation(line: 100, column: 28, scope: !5141)
!5153 = !DILocation(line: 100, column: 38, scope: !5141)
!5154 = !DILocation(line: 99, column: 3, scope: !5141)
!5155 = !DILocation(line: 101, column: 16, scope: !5141)
!5156 = !DILocation(line: 101, column: 21, scope: !5141)
!5157 = !DILocation(line: 101, column: 3, scope: !5141)
!5158 = !DILocation(line: 102, column: 2, scope: !5141)
!5159 = !DILocation(line: 103, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 103, column: 6)
!5161 = !DILocation(line: 103, column: 11, scope: !5160)
!5162 = !DILocation(line: 103, column: 6, scope: !5126)
!5163 = !DILocation(line: 104, column: 16, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 103, column: 16)
!5165 = !DILocation(line: 104, column: 21, scope: !5164)
!5166 = !DILocation(line: 104, column: 3, scope: !5164)
!5167 = !DILocation(line: 105, column: 21, scope: !5164)
!5168 = !DILocation(line: 105, column: 26, scope: !5164)
!5169 = !DILocation(line: 106, column: 5, scope: !5164)
!5170 = !DILocation(line: 106, column: 10, scope: !5164)
!5171 = !DILocation(line: 106, column: 22, scope: !5164)
!5172 = !DILocation(line: 106, column: 27, scope: !5164)
!5173 = !DILocation(line: 106, column: 32, scope: !5164)
!5174 = !DILocation(line: 105, column: 3, scope: !5164)
!5175 = !DILocation(line: 107, column: 16, scope: !5164)
!5176 = !DILocation(line: 107, column: 21, scope: !5164)
!5177 = !DILocation(line: 107, column: 3, scope: !5164)
!5178 = !DILocation(line: 108, column: 2, scope: !5164)
!5179 = !DILocation(line: 109, column: 15, scope: !5126)
!5180 = !DILocation(line: 109, column: 20, scope: !5126)
!5181 = !DILocation(line: 109, column: 2, scope: !5126)
!5182 = !DILocation(line: 110, column: 14, scope: !5126)
!5183 = !DILocation(line: 110, column: 19, scope: !5126)
!5184 = !DILocation(line: 110, column: 2, scope: !5126)
!5185 = !DILocation(line: 111, column: 8, scope: !5126)
!5186 = !DILocation(line: 111, column: 2, scope: !5126)
!5187 = !DILocation(line: 112, column: 1, scope: !5126)
!5188 = distinct !DISubprogram(name: "refcount_set", scope: !126, file: !126, line: 134, type: !5189, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{null, !5191, !173}
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!5192 = !DILocalVariable(name: "v", arg: 1, scope: !5193, file: !5194, line: 39, type: !5197)
!5193 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5194, file: !5194, line: 39, type: !5195, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5194 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !5197, !173}
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!5198 = !DILocation(line: 39, column: 55, scope: !5193, inlinedAt: !5199)
!5199 = distinct !DILocation(line: 46, column: 2, scope: !5200, inlinedAt: !5202)
!5200 = distinct !DISubprogram(name: "atomic_set", scope: !5201, file: !5201, line: 43, type: !5195, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5201 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5202 = distinct !DILocation(line: 136, column: 2, scope: !5188)
!5203 = !DILocalVariable(name: "i", arg: 2, scope: !5193, file: !5194, line: 39, type: !173)
!5204 = !DILocation(line: 39, column: 62, scope: !5193, inlinedAt: !5199)
!5205 = !DILocalVariable(name: "v", arg: 1, scope: !5206, file: !5207, line: 84, type: !5210)
!5206 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5207, file: !5207, line: 84, type: !5208, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5207 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5208 = !DISubroutineType(types: !5209)
!5209 = !{null, !5210, !619}
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5212)
!5212 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5213 = !DILocation(line: 84, column: 74, scope: !5206, inlinedAt: !5214)
!5214 = distinct !DILocation(line: 45, column: 2, scope: !5200, inlinedAt: !5202)
!5215 = !DILocalVariable(name: "size", arg: 2, scope: !5206, file: !5207, line: 84, type: !619)
!5216 = !DILocation(line: 84, column: 84, scope: !5206, inlinedAt: !5214)
!5217 = !DILocalVariable(name: "v", arg: 1, scope: !5200, file: !5201, line: 43, type: !5197)
!5218 = !DILocation(line: 43, column: 22, scope: !5200, inlinedAt: !5202)
!5219 = !DILocalVariable(name: "i", arg: 2, scope: !5200, file: !5201, line: 43, type: !173)
!5220 = !DILocation(line: 43, column: 29, scope: !5200, inlinedAt: !5202)
!5221 = !DILocalVariable(name: "r", arg: 1, scope: !5188, file: !126, line: 134, type: !5191)
!5222 = !DILocation(line: 134, column: 45, scope: !5188)
!5223 = !DILocalVariable(name: "n", arg: 2, scope: !5188, file: !126, line: 134, type: !173)
!5224 = !DILocation(line: 134, column: 52, scope: !5188)
!5225 = !DILocation(line: 136, column: 14, scope: !5188)
!5226 = !DILocation(line: 136, column: 17, scope: !5188)
!5227 = !DILocation(line: 136, column: 23, scope: !5188)
!5228 = !DILocation(line: 45, column: 26, scope: !5200, inlinedAt: !5202)
!5229 = !DILocation(line: 86, column: 20, scope: !5206, inlinedAt: !5214)
!5230 = !DILocation(line: 86, column: 23, scope: !5206, inlinedAt: !5214)
!5231 = !DILocation(line: 86, column: 2, scope: !5206, inlinedAt: !5214)
!5232 = !DILocation(line: 87, column: 2, scope: !5206, inlinedAt: !5214)
!5233 = !DILocation(line: 46, column: 18, scope: !5200, inlinedAt: !5202)
!5234 = !DILocation(line: 46, column: 21, scope: !5200, inlinedAt: !5202)
!5235 = !DILocation(line: 41, column: 2, scope: !5236, inlinedAt: !5199)
!5236 = distinct !DILexicalBlock(scope: !5193, file: !5194, line: 41, column: 2)
!5237 = !DILocation(line: 137, column: 1, scope: !5188)
!5238 = distinct !DISubprogram(name: "kasan_check_write", scope: !5239, file: !5239, line: 38, type: !5240, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5239 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!530, !5210, !7}
!5242 = !DILocalVariable(name: "p", arg: 1, scope: !5238, file: !5239, line: 38, type: !5210)
!5243 = !DILocation(line: 38, column: 59, scope: !5238)
!5244 = !DILocalVariable(name: "size", arg: 2, scope: !5238, file: !5239, line: 38, type: !7)
!5245 = !DILocation(line: 38, column: 75, scope: !5238)
!5246 = !DILocation(line: 40, column: 2, scope: !5238)
!5247 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5248, file: !5248, line: 178, type: !5249, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5248 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5249 = !DISubroutineType(types: !5250)
!5250 = !{null, !5210, !619, !173}
!5251 = !DILocalVariable(name: "ptr", arg: 1, scope: !5247, file: !5248, line: 178, type: !5210)
!5252 = !DILocation(line: 178, column: 60, scope: !5247)
!5253 = !DILocalVariable(name: "size", arg: 2, scope: !5247, file: !5248, line: 178, type: !619)
!5254 = !DILocation(line: 178, column: 72, scope: !5247)
!5255 = !DILocalVariable(name: "type", arg: 3, scope: !5247, file: !5248, line: 179, type: !173)
!5256 = !DILocation(line: 179, column: 15, scope: !5247)
!5257 = !DILocation(line: 179, column: 23, scope: !5247)
!5258 = distinct !DISubprogram(name: "get_order", scope: !5259, file: !5259, line: 29, type: !5260, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5259 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!173, !155}
!5262 = !DILocalVariable(name: "x", arg: 1, scope: !5263, file: !5264, line: 366, type: !210)
!5263 = distinct !DISubprogram(name: "fls64", scope: !5264, file: !5264, line: 366, type: !5265, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5264 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!173, !210}
!5267 = !DILocation(line: 366, column: 40, scope: !5263, inlinedAt: !5268)
!5268 = distinct !DILocation(line: 46, column: 9, scope: !5258)
!5269 = !DILocalVariable(name: "bitpos", scope: !5263, file: !5264, line: 368, type: !173)
!5270 = !DILocation(line: 368, column: 6, scope: !5263, inlinedAt: !5268)
!5271 = !DILocalVariable(name: "size", arg: 1, scope: !5258, file: !5259, line: 29, type: !155)
!5272 = !DILocation(line: 29, column: 63, scope: !5258)
!5273 = !DILocation(line: 31, column: 27, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5258, file: !5259, line: 31, column: 6)
!5275 = !DILocation(line: 31, column: 6, scope: !5274)
!5276 = !DILocation(line: 31, column: 6, scope: !5258)
!5277 = !DILocation(line: 32, column: 8, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !5259, line: 32, column: 7)
!5279 = distinct !DILexicalBlock(scope: !5274, file: !5259, line: 31, column: 34)
!5280 = !DILocation(line: 32, column: 7, scope: !5279)
!5281 = !DILocation(line: 33, column: 4, scope: !5278)
!5282 = !DILocation(line: 35, column: 7, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5279, file: !5259, line: 35, column: 7)
!5284 = !DILocation(line: 35, column: 12, scope: !5283)
!5285 = !DILocation(line: 35, column: 7, scope: !5279)
!5286 = !DILocation(line: 36, column: 4, scope: !5283)
!5287 = !DILocation(line: 38, column: 10, scope: !5279)
!5288 = !DILocation(line: 38, column: 28, scope: !5279)
!5289 = !DILocation(line: 38, column: 41, scope: !5279)
!5290 = !DILocation(line: 38, column: 3, scope: !5279)
!5291 = !DILocation(line: 41, column: 6, scope: !5258)
!5292 = !DILocation(line: 42, column: 7, scope: !5258)
!5293 = !DILocation(line: 46, column: 15, scope: !5258)
!5294 = !DILocation(line: 374, column: 2, scope: !5263, inlinedAt: !5268)
!5295 = !DILocation(line: 376, column: 14, scope: !5263, inlinedAt: !5268)
!5296 = !{i32 251940}
!5297 = !DILocation(line: 377, column: 9, scope: !5263, inlinedAt: !5268)
!5298 = !DILocation(line: 377, column: 16, scope: !5263, inlinedAt: !5268)
!5299 = !DILocation(line: 46, column: 2, scope: !5258)
!5300 = !DILocation(line: 48, column: 1, scope: !5258)
!5301 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5302, file: !5302, line: 30, type: !5303, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5302 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!173, !209}
!5305 = !DILocation(line: 366, column: 40, scope: !5263, inlinedAt: !5306)
!5306 = distinct !DILocation(line: 32, column: 9, scope: !5301)
!5307 = !DILocation(line: 368, column: 6, scope: !5263, inlinedAt: !5306)
!5308 = !DILocalVariable(name: "n", arg: 1, scope: !5301, file: !5302, line: 30, type: !209)
!5309 = !DILocation(line: 30, column: 21, scope: !5301)
!5310 = !DILocation(line: 32, column: 15, scope: !5301)
!5311 = !DILocation(line: 374, column: 2, scope: !5263, inlinedAt: !5306)
!5312 = !DILocation(line: 376, column: 14, scope: !5263, inlinedAt: !5306)
!5313 = !DILocation(line: 377, column: 9, scope: !5263, inlinedAt: !5306)
!5314 = !DILocation(line: 377, column: 16, scope: !5263, inlinedAt: !5306)
!5315 = !DILocation(line: 32, column: 18, scope: !5301)
!5316 = !DILocation(line: 32, column: 2, scope: !5301)
!5317 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2675, file: !2675, line: 137, type: !5318, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!144, !965, !3013, !619, !137}
!5320 = !DILocalVariable(name: "s", arg: 1, scope: !5317, file: !2675, line: 137, type: !965)
!5321 = !DILocation(line: 137, column: 54, scope: !5317)
!5322 = !DILocalVariable(name: "object", arg: 2, scope: !5317, file: !2675, line: 137, type: !3013)
!5323 = !DILocation(line: 137, column: 69, scope: !5317)
!5324 = !DILocalVariable(name: "size", arg: 3, scope: !5317, file: !2675, line: 138, type: !619)
!5325 = !DILocation(line: 138, column: 12, scope: !5317)
!5326 = !DILocalVariable(name: "flags", arg: 4, scope: !5317, file: !2675, line: 138, type: !137)
!5327 = !DILocation(line: 138, column: 24, scope: !5317)
!5328 = !DILocation(line: 140, column: 17, scope: !5317)
!5329 = !DILocation(line: 140, column: 2, scope: !5317)
!5330 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5331, file: !5331, line: 666, type: !5332, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5331 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5332 = !DISubroutineType(types: !5333)
!5333 = !{!155}
!5334 = !DILocalVariable(name: "f", scope: !5330, file: !5331, line: 668, type: !155)
!5335 = !DILocation(line: 668, column: 16, scope: !5330)
!5336 = !DILocation(line: 670, column: 6, scope: !5330)
!5337 = !DILocation(line: 670, column: 4, scope: !5330)
!5338 = !DILocation(line: 671, column: 2, scope: !5330)
!5339 = !DILocation(line: 672, column: 9, scope: !5330)
!5340 = !DILocation(line: 672, column: 2, scope: !5330)
!5341 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5331, file: !5331, line: 646, type: !5332, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5342 = !DILocalVariable(name: "__ret", scope: !5343, file: !5331, line: 648, type: !155)
!5343 = distinct !DILexicalBlock(scope: !5341, file: !5331, line: 648, column: 9)
!5344 = !DILocation(line: 648, column: 9, scope: !5343)
!5345 = !DILocalVariable(name: "__edi", scope: !5343, file: !5331, line: 648, type: !155)
!5346 = !DILocalVariable(name: "__esi", scope: !5343, file: !5331, line: 648, type: !155)
!5347 = !DILocalVariable(name: "__edx", scope: !5343, file: !5331, line: 648, type: !155)
!5348 = !DILocalVariable(name: "__ecx", scope: !5343, file: !5331, line: 648, type: !155)
!5349 = !DILocalVariable(name: "__eax", scope: !5343, file: !5331, line: 648, type: !155)
!5350 = !DILocation(line: 648, column: 9, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !5331, line: 648, column: 9)
!5352 = distinct !DILexicalBlock(scope: !5343, file: !5331, line: 648, column: 9)
!5353 = !{i32 -2145692942, i32 -2145690627, i32 -2145690393, i32 -2145690342, i32 -2145690314, i32 -2145690289, i32 -2145690605, i32 -2145690592, i32 -2145690154, i32 -2145690035, i32 -2145690500, i32 -2145690473, i32 -2145690445, i32 -2145690415}
!5354 = !DILocalVariable(name: "__mask", scope: !5355, file: !5331, line: 648, type: !155)
!5355 = distinct !DILexicalBlock(scope: !5351, file: !5331, line: 648, column: 9)
!5356 = !DILocation(line: 648, column: 9, scope: !5355)
!5357 = !DILocation(line: 648, column: 9, scope: !5352)
!5358 = !DILocation(line: 648, column: 2, scope: !5341)
!5359 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5331, file: !5331, line: 656, type: !2450, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5360 = !DILocalVariable(name: "__edi", scope: !5361, file: !5331, line: 658, type: !155)
!5361 = distinct !DILexicalBlock(scope: !5359, file: !5331, line: 658, column: 2)
!5362 = !DILocation(line: 658, column: 2, scope: !5361)
!5363 = !DILocalVariable(name: "__esi", scope: !5361, file: !5331, line: 658, type: !155)
!5364 = !DILocalVariable(name: "__edx", scope: !5361, file: !5331, line: 658, type: !155)
!5365 = !DILocalVariable(name: "__ecx", scope: !5361, file: !5331, line: 658, type: !155)
!5366 = !DILocalVariable(name: "__eax", scope: !5361, file: !5331, line: 658, type: !155)
!5367 = !{i32 -2145685848, i32 -2145685116, i32 -2145684882, i32 -2145684831, i32 -2145684803, i32 -2145684778, i32 -2145685094, i32 -2145685081, i32 -2145684643, i32 -2145684524, i32 -2145684989, i32 -2145684962, i32 -2145684934, i32 -2145684904}
!5368 = !DILocation(line: 659, column: 1, scope: !5359)
!5369 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5331, file: !5331, line: 651, type: !5370, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{null, !155}
!5372 = !DILocalVariable(name: "f", arg: 1, scope: !5369, file: !5331, line: 651, type: !155)
!5373 = !DILocation(line: 651, column: 65, scope: !5369)
!5374 = !DILocalVariable(name: "__edi", scope: !5375, file: !5331, line: 653, type: !155)
!5375 = distinct !DILexicalBlock(scope: !5369, file: !5331, line: 653, column: 2)
!5376 = !DILocation(line: 653, column: 2, scope: !5375)
!5377 = !DILocalVariable(name: "__esi", scope: !5375, file: !5331, line: 653, type: !155)
!5378 = !DILocalVariable(name: "__edx", scope: !5375, file: !5331, line: 653, type: !155)
!5379 = !DILocalVariable(name: "__ecx", scope: !5375, file: !5331, line: 653, type: !155)
!5380 = !DILocalVariable(name: "__eax", scope: !5375, file: !5331, line: 653, type: !155)
!5381 = !{i32 -2145688475, i32 -2145687725, i32 -2145687491, i32 -2145687440, i32 -2145687412, i32 -2145687387, i32 -2145687703, i32 -2145687690, i32 -2145687252, i32 -2145687133, i32 -2145687598, i32 -2145687571, i32 -2145687543, i32 -2145687513}
!5382 = !DILocation(line: 654, column: 1, scope: !5369)
!5383 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !5384, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{null, !2879, !144}
!5386 = !DILocalVariable(name: "dev", arg: 1, scope: !5383, file: !67, line: 660, type: !2879)
!5387 = !DILocation(line: 660, column: 51, scope: !5383)
!5388 = !DILocalVariable(name: "data", arg: 2, scope: !5383, file: !67, line: 660, type: !144)
!5389 = !DILocation(line: 660, column: 62, scope: !5383)
!5390 = !DILocation(line: 662, column: 21, scope: !5383)
!5391 = !DILocation(line: 662, column: 2, scope: !5383)
!5392 = !DILocation(line: 662, column: 7, scope: !5383)
!5393 = !DILocation(line: 662, column: 19, scope: !5383)
!5394 = !DILocation(line: 663, column: 1, scope: !5383)
!5395 = distinct !DISubprogram(name: "yurex_read", scope: !3, file: !3, line: 398, type: !1515, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5396 = !DILocation(line: 407, column: 64, scope: !4957, inlinedAt: !5397)
!5397 = distinct !DILocation(line: 416, column: 2, scope: !5395)
!5398 = !DILocation(line: 407, column: 84, scope: !4957, inlinedAt: !5397)
!5399 = !DILocation(line: 327, column: 67, scope: !4064, inlinedAt: !5400)
!5400 = distinct !DILocation(line: 414, column: 2, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 414, column: 2)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 414, column: 2)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 414, column: 2)
!5404 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 414, column: 2)
!5405 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 414, column: 2)
!5406 = !DILocalVariable(name: "file", arg: 1, scope: !5395, file: !3, line: 398, type: !400)
!5407 = !DILocation(line: 398, column: 40, scope: !5395)
!5408 = !DILocalVariable(name: "buffer", arg: 2, scope: !5395, file: !3, line: 398, type: !525)
!5409 = !DILocation(line: 398, column: 59, scope: !5395)
!5410 = !DILocalVariable(name: "count", arg: 3, scope: !5395, file: !3, line: 398, type: !619)
!5411 = !DILocation(line: 398, column: 74, scope: !5395)
!5412 = !DILocalVariable(name: "ppos", arg: 4, scope: !5395, file: !3, line: 399, type: !1517)
!5413 = !DILocation(line: 399, column: 14, scope: !5395)
!5414 = !DILocalVariable(name: "dev", scope: !5395, file: !3, line: 401, type: !3821)
!5415 = !DILocation(line: 401, column: 20, scope: !5395)
!5416 = !DILocalVariable(name: "len", scope: !5395, file: !3, line: 402, type: !173)
!5417 = !DILocation(line: 402, column: 6, scope: !5395)
!5418 = !DILocalVariable(name: "in_buffer", scope: !5395, file: !3, line: 403, type: !5419)
!5419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 160, elements: !2748)
!5420 = !DILocation(line: 403, column: 7, scope: !5395)
!5421 = !DILocalVariable(name: "flags", scope: !5395, file: !3, line: 404, type: !155)
!5422 = !DILocation(line: 404, column: 16, scope: !5395)
!5423 = !DILocation(line: 406, column: 8, scope: !5395)
!5424 = !DILocation(line: 406, column: 14, scope: !5395)
!5425 = !DILocation(line: 406, column: 6, scope: !5395)
!5426 = !DILocation(line: 408, column: 14, scope: !5395)
!5427 = !DILocation(line: 408, column: 19, scope: !5395)
!5428 = !DILocation(line: 408, column: 2, scope: !5395)
!5429 = !DILocation(line: 409, column: 6, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 409, column: 6)
!5431 = !DILocation(line: 409, column: 11, scope: !5430)
!5432 = !DILocation(line: 409, column: 6, scope: !5395)
!5433 = !DILocation(line: 410, column: 17, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 409, column: 25)
!5435 = !DILocation(line: 410, column: 22, scope: !5434)
!5436 = !DILocation(line: 410, column: 3, scope: !5434)
!5437 = !DILocation(line: 411, column: 3, scope: !5434)
!5438 = !DILocation(line: 414, column: 2, scope: !5395)
!5439 = !DILocation(line: 414, column: 2, scope: !5405)
!5440 = !DILocalVariable(name: "__dummy", scope: !5441, file: !3, line: 414, type: !155)
!5441 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 414, column: 2)
!5442 = !DILocation(line: 414, column: 2, scope: !5441)
!5443 = !DILocalVariable(name: "__dummy2", scope: !5441, file: !3, line: 414, type: !155)
!5444 = !DILocation(line: 414, column: 2, scope: !5404)
!5445 = !DILocation(line: 414, column: 2, scope: !5403)
!5446 = !DILocation(line: 414, column: 2, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 414, column: 2)
!5448 = !DILocalVariable(name: "__dummy", scope: !5449, file: !3, line: 414, type: !155)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 414, column: 2)
!5450 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 414, column: 2)
!5451 = !DILocation(line: 414, column: 2, scope: !5449)
!5452 = !DILocalVariable(name: "__dummy2", scope: !5449, file: !3, line: 414, type: !155)
!5453 = !DILocation(line: 414, column: 2, scope: !5450)
!5454 = !DILocation(line: 414, column: 2, scope: !5402)
!5455 = !{i32 -2142448003}
!5456 = !DILocation(line: 414, column: 2, scope: !5401)
!5457 = !DILocation(line: 329, column: 10, scope: !4064, inlinedAt: !5400)
!5458 = !DILocation(line: 329, column: 16, scope: !4064, inlinedAt: !5400)
!5459 = !DILocation(line: 415, column: 17, scope: !5395)
!5460 = !DILocation(line: 415, column: 42, scope: !5395)
!5461 = !DILocation(line: 415, column: 47, scope: !5395)
!5462 = !DILocation(line: 415, column: 8, scope: !5395)
!5463 = !DILocation(line: 415, column: 6, scope: !5395)
!5464 = !DILocation(line: 416, column: 26, scope: !5395)
!5465 = !DILocation(line: 416, column: 31, scope: !5395)
!5466 = !DILocation(line: 416, column: 37, scope: !5395)
!5467 = !DILocation(line: 409, column: 2, scope: !5060, inlinedAt: !5397)
!5468 = !DILocation(line: 409, column: 2, scope: !5065, inlinedAt: !5397)
!5469 = !DILocation(line: 409, column: 2, scope: !5066, inlinedAt: !5397)
!5470 = !DILocation(line: 409, column: 2, scope: !5073, inlinedAt: !5397)
!5471 = !DILocation(line: 409, column: 2, scope: !5076, inlinedAt: !5397)
!5472 = !DILocation(line: 417, column: 16, scope: !5395)
!5473 = !DILocation(line: 417, column: 21, scope: !5395)
!5474 = !DILocation(line: 417, column: 2, scope: !5395)
!5475 = !DILocalVariable(name: "__ret_warn_on", scope: !5476, file: !3, line: 419, type: !173)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 419, column: 6)
!5477 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 419, column: 6)
!5478 = !DILocation(line: 419, column: 6, scope: !5476)
!5479 = !DILocation(line: 419, column: 6, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 419, column: 6)
!5481 = !DILocation(line: 419, column: 6, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 419, column: 6)
!5483 = !DILocation(line: 419, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 419, column: 6)
!5485 = !DILocation(line: 419, column: 6, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 419, column: 6)
!5487 = !{i32 -2142447343, i32 -2142447314, i32 -2142447268, i32 -2142447210, i32 -2142447156, i32 -2142447102, i32 -2142447047, i32 -2142447016}
!5488 = !DILocation(line: 419, column: 6, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 419, column: 6)
!5490 = !{i32 -2142446599, i32 -2142446592, i32 -2142446540, i32 -2142446509, i32 -2142446479}
!5491 = !DILocation(line: 419, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 419, column: 6)
!5493 = !DILocation(line: 419, column: 6, scope: !5477)
!5494 = !DILocation(line: 419, column: 6, scope: !5395)
!5495 = !DILocation(line: 420, column: 3, scope: !5477)
!5496 = !DILocation(line: 422, column: 33, scope: !5395)
!5497 = !DILocation(line: 422, column: 41, scope: !5395)
!5498 = !DILocation(line: 422, column: 48, scope: !5395)
!5499 = !DILocation(line: 422, column: 54, scope: !5395)
!5500 = !DILocation(line: 422, column: 65, scope: !5395)
!5501 = !DILocation(line: 422, column: 9, scope: !5395)
!5502 = !DILocation(line: 422, column: 2, scope: !5395)
!5503 = !DILocation(line: 423, column: 1, scope: !5395)
!5504 = distinct !DISubprogram(name: "yurex_write", scope: !3, file: !3, line: 425, type: !1520, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5505 = !DILocalVariable(name: "addr", arg: 1, scope: !5506, file: !5507, line: 138, type: !3013)
!5506 = distinct !DISubprogram(name: "check_copy_size", scope: !5507, file: !5507, line: 138, type: !5508, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5507 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!530, !3013, !619, !530}
!5510 = !DILocation(line: 138, column: 29, scope: !5506, inlinedAt: !5511)
!5511 = distinct !DILocation(line: 191, column: 6, scope: !5512, inlinedAt: !5517)
!5512 = distinct !DILexicalBlock(scope: !5514, file: !5513, line: 191, column: 6)
!5513 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5514 = distinct !DISubprogram(name: "copy_from_user", scope: !5513, file: !5513, line: 189, type: !5515, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!155, !144, !3013, !155}
!5517 = distinct !DILocation(line: 450, column: 6, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 450, column: 6)
!5519 = !DILocalVariable(name: "bytes", arg: 2, scope: !5506, file: !5507, line: 138, type: !619)
!5520 = !DILocation(line: 138, column: 42, scope: !5506, inlinedAt: !5511)
!5521 = !DILocalVariable(name: "is_source", arg: 3, scope: !5506, file: !5507, line: 138, type: !530)
!5522 = !DILocation(line: 138, column: 54, scope: !5506, inlinedAt: !5511)
!5523 = !DILocalVariable(name: "sz", scope: !5506, file: !5507, line: 140, type: !173)
!5524 = !DILocation(line: 140, column: 6, scope: !5506, inlinedAt: !5511)
!5525 = !DILocalVariable(name: "__ret_warn_on", scope: !5526, file: !5507, line: 150, type: !173)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !5507, line: 150, column: 6)
!5527 = distinct !DILexicalBlock(scope: !5506, file: !5507, line: 150, column: 6)
!5528 = !DILocation(line: 150, column: 6, scope: !5526, inlinedAt: !5511)
!5529 = !DILocalVariable(name: "to", arg: 1, scope: !5514, file: !5513, line: 189, type: !144)
!5530 = !DILocation(line: 189, column: 22, scope: !5514, inlinedAt: !5517)
!5531 = !DILocalVariable(name: "from", arg: 2, scope: !5514, file: !5513, line: 189, type: !3013)
!5532 = !DILocation(line: 189, column: 45, scope: !5514, inlinedAt: !5517)
!5533 = !DILocalVariable(name: "n", arg: 3, scope: !5514, file: !5513, line: 189, type: !155)
!5534 = !DILocation(line: 189, column: 65, scope: !5514, inlinedAt: !5517)
!5535 = !DILocation(line: 15, column: 9, scope: !4074, inlinedAt: !5536)
!5536 = distinct !DILocation(line: 434, column: 2, scope: !5504)
!5537 = !DILocation(line: 15, column: 9, scope: !4082, inlinedAt: !5536)
!5538 = !DILocation(line: 15, column: 9, scope: !4085, inlinedAt: !5536)
!5539 = !DILocalVariable(name: "file", arg: 1, scope: !5504, file: !3, line: 425, type: !400)
!5540 = !DILocation(line: 425, column: 41, scope: !5504)
!5541 = !DILocalVariable(name: "user_buffer", arg: 2, scope: !5504, file: !3, line: 425, type: !499)
!5542 = !DILocation(line: 425, column: 66, scope: !5504)
!5543 = !DILocalVariable(name: "count", arg: 3, scope: !5504, file: !3, line: 426, type: !619)
!5544 = !DILocation(line: 426, column: 14, scope: !5504)
!5545 = !DILocalVariable(name: "ppos", arg: 4, scope: !5504, file: !3, line: 426, type: !1517)
!5546 = !DILocation(line: 426, column: 29, scope: !5504)
!5547 = !DILocalVariable(name: "dev", scope: !5504, file: !3, line: 428, type: !3821)
!5548 = !DILocation(line: 428, column: 20, scope: !5504)
!5549 = !DILocalVariable(name: "i", scope: !5504, file: !3, line: 429, type: !173)
!5550 = !DILocation(line: 429, column: 6, scope: !5504)
!5551 = !DILocalVariable(name: "set", scope: !5504, file: !3, line: 429, type: !173)
!5552 = !DILocation(line: 429, column: 9, scope: !5504)
!5553 = !DILocalVariable(name: "retval", scope: !5504, file: !3, line: 429, type: !173)
!5554 = !DILocation(line: 429, column: 18, scope: !5504)
!5555 = !DILocalVariable(name: "buffer", scope: !5504, file: !3, line: 430, type: !5556)
!5556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 136, elements: !5557)
!5557 = !{!5558}
!5558 = !DISubrange(count: 17)
!5559 = !DILocation(line: 430, column: 7, scope: !5504)
!5560 = !DILocalVariable(name: "data", scope: !5504, file: !3, line: 431, type: !525)
!5561 = !DILocation(line: 431, column: 8, scope: !5504)
!5562 = !DILocation(line: 431, column: 15, scope: !5504)
!5563 = !DILocalVariable(name: "c", scope: !5504, file: !3, line: 432, type: !211)
!5564 = !DILocation(line: 432, column: 21, scope: !5504)
!5565 = !DILocalVariable(name: "c2", scope: !5504, file: !3, line: 432, type: !211)
!5566 = !DILocation(line: 432, column: 24, scope: !5504)
!5567 = !DILocalVariable(name: "timeout", scope: !5504, file: !3, line: 433, type: !162)
!5568 = !DILocation(line: 433, column: 14, scope: !5504)
!5569 = !DILocalVariable(name: "wait", scope: !5504, file: !3, line: 434, type: !4101)
!5570 = !DILocation(line: 434, column: 2, scope: !5504)
!5571 = !DILocalVariable(name: "__UNIQUE_ID___x214", scope: !5572, file: !3, line: 436, type: !155)
!5572 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 436, column: 10)
!5573 = !DILocation(line: 436, column: 10, scope: !5572)
!5574 = !DILocalVariable(name: "__UNIQUE_ID___y215", scope: !5572, file: !3, line: 436, type: !619)
!5575 = !DILocation(line: 436, column: 8, scope: !5504)
!5576 = !DILocation(line: 437, column: 8, scope: !5504)
!5577 = !DILocation(line: 437, column: 14, scope: !5504)
!5578 = !DILocation(line: 437, column: 6, scope: !5504)
!5579 = !DILocation(line: 440, column: 6, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 440, column: 6)
!5581 = !DILocation(line: 440, column: 12, scope: !5580)
!5582 = !DILocation(line: 440, column: 6, scope: !5504)
!5583 = !DILocation(line: 441, column: 3, scope: !5580)
!5584 = !DILocation(line: 443, column: 14, scope: !5504)
!5585 = !DILocation(line: 443, column: 19, scope: !5504)
!5586 = !DILocation(line: 443, column: 2, scope: !5504)
!5587 = !DILocation(line: 444, column: 6, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 444, column: 6)
!5589 = !DILocation(line: 444, column: 11, scope: !5588)
!5590 = !DILocation(line: 444, column: 6, scope: !5504)
!5591 = !DILocation(line: 445, column: 17, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 444, column: 25)
!5593 = !DILocation(line: 445, column: 22, scope: !5592)
!5594 = !DILocation(line: 445, column: 3, scope: !5592)
!5595 = !DILocation(line: 446, column: 10, scope: !5592)
!5596 = !DILocation(line: 447, column: 3, scope: !5592)
!5597 = !DILocation(line: 450, column: 21, scope: !5518)
!5598 = !DILocation(line: 450, column: 29, scope: !5518)
!5599 = !DILocation(line: 450, column: 42, scope: !5518)
!5600 = !DILocation(line: 191, column: 6, scope: !5512, inlinedAt: !5517)
!5601 = !DILocation(line: 141, column: 6, scope: !5602, inlinedAt: !5511)
!5602 = distinct !DILexicalBlock(scope: !5506, file: !5507, line: 141, column: 6)
!5603 = !DILocation(line: 0, scope: !5602, inlinedAt: !5511)
!5604 = !DILocation(line: 141, column: 6, scope: !5506, inlinedAt: !5511)
!5605 = !DILocation(line: 142, column: 29, scope: !5606, inlinedAt: !5511)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !5507, line: 142, column: 7)
!5607 = distinct !DILexicalBlock(scope: !5602, file: !5507, line: 141, column: 39)
!5608 = !DILocation(line: 142, column: 8, scope: !5606, inlinedAt: !5511)
!5609 = !DILocation(line: 142, column: 7, scope: !5607, inlinedAt: !5511)
!5610 = !DILocation(line: 143, column: 18, scope: !5606, inlinedAt: !5511)
!5611 = !DILocation(line: 143, column: 22, scope: !5606, inlinedAt: !5511)
!5612 = !DILocation(line: 143, column: 4, scope: !5606, inlinedAt: !5511)
!5613 = !DILocation(line: 144, column: 12, scope: !5614, inlinedAt: !5511)
!5614 = distinct !DILexicalBlock(scope: !5606, file: !5507, line: 144, column: 12)
!5615 = !DILocation(line: 144, column: 12, scope: !5606, inlinedAt: !5511)
!5616 = !DILocation(line: 145, column: 4, scope: !5614, inlinedAt: !5511)
!5617 = !DILocation(line: 147, column: 4, scope: !5614, inlinedAt: !5511)
!5618 = !DILocation(line: 148, column: 3, scope: !5607, inlinedAt: !5511)
!5619 = !DILocation(line: 150, column: 6, scope: !5620, inlinedAt: !5511)
!5620 = distinct !DILexicalBlock(scope: !5526, file: !5507, line: 150, column: 6)
!5621 = !DILocation(line: 150, column: 6, scope: !5622, inlinedAt: !5511)
!5622 = distinct !DILexicalBlock(scope: !5623, file: !5507, line: 150, column: 6)
!5623 = distinct !DILexicalBlock(scope: !5620, file: !5507, line: 150, column: 6)
!5624 = !{i32 -2145601526, i32 -2145601497, i32 -2145601451, i32 -2145601393, i32 -2145601339, i32 -2145601285, i32 -2145601230, i32 -2145601199}
!5625 = !DILocation(line: 150, column: 6, scope: !5626, inlinedAt: !5511)
!5626 = distinct !DILexicalBlock(scope: !5623, file: !5507, line: 150, column: 6)
!5627 = !{i32 -2145600779, i32 -2145600772, i32 -2145600720, i32 -2145600689, i32 -2145600659}
!5628 = !DILocation(line: 150, column: 6, scope: !5623, inlinedAt: !5511)
!5629 = !DILocation(line: 150, column: 6, scope: !5527, inlinedAt: !5511)
!5630 = !DILocation(line: 150, column: 6, scope: !5506, inlinedAt: !5511)
!5631 = !DILocation(line: 151, column: 3, scope: !5527, inlinedAt: !5511)
!5632 = !DILocation(line: 152, column: 20, scope: !5506, inlinedAt: !5511)
!5633 = !DILocation(line: 152, column: 26, scope: !5506, inlinedAt: !5511)
!5634 = !DILocation(line: 152, column: 33, scope: !5506, inlinedAt: !5511)
!5635 = !DILocation(line: 152, column: 2, scope: !5506, inlinedAt: !5511)
!5636 = !DILocation(line: 153, column: 2, scope: !5506, inlinedAt: !5511)
!5637 = !DILocation(line: 154, column: 1, scope: !5506, inlinedAt: !5511)
!5638 = !DILocation(line: 191, column: 6, scope: !5514, inlinedAt: !5517)
!5639 = !DILocation(line: 192, column: 23, scope: !5512, inlinedAt: !5517)
!5640 = !DILocation(line: 192, column: 27, scope: !5512, inlinedAt: !5517)
!5641 = !DILocation(line: 192, column: 33, scope: !5512, inlinedAt: !5517)
!5642 = !DILocation(line: 192, column: 7, scope: !5512, inlinedAt: !5517)
!5643 = !DILocation(line: 192, column: 5, scope: !5512, inlinedAt: !5517)
!5644 = !DILocation(line: 192, column: 3, scope: !5512, inlinedAt: !5517)
!5645 = !DILocation(line: 193, column: 9, scope: !5514, inlinedAt: !5517)
!5646 = !DILocation(line: 450, column: 6, scope: !5518)
!5647 = !DILocation(line: 450, column: 6, scope: !5504)
!5648 = !DILocation(line: 451, column: 17, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 450, column: 50)
!5650 = !DILocation(line: 451, column: 22, scope: !5649)
!5651 = !DILocation(line: 451, column: 3, scope: !5649)
!5652 = !DILocation(line: 452, column: 10, scope: !5649)
!5653 = !DILocation(line: 453, column: 3, scope: !5649)
!5654 = !DILocation(line: 455, column: 9, scope: !5504)
!5655 = !DILocation(line: 455, column: 2, scope: !5504)
!5656 = !DILocation(line: 455, column: 16, scope: !5504)
!5657 = !DILocation(line: 456, column: 9, scope: !5504)
!5658 = !DILocation(line: 456, column: 14, scope: !5504)
!5659 = !DILocation(line: 456, column: 2, scope: !5504)
!5660 = !DILocation(line: 458, column: 10, scope: !5504)
!5661 = !DILocation(line: 458, column: 2, scope: !5504)
!5662 = !DILocation(line: 461, column: 25, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 458, column: 21)
!5664 = !DILocation(line: 461, column: 3, scope: !5663)
!5665 = !DILocation(line: 461, column: 8, scope: !5663)
!5666 = !DILocation(line: 461, column: 23, scope: !5663)
!5667 = !DILocation(line: 462, column: 25, scope: !5663)
!5668 = !DILocation(line: 462, column: 3, scope: !5663)
!5669 = !DILocation(line: 462, column: 8, scope: !5663)
!5670 = !DILocation(line: 462, column: 23, scope: !5663)
!5671 = !DILocation(line: 463, column: 3, scope: !5663)
!5672 = !DILocation(line: 463, column: 8, scope: !5663)
!5673 = !DILocation(line: 463, column: 23, scope: !5663)
!5674 = !DILocation(line: 464, column: 3, scope: !5663)
!5675 = !DILocation(line: 467, column: 25, scope: !5663)
!5676 = !DILocation(line: 467, column: 3, scope: !5663)
!5677 = !DILocation(line: 467, column: 8, scope: !5663)
!5678 = !DILocation(line: 467, column: 23, scope: !5663)
!5679 = !DILocation(line: 468, column: 3, scope: !5663)
!5680 = !DILocation(line: 468, column: 8, scope: !5663)
!5681 = !DILocation(line: 468, column: 23, scope: !5663)
!5682 = !DILocation(line: 469, column: 3, scope: !5663)
!5683 = !DILocation(line: 469, column: 8, scope: !5663)
!5684 = !DILocation(line: 469, column: 23, scope: !5663)
!5685 = !DILocation(line: 470, column: 3, scope: !5663)
!5686 = !DILocation(line: 472, column: 7, scope: !5663)
!5687 = !DILocation(line: 472, column: 3, scope: !5663)
!5688 = !DILocation(line: 475, column: 7, scope: !5663)
!5689 = !DILocation(line: 476, column: 28, scope: !5663)
!5690 = !DILocation(line: 476, column: 12, scope: !5663)
!5691 = !DILocation(line: 476, column: 10, scope: !5663)
!5692 = !DILocation(line: 476, column: 5, scope: !5663)
!5693 = !DILocation(line: 477, column: 3, scope: !5663)
!5694 = !DILocation(line: 477, column: 8, scope: !5663)
!5695 = !DILocation(line: 477, column: 23, scope: !5663)
!5696 = !DILocation(line: 478, column: 10, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 478, column: 3)
!5698 = !DILocation(line: 478, column: 8, scope: !5697)
!5699 = !DILocation(line: 478, column: 15, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 478, column: 3)
!5701 = !DILocation(line: 478, column: 17, scope: !5700)
!5702 = !DILocation(line: 478, column: 3, scope: !5697)
!5703 = !DILocation(line: 479, column: 27, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 478, column: 27)
!5705 = !DILocation(line: 479, column: 28, scope: !5704)
!5706 = !DILocation(line: 479, column: 34, scope: !5704)
!5707 = !DILocation(line: 479, column: 26, scope: !5704)
!5708 = !DILocation(line: 479, column: 4, scope: !5704)
!5709 = !DILocation(line: 479, column: 9, scope: !5704)
!5710 = !DILocation(line: 479, column: 21, scope: !5704)
!5711 = !DILocation(line: 479, column: 24, scope: !5704)
!5712 = !DILocation(line: 480, column: 6, scope: !5704)
!5713 = !DILocation(line: 481, column: 3, scope: !5704)
!5714 = !DILocation(line: 478, column: 23, scope: !5700)
!5715 = !DILocation(line: 478, column: 3, scope: !5700)
!5716 = distinct !{!5716, !5702, !5717}
!5717 = !DILocation(line: 481, column: 3, scope: !5697)
!5718 = !DILocation(line: 482, column: 3, scope: !5663)
!5719 = !DILocation(line: 482, column: 13, scope: !5663)
!5720 = !DILocation(line: 483, column: 3, scope: !5663)
!5721 = !DILocation(line: 485, column: 17, scope: !5663)
!5722 = !DILocation(line: 485, column: 22, scope: !5663)
!5723 = !DILocation(line: 485, column: 3, scope: !5663)
!5724 = !DILocation(line: 486, column: 3, scope: !5663)
!5725 = !DILocation(line: 490, column: 19, scope: !5504)
!5726 = !DILocation(line: 490, column: 24, scope: !5504)
!5727 = !DILocation(line: 490, column: 2, scope: !5504)
!5728 = !DILocation(line: 493, column: 26, scope: !5504)
!5729 = !DILocation(line: 493, column: 31, scope: !5504)
!5730 = !DILocation(line: 493, column: 11, scope: !5504)
!5731 = !DILocation(line: 493, column: 9, scope: !5504)
!5732 = !DILocation(line: 494, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 494, column: 6)
!5734 = !DILocation(line: 494, column: 13, scope: !5733)
!5735 = !DILocation(line: 494, column: 6, scope: !5504)
!5736 = !DILocation(line: 495, column: 13, scope: !5733)
!5737 = !DILocation(line: 495, column: 11, scope: !5733)
!5738 = !DILocation(line: 495, column: 3, scope: !5733)
!5739 = !DILocation(line: 496, column: 15, scope: !5504)
!5740 = !DILocation(line: 496, column: 20, scope: !5504)
!5741 = !DILocation(line: 496, column: 2, scope: !5504)
!5742 = !DILocation(line: 498, column: 16, scope: !5504)
!5743 = !DILocation(line: 498, column: 21, scope: !5504)
!5744 = !DILocation(line: 498, column: 2, scope: !5504)
!5745 = !DILocation(line: 500, column: 6, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 500, column: 6)
!5747 = !DILocation(line: 500, column: 13, scope: !5746)
!5748 = !DILocation(line: 500, column: 6, scope: !5504)
!5749 = !DILocation(line: 501, column: 3, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5746, file: !3, line: 500, column: 18)
!5751 = !DILocation(line: 504, column: 3, scope: !5750)
!5752 = !DILocation(line: 506, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 506, column: 6)
!5754 = !DILocation(line: 506, column: 10, scope: !5753)
!5755 = !DILocation(line: 506, column: 13, scope: !5753)
!5756 = !DILocation(line: 506, column: 6, scope: !5504)
!5757 = !DILocation(line: 507, column: 14, scope: !5753)
!5758 = !DILocation(line: 507, column: 3, scope: !5753)
!5759 = !DILocation(line: 507, column: 8, scope: !5753)
!5760 = !DILocation(line: 507, column: 12, scope: !5753)
!5761 = !DILocation(line: 508, column: 9, scope: !5504)
!5762 = !DILocation(line: 508, column: 19, scope: !5504)
!5763 = !DILocation(line: 508, column: 2, scope: !5504)
!5764 = !DILabel(scope: !5504, name: "error", file: !3, line: 510)
!5765 = !DILocation(line: 510, column: 1, scope: !5504)
!5766 = !DILocation(line: 511, column: 9, scope: !5504)
!5767 = !DILocation(line: 511, column: 2, scope: !5504)
!5768 = !DILocation(line: 512, column: 1, scope: !5504)
!5769 = distinct !DISubprogram(name: "yurex_open", scope: !3, file: !3, line: 350, type: !1561, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5770 = !DILocalVariable(name: "inode", arg: 1, scope: !5769, file: !3, line: 350, type: !464)
!5771 = !DILocation(line: 350, column: 37, scope: !5769)
!5772 = !DILocalVariable(name: "file", arg: 2, scope: !5769, file: !3, line: 350, type: !400)
!5773 = !DILocation(line: 350, column: 57, scope: !5769)
!5774 = !DILocalVariable(name: "dev", scope: !5769, file: !3, line: 352, type: !3821)
!5775 = !DILocation(line: 352, column: 20, scope: !5769)
!5776 = !DILocalVariable(name: "interface", scope: !5769, file: !3, line: 353, type: !3713)
!5777 = !DILocation(line: 353, column: 24, scope: !5769)
!5778 = !DILocalVariable(name: "subminor", scope: !5769, file: !3, line: 354, type: !173)
!5779 = !DILocation(line: 354, column: 6, scope: !5769)
!5780 = !DILocalVariable(name: "retval", scope: !5769, file: !3, line: 355, type: !173)
!5781 = !DILocation(line: 355, column: 6, scope: !5769)
!5782 = !DILocation(line: 357, column: 20, scope: !5769)
!5783 = !DILocation(line: 357, column: 13, scope: !5769)
!5784 = !DILocation(line: 357, column: 11, scope: !5769)
!5785 = !DILocation(line: 359, column: 48, scope: !5769)
!5786 = !DILocation(line: 359, column: 14, scope: !5769)
!5787 = !DILocation(line: 359, column: 12, scope: !5769)
!5788 = !DILocation(line: 360, column: 7, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 360, column: 6)
!5790 = !DILocation(line: 360, column: 6, scope: !5769)
!5791 = !DILocation(line: 362, column: 20, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 360, column: 18)
!5793 = !DILocation(line: 361, column: 3, scope: !5792)
!5794 = !DILocation(line: 363, column: 10, scope: !5792)
!5795 = !DILocation(line: 364, column: 3, scope: !5792)
!5796 = !DILocation(line: 367, column: 25, scope: !5769)
!5797 = !DILocation(line: 367, column: 8, scope: !5769)
!5798 = !DILocation(line: 367, column: 6, scope: !5769)
!5799 = !DILocation(line: 368, column: 7, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 368, column: 6)
!5801 = !DILocation(line: 368, column: 6, scope: !5769)
!5802 = !DILocation(line: 369, column: 10, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 368, column: 12)
!5804 = !DILocation(line: 370, column: 3, scope: !5803)
!5805 = !DILocation(line: 374, column: 12, scope: !5769)
!5806 = !DILocation(line: 374, column: 17, scope: !5769)
!5807 = !DILocation(line: 374, column: 2, scope: !5769)
!5808 = !DILocation(line: 377, column: 14, scope: !5769)
!5809 = !DILocation(line: 377, column: 19, scope: !5769)
!5810 = !DILocation(line: 377, column: 2, scope: !5769)
!5811 = !DILocation(line: 378, column: 23, scope: !5769)
!5812 = !DILocation(line: 378, column: 2, scope: !5769)
!5813 = !DILocation(line: 378, column: 8, scope: !5769)
!5814 = !DILocation(line: 378, column: 21, scope: !5769)
!5815 = !DILocation(line: 379, column: 16, scope: !5769)
!5816 = !DILocation(line: 379, column: 21, scope: !5769)
!5817 = !DILocation(line: 379, column: 2, scope: !5769)
!5818 = !DILabel(scope: !5769, name: "exit", file: !3, line: 381)
!5819 = !DILocation(line: 381, column: 1, scope: !5769)
!5820 = !DILocation(line: 382, column: 9, scope: !5769)
!5821 = !DILocation(line: 382, column: 2, scope: !5769)
!5822 = distinct !DISubprogram(name: "yurex_release", scope: !3, file: !3, line: 385, type: !1561, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5823 = !DILocalVariable(name: "inode", arg: 1, scope: !5822, file: !3, line: 385, type: !464)
!5824 = !DILocation(line: 385, column: 40, scope: !5822)
!5825 = !DILocalVariable(name: "file", arg: 2, scope: !5822, file: !3, line: 385, type: !400)
!5826 = !DILocation(line: 385, column: 60, scope: !5822)
!5827 = !DILocalVariable(name: "dev", scope: !5822, file: !3, line: 387, type: !3821)
!5828 = !DILocation(line: 387, column: 20, scope: !5822)
!5829 = !DILocation(line: 389, column: 8, scope: !5822)
!5830 = !DILocation(line: 389, column: 14, scope: !5822)
!5831 = !DILocation(line: 389, column: 6, scope: !5822)
!5832 = !DILocation(line: 390, column: 6, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 390, column: 6)
!5834 = !DILocation(line: 390, column: 10, scope: !5833)
!5835 = !DILocation(line: 390, column: 6, scope: !5822)
!5836 = !DILocation(line: 391, column: 3, scope: !5833)
!5837 = !DILocation(line: 394, column: 12, scope: !5822)
!5838 = !DILocation(line: 394, column: 17, scope: !5822)
!5839 = !DILocation(line: 394, column: 2, scope: !5822)
!5840 = !DILocation(line: 395, column: 2, scope: !5822)
!5841 = !DILocation(line: 396, column: 1, scope: !5822)
!5842 = distinct !DISubprogram(name: "yurex_fasync", scope: !3, file: !3, line: 342, type: !1575, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5843 = !DILocalVariable(name: "fd", arg: 1, scope: !5842, file: !3, line: 342, type: !173)
!5844 = !DILocation(line: 342, column: 29, scope: !5842)
!5845 = !DILocalVariable(name: "file", arg: 2, scope: !5842, file: !3, line: 342, type: !400)
!5846 = !DILocation(line: 342, column: 46, scope: !5842)
!5847 = !DILocalVariable(name: "on", arg: 3, scope: !5842, file: !3, line: 342, type: !173)
!5848 = !DILocation(line: 342, column: 56, scope: !5842)
!5849 = !DILocalVariable(name: "dev", scope: !5842, file: !3, line: 344, type: !3821)
!5850 = !DILocation(line: 344, column: 20, scope: !5842)
!5851 = !DILocation(line: 346, column: 8, scope: !5842)
!5852 = !DILocation(line: 346, column: 14, scope: !5842)
!5853 = !DILocation(line: 346, column: 6, scope: !5842)
!5854 = !DILocation(line: 347, column: 23, scope: !5842)
!5855 = !DILocation(line: 347, column: 27, scope: !5842)
!5856 = !DILocation(line: 347, column: 33, scope: !5842)
!5857 = !DILocation(line: 347, column: 38, scope: !5842)
!5858 = !DILocation(line: 347, column: 43, scope: !5842)
!5859 = !DILocation(line: 347, column: 9, scope: !5842)
!5860 = !DILocation(line: 347, column: 2, scope: !5842)
!5861 = distinct !DISubprogram(name: "copy_overflow", scope: !5507, file: !5507, line: 132, type: !5862, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5862 = !DISubroutineType(types: !5863)
!5863 = !{null, !173, !155}
!5864 = !DILocalVariable(name: "size", arg: 1, scope: !5861, file: !5507, line: 132, type: !173)
!5865 = !DILocation(line: 132, column: 38, scope: !5861)
!5866 = !DILocalVariable(name: "count", arg: 2, scope: !5861, file: !5507, line: 132, type: !155)
!5867 = !DILocation(line: 132, column: 58, scope: !5861)
!5868 = !DILocalVariable(name: "__ret_warn_on", scope: !5869, file: !5507, line: 134, type: !173)
!5869 = distinct !DILexicalBlock(scope: !5861, file: !5507, line: 134, column: 2)
!5870 = !DILocation(line: 134, column: 2, scope: !5869)
!5871 = !DILocation(line: 134, column: 2, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5869, file: !5507, line: 134, column: 2)
!5873 = !DILocation(line: 134, column: 2, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5872, file: !5507, line: 134, column: 2)
!5875 = !DILocation(line: 134, column: 2, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5874, file: !5507, line: 134, column: 2)
!5877 = !DILocation(line: 134, column: 2, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5874, file: !5507, line: 134, column: 2)
!5879 = !DILocation(line: 134, column: 2, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5878, file: !5507, line: 134, column: 2)
!5881 = !DILocation(line: 134, column: 2, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5878, file: !5507, line: 134, column: 2)
!5883 = !{i32 -2145603350, i32 -2145603321, i32 -2145603275, i32 -2145603217, i32 -2145603163, i32 -2145603109, i32 -2145603054, i32 -2145603023}
!5884 = !DILocation(line: 134, column: 2, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5878, file: !5507, line: 134, column: 2)
!5886 = !{i32 -2145602603, i32 -2145602596, i32 -2145602544, i32 -2145602513, i32 -2145602483}
!5887 = !DILocation(line: 134, column: 2, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5878, file: !5507, line: 134, column: 2)
!5889 = !DILocation(line: 134, column: 2, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5874, file: !5507, line: 134, column: 2)
!5891 = !DILocation(line: 135, column: 1, scope: !5861)
!5892 = distinct !DISubprogram(name: "check_object_size", scope: !5507, file: !5507, line: 122, type: !5893, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{null, !3013, !155, !530}
!5895 = !DILocalVariable(name: "ptr", arg: 1, scope: !5892, file: !5507, line: 122, type: !3013)
!5896 = !DILocation(line: 122, column: 50, scope: !5892)
!5897 = !DILocalVariable(name: "n", arg: 2, scope: !5892, file: !5507, line: 122, type: !155)
!5898 = !DILocation(line: 122, column: 69, scope: !5892)
!5899 = !DILocalVariable(name: "to_user", arg: 3, scope: !5892, file: !5507, line: 123, type: !530)
!5900 = !DILocation(line: 123, column: 15, scope: !5892)
!5901 = !DILocation(line: 124, column: 3, scope: !5892)
!5902 = distinct !DISubprogram(name: "iminor", scope: !38, file: !38, line: 875, type: !5903, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5903 = !DISubroutineType(types: !5904)
!5904 = !{!7, !1398}
!5905 = !DILocalVariable(name: "inode", arg: 1, scope: !5902, file: !38, line: 875, type: !1398)
!5906 = !DILocation(line: 875, column: 51, scope: !5902)
!5907 = !DILocation(line: 877, column: 9, scope: !5902)
!5908 = !DILocation(line: 877, column: 2, scope: !5902)
!5909 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !5910, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{!144, !3713}
!5912 = !DILocalVariable(name: "intf", arg: 1, scope: !5909, file: !6, line: 263, type: !3713)
!5913 = !DILocation(line: 263, column: 60, scope: !5909)
!5914 = !DILocation(line: 265, column: 26, scope: !5909)
!5915 = !DILocation(line: 265, column: 32, scope: !5909)
!5916 = !DILocation(line: 265, column: 9, scope: !5909)
!5917 = !DILocation(line: 265, column: 2, scope: !5909)
!5918 = distinct !DISubprogram(name: "kref_get", scope: !3173, file: !3173, line: 43, type: !4764, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5919 = !DILocalVariable(name: "kref", arg: 1, scope: !5918, file: !3173, line: 43, type: !4766)
!5920 = !DILocation(line: 43, column: 42, scope: !5918)
!5921 = !DILocation(line: 45, column: 16, scope: !5918)
!5922 = !DILocation(line: 45, column: 22, scope: !5918)
!5923 = !DILocation(line: 45, column: 2, scope: !5918)
!5924 = !DILocation(line: 46, column: 1, scope: !5918)
!5925 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5926, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{!144, !5928}
!5928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5929, size: 64)
!5929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2880)
!5930 = !DILocalVariable(name: "dev", arg: 1, scope: !5925, file: !67, line: 655, type: !5928)
!5931 = !DILocation(line: 655, column: 58, scope: !5925)
!5932 = !DILocation(line: 657, column: 9, scope: !5925)
!5933 = !DILocation(line: 657, column: 14, scope: !5925)
!5934 = !DILocation(line: 657, column: 2, scope: !5925)
!5935 = distinct !DISubprogram(name: "refcount_inc", scope: !126, file: !126, line: 265, type: !5936, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{null, !5191}
!5938 = !DILocalVariable(name: "r", arg: 1, scope: !5935, file: !126, line: 265, type: !5191)
!5939 = !DILocation(line: 265, column: 45, scope: !5935)
!5940 = !DILocation(line: 267, column: 17, scope: !5935)
!5941 = !DILocation(line: 267, column: 2, scope: !5935)
!5942 = !DILocation(line: 268, column: 1, scope: !5935)
!5943 = distinct !DISubprogram(name: "__refcount_inc", scope: !126, file: !126, line: 248, type: !5944, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{null, !5191, !751}
!5946 = !DILocalVariable(name: "r", arg: 1, scope: !5943, file: !126, line: 248, type: !5191)
!5947 = !DILocation(line: 248, column: 47, scope: !5943)
!5948 = !DILocalVariable(name: "oldp", arg: 2, scope: !5943, file: !126, line: 248, type: !751)
!5949 = !DILocation(line: 248, column: 55, scope: !5943)
!5950 = !DILocation(line: 250, column: 20, scope: !5943)
!5951 = !DILocation(line: 250, column: 23, scope: !5943)
!5952 = !DILocation(line: 250, column: 2, scope: !5943)
!5953 = !DILocation(line: 251, column: 1, scope: !5943)
!5954 = distinct !DISubprogram(name: "__refcount_add", scope: !126, file: !126, line: 191, type: !5955, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5955 = !DISubroutineType(types: !5956)
!5956 = !{null, !173, !5191, !751}
!5957 = !DILocalVariable(name: "i", arg: 1, scope: !5958, file: !5194, line: 182, type: !173)
!5958 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5194, file: !5194, line: 182, type: !5959, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!173, !173, !5197}
!5961 = !DILocation(line: 182, column: 54, scope: !5958, inlinedAt: !5962)
!5962 = distinct !DILocation(line: 143, column: 9, scope: !5963, inlinedAt: !5964)
!5963 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5201, file: !5201, line: 140, type: !5959, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5964 = distinct !DILocation(line: 193, column: 12, scope: !5954)
!5965 = !DILocalVariable(name: "v", arg: 2, scope: !5958, file: !5194, line: 182, type: !5197)
!5966 = !DILocation(line: 182, column: 67, scope: !5958, inlinedAt: !5962)
!5967 = !DILocalVariable(name: "__ret", scope: !5968, file: !5194, line: 184, type: !173)
!5968 = distinct !DILexicalBlock(scope: !5958, file: !5194, line: 184, column: 9)
!5969 = !DILocation(line: 184, column: 9, scope: !5968, inlinedAt: !5962)
!5970 = !DILocalVariable(name: "v", arg: 1, scope: !5971, file: !5207, line: 99, type: !5210)
!5971 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5207, file: !5207, line: 99, type: !5208, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5972 = !DILocation(line: 99, column: 79, scope: !5971, inlinedAt: !5973)
!5973 = distinct !DILocation(line: 142, column: 2, scope: !5963, inlinedAt: !5964)
!5974 = !DILocalVariable(name: "size", arg: 2, scope: !5971, file: !5207, line: 99, type: !619)
!5975 = !DILocation(line: 99, column: 89, scope: !5971, inlinedAt: !5973)
!5976 = !DILocalVariable(name: "i", arg: 1, scope: !5963, file: !5201, line: 140, type: !173)
!5977 = !DILocation(line: 140, column: 30, scope: !5963, inlinedAt: !5964)
!5978 = !DILocalVariable(name: "v", arg: 2, scope: !5963, file: !5201, line: 140, type: !5197)
!5979 = !DILocation(line: 140, column: 43, scope: !5963, inlinedAt: !5964)
!5980 = !DILocalVariable(name: "i", arg: 1, scope: !5954, file: !126, line: 191, type: !173)
!5981 = !DILocation(line: 191, column: 39, scope: !5954)
!5982 = !DILocalVariable(name: "r", arg: 2, scope: !5954, file: !126, line: 191, type: !5191)
!5983 = !DILocation(line: 191, column: 54, scope: !5954)
!5984 = !DILocalVariable(name: "oldp", arg: 3, scope: !5954, file: !126, line: 191, type: !751)
!5985 = !DILocation(line: 191, column: 62, scope: !5954)
!5986 = !DILocalVariable(name: "old", scope: !5954, file: !126, line: 193, type: !173)
!5987 = !DILocation(line: 193, column: 6, scope: !5954)
!5988 = !DILocation(line: 193, column: 37, scope: !5954)
!5989 = !DILocation(line: 193, column: 41, scope: !5954)
!5990 = !DILocation(line: 193, column: 44, scope: !5954)
!5991 = !DILocation(line: 142, column: 31, scope: !5963, inlinedAt: !5964)
!5992 = !DILocation(line: 101, column: 20, scope: !5971, inlinedAt: !5973)
!5993 = !DILocation(line: 101, column: 23, scope: !5971, inlinedAt: !5973)
!5994 = !DILocation(line: 101, column: 2, scope: !5971, inlinedAt: !5973)
!5995 = !DILocation(line: 102, column: 2, scope: !5971, inlinedAt: !5973)
!5996 = !DILocation(line: 143, column: 39, scope: !5963, inlinedAt: !5964)
!5997 = !DILocation(line: 143, column: 42, scope: !5963, inlinedAt: !5964)
!5998 = !{i32 -2146434960}
!5999 = !DILocation(line: 195, column: 6, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5954, file: !126, line: 195, column: 6)
!6001 = !DILocation(line: 195, column: 6, scope: !5954)
!6002 = !DILocation(line: 196, column: 11, scope: !6000)
!6003 = !DILocation(line: 196, column: 4, scope: !6000)
!6004 = !DILocation(line: 196, column: 9, scope: !6000)
!6005 = !DILocation(line: 196, column: 3, scope: !6000)
!6006 = !DILocation(line: 198, column: 6, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !5954, file: !126, line: 198, column: 6)
!6008 = !DILocation(line: 198, column: 6, scope: !5954)
!6009 = !DILocation(line: 199, column: 26, scope: !6007)
!6010 = !DILocation(line: 199, column: 3, scope: !6007)
!6011 = !DILocation(line: 200, column: 11, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6007, file: !126, line: 200, column: 11)
!6013 = !DILocation(line: 200, column: 11, scope: !6007)
!6014 = !DILocation(line: 201, column: 26, scope: !6012)
!6015 = !DILocation(line: 201, column: 3, scope: !6012)
!6016 = !DILocation(line: 202, column: 1, scope: !5954)
!6017 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !126, file: !126, line: 331, type: !6018, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!6018 = !DISubroutineType(types: !6019)
!6019 = !{!530, !5191}
!6020 = !DILocalVariable(name: "r", arg: 1, scope: !6017, file: !126, line: 331, type: !5191)
!6021 = !DILocation(line: 331, column: 67, scope: !6017)
!6022 = !DILocation(line: 333, column: 33, scope: !6017)
!6023 = !DILocation(line: 333, column: 9, scope: !6017)
!6024 = !DILocation(line: 333, column: 2, scope: !6017)
!6025 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !126, file: !126, line: 313, type: !6026, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!6026 = !DISubroutineType(types: !6027)
!6027 = !{!530, !5191, !751}
!6028 = !DILocalVariable(name: "r", arg: 1, scope: !6025, file: !126, line: 313, type: !5191)
!6029 = !DILocation(line: 313, column: 69, scope: !6025)
!6030 = !DILocalVariable(name: "oldp", arg: 2, scope: !6025, file: !126, line: 313, type: !751)
!6031 = !DILocation(line: 313, column: 77, scope: !6025)
!6032 = !DILocation(line: 315, column: 36, scope: !6025)
!6033 = !DILocation(line: 315, column: 39, scope: !6025)
!6034 = !DILocation(line: 315, column: 9, scope: !6025)
!6035 = !DILocation(line: 315, column: 2, scope: !6025)
!6036 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !126, file: !126, line: 270, type: !6037, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!530, !173, !5191, !751}
!6039 = !DILocalVariable(name: "i", arg: 1, scope: !6040, file: !5194, line: 188, type: !173)
!6040 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5194, file: !5194, line: 188, type: !5959, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!6041 = !DILocation(line: 188, column: 54, scope: !6040, inlinedAt: !6042)
!6042 = distinct !DILocation(line: 221, column: 9, scope: !6043, inlinedAt: !6044)
!6043 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5201, file: !5201, line: 218, type: !5959, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!6044 = distinct !DILocation(line: 272, column: 12, scope: !6036)
!6045 = !DILocalVariable(name: "v", arg: 2, scope: !6040, file: !5194, line: 188, type: !5197)
!6046 = !DILocation(line: 188, column: 67, scope: !6040, inlinedAt: !6042)
!6047 = !DILocalVariable(name: "__ret", scope: !6048, file: !5194, line: 190, type: !173)
!6048 = distinct !DILexicalBlock(scope: !6040, file: !5194, line: 190, column: 9)
!6049 = !DILocation(line: 190, column: 9, scope: !6048, inlinedAt: !6042)
!6050 = !DILocation(line: 99, column: 79, scope: !5971, inlinedAt: !6051)
!6051 = distinct !DILocation(line: 220, column: 2, scope: !6043, inlinedAt: !6044)
!6052 = !DILocation(line: 99, column: 89, scope: !5971, inlinedAt: !6051)
!6053 = !DILocalVariable(name: "i", arg: 1, scope: !6043, file: !5201, line: 218, type: !173)
!6054 = !DILocation(line: 218, column: 30, scope: !6043, inlinedAt: !6044)
!6055 = !DILocalVariable(name: "v", arg: 2, scope: !6043, file: !5201, line: 218, type: !5197)
!6056 = !DILocation(line: 218, column: 43, scope: !6043, inlinedAt: !6044)
!6057 = !DILocalVariable(name: "i", arg: 1, scope: !6036, file: !126, line: 270, type: !173)
!6058 = !DILocation(line: 270, column: 61, scope: !6036)
!6059 = !DILocalVariable(name: "r", arg: 2, scope: !6036, file: !126, line: 270, type: !5191)
!6060 = !DILocation(line: 270, column: 76, scope: !6036)
!6061 = !DILocalVariable(name: "oldp", arg: 3, scope: !6036, file: !126, line: 270, type: !751)
!6062 = !DILocation(line: 270, column: 84, scope: !6036)
!6063 = !DILocalVariable(name: "old", scope: !6036, file: !126, line: 272, type: !173)
!6064 = !DILocation(line: 272, column: 6, scope: !6036)
!6065 = !DILocation(line: 272, column: 37, scope: !6036)
!6066 = !DILocation(line: 272, column: 41, scope: !6036)
!6067 = !DILocation(line: 272, column: 44, scope: !6036)
!6068 = !DILocation(line: 220, column: 31, scope: !6043, inlinedAt: !6044)
!6069 = !DILocation(line: 101, column: 20, scope: !5971, inlinedAt: !6051)
!6070 = !DILocation(line: 101, column: 23, scope: !5971, inlinedAt: !6051)
!6071 = !DILocation(line: 101, column: 2, scope: !5971, inlinedAt: !6051)
!6072 = !DILocation(line: 102, column: 2, scope: !5971, inlinedAt: !6051)
!6073 = !DILocation(line: 221, column: 39, scope: !6043, inlinedAt: !6044)
!6074 = !DILocation(line: 221, column: 42, scope: !6043, inlinedAt: !6044)
!6075 = !{i32 -2146433608}
!6076 = !DILocation(line: 274, column: 6, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6036, file: !126, line: 274, column: 6)
!6078 = !DILocation(line: 274, column: 6, scope: !6036)
!6079 = !DILocation(line: 275, column: 11, scope: !6077)
!6080 = !DILocation(line: 275, column: 4, scope: !6077)
!6081 = !DILocation(line: 275, column: 9, scope: !6077)
!6082 = !DILocation(line: 275, column: 3, scope: !6077)
!6083 = !DILocation(line: 277, column: 6, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6036, file: !126, line: 277, column: 6)
!6085 = !DILocation(line: 277, column: 13, scope: !6084)
!6086 = !DILocation(line: 277, column: 10, scope: !6084)
!6087 = !DILocation(line: 277, column: 6, scope: !6036)
!6088 = !DILocation(line: 278, column: 3, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6084, file: !126, line: 277, column: 16)
!6090 = !{i32 -2144284938}
!6091 = !DILocation(line: 279, column: 3, scope: !6089)
!6092 = !DILocation(line: 282, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6036, file: !126, line: 282, column: 6)
!6094 = !DILocation(line: 282, column: 6, scope: !6036)
!6095 = !DILocation(line: 283, column: 26, scope: !6093)
!6096 = !DILocation(line: 283, column: 3, scope: !6093)
!6097 = !DILocation(line: 285, column: 2, scope: !6036)
!6098 = !DILocation(line: 286, column: 1, scope: !6036)
