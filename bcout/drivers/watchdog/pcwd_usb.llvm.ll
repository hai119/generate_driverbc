; ModuleID = '../bcout/drivers/watchdog/pcwd_usb.llvm.bc'
source_filename = "drivers/watchdog/pcwd_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_usb_pcwd_driver_init6:\09\09\09"
module asm ".long\09usb_pcwd_driver_init - .\09\09\09"
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
%struct.usb_pcwd_private = type { %struct.usb_device*, %struct.usb_interface*, i32, i8*, i64, i64, %struct.urb*, i8, i8, i8, %struct.atomic_t, i32, %struct.mutex }
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
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
%struct.kmem_cache = type opaque
%struct.watchdog_info = type { i32, i32, [32 x i8] }

@__UNIQUE_ID_author212 = internal constant [49 x i8] c"pcwd_usb.author=Wim Van Sebroeck <wim@iguana.be>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description213 = internal constant [54 x i8] c"pcwd_usb.description=Berkshire USB-PC Watchdog driver\00", section ".modinfo", align 1, !dbg !3896
@__UNIQUE_ID_file214 = internal constant [40 x i8] c"pcwd_usb.file=drivers/watchdog/pcwd_usb\00", section ".modinfo", align 1, !dbg !3901
@__UNIQUE_ID_license215 = internal constant [21 x i8] c"pcwd_usb.license=GPL\00", section ".modinfo", align 1, !dbg !3906
@__param_str_heartbeat = internal constant [19 x i8] c"pcwd_usb.heartbeat\00", align 16, !dbg !3987
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@heartbeat = internal global i32 0, align 4, !dbg !3992
@__param_heartbeat = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_heartbeat, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @heartbeat to i8*) } }, section "__param", align 8, !dbg !3911
@__UNIQUE_ID_heartbeattype216 = internal constant [32 x i8] c"pcwd_usb.parmtype=heartbeat:int\00", section ".modinfo", align 1, !dbg !3963
@__UNIQUE_ID_heartbeat217 = internal constant [120 x i8] c"pcwd_usb.parm=heartbeat:Watchdog heartbeat in seconds. (0<heartbeat<65536 or 0=delay-time from dip-switches, default=0)\00", section ".modinfo", align 1, !dbg !3966
@__param_str_nowayout = internal constant [18 x i8] c"pcwd_usb.nowayout\00", align 16, !dbg !3994
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@nowayout = internal global i8 0, align 1, !dbg !3999
@__param_nowayout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_nowayout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon { i8* @nowayout } }, section "__param", align 8, !dbg !3971
@__UNIQUE_ID_nowayouttype218 = internal constant [32 x i8] c"pcwd_usb.parmtype=nowayout:bool\00", section ".modinfo", align 1, !dbg !3973
@__UNIQUE_ID_nowayout219 = internal constant [75 x i8] c"pcwd_usb.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1, !dbg !3975
@__UNIQUE_ID___addressable_usb_pcwd_driver_init220 = internal global i8* bitcast (i32 ()* @usb_pcwd_driver_init to i8*), section ".discard.addressable", align 8, !dbg !3980
@usb_pcwd_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_pcwd_probe, void (%struct.usb_interface*)* @usb_pcwd_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @usb_pcwd_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4001
@__exitcall_usb_pcwd_driver_exit = internal global void ()* @usb_pcwd_driver_exit, section ".exitcall.exit", align 8, !dbg !3982
@.str = private unnamed_addr constant [9 x i8] c"pcwd_usb\00", align 1
@usb_pcwd_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3224, i16 4416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4123
@cards_found = internal global i32 0, align 4, !dbg !4065
@.str.1 = private unnamed_addr constant [48 x i8] c"\013pcwd_usb: This driver only supports 1 device\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013pcwd_usb: The device isn't a Human Interface Device\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\013pcwd_usb: Couldn't find an INTR & IN endpoint\0A\00", align 1
@usb_pcwd_device = internal global %struct.usb_pcwd_private* null, align 8, !dbg !4067
@usb_pcwd_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4062
@.str.4 = private unnamed_addr constant [15 x i8] c"&usb_pcwd->mtx\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"\013pcwd_usb: Out of memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\013pcwd_usb: Problem registering interrupt URB\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%u.%02u\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"<card no answer>\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"\016pcwd_usb: Found card (Firmware: %s) with temp option\0A\00", align 1
@.str.10 = private unnamed_addr constant [86 x i8] c"\016pcwd_usb: Option switches (0x%02x): Temperature Reset Enable=%s, Power On Delay=%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@heartbeat_tbl = internal constant [8 x i32] [i32 5, i32 10, i32 30, i32 60, i32 300, i32 600, i32 1800, i32 3600], align 16, !dbg !4069
@.str.13 = private unnamed_addr constant [65 x i8] c"\016pcwd_usb: heartbeat value must be 0<heartbeat<65536, using %d\0A\00", align 1
@usb_pcwd_notifier = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @usb_pcwd_notify_sys, %struct.notifier_block* null, i32 0 }, align 8, !dbg !4073
@.str.14 = private unnamed_addr constant [54 x i8] c"\013pcwd_usb: cannot register reboot notifier (err=%d)\0A\00", align 1
@usb_pcwd_temperature_miscdev = internal global %struct.miscdevice { i32 131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct.file_operations* @usb_pcwd_temperature_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !4086
@.str.15 = private unnamed_addr constant [58 x i8] c"\013pcwd_usb: cannot register miscdev on minor=%d (err=%d)\0A\00", align 1
@usb_pcwd_miscdev = internal global %struct.miscdevice { i32 130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct.file_operations* @usb_pcwd_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !4102
@.str.16 = private unnamed_addr constant [57 x i8] c"\016pcwd_usb: initialized. heartbeat=%d sec (nowayout=%d)\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"\013pcwd_usb: can't resubmit intr, usb_submit_urb failed with result %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"\013pcwd_usb: Card did not acknowledge disable attempt\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@usb_pcwd_temperature_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* @usb_pcwd_temperature_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @usb_pcwd_temperature_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @usb_pcwd_temperature_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4100
@.str.21 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@usb_pcwd_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* @usb_pcwd_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @usb_pcwd_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @usb_pcwd_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @usb_pcwd_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4104
@expect_release = internal global i8 0, align 1, !dbg !4106
@usb_pcwd_ioctl.ident = internal constant %struct.watchdog_info { i32 33152, i32 1, [32 x i8] c"pcwd_usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4, !dbg !4108
@.str.24 = private unnamed_addr constant [53 x i8] c"\013pcwd_usb: Card did not acknowledge enable attempt\0A\00", align 1
@is_active = internal global i64 0, align 8, !dbg !4119
@.str.25 = private unnamed_addr constant [54 x i8] c"\012pcwd_usb: Unexpected close, not stopping watchdog!\0A\00", align 1
@disconnect_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @disconnect_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @disconnect_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4121
@.str.26 = private unnamed_addr constant [42 x i8] c"\016pcwd_usb: USB PC Watchdog disconnected\0A\00", align 1
@llvm.used = appending global [13 x i8*] [i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author212, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_description213, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file214, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license215, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_heartbeat to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_heartbeattype216, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8], [120 x i8]* @__UNIQUE_ID_heartbeat217, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_nowayout to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_nowayouttype218, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_nowayout219, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_usb_pcwd_driver_init220 to i8*), i8* bitcast (void ()* @usb_pcwd_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_usb_pcwd_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_driver_init() #0 section ".init.text" !dbg !4135 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @usb_pcwd_driver, %struct.module* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #10, !dbg !4138
  ret i32 %call, !dbg !4138
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @usb_pcwd_driver_exit() #0 section ".exit.text" !dbg !4139 {
entry:
  call void @usb_deregister(%struct.usb_driver* @usb_pcwd_driver) #10, !dbg !4140
  ret void, !dbg !4140
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_probe(%struct.usb_interface* %interface, %struct.usb_device_id* %id) #2 !dbg !4064 {
entry:
  %retval = alloca i32, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %iface_desc = alloca %struct.usb_host_interface*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %usb_pcwd = alloca %struct.usb_pcwd_private*, align 8
  %pipe = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %got_fw_rev = alloca i32, align 4
  %fw_rev_major = alloca i8, align 1
  %fw_rev_minor = alloca i8, align 1
  %fw_ver_str = alloca [20 x i8], align 16
  %option_switches = alloca i8, align 1
  %dummy = alloca i8, align 1
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4143, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4145, metadata !DIExpression()), !dbg !4146
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4147
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #10, !dbg !4148
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4146
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_desc, metadata !4149, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !4151, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd, metadata !4154, metadata !DIExpression()), !dbg !4155
  store %struct.usb_pcwd_private* null, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4155
  call void @llvm.dbg.declare(metadata i32* %pipe, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4158, metadata !DIExpression()), !dbg !4159
  store i32 -12, i32* %retval1, align 4, !dbg !4159
  call void @llvm.dbg.declare(metadata i32* %got_fw_rev, metadata !4160, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.declare(metadata i8* %fw_rev_major, metadata !4162, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.declare(metadata i8* %fw_rev_minor, metadata !4164, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.declare(metadata [20 x i8]* %fw_ver_str, metadata !4166, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.declare(metadata i8* %option_switches, metadata !4169, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.declare(metadata i8* %dummy, metadata !4171, metadata !DIExpression()), !dbg !4172
  %1 = load i32, i32* @cards_found, align 4, !dbg !4173
  %inc = add i32 %1, 1, !dbg !4173
  store i32 %inc, i32* @cards_found, align 4, !dbg !4173
  %2 = load i32, i32* @cards_found, align 4, !dbg !4174
  %cmp = icmp sgt i32 %2, 1, !dbg !4176
  br i1 %cmp, label %if.then, label %if.end, !dbg !4177

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !4178
  store i32 -19, i32* %retval, align 4, !dbg !4180
  br label %return, !dbg !4180

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4181
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %3, i32 0, i32 1, !dbg !4182
  %4 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4182
  store %struct.usb_host_interface* %4, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4183
  %5 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4184
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %5, i32 0, i32 0, !dbg !4186
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 5, !dbg !4187
  %6 = load i8, i8* %bInterfaceClass, align 1, !dbg !4187
  %conv = zext i8 %6 to i32, !dbg !4184
  %cmp3 = icmp eq i32 %conv, 3, !dbg !4188
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !4189

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !4190
  store i32 -19, i32* %retval, align 4, !dbg !4192
  br label %return, !dbg !4192

if.end7:                                          ; preds = %if.end
  %7 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4193
  %desc8 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %7, i32 0, i32 0, !dbg !4195
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc8, i32 0, i32 4, !dbg !4196
  %8 = load i8, i8* %bNumEndpoints, align 4, !dbg !4196
  %conv9 = zext i8 %8 to i32, !dbg !4193
  %cmp10 = icmp slt i32 %conv9, 1, !dbg !4197
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4198

if.then12:                                        ; preds = %if.end7
  store i32 -19, i32* %retval, align 4, !dbg !4199
  br label %return, !dbg !4199

if.end13:                                         ; preds = %if.end7
  %9 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4200
  %endpoint14 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %9, i32 0, i32 3, !dbg !4201
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint14, align 8, !dbg !4201
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i64 0, !dbg !4200
  %desc15 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4202
  store %struct.usb_endpoint_descriptor* %desc15, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4203
  %11 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4204
  %call16 = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %11) #10, !dbg !4206
  %tobool = icmp ne i32 %call16, 0, !dbg !4206
  br i1 %tobool, label %if.end19, label %if.then17, !dbg !4207

if.then17:                                        ; preds = %if.end13
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !4208
  store i32 -19, i32* %retval, align 4, !dbg !4210
  br label %return, !dbg !4210

if.end19:                                         ; preds = %if.end13
  %12 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4211
  %13 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4211
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %13, i32 0, i32 2, !dbg !4211
  %14 = load i8, i8* %bEndpointAddress, align 1, !dbg !4211
  %conv20 = zext i8 %14 to i32, !dbg !4211
  %call21 = call i32 @__create_pipe(%struct.usb_device* %12, i32 %conv20) #10, !dbg !4211
  %or = or i32 1073741824, %call21, !dbg !4211
  %or22 = or i32 %or, 128, !dbg !4211
  store i32 %or22, i32* %pipe, align 4, !dbg !4212
  %call23 = call i8* @kzalloc(i64 96, i32 3264) #10, !dbg !4213
  %15 = bitcast i8* %call23 to %struct.usb_pcwd_private*, !dbg !4213
  store %struct.usb_pcwd_private* %15, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4214
  %16 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4215
  %cmp24 = icmp eq %struct.usb_pcwd_private* %16, null, !dbg !4217
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !4218

if.then26:                                        ; preds = %if.end19
  br label %error, !dbg !4219

if.end27:                                         ; preds = %if.end19
  %17 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4220
  store %struct.usb_pcwd_private* %17, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !4221
  br label %do.body, !dbg !4222

do.body:                                          ; preds = %if.end27
  %18 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4223
  %mtx = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %18, i32 0, i32 12, !dbg !4223
  call void @__mutex_init(%struct.mutex* %mtx, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @usb_pcwd_probe.__key) #10, !dbg !4223
  br label %do.end, !dbg !4223

do.end:                                           ; preds = %do.body
  %19 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4225
  %20 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4226
  %udev28 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %20, i32 0, i32 0, !dbg !4227
  store %struct.usb_device* %19, %struct.usb_device** %udev28, align 8, !dbg !4228
  %21 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4229
  %22 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4230
  %interface29 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %22, i32 0, i32 1, !dbg !4231
  store %struct.usb_interface* %21, %struct.usb_interface** %interface29, align 8, !dbg !4232
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4233
  %desc30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 0, !dbg !4234
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc30, i32 0, i32 2, !dbg !4235
  %24 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4235
  %conv31 = zext i8 %24 to i32, !dbg !4233
  %25 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4236
  %interface_number = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %25, i32 0, i32 2, !dbg !4237
  store i32 %conv31, i32* %interface_number, align 8, !dbg !4238
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4239
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %26, i32 0, i32 4, !dbg !4239
  %27 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4239
  %conv32 = zext i16 %27 to i32, !dbg !4239
  %cmp33 = icmp sgt i32 %conv32, 8, !dbg !4240
  br i1 %cmp33, label %cond.true, label %cond.false, !dbg !4239

cond.true:                                        ; preds = %do.end
  %28 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4241
  %wMaxPacketSize35 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %28, i32 0, i32 4, !dbg !4241
  %29 = load i16, i16* %wMaxPacketSize35, align 1, !dbg !4241
  %conv36 = zext i16 %29 to i32, !dbg !4241
  br label %cond.end, !dbg !4239

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4239

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv36, %cond.true ], [ 8, %cond.false ], !dbg !4239
  %conv37 = sext i32 %cond to i64, !dbg !4242
  %30 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4243
  %intr_size = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %30, i32 0, i32 5, !dbg !4244
  store i64 %conv37, i64* %intr_size, align 8, !dbg !4245
  %31 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4246
  %32 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4247
  %intr_size38 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %32, i32 0, i32 5, !dbg !4248
  %33 = load i64, i64* %intr_size38, align 8, !dbg !4248
  %34 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4249
  %intr_dma = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %34, i32 0, i32 4, !dbg !4250
  %call39 = call i8* @usb_alloc_coherent(%struct.usb_device* %31, i64 %33, i32 3264, i64* %intr_dma) #10, !dbg !4251
  %35 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4252
  %intr_buffer = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %35, i32 0, i32 3, !dbg !4253
  store i8* %call39, i8** %intr_buffer, align 8, !dbg !4254
  %36 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4255
  %intr_buffer40 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %36, i32 0, i32 3, !dbg !4257
  %37 = load i8*, i8** %intr_buffer40, align 8, !dbg !4257
  %tobool41 = icmp ne i8* %37, null, !dbg !4255
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !4258

if.then42:                                        ; preds = %cond.end
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4259
  br label %error, !dbg !4261

if.end44:                                         ; preds = %cond.end
  %call45 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #10, !dbg !4262
  %38 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4263
  %intr_urb = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %38, i32 0, i32 6, !dbg !4264
  store %struct.urb* %call45, %struct.urb** %intr_urb, align 8, !dbg !4265
  %39 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4266
  %intr_urb46 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %39, i32 0, i32 6, !dbg !4268
  %40 = load %struct.urb*, %struct.urb** %intr_urb46, align 8, !dbg !4268
  %tobool47 = icmp ne %struct.urb* %40, null, !dbg !4266
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !4269

if.then48:                                        ; preds = %if.end44
  br label %error, !dbg !4270

if.end49:                                         ; preds = %if.end44
  %41 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4271
  %intr_urb50 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %41, i32 0, i32 6, !dbg !4272
  %42 = load %struct.urb*, %struct.urb** %intr_urb50, align 8, !dbg !4272
  %43 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4273
  %44 = load i32, i32* %pipe, align 4, !dbg !4274
  %45 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4275
  %intr_buffer51 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %45, i32 0, i32 3, !dbg !4276
  %46 = load i8*, i8** %intr_buffer51, align 8, !dbg !4276
  %47 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4277
  %intr_size52 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %47, i32 0, i32 5, !dbg !4278
  %48 = load i64, i64* %intr_size52, align 8, !dbg !4278
  %conv53 = trunc i64 %48 to i32, !dbg !4277
  %49 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4279
  %50 = bitcast %struct.usb_pcwd_private* %49 to i8*, !dbg !4279
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4280
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 5, !dbg !4281
  %52 = load i8, i8* %bInterval, align 1, !dbg !4281
  %conv54 = zext i8 %52 to i32, !dbg !4280
  call void @usb_fill_int_urb(%struct.urb* %42, %struct.usb_device* %43, i32 %44, i8* %46, i32 %conv53, void (%struct.urb*)* @usb_pcwd_intr_done, i8* %50, i32 %conv54) #10, !dbg !4282
  %53 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4283
  %intr_dma55 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %53, i32 0, i32 4, !dbg !4284
  %54 = load i64, i64* %intr_dma55, align 8, !dbg !4284
  %55 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4285
  %intr_urb56 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %55, i32 0, i32 6, !dbg !4286
  %56 = load %struct.urb*, %struct.urb** %intr_urb56, align 8, !dbg !4286
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 15, !dbg !4287
  store i64 %54, i64* %transfer_dma, align 8, !dbg !4288
  %57 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4289
  %intr_urb57 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %57, i32 0, i32 6, !dbg !4290
  %58 = load %struct.urb*, %struct.urb** %intr_urb57, align 8, !dbg !4290
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 13, !dbg !4291
  %59 = load i32, i32* %transfer_flags, align 4, !dbg !4292
  %or58 = or i32 %59, 4, !dbg !4292
  store i32 %or58, i32* %transfer_flags, align 4, !dbg !4292
  %60 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4293
  %intr_urb59 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %60, i32 0, i32 6, !dbg !4295
  %61 = load %struct.urb*, %struct.urb** %intr_urb59, align 8, !dbg !4295
  %call60 = call i32 @usb_submit_urb(%struct.urb* %61, i32 3264) #10, !dbg !4296
  %tobool61 = icmp ne i32 %call60, 0, !dbg !4296
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !4297

if.then62:                                        ; preds = %if.end49
  %call63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !4298
  store i32 -5, i32* %retval1, align 4, !dbg !4300
  br label %error, !dbg !4301

if.end64:                                         ; preds = %if.end49
  %62 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4302
  %exists = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %62, i32 0, i32 11, !dbg !4303
  store i32 1, i32* %exists, align 8, !dbg !4304
  %63 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4305
  %call65 = call i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %63) #10, !dbg !4306
  %64 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4307
  %call66 = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %64, i8 zeroext 8, i8* %fw_rev_major, i8* %fw_rev_minor) #10, !dbg !4308
  store i32 %call66, i32* %got_fw_rev, align 4, !dbg !4309
  %65 = load i32, i32* %got_fw_rev, align 4, !dbg !4310
  %tobool67 = icmp ne i32 %65, 0, !dbg !4310
  br i1 %tobool67, label %if.then68, label %if.else, !dbg !4312

if.then68:                                        ; preds = %if.end64
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %fw_ver_str, i64 0, i64 0, !dbg !4313
  %66 = load i8, i8* %fw_rev_major, align 1, !dbg !4314
  %conv69 = zext i8 %66 to i32, !dbg !4314
  %67 = load i8, i8* %fw_rev_minor, align 1, !dbg !4315
  %conv70 = zext i8 %67 to i32, !dbg !4315
  %call71 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %conv69, i32 %conv70) #10, !dbg !4316
  br label %if.end74, !dbg !4316

if.else:                                          ; preds = %if.end64
  %arraydecay72 = getelementptr inbounds [20 x i8], [20 x i8]* %fw_ver_str, i64 0, i64 0, !dbg !4317
  %call73 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !4318
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then68
  %arraydecay75 = getelementptr inbounds [20 x i8], [20 x i8]* %fw_ver_str, i64 0, i64 0, !dbg !4319
  %call76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* %arraydecay75) #11, !dbg !4319
  %68 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4320
  %call77 = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %68, i8 zeroext 12, i8* %dummy, i8* %option_switches) #10, !dbg !4321
  %69 = load i8, i8* %option_switches, align 1, !dbg !4322
  %conv78 = zext i8 %69 to i32, !dbg !4322
  %70 = load i8, i8* %option_switches, align 1, !dbg !4322
  %conv79 = zext i8 %70 to i32, !dbg !4322
  %and = and i32 %conv79, 16, !dbg !4322
  %tobool80 = icmp ne i32 %and, 0, !dbg !4322
  %71 = zext i1 %tobool80 to i64, !dbg !4322
  %cond81 = select i1 %tobool80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), !dbg !4322
  %72 = load i8, i8* %option_switches, align 1, !dbg !4322
  %conv82 = zext i8 %72 to i32, !dbg !4322
  %and83 = and i32 %conv82, 8, !dbg !4322
  %tobool84 = icmp ne i32 %and83, 0, !dbg !4322
  %73 = zext i1 %tobool84 to i64, !dbg !4322
  %cond85 = select i1 %tobool84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), !dbg !4322
  %call86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.10, i64 0, i64 0), i32 %conv78, i8* %cond81, i8* %cond85) #11, !dbg !4322
  %74 = load i32, i32* @heartbeat, align 4, !dbg !4323
  %cmp87 = icmp eq i32 %74, 0, !dbg !4325
  br i1 %cmp87, label %if.then89, label %if.end93, !dbg !4326

if.then89:                                        ; preds = %if.end74
  %75 = load i8, i8* %option_switches, align 1, !dbg !4327
  %conv90 = zext i8 %75 to i32, !dbg !4327
  %and91 = and i32 %conv90, 7, !dbg !4328
  %idxprom = sext i32 %and91 to i64, !dbg !4329
  %arrayidx92 = getelementptr [8 x i32], [8 x i32]* @heartbeat_tbl, i64 0, i64 %idxprom, !dbg !4329
  %76 = load i32, i32* %arrayidx92, align 4, !dbg !4329
  store i32 %76, i32* @heartbeat, align 4, !dbg !4330
  br label %if.end93, !dbg !4331

if.end93:                                         ; preds = %if.then89, %if.end74
  %77 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4332
  %78 = load i32, i32* @heartbeat, align 4, !dbg !4334
  %call94 = call i32 @usb_pcwd_set_heartbeat(%struct.usb_pcwd_private* %77, i32 %78) #10, !dbg !4335
  %tobool95 = icmp ne i32 %call94, 0, !dbg !4335
  br i1 %tobool95, label %if.then96, label %if.end99, !dbg !4336

if.then96:                                        ; preds = %if.end93
  %79 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4337
  %call97 = call i32 @usb_pcwd_set_heartbeat(%struct.usb_pcwd_private* %79, i32 0) #10, !dbg !4339
  %call98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i32 0) #11, !dbg !4340
  br label %if.end99, !dbg !4341

if.end99:                                         ; preds = %if.then96, %if.end93
  %call100 = call i32 @register_reboot_notifier(%struct.notifier_block* @usb_pcwd_notifier) #10, !dbg !4342
  store i32 %call100, i32* %retval1, align 4, !dbg !4343
  %80 = load i32, i32* %retval1, align 4, !dbg !4344
  %cmp101 = icmp ne i32 %80, 0, !dbg !4346
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !4347

if.then103:                                       ; preds = %if.end99
  %81 = load i32, i32* %retval1, align 4, !dbg !4348
  %call104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %81) #11, !dbg !4348
  br label %error, !dbg !4350

if.end105:                                        ; preds = %if.end99
  %call106 = call i32 @misc_register(%struct.miscdevice* @usb_pcwd_temperature_miscdev) #10, !dbg !4351
  store i32 %call106, i32* %retval1, align 4, !dbg !4352
  %82 = load i32, i32* %retval1, align 4, !dbg !4353
  %cmp107 = icmp ne i32 %82, 0, !dbg !4355
  br i1 %cmp107, label %if.then109, label %if.end111, !dbg !4356

if.then109:                                       ; preds = %if.end105
  %83 = load i32, i32* %retval1, align 4, !dbg !4357
  %call110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i32 131, i32 %83) #11, !dbg !4357
  br label %err_out_unregister_reboot, !dbg !4359

if.end111:                                        ; preds = %if.end105
  %call112 = call i32 @misc_register(%struct.miscdevice* @usb_pcwd_miscdev) #10, !dbg !4360
  store i32 %call112, i32* %retval1, align 4, !dbg !4361
  %84 = load i32, i32* %retval1, align 4, !dbg !4362
  %cmp113 = icmp ne i32 %84, 0, !dbg !4364
  br i1 %cmp113, label %if.then115, label %if.end117, !dbg !4365

if.then115:                                       ; preds = %if.end111
  %85 = load i32, i32* %retval1, align 4, !dbg !4366
  %call116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i32 130, i32 %85) #11, !dbg !4366
  br label %err_out_misc_deregister, !dbg !4368

if.end117:                                        ; preds = %if.end111
  %86 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4369
  %87 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4370
  %88 = bitcast %struct.usb_pcwd_private* %87 to i8*, !dbg !4370
  call void @usb_set_intfdata(%struct.usb_interface* %86, i8* %88) #10, !dbg !4371
  %89 = load i32, i32* @heartbeat, align 4, !dbg !4372
  %90 = load i8, i8* @nowayout, align 1, !dbg !4372
  %tobool118 = trunc i8 %90 to i1, !dbg !4372
  %conv119 = zext i1 %tobool118 to i32, !dbg !4372
  %call120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0), i32 %89, i32 %conv119) #11, !dbg !4372
  store i32 0, i32* %retval, align 4, !dbg !4373
  br label %return, !dbg !4373

err_out_misc_deregister:                          ; preds = %if.then115
  call void @llvm.dbg.label(metadata !4374), !dbg !4375
  call void @misc_deregister(%struct.miscdevice* @usb_pcwd_temperature_miscdev) #10, !dbg !4376
  br label %err_out_unregister_reboot, !dbg !4376

err_out_unregister_reboot:                        ; preds = %err_out_misc_deregister, %if.then109
  call void @llvm.dbg.label(metadata !4377), !dbg !4378
  %call121 = call i32 @unregister_reboot_notifier(%struct.notifier_block* @usb_pcwd_notifier) #10, !dbg !4379
  br label %error, !dbg !4379

error:                                            ; preds = %err_out_unregister_reboot, %if.then103, %if.then62, %if.then48, %if.then42, %if.then26
  call void @llvm.dbg.label(metadata !4380), !dbg !4381
  %91 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4382
  %tobool122 = icmp ne %struct.usb_pcwd_private* %91, null, !dbg !4382
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !4384

if.then123:                                       ; preds = %error
  %92 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4385
  call void @usb_pcwd_delete(%struct.usb_pcwd_private* %92) #10, !dbg !4386
  br label %if.end124, !dbg !4386

if.end124:                                        ; preds = %if.then123, %error
  store %struct.usb_pcwd_private* null, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !4387
  %93 = load i32, i32* %retval1, align 4, !dbg !4388
  store i32 %93, i32* %retval, align 4, !dbg !4389
  br label %return, !dbg !4389

return:                                           ; preds = %if.end124, %if.end117, %if.then17, %if.then12, %if.then5, %if.then
  %94 = load i32, i32* %retval, align 4, !dbg !4390
  ret i32 %94, !dbg !4390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_pcwd_disconnect(%struct.usb_interface* %interface) #2 !dbg !4391 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %usb_pcwd = alloca %struct.usb_pcwd_private*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd, metadata !4394, metadata !DIExpression()), !dbg !4395
  call void @mutex_lock(%struct.mutex* @disconnect_mutex) #10, !dbg !4396
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4397
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #10, !dbg !4398
  %1 = bitcast i8* %call to %struct.usb_pcwd_private*, !dbg !4398
  store %struct.usb_pcwd_private* %1, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4399
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4400
  call void @usb_set_intfdata(%struct.usb_interface* %2, i8* null) #10, !dbg !4401
  %3 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4402
  %mtx = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %3, i32 0, i32 12, !dbg !4403
  call void @mutex_lock(%struct.mutex* %mtx) #10, !dbg !4404
  %4 = load i8, i8* @nowayout, align 1, !dbg !4405
  %tobool = trunc i8 %4 to i1, !dbg !4405
  br i1 %tobool, label %if.end, label %if.then, !dbg !4407

if.then:                                          ; preds = %entry
  %5 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4408
  %call1 = call i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %5) #10, !dbg !4409
  br label %if.end, !dbg !4409

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4410
  %exists = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %6, i32 0, i32 11, !dbg !4411
  store i32 0, i32* %exists, align 8, !dbg !4412
  call void @misc_deregister(%struct.miscdevice* @usb_pcwd_miscdev) #10, !dbg !4413
  call void @misc_deregister(%struct.miscdevice* @usb_pcwd_temperature_miscdev) #10, !dbg !4414
  %call2 = call i32 @unregister_reboot_notifier(%struct.notifier_block* @usb_pcwd_notifier) #10, !dbg !4415
  %7 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4416
  %mtx3 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %7, i32 0, i32 12, !dbg !4417
  call void @mutex_unlock(%struct.mutex* %mtx3) #10, !dbg !4418
  %8 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4419
  call void @usb_pcwd_delete(%struct.usb_pcwd_private* %8) #10, !dbg !4420
  %9 = load i32, i32* @cards_found, align 4, !dbg !4421
  %dec = add i32 %9, -1, !dbg !4421
  store i32 %dec, i32* @cards_found, align 4, !dbg !4421
  call void @mutex_unlock(%struct.mutex* @disconnect_mutex) #10, !dbg !4422
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !4423
  ret void, !dbg !4424
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4425 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4430, metadata !DIExpression()), !dbg !4432
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4432
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4432
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4432
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4432
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4432
  store i8* %2, i8** %__mptr, align 8, !dbg !4432
  br label %do.body, !dbg !4432

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4433

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4432
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4432
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4432
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4433
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4432
  ret %struct.usb_device* %5, !dbg !4435
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4436 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4443
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #10, !dbg !4444
  %tobool = icmp ne i32 %call, 0, !dbg !4444
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4445

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4446
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #10, !dbg !4447
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4445
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !4448
  %land.ext = zext i1 %2 to i32, !dbg !4445
  ret i32 %land.ext, !dbg !4449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !4450 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4457
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !4458
  %1 = load i32, i32* %devnum, align 8, !dbg !4458
  %shl = shl i32 %1, 8, !dbg !4459
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !4460
  %shl1 = shl i32 %2, 15, !dbg !4461
  %or = or i32 %shl, %shl1, !dbg !4462
  ret i32 %or, !dbg !4463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4464 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4467, metadata !DIExpression()), !dbg !4471
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4477, metadata !DIExpression()), !dbg !4478
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4479, metadata !DIExpression()), !dbg !4480
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4481, metadata !DIExpression()), !dbg !4482
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4483, metadata !DIExpression()), !dbg !4487
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4489, metadata !DIExpression()), !dbg !4493
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4495, metadata !DIExpression()), !dbg !4499
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4504, metadata !DIExpression()), !dbg !4505
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4506, metadata !DIExpression()), !dbg !4507
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4508, metadata !DIExpression()), !dbg !4509
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4510, metadata !DIExpression()), !dbg !4511
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4512, metadata !DIExpression()), !dbg !4513
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4514, metadata !DIExpression()), !dbg !4515
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4516, metadata !DIExpression()), !dbg !4517
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4518, metadata !DIExpression()), !dbg !4519
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  %0 = load i64, i64* %size.addr, align 8, !dbg !4524
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4525
  %or = or i32 %1, 256, !dbg !4526
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4527
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4528
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4529

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4530
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4531
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4532

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4533
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4534
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4535
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4536
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4513
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4537
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4538
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4539
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4540
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4541
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4542
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4543
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4543
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4543
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4543
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4543
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4544
  br label %kmalloc.exit, !dbg !4544

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4545
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4546
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4546
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4548

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4549
  br label %kmalloc_index.exit.i, !dbg !4549

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4550
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4552
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4553

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4554
  br label %kmalloc_index.exit.i, !dbg !4554

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4555
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4557
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4558

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4559
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4560
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4561

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4562
  br label %kmalloc_index.exit.i, !dbg !4562

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4563
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4565
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4566

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4567
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4568
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4569

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4570
  br label %kmalloc_index.exit.i, !dbg !4570

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4571
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4573
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4574

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4575
  br label %kmalloc_index.exit.i, !dbg !4575

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4576
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4578
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4579

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4580
  br label %kmalloc_index.exit.i, !dbg !4580

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4581
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4583
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4584

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4585
  br label %kmalloc_index.exit.i, !dbg !4585

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4586
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4588
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4589

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4590
  br label %kmalloc_index.exit.i, !dbg !4590

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4591
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4593
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4594

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4595
  br label %kmalloc_index.exit.i, !dbg !4595

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4596
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4598
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4599

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4600
  br label %kmalloc_index.exit.i, !dbg !4600

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4601
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4603
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4604

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4605
  br label %kmalloc_index.exit.i, !dbg !4605

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4606
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4608
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4609

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4610
  br label %kmalloc_index.exit.i, !dbg !4610

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4611
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4613
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4614

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4615
  br label %kmalloc_index.exit.i, !dbg !4615

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4616
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4618
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4619

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4620
  br label %kmalloc_index.exit.i, !dbg !4620

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4621
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4623
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4624

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4625
  br label %kmalloc_index.exit.i, !dbg !4625

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4626
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4628
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4629

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4630
  br label %kmalloc_index.exit.i, !dbg !4630

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4631
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4633
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4634

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4635
  br label %kmalloc_index.exit.i, !dbg !4635

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4636
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4638
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4639

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4640
  br label %kmalloc_index.exit.i, !dbg !4640

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4643
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4644

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4645
  br label %kmalloc_index.exit.i, !dbg !4645

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4646
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4648
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4649

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4650
  br label %kmalloc_index.exit.i, !dbg !4650

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4651
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4653
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4654

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4655
  br label %kmalloc_index.exit.i, !dbg !4655

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4658
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4659

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4660
  br label %kmalloc_index.exit.i, !dbg !4660

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4661
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4663
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4664

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4668
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4669

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4670
  br label %kmalloc_index.exit.i, !dbg !4670

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4673
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4674

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4678
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4679

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4680
  br label %kmalloc_index.exit.i, !dbg !4680

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4683
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4684

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4688
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4689

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4691, !srcloc !4694
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #9, !dbg !4695, !srcloc !4698
  unreachable, !dbg !4699

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4700
  store i32 %45, i32* %index.i, align 4, !dbg !4701
  %46 = load i32, i32* %index.i, align 4, !dbg !4702
  %tobool.i = icmp ne i32 %46, 0, !dbg !4702
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4704

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4705
  br label %kmalloc.exit, !dbg !4705

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4706
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4707
  %and.i.i = and i32 %48, 17, !dbg !4707
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4707
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4707
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4707
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4707
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4709

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4710
  br label %kmalloc_type.exit.i, !dbg !4710

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4711
  %and2.i.i = and i32 %49, 1, !dbg !4712
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4711
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4711
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4711
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4713
  br label %kmalloc_type.exit.i, !dbg !4713

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4714
  %idxprom.i = zext i32 %51 to i64, !dbg !4715
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4715
  %52 = load i32, i32* %index.i, align 4, !dbg !4716
  %idxprom6.i = zext i32 %52 to i64, !dbg !4715
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4715
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4715
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4717
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4718
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4719
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4720
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4721
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4721
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4721
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4721
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4721
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4482
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4722
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4723
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4724
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4725
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4726
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4727
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4728
  store i8* %62, i8** %retval.i, align 8, !dbg !4729
  br label %kmalloc.exit, !dbg !4729

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4730
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4731
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4732
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4732
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4732
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4732
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4732
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4733
  br label %kmalloc.exit, !dbg !4733

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4734
  ret i8* %65, !dbg !4735
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !4736 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4741, metadata !DIExpression()), !dbg !4742
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4751, metadata !DIExpression()), !dbg !4752
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4755
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4756
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !4757
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !4758
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !4759
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4760
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !4761
  store i32 %2, i32* %pipe2, align 8, !dbg !4762
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !4763
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4764
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !4765
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !4766
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !4767
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4768
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !4769
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !4770
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !4771
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4772
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !4773
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !4774
  %10 = load i8*, i8** %context.addr, align 8, !dbg !4775
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4776
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !4777
  store i8* %10, i8** %context4, align 8, !dbg !4778
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4779
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !4781
  %13 = load i32, i32* %speed, align 4, !dbg !4781
  %cmp = icmp eq i32 %13, 3, !dbg !4782
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4783

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4784
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !4785
  %15 = load i32, i32* %speed5, align 4, !dbg !4785
  %cmp6 = icmp uge i32 %15, 5, !dbg !4786
  br i1 %cmp6, label %if.then, label %if.else, !dbg !4787

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !4788, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x203, metadata !4792, metadata !DIExpression()), !dbg !4794
  %16 = load i32, i32* %interval.addr, align 4, !dbg !4794
  store i32 %16, i32* %__UNIQUE_ID___x203, align 4, !dbg !4794
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y204, metadata !4795, metadata !DIExpression()), !dbg !4794
  store i32 1, i32* %__UNIQUE_ID___y204, align 4, !dbg !4794
  %17 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !4794
  %18 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !4794
  %cmp7 = icmp sgt i32 %17, %18, !dbg !4794
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !4794

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !4794
  br label %cond.end, !dbg !4794

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !4794
  br label %cond.end, !dbg !4794

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !4794
  store i32 %cond, i32* %tmp, align 4, !dbg !4794
  %21 = load i32, i32* %tmp, align 4, !dbg !4794
  store i32 %21, i32* %__UNIQUE_ID___x205, align 4, !dbg !4791
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !4796, metadata !DIExpression()), !dbg !4791
  store i32 16, i32* %__UNIQUE_ID___y206, align 4, !dbg !4791
  %22 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !4791
  %23 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !4791
  %cmp9 = icmp slt i32 %22, %23, !dbg !4791
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !4791

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !4791
  br label %cond.end12, !dbg !4791

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !4791
  br label %cond.end12, !dbg !4791

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !4791
  store i32 %cond13, i32* %tmp8, align 4, !dbg !4791
  %26 = load i32, i32* %tmp8, align 4, !dbg !4791
  store i32 %26, i32* %interval.addr, align 4, !dbg !4797
  %27 = load i32, i32* %interval.addr, align 4, !dbg !4798
  %sub = sub i32 %27, 1, !dbg !4799
  %shl = shl i32 1, %sub, !dbg !4800
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4801
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !4802
  store i32 %shl, i32* %interval14, align 8, !dbg !4803
  br label %if.end, !dbg !4804

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !4805
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4807
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !4808
  store i32 %29, i32* %interval15, align 8, !dbg !4809
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4810
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !4811
  store i32 -1, i32* %start_frame, align 8, !dbg !4812
  ret void, !dbg !4813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_pcwd_intr_done(%struct.urb* %urb) #2 !dbg !4814 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4815, metadata !DIExpression()), !dbg !4821
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4826, metadata !DIExpression()), !dbg !4827
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4828, metadata !DIExpression()), !dbg !4836
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4838, metadata !DIExpression()), !dbg !4839
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4840, metadata !DIExpression()), !dbg !4841
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4842, metadata !DIExpression()), !dbg !4843
  %urb.addr = alloca %struct.urb*, align 8
  %usb_pcwd = alloca %struct.usb_pcwd_private*, align 8
  %data = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  %retval = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd, metadata !4846, metadata !DIExpression()), !dbg !4847
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4848
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !4849
  %1 = load i8*, i8** %context, align 8, !dbg !4849
  %2 = bitcast i8* %1 to %struct.usb_pcwd_private*, !dbg !4850
  store %struct.usb_pcwd_private* %2, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4847
  call void @llvm.dbg.declare(metadata i8** %data, metadata !4851, metadata !DIExpression()), !dbg !4852
  %3 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4853
  %intr_buffer = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %3, i32 0, i32 3, !dbg !4854
  %4 = load i8*, i8** %intr_buffer, align 8, !dbg !4854
  store i8* %4, i8** %data, align 8, !dbg !4852
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4855, metadata !DIExpression()), !dbg !4856
  %5 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4857
  %interface = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %5, i32 0, i32 1, !dbg !4858
  %6 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !4858
  %dev1 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 7, !dbg !4859
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !4856
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !4860, metadata !DIExpression()), !dbg !4861
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4862
  %status = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 12, !dbg !4863
  %8 = load i32, i32* %status, align 8, !dbg !4863
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb2
    i32 -2, label %sw.bb2
    i32 -108, label %sw.bb2
  ], !dbg !4864

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !4865

sw.bb2:                                           ; preds = %entry, %entry, %entry
  br label %if.end, !dbg !4867

sw.default:                                       ; preds = %entry
  br label %resubmit, !dbg !4868

sw.epilog:                                        ; preds = %sw.bb
  %9 = load i8*, i8** %data, align 8, !dbg !4869
  %arrayidx = getelementptr i8, i8* %9, i64 0, !dbg !4869
  %10 = load i8, i8* %arrayidx, align 1, !dbg !4869
  %11 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4870
  %cmd_command = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %11, i32 0, i32 7, !dbg !4871
  store i8 %10, i8* %cmd_command, align 8, !dbg !4872
  %12 = load i8*, i8** %data, align 8, !dbg !4873
  %arrayidx3 = getelementptr i8, i8* %12, i64 1, !dbg !4873
  %13 = load i8, i8* %arrayidx3, align 1, !dbg !4873
  %14 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4874
  %cmd_data_msb = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %14, i32 0, i32 8, !dbg !4875
  store i8 %13, i8* %cmd_data_msb, align 1, !dbg !4876
  %15 = load i8*, i8** %data, align 8, !dbg !4877
  %arrayidx4 = getelementptr i8, i8* %15, i64 2, !dbg !4877
  %16 = load i8, i8* %arrayidx4, align 1, !dbg !4877
  %17 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4878
  %cmd_data_lsb = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %17, i32 0, i32 9, !dbg !4879
  store i8 %16, i8* %cmd_data_lsb, align 2, !dbg !4880
  %18 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd, align 8, !dbg !4881
  %cmd_received = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %18, i32 0, i32 10, !dbg !4882
  store %struct.atomic_t* %cmd_received, %struct.atomic_t** %v.addr.i, align 8
  store i32 1, i32* %i.addr.i, align 4
  %19 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4883
  %20 = bitcast %struct.atomic_t* %19 to i8*, !dbg !4883
  store i8* %20, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %21 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4884
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4885
  %conv.i.i = trunc i64 %22 to i32, !dbg !4885
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %21, i32 %conv.i.i) #13, !dbg !4886
  %23 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4887
  %24 = load i64, i64* %size.addr.i.i, align 8, !dbg !4887
  call void @kcsan_check_access(i8* %23, i64 %24, i32 5) #13, !dbg !4887
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4888
  %26 = load i32, i32* %i.addr.i, align 4, !dbg !4889
  store %struct.atomic_t* %25, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %26, i32* %i.addr.i.i, align 4
  %27 = load i32, i32* %i.addr.i.i, align 4, !dbg !4890
  %28 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4890
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %28, i32 0, i32 0, !dbg !4890
  store volatile i32 %27, i32* %counter.i.i, align 4, !dbg !4890
  br label %resubmit, !dbg !4892

resubmit:                                         ; preds = %sw.epilog, %sw.default
  call void @llvm.dbg.label(metadata !4893), !dbg !4894
  %29 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4895
  %call = call i32 @usb_submit_urb(%struct.urb* %29, i32 2592) #10, !dbg !4896
  store i32 %call, i32* %retval, align 4, !dbg !4897
  %30 = load i32, i32* %retval, align 4, !dbg !4898
  %tobool = icmp ne i32 %30, 0, !dbg !4898
  br i1 %tobool, label %if.then, label %if.end, !dbg !4900

if.then:                                          ; preds = %resubmit
  %31 = load i32, i32* %retval, align 4, !dbg !4901
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i64 0, i64 0), i32 %31) #11, !dbg !4901
  br label %if.end, !dbg !4901

if.end:                                           ; preds = %sw.bb2, %if.then, %resubmit
  ret void, !dbg !4902
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %usb_pcwd) #2 !dbg !4903 {
entry:
  %retval = alloca i32, align 4
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  %retval1 = alloca i32, align 4
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.declare(metadata i8* %msb, metadata !4908, metadata !DIExpression()), !dbg !4909
  store i8 -91, i8* %msb, align 1, !dbg !4909
  call void @llvm.dbg.declare(metadata i8* %lsb, metadata !4910, metadata !DIExpression()), !dbg !4911
  store i8 -61, i8* %lsb, align 1, !dbg !4911
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4912, metadata !DIExpression()), !dbg !4913
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !4914
  %call = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %0, i8 zeroext 48, i8* %msb, i8* %lsb) #10, !dbg !4915
  store i32 %call, i32* %retval1, align 4, !dbg !4916
  %1 = load i32, i32* %retval1, align 4, !dbg !4917
  %cmp = icmp eq i32 %1, 0, !dbg !4919
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4920

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8, i8* %lsb, align 1, !dbg !4921
  %conv = zext i8 %2 to i32, !dbg !4921
  %cmp2 = icmp ne i32 %conv, 0, !dbg !4922
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4923

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !4924
  store i32 -1, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4927
  br label %return, !dbg !4927

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4928
  ret i32 %3, !dbg !4928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %usb_pcwd, i8 zeroext %cmd, i8* %msb, i8* %lsb) #2 !dbg !4929 {
entry:
  %v.addr.i1.i34 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i34, metadata !4932, metadata !DIExpression()), !dbg !4938
  %v.addr.i.i35 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i35, metadata !4946, metadata !DIExpression()), !dbg !4948
  %size.addr.i.i36 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i36, metadata !4950, metadata !DIExpression()), !dbg !4951
  %v.addr.i37 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i37, metadata !4952, metadata !DIExpression()), !dbg !4953
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4815, metadata !DIExpression()), !dbg !4954
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4826, metadata !DIExpression()), !dbg !4957
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4828, metadata !DIExpression()), !dbg !4958
  %size.addr.i.i31 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i31, metadata !4838, metadata !DIExpression()), !dbg !4960
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4840, metadata !DIExpression()), !dbg !4961
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4842, metadata !DIExpression()), !dbg !4962
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4467, metadata !DIExpression()), !dbg !4963
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4477, metadata !DIExpression()), !dbg !4966
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4479, metadata !DIExpression()), !dbg !4967
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4481, metadata !DIExpression()), !dbg !4968
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4483, metadata !DIExpression()), !dbg !4969
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4489, metadata !DIExpression()), !dbg !4971
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4495, metadata !DIExpression()), !dbg !4973
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4504, metadata !DIExpression()), !dbg !4976
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4506, metadata !DIExpression()), !dbg !4977
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4508, metadata !DIExpression()), !dbg !4978
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4510, metadata !DIExpression()), !dbg !4979
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4512, metadata !DIExpression()), !dbg !4980
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4514, metadata !DIExpression()), !dbg !4981
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4516, metadata !DIExpression()), !dbg !4982
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4518, metadata !DIExpression()), !dbg !4983
  %retval = alloca i32, align 4
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  %cmd.addr = alloca i8, align 1
  %msb.addr = alloca i8*, align 8
  %lsb.addr = alloca i8*, align 8
  %got_response = alloca i32, align 4
  %count = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  store i8* %msb, i8** %msb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msb.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  store i8* %lsb, i8** %lsb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lsb.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.declare(metadata i32* %got_response, metadata !4992, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4994, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4996, metadata !DIExpression()), !dbg !4997
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !4998
  %tobool = icmp ne %struct.usb_pcwd_private* %0, null, !dbg !4998
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5000

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5001
  %exists = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %1, i32 0, i32 11, !dbg !5002
  %2 = load i32, i32* %exists, align 8, !dbg !5002
  %tobool1 = icmp ne i32 %2, 0, !dbg !5001
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5003

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !5004
  br label %return, !dbg !5004

if.end:                                           ; preds = %lor.lhs.false
  store i64 6, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !5005
  %4 = call i1 @llvm.is.constant.i64(i64 %3) #9, !dbg !5006
  br i1 %4, label %if.then.i, label %if.end9.i, !dbg !5007

if.then.i:                                        ; preds = %if.end
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5008
  %cmp.i = icmp ugt i64 %5, 8192, !dbg !5009
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5010

if.then1.i:                                       ; preds = %if.then.i
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5011
  %7 = load i32, i32* %flags.addr.i, align 4, !dbg !5012
  store i64 %6, i64* %size.addr.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i, align 4
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5013
  %call.i.i = call i32 @get_order(i64 %8) #12, !dbg !5014
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4980
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !5015
  %10 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5016
  %11 = load i32, i32* %order.i.i, align 4, !dbg !5017
  store i64 %9, i64* %size.addr.i.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i.i, align 4
  store i32 %11, i32* %order.addr.i.i.i, align 4
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5018
  %13 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5019
  %14 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5020
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %12, i32 %13, i32 %14) #13, !dbg !5021
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5021
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5021
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5021
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5021
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5022
  br label %kmalloc.exit, !dbg !5022

if.end.i:                                         ; preds = %if.then.i
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !5023
  store i64 %15, i64* %size.addr.i11.i, align 8
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5024
  %tobool.i.i = icmp ne i64 %16, 0, !dbg !5024
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5025

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end.i.i:                                       ; preds = %if.end.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp.i.i = icmp ule i64 %17, 8, !dbg !5028
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5029

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5030
  br label %kmalloc_index.exit.i, !dbg !5030

if.end2.i.i:                                      ; preds = %if.end.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5031
  %cmp3.i.i = icmp ugt i64 %18, 64, !dbg !5032
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5033

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp4.i.i = icmp ule i64 %19, 96, !dbg !5035
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5036

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5037
  br label %kmalloc_index.exit.i, !dbg !5037

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5038
  %cmp7.i.i = icmp ugt i64 %20, 128, !dbg !5039
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5040

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5041
  %cmp9.i.i = icmp ule i64 %21, 192, !dbg !5042
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5043

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5044
  br label %kmalloc_index.exit.i, !dbg !5044

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5045
  %cmp12.i.i = icmp ule i64 %22, 8, !dbg !5046
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5047

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5048
  br label %kmalloc_index.exit.i, !dbg !5048

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5049
  %cmp15.i.i = icmp ule i64 %23, 16, !dbg !5050
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5051

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5052
  br label %kmalloc_index.exit.i, !dbg !5052

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5053
  %cmp18.i.i = icmp ule i64 %24, 32, !dbg !5054
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5055

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5056
  br label %kmalloc_index.exit.i, !dbg !5056

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5057
  %cmp21.i.i = icmp ule i64 %25, 64, !dbg !5058
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5059

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5060
  br label %kmalloc_index.exit.i, !dbg !5060

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5061
  %cmp24.i.i = icmp ule i64 %26, 128, !dbg !5062
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5063

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5064
  br label %kmalloc_index.exit.i, !dbg !5064

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5065
  %cmp27.i.i = icmp ule i64 %27, 256, !dbg !5066
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5067

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5068
  br label %kmalloc_index.exit.i, !dbg !5068

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5069
  %cmp30.i.i = icmp ule i64 %28, 512, !dbg !5070
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5071

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5072
  br label %kmalloc_index.exit.i, !dbg !5072

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5073
  %cmp33.i.i = icmp ule i64 %29, 1024, !dbg !5074
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5075

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp36.i.i = icmp ule i64 %30, 2048, !dbg !5078
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5079

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5080
  br label %kmalloc_index.exit.i, !dbg !5080

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5081
  %cmp39.i.i = icmp ule i64 %31, 4096, !dbg !5082
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5083

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5084
  br label %kmalloc_index.exit.i, !dbg !5084

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5085
  %cmp42.i.i = icmp ule i64 %32, 8192, !dbg !5086
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5087

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5088
  br label %kmalloc_index.exit.i, !dbg !5088

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5089
  %cmp45.i.i = icmp ule i64 %33, 16384, !dbg !5090
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5091

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5092
  br label %kmalloc_index.exit.i, !dbg !5092

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5093
  %cmp48.i.i = icmp ule i64 %34, 32768, !dbg !5094
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5095

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5096
  br label %kmalloc_index.exit.i, !dbg !5096

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5097
  %cmp51.i.i = icmp ule i64 %35, 65536, !dbg !5098
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5099

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5100
  br label %kmalloc_index.exit.i, !dbg !5100

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5101
  %cmp54.i.i = icmp ule i64 %36, 131072, !dbg !5102
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5103

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5104
  br label %kmalloc_index.exit.i, !dbg !5104

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5105
  %cmp57.i.i = icmp ule i64 %37, 262144, !dbg !5106
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5107

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5108
  br label %kmalloc_index.exit.i, !dbg !5108

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5109
  %cmp60.i.i = icmp ule i64 %38, 524288, !dbg !5110
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5111

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5112
  br label %kmalloc_index.exit.i, !dbg !5112

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5113
  %cmp63.i.i = icmp ule i64 %39, 1048576, !dbg !5114
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5115

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5116
  br label %kmalloc_index.exit.i, !dbg !5116

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5117
  %cmp66.i.i = icmp ule i64 %40, 2097152, !dbg !5118
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5119

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5120
  br label %kmalloc_index.exit.i, !dbg !5120

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5121
  %cmp69.i.i = icmp ule i64 %41, 4194304, !dbg !5122
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5123

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5124
  br label %kmalloc_index.exit.i, !dbg !5124

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5125
  %cmp72.i.i = icmp ule i64 %42, 8388608, !dbg !5126
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5127

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5128
  br label %kmalloc_index.exit.i, !dbg !5128

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5129
  %cmp75.i.i = icmp ule i64 %43, 16777216, !dbg !5130
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5131

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5132
  br label %kmalloc_index.exit.i, !dbg !5132

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5133
  %cmp78.i.i = icmp ule i64 %44, 33554432, !dbg !5134
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5135

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5136
  br label %kmalloc_index.exit.i, !dbg !5136

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5137
  %cmp81.i.i = icmp ule i64 %45, 67108864, !dbg !5138
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5139

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5140
  br label %kmalloc_index.exit.i, !dbg !5140

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5141, !srcloc !4694
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #9, !dbg !5142, !srcloc !4698
  unreachable, !dbg !5143

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %46 = load i32, i32* %retval.i.i, align 4, !dbg !5144
  store i32 %46, i32* %index.i, align 4, !dbg !5145
  %47 = load i32, i32* %index.i, align 4, !dbg !5146
  %tobool.i = icmp ne i32 %47, 0, !dbg !5146
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5147

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5148
  br label %kmalloc.exit, !dbg !5148

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %48 = load i32, i32* %flags.addr.i, align 4, !dbg !5149
  store i32 %48, i32* %flags.addr.i13.i, align 4
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5150
  %and.i.i = and i32 %49, 17, !dbg !5150
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5150
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5150
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5150
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5150
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5151

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5152
  br label %kmalloc_type.exit.i, !dbg !5152

if.end.i16.i:                                     ; preds = %if.end4.i
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5153
  %and2.i.i = and i32 %50, 1, !dbg !5154
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5153
  %51 = zext i1 %tobool3.i.i to i64, !dbg !5153
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5153
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5155
  br label %kmalloc_type.exit.i, !dbg !5155

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %52 = load i32, i32* %retval.i12.i, align 4, !dbg !5156
  %idxprom.i = zext i32 %52 to i64, !dbg !5157
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5157
  %53 = load i32, i32* %index.i, align 4, !dbg !5158
  %idxprom6.i = zext i32 %53 to i64, !dbg !5157
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5157
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5157
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !5159
  %56 = load i64, i64* %size.addr.i, align 8, !dbg !5160
  store %struct.kmem_cache* %54, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %55, i32* %flags.addr.i17.i, align 4
  store i64 %56, i64* %size.addr.i18.i, align 8
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5161
  %58 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5162
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %57, i32 %58) #13, !dbg !5163
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5163
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5163
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5163
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5163
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4968
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5164
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !5165
  %61 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5166
  %62 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5167
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %59, i8* %60, i64 %61, i32 %62) #13, !dbg !5168
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5169
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !5170
  store i8* %63, i8** %retval.i, align 8, !dbg !5171
  br label %kmalloc.exit, !dbg !5171

if.end9.i:                                        ; preds = %if.end
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !5172
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !5173
  %call10.i = call noalias i8* @__kmalloc(i64 %64, i32 %65) #13, !dbg !5174
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5174
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5174
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5174
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5174
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5175
  br label %kmalloc.exit, !dbg !5175

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %66 = load i8*, i8** %retval.i, align 8, !dbg !5176
  store i8* %66, i8** %buf, align 8, !dbg !5177
  %67 = load i8*, i8** %buf, align 8, !dbg !5178
  %cmp = icmp eq i8* %67, null, !dbg !5180
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5181

if.then2:                                         ; preds = %kmalloc.exit
  store i32 0, i32* %retval, align 4, !dbg !5182
  br label %return, !dbg !5182

if.end3:                                          ; preds = %kmalloc.exit
  %68 = load i8, i8* %cmd.addr, align 1, !dbg !5183
  %69 = load i8*, i8** %buf, align 8, !dbg !5184
  %arrayidx = getelementptr i8, i8* %69, i64 0, !dbg !5184
  store i8 %68, i8* %arrayidx, align 1, !dbg !5185
  %70 = load i8*, i8** %msb.addr, align 8, !dbg !5186
  %71 = load i8, i8* %70, align 1, !dbg !5187
  %72 = load i8*, i8** %buf, align 8, !dbg !5188
  %arrayidx4 = getelementptr i8, i8* %72, i64 1, !dbg !5188
  store i8 %71, i8* %arrayidx4, align 1, !dbg !5189
  %73 = load i8*, i8** %lsb.addr, align 8, !dbg !5190
  %74 = load i8, i8* %73, align 1, !dbg !5191
  %75 = load i8*, i8** %buf, align 8, !dbg !5192
  %arrayidx5 = getelementptr i8, i8* %75, i64 2, !dbg !5192
  store i8 %74, i8* %arrayidx5, align 1, !dbg !5193
  %76 = load i8*, i8** %buf, align 8, !dbg !5194
  %arrayidx6 = getelementptr i8, i8* %76, i64 5, !dbg !5194
  store i8 0, i8* %arrayidx6, align 1, !dbg !5195
  %77 = load i8*, i8** %buf, align 8, !dbg !5196
  %arrayidx7 = getelementptr i8, i8* %77, i64 4, !dbg !5196
  store i8 0, i8* %arrayidx7, align 1, !dbg !5197
  %78 = load i8*, i8** %buf, align 8, !dbg !5198
  %arrayidx8 = getelementptr i8, i8* %78, i64 3, !dbg !5198
  store i8 0, i8* %arrayidx8, align 1, !dbg !5199
  %79 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5200
  %cmd_received = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %79, i32 0, i32 10, !dbg !5201
  store %struct.atomic_t* %cmd_received, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %80 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5202
  %81 = bitcast %struct.atomic_t* %80 to i8*, !dbg !5202
  store i8* %81, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i31, align 8
  %82 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5203
  %83 = load i64, i64* %size.addr.i.i31, align 8, !dbg !5204
  %conv.i.i32 = trunc i64 %83 to i32, !dbg !5204
  %call.i.i33 = call zeroext i1 @kasan_check_write(i8* %82, i32 %conv.i.i32) #13, !dbg !5205
  %84 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5206
  %85 = load i64, i64* %size.addr.i.i31, align 8, !dbg !5206
  call void @kcsan_check_access(i8* %84, i64 %85, i32 5) #13, !dbg !5206
  %86 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5207
  %87 = load i32, i32* %i.addr.i, align 4, !dbg !5208
  store %struct.atomic_t* %86, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %87, i32* %i.addr.i.i, align 4
  %88 = load i32, i32* %i.addr.i.i, align 4, !dbg !5209
  %89 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5209
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %89, i32 0, i32 0, !dbg !5209
  store volatile i32 %88, i32* %counter.i.i, align 4, !dbg !5209
  %90 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5210
  %udev = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %90, i32 0, i32 0, !dbg !5212
  %91 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5212
  %92 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5213
  %udev9 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %92, i32 0, i32 0, !dbg !5213
  %93 = load %struct.usb_device*, %struct.usb_device** %udev9, align 8, !dbg !5213
  %call10 = call i32 @__create_pipe(%struct.usb_device* %93, i32 0) #10, !dbg !5213
  %or = or i32 -2147483648, %call10, !dbg !5213
  %94 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5214
  %interface_number = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %94, i32 0, i32 2, !dbg !5215
  %95 = load i32, i32* %interface_number, align 8, !dbg !5215
  %conv = trunc i32 %95 to i16, !dbg !5214
  %96 = load i8*, i8** %buf, align 8, !dbg !5216
  %call11 = call i32 @usb_control_msg(%struct.usb_device* %91, i32 %or, i8 zeroext 9, i8 zeroext 34, i16 zeroext 512, i16 zeroext %conv, i8* %96, i16 zeroext 6, i32 250) #10, !dbg !5217
  %cmp12 = icmp ne i32 %call11, 6, !dbg !5218
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5219

if.then14:                                        ; preds = %if.end3
  br label %if.end15, !dbg !5220

if.end15:                                         ; preds = %if.then14, %if.end3
  store i32 0, i32* %got_response, align 4, !dbg !5222
  store i32 0, i32* %count, align 4, !dbg !5223
  br label %for.cond, !dbg !5224

for.cond:                                         ; preds = %for.inc, %if.end15
  %97 = load i32, i32* %count, align 4, !dbg !5225
  %cmp16 = icmp slt i32 %97, 250, !dbg !5226
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !5227

land.rhs:                                         ; preds = %for.cond
  %98 = load i32, i32* %got_response, align 4, !dbg !5228
  %tobool18 = icmp ne i32 %98, 0, !dbg !5229
  %lnot = xor i1 %tobool18, true, !dbg !5229
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %99 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !5230
  br i1 %99, label %for.body, label %for.end, !dbg !5231

for.body:                                         ; preds = %land.end
  call void @__const_udelay(i64 4295000) #10, !dbg !5232
  %100 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5237
  %cmd_received19 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %100, i32 0, i32 10, !dbg !5238
  store %struct.atomic_t* %cmd_received19, %struct.atomic_t** %v.addr.i37, align 8
  %101 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i37, align 8, !dbg !5239
  %102 = bitcast %struct.atomic_t* %101 to i8*, !dbg !5239
  store i8* %102, i8** %v.addr.i.i35, align 8
  store i64 4, i64* %size.addr.i.i36, align 8
  %103 = load i8*, i8** %v.addr.i.i35, align 8, !dbg !5240
  %104 = load i64, i64* %size.addr.i.i36, align 8, !dbg !5241
  %conv.i.i38 = trunc i64 %104 to i32, !dbg !5241
  %call.i.i39 = call zeroext i1 @kasan_check_read(i8* %103, i32 %conv.i.i38) #13, !dbg !5242
  %105 = load i8*, i8** %v.addr.i.i35, align 8, !dbg !5243
  %106 = load i64, i64* %size.addr.i.i36, align 8, !dbg !5243
  call void @kcsan_check_access(i8* %105, i64 %106, i32 4) #13, !dbg !5243
  %107 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i37, align 8, !dbg !5244
  store %struct.atomic_t* %107, %struct.atomic_t** %v.addr.i1.i34, align 8
  %108 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i34, align 8, !dbg !5245
  %counter.i.i40 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %108, i32 0, i32 0, !dbg !5245
  %109 = load volatile i32, i32* %counter.i.i40, align 4, !dbg !5245
  %tobool21 = icmp ne i32 %109, 0, !dbg !5246
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5247

if.then22:                                        ; preds = %for.body
  store i32 1, i32* %got_response, align 4, !dbg !5248
  br label %if.end23, !dbg !5249

if.end23:                                         ; preds = %if.then22, %for.body
  br label %for.inc, !dbg !5250

for.inc:                                          ; preds = %if.end23
  %110 = load i32, i32* %count, align 4, !dbg !5251
  %inc = add i32 %110, 1, !dbg !5251
  store i32 %inc, i32* %count, align 4, !dbg !5251
  br label %for.cond, !dbg !5252, !llvm.loop !5253

for.end:                                          ; preds = %land.end
  %111 = load i32, i32* %got_response, align 4, !dbg !5255
  %tobool24 = icmp ne i32 %111, 0, !dbg !5257
  br i1 %tobool24, label %land.lhs.true, label %if.end30, !dbg !5258

land.lhs.true:                                    ; preds = %for.end
  %112 = load i8, i8* %cmd.addr, align 1, !dbg !5259
  %conv25 = zext i8 %112 to i32, !dbg !5259
  %113 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5260
  %cmd_command = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %113, i32 0, i32 7, !dbg !5261
  %114 = load i8, i8* %cmd_command, align 8, !dbg !5261
  %conv26 = zext i8 %114 to i32, !dbg !5260
  %cmp27 = icmp eq i32 %conv25, %conv26, !dbg !5262
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5263

if.then29:                                        ; preds = %land.lhs.true
  %115 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5264
  %cmd_data_msb = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %115, i32 0, i32 8, !dbg !5266
  %116 = load i8, i8* %cmd_data_msb, align 1, !dbg !5266
  %117 = load i8*, i8** %msb.addr, align 8, !dbg !5267
  store i8 %116, i8* %117, align 1, !dbg !5268
  %118 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5269
  %cmd_data_lsb = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %118, i32 0, i32 9, !dbg !5270
  %119 = load i8, i8* %cmd_data_lsb, align 2, !dbg !5270
  %120 = load i8*, i8** %lsb.addr, align 8, !dbg !5271
  store i8 %119, i8* %120, align 1, !dbg !5272
  br label %if.end30, !dbg !5273

if.end30:                                         ; preds = %if.then29, %land.lhs.true, %for.end
  %121 = load i8*, i8** %buf, align 8, !dbg !5274
  call void @kfree(i8* %121) #10, !dbg !5275
  %122 = load i32, i32* %got_response, align 4, !dbg !5276
  store i32 %122, i32* %retval, align 4, !dbg !5277
  br label %return, !dbg !5277

return:                                           ; preds = %if.end30, %if.then2, %if.then
  %123 = load i32, i32* %retval, align 4, !dbg !5278
  ret i32 %123, !dbg !5278
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_set_heartbeat(%struct.usb_pcwd_private* %usb_pcwd, i32 %t) #2 !dbg !5279 {
entry:
  %retval = alloca i32, align 4
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  %t.addr = alloca i32, align 4
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  call void @llvm.dbg.declare(metadata i8* %msb, metadata !5286, metadata !DIExpression()), !dbg !5287
  %0 = load i32, i32* %t.addr, align 4, !dbg !5288
  %div = sdiv i32 %0, 256, !dbg !5289
  %conv = trunc i32 %div to i8, !dbg !5288
  store i8 %conv, i8* %msb, align 1, !dbg !5287
  call void @llvm.dbg.declare(metadata i8* %lsb, metadata !5290, metadata !DIExpression()), !dbg !5291
  %1 = load i32, i32* %t.addr, align 4, !dbg !5292
  %rem = srem i32 %1, 256, !dbg !5293
  %conv1 = trunc i32 %rem to i8, !dbg !5292
  store i8 %conv1, i8* %lsb, align 1, !dbg !5291
  %2 = load i32, i32* %t.addr, align 4, !dbg !5294
  %cmp = icmp slt i32 %2, 1, !dbg !5296
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5297

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %t.addr, align 4, !dbg !5298
  %cmp3 = icmp sgt i32 %3, 65535, !dbg !5299
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5300

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5301
  br label %return, !dbg !5301

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5302
  %call = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %4, i8 zeroext 25, i8* %msb, i8* %lsb) #10, !dbg !5303
  %5 = load i32, i32* %t.addr, align 4, !dbg !5304
  store i32 %5, i32* @heartbeat, align 4, !dbg !5305
  store i32 0, i32* %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5307
  ret i32 %6, !dbg !5307
}

; Function Attrs: noredzone
declare dso_local i32 @register_reboot_notifier(%struct.notifier_block*) #1

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5308 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5315
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5316
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5317
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #10, !dbg !5318
  ret void, !dbg !5319
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #1

; Function Attrs: noredzone
declare dso_local i32 @unregister_reboot_notifier(%struct.notifier_block*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_pcwd_delete(%struct.usb_pcwd_private* %usb_pcwd) #2 !dbg !5320 {
entry:
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5325
  %intr_urb = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %0, i32 0, i32 6, !dbg !5326
  %1 = load %struct.urb*, %struct.urb** %intr_urb, align 8, !dbg !5326
  call void @usb_free_urb(%struct.urb* %1) #10, !dbg !5327
  %2 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5328
  %udev = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %2, i32 0, i32 0, !dbg !5329
  %3 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5329
  %4 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5330
  %intr_size = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %4, i32 0, i32 5, !dbg !5331
  %5 = load i64, i64* %intr_size, align 8, !dbg !5331
  %6 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5332
  %intr_buffer = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %6, i32 0, i32 3, !dbg !5333
  %7 = load i8*, i8** %intr_buffer, align 8, !dbg !5333
  %8 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5334
  %intr_dma = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %8, i32 0, i32 4, !dbg !5335
  %9 = load i64, i64* %intr_dma, align 8, !dbg !5335
  call void @usb_free_coherent(%struct.usb_device* %3, i64 %5, i8* %7, i64 %9) #10, !dbg !5336
  %10 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5337
  %11 = bitcast %struct.usb_pcwd_private* %10 to i8*, !dbg !5337
  call void @kfree(i8* %11) #10, !dbg !5338
  ret void, !dbg !5339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5340 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5343
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5344
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5344
  %conv = zext i8 %1 to i32, !dbg !5343
  %and = and i32 %conv, 3, !dbg !5345
  %cmp = icmp eq i32 %and, 3, !dbg !5346
  %conv1 = zext i1 %cmp to i32, !dbg !5346
  ret i32 %conv1, !dbg !5347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5348 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5351
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5352
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5352
  %conv = zext i8 %1 to i32, !dbg !5351
  %and = and i32 %conv, 128, !dbg !5353
  %cmp = icmp eq i32 %and, 128, !dbg !5354
  %conv1 = zext i1 %cmp to i32, !dbg !5354
  ret i32 %conv1, !dbg !5355
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5356 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5360, metadata !DIExpression()), !dbg !5365
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5367, metadata !DIExpression()), !dbg !5368
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  %0 = load i64, i64* %size.addr, align 8, !dbg !5371
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5373
  br i1 %1, label %if.then, label %if.end447, !dbg !5374

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5375
  %tobool = icmp ne i64 %2, 0, !dbg !5375
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5378

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5380
  %cmp = icmp ult i64 %3, 4096, !dbg !5382
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5383

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5384
  br label %return, !dbg !5384

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub = sub i64 %4, 1, !dbg !5385
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5385
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5385

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub4 = sub i64 %6, 1, !dbg !5385
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5385
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5385

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub6 = sub i64 %8, 1, !dbg !5385
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5385
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5385

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5385

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub9 = sub i64 %9, 1, !dbg !5385
  %and = and i64 %sub9, -9223372036854775808, !dbg !5385
  %tobool10 = icmp ne i64 %and, 0, !dbg !5385
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5385

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5385

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub13 = sub i64 %10, 1, !dbg !5385
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5385
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5385
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5385

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5385

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub18 = sub i64 %11, 1, !dbg !5385
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5385
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5385
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5385

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5385

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub23 = sub i64 %12, 1, !dbg !5385
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5385
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5385
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5385

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5385

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub28 = sub i64 %13, 1, !dbg !5385
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5385
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5385
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5385

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5385

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub33 = sub i64 %14, 1, !dbg !5385
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5385
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5385
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5385

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5385

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub38 = sub i64 %15, 1, !dbg !5385
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5385
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5385
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5385

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5385

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub43 = sub i64 %16, 1, !dbg !5385
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5385
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5385
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5385

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5385

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub48 = sub i64 %17, 1, !dbg !5385
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5385
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5385
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5385

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5385

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub53 = sub i64 %18, 1, !dbg !5385
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5385
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5385
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5385

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5385

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub58 = sub i64 %19, 1, !dbg !5385
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5385
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5385
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5385

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5385

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub63 = sub i64 %20, 1, !dbg !5385
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5385
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5385
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5385

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5385

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub68 = sub i64 %21, 1, !dbg !5385
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5385
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5385
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5385

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5385

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub73 = sub i64 %22, 1, !dbg !5385
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5385
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5385
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5385

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5385

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub78 = sub i64 %23, 1, !dbg !5385
  %and79 = and i64 %sub78, 562949953421312, !dbg !5385
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5385
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5385

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5385

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub83 = sub i64 %24, 1, !dbg !5385
  %and84 = and i64 %sub83, 281474976710656, !dbg !5385
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5385
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5385

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5385

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub88 = sub i64 %25, 1, !dbg !5385
  %and89 = and i64 %sub88, 140737488355328, !dbg !5385
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5385
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5385

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5385

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub93 = sub i64 %26, 1, !dbg !5385
  %and94 = and i64 %sub93, 70368744177664, !dbg !5385
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5385
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5385

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5385

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub98 = sub i64 %27, 1, !dbg !5385
  %and99 = and i64 %sub98, 35184372088832, !dbg !5385
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5385
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5385

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5385

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub103 = sub i64 %28, 1, !dbg !5385
  %and104 = and i64 %sub103, 17592186044416, !dbg !5385
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5385
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5385

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5385

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub108 = sub i64 %29, 1, !dbg !5385
  %and109 = and i64 %sub108, 8796093022208, !dbg !5385
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5385
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5385

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5385

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub113 = sub i64 %30, 1, !dbg !5385
  %and114 = and i64 %sub113, 4398046511104, !dbg !5385
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5385
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5385

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5385

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub118 = sub i64 %31, 1, !dbg !5385
  %and119 = and i64 %sub118, 2199023255552, !dbg !5385
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5385
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5385

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5385

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub123 = sub i64 %32, 1, !dbg !5385
  %and124 = and i64 %sub123, 1099511627776, !dbg !5385
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5385
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5385

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5385

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub128 = sub i64 %33, 1, !dbg !5385
  %and129 = and i64 %sub128, 549755813888, !dbg !5385
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5385
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5385

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5385

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub133 = sub i64 %34, 1, !dbg !5385
  %and134 = and i64 %sub133, 274877906944, !dbg !5385
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5385
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5385

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5385

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub138 = sub i64 %35, 1, !dbg !5385
  %and139 = and i64 %sub138, 137438953472, !dbg !5385
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5385
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5385

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5385

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub143 = sub i64 %36, 1, !dbg !5385
  %and144 = and i64 %sub143, 68719476736, !dbg !5385
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5385
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5385

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5385

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub148 = sub i64 %37, 1, !dbg !5385
  %and149 = and i64 %sub148, 34359738368, !dbg !5385
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5385
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5385

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5385

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub153 = sub i64 %38, 1, !dbg !5385
  %and154 = and i64 %sub153, 17179869184, !dbg !5385
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5385
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5385

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5385

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub158 = sub i64 %39, 1, !dbg !5385
  %and159 = and i64 %sub158, 8589934592, !dbg !5385
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5385
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5385

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5385

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub163 = sub i64 %40, 1, !dbg !5385
  %and164 = and i64 %sub163, 4294967296, !dbg !5385
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5385
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5385

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5385

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub168 = sub i64 %41, 1, !dbg !5385
  %and169 = and i64 %sub168, 2147483648, !dbg !5385
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5385
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5385

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5385

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub173 = sub i64 %42, 1, !dbg !5385
  %and174 = and i64 %sub173, 1073741824, !dbg !5385
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5385
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5385

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5385

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub178 = sub i64 %43, 1, !dbg !5385
  %and179 = and i64 %sub178, 536870912, !dbg !5385
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5385
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5385

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5385

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub183 = sub i64 %44, 1, !dbg !5385
  %and184 = and i64 %sub183, 268435456, !dbg !5385
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5385
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5385

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5385

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub188 = sub i64 %45, 1, !dbg !5385
  %and189 = and i64 %sub188, 134217728, !dbg !5385
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5385
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5385

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5385

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub193 = sub i64 %46, 1, !dbg !5385
  %and194 = and i64 %sub193, 67108864, !dbg !5385
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5385
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5385

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5385

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub198 = sub i64 %47, 1, !dbg !5385
  %and199 = and i64 %sub198, 33554432, !dbg !5385
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5385
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5385

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5385

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub203 = sub i64 %48, 1, !dbg !5385
  %and204 = and i64 %sub203, 16777216, !dbg !5385
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5385
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5385

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5385

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub208 = sub i64 %49, 1, !dbg !5385
  %and209 = and i64 %sub208, 8388608, !dbg !5385
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5385
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5385

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5385

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub213 = sub i64 %50, 1, !dbg !5385
  %and214 = and i64 %sub213, 4194304, !dbg !5385
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5385
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5385

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5385

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub218 = sub i64 %51, 1, !dbg !5385
  %and219 = and i64 %sub218, 2097152, !dbg !5385
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5385
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5385

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5385

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub223 = sub i64 %52, 1, !dbg !5385
  %and224 = and i64 %sub223, 1048576, !dbg !5385
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5385
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5385

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5385

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub228 = sub i64 %53, 1, !dbg !5385
  %and229 = and i64 %sub228, 524288, !dbg !5385
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5385
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5385

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5385

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub233 = sub i64 %54, 1, !dbg !5385
  %and234 = and i64 %sub233, 262144, !dbg !5385
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5385
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5385

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5385

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub238 = sub i64 %55, 1, !dbg !5385
  %and239 = and i64 %sub238, 131072, !dbg !5385
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5385
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5385

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5385

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub243 = sub i64 %56, 1, !dbg !5385
  %and244 = and i64 %sub243, 65536, !dbg !5385
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5385
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5385

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5385

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub248 = sub i64 %57, 1, !dbg !5385
  %and249 = and i64 %sub248, 32768, !dbg !5385
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5385
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5385

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5385

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub253 = sub i64 %58, 1, !dbg !5385
  %and254 = and i64 %sub253, 16384, !dbg !5385
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5385
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5385

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5385

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub258 = sub i64 %59, 1, !dbg !5385
  %and259 = and i64 %sub258, 8192, !dbg !5385
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5385
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5385

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5385

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub263 = sub i64 %60, 1, !dbg !5385
  %and264 = and i64 %sub263, 4096, !dbg !5385
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5385
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5385

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5385

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub268 = sub i64 %61, 1, !dbg !5385
  %and269 = and i64 %sub268, 2048, !dbg !5385
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5385
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5385

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5385

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub273 = sub i64 %62, 1, !dbg !5385
  %and274 = and i64 %sub273, 1024, !dbg !5385
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5385
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5385

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5385

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub278 = sub i64 %63, 1, !dbg !5385
  %and279 = and i64 %sub278, 512, !dbg !5385
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5385
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5385

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5385

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub283 = sub i64 %64, 1, !dbg !5385
  %and284 = and i64 %sub283, 256, !dbg !5385
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5385
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5385

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5385

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub288 = sub i64 %65, 1, !dbg !5385
  %and289 = and i64 %sub288, 128, !dbg !5385
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5385
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5385

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5385

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub293 = sub i64 %66, 1, !dbg !5385
  %and294 = and i64 %sub293, 64, !dbg !5385
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5385
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5385

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5385

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub298 = sub i64 %67, 1, !dbg !5385
  %and299 = and i64 %sub298, 32, !dbg !5385
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5385
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5385

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5385

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub303 = sub i64 %68, 1, !dbg !5385
  %and304 = and i64 %sub303, 16, !dbg !5385
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5385
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5385

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5385

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub308 = sub i64 %69, 1, !dbg !5385
  %and309 = and i64 %sub308, 8, !dbg !5385
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5385
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5385

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5385

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub313 = sub i64 %70, 1, !dbg !5385
  %and314 = and i64 %sub313, 4, !dbg !5385
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5385
  %71 = zext i1 %tobool315 to i64, !dbg !5385
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5385
  br label %cond.end, !dbg !5385

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5385
  br label %cond.end317, !dbg !5385

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5385
  br label %cond.end319, !dbg !5385

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5385
  br label %cond.end321, !dbg !5385

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5385
  br label %cond.end323, !dbg !5385

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5385
  br label %cond.end325, !dbg !5385

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5385
  br label %cond.end327, !dbg !5385

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5385
  br label %cond.end329, !dbg !5385

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5385
  br label %cond.end331, !dbg !5385

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5385
  br label %cond.end333, !dbg !5385

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5385
  br label %cond.end335, !dbg !5385

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5385
  br label %cond.end337, !dbg !5385

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5385
  br label %cond.end339, !dbg !5385

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5385
  br label %cond.end341, !dbg !5385

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5385
  br label %cond.end343, !dbg !5385

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5385
  br label %cond.end345, !dbg !5385

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5385
  br label %cond.end347, !dbg !5385

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5385
  br label %cond.end349, !dbg !5385

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5385
  br label %cond.end351, !dbg !5385

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5385
  br label %cond.end353, !dbg !5385

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5385
  br label %cond.end355, !dbg !5385

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5385
  br label %cond.end357, !dbg !5385

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5385
  br label %cond.end359, !dbg !5385

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5385
  br label %cond.end361, !dbg !5385

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5385
  br label %cond.end363, !dbg !5385

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5385
  br label %cond.end365, !dbg !5385

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5385
  br label %cond.end367, !dbg !5385

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5385
  br label %cond.end369, !dbg !5385

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5385
  br label %cond.end371, !dbg !5385

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5385
  br label %cond.end373, !dbg !5385

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5385
  br label %cond.end375, !dbg !5385

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5385
  br label %cond.end377, !dbg !5385

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5385
  br label %cond.end379, !dbg !5385

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5385
  br label %cond.end381, !dbg !5385

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5385
  br label %cond.end383, !dbg !5385

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5385
  br label %cond.end385, !dbg !5385

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5385
  br label %cond.end387, !dbg !5385

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5385
  br label %cond.end389, !dbg !5385

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5385
  br label %cond.end391, !dbg !5385

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5385
  br label %cond.end393, !dbg !5385

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5385
  br label %cond.end395, !dbg !5385

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5385
  br label %cond.end397, !dbg !5385

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5385
  br label %cond.end399, !dbg !5385

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5385
  br label %cond.end401, !dbg !5385

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5385
  br label %cond.end403, !dbg !5385

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5385
  br label %cond.end405, !dbg !5385

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5385
  br label %cond.end407, !dbg !5385

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5385
  br label %cond.end409, !dbg !5385

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5385
  br label %cond.end411, !dbg !5385

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5385
  br label %cond.end413, !dbg !5385

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5385
  br label %cond.end415, !dbg !5385

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5385
  br label %cond.end417, !dbg !5385

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5385
  br label %cond.end419, !dbg !5385

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5385
  br label %cond.end421, !dbg !5385

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5385
  br label %cond.end423, !dbg !5385

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5385
  br label %cond.end425, !dbg !5385

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5385
  br label %cond.end427, !dbg !5385

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5385
  br label %cond.end429, !dbg !5385

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5385
  br label %cond.end431, !dbg !5385

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5385
  br label %cond.end433, !dbg !5385

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5385
  br label %cond.end435, !dbg !5385

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5385
  br label %cond.end437, !dbg !5385

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5385
  br label %cond.end440, !dbg !5385

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5385

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5385
  br label %cond.end444, !dbg !5385

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5385
  %sub443 = sub i64 %72, 1, !dbg !5385
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5385
  br label %cond.end444, !dbg !5385

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5385
  %sub446 = sub i32 %cond445, 12, !dbg !5386
  %add = add i32 %sub446, 1, !dbg !5387
  store i32 %add, i32* %retval, align 4, !dbg !5388
  br label %return, !dbg !5388

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5389
  %dec = add i64 %73, -1, !dbg !5389
  store i64 %dec, i64* %size.addr, align 8, !dbg !5389
  %74 = load i64, i64* %size.addr, align 8, !dbg !5390
  %shr = lshr i64 %74, 12, !dbg !5390
  store i64 %shr, i64* %size.addr, align 8, !dbg !5390
  %75 = load i64, i64* %size.addr, align 8, !dbg !5391
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5368
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5392
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5393
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !5392, !srcloc !5394
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5392
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5395
  %add.i = add i32 %79, 1, !dbg !5396
  store i32 %add.i, i32* %retval, align 4, !dbg !5397
  br label %return, !dbg !5397

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5398
  ret i32 %80, !dbg !5398
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5399 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5360, metadata !DIExpression()), !dbg !5403
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5367, metadata !DIExpression()), !dbg !5405
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  %0 = load i64, i64* %n.addr, align 8, !dbg !5408
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5405
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5409
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5410
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !5409, !srcloc !5394
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5409
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5411
  %add.i = add i32 %4, 1, !dbg !5412
  %sub = sub i32 %add.i, 1, !dbg !5413
  ret i32 %sub, !dbg !5414
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5415 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5427
  ret i8* %0, !dbg !5428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5429 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  ret i1 true, !dbg !5437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5438 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  ret void, !dbg !5448
}

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !5449 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  ret i1 true, !dbg !5454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_notify_sys(%struct.notifier_block* %this, i64 %code, i8* %unused) #2 !dbg !5455 {
entry:
  %this.addr = alloca %struct.notifier_block*, align 8
  %code.addr = alloca i64, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.notifier_block* %this, %struct.notifier_block** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %this.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  store i64 %code, i64* %code.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %code.addr, metadata !5458, metadata !DIExpression()), !dbg !5459
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !5460, metadata !DIExpression()), !dbg !5461
  %0 = load i64, i64* %code.addr, align 8, !dbg !5462
  %cmp = icmp eq i64 %0, 1, !dbg !5464
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5465

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %code.addr, align 8, !dbg !5466
  %cmp1 = icmp eq i64 %1, 2, !dbg !5467
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5468

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5469
  %call = call i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %2) #10, !dbg !5470
  br label %if.end, !dbg !5470

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret i32 0, !dbg !5471
}

; Function Attrs: noredzone
declare dso_local i64 @no_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @usb_pcwd_temperature_read(%struct.file* %file, i8* %data, i64 %len, i64* %ppos) #2 !dbg !5472 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5473, metadata !DIExpression()), !dbg !5478
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5487, metadata !DIExpression()), !dbg !5488
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5489, metadata !DIExpression()), !dbg !5490
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5491, metadata !DIExpression()), !dbg !5492
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5493, metadata !DIExpression()), !dbg !5496
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5497, metadata !DIExpression()), !dbg !5498
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5499, metadata !DIExpression()), !dbg !5500
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5501, metadata !DIExpression()), !dbg !5502
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %temperature = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !5511, metadata !DIExpression()), !dbg !5512
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5513
  %call = call i32 @usb_pcwd_get_temperature(%struct.usb_pcwd_private* %0, i32* %temperature) #10, !dbg !5515
  %tobool = icmp ne i32 %call, 0, !dbg !5515
  br i1 %tobool, label %if.then, label %if.end, !dbg !5516

if.then:                                          ; preds = %entry
  store i64 -14, i64* %retval, align 8, !dbg !5517
  br label %return, !dbg !5517

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5518
  %2 = bitcast i32* %temperature to i8*, !dbg !5519
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %2, i8** %from.addr.i, align 8
  store i64 1, i64* %n.addr.i, align 8
  %3 = load i8*, i8** %from.addr.i, align 8, !dbg !5520
  %4 = load i64, i64* %n.addr.i, align 8, !dbg !5520
  store i8* %3, i8** %addr.addr.i.i, align 8
  store i64 %4, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5492
  %5 = load i32, i32* %sz.i.i, align 4, !dbg !5521
  %cmp.i.i = icmp sge i32 %5, 0, !dbg !5521
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5521

land.rhs.i.i:                                     ; preds = %if.end
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !5521
  %conv.i.i = sext i32 %6 to i64, !dbg !5521
  %7 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5521
  %cmp1.i.i = icmp ult i64 %conv.i.i, %7, !dbg !5521
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end
  %8 = phi i1 [ false, %if.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5523
  %lnot.i.i = xor i1 %8, true, !dbg !5521
  %lnot.ext.i.i = zext i1 %8 to i32, !dbg !5521
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5521
  br i1 %8, label %if.then.i.i, label %if.end10.i.i, !dbg !5524

if.then.i.i:                                      ; preds = %land.end.i.i
  %9 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5525
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !5528
  br i1 %10, label %if.else.i.i, label %if.then5.i.i, !dbg !5529

if.then5.i.i:                                     ; preds = %if.then.i.i
  %11 = load i32, i32* %sz.i.i, align 4, !dbg !5530
  %12 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5531
  call void @copy_overflow(i32 %11, i64 %12) #13, !dbg !5532
  br label %if.end9.i.i, !dbg !5532

if.else.i.i:                                      ; preds = %if.then.i.i
  %13 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5533
  %tobool6.i.i = trunc i8 %13 to i1, !dbg !5533
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5535

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5536
  br label %if.end.i.i, !dbg !5536

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5537
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5538
  br label %check_copy_size.exit.i, !dbg !5538

if.end10.i.i:                                     ; preds = %land.end.i.i
  %14 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5496
  %cmp11.i.i = icmp ugt i64 %14, 2147483647, !dbg !5496
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5496
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5496
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5496
  %15 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5539
  %tobool17.i.i = icmp ne i32 %15, 0, !dbg !5539
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5539
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5539
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5539
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5496

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5541, !srcloc !5544
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5545, !srcloc !5547
  br label %if.end31.i.i, !dbg !5548

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5496
  %tobool32.i.i = icmp ne i32 %16, 0, !dbg !5496
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5496
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5496
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5496
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5539
  %17 = load i64, i64* %tmp.i.i, align 8, !dbg !5496
  %tobool38.i.i = icmp ne i64 %17, 0, !dbg !5549
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5550

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5551
  br label %check_copy_size.exit.i, !dbg !5551

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %18 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5552
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5553
  %20 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5554
  %tobool41.i.i = trunc i8 %20 to i1, !dbg !5554
  call void @check_object_size(i8* %18, i64 %19, i1 zeroext %tobool41.i.i) #13, !dbg !5555
  store i1 true, i1* %retval.i.i, align 1, !dbg !5556
  br label %check_copy_size.exit.i, !dbg !5556

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %21 = load i1, i1* %retval.i.i, align 1, !dbg !5557
  %lnot.i = xor i1 %21, true, !dbg !5520
  %lnot.ext.i = zext i1 %21 to i32, !dbg !5520
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5520
  br i1 %21, label %if.then.i, label %copy_to_user.exit, !dbg !5558

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %22 = load i8*, i8** %to.addr.i, align 8, !dbg !5559
  %23 = load i8*, i8** %from.addr.i, align 8, !dbg !5560
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !5561
  %call2.i = call i64 @_copy_to_user(i8* %22, i8* %23, i64 %24) #13, !dbg !5562
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5563
  br label %copy_to_user.exit, !dbg !5564

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !5565
  %tobool2 = icmp ne i64 %25, 0, !dbg !5566
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5567

if.then3:                                         ; preds = %copy_to_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !5568
  br label %return, !dbg !5568

if.end4:                                          ; preds = %copy_to_user.exit
  store i64 1, i64* %retval, align 8, !dbg !5569
  br label %return, !dbg !5569

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %26 = load i64, i64* %retval, align 8, !dbg !5570
  ret i64 %26, !dbg !5570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_temperature_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5571 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5576
  %1 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5577
  %call = call i32 @stream_open(%struct.inode* %0, %struct.file* %1) #10, !dbg !5578
  ret i32 %call, !dbg !5579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_temperature_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5580 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  ret i32 0, !dbg !5585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_get_temperature(%struct.usb_pcwd_private* %usb_pcwd, i32* %temperature) #2 !dbg !5586 {
entry:
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  %temperature.addr = alloca i32*, align 8
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store i32* %temperature, i32** %temperature.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temperature.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  call void @llvm.dbg.declare(metadata i8* %msb, metadata !5593, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.declare(metadata i8* %lsb, metadata !5595, metadata !DIExpression()), !dbg !5596
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5597
  %call = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %0, i8 zeroext 2, i8* %msb, i8* %lsb) #10, !dbg !5598
  %1 = load i8, i8* %lsb, align 1, !dbg !5599
  %conv = zext i8 %1 to i32, !dbg !5599
  %mul = mul i32 %conv, 9, !dbg !5600
  %div = sdiv i32 %mul, 5, !dbg !5601
  %add = add i32 %div, 32, !dbg !5602
  %2 = load i32*, i32** %temperature.addr, align 8, !dbg !5603
  store i32 %add, i32* %2, align 4, !dbg !5604
  ret i32 0, !dbg !5605
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !5606 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5609, metadata !DIExpression()), !dbg !5610
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5613, metadata !DIExpression()), !dbg !5615
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5615
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5616
  %tobool = icmp ne i32 %0, 0, !dbg !5616
  %lnot = xor i1 %tobool, true, !dbg !5616
  %lnot1 = xor i1 %lnot, true, !dbg !5616
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5616
  %conv = sext i32 %lnot.ext to i64, !dbg !5616
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5616
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5615

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5616

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5618

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5620

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5618
  %2 = load i64, i64* %count.addr, align 8, !dbg !5618
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %1, i64 %2) #10, !dbg !5618
  br label %do.body4, !dbg !5618

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5622

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5624

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5622

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 134, i32 2313, i64 12) #9, !dbg !5626, !srcloc !5628
  br label %do.end8, !dbg !5626

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #9, !dbg !5629, !srcloc !5631
  br label %do.body9, !dbg !5622

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5632

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5622

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5618

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5634

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5618

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5618

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5615
  %tobool15 = icmp ne i32 %3, 0, !dbg !5615
  %lnot16 = xor i1 %tobool15, true, !dbg !5615
  %lnot18 = xor i1 %lnot16, true, !dbg !5615
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5615
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5615
  store i64 %conv20, i64* %tmp, align 8, !dbg !5616
  %4 = load i64, i64* %tmp, align 8, !dbg !5615
  ret void, !dbg !5636
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !5637 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5642, metadata !DIExpression()), !dbg !5643
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  ret void, !dbg !5646
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @usb_pcwd_write(%struct.file* %file, i8* %data, i64 %len, i64* %ppos) #2 !dbg !5647 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i8, align 1
  %tmp5 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5650, metadata !DIExpression()), !dbg !5651
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5652, metadata !DIExpression()), !dbg !5653
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  %0 = load i64, i64* %len.addr, align 8, !dbg !5656
  %tobool = icmp ne i64 %0, 0, !dbg !5656
  br i1 %tobool, label %if.then, label %if.end14, !dbg !5658

if.then:                                          ; preds = %entry
  %1 = load i8, i8* @nowayout, align 1, !dbg !5659
  %tobool1 = trunc i8 %1 to i1, !dbg !5659
  br i1 %tobool1, label %if.end13, label %if.then2, !dbg !5662

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i64* %i, metadata !5663, metadata !DIExpression()), !dbg !5665
  store i8 0, i8* @expect_release, align 1, !dbg !5666
  store i64 0, i64* %i, align 8, !dbg !5667
  br label %for.cond, !dbg !5669

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i64, i64* %i, align 8, !dbg !5670
  %3 = load i64, i64* %len.addr, align 8, !dbg !5672
  %cmp = icmp ne i64 %2, %3, !dbg !5673
  br i1 %cmp, label %for.body, label %for.end, !dbg !5674

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %c, metadata !5675, metadata !DIExpression()), !dbg !5677
  call void @might_fault() #10, !dbg !5678
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !5681, metadata !DIExpression()), !dbg !5683
  call void @llvm.dbg.declare(metadata i8* %__val_gu, metadata !5684, metadata !DIExpression()), !dbg !5683
  %4 = call i64 @llvm.read_register.i64(metadata !4129), !dbg !5683
  %5 = load i8*, i8** %data.addr, align 8, !dbg !5683
  %6 = load i64, i64* %i, align 8, !dbg !5683
  %add.ptr = getelementptr i8, i8* %5, i64 %6, !dbg !5683
  %7 = call { i8*, i8, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr, i64 1, i64 %4) #9, !dbg !5683, !srcloc !5685
  %asmresult = extractvalue { i8*, i8, i64 } %7, 0, !dbg !5683
  %asmresult3 = extractvalue { i8*, i8, i64 } %7, 1, !dbg !5683
  %asmresult4 = extractvalue { i8*, i8, i64 } %7, 2, !dbg !5683
  %8 = ptrtoint i8* %asmresult to i64, !dbg !5683
  %9 = trunc i64 %8 to i32, !dbg !5683
  store i32 %9, i32* %__ret_gu, align 4, !dbg !5683
  store i8 %asmresult3, i8* %__val_gu, align 1, !dbg !5683
  call void @llvm.write_register.i64(metadata !4129, i64 %asmresult4), !dbg !5683
  %10 = load i8, i8* %__val_gu, align 1, !dbg !5683
  store i8 %10, i8* %c, align 1, !dbg !5683
  %11 = load i32, i32* %__ret_gu, align 4, !dbg !5683
  %conv = sext i32 %11 to i64, !dbg !5683
  store i64 %conv, i64* %tmp5, align 8, !dbg !5683
  %12 = load i64, i64* %tmp5, align 8, !dbg !5683
  store i64 %12, i64* %tmp, align 8, !dbg !5678
  %13 = load i64, i64* %tmp, align 8, !dbg !5678
  %tobool6 = icmp ne i64 %13, 0, !dbg !5686
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !5687

if.then7:                                         ; preds = %for.body
  store i64 -14, i64* %retval, align 8, !dbg !5688
  br label %return, !dbg !5688

if.end:                                           ; preds = %for.body
  %14 = load i8, i8* %c, align 1, !dbg !5689
  %conv8 = sext i8 %14 to i32, !dbg !5689
  %cmp9 = icmp eq i32 %conv8, 86, !dbg !5691
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5692

if.then11:                                        ; preds = %if.end
  store i8 42, i8* @expect_release, align 1, !dbg !5693
  br label %if.end12, !dbg !5694

if.end12:                                         ; preds = %if.then11, %if.end
  br label %for.inc, !dbg !5695

for.inc:                                          ; preds = %if.end12
  %15 = load i64, i64* %i, align 8, !dbg !5696
  %inc = add i64 %15, 1, !dbg !5696
  store i64 %inc, i64* %i, align 8, !dbg !5696
  br label %for.cond, !dbg !5697, !llvm.loop !5698

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !5700

if.end13:                                         ; preds = %for.end, %if.then
  %16 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5701
  %call = call i32 @usb_pcwd_keepalive(%struct.usb_pcwd_private* %16) #10, !dbg !5702
  br label %if.end14, !dbg !5703

if.end14:                                         ; preds = %if.end13, %entry
  %17 = load i64, i64* %len.addr, align 8, !dbg !5704
  store i64 %17, i64* %retval, align 8, !dbg !5705
  br label %return, !dbg !5705

return:                                           ; preds = %if.end14, %if.then7
  %18 = load i64, i64* %retval, align 8, !dbg !5706
  ret i64 %18, !dbg !5706
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @usb_pcwd_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #2 !dbg !4110 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5473, metadata !DIExpression()), !dbg !5707
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5487, metadata !DIExpression()), !dbg !5711
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5489, metadata !DIExpression()), !dbg !5712
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5491, metadata !DIExpression()), !dbg !5713
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5493, metadata !DIExpression()), !dbg !5714
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5497, metadata !DIExpression()), !dbg !5715
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5499, metadata !DIExpression()), !dbg !5716
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5501, metadata !DIExpression()), !dbg !5717
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %argp = alloca i8*, align 8
  %p = alloca i32*, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i32, align 4
  %tmp3 = alloca i64, align 8
  %temperature = alloca i32, align 4
  %tmp8 = alloca i64, align 8
  %__ret_pu9 = alloca i32, align 4
  %__ptr_pu10 = alloca i8*, align 8
  %__val_pu11 = alloca i32, align 4
  %tmp14 = alloca i64, align 8
  %new_options = alloca i32, align 4
  %retval17 = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %tmp22 = alloca i64, align 8
  %new_heartbeat = alloca i32, align 4
  %tmp40 = alloca i64, align 8
  %__ret_gu41 = alloca i32, align 4
  %__val_gu42 = alloca i32, align 4
  %tmp46 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  %__ret_pu58 = alloca i32, align 4
  %__ptr_pu59 = alloca i8*, align 8
  %__val_pu60 = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  %time_left = alloca i32, align 4
  %tmp70 = alloca i64, align 8
  %__ret_pu71 = alloca i32, align 4
  %__ptr_pu72 = alloca i8*, align 8
  %__val_pu73 = alloca i32, align 4
  %tmp76 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5722, metadata !DIExpression()), !dbg !5723
  call void @llvm.dbg.declare(metadata i8** %argp, metadata !5724, metadata !DIExpression()), !dbg !5725
  %0 = load i64, i64* %arg.addr, align 8, !dbg !5726
  %1 = inttoptr i64 %0 to i8*, !dbg !5727
  store i8* %1, i8** %argp, align 8, !dbg !5725
  call void @llvm.dbg.declare(metadata i32** %p, metadata !5728, metadata !DIExpression()), !dbg !5729
  %2 = load i8*, i8** %argp, align 8, !dbg !5730
  %3 = bitcast i8* %2 to i32*, !dbg !5730
  store i32* %3, i32** %p, align 8, !dbg !5729
  %4 = load i32, i32* %cmd.addr, align 4, !dbg !5731
  switch i32 %4, label %sw.default [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %sw.bb1
    i32 -2147199230, label %sw.bb1
    i32 -2147199229, label %sw.bb5
    i32 -2147199228, label %sw.bb16
    i32 -2147199227, label %sw.bb37
    i32 -1073457402, label %sw.bb39
    i32 -2147199225, label %sw.bb56
    i32 -2147199222, label %sw.bb65
  ], !dbg !5732

sw.bb:                                            ; preds = %entry
  %5 = load i8*, i8** %argp, align 8, !dbg !5733
  store i8* %5, i8** %to.addr.i, align 8
  store i8* bitcast (%struct.watchdog_info* @usb_pcwd_ioctl.ident to i8*), i8** %from.addr.i, align 8
  store i64 40, i64* %n.addr.i, align 8
  %6 = load i8*, i8** %from.addr.i, align 8, !dbg !5734
  %7 = load i64, i64* %n.addr.i, align 8, !dbg !5734
  store i8* %6, i8** %addr.addr.i.i, align 8
  store i64 %7, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5713
  %8 = load i32, i32* %sz.i.i, align 4, !dbg !5735
  %cmp.i.i = icmp sge i32 %8, 0, !dbg !5735
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5735

land.rhs.i.i:                                     ; preds = %sw.bb
  %9 = load i32, i32* %sz.i.i, align 4, !dbg !5735
  %conv.i.i = sext i32 %9 to i64, !dbg !5735
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5735
  %cmp1.i.i = icmp ult i64 %conv.i.i, %10, !dbg !5735
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb
  %11 = phi i1 [ false, %sw.bb ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5736
  %lnot.i.i = xor i1 %11, true, !dbg !5735
  %lnot.ext.i.i = zext i1 %11 to i32, !dbg !5735
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5735
  br i1 %11, label %if.then.i.i, label %if.end10.i.i, !dbg !5737

if.then.i.i:                                      ; preds = %land.end.i.i
  %12 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5738
  %13 = call i1 @llvm.is.constant.i64(i64 %12) #9, !dbg !5739
  br i1 %13, label %if.else.i.i, label %if.then5.i.i, !dbg !5740

if.then5.i.i:                                     ; preds = %if.then.i.i
  %14 = load i32, i32* %sz.i.i, align 4, !dbg !5741
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5742
  call void @copy_overflow(i32 %14, i64 %15) #13, !dbg !5743
  br label %if.end9.i.i, !dbg !5743

if.else.i.i:                                      ; preds = %if.then.i.i
  %16 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5744
  %tobool6.i.i = trunc i8 %16 to i1, !dbg !5744
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5745

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5746
  br label %if.end.i.i, !dbg !5746

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5747
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5748
  br label %check_copy_size.exit.i, !dbg !5748

if.end10.i.i:                                     ; preds = %land.end.i.i
  %17 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5714
  %cmp11.i.i = icmp ugt i64 %17, 2147483647, !dbg !5714
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5714
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5714
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5714
  %18 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5749
  %tobool17.i.i = icmp ne i32 %18, 0, !dbg !5749
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5749
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5749
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5749
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5714

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5750, !srcloc !5544
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5751, !srcloc !5547
  br label %if.end31.i.i, !dbg !5752

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %19 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5714
  %tobool32.i.i = icmp ne i32 %19, 0, !dbg !5714
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5714
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5714
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5714
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5749
  %20 = load i64, i64* %tmp.i.i, align 8, !dbg !5714
  %tobool38.i.i = icmp ne i64 %20, 0, !dbg !5753
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5754

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5755
  br label %check_copy_size.exit.i, !dbg !5755

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %21 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5756
  %22 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5757
  %23 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5758
  %tobool41.i.i = trunc i8 %23 to i1, !dbg !5758
  call void @check_object_size(i8* %21, i64 %22, i1 zeroext %tobool41.i.i) #13, !dbg !5759
  store i1 true, i1* %retval.i.i, align 1, !dbg !5760
  br label %check_copy_size.exit.i, !dbg !5760

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %24 = load i1, i1* %retval.i.i, align 1, !dbg !5761
  %lnot.i = xor i1 %24, true, !dbg !5734
  %lnot.ext.i = zext i1 %24 to i32, !dbg !5734
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5734
  br i1 %24, label %if.then.i, label %copy_to_user.exit, !dbg !5762

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %25 = load i8*, i8** %to.addr.i, align 8, !dbg !5763
  %26 = load i8*, i8** %from.addr.i, align 8, !dbg !5764
  %27 = load i64, i64* %n.addr.i, align 8, !dbg !5765
  %call2.i = call i64 @_copy_to_user(i8* %25, i8* %26, i64 %27) #13, !dbg !5766
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5767
  br label %copy_to_user.exit, !dbg !5768

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %28 = load i64, i64* %n.addr.i, align 8, !dbg !5769
  %tobool = icmp ne i64 %28, 0, !dbg !5770
  %29 = zext i1 %tobool to i64, !dbg !5770
  %cond = select i1 %tobool, i32 -14, i32 0, !dbg !5770
  %conv = sext i32 %cond to i64, !dbg !5770
  store i64 %conv, i64* %retval, align 8, !dbg !5771
  br label %return, !dbg !5771

sw.bb1:                                           ; preds = %entry, %entry
  call void @might_fault() #10, !dbg !5772
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !5774, metadata !DIExpression()), !dbg !5776
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !5777, metadata !DIExpression()), !dbg !5776
  call void @llvm.dbg.declare(metadata i32* %__val_pu, metadata !5778, metadata !DIExpression()), !dbg !5776
  %30 = load i32*, i32** %p, align 8, !dbg !5776
  %31 = bitcast i32* %30 to i8*, !dbg !5776
  store i8* %31, i8** %__ptr_pu, align 8, !dbg !5776
  store i32 0, i32* %__val_pu, align 4, !dbg !5776
  %32 = call i64 @llvm.read_register.i64(metadata !4129), !dbg !5776
  %33 = load i8*, i8** %__ptr_pu, align 8, !dbg !5776
  %34 = load i32, i32* %__val_pu, align 4, !dbg !5776
  %35 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %33, i32 %34, i64 4, i64 %32) #9, !dbg !5776, !srcloc !5779
  %asmresult = extractvalue { i8*, i64 } %35, 0, !dbg !5776
  %asmresult2 = extractvalue { i8*, i64 } %35, 1, !dbg !5776
  %36 = ptrtoint i8* %asmresult to i64, !dbg !5776
  %37 = trunc i64 %36 to i32, !dbg !5776
  store i32 %37, i32* %__ret_pu, align 4, !dbg !5776
  call void @llvm.write_register.i64(metadata !4129, i64 %asmresult2), !dbg !5776
  %38 = load i32, i32* %__ret_pu, align 4, !dbg !5776
  %conv4 = sext i32 %38 to i64, !dbg !5776
  store i64 %conv4, i64* %tmp3, align 8, !dbg !5776
  %39 = load i64, i64* %tmp3, align 8, !dbg !5776
  store i64 %39, i64* %tmp, align 8, !dbg !5772
  %40 = load i64, i64* %tmp, align 8, !dbg !5772
  store i64 %40, i64* %retval, align 8, !dbg !5780
  br label %return, !dbg !5780

sw.bb5:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %temperature, metadata !5781, metadata !DIExpression()), !dbg !5783
  %41 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5784
  %call6 = call i32 @usb_pcwd_get_temperature(%struct.usb_pcwd_private* %41, i32* %temperature) #10, !dbg !5786
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5786
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5787

if.then:                                          ; preds = %sw.bb5
  store i64 -14, i64* %retval, align 8, !dbg !5788
  br label %return, !dbg !5788

if.end:                                           ; preds = %sw.bb5
  call void @might_fault() #10, !dbg !5789
  call void @llvm.dbg.declare(metadata i32* %__ret_pu9, metadata !5791, metadata !DIExpression()), !dbg !5793
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu10, metadata !5794, metadata !DIExpression()), !dbg !5793
  call void @llvm.dbg.declare(metadata i32* %__val_pu11, metadata !5795, metadata !DIExpression()), !dbg !5793
  %42 = load i32*, i32** %p, align 8, !dbg !5793
  %43 = bitcast i32* %42 to i8*, !dbg !5793
  store i8* %43, i8** %__ptr_pu10, align 8, !dbg !5793
  %44 = load i32, i32* %temperature, align 4, !dbg !5793
  store i32 %44, i32* %__val_pu11, align 4, !dbg !5793
  %45 = call i64 @llvm.read_register.i64(metadata !4129), !dbg !5793
  %46 = load i8*, i8** %__ptr_pu10, align 8, !dbg !5793
  %47 = load i32, i32* %__val_pu11, align 4, !dbg !5793
  %48 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %46, i32 %47, i64 4, i64 %45) #9, !dbg !5793, !srcloc !5796
  %asmresult12 = extractvalue { i8*, i64 } %48, 0, !dbg !5793
  %asmresult13 = extractvalue { i8*, i64 } %48, 1, !dbg !5793
  %49 = ptrtoint i8* %asmresult12 to i64, !dbg !5793
  %50 = trunc i64 %49 to i32, !dbg !5793
  store i32 %50, i32* %__ret_pu9, align 4, !dbg !5793
  call void @llvm.write_register.i64(metadata !4129, i64 %asmresult13), !dbg !5793
  %51 = load i32, i32* %__ret_pu9, align 4, !dbg !5793
  %conv15 = sext i32 %51 to i64, !dbg !5793
  store i64 %conv15, i64* %tmp14, align 8, !dbg !5793
  %52 = load i64, i64* %tmp14, align 8, !dbg !5793
  store i64 %52, i64* %tmp8, align 8, !dbg !5789
  %53 = load i64, i64* %tmp8, align 8, !dbg !5789
  store i64 %53, i64* %retval, align 8, !dbg !5797
  br label %return, !dbg !5797

sw.bb16:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %new_options, metadata !5798, metadata !DIExpression()), !dbg !5800
  call void @llvm.dbg.declare(metadata i32* %retval17, metadata !5801, metadata !DIExpression()), !dbg !5802
  store i32 -22, i32* %retval17, align 4, !dbg !5802
  call void @might_fault() #10, !dbg !5803
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !5806, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.declare(metadata i32* %__val_gu, metadata !5809, metadata !DIExpression()), !dbg !5808
  %54 = call i64 @llvm.read_register.i64(metadata !4129), !dbg !5808
  %55 = load i32*, i32** %p, align 8, !dbg !5808
  %56 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %55, i64 4, i64 %54) #9, !dbg !5808, !srcloc !5810
  %asmresult19 = extractvalue { i32*, i32, i64 } %56, 0, !dbg !5808
  %asmresult20 = extractvalue { i32*, i32, i64 } %56, 1, !dbg !5808
  %asmresult21 = extractvalue { i32*, i32, i64 } %56, 2, !dbg !5808
  %57 = ptrtoint i32* %asmresult19 to i64, !dbg !5808
  %58 = trunc i64 %57 to i32, !dbg !5808
  store i32 %58, i32* %__ret_gu, align 4, !dbg !5808
  store i32 %asmresult20, i32* %__val_gu, align 4, !dbg !5808
  call void @llvm.write_register.i64(metadata !4129, i64 %asmresult21), !dbg !5808
  %59 = load i32, i32* %__val_gu, align 4, !dbg !5808
  store i32 %59, i32* %new_options, align 4, !dbg !5808
  %60 = load i32, i32* %__ret_gu, align 4, !dbg !5808
  %conv23 = sext i32 %60 to i64, !dbg !5808
  store i64 %conv23, i64* %tmp22, align 8, !dbg !5808
  %61 = load i64, i64* %tmp22, align 8, !dbg !5808
  store i64 %61, i64* %tmp18, align 8, !dbg !5803
  %62 = load i64, i64* %tmp18, align 8, !dbg !5803
  %tobool24 = icmp ne i64 %62, 0, !dbg !5811
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5812

if.then25:                                        ; preds = %sw.bb16
  store i64 -14, i64* %retval, align 8, !dbg !5813
  br label %return, !dbg !5813

if.end26:                                         ; preds = %sw.bb16
  %63 = load i32, i32* %new_options, align 4, !dbg !5814
  %and = and i32 %63, 1, !dbg !5816
  %tobool27 = icmp ne i32 %and, 0, !dbg !5816
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5817

if.then28:                                        ; preds = %if.end26
  %64 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5818
  %call29 = call i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %64) #10, !dbg !5820
  store i32 0, i32* %retval17, align 4, !dbg !5821
  br label %if.end30, !dbg !5822

if.end30:                                         ; preds = %if.then28, %if.end26
  %65 = load i32, i32* %new_options, align 4, !dbg !5823
  %and31 = and i32 %65, 2, !dbg !5825
  %tobool32 = icmp ne i32 %and31, 0, !dbg !5825
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !5826

if.then33:                                        ; preds = %if.end30
  %66 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5827
  %call34 = call i32 @usb_pcwd_start(%struct.usb_pcwd_private* %66) #10, !dbg !5829
  store i32 0, i32* %retval17, align 4, !dbg !5830
  br label %if.end35, !dbg !5831

if.end35:                                         ; preds = %if.then33, %if.end30
  %67 = load i32, i32* %retval17, align 4, !dbg !5832
  %conv36 = sext i32 %67 to i64, !dbg !5832
  store i64 %conv36, i64* %retval, align 8, !dbg !5833
  br label %return, !dbg !5833

sw.bb37:                                          ; preds = %entry
  %68 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5834
  %call38 = call i32 @usb_pcwd_keepalive(%struct.usb_pcwd_private* %68) #10, !dbg !5835
  store i64 0, i64* %retval, align 8, !dbg !5836
  br label %return, !dbg !5836

sw.bb39:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %new_heartbeat, metadata !5837, metadata !DIExpression()), !dbg !5839
  call void @might_fault() #10, !dbg !5840
  call void @llvm.dbg.declare(metadata i32* %__ret_gu41, metadata !5843, metadata !DIExpression()), !dbg !5845
  call void @llvm.dbg.declare(metadata i32* %__val_gu42, metadata !5846, metadata !DIExpression()), !dbg !5845
  %69 = call i64 @llvm.read_register.i64(metadata !4129), !dbg !5845
  %70 = load i32*, i32** %p, align 8, !dbg !5845
  %71 = call { i32*, i32, i64 } asm sideeffect "call __get_user_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %70, i64 4, i64 %69) #9, !dbg !5845, !srcloc !5847
  %asmresult43 = extractvalue { i32*, i32, i64 } %71, 0, !dbg !5845
  %asmresult44 = extractvalue { i32*, i32, i64 } %71, 1, !dbg !5845
  %asmresult45 = extractvalue { i32*, i32, i64 } %71, 2, !dbg !5845
  %72 = ptrtoint i32* %asmresult43 to i64, !dbg !5845
  %73 = trunc i64 %72 to i32, !dbg !5845
  store i32 %73, i32* %__ret_gu41, align 4, !dbg !5845
  store i32 %asmresult44, i32* %__val_gu42, align 4, !dbg !5845
  call void @llvm.write_register.i64(metadata !4129, i64 %asmresult45), !dbg !5845
  %74 = load i32, i32* %__val_gu42, align 4, !dbg !5845
  store i32 %74, i32* %new_heartbeat, align 4, !dbg !5845
  %75 = load i32, i32* %__ret_gu41, align 4, !dbg !5845
  %conv47 = sext i32 %75 to i64, !dbg !5845
  store i64 %conv47, i64* %tmp46, align 8, !dbg !5845
  %76 = load i64, i64* %tmp46, align 8, !dbg !5845
  store i64 %76, i64* %tmp40, align 8, !dbg !5840
  %77 = load i64, i64* %tmp40, align 8, !dbg !5840
  %tobool48 = icmp ne i64 %77, 0, !dbg !5848
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !5849

if.then49:                                        ; preds = %sw.bb39
  store i64 -14, i64* %retval, align 8, !dbg !5850
  br label %return, !dbg !5850

if.end50:                                         ; preds = %sw.bb39
  %78 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5851
  %79 = load i32, i32* %new_heartbeat, align 4, !dbg !5853
  %call51 = call i32 @usb_pcwd_set_heartbeat(%struct.usb_pcwd_private* %78, i32 %79) #10, !dbg !5854
  %tobool52 = icmp ne i32 %call51, 0, !dbg !5854
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !5855

if.then53:                                        ; preds = %if.end50
  store i64 -22, i64* %retval, align 8, !dbg !5856
  br label %return, !dbg !5856

if.end54:                                         ; preds = %if.end50
  %80 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5857
  %call55 = call i32 @usb_pcwd_keepalive(%struct.usb_pcwd_private* %80) #10, !dbg !5858
  br label %sw.bb56, !dbg !5859

sw.bb56:                                          ; preds = %entry, %if.end54
  call void @might_fault() #10, !dbg !5860
  call void @llvm.dbg.declare(metadata i32* %__ret_pu58, metadata !5862, metadata !DIExpression()), !dbg !5864
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu59, metadata !5865, metadata !DIExpression()), !dbg !5864
  call void @llvm.dbg.declare(metadata i32* %__val_pu60, metadata !5866, metadata !DIExpression()), !dbg !5864
  %81 = load i32*, i32** %p, align 8, !dbg !5864
  %82 = bitcast i32* %81 to i8*, !dbg !5864
  store i8* %82, i8** %__ptr_pu59, align 8, !dbg !5864
  %83 = load i32, i32* @heartbeat, align 4, !dbg !5864
  store i32 %83, i32* %__val_pu60, align 4, !dbg !5864
  %84 = call i64 @llvm.read_register.i64(metadata !4129), !dbg !5864
  %85 = load i8*, i8** %__ptr_pu59, align 8, !dbg !5864
  %86 = load i32, i32* %__val_pu60, align 4, !dbg !5864
  %87 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %85, i32 %86, i64 4, i64 %84) #9, !dbg !5864, !srcloc !5867
  %asmresult61 = extractvalue { i8*, i64 } %87, 0, !dbg !5864
  %asmresult62 = extractvalue { i8*, i64 } %87, 1, !dbg !5864
  %88 = ptrtoint i8* %asmresult61 to i64, !dbg !5864
  %89 = trunc i64 %88 to i32, !dbg !5864
  store i32 %89, i32* %__ret_pu58, align 4, !dbg !5864
  call void @llvm.write_register.i64(metadata !4129, i64 %asmresult62), !dbg !5864
  %90 = load i32, i32* %__ret_pu58, align 4, !dbg !5864
  %conv64 = sext i32 %90 to i64, !dbg !5864
  store i64 %conv64, i64* %tmp63, align 8, !dbg !5864
  %91 = load i64, i64* %tmp63, align 8, !dbg !5864
  store i64 %91, i64* %tmp57, align 8, !dbg !5860
  %92 = load i64, i64* %tmp57, align 8, !dbg !5860
  store i64 %92, i64* %retval, align 8, !dbg !5868
  br label %return, !dbg !5868

sw.bb65:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %time_left, metadata !5869, metadata !DIExpression()), !dbg !5871
  %93 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5872
  %call66 = call i32 @usb_pcwd_get_timeleft(%struct.usb_pcwd_private* %93, i32* %time_left) #10, !dbg !5874
  %tobool67 = icmp ne i32 %call66, 0, !dbg !5874
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !5875

if.then68:                                        ; preds = %sw.bb65
  store i64 -14, i64* %retval, align 8, !dbg !5876
  br label %return, !dbg !5876

if.end69:                                         ; preds = %sw.bb65
  call void @might_fault() #10, !dbg !5877
  call void @llvm.dbg.declare(metadata i32* %__ret_pu71, metadata !5879, metadata !DIExpression()), !dbg !5881
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu72, metadata !5882, metadata !DIExpression()), !dbg !5881
  call void @llvm.dbg.declare(metadata i32* %__val_pu73, metadata !5883, metadata !DIExpression()), !dbg !5881
  %94 = load i32*, i32** %p, align 8, !dbg !5881
  %95 = bitcast i32* %94 to i8*, !dbg !5881
  store i8* %95, i8** %__ptr_pu72, align 8, !dbg !5881
  %96 = load i32, i32* %time_left, align 4, !dbg !5881
  store i32 %96, i32* %__val_pu73, align 4, !dbg !5881
  %97 = call i64 @llvm.read_register.i64(metadata !4129), !dbg !5881
  %98 = load i8*, i8** %__ptr_pu72, align 8, !dbg !5881
  %99 = load i32, i32* %__val_pu73, align 4, !dbg !5881
  %100 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %98, i32 %99, i64 4, i64 %97) #9, !dbg !5881, !srcloc !5884
  %asmresult74 = extractvalue { i8*, i64 } %100, 0, !dbg !5881
  %asmresult75 = extractvalue { i8*, i64 } %100, 1, !dbg !5881
  %101 = ptrtoint i8* %asmresult74 to i64, !dbg !5881
  %102 = trunc i64 %101 to i32, !dbg !5881
  store i32 %102, i32* %__ret_pu71, align 4, !dbg !5881
  call void @llvm.write_register.i64(metadata !4129, i64 %asmresult75), !dbg !5881
  %103 = load i32, i32* %__ret_pu71, align 4, !dbg !5881
  %conv77 = sext i32 %103 to i64, !dbg !5881
  store i64 %conv77, i64* %tmp76, align 8, !dbg !5881
  %104 = load i64, i64* %tmp76, align 8, !dbg !5881
  store i64 %104, i64* %tmp70, align 8, !dbg !5877
  %105 = load i64, i64* %tmp70, align 8, !dbg !5877
  store i64 %105, i64* %retval, align 8, !dbg !5885
  br label %return, !dbg !5885

sw.default:                                       ; preds = %entry
  store i64 -25, i64* %retval, align 8, !dbg !5886
  br label %return, !dbg !5886

return:                                           ; preds = %sw.default, %if.end69, %if.then68, %sw.bb56, %if.then53, %if.then49, %sw.bb37, %if.end35, %if.then25, %if.end, %if.then, %sw.bb1, %copy_to_user.exit
  %106 = load i64, i64* %retval, align 8, !dbg !5887
  ret i64 %106, !dbg !5887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5888 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  %call = call zeroext i1 @test_and_set_bit(i64 0, i64* @is_active) #10, !dbg !5893
  br i1 %call, label %if.then, label %if.end, !dbg !5895

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !5896
  br label %return, !dbg !5896

if.end:                                           ; preds = %entry
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5897
  %call1 = call i32 @usb_pcwd_start(%struct.usb_pcwd_private* %0) #10, !dbg !5898
  %1 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5899
  %call2 = call i32 @usb_pcwd_keepalive(%struct.usb_pcwd_private* %1) #10, !dbg !5900
  %2 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5901
  %3 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5902
  %call3 = call i32 @stream_open(%struct.inode* %2, %struct.file* %3) #10, !dbg !5903
  store i32 %call3, i32* %retval, align 4, !dbg !5904
  br label %return, !dbg !5904

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5905
  ret i32 %4, !dbg !5905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5906 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5907, metadata !DIExpression()), !dbg !5908
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  %0 = load i8, i8* @expect_release, align 1, !dbg !5911
  %conv = sext i8 %0 to i32, !dbg !5911
  %cmp = icmp eq i32 %conv, 42, !dbg !5913
  br i1 %cmp, label %if.then, label %if.else, !dbg !5914

if.then:                                          ; preds = %entry
  %1 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5915
  %call = call i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %1) #10, !dbg !5917
  br label %if.end, !dbg !5918

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !5919
  %2 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** @usb_pcwd_device, align 8, !dbg !5921
  %call3 = call i32 @usb_pcwd_keepalive(%struct.usb_pcwd_private* %2) #10, !dbg !5922
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8 0, i8* @expect_release, align 1, !dbg !5923
  call void @clear_bit(i64 0, i64* @is_active) #10, !dbg !5924
  ret i32 0, !dbg !5925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @might_fault() #2 !dbg !5926 {
entry:
  ret void, !dbg !5928
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_keepalive(%struct.usb_pcwd_private* %usb_pcwd) #2 !dbg !5929 {
entry:
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  %dummy = alloca i8, align 1
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !5930, metadata !DIExpression()), !dbg !5931
  call void @llvm.dbg.declare(metadata i8* %dummy, metadata !5932, metadata !DIExpression()), !dbg !5933
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5934
  %call = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %0, i8 zeroext 2, i8* %dummy, i8* %dummy) #10, !dbg !5935
  ret i32 0, !dbg !5936
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_start(%struct.usb_pcwd_private* %usb_pcwd) #2 !dbg !5937 {
entry:
  %retval = alloca i32, align 4
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  %retval1 = alloca i32, align 4
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !5938, metadata !DIExpression()), !dbg !5939
  call void @llvm.dbg.declare(metadata i8* %msb, metadata !5940, metadata !DIExpression()), !dbg !5941
  store i8 0, i8* %msb, align 1, !dbg !5941
  call void @llvm.dbg.declare(metadata i8* %lsb, metadata !5942, metadata !DIExpression()), !dbg !5943
  store i8 0, i8* %lsb, align 1, !dbg !5943
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5944, metadata !DIExpression()), !dbg !5945
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5946
  %call = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %0, i8 zeroext 48, i8* %msb, i8* %lsb) #10, !dbg !5947
  store i32 %call, i32* %retval1, align 4, !dbg !5948
  %1 = load i32, i32* %retval1, align 4, !dbg !5949
  %cmp = icmp eq i32 %1, 0, !dbg !5951
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5952

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8, i8* %lsb, align 1, !dbg !5953
  %conv = zext i8 %2 to i32, !dbg !5953
  %cmp2 = icmp eq i32 %conv, 0, !dbg !5954
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5955

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !5956
  store i32 -1, i32* %retval, align 4, !dbg !5958
  br label %return, !dbg !5958

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !5959
  br label %return, !dbg !5959

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5960
  ret i32 %3, !dbg !5960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_pcwd_get_timeleft(%struct.usb_pcwd_private* %usb_pcwd, i32* %time_left) #2 !dbg !5961 {
entry:
  %usb_pcwd.addr = alloca %struct.usb_pcwd_private*, align 8
  %time_left.addr = alloca i32*, align 8
  %msb = alloca i8, align 1
  %lsb = alloca i8, align 1
  store %struct.usb_pcwd_private* %usb_pcwd, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_pcwd_private** %usb_pcwd.addr, metadata !5962, metadata !DIExpression()), !dbg !5963
  store i32* %time_left, i32** %time_left.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %time_left.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  call void @llvm.dbg.declare(metadata i8* %msb, metadata !5966, metadata !DIExpression()), !dbg !5967
  call void @llvm.dbg.declare(metadata i8* %lsb, metadata !5968, metadata !DIExpression()), !dbg !5969
  %0 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %usb_pcwd.addr, align 8, !dbg !5970
  %call = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %0, i8 zeroext 24, i8* %msb, i8* %lsb) #10, !dbg !5971
  %1 = load i8, i8* %msb, align 1, !dbg !5972
  %conv = zext i8 %1 to i32, !dbg !5972
  %shl = shl i32 %conv, 8, !dbg !5973
  %2 = load i8, i8* %lsb, align 1, !dbg !5974
  %conv1 = zext i8 %2 to i32, !dbg !5974
  %add = add i32 %shl, %conv1, !dbg !5975
  %3 = load i32*, i32** %time_left.addr, align 8, !dbg !5976
  store i32 %add, i32* %3, align 4, !dbg !5977
  ret i32 0, !dbg !5978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #2 !dbg !5979 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5985, metadata !DIExpression()), !dbg !5987
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5989, metadata !DIExpression()), !dbg !5990
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5991, metadata !DIExpression()), !dbg !5993
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5994, metadata !DIExpression()), !dbg !5996
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5998, metadata !DIExpression()), !dbg !5999
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6004
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6005
  %div = sdiv i64 %1, 64, !dbg !6005
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6006
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6004
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6007
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6008
  %conv.i = trunc i64 %4 to i32, !dbg !6008
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !6009
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6010
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6010
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #13, !dbg !6010
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6011
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6012
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5993
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5993
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #9, !dbg !5993, !srcloc !6013
  store i8 %11, i8* %c.i, align 1, !dbg !5993
  %12 = load i8, i8* %c.i, align 1, !dbg !5993
  %tobool.i = trunc i8 %12 to i1, !dbg !5993
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5993
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5993
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5993
  %tobool1.i = trunc i8 %13 to i1, !dbg !5993
  ret i1 %tobool1.i, !dbg !6014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !6015 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6018, metadata !DIExpression()), !dbg !6020
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6022, metadata !DIExpression()), !dbg !6023
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4828, metadata !DIExpression()), !dbg !6024
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4838, metadata !DIExpression()), !dbg !6026
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6031
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6032
  %div = sdiv i64 %1, 64, !dbg !6032
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6033
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6031
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6034
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6035
  %conv.i = trunc i64 %4 to i32, !dbg !6035
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !6036
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6037
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6037
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #13, !dbg !6037
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6038
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6039
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !6040
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !6042
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !6043

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !6044
  %12 = bitcast i64* %11 to i8*, !dbg !6044
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6044
  %shr.i = ashr i64 %13, 3, !dbg !6044
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !6044
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !6046
  %and.i = and i64 %14, 7, !dbg !6046
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !6046
  %shl.i = shl i32 1, %sh_prom.i, !dbg !6046
  %neg.i = xor i32 %shl.i, -1, !dbg !6047
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #9, !dbg !6048, !srcloc !6049
  br label %arch_clear_bit.exit, !dbg !6050

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !6051
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !6053
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !6054, !srcloc !6055
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !6056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6057 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6060, metadata !DIExpression()), !dbg !6061
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6062, metadata !DIExpression()), !dbg !6063
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6064
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6065
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6066
  store i8* %0, i8** %driver_data, align 8, !dbg !6067
  ret void, !dbg !6068
}

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6069 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6072, metadata !DIExpression()), !dbg !6073
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6074
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6075
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #10, !dbg !6076
  ret i8* %call, !dbg !6077
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6078 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6085
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6086
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6086
  ret i8* %1, !dbg !6087
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4129}
!llvm.module.flags = !{!4130, !4131, !4132, !4133}
!llvm.ident = !{!4134}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author212", scope: !2, file: !3, line: 50, type: !4126, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !3895, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/watchdog/pcwd_usb.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !99, !108, !113, !120}
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
!125 = !{!126, !129, !131, !132, !135, !137, !141, !3818, !3888, !3890, !144, !3892, !3894}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !128, line: 76, flags: DIFlagFwdDecl)
!128 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !130, line: 148, baseType: !7)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !133, line: 24, baseType: !134)
!133 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !136, line: 29, baseType: !132)
!136 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !139)
!139 = !{!140, !142, !147, !151, !152, !153, !154, !155, !158, !159, !163, !164, !3560, !3600, !3601, !3618, !3679, !3761, !3762, !3764, !3765, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3800, !3801, !3802, !3807, !3814, !3815, !3816, !3817}
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
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !133, line: 27, baseType: !7)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !138, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !138, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !138, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !138, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !138, file: !6, line: 640, baseType: !156, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !138, file: !6, line: 641, baseType: !141, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !138, file: !6, line: 643, baseType: !160, size: 64, offset: 416)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 2)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !138, file: !6, line: 645, baseType: !137, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !138, file: !6, line: 646, baseType: !165, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !167)
!167 = !{!168, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3554, !3555, !3556, !3557, !3558, !3559}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !166, file: !6, line: 425, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !171)
!171 = !{!172, !3178, !3179, !3182, !3183, !3234, !3325, !3326, !3327, !3328, !3329, !3338, !3443, !3456, !3459, !3460, !3464, !3466, !3467, !3468, !3472, !3478, !3479, !3482, !3486, !3489, !3490, !3491, !3492, !3493, !3525, !3526, !3527, !3530, !3533, !3534, !3535, !3536}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !67, line: 462, baseType: !173, size: 512)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !174, line: 64, size: 512, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !179, !185, !187, !247, !3029, !3168, !3173, !3174, !3175, !3176, !3177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 65, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !173, file: !174, line: 66, baseType: !180, size: 128, offset: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !130, line: 178, size: 128, elements: !181)
!181 = !{!182, !184}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !130, line: 179, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !180, file: !130, line: 179, baseType: !183, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !174, line: 67, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !173, file: !174, line: 68, baseType: !188, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !174, line: 192, size: 704, elements: !190)
!190 = !{!191, !192, !208, !209}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !189, file: !174, line: 193, baseType: !180, size: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !189, file: !174, line: 194, baseType: !193, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !194, line: 83, baseType: !195)
!194 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !194, line: 71, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !195, file: !194, line: 72, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !195, file: !194, line: 72, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !198, file: !194, line: 73, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !194, line: 20, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !201, file: !194, line: 21, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !205, line: 25, baseType: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 25, elements: !207)
!207 = !{}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !189, file: !174, line: 195, baseType: !173, size: 512, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !189, file: !174, line: 196, baseType: !210, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !174, line: 156, size: 192, elements: !213)
!213 = !{!214, !219, !224}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !212, file: !174, line: 157, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!141, !188, !186}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !174, line: 158, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!177, !188, !186}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !212, file: !174, line: 159, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!141, !188, !186, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !174, line: 148, size: 20736, elements: !231)
!231 = !{!232, !237, !241, !242, !246}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !230, file: !174, line: 149, baseType: !233, size: 192)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 192, elements: !235)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!235 = !{!236}
!236 = !DISubrange(count: 3)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !230, file: !174, line: 150, baseType: !238, size: 4096, offset: 192)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 4096, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !230, file: !174, line: 151, baseType: !141, size: 32, offset: 4288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !230, file: !174, line: 152, baseType: !243, size: 16384, offset: 4320)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16384, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 2048)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !230, file: !174, line: 153, baseType: !141, size: 32, offset: 20704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !173, file: !174, line: 69, baseType: !248, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !174, line: 138, size: 448, elements: !250)
!250 = !{!251, !255, !284, !286, !2989, !3019, !3023}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !249, file: !174, line: 139, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !186}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !249, file: !174, line: 140, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !259, line: 230, size: 128, elements: !260)
!259 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !276}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !258, file: !259, line: 231, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !186, !270, !234}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !130, line: 60, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !267, line: 73, baseType: !268)
!267 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !267, line: 15, baseType: !269)
!269 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !259, line: 30, size: 128, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !259, line: 31, baseType: !177, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !271, file: !259, line: 32, baseType: !275, size: 16, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !130, line: 19, baseType: !134)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !258, file: !259, line: 232, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!265, !186, !270, !177, !280}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 55, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !267, line: 72, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !267, line: 16, baseType: !283)
!283 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !249, file: !174, line: 141, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !249, file: !174, line: 142, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !259, line: 84, size: 320, elements: !291)
!291 = !{!292, !293, !297, !2986, !2987}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !259, line: 85, baseType: !177, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !290, file: !259, line: 86, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!275, !186, !270, !141}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !290, file: !259, line: 88, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!275, !186, !301, !141}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !259, line: 168, size: 448, elements: !303)
!303 = !{!304, !305, !306, !307, !2981, !2982}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !302, file: !259, line: 169, baseType: !271, size: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !302, file: !259, line: 170, baseType: !280, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !302, file: !259, line: 171, baseType: !131, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !302, file: !259, line: 172, baseType: !308, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!265, !311, !186, !301, !234, !486, !280}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !313)
!313 = !{!314, !332, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2964, !2965, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !312, file: !38, line: 920, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !312, file: !38, line: 917, size: 128, elements: !316)
!316 = !{!317, !323}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !315, file: !38, line: 918, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !319, line: 58, size: 64, elements: !320)
!319 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !319, line: 59, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !315, file: !38, line: 919, baseType: !324, size: 128, align: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !130, line: 216, size: 128, align: 64, elements: !325)
!325 = !{!326, !328}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !130, line: 217, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !324, file: !130, line: 218, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !327}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !312, file: !38, line: 921, baseType: !333, size: 128, offset: 128)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !334, line: 8, size: 128, elements: !335)
!334 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !333, file: !334, line: 9, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !339, line: 18, flags: DIFlagFwdDecl)
!339 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !333, file: !334, line: 10, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !339, line: 89, size: 1536, elements: !343)
!343 = !{!344, !345, !355, !363, !364, !383, !2914, !2916, !2928, !2929, !2930, !2931, !2932, !2938, !2939, !2940}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !342, file: !339, line: 91, baseType: !7, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !342, file: !339, line: 92, baseType: !346, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !347, line: 277, baseType: !348)
!347 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !347, line: 277, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !348, file: !347, line: 277, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !347, line: 70, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !347, line: 65, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !352, file: !347, line: 66, baseType: !7, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !342, file: !339, line: 93, baseType: !356, size: 128, offset: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !357, line: 38, size: 128, elements: !358)
!357 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !357, line: 39, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !356, file: !357, line: 39, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !342, file: !339, line: 94, baseType: !341, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !342, file: !339, line: 95, baseType: !365, size: 128, offset: 256)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !339, line: 47, size: 128, elements: !366)
!366 = !{!367, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !339, line: 48, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !339, line: 48, size: 64, elements: !369)
!369 = !{!370, !375}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !339, line: 49, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !339, line: 49, size: 64, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !371, file: !339, line: 50, baseType: !148, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !371, file: !339, line: 50, baseType: !148, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !368, file: !339, line: 52, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !149, line: 23, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !133, line: 31, baseType: !378)
!378 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !339, line: 54, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !342, file: !339, line: 96, baseType: !384, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !386)
!386 = !{!387, !388, !389, !397, !404, !405, !553, !2618, !2619, !2620, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2882, !2890, !2891, !2892, !2910, !2911, !2912, !2913}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !385, file: !38, line: 611, baseType: !275, size: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !385, file: !38, line: 612, baseType: !134, size: 16, offset: 16)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !385, file: !38, line: 613, baseType: !390, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !391, line: 23, baseType: !392)
!391 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 21, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !392, file: !391, line: 22, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !130, line: 32, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !267, line: 49, baseType: !7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !385, file: !38, line: 614, baseType: !398, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !391, line: 28, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 26, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !399, file: !391, line: 27, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !130, line: 33, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !267, line: 50, baseType: !7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !385, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !385, file: !38, line: 622, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !409)
!409 = !{!410, !414, !427, !431, !437, !441, !447, !451, !455, !459, !463, !464, !470, !474, !500, !529, !533, !539, !544, !548, !549}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !408, file: !38, line: 1865, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!341, !384, !341, !7}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !408, file: !38, line: 1866, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!177, !341, !384, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !420, line: 10, size: 128, elements: !421)
!420 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !426}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !419, file: !420, line: 11, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !131}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !419, file: !420, line: 12, baseType: !131, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !408, file: !38, line: 1867, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!141, !384, !141}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !408, file: !38, line: 1868, baseType: !432, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !384, !141}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !408, file: !38, line: 1870, baseType: !438, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!141, !341, !234, !141}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !408, file: !38, line: 1872, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!141, !384, !341, !275, !445}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 30, baseType: !446)
!446 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !408, file: !38, line: 1873, baseType: !448, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!141, !341, !384, !341}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !408, file: !38, line: 1874, baseType: !452, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!141, !384, !341}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !408, file: !38, line: 1875, baseType: !456, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!141, !384, !341, !177}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !408, file: !38, line: 1876, baseType: !460, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!141, !384, !341, !275}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !408, file: !38, line: 1877, baseType: !452, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !408, file: !38, line: 1878, baseType: !465, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!141, !384, !341, !275, !468}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !130, line: 16, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !130, line: 13, baseType: !148)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !408, file: !38, line: 1879, baseType: !471, size: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!141, !384, !341, !384, !341, !7}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !408, file: !38, line: 1881, baseType: !475, size: 64, offset: 832)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!141, !341, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !489, !497, !498, !499}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !479, file: !38, line: 220, baseType: !7, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !479, file: !38, line: 221, baseType: !275, size: 16, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !479, file: !38, line: 222, baseType: !390, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !479, file: !38, line: 223, baseType: !398, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !479, file: !38, line: 224, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !130, line: 46, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !267, line: 88, baseType: !488)
!488 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !479, file: !38, line: 225, baseType: !490, size: 128, offset: 192)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !491, line: 13, size: 128, elements: !492)
!491 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!492 = !{!493, !496}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !490, file: !491, line: 14, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !491, line: 8, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !133, line: 30, baseType: !488)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !490, file: !491, line: 15, baseType: !269, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !479, file: !38, line: 226, baseType: !490, size: 128, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !479, file: !38, line: 227, baseType: !490, size: 128, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !479, file: !38, line: 234, baseType: !311, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !408, file: !38, line: 1882, baseType: !501, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!141, !504, !506, !148, !7}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !508, line: 22, size: 1152, elements: !509)
!508 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!509 = !{!510, !511, !512, !513, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !507, file: !508, line: 23, baseType: !148, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !507, file: !508, line: 24, baseType: !275, size: 16, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !507, file: !508, line: 25, baseType: !7, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !507, file: !508, line: 26, baseType: !514, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 104, baseType: !148)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !507, file: !508, line: 27, baseType: !376, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !507, file: !508, line: 28, baseType: !376, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !507, file: !508, line: 37, baseType: !376, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !507, file: !508, line: 38, baseType: !468, size: 32, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !507, file: !508, line: 39, baseType: !468, size: 32, offset: 352)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !507, file: !508, line: 40, baseType: !390, size: 32, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !507, file: !508, line: 41, baseType: !398, size: 32, offset: 416)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !507, file: !508, line: 42, baseType: !486, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !507, file: !508, line: 43, baseType: !490, size: 128, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !507, file: !508, line: 44, baseType: !490, size: 128, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !507, file: !508, line: 45, baseType: !490, size: 128, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !507, file: !508, line: 46, baseType: !490, size: 128, offset: 896)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !507, file: !508, line: 47, baseType: !376, size: 64, offset: 1024)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !507, file: !508, line: 48, baseType: !376, size: 64, offset: 1088)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !408, file: !38, line: 1883, baseType: !530, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!265, !341, !234, !280}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !408, file: !38, line: 1884, baseType: !534, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!141, !384, !537, !376, !376}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !408, file: !38, line: 1886, baseType: !540, size: 64, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!141, !384, !543, !141}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !408, file: !38, line: 1887, baseType: !545, size: 64, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!141, !384, !341, !311, !7, !275}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !408, file: !38, line: 1890, baseType: !460, size: 64, offset: 1216)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !408, file: !38, line: 1891, baseType: !550, size: 64, offset: 1280)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!141, !384, !435, !141}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !385, file: !38, line: 623, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !609, !2225, !2307, !2390, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2406, !2410, !2411, !2414, !2415, !2418, !2419, !2420, !2461, !2488, !2489, !2490, !2491, !2492, !2493, !2496, !2498, !2505, !2506, !2508, !2509, !2510, !2569, !2570, !2585, !2586, !2587, !2588, !2589, !2592, !2593, !2594, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !555, file: !38, line: 1417, baseType: !180, size: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !555, file: !38, line: 1418, baseType: !468, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !555, file: !38, line: 1419, baseType: !382, size: 8, offset: 160)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !555, file: !38, line: 1420, baseType: !283, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !555, file: !38, line: 1421, baseType: !486, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !555, file: !38, line: 1422, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !565)
!565 = !{!566, !567, !568, !575, !579, !583, !587, !588, !589, !599, !602, !603, !604, !606, !607, !608}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !38, line: 2229, baseType: !177, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !564, file: !38, line: 2230, baseType: !141, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !564, file: !38, line: 2238, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!141, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !574, line: 28, flags: DIFlagFwdDecl)
!574 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !564, file: !38, line: 2239, baseType: !576, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !564, file: !38, line: 2240, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!341, !563, !141, !177, !131}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !564, file: !38, line: 2242, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !554}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !564, file: !38, line: 2243, baseType: !126, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !38, line: 2244, baseType: !563, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !564, file: !38, line: 2245, baseType: !590, size: 64, offset: 512)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !130, line: 182, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !590, file: !130, line: 183, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !130, line: 186, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !130, line: 187, baseType: !593, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !594, file: !130, line: 187, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !564, file: !38, line: 2247, baseType: !600, offset: 576)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !601, line: 187, elements: !207)
!601 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !564, file: !38, line: 2248, baseType: !600, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !564, file: !38, line: 2249, baseType: !600, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !564, file: !38, line: 2250, baseType: !605, offset: 576)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, elements: !235)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !564, file: !38, line: 2252, baseType: !600, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !564, file: !38, line: 2253, baseType: !600, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !564, file: !38, line: 2254, baseType: !600, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !555, file: !38, line: 1423, baseType: !610, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !613)
!613 = !{!614, !618, !622, !623, !627, !633, !637, !638, !639, !643, !647, !648, !649, !650, !656, !661, !662, !669, !670, !671, !672, !2209, !2224}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !612, file: !38, line: 1936, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!384, !554}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !612, file: !38, line: 1937, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !384}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !612, file: !38, line: 1938, baseType: !619, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !612, file: !38, line: 1940, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !384, !141}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !612, file: !38, line: 1941, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!141, !384, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !612, file: !38, line: 1942, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!141, !384}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !612, file: !38, line: 1943, baseType: !619, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !612, file: !38, line: 1944, baseType: !584, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !612, file: !38, line: 1945, baseType: !640, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!141, !554, !141}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !612, file: !38, line: 1946, baseType: !644, size: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!141, !554}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !612, file: !38, line: 1947, baseType: !644, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !612, file: !38, line: 1948, baseType: !644, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !612, file: !38, line: 1949, baseType: !644, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !612, file: !38, line: 1950, baseType: !651, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!141, !341, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !612, file: !38, line: 1951, baseType: !657, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!141, !554, !660, !234}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !612, file: !38, line: 1952, baseType: !584, size: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !612, file: !38, line: 1954, baseType: !663, size: 64, offset: 1024)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!141, !666, !341}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !668, line: 539, flags: DIFlagFwdDecl)
!668 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !612, file: !38, line: 1955, baseType: !663, size: 64, offset: 1088)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !612, file: !38, line: 1956, baseType: !663, size: 64, offset: 1152)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !612, file: !38, line: 1957, baseType: !663, size: 64, offset: 1216)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !612, file: !38, line: 1963, baseType: !673, size: 64, offset: 1280)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!141, !554, !676, !129}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !678, line: 68, size: 512, align: 128, elements: !679)
!678 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !681, !2201, !2208}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !678, line: 69, baseType: !283, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 77, baseType: !682, size: 320, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !678, line: 77, size: 320, elements: !683)
!683 = !{!684, !870, !875, !903, !911, !917, !2193, !2200}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 78, baseType: !685, size: 320)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 78, size: 320, elements: !686)
!686 = !{!687, !688, !868, !869}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !685, file: !678, line: 84, baseType: !180, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !685, file: !678, line: 86, baseType: !689, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !691)
!691 = !{!692, !693, !700, !701, !706, !721, !737, !738, !739, !740, !861, !862, !865, !866, !867}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !690, file: !38, line: 452, baseType: !384, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !690, file: !38, line: 453, baseType: !694, size: 128, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !695, line: 292, size: 128, elements: !696)
!695 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !694, file: !695, line: 293, baseType: !193)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !694, file: !695, line: 295, baseType: !129, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !694, file: !695, line: 296, baseType: !131, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !690, file: !38, line: 454, baseType: !129, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !690, file: !38, line: 455, baseType: !702, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !130, line: 168, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 166, size: 32, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !703, file: !130, line: 167, baseType: !141, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !690, file: !38, line: 460, baseType: !707, size: 128, offset: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !708, line: 125, size: 128, elements: !709)
!708 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!709 = !{!710, !720}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !707, file: !708, line: 126, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !708, line: 31, size: 64, elements: !712)
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !711, file: !708, line: 32, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !708, line: 24, size: 192, align: 64, elements: !716)
!716 = !{!717, !718, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !715, file: !708, line: 25, baseType: !283, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !715, file: !708, line: 26, baseType: !714, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !715, file: !708, line: 27, baseType: !714, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !707, file: !708, line: 127, baseType: !714, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !690, file: !38, line: 461, baseType: !722, size: 256, offset: 384)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !723, line: 35, size: 256, elements: !724)
!723 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !733, !734, !736}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !722, file: !723, line: 36, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !727, line: 13, baseType: !728)
!727 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !130, line: 175, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 173, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !729, file: !130, line: 174, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !149, line: 22, baseType: !495)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !722, file: !723, line: 42, baseType: !726, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !722, file: !723, line: 46, baseType: !735, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !194, line: 29, baseType: !201)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !722, file: !723, line: 47, baseType: !180, size: 128, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !690, file: !38, line: 462, baseType: !283, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !690, file: !38, line: 463, baseType: !283, size: 64, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !690, file: !38, line: 464, baseType: !283, size: 64, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !690, file: !38, line: 465, baseType: !741, size: 64, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !744)
!744 = !{!745, !749, !753, !757, !761, !765, !771, !777, !781, !786, !790, !794, !798, !825, !829, !835, !836, !837, !841, !846, !850, !857}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !743, file: !38, line: 368, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!141, !676, !631}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !743, file: !38, line: 369, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!141, !311, !676}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !743, file: !38, line: 372, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!141, !689, !631}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !743, file: !38, line: 375, baseType: !758, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!141, !676}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !743, file: !38, line: 381, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!141, !311, !689, !183, !7}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !743, file: !38, line: 383, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !743, file: !38, line: 385, baseType: !772, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!141, !311, !689, !486, !7, !7, !775, !776}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !743, file: !38, line: 388, baseType: !778, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!141, !311, !689, !486, !7, !7, !676, !131}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !743, file: !38, line: 393, baseType: !782, size: 64, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!785, !689, !785}
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !130, line: 125, baseType: !376)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !743, file: !38, line: 394, baseType: !787, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !676, !7, !7}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !743, file: !38, line: 395, baseType: !791, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!141, !676, !129}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !743, file: !38, line: 396, baseType: !795, size: 64, offset: 704)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !676}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !743, file: !38, line: 397, baseType: !799, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!265, !802, !823}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !804)
!804 = !{!805, !806, !807, !811, !812, !813, !815, !816}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !803, file: !38, line: 321, baseType: !311, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !803, file: !38, line: 326, baseType: !486, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !803, file: !38, line: 327, baseType: !808, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !802, !269, !269}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !803, file: !38, line: 328, baseType: !131, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !803, file: !38, line: 329, baseType: !141, size: 32, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !803, file: !38, line: 330, baseType: !814, size: 16, offset: 288)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !149, line: 19, baseType: !132)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !803, file: !38, line: 331, baseType: !814, size: 16, offset: 304)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !38, line: 332, baseType: !817, size: 64, offset: 320)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !38, line: 332, size: 64, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !817, file: !38, line: 333, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !817, file: !38, line: 334, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !743, file: !38, line: 402, baseType: !826, size: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!141, !689, !676, !676, !13}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !743, file: !38, line: 404, baseType: !830, size: 64, offset: 896)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!445, !676, !833}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !834, line: 305, baseType: !7)
!834 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!835 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !743, file: !38, line: 405, baseType: !795, size: 64, offset: 960)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !743, file: !38, line: 406, baseType: !758, size: 64, offset: 1024)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !743, file: !38, line: 407, baseType: !838, size: 64, offset: 1088)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!141, !676, !283, !283}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !743, file: !38, line: 409, baseType: !842, size: 64, offset: 1152)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !676, !845, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !743, file: !38, line: 410, baseType: !847, size: 64, offset: 1216)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!141, !689, !676}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !743, file: !38, line: 413, baseType: !851, size: 64, offset: 1280)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!141, !854, !311, !856}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !743, file: !38, line: 415, baseType: !858, size: 64, offset: 1344)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !311}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !38, line: 466, baseType: !283, size: 64, offset: 896)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !690, file: !38, line: 467, baseType: !863, size: 32, offset: 960)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !864, line: 8, baseType: !148)
!864 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!865 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !690, file: !38, line: 468, baseType: !193, offset: 992)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !690, file: !38, line: 469, baseType: !180, size: 128, offset: 1024)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !690, file: !38, line: 470, baseType: !131, size: 64, offset: 1152)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !685, file: !678, line: 87, baseType: !283, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !685, file: !678, line: 94, baseType: !283, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 96, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 96, size: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !871, file: !678, line: 101, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !130, line: 143, baseType: !376)
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 103, baseType: !876, size: 320)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 103, size: 320, elements: !877)
!877 = !{!878, !888, !891, !892}
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !678, line: 104, baseType: !879, size: 128)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !678, line: 104, size: 128, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !879, file: !678, line: 105, baseType: !180, size: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !678, line: 106, baseType: !883, size: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !678, line: 106, size: 128, elements: !884)
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !678, line: 107, baseType: !676, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !883, file: !678, line: 109, baseType: !141, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !883, file: !678, line: 110, baseType: !141, size: 32, offset: 96)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !876, file: !678, line: 117, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !678, line: 117, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !876, file: !678, line: 119, baseType: !131, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !678, line: 120, baseType: !893, size: 64, offset: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !678, line: 120, size: 64, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !893, file: !678, line: 121, baseType: !131, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !893, file: !678, line: 122, baseType: !283, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !678, line: 123, baseType: !898, size: 32)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !678, line: 123, size: 32, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !898, file: !678, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !898, file: !678, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !898, file: !678, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 130, baseType: !904, size: 192)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 130, size: 192, elements: !905)
!905 = !{!906, !907, !908, !909, !910}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !904, file: !678, line: 131, baseType: !283, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !904, file: !678, line: 134, baseType: !382, size: 8, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !904, file: !678, line: 135, baseType: !382, size: 8, offset: 72)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !904, file: !678, line: 136, baseType: !702, size: 32, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !904, file: !678, line: 137, baseType: !7, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 139, baseType: !912, size: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 139, size: 256, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !912, file: !678, line: 140, baseType: !283, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !912, file: !678, line: 141, baseType: !702, size: 32, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !912, file: !678, line: 143, baseType: !180, size: 128, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 145, baseType: !918, size: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 145, size: 256, elements: !919)
!919 = !{!920, !921, !923, !924, !2192}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !918, file: !678, line: 146, baseType: !283, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !918, file: !678, line: 147, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !668, line: 509, baseType: !676)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !918, file: !678, line: 148, baseType: !283, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !678, line: 149, baseType: !925, size: 64, offset: 192)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !678, line: 149, size: 64, elements: !926)
!926 = !{!927, !2191}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !925, file: !678, line: 150, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !678, line: 388, size: 7296, elements: !930)
!930 = !{!931, !2187}
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !678, line: 389, baseType: !932, size: 7296)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !678, line: 389, size: 7296, elements: !933)
!933 = !{!934, !972, !973, !974, !978, !979, !980, !981, !982, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1023, !1031, !1034, !1080, !1081, !2171, !2172, !2175, !2176, !2177, !2180, !2181, !2182, !2185, !2186}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !932, file: !678, line: 390, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !678, line: 305, size: 1472, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !952, !953, !958, !959, !962, !966, !967, !968, !969, !970}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !936, file: !678, line: 308, baseType: !283, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !936, file: !678, line: 309, baseType: !283, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !936, file: !678, line: 313, baseType: !935, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !936, file: !678, line: 313, baseType: !935, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !936, file: !678, line: 315, baseType: !715, size: 192, align: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !936, file: !678, line: 323, baseType: !283, size: 64, offset: 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !936, file: !678, line: 327, baseType: !928, size: 64, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !936, file: !678, line: 333, baseType: !946, size: 64, offset: 576)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !668, line: 284, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !668, line: 284, size: 64, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !947, file: !668, line: 284, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !951, line: 19, baseType: !283)
!951 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !936, file: !678, line: 334, baseType: !283, size: 64, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !936, file: !678, line: 343, baseType: !954, size: 256, offset: 704)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !678, line: 340, size: 256, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !954, file: !678, line: 341, baseType: !715, size: 192, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !954, file: !678, line: 342, baseType: !283, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !936, file: !678, line: 351, baseType: !180, size: 128, offset: 960)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !936, file: !678, line: 353, baseType: !960, size: 64, offset: 1088)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !678, line: 353, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !936, file: !678, line: 356, baseType: !963, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !678, line: 356, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !936, file: !678, line: 359, baseType: !283, size: 64, offset: 1216)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !936, file: !678, line: 361, baseType: !311, size: 64, offset: 1280)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !936, file: !678, line: 362, baseType: !131, size: 64, offset: 1344)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !936, file: !678, line: 365, baseType: !726, size: 64, offset: 1408)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !936, file: !678, line: 373, baseType: !971, offset: 1472)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !678, line: 296, elements: !207)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !932, file: !678, line: 391, baseType: !711, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !932, file: !678, line: 392, baseType: !376, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !932, file: !678, line: 394, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!283, !311, !283, !283, !283, !283}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !932, file: !678, line: 398, baseType: !283, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !932, file: !678, line: 399, baseType: !283, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !932, file: !678, line: 405, baseType: !283, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !932, file: !678, line: 406, baseType: !283, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !932, file: !678, line: 407, baseType: !983, size: 64, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !668, line: 286, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !668, line: 286, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !985, file: !668, line: 286, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !951, line: 18, baseType: !283)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !932, file: !678, line: 416, baseType: !702, size: 32, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !932, file: !678, line: 428, baseType: !702, size: 32, offset: 608)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !932, file: !678, line: 437, baseType: !702, size: 32, offset: 640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !932, file: !678, line: 447, baseType: !702, size: 32, offset: 672)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !932, file: !678, line: 450, baseType: !726, size: 64, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !932, file: !678, line: 452, baseType: !141, size: 32, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !932, file: !678, line: 454, baseType: !193, offset: 800)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !932, file: !678, line: 457, baseType: !722, size: 256, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !932, file: !678, line: 459, baseType: !180, size: 128, offset: 1088)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !932, file: !678, line: 466, baseType: !283, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !932, file: !678, line: 467, baseType: !283, size: 64, offset: 1280)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !932, file: !678, line: 469, baseType: !283, size: 64, offset: 1344)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !932, file: !678, line: 470, baseType: !283, size: 64, offset: 1408)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !932, file: !678, line: 471, baseType: !728, size: 64, offset: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !932, file: !678, line: 472, baseType: !283, size: 64, offset: 1536)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !932, file: !678, line: 473, baseType: !283, size: 64, offset: 1600)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !932, file: !678, line: 474, baseType: !283, size: 64, offset: 1664)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !932, file: !678, line: 475, baseType: !283, size: 64, offset: 1728)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !932, file: !678, line: 477, baseType: !193, offset: 1792)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !932, file: !678, line: 478, baseType: !283, size: 64, offset: 1792)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !932, file: !678, line: 478, baseType: !283, size: 64, offset: 1856)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !932, file: !678, line: 478, baseType: !283, size: 64, offset: 1920)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !932, file: !678, line: 478, baseType: !283, size: 64, offset: 1984)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !932, file: !678, line: 479, baseType: !283, size: 64, offset: 2048)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !932, file: !678, line: 479, baseType: !283, size: 64, offset: 2112)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !932, file: !678, line: 479, baseType: !283, size: 64, offset: 2176)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !932, file: !678, line: 480, baseType: !283, size: 64, offset: 2240)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !932, file: !678, line: 480, baseType: !283, size: 64, offset: 2304)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !932, file: !678, line: 480, baseType: !283, size: 64, offset: 2368)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !932, file: !678, line: 480, baseType: !283, size: 64, offset: 2432)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !932, file: !678, line: 482, baseType: !1020, size: 2816, offset: 2496)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 2816, elements: !1021)
!1021 = !{!1022}
!1022 = !DISubrange(count: 44)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !932, file: !678, line: 488, baseType: !1024, size: 256, offset: 5312)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1025, line: 60, size: 256, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1024, file: !1025, line: 61, baseType: !1028, size: 256)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 256, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 4)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !932, file: !678, line: 490, baseType: !1032, size: 64, offset: 5568)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !678, line: 490, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !932, file: !678, line: 493, baseType: !1035, size: 896, offset: 5632)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1036, line: 53, baseType: !1037)
!1036 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1036, line: 13, size: 896, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1045, !1046, !1053, !1054, !1074, !1075, !1076}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1037, file: !1036, line: 18, baseType: !376, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1037, file: !1036, line: 28, baseType: !728, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1037, file: !1036, line: 31, baseType: !722, size: 256, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1037, file: !1036, line: 32, baseType: !1043, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1036, line: 32, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1037, file: !1036, line: 37, baseType: !134, size: 16, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1036, line: 40, baseType: !1047, size: 192, offset: 512)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1048, line: 53, size: 192, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1047, file: !1048, line: 54, baseType: !726, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1047, file: !1048, line: 55, baseType: !193, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1047, file: !1048, line: 59, baseType: !180, size: 128, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1037, file: !1036, line: 41, baseType: !131, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1037, file: !1036, line: 42, baseType: !1055, size: 64, offset: 768)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1058, line: 13, size: 896, elements: !1059)
!1058 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1057, file: !1058, line: 14, baseType: !131, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1057, file: !1058, line: 15, baseType: !283, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1057, file: !1058, line: 17, baseType: !283, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1057, file: !1058, line: 17, baseType: !283, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1057, file: !1058, line: 19, baseType: !269, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1057, file: !1058, line: 21, baseType: !269, size: 64, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1057, file: !1058, line: 22, baseType: !269, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1057, file: !1058, line: 23, baseType: !269, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1057, file: !1058, line: 24, baseType: !269, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1057, file: !1058, line: 25, baseType: !269, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1057, file: !1058, line: 26, baseType: !269, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1057, file: !1058, line: 27, baseType: !269, size: 64, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1057, file: !1058, line: 28, baseType: !269, size: 64, offset: 768)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1057, file: !1058, line: 29, baseType: !269, size: 64, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1037, file: !1036, line: 44, baseType: !702, size: 32, offset: 832)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1037, file: !1036, line: 50, baseType: !814, size: 16, offset: 864)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1037, file: !1036, line: 51, baseType: !1077, size: 16, offset: 880)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !149, line: 18, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !133, line: 23, baseType: !1079)
!1079 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !932, file: !678, line: 495, baseType: !283, size: 64, offset: 6528)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !932, file: !678, line: 497, baseType: !1082, size: 64, offset: 6592)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !678, line: 381, size: 384, elements: !1084)
!1084 = !{!1085, !1086, !2170}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1083, file: !678, line: 382, baseType: !702, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1083, file: !678, line: 383, baseType: !1087, size: 128, offset: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !678, line: 376, size: 128, elements: !1088)
!1088 = !{!1089, !2168}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1087, file: !678, line: 377, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1092, line: 640, size: 48640, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1100, !1102, !1103, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1120, !1138, !1149, !1234, !1235, !1236, !1247, !1248, !1250, !1251, !1252, !1253, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1332, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1370, !1372, !1373, !1374, !1386, !1387, !1388, !1389, !1390, !1391, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1415, !1420, !1602, !1603, !1604, !1605, !1606, !1609, !1612, !1615, !1618, !1622, !1723, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1769, !1770, !1771, !1772, !1773, !1778, !1779, !1780, !1783, !1784, !1787, !1790, !1793, !1796, !1839, !1842, !1843, !1922, !1923, !1926, !1927, !1930, !1931, !1932, !1936, !1937, !1938, !1951, !1952, !1953, !1963, !1968, !1971, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1091, file: !1092, line: 646, baseType: !1095, size: 128)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1096, line: 56, size: 128, elements: !1097)
!1096 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1096, line: 57, baseType: !283, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1095, file: !1096, line: 58, baseType: !148, size: 32, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1091, file: !1092, line: 649, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !269)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1091, file: !1092, line: 657, baseType: !131, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1091, file: !1092, line: 658, baseType: !1104, size: 32, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1105, line: 113, baseType: !1106)
!1105 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1105, line: 111, size: 32, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1106, file: !1105, line: 112, baseType: !702, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1091, file: !1092, line: 660, baseType: !7, size: 32, offset: 288)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1091, file: !1092, line: 661, baseType: !7, size: 32, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1091, file: !1092, line: 684, baseType: !141, size: 32, offset: 352)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1091, file: !1092, line: 686, baseType: !141, size: 32, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1091, file: !1092, line: 687, baseType: !141, size: 32, offset: 416)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1091, file: !1092, line: 688, baseType: !141, size: 32, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1091, file: !1092, line: 689, baseType: !7, size: 32, offset: 480)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1091, file: !1092, line: 691, baseType: !1117, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1092, line: 691, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1091, file: !1092, line: 692, baseType: !1121, size: 832, offset: 576)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1092, line: 451, size: 832, elements: !1122)
!1122 = !{!1123, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1121, file: !1092, line: 453, baseType: !1124, size: 128)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1092, line: 325, size: 128, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1124, file: !1092, line: 326, baseType: !283, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1124, file: !1092, line: 327, baseType: !148, size: 32, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1121, file: !1092, line: 454, baseType: !715, size: 192, align: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1121, file: !1092, line: 455, baseType: !180, size: 128, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1121, file: !1092, line: 456, baseType: !7, size: 32, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1121, file: !1092, line: 458, baseType: !376, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1121, file: !1092, line: 459, baseType: !376, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1121, file: !1092, line: 460, baseType: !376, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1121, file: !1092, line: 461, baseType: !376, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1121, file: !1092, line: 463, baseType: !376, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1121, file: !1092, line: 465, baseType: !1137, offset: 832)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1092, line: 415, elements: !207)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1091, file: !1092, line: 693, baseType: !1139, size: 384, offset: 1408)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1092, line: 489, size: 384, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1139, file: !1092, line: 490, baseType: !180, size: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1139, file: !1092, line: 491, baseType: !283, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1139, file: !1092, line: 492, baseType: !283, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1139, file: !1092, line: 493, baseType: !7, size: 32, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1139, file: !1092, line: 494, baseType: !134, size: 16, offset: 288)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1139, file: !1092, line: 495, baseType: !134, size: 16, offset: 304)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1139, file: !1092, line: 497, baseType: !1148, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1091, file: !1092, line: 697, baseType: !1150, size: 1792, offset: 1792)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1092, line: 507, size: 1792, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1231, !1232}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1150, file: !1092, line: 508, baseType: !715, size: 192, align: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1150, file: !1092, line: 515, baseType: !376, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1150, file: !1092, line: 516, baseType: !376, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1150, file: !1092, line: 517, baseType: !376, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1150, file: !1092, line: 518, baseType: !376, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1150, file: !1092, line: 519, baseType: !376, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1150, file: !1092, line: 526, baseType: !732, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1150, file: !1092, line: 527, baseType: !376, size: 64, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1150, file: !1092, line: 528, baseType: !7, size: 32, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1150, file: !1092, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1150, file: !1092, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1150, file: !1092, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1150, file: !1092, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1150, file: !1092, line: 563, baseType: !1166, size: 512, offset: 704)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1167)
!1167 = !{!1168, !1176, !1177, !1182, !1225, !1228, !1229, !1230}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1166, file: !21, line: 119, baseType: !1169, size: 256)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1170, line: 9, size: 256, elements: !1171)
!1170 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1169, file: !1170, line: 10, baseType: !715, size: 192, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1169, file: !1170, line: 11, baseType: !1174, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1175, line: 29, baseType: !732)
!1175 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1166, file: !21, line: 120, baseType: !1174, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1166, file: !21, line: 121, baseType: !1178, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!20, !1181}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1166, file: !21, line: 122, baseType: !1183, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1185)
!1185 = !{!1186, !1206, !1207, !1210, !1215, !1216, !1220, !1224}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1184, file: !21, line: 160, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1188, file: !21, line: 215, baseType: !735)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1188, file: !21, line: 216, baseType: !7, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1188, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1188, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1188, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1188, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1188, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1188, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1188, file: !21, line: 233, baseType: !1174, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1188, file: !21, line: 234, baseType: !1181, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1188, file: !21, line: 235, baseType: !1174, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1188, file: !21, line: 236, baseType: !1181, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1188, file: !21, line: 237, baseType: !1203, size: 4096, offset: 512)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 4096, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 8)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1184, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1184, file: !21, line: 162, baseType: !1208, size: 32, offset: 96)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !130, line: 27, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !267, line: 96, baseType: !141)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1184, file: !21, line: 163, baseType: !1211, size: 32, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !347, line: 276, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !347, line: 276, size: 32, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1212, file: !347, line: 276, baseType: !351, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1184, file: !21, line: 164, baseType: !1181, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1184, file: !21, line: 165, baseType: !1217, size: 128, offset: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1170, line: 14, size: 128, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1217, file: !1170, line: 15, baseType: !707, size: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1184, file: !21, line: 166, baseType: !1221, size: 64, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1174}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1184, file: !21, line: 167, baseType: !1174, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1166, file: !21, line: 123, baseType: !1226, size: 8, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !149, line: 17, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !133, line: 21, baseType: !382)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1166, file: !21, line: 124, baseType: !1226, size: 8, offset: 456)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1166, file: !21, line: 125, baseType: !1226, size: 8, offset: 464)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1166, file: !21, line: 126, baseType: !1226, size: 8, offset: 472)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1150, file: !1092, line: 572, baseType: !1166, size: 512, offset: 1216)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1150, file: !1092, line: 580, baseType: !1233, size: 64, offset: 1728)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1091, file: !1092, line: 721, baseType: !7, size: 32, offset: 3584)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1091, file: !1092, line: 722, baseType: !141, size: 32, offset: 3616)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1091, file: !1092, line: 723, baseType: !1237, size: 64, offset: 3648)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1240, line: 17, baseType: !1241)
!1240 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1240, line: 17, size: 64, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1241, file: !1240, line: 17, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 1)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1091, file: !1092, line: 724, baseType: !1239, size: 64, offset: 3712)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1091, file: !1092, line: 749, baseType: !1249, offset: 3776)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1092, line: 290, elements: !207)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1091, file: !1092, line: 751, baseType: !180, size: 128, offset: 3776)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1091, file: !1092, line: 757, baseType: !928, size: 64, offset: 3904)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1091, file: !1092, line: 758, baseType: !928, size: 64, offset: 3968)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1091, file: !1092, line: 761, baseType: !1254, size: 320, offset: 4032)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1025, line: 34, size: 320, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1254, file: !1025, line: 35, baseType: !376, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1254, file: !1025, line: 36, baseType: !1258, size: 256, offset: 64)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 256, elements: !1029)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1091, file: !1092, line: 766, baseType: !141, size: 32, offset: 4352)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1091, file: !1092, line: 767, baseType: !141, size: 32, offset: 4384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1091, file: !1092, line: 768, baseType: !141, size: 32, offset: 4416)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1091, file: !1092, line: 770, baseType: !141, size: 32, offset: 4448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1091, file: !1092, line: 772, baseType: !283, size: 64, offset: 4480)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1091, file: !1092, line: 775, baseType: !7, size: 32, offset: 4544)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1091, file: !1092, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1091, file: !1092, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1091, file: !1092, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1091, file: !1092, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1091, file: !1092, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1091, file: !1092, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1091, file: !1092, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1091, file: !1092, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1091, file: !1092, line: 831, baseType: !283, size: 64, offset: 4672)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1091, file: !1092, line: 833, baseType: !1275, size: 384, offset: 4736)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1276)
!1276 = !{!1277, !1282}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1275, file: !26, line: 26, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!269, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !26, line: 27, baseType: !1283, size: 320, offset: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !26, line: 27, size: 320, elements: !1284)
!1284 = !{!1285, !1295, !1322}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1283, file: !26, line: 36, baseType: !1286, size: 320)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !26, line: 29, size: 320, elements: !1287)
!1287 = !{!1288, !1290, !1291, !1292, !1293, !1294}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1286, file: !26, line: 30, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1286, file: !26, line: 31, baseType: !148, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !26, line: 32, baseType: !148, size: 32, offset: 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1286, file: !26, line: 33, baseType: !148, size: 32, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1286, file: !26, line: 34, baseType: !376, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1286, file: !26, line: 35, baseType: !1289, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1283, file: !26, line: 46, baseType: !1296, size: 192)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !26, line: 38, size: 192, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1321}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1296, file: !26, line: 39, baseType: !1208, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1296, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !26, line: 41, baseType: !1301, size: 64, offset: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !26, line: 41, size: 64, elements: !1302)
!1302 = !{!1303, !1311}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1301, file: !26, line: 42, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1306, line: 7, size: 128, elements: !1307)
!1306 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308, !1310}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1305, file: !1306, line: 8, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !267, line: 93, baseType: !488)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1305, file: !1306, line: 9, baseType: !488, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1301, file: !26, line: 43, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1314, line: 7, size: 64, elements: !1315)
!1314 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1320}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1313, file: !1314, line: 8, baseType: !1317, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1314, line: 5, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !149, line: 20, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !133, line: 26, baseType: !141)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1313, file: !1314, line: 9, baseType: !1318, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1296, file: !26, line: 45, baseType: !376, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1283, file: !26, line: 54, baseType: !1323, size: 256)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !26, line: 48, size: 256, elements: !1324)
!1324 = !{!1325, !1328, !1329, !1330, !1331}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1323, file: !26, line: 49, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1323, file: !26, line: 50, baseType: !141, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1323, file: !26, line: 51, baseType: !141, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1323, file: !26, line: 52, baseType: !283, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1323, file: !26, line: 53, baseType: !283, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1091, file: !1092, line: 835, baseType: !1333, size: 32, offset: 5120)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !130, line: 22, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !267, line: 28, baseType: !141)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1091, file: !1092, line: 836, baseType: !1333, size: 32, offset: 5152)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1091, file: !1092, line: 840, baseType: !283, size: 64, offset: 5184)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1091, file: !1092, line: 849, baseType: !1090, size: 64, offset: 5248)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1091, file: !1092, line: 852, baseType: !1090, size: 64, offset: 5312)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1091, file: !1092, line: 857, baseType: !180, size: 128, offset: 5376)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1091, file: !1092, line: 858, baseType: !180, size: 128, offset: 5504)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1091, file: !1092, line: 859, baseType: !1090, size: 64, offset: 5632)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1091, file: !1092, line: 867, baseType: !180, size: 128, offset: 5696)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1091, file: !1092, line: 868, baseType: !180, size: 128, offset: 5824)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1091, file: !1092, line: 871, baseType: !1345, size: 64, offset: 5952)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1353, !1354, !1361, !1362}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1346, file: !47, line: 61, baseType: !1104, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1346, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !47, line: 63, baseType: !193, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1346, file: !47, line: 65, baseType: !1352, size: 256, offset: 64)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 256, elements: !1029)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1346, file: !47, line: 66, baseType: !590, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1346, file: !47, line: 68, baseType: !1355, size: 128, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1356, line: 40, baseType: !1357)
!1356 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1356, line: 36, size: 128, elements: !1358)
!1358 = !{!1359, !1360}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !1356, line: 37, baseType: !193)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1357, file: !1356, line: 38, baseType: !180, size: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1346, file: !47, line: 69, baseType: !324, size: 128, align: 64, offset: 512)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1346, file: !47, line: 70, baseType: !1363, size: 128, offset: 640)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 128, elements: !1245)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1364, file: !47, line: 55, baseType: !141, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1364, file: !47, line: 56, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1091, file: !1092, line: 872, baseType: !1371, size: 512, offset: 6016)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 512, elements: !1029)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1091, file: !1092, line: 873, baseType: !180, size: 128, offset: 6528)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1091, file: !1092, line: 874, baseType: !180, size: 128, offset: 6656)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1091, file: !1092, line: 876, baseType: !1375, size: 64, offset: 6784)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1377, line: 26, size: 192, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1376, file: !1377, line: 27, baseType: !7, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1376, file: !1377, line: 28, baseType: !1381, size: 128, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1382, line: 43, size: 128, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1381, file: !1382, line: 44, baseType: !735)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1381, file: !1382, line: 45, baseType: !180, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1091, file: !1092, line: 879, baseType: !660, size: 64, offset: 6848)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1091, file: !1092, line: 882, baseType: !660, size: 64, offset: 6912)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1091, file: !1092, line: 884, baseType: !376, size: 64, offset: 6976)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1091, file: !1092, line: 885, baseType: !376, size: 64, offset: 7040)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1091, file: !1092, line: 890, baseType: !376, size: 64, offset: 7104)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1091, file: !1092, line: 891, baseType: !1392, size: 128, offset: 7168)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1092, line: 242, size: 128, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1392, file: !1092, line: 244, baseType: !376, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1392, file: !1092, line: 245, baseType: !376, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !1092, line: 246, baseType: !735, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1091, file: !1092, line: 900, baseType: !283, size: 64, offset: 7296)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1091, file: !1092, line: 901, baseType: !283, size: 64, offset: 7360)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1091, file: !1092, line: 904, baseType: !376, size: 64, offset: 7424)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1091, file: !1092, line: 907, baseType: !376, size: 64, offset: 7488)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1091, file: !1092, line: 910, baseType: !283, size: 64, offset: 7552)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1091, file: !1092, line: 911, baseType: !283, size: 64, offset: 7616)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1091, file: !1092, line: 914, baseType: !1404, size: 640, offset: 7680)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1405, line: 123, size: 640, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1413, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1404, file: !1405, line: 124, baseType: !1408, size: 576)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1409, size: 576, elements: !235)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1405, line: 108, size: 192, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1409, file: !1405, line: 109, baseType: !376, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1409, file: !1405, line: 110, baseType: !1217, size: 128, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1404, file: !1405, line: 125, baseType: !7, size: 32, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1404, file: !1405, line: 126, baseType: !7, size: 32, offset: 608)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1091, file: !1092, line: 917, baseType: !1416, size: 192, offset: 8320)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1405, line: 134, size: 192, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1416, file: !1405, line: 135, baseType: !324, size: 128, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1416, file: !1405, line: 136, baseType: !7, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1091, file: !1092, line: 923, baseType: !1421, size: 64, offset: 8512)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1424, line: 111, size: 1280, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1443, !1444, !1445, !1446, !1447, !1448, !1555, !1556, !1557, !1558, !1584, !1587, !1597}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1423, file: !1424, line: 112, baseType: !702, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1423, file: !1424, line: 120, baseType: !390, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1423, file: !1424, line: 121, baseType: !398, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1423, file: !1424, line: 122, baseType: !390, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1423, file: !1424, line: 123, baseType: !398, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1423, file: !1424, line: 124, baseType: !390, size: 32, offset: 160)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1423, file: !1424, line: 125, baseType: !398, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1423, file: !1424, line: 126, baseType: !390, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1423, file: !1424, line: 127, baseType: !398, size: 32, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1423, file: !1424, line: 128, baseType: !7, size: 32, offset: 288)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1423, file: !1424, line: 129, baseType: !1437, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1438, line: 26, baseType: !1439)
!1438 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1438, line: 24, size: 64, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1439, file: !1438, line: 25, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !161)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1423, file: !1424, line: 130, baseType: !1437, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1423, file: !1424, line: 131, baseType: !1437, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1423, file: !1424, line: 132, baseType: !1437, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1423, file: !1424, line: 133, baseType: !1437, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1423, file: !1424, line: 135, baseType: !382, size: 8, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1423, file: !1424, line: 137, baseType: !1449, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1451, line: 189, size: 1664, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1454, !1457, !1462, !1463, !1466, !1467, !1472, !1473, !1474, !1475, !1477, !1478, !1479, !1480, !1481, !1519, !1540}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1450, file: !1451, line: 190, baseType: !1104, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1450, file: !1451, line: 191, baseType: !1455, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1451, line: 28, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !130, line: 98, baseType: !1318)
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 192, baseType: !1458, size: 192, offset: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 192, size: 192, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1458, file: !1451, line: 193, baseType: !180, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1458, file: !1451, line: 194, baseType: !715, size: 192, align: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1450, file: !1451, line: 199, baseType: !722, size: 256, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1450, file: !1451, line: 200, baseType: !1464, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1451, line: 200, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1450, file: !1451, line: 201, baseType: !131, size: 64, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 202, baseType: !1468, size: 64, offset: 640)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 202, size: 64, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1468, file: !1451, line: 203, baseType: !494, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1468, file: !1451, line: 204, baseType: !494, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1450, file: !1451, line: 206, baseType: !494, size: 64, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1450, file: !1451, line: 207, baseType: !390, size: 32, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1450, file: !1451, line: 208, baseType: !398, size: 32, offset: 800)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1450, file: !1451, line: 209, baseType: !1476, size: 32, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1451, line: 31, baseType: !514)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1450, file: !1451, line: 210, baseType: !134, size: 16, offset: 864)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1450, file: !1451, line: 211, baseType: !134, size: 16, offset: 880)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1450, file: !1451, line: 215, baseType: !1079, size: 16, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1451, line: 222, baseType: !283, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 239, baseType: !1482, size: 320, offset: 1024)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 239, size: 320, elements: !1483)
!1483 = !{!1484, !1511}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1482, file: !1451, line: 240, baseType: !1485, size: 320)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1451, line: 108, size: 320, elements: !1486)
!1486 = !{!1487, !1488, !1500, !1503, !1510}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1485, file: !1451, line: 110, baseType: !283, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1451, line: 111, baseType: !1489, size: 64, offset: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !1451, line: 111, size: 64, elements: !1490)
!1490 = !{!1491, !1499}
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1451, line: 112, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !1451, line: 112, size: 64, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1492, file: !1451, line: 114, baseType: !814, size: 16)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1492, file: !1451, line: 115, baseType: !1496, size: 48, offset: 16)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 48, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 6)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1489, file: !1451, line: 121, baseType: !283, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1485, file: !1451, line: 123, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1451, line: 96, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1485, file: !1451, line: 124, baseType: !1504, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1451, line: 102, size: 192, elements: !1506)
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !1451, line: 103, baseType: !324, size: 128, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1505, file: !1451, line: 104, baseType: !1104, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1505, file: !1451, line: 105, baseType: !445, size: 8, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1485, file: !1451, line: 125, baseType: !177, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !1451, line: 241, baseType: !1512, size: 320)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1482, file: !1451, line: 241, size: 320, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1512, file: !1451, line: 242, baseType: !283, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1512, file: !1451, line: 243, baseType: !283, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1512, file: !1451, line: 244, baseType: !1501, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1512, file: !1451, line: 245, baseType: !1504, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1512, file: !1451, line: 246, baseType: !234, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1451, line: 254, baseType: !1520, size: 256, offset: 1344)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1451, line: 254, size: 256, elements: !1521)
!1521 = !{!1522, !1528}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1520, file: !1451, line: 255, baseType: !1523, size: 256)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1451, line: 128, size: 256, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1523, file: !1451, line: 129, baseType: !131, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !1451, line: 130, baseType: !1527, size: 256)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !1029)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1451, line: 256, baseType: !1529, size: 256)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !1451, line: 256, size: 256, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1529, file: !1451, line: 258, baseType: !180, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1529, file: !1451, line: 259, baseType: !1533, size: 128, offset: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1534, line: 22, size: 128, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1533, file: !1534, line: 23, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1534, line: 23, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1533, file: !1534, line: 24, baseType: !283, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1450, file: !1451, line: 274, baseType: !1541, size: 64, offset: 1600)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1451, line: 170, size: 192, elements: !1543)
!1543 = !{!1544, !1553, !1554}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1542, file: !1451, line: 171, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1451, line: 165, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!141, !1449, !1549, !1551, !1449}
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
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1560, file: !1561, line: 14, baseType: !1104, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1560, file: !1561, line: 15, baseType: !702, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1560, file: !1561, line: 16, baseType: !702, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1560, file: !1561, line: 21, baseType: !726, size: 64, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1560, file: !1561, line: 27, baseType: !283, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1560, file: !1561, line: 28, baseType: !283, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1560, file: !1561, line: 29, baseType: !726, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1560, file: !1561, line: 32, baseType: !594, size: 128, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1560, file: !1561, line: 33, baseType: !390, size: 32, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1560, file: !1561, line: 37, baseType: !726, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1560, file: !1561, line: 44, baseType: !1574, size: 256, offset: 640)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1575, line: 15, size: 256, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1574, file: !1575, line: 16, baseType: !735)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1574, file: !1575, line: 18, baseType: !141, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1574, file: !1575, line: 19, baseType: !141, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1574, file: !1575, line: 20, baseType: !141, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1574, file: !1575, line: 21, baseType: !141, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1574, file: !1575, line: 22, baseType: !283, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1575, line: 23, baseType: !283, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1423, file: !1424, line: 146, baseType: !1585, size: 64, offset: 1024)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !391, line: 18, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1423, file: !1424, line: 147, baseType: !1588, size: 64, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1424, line: 25, size: 64, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1589, file: !1424, line: 26, baseType: !702, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1589, file: !1424, line: 27, baseType: !141, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !1424, line: 28, baseType: !1594, offset: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 0)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 149, baseType: !1598, size: 128, offset: 1152)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 149, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1598, file: !1424, line: 150, baseType: !141, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1598, file: !1424, line: 151, baseType: !324, size: 128, align: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1091, file: !1092, line: 926, baseType: !1421, size: 64, offset: 8576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1091, file: !1092, line: 929, baseType: !1421, size: 64, offset: 8640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1091, file: !1092, line: 933, baseType: !1449, size: 64, offset: 8704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1091, file: !1092, line: 943, baseType: !143, size: 128, offset: 8768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1091, file: !1092, line: 945, baseType: !1607, size: 64, offset: 8896)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1092, line: 49, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1091, file: !1092, line: 956, baseType: !1610, size: 64, offset: 8960)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1092, line: 45, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1091, file: !1092, line: 959, baseType: !1613, size: 64, offset: 9024)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1092, line: 959, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1091, file: !1092, line: 962, baseType: !1616, size: 64, offset: 9088)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1092, line: 66, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1091, file: !1092, line: 966, baseType: !1619, size: 64, offset: 9152)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1621, line: 35, flags: DIFlagFwdDecl)
!1621 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1091, file: !1092, line: 969, baseType: !1623, size: 64, offset: 9216)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1625, line: 82, size: 7296, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1662, !1671, !1672, !1674, !1675, !1676, !1679, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1709, !1710, !1717, !1718, !1719, !1720, !1721, !1722}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1624, file: !1625, line: 83, baseType: !1104, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1624, file: !1625, line: 84, baseType: !702, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1624, file: !1625, line: 85, baseType: !141, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1624, file: !1625, line: 86, baseType: !180, size: 128, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1624, file: !1625, line: 88, baseType: !1355, size: 128, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1624, file: !1625, line: 91, baseType: !1090, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1624, file: !1625, line: 94, baseType: !1634, size: 192, offset: 448)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1635, line: 30, size: 192, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1634, file: !1635, line: 31, baseType: !180, size: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1634, file: !1635, line: 32, baseType: !1639, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1640, line: 25, baseType: !1641)
!1640 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 23, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1641, file: !1640, line: 24, baseType: !1244, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1624, file: !1625, line: 97, baseType: !590, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1624, file: !1625, line: 100, baseType: !141, size: 32, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1624, file: !1625, line: 106, baseType: !141, size: 32, offset: 736)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1624, file: !1625, line: 107, baseType: !1090, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1624, file: !1625, line: 110, baseType: !141, size: 32, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !1625, line: 111, baseType: !7, size: 32, offset: 864)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1624, file: !1625, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1624, file: !1625, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1624, file: !1625, line: 128, baseType: !141, size: 32, offset: 928)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1624, file: !1625, line: 129, baseType: !180, size: 128, offset: 960)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1624, file: !1625, line: 132, baseType: !1166, size: 512, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1624, file: !1625, line: 133, baseType: !1174, size: 64, offset: 1600)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1624, file: !1625, line: 140, baseType: !1657, size: 256, offset: 1664)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1658, size: 256, elements: !161)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1625, line: 38, size: 128, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1658, file: !1625, line: 39, baseType: !376, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1658, file: !1625, line: 40, baseType: !376, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1624, file: !1625, line: 146, baseType: !1663, size: 192, offset: 1920)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1625, line: 66, size: 192, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1663, file: !1625, line: 67, baseType: !1666, size: 192)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1625, line: 47, size: 192, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1666, file: !1625, line: 48, baseType: !728, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1666, file: !1625, line: 49, baseType: !728, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1666, file: !1625, line: 50, baseType: !728, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1624, file: !1625, line: 150, baseType: !1404, size: 640, offset: 2112)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1624, file: !1625, line: 153, baseType: !1673, size: 256, offset: 2752)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 256, elements: !1029)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1624, file: !1625, line: 159, baseType: !1345, size: 64, offset: 3008)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1624, file: !1625, line: 162, baseType: !141, size: 32, offset: 3072)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1624, file: !1625, line: 164, baseType: !1677, size: 64, offset: 3136)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1625, line: 164, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1624, file: !1625, line: 175, baseType: !1680, size: 32, offset: 3200)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !347, line: 805, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 798, size: 32, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1681, file: !347, line: 803, baseType: !346, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !347, line: 804, baseType: !193, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1624, file: !1625, line: 176, baseType: !376, size: 64, offset: 3264)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1624, file: !1625, line: 176, baseType: !376, size: 64, offset: 3328)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1624, file: !1625, line: 176, baseType: !376, size: 64, offset: 3392)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1624, file: !1625, line: 176, baseType: !376, size: 64, offset: 3456)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1624, file: !1625, line: 177, baseType: !376, size: 64, offset: 3520)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1624, file: !1625, line: 178, baseType: !376, size: 64, offset: 3584)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1624, file: !1625, line: 179, baseType: !1392, size: 128, offset: 3648)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1624, file: !1625, line: 180, baseType: !283, size: 64, offset: 3776)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1624, file: !1625, line: 180, baseType: !283, size: 64, offset: 3840)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1624, file: !1625, line: 180, baseType: !283, size: 64, offset: 3904)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1624, file: !1625, line: 180, baseType: !283, size: 64, offset: 3968)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1624, file: !1625, line: 181, baseType: !283, size: 64, offset: 4032)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1624, file: !1625, line: 181, baseType: !283, size: 64, offset: 4096)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1624, file: !1625, line: 181, baseType: !283, size: 64, offset: 4160)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1624, file: !1625, line: 181, baseType: !283, size: 64, offset: 4224)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1624, file: !1625, line: 182, baseType: !283, size: 64, offset: 4288)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1624, file: !1625, line: 182, baseType: !283, size: 64, offset: 4352)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1624, file: !1625, line: 182, baseType: !283, size: 64, offset: 4416)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1624, file: !1625, line: 182, baseType: !283, size: 64, offset: 4480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1624, file: !1625, line: 183, baseType: !283, size: 64, offset: 4544)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1624, file: !1625, line: 183, baseType: !283, size: 64, offset: 4608)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1624, file: !1625, line: 184, baseType: !1707, offset: 4672)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1708, line: 12, elements: !207)
!1708 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1624, file: !1625, line: 192, baseType: !378, size: 64, offset: 4672)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1624, file: !1625, line: 203, baseType: !1711, size: 2048, offset: 4736)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1712, size: 2048, elements: !145)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1713, line: 43, size: 128, elements: !1714)
!1713 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1712, file: !1713, line: 44, baseType: !282, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1712, file: !1713, line: 45, baseType: !282, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1624, file: !1625, line: 220, baseType: !445, size: 8, offset: 6784)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1624, file: !1625, line: 221, baseType: !1079, size: 16, offset: 6800)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1624, file: !1625, line: 222, baseType: !1079, size: 16, offset: 6816)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1624, file: !1625, line: 224, baseType: !928, size: 64, offset: 6848)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1624, file: !1625, line: 227, baseType: !1047, size: 192, offset: 6912)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1624, file: !1625, line: 233, baseType: !1047, size: 192, offset: 7104)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1091, file: !1092, line: 970, baseType: !1724, size: 64, offset: 9280)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1625, line: 20, size: 16576, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1725, file: !1625, line: 21, baseType: !193)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1725, file: !1625, line: 22, baseType: !1104, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1725, file: !1625, line: 23, baseType: !1355, size: 128, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1725, file: !1625, line: 24, baseType: !1731, size: 16384, offset: 192)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1732, size: 16384, elements: !239)
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
!1743 = !{null, !141}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1735, file: !1635, line: 38, baseType: !283, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1735, file: !1635, line: 44, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1739, line: 22, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1739, line: 21, baseType: !1749)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1735, file: !1635, line: 46, baseType: !1639, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1091, file: !1092, line: 971, baseType: !1639, size: 64, offset: 9344)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1091, file: !1092, line: 972, baseType: !1639, size: 64, offset: 9408)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1091, file: !1092, line: 974, baseType: !1639, size: 64, offset: 9472)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1091, file: !1092, line: 975, baseType: !1634, size: 192, offset: 9536)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1091, file: !1092, line: 976, baseType: !283, size: 64, offset: 9728)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1091, file: !1092, line: 977, baseType: !280, size: 64, offset: 9792)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1091, file: !1092, line: 978, baseType: !7, size: 32, offset: 9856)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1091, file: !1092, line: 980, baseType: !327, size: 64, offset: 9920)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1091, file: !1092, line: 989, baseType: !1761, size: 128, offset: 9984)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1762, line: 35, size: 128, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1761, file: !1762, line: 36, baseType: !141, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1761, file: !1762, line: 37, baseType: !702, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1761, file: !1762, line: 38, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1762, line: 23, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1091, file: !1092, line: 992, baseType: !376, size: 64, offset: 10112)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1091, file: !1092, line: 993, baseType: !376, size: 64, offset: 10176)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1091, file: !1092, line: 996, baseType: !193, offset: 10240)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1091, file: !1092, line: 999, baseType: !735, offset: 10240)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1091, file: !1092, line: 1001, baseType: !1774, size: 64, offset: 10240)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1092, line: 636, size: 64, elements: !1775)
!1775 = !{!1776}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1774, file: !1092, line: 637, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1091, file: !1092, line: 1005, baseType: !707, size: 128, offset: 10304)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1091, file: !1092, line: 1007, baseType: !1090, size: 64, offset: 10432)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1091, file: !1092, line: 1009, baseType: !1781, size: 64, offset: 10496)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1092, line: 1009, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1091, file: !1092, line: 1043, baseType: !131, size: 64, offset: 10560)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1091, file: !1092, line: 1046, baseType: !1785, size: 64, offset: 10624)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1092, line: 41, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1091, file: !1092, line: 1050, baseType: !1788, size: 64, offset: 10688)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1092, line: 42, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1091, file: !1092, line: 1054, baseType: !1791, size: 64, offset: 10752)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1092, line: 55, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1091, file: !1092, line: 1056, baseType: !1794, size: 64, offset: 10816)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1092, line: 40, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1091, file: !1092, line: 1058, baseType: !1797, size: 64, offset: 10880)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1799, line: 99, size: 704, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1826, !1827}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1798, file: !1799, line: 100, baseType: !726, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1798, file: !1799, line: 101, baseType: !702, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1798, file: !1799, line: 102, baseType: !702, size: 32, offset: 96)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1798, file: !1799, line: 105, baseType: !193, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1798, file: !1799, line: 107, baseType: !134, size: 16, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1798, file: !1799, line: 109, baseType: !694, size: 128, offset: 192)
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
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1816, file: !1799, line: 84, baseType: !180, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1816, file: !1799, line: 85, baseType: !889, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1809, file: !1799, line: 87, baseType: !1821, size: 128, offset: 256)
!1821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1809, file: !1799, line: 87, size: 128, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1821, file: !1799, line: 88, baseType: !594, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1821, file: !1799, line: 89, baseType: !324, size: 128, align: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1799, line: 92, baseType: !7, size: 32, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1798, file: !1799, line: 111, baseType: !590, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1798, file: !1799, line: 113, baseType: !1828, size: 256, offset: 448)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1829, line: 102, size: 256, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1829, line: 103, baseType: !726, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1828, file: !1829, line: 104, baseType: !180, size: 128, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1828, file: !1829, line: 105, baseType: !1834, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1829, line: 21, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1091, file: !1092, line: 1061, baseType: !1840, size: 64, offset: 10944)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1092, line: 43, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1091, file: !1092, line: 1064, baseType: !283, size: 64, offset: 11008)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1091, file: !1092, line: 1065, baseType: !1844, size: 64, offset: 11072)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1635, line: 14, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1635, line: 12, size: 384, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !1635, line: 13, baseType: !1849, size: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1846, file: !1635, line: 13, size: 384, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1849, file: !1635, line: 13, baseType: !141, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1849, file: !1635, line: 13, baseType: !141, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1849, file: !1635, line: 13, baseType: !141, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1849, file: !1635, line: 13, baseType: !1855, size: 256, offset: 128)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1856, line: 32, size: 256, elements: !1857)
!1856 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1863, !1876, !1882, !1891, !1911, !1916}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1855, file: !1856, line: 37, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 34, size: 64, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1859, file: !1856, line: 35, baseType: !1334, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1859, file: !1856, line: 36, baseType: !396, size: 32, offset: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1855, file: !1856, line: 45, baseType: !1864, size: 192)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 40, size: 192, elements: !1865)
!1865 = !{!1866, !1868, !1869, !1875}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1864, file: !1856, line: 41, baseType: !1867, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !267, line: 95, baseType: !141)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1864, file: !1856, line: 42, baseType: !141, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1864, file: !1856, line: 43, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1856, line: 11, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1856, line: 8, size: 64, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1871, file: !1856, line: 9, baseType: !141, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1871, file: !1856, line: 10, baseType: !131, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1864, file: !1856, line: 44, baseType: !141, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1855, file: !1856, line: 52, baseType: !1877, size: 128)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 48, size: 128, elements: !1878)
!1878 = !{!1879, !1880, !1881}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1877, file: !1856, line: 49, baseType: !1334, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1877, file: !1856, line: 50, baseType: !396, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1877, file: !1856, line: 51, baseType: !1870, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1855, file: !1856, line: 61, baseType: !1883, size: 256)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 55, size: 256, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1890}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1883, file: !1856, line: 56, baseType: !1334, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1883, file: !1856, line: 57, baseType: !396, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1883, file: !1856, line: 58, baseType: !141, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1883, file: !1856, line: 59, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !267, line: 94, baseType: !268)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1883, file: !1856, line: 60, baseType: !1889, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1855, file: !1856, line: 95, baseType: !1892, size: 256)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 64, size: 256, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1892, file: !1856, line: 65, baseType: !131, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1856, line: 77, baseType: !1896, size: 192, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1856, line: 77, size: 192, elements: !1897)
!1897 = !{!1898, !1899, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1896, file: !1856, line: 82, baseType: !1079, size: 16)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1896, file: !1856, line: 88, baseType: !1900, size: 192)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1856, line: 84, size: 192, elements: !1901)
!1901 = !{!1902, !1904, !1905}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1900, file: !1856, line: 85, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !1204)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1900, file: !1856, line: 86, baseType: !131, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1900, file: !1856, line: 87, baseType: !131, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1896, file: !1856, line: 93, baseType: !1907, size: 96)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1856, line: 90, size: 96, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1907, file: !1856, line: 91, baseType: !1903, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1907, file: !1856, line: 92, baseType: !150, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1855, file: !1856, line: 101, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 98, size: 128, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1912, file: !1856, line: 99, baseType: !269, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1912, file: !1856, line: 100, baseType: !141, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1855, file: !1856, line: 108, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 104, size: 128, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1917, file: !1856, line: 105, baseType: !131, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1917, file: !1856, line: 106, baseType: !141, size: 32, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1917, file: !1856, line: 107, baseType: !7, size: 32, offset: 96)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1091, file: !1092, line: 1067, baseType: !1707, offset: 11136)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1091, file: !1092, line: 1099, baseType: !1924, size: 64, offset: 11136)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1092, line: 56, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1091, file: !1092, line: 1103, baseType: !180, size: 128, offset: 11200)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1091, file: !1092, line: 1104, baseType: !1928, size: 64, offset: 11328)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1092, line: 46, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1091, file: !1092, line: 1105, baseType: !1047, size: 192, offset: 11392)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1091, file: !1092, line: 1106, baseType: !7, size: 32, offset: 11584)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1091, file: !1092, line: 1109, baseType: !1933, size: 128, offset: 11648)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1934, size: 128, elements: !161)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1092, line: 51, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1091, file: !1092, line: 1110, baseType: !1047, size: 192, offset: 11776)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1091, file: !1092, line: 1111, baseType: !180, size: 128, offset: 11968)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1091, file: !1092, line: 1173, baseType: !1939, size: 64, offset: 12096)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1941, line: 62, size: 256, align: 256, elements: !1942)
!1941 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1942 = !{!1943, !1944, !1945, !1950}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1940, file: !1941, line: 75, baseType: !150, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1940, file: !1941, line: 90, baseType: !150, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1940, file: !1941, line: 124, baseType: !1946, size: 64, offset: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !1941, line: 109, size: 64, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1946, file: !1941, line: 110, baseType: !377, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1946, file: !1941, line: 112, baseType: !377, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !1941, line: 144, baseType: !150, size: 32, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1091, file: !1092, line: 1174, baseType: !148, size: 32, offset: 12160)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1091, file: !1092, line: 1179, baseType: !283, size: 64, offset: 12224)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1091, file: !1092, line: 1182, baseType: !1954, size: 128, offset: 12288)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1025, line: 76, size: 128, elements: !1955)
!1955 = !{!1956, !1961, !1962}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1954, file: !1025, line: 85, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1958, line: 7, size: 64, elements: !1959)
!1958 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1957, file: !1958, line: 12, baseType: !1241, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1954, file: !1025, line: 88, baseType: !445, size: 8, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1954, file: !1025, line: 95, baseType: !445, size: 8, offset: 72)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !1092, line: 1184, baseType: !1964, size: 128, offset: 12416)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !1092, line: 1184, size: 128, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1964, file: !1092, line: 1185, baseType: !1104, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1964, file: !1092, line: 1186, baseType: !324, size: 128, align: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1091, file: !1092, line: 1190, baseType: !1969, size: 64, offset: 12544)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1092, line: 53, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1091, file: !1092, line: 1192, baseType: !1972, size: 128, offset: 12608)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1025, line: 64, size: 128, elements: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1972, file: !1025, line: 65, baseType: !676, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1972, file: !1025, line: 67, baseType: !150, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1972, file: !1025, line: 68, baseType: !150, size: 32, offset: 96)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1091, file: !1092, line: 1206, baseType: !141, size: 32, offset: 12736)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1091, file: !1092, line: 1207, baseType: !141, size: 32, offset: 12768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1091, file: !1092, line: 1209, baseType: !283, size: 64, offset: 12800)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1091, file: !1092, line: 1219, baseType: !376, size: 64, offset: 12864)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1091, file: !1092, line: 1220, baseType: !376, size: 64, offset: 12928)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1091, file: !1092, line: 1317, baseType: !141, size: 32, offset: 12992)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1091, file: !1092, line: 1319, baseType: !1090, size: 64, offset: 13056)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1091, file: !1092, line: 1322, baseType: !1985, size: 64, offset: 13120)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1092, line: 1322, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1091, file: !1092, line: 1326, baseType: !1104, size: 32, offset: 13184)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1091, file: !1092, line: 1342, baseType: !131, size: 64, offset: 13248)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1091, file: !1092, line: 1343, baseType: !377, size: 64, offset: 13312)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1091, file: !1092, line: 1344, baseType: !376, size: 64, offset: 13376)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1091, file: !1092, line: 1345, baseType: !377, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1091, file: !1092, line: 1346, baseType: !377, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1091, file: !1092, line: 1347, baseType: !377, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1091, file: !1092, line: 1348, baseType: !324, size: 128, align: 64, offset: 13504)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1091, file: !1092, line: 1358, baseType: !1996, size: 34816, offset: 13824)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1997, line: 485, size: 34816, elements: !1998)
!1997 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2028, !2029, !2030, !2031, !2032, !2033, !2036, !2037, !2038}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1996, file: !1997, line: 487, baseType: !2000, size: 192)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2001, size: 192, elements: !235)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2002, line: 16, size: 64, elements: !2003)
!2002 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2001, file: !2002, line: 17, baseType: !814, size: 16)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2001, file: !2002, line: 18, baseType: !814, size: 16, offset: 16)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2001, file: !2002, line: 19, baseType: !814, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2001, file: !2002, line: 19, baseType: !814, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2001, file: !2002, line: 19, baseType: !814, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2001, file: !2002, line: 19, baseType: !814, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2001, file: !2002, line: 19, baseType: !814, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2001, file: !2002, line: 20, baseType: !814, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2001, file: !2002, line: 20, baseType: !814, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2001, file: !2002, line: 20, baseType: !814, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2001, file: !2002, line: 20, baseType: !814, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2001, file: !2002, line: 20, baseType: !814, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2001, file: !2002, line: 20, baseType: !814, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1996, file: !1997, line: 491, baseType: !283, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1996, file: !1997, line: 495, baseType: !134, size: 16, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1996, file: !1997, line: 496, baseType: !134, size: 16, offset: 272)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1996, file: !1997, line: 497, baseType: !134, size: 16, offset: 288)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1996, file: !1997, line: 498, baseType: !134, size: 16, offset: 304)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1996, file: !1997, line: 502, baseType: !283, size: 64, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1996, file: !1997, line: 503, baseType: !283, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1996, file: !1997, line: 514, baseType: !2025, size: 256, offset: 448)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2026, size: 256, elements: !1029)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1997, line: 483, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1996, file: !1997, line: 516, baseType: !283, size: 64, offset: 704)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1996, file: !1997, line: 518, baseType: !283, size: 64, offset: 768)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1996, file: !1997, line: 520, baseType: !283, size: 64, offset: 832)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1996, file: !1997, line: 521, baseType: !283, size: 64, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1996, file: !1997, line: 522, baseType: !283, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1996, file: !1997, line: 528, baseType: !2034, size: 64, offset: 1024)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1997, line: 10, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1996, file: !1997, line: 535, baseType: !283, size: 64, offset: 1088)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1996, file: !1997, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1996, file: !1997, line: 540, baseType: !2039, size: 33280, offset: 1536)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2040, line: 317, size: 33280, elements: !2041)
!2040 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2043, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2039, file: !2040, line: 330, baseType: !7, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2039, file: !2040, line: 337, baseType: !283, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2039, file: !2040, line: 348, baseType: !2045, size: 32768, offset: 512)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2040, line: 304, size: 32768, elements: !2046)
!2046 = !{!2047, !2062, !2101, !2151, !2164}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2045, file: !2040, line: 305, baseType: !2048, size: 896)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2040, line: 12, size: 896, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2061}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2048, file: !2040, line: 13, baseType: !148, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2048, file: !2040, line: 14, baseType: !148, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2048, file: !2040, line: 15, baseType: !148, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2048, file: !2040, line: 16, baseType: !148, size: 32, offset: 96)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2048, file: !2040, line: 17, baseType: !148, size: 32, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2048, file: !2040, line: 18, baseType: !148, size: 32, offset: 160)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2048, file: !2040, line: 19, baseType: !148, size: 32, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2048, file: !2040, line: 22, baseType: !2058, size: 640, offset: 224)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 640, elements: !2059)
!2059 = !{!2060}
!2060 = !DISubrange(count: 20)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2048, file: !2040, line: 25, baseType: !148, size: 32, offset: 864)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2045, file: !2040, line: 306, baseType: !2063, size: 4096, align: 128)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2040, line: 34, size: 4096, align: 128, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2084, !2085, !2086, !2090, !2092, !2096}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2063, file: !2040, line: 35, baseType: !814, size: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2063, file: !2040, line: 36, baseType: !814, size: 16, offset: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2063, file: !2040, line: 37, baseType: !814, size: 16, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2063, file: !2040, line: 38, baseType: !814, size: 16, offset: 48)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !2040, line: 39, baseType: !2070, size: 128, offset: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !2040, line: 39, size: 128, elements: !2071)
!2071 = !{!2072, !2077}
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !2040, line: 40, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !2040, line: 40, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2073, file: !2040, line: 41, baseType: !376, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2073, file: !2040, line: 42, baseType: !376, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2070, file: !2040, line: 44, baseType: !2078, size: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !2040, line: 44, size: 128, elements: !2079)
!2079 = !{!2080, !2081, !2082, !2083}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2078, file: !2040, line: 45, baseType: !148, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2078, file: !2040, line: 46, baseType: !148, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2078, file: !2040, line: 47, baseType: !148, size: 32, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2078, file: !2040, line: 48, baseType: !148, size: 32, offset: 96)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2063, file: !2040, line: 51, baseType: !148, size: 32, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2063, file: !2040, line: 52, baseType: !148, size: 32, offset: 224)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2063, file: !2040, line: 55, baseType: !2087, size: 1024, offset: 256)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1024, elements: !2088)
!2088 = !{!2089}
!2089 = !DISubrange(count: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2063, file: !2040, line: 58, baseType: !2091, size: 2048, offset: 1280)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2048, elements: !239)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2063, file: !2040, line: 60, baseType: !2093, size: 384, offset: 3328)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, elements: !2094)
!2094 = !{!2095}
!2095 = !DISubrange(count: 12)
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !2040, line: 62, baseType: !2097, size: 384, offset: 3712)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !2040, line: 62, size: 384, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2097, file: !2040, line: 63, baseType: !2093, size: 384)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2097, file: !2040, line: 64, baseType: !2093, size: 384)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2045, file: !2040, line: 307, baseType: !2102, size: 1088)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2040, line: 79, size: 1088, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2150}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2102, file: !2040, line: 80, baseType: !148, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2102, file: !2040, line: 81, baseType: !148, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2102, file: !2040, line: 82, baseType: !148, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2102, file: !2040, line: 83, baseType: !148, size: 32, offset: 96)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2102, file: !2040, line: 84, baseType: !148, size: 32, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2102, file: !2040, line: 85, baseType: !148, size: 32, offset: 160)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2102, file: !2040, line: 86, baseType: !148, size: 32, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2102, file: !2040, line: 88, baseType: !2058, size: 640, offset: 224)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2102, file: !2040, line: 89, baseType: !1226, size: 8, offset: 864)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2102, file: !2040, line: 90, baseType: !1226, size: 8, offset: 872)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2102, file: !2040, line: 91, baseType: !1226, size: 8, offset: 880)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2102, file: !2040, line: 92, baseType: !1226, size: 8, offset: 888)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2102, file: !2040, line: 93, baseType: !1226, size: 8, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2102, file: !2040, line: 94, baseType: !1226, size: 8, offset: 904)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2102, file: !2040, line: 95, baseType: !2119, size: 64, offset: 960)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2121, line: 11, size: 128, elements: !2122)
!2121 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2120, file: !2121, line: 12, baseType: !269, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2120, file: !2121, line: 13, baseType: !2125, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2127, line: 56, size: 1344, elements: !2128)
!2127 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2126, file: !2127, line: 61, baseType: !283, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2126, file: !2127, line: 62, baseType: !283, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2126, file: !2127, line: 63, baseType: !283, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2126, file: !2127, line: 64, baseType: !283, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2126, file: !2127, line: 65, baseType: !283, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2126, file: !2127, line: 66, baseType: !283, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2126, file: !2127, line: 68, baseType: !283, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2126, file: !2127, line: 69, baseType: !283, size: 64, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2126, file: !2127, line: 70, baseType: !283, size: 64, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2126, file: !2127, line: 71, baseType: !283, size: 64, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2126, file: !2127, line: 72, baseType: !283, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2126, file: !2127, line: 73, baseType: !283, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2126, file: !2127, line: 74, baseType: !283, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2126, file: !2127, line: 75, baseType: !283, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2126, file: !2127, line: 76, baseType: !283, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2126, file: !2127, line: 81, baseType: !283, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2126, file: !2127, line: 83, baseType: !283, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2126, file: !2127, line: 84, baseType: !283, size: 64, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !2127, line: 85, baseType: !283, size: 64, offset: 1152)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2126, file: !2127, line: 86, baseType: !283, size: 64, offset: 1216)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2126, file: !2127, line: 87, baseType: !283, size: 64, offset: 1280)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2102, file: !2040, line: 96, baseType: !148, size: 32, offset: 1024)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2045, file: !2040, line: 308, baseType: !2152, size: 4608, align: 512)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2040, line: 289, size: 4608, align: 512, elements: !2153)
!2153 = !{!2154, !2155, !2162}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2152, file: !2040, line: 290, baseType: !2063, size: 4096, align: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2152, file: !2040, line: 291, baseType: !2156, size: 512, offset: 4096)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2040, line: 268, size: 512, elements: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2156, file: !2040, line: 269, baseType: !376, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2156, file: !2040, line: 270, baseType: !376, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2156, file: !2040, line: 271, baseType: !2161, size: 384, offset: 128)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, elements: !1497)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2152, file: !2040, line: 292, baseType: !2163, offset: 4608)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, elements: !1595)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2045, file: !2040, line: 309, baseType: !2165, size: 32768)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 32768, elements: !2166)
!2166 = !{!2167}
!2167 = !DISubrange(count: 4096)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1087, file: !678, line: 378, baseType: !2169, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1083, file: !678, line: 384, baseType: !1376, size: 192, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !932, file: !678, line: 500, baseType: !193, offset: 6656)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !932, file: !678, line: 501, baseType: !2173, size: 64, offset: 6656)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !678, line: 387, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !932, file: !678, line: 516, baseType: !1585, size: 64, offset: 6720)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !932, file: !678, line: 519, baseType: !311, size: 64, offset: 6784)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !932, file: !678, line: 521, baseType: !2178, size: 64, offset: 6848)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !678, line: 521, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !932, file: !678, line: 545, baseType: !702, size: 32, offset: 6912)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !932, file: !678, line: 548, baseType: !445, size: 8, offset: 6944)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !932, file: !678, line: 550, baseType: !2183, offset: 6952)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2184, line: 142, elements: !207)
!2184 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !932, file: !678, line: 554, baseType: !1828, size: 256, offset: 6976)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !932, file: !678, line: 557, baseType: !148, size: 32, offset: 7232)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !929, file: !678, line: 565, baseType: !2188, offset: 7296)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: -1)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !925, file: !678, line: 151, baseType: !702, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !918, file: !678, line: 156, baseType: !193, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 159, baseType: !2194, size: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 159, size: 128, elements: !2195)
!2195 = !{!2196, !2199}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2194, file: !678, line: 161, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !678, line: 161, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2194, file: !678, line: 162, baseType: !131, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !682, file: !678, line: 176, baseType: !324, size: 128, align: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 179, baseType: !2202, size: 32, offset: 384)
!2202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !678, line: 179, size: 32, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2202, file: !678, line: 184, baseType: !702, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2202, file: !678, line: 192, baseType: !7, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2202, file: !678, line: 194, baseType: !7, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2202, file: !678, line: 195, baseType: !141, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !677, file: !678, line: 199, baseType: !702, size: 32, offset: 416)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !612, file: !38, line: 1964, baseType: !2210, size: 64, offset: 1344)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!269, !554, !2213}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2215, line: 12, size: 256, elements: !2216)
!2215 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2216 = !{!2217, !2218, !2219, !2220, !2221}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2214, file: !2215, line: 13, baseType: !129, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2214, file: !2215, line: 16, baseType: !141, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2214, file: !2215, line: 23, baseType: !283, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2214, file: !2215, line: 30, baseType: !283, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2214, file: !2215, line: 33, baseType: !2222, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !678, line: 27, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !612, file: !38, line: 1966, baseType: !2210, size: 64, offset: 1408)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !555, file: !38, line: 1424, baseType: !2226, size: 64, offset: 448)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2229)
!2229 = !{!2230, !2276, !2280, !2284, !2285, !2286, !2287, !2288, !2293, !2298, !2302}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2228, file: !32, line: 323, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!141, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2261, !2262, !2263}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2235, file: !32, line: 295, baseType: !594, size: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2235, file: !32, line: 296, baseType: !180, size: 128, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2235, file: !32, line: 297, baseType: !180, size: 128, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2235, file: !32, line: 298, baseType: !180, size: 128, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2235, file: !32, line: 299, baseType: !1047, size: 192, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2235, file: !32, line: 300, baseType: !193, offset: 704)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2235, file: !32, line: 301, baseType: !702, size: 32, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2235, file: !32, line: 302, baseType: !554, size: 64, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2235, file: !32, line: 303, baseType: !2246, size: 64, offset: 832)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2247)
!2247 = !{!2248, !2260}
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !32, line: 69, baseType: !2249, size: 32)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2246, file: !32, line: 69, size: 32, elements: !2250)
!2250 = !{!2251, !2252, !2253}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2249, file: !32, line: 70, baseType: !390, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2249, file: !32, line: 71, baseType: !398, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2249, file: !32, line: 72, baseType: !2254, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2255, line: 24, baseType: !2256)
!2255 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2255, line: 22, size: 32, elements: !2257)
!2257 = !{!2258}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2256, file: !2255, line: 23, baseType: !2259, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2255, line: 20, baseType: !396)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2246, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2235, file: !32, line: 304, baseType: !486, size: 64, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2235, file: !32, line: 305, baseType: !283, size: 64, offset: 960)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2235, file: !32, line: 306, baseType: !2264, size: 576, offset: 1024)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2265)
!2265 = !{!2266, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2264, file: !32, line: 206, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !488)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2264, file: !32, line: 207, baseType: !2267, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2264, file: !32, line: 208, baseType: !2267, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2264, file: !32, line: 209, baseType: !2267, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2264, file: !32, line: 210, baseType: !2267, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2264, file: !32, line: 211, baseType: !2267, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2264, file: !32, line: 212, baseType: !2267, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2264, file: !32, line: 213, baseType: !494, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2264, file: !32, line: 214, baseType: !494, size: 64, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2228, file: !32, line: 324, baseType: !2277, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!2234, !554, !141}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2228, file: !32, line: 325, baseType: !2281, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2234}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2228, file: !32, line: 326, baseType: !2231, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2228, file: !32, line: 327, baseType: !2231, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2228, file: !32, line: 328, baseType: !2231, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2228, file: !32, line: 329, baseType: !640, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2228, file: !32, line: 332, baseType: !2289, size: 64, offset: 448)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!2292, !384}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2228, file: !32, line: 333, baseType: !2294, size: 64, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!141, !384, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2228, file: !32, line: 335, baseType: !2299, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!141, !384, !2292}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2228, file: !32, line: 337, baseType: !2303, size: 64, offset: 640)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!141, !554, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !555, file: !38, line: 1425, baseType: !2308, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2311)
!2311 = !{!2312, !2316, !2317, !2321, !2322, !2323, !2338, !2361, !2365, !2366, !2389}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2310, file: !32, line: 429, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!141, !554, !141, !141, !504}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2310, file: !32, line: 430, baseType: !640, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2310, file: !32, line: 431, baseType: !2318, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!141, !554, !7}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2310, file: !32, line: 432, baseType: !2318, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2310, file: !32, line: 433, baseType: !640, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2310, file: !32, line: 434, baseType: !2324, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!141, !554, !141, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2328, file: !32, line: 416, baseType: !141, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2328, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2328, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2328, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2328, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2328, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2328, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2328, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2310, file: !32, line: 435, baseType: !2339, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!141, !554, !2246, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2343, file: !32, line: 344, baseType: !141, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2343, file: !32, line: 345, baseType: !376, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2343, file: !32, line: 346, baseType: !376, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2343, file: !32, line: 347, baseType: !376, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2343, file: !32, line: 348, baseType: !376, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2343, file: !32, line: 349, baseType: !376, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2343, file: !32, line: 350, baseType: !376, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2343, file: !32, line: 351, baseType: !732, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2343, file: !32, line: 353, baseType: !732, size: 64, offset: 512)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2343, file: !32, line: 354, baseType: !141, size: 32, offset: 576)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2343, file: !32, line: 355, baseType: !141, size: 32, offset: 608)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2343, file: !32, line: 356, baseType: !376, size: 64, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2343, file: !32, line: 357, baseType: !376, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2343, file: !32, line: 358, baseType: !376, size: 64, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2343, file: !32, line: 359, baseType: !732, size: 64, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2343, file: !32, line: 360, baseType: !141, size: 32, offset: 896)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2310, file: !32, line: 436, baseType: !2362, size: 64, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!141, !554, !2306, !2342}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2310, file: !32, line: 438, baseType: !2339, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2310, file: !32, line: 439, baseType: !2367, size: 64, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!141, !554, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2371, file: !32, line: 410, baseType: !7, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2371, file: !32, line: 411, baseType: !2375, size: 1344, offset: 64)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2376, size: 1344, elements: !235)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2388}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2376, file: !32, line: 396, baseType: !7, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2376, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2376, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2376, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2376, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2376, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2376, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2376, file: !32, line: 404, baseType: !378, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2376, file: !32, line: 405, baseType: !2387, size: 64, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !130, line: 126, baseType: !376)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2376, file: !32, line: 406, baseType: !2387, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2310, file: !32, line: 440, baseType: !2318, size: 64, offset: 640)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !555, file: !38, line: 1426, baseType: !2391, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2393)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !555, file: !38, line: 1427, baseType: !283, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !555, file: !38, line: 1428, baseType: !283, size: 64, offset: 704)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !555, file: !38, line: 1429, baseType: !283, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !555, file: !38, line: 1430, baseType: !341, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !555, file: !38, line: 1431, baseType: !722, size: 256, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !555, file: !38, line: 1432, baseType: !141, size: 32, offset: 1152)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !555, file: !38, line: 1433, baseType: !702, size: 32, offset: 1184)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !555, file: !38, line: 1437, baseType: !2402, size: 64, offset: 1216)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !555, file: !38, line: 1449, baseType: !2407, size: 64, offset: 1280)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !357, line: 34, size: 64, elements: !2408)
!2408 = !{!2409}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2407, file: !357, line: 35, baseType: !360, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !555, file: !38, line: 1450, baseType: !180, size: 128, offset: 1344)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !555, file: !38, line: 1451, baseType: !2412, size: 64, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !555, file: !38, line: 1452, baseType: !1794, size: 64, offset: 1536)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !555, file: !38, line: 1453, baseType: !2416, size: 64, offset: 1600)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !555, file: !38, line: 1454, baseType: !594, size: 128, offset: 1664)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !555, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !555, file: !38, line: 1456, baseType: !2421, size: 2432, offset: 1856)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2427, !2459}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2421, file: !32, line: 519, baseType: !7, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2421, file: !32, line: 520, baseType: !722, size: 256, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2421, file: !32, line: 521, baseType: !2426, size: 192, offset: 320)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 192, elements: !235)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2421, file: !32, line: 522, baseType: !2428, size: 1728, offset: 512)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2429, size: 1728, elements: !235)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2430)
!2430 = !{!2431, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2429, file: !32, line: 223, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2434)
!2434 = !{!2435, !2436, !2449, !2450}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2433, file: !32, line: 444, baseType: !141, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2433, file: !32, line: 445, baseType: !2437, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2439, file: !32, line: 311, baseType: !640, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2439, file: !32, line: 312, baseType: !640, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2439, file: !32, line: 313, baseType: !640, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2439, file: !32, line: 314, baseType: !640, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2439, file: !32, line: 315, baseType: !2231, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2439, file: !32, line: 316, baseType: !2231, size: 64, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2439, file: !32, line: 317, baseType: !2231, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2439, file: !32, line: 318, baseType: !2303, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2433, file: !32, line: 446, baseType: !126, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2433, file: !32, line: 447, baseType: !2432, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2429, file: !32, line: 224, baseType: !141, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2429, file: !32, line: 226, baseType: !180, size: 128, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2429, file: !32, line: 227, baseType: !283, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2429, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2429, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2429, file: !32, line: 230, baseType: !2267, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2429, file: !32, line: 231, baseType: !2267, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2429, file: !32, line: 232, baseType: !131, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2421, file: !32, line: 523, baseType: !2460, size: 192, offset: 2240)
!2460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 192, elements: !235)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !555, file: !38, line: 1458, baseType: !2462, size: 2112, offset: 4288)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2463)
!2463 = !{!2464, !2465, !2466}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2462, file: !38, line: 1411, baseType: !141, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2462, file: !38, line: 1412, baseType: !1355, size: 128, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2462, file: !38, line: 1413, baseType: !2467, size: 1920, offset: 192)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 1920, elements: !235)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2469, line: 12, size: 640, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2470 = !{!2471, !2479, !2481, !2486, !2487}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2468, file: !2469, line: 13, baseType: !2472, size: 320)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2473, line: 17, size: 320, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2472, file: !2473, line: 18, baseType: !141, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2472, file: !2473, line: 19, baseType: !141, size: 32, offset: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2472, file: !2473, line: 20, baseType: !1355, size: 128, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2472, file: !2473, line: 22, baseType: !324, size: 128, align: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2468, file: !2469, line: 14, baseType: !2480, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2468, file: !2469, line: 15, baseType: !2482, size: 64, offset: 384)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2483, line: 16, size: 64, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2484 = !{!2485}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2482, file: !2483, line: 17, baseType: !1090, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2468, file: !2469, line: 16, baseType: !1355, size: 128, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2468, file: !2469, line: 17, baseType: !702, size: 32, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !555, file: !38, line: 1465, baseType: !131, size: 64, offset: 6400)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !555, file: !38, line: 1468, baseType: !148, size: 32, offset: 6464)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !555, file: !38, line: 1470, baseType: !494, size: 64, offset: 6528)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !555, file: !38, line: 1471, baseType: !494, size: 64, offset: 6592)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !555, file: !38, line: 1473, baseType: !150, size: 32, offset: 6656)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !555, file: !38, line: 1474, baseType: !2494, size: 64, offset: 6720)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !555, file: !38, line: 1477, baseType: !2497, size: 256, offset: 6784)
!2497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !2088)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !555, file: !38, line: 1478, baseType: !2499, size: 128, offset: 7040)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2500, line: 18, baseType: !2501)
!2500 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2500, line: 16, size: 128, elements: !2502)
!2502 = !{!2503}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2501, file: !2500, line: 17, baseType: !2504, size: 128)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 128, elements: !145)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !555, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !555, file: !38, line: 1481, baseType: !2507, size: 32, offset: 7200)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !130, line: 150, baseType: !7)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !555, file: !38, line: 1487, baseType: !1047, size: 192, offset: 7232)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !555, file: !38, line: 1493, baseType: !177, size: 64, offset: 7424)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !555, file: !38, line: 1495, baseType: !2511, size: 64, offset: 7488)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2513)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !339, line: 135, size: 1024, align: 512, elements: !2514)
!2514 = !{!2515, !2519, !2520, !2527, !2533, !2537, !2541, !2545, !2546, !2550, !2554, !2559, !2563}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2513, file: !339, line: 136, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!141, !341, !7}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2513, file: !339, line: 137, baseType: !2516, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2513, file: !339, line: 138, baseType: !2521, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!141, !2524, !2526}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2513, file: !339, line: 139, baseType: !2528, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!141, !2524, !7, !177, !2531}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2513, file: !339, line: 141, baseType: !2534, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!141, !2524}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2513, file: !339, line: 142, baseType: !2538, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!141, !341}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2513, file: !339, line: 143, baseType: !2542, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !341}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2513, file: !339, line: 144, baseType: !2542, size: 64, offset: 448)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2513, file: !339, line: 145, baseType: !2547, size: 64, offset: 512)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !341, !384}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2513, file: !339, line: 146, baseType: !2551, size: 64, offset: 576)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!234, !341, !234, !141}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2513, file: !339, line: 147, baseType: !2555, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!337, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2513, file: !339, line: 148, baseType: !2560, size: 64, offset: 704)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!141, !504, !445}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2513, file: !339, line: 149, baseType: !2564, size: 64, offset: 768)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!341, !341, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !555, file: !38, line: 1500, baseType: !141, size: 32, offset: 7552)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !555, file: !38, line: 1502, baseType: !2571, size: 448, offset: 7616)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2215, line: 60, size: 448, elements: !2572)
!2572 = !{!2573, !2578, !2579, !2580, !2581, !2582, !2583}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2571, file: !2215, line: 61, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!283, !2577, !2213}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2571, file: !2215, line: 63, baseType: !2574, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2571, file: !2215, line: 66, baseType: !269, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2571, file: !2215, line: 67, baseType: !141, size: 32, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2571, file: !2215, line: 68, baseType: !7, size: 32, offset: 224)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2571, file: !2215, line: 71, baseType: !180, size: 128, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2571, file: !2215, line: 77, baseType: !2584, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !555, file: !38, line: 1505, baseType: !726, size: 64, offset: 8064)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !555, file: !38, line: 1508, baseType: !726, size: 64, offset: 8128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !555, file: !38, line: 1511, baseType: !141, size: 32, offset: 8192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !555, file: !38, line: 1514, baseType: !863, size: 32, offset: 8224)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !555, file: !38, line: 1517, baseType: !2590, size: 64, offset: 8256)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1829, line: 18, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !555, file: !38, line: 1518, baseType: !590, size: 64, offset: 8320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !555, file: !38, line: 1525, baseType: !1585, size: 64, offset: 8384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !555, file: !38, line: 1532, baseType: !2595, size: 64, offset: 8448)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2596, line: 52, size: 64, elements: !2597)
!2596 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2597 = !{!2598}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2595, file: !2596, line: 53, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2596, line: 40, size: 256, elements: !2601)
!2601 = !{!2602, !2603, !2608}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2600, file: !2596, line: 42, baseType: !193)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2600, file: !2596, line: 44, baseType: !2604, size: 192)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2596, line: 28, size: 192, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2604, file: !2596, line: 29, baseType: !180, size: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2604, file: !2596, line: 31, baseType: !269, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2600, file: !2596, line: 49, baseType: !269, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !555, file: !38, line: 1533, baseType: !2595, size: 64, offset: 8512)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !555, file: !38, line: 1534, baseType: !324, size: 128, align: 64, offset: 8576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !555, file: !38, line: 1535, baseType: !1828, size: 256, offset: 8704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !555, file: !38, line: 1537, baseType: !1047, size: 192, offset: 8960)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !555, file: !38, line: 1542, baseType: !141, size: 32, offset: 9152)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !555, file: !38, line: 1545, baseType: !193, offset: 9184)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !555, file: !38, line: 1546, baseType: !180, size: 128, offset: 9216)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !555, file: !38, line: 1548, baseType: !193, offset: 9344)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !555, file: !38, line: 1549, baseType: !180, size: 128, offset: 9344)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !385, file: !38, line: 624, baseType: !689, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !385, file: !38, line: 631, baseType: !283, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 639, baseType: !2621, size: 32, offset: 384)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 639, size: 32, elements: !2622)
!2622 = !{!2623, !2625}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2621, file: !38, line: 640, baseType: !2624, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2621, file: !38, line: 641, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !385, file: !38, line: 643, baseType: !468, size: 32, offset: 416)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !385, file: !38, line: 644, baseType: !486, size: 64, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !385, file: !38, line: 645, baseType: !490, size: 128, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !385, file: !38, line: 646, baseType: !490, size: 128, offset: 640)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !385, file: !38, line: 647, baseType: !490, size: 128, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !385, file: !38, line: 648, baseType: !193, offset: 896)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !385, file: !38, line: 649, baseType: !134, size: 16, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !385, file: !38, line: 650, baseType: !1226, size: 8, offset: 912)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !385, file: !38, line: 651, baseType: !1226, size: 8, offset: 920)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !385, file: !38, line: 652, baseType: !2387, size: 64, offset: 960)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !385, file: !38, line: 659, baseType: !283, size: 64, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !385, file: !38, line: 660, baseType: !722, size: 256, offset: 1088)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !385, file: !38, line: 662, baseType: !283, size: 64, offset: 1344)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !385, file: !38, line: 663, baseType: !283, size: 64, offset: 1408)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !385, file: !38, line: 665, baseType: !594, size: 128, offset: 1472)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !385, file: !38, line: 666, baseType: !180, size: 128, offset: 1600)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !385, file: !38, line: 675, baseType: !180, size: 128, offset: 1728)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !385, file: !38, line: 676, baseType: !180, size: 128, offset: 1856)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !385, file: !38, line: 677, baseType: !180, size: 128, offset: 1984)
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 678, baseType: !2646, size: 128, offset: 2112)
!2646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 678, size: 128, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2646, file: !38, line: 679, baseType: !590, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2646, file: !38, line: 680, baseType: !324, size: 128, align: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !385, file: !38, line: 682, baseType: !728, size: 64, offset: 2240)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !385, file: !38, line: 683, baseType: !728, size: 64, offset: 2304)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !385, file: !38, line: 684, baseType: !702, size: 32, offset: 2368)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !385, file: !38, line: 685, baseType: !702, size: 32, offset: 2400)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !385, file: !38, line: 686, baseType: !702, size: 32, offset: 2432)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !385, file: !38, line: 688, baseType: !702, size: 32, offset: 2464)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 690, baseType: !2657, size: 64, offset: 2496)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 690, size: 64, elements: !2658)
!2658 = !{!2659, !2881}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2657, file: !38, line: 691, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2663)
!2663 = !{!2664, !2665, !2669, !2674, !2678, !2679, !2680, !2684, !2697, !2698, !2705, !2709, !2710, !2714, !2715, !2719, !2724, !2725, !2729, !2733, !2841, !2845, !2846, !2850, !2851, !2855, !2859, !2864, !2868, !2872, !2876, !2880}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2662, file: !38, line: 1823, baseType: !126, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2662, file: !38, line: 1824, baseType: !2666, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!486, !311, !486, !141}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2662, file: !38, line: 1825, baseType: !2670, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!265, !311, !234, !280, !2673}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2662, file: !38, line: 1826, baseType: !2675, size: 64, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!265, !311, !177, !280, !2673}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2662, file: !38, line: 1827, baseType: !799, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2662, file: !38, line: 1828, baseType: !799, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2662, file: !38, line: 1829, baseType: !2681, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!141, !802, !445}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2662, file: !38, line: 1830, baseType: !2685, size: 64, offset: 448)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!141, !311, !2688}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2690)
!2690 = !{!2691, !2696}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2689, file: !38, line: 1777, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2693)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!141, !2688, !177, !141, !486, !376, !7}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2689, file: !38, line: 1778, baseType: !486, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2662, file: !38, line: 1831, baseType: !2685, size: 64, offset: 512)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2662, file: !38, line: 1832, baseType: !2699, size: 64, offset: 576)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!2702, !311, !2703}
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !136, line: 52, baseType: !7)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !574, line: 27, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2662, file: !38, line: 1833, baseType: !2706, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!269, !311, !7, !283}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2662, file: !38, line: 1834, baseType: !2706, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2662, file: !38, line: 1835, baseType: !2711, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!141, !311, !935}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2662, file: !38, line: 1836, baseType: !283, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2662, file: !38, line: 1837, baseType: !2716, size: 64, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!141, !384, !311}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2662, file: !38, line: 1838, baseType: !2720, size: 64, offset: 960)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!141, !311, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !131)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2662, file: !38, line: 1839, baseType: !2716, size: 64, offset: 1024)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2662, file: !38, line: 1840, baseType: !2726, size: 64, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!141, !311, !486, !486, !141}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2662, file: !38, line: 1841, baseType: !2730, size: 64, offset: 1152)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!141, !141, !311, !141}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2662, file: !38, line: 1842, baseType: !2734, size: 64, offset: 1216)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!141, !311, !141, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2771, !2772, !2773, !2786, !2817}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2738, file: !38, line: 1063, baseType: !2737, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2738, file: !38, line: 1064, baseType: !180, size: 128, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2738, file: !38, line: 1065, baseType: !594, size: 128, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2738, file: !38, line: 1066, baseType: !180, size: 128, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2738, file: !38, line: 1069, baseType: !180, size: 128, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2738, file: !38, line: 1072, baseType: !2723, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2738, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2738, file: !38, line: 1074, baseType: !382, size: 8, offset: 672)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2738, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2738, file: !38, line: 1076, baseType: !141, size: 32, offset: 736)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2738, file: !38, line: 1077, baseType: !1355, size: 128, offset: 768)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2738, file: !38, line: 1078, baseType: !311, size: 64, offset: 896)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2738, file: !38, line: 1079, baseType: !486, size: 64, offset: 960)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2738, file: !38, line: 1080, baseType: !486, size: 64, offset: 1024)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2738, file: !38, line: 1082, baseType: !2755, size: 64, offset: 1088)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2757)
!2757 = !{!2758, !2766, !2767, !2768, !2769, !2770}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2756, file: !38, line: 1315, baseType: !2759)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2760, line: 20, baseType: !2761)
!2760 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2760, line: 11, elements: !2762)
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2761, file: !2760, line: 12, baseType: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !205, line: 33, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 31, elements: !207)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2756, file: !38, line: 1316, baseType: !141, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2756, file: !38, line: 1317, baseType: !141, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2756, file: !38, line: 1318, baseType: !2755, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2756, file: !38, line: 1319, baseType: !311, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2756, file: !38, line: 1320, baseType: !324, size: 128, align: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2738, file: !38, line: 1084, baseType: !283, size: 64, offset: 1152)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2738, file: !38, line: 1085, baseType: !283, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2738, file: !38, line: 1087, baseType: !2774, size: 64, offset: 1280)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2776)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2777)
!2777 = !{!2778, !2782}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2776, file: !38, line: 1012, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2737, !2737}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2776, file: !38, line: 1013, baseType: !2783, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2737}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2738, file: !38, line: 1088, baseType: !2787, size: 64, offset: 1344)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2790)
!2790 = !{!2791, !2795, !2799, !2800, !2804, !2808, !2812, !2816}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2789, file: !38, line: 1017, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!2723, !2723}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2789, file: !38, line: 1018, baseType: !2796, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2723}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2789, file: !38, line: 1019, baseType: !2783, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2789, file: !38, line: 1020, baseType: !2801, size: 64, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!141, !2737, !141}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2789, file: !38, line: 1021, baseType: !2805, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!445, !2737}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2789, file: !38, line: 1022, baseType: !2809, size: 64, offset: 320)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!141, !2737, !141, !183}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2789, file: !38, line: 1023, baseType: !2813, size: 64, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2737, !776}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2789, file: !38, line: 1024, baseType: !2805, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2738, file: !38, line: 1097, baseType: !2818, size: 256, offset: 1408)
!2818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2738, file: !38, line: 1089, size: 256, elements: !2819)
!2819 = !{!2820, !2829, !2835}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2818, file: !38, line: 1090, baseType: !2821, size: 256)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2822, line: 10, size: 256, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2823 = !{!2824, !2825, !2828}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2821, file: !2822, line: 11, baseType: !148, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2821, file: !2822, line: 12, baseType: !2826, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2822, line: 5, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2821, file: !2822, line: 13, baseType: !180, size: 128, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2818, file: !38, line: 1091, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2822, line: 17, size: 64, elements: !2831)
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2830, file: !2822, line: 18, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2822, line: 16, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2818, file: !38, line: 1096, baseType: !2836, size: 192)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2818, file: !38, line: 1092, size: 192, elements: !2837)
!2837 = !{!2838, !2839, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2836, file: !38, line: 1093, baseType: !180, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2836, file: !38, line: 1094, baseType: !141, size: 32, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2836, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2662, file: !38, line: 1843, baseType: !2842, size: 64, offset: 1280)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!265, !311, !676, !141, !280, !2673, !141}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2662, file: !38, line: 1844, baseType: !975, size: 64, offset: 1344)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2662, file: !38, line: 1845, baseType: !2847, size: 64, offset: 1408)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!141, !141}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2662, file: !38, line: 1846, baseType: !2734, size: 64, offset: 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2662, file: !38, line: 1847, baseType: !2852, size: 64, offset: 1536)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!265, !1969, !311, !2673, !280, !7}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2662, file: !38, line: 1848, baseType: !2856, size: 64, offset: 1600)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!265, !311, !2673, !1969, !280, !7}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2662, file: !38, line: 1849, baseType: !2860, size: 64, offset: 1664)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!141, !311, !269, !2863, !776}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2662, file: !38, line: 1850, baseType: !2865, size: 64, offset: 1728)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!269, !311, !141, !486, !486}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2662, file: !38, line: 1852, baseType: !2869, size: 64, offset: 1792)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !666, !311}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2662, file: !38, line: 1856, baseType: !2873, size: 64, offset: 1856)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!265, !311, !486, !311, !486, !280, !7}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2662, file: !38, line: 1858, baseType: !2877, size: 64, offset: 1920)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!486, !311, !486, !311, !486, !486, !7}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2662, file: !38, line: 1861, baseType: !2726, size: 64, offset: 1984)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2657, file: !38, line: 692, baseType: !619, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !385, file: !38, line: 694, baseType: !2883, size: 64, offset: 2560)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2884, file: !38, line: 1101, baseType: !193)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2884, file: !38, line: 1102, baseType: !180, size: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2884, file: !38, line: 1103, baseType: !180, size: 128, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2884, file: !38, line: 1104, baseType: !180, size: 128, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !385, file: !38, line: 695, baseType: !690, size: 1216, align: 64, offset: 2624)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !385, file: !38, line: 696, baseType: !180, size: 128, offset: 3840)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 697, baseType: !2893, size: 64, offset: 3968)
!2893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 697, size: 64, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2908, !2909}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2893, file: !38, line: 698, baseType: !1969, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2893, file: !38, line: 699, baseType: !2412, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2893, file: !38, line: 700, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2900, line: 14, size: 832, elements: !2901)
!2900 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2899, file: !2900, line: 15, baseType: !173, size: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2899, file: !2900, line: 16, baseType: !126, size: 64, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2899, file: !2900, line: 17, baseType: !2660, size: 64, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2899, file: !2900, line: 18, baseType: !180, size: 128, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2899, file: !2900, line: 19, baseType: !468, size: 32, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2899, file: !2900, line: 20, baseType: !7, size: 32, offset: 800)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2893, file: !38, line: 701, baseType: !234, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2893, file: !38, line: 702, baseType: !7, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !385, file: !38, line: 705, baseType: !150, size: 32, offset: 4032)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !385, file: !38, line: 708, baseType: !150, size: 32, offset: 4064)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !385, file: !38, line: 709, baseType: !2494, size: 64, offset: 4096)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !385, file: !38, line: 720, baseType: !131, size: 64, offset: 4160)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !342, file: !339, line: 98, baseType: !2915, size: 256, offset: 448)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !2088)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !342, file: !339, line: 101, baseType: !2917, size: 32, offset: 704)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2918, line: 25, size: 32, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2917, file: !2918, line: 26, baseType: !2921, size: 32)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2917, file: !2918, line: 26, size: 32, elements: !2922)
!2922 = !{!2923}
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2921, file: !2918, line: 30, baseType: !2924, size: 32)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2921, file: !2918, line: 30, size: 32, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2924, file: !2918, line: 31, baseType: !193)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2924, file: !2918, line: 32, baseType: !141, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !342, file: !339, line: 102, baseType: !2511, size: 64, offset: 768)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !342, file: !339, line: 103, baseType: !554, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !342, file: !339, line: 104, baseType: !283, size: 64, offset: 896)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !342, file: !339, line: 105, baseType: !131, size: 64, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !339, line: 107, baseType: !2933, size: 128, offset: 1024)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !339, line: 107, size: 128, elements: !2934)
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2933, file: !339, line: 108, baseType: !180, size: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2933, file: !339, line: 109, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !342, file: !339, line: 111, baseType: !180, size: 128, offset: 1152)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !342, file: !339, line: 112, baseType: !180, size: 128, offset: 1280)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !342, file: !339, line: 120, baseType: !2941, size: 128, offset: 1408)
!2941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !339, line: 116, size: 128, elements: !2942)
!2942 = !{!2943, !2944, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2941, file: !339, line: 117, baseType: !594, size: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2941, file: !339, line: 118, baseType: !356, size: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2941, file: !339, line: 119, baseType: !324, size: 128, align: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !312, file: !38, line: 922, baseType: !384, size: 64, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !312, file: !38, line: 923, baseType: !2660, size: 64, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !312, file: !38, line: 929, baseType: !193, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !312, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !312, file: !38, line: 931, baseType: !726, size: 64, offset: 448)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !312, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !312, file: !38, line: 933, baseType: !2507, size: 32, offset: 544)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !312, file: !38, line: 934, baseType: !1047, size: 192, offset: 576)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !312, file: !38, line: 935, baseType: !486, size: 64, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !312, file: !38, line: 936, baseType: !2956, size: 192, offset: 832)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2956, file: !38, line: 886, baseType: !2759)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2956, file: !38, line: 887, baseType: !1345, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2956, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2956, file: !38, line: 889, baseType: !390, size: 32, offset: 96)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2956, file: !38, line: 889, baseType: !390, size: 32, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2956, file: !38, line: 890, baseType: !141, size: 32, offset: 160)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !312, file: !38, line: 937, baseType: !1421, size: 64, offset: 1024)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !312, file: !38, line: 938, baseType: !2966, size: 256, offset: 1088)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2966, file: !38, line: 897, baseType: !283, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2966, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2966, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2966, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2966, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2966, file: !38, line: 904, baseType: !486, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !312, file: !38, line: 940, baseType: !376, size: 64, offset: 1344)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !312, file: !38, line: 945, baseType: !131, size: 64, offset: 1408)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !312, file: !38, line: 949, baseType: !180, size: 128, offset: 1472)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !312, file: !38, line: 950, baseType: !180, size: 128, offset: 1600)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !312, file: !38, line: 952, baseType: !689, size: 64, offset: 1728)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !312, file: !38, line: 953, baseType: !863, size: 32, offset: 1792)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !312, file: !38, line: 954, baseType: !863, size: 32, offset: 1824)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !302, file: !259, line: 174, baseType: !308, size: 64, offset: 320)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !302, file: !259, line: 176, baseType: !2983, size: 64, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!141, !311, !186, !301, !935}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !290, file: !259, line: 90, baseType: !285, size: 64, offset: 192)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !290, file: !259, line: 91, baseType: !2988, size: 64, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !249, file: !174, line: 143, baseType: !2990, size: 64, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!2993, !186}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2995)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2996)
!2996 = !{!2997, !2998, !3002, !3006, !3014, !3018}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2995, file: !55, line: 40, baseType: !54, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2995, file: !55, line: 41, baseType: !2999, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!445}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2995, file: !55, line: 42, baseType: !3003, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!131}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2995, file: !55, line: 43, baseType: !3007, size: 64, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!3010, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2995, file: !55, line: 44, baseType: !3015, size: 64, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!3010}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2995, file: !55, line: 45, baseType: !423, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !249, file: !174, line: 144, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!3010, !186}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !249, file: !174, line: 145, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !186, !3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !173, file: !174, line: 70, baseType: !3030, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !574, line: 123, size: 1024, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3161, !3162, !3163, !3164, !3165}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3031, file: !574, line: 124, baseType: !702, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3031, file: !574, line: 125, baseType: !702, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3031, file: !574, line: 135, baseType: !3030, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3031, file: !574, line: 136, baseType: !177, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3031, file: !574, line: 138, baseType: !715, size: 192, align: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3031, file: !574, line: 140, baseType: !3010, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3031, file: !574, line: 141, baseType: !7, size: 32, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !574, line: 142, baseType: !3041, size: 256, offset: 512)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !574, line: 142, size: 256, elements: !3042)
!3042 = !{!3043, !3089, !3093}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3041, file: !574, line: 143, baseType: !3044, size: 192)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !574, line: 91, size: 192, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3044, file: !574, line: 92, baseType: !283, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3044, file: !574, line: 94, baseType: !711, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3044, file: !574, line: 100, baseType: !3049, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !574, line: 180, size: 704, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3061, !3062, !3063, !3087, !3088}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3050, file: !574, line: 182, baseType: !3030, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3050, file: !574, line: 183, baseType: !7, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3050, file: !574, line: 186, baseType: !3055, size: 192, offset: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3056, line: 19, size: 192, elements: !3057)
!3056 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3055, file: !3056, line: 20, baseType: !694, size: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3055, file: !3056, line: 21, baseType: !7, size: 32, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3055, file: !3056, line: 22, baseType: !7, size: 32, offset: 160)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3050, file: !574, line: 187, baseType: !148, size: 32, offset: 320)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3050, file: !574, line: 188, baseType: !148, size: 32, offset: 352)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3050, file: !574, line: 189, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !574, line: 168, size: 320, elements: !3066)
!3066 = !{!3067, !3071, !3075, !3079, !3083}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3065, file: !574, line: 169, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!141, !666, !3049}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3065, file: !574, line: 171, baseType: !3072, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!141, !3030, !177, !275}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3065, file: !574, line: 173, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!141, !3030}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3065, file: !574, line: 174, baseType: !3080, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!141, !3030, !3030, !177}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3065, file: !574, line: 176, baseType: !3084, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!141, !666, !3030, !3049}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3050, file: !574, line: 192, baseType: !180, size: 128, offset: 448)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3050, file: !574, line: 194, baseType: !1355, size: 128, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3041, file: !574, line: 144, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !574, line: 103, size: 64, elements: !3091)
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3090, file: !574, line: 104, baseType: !3030, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3041, file: !574, line: 145, baseType: !3094, size: 256)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !574, line: 107, size: 256, elements: !3095)
!3095 = !{!3096, !3156, !3159, !3160}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3094, file: !574, line: 108, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !574, line: 217, size: 768, elements: !3100)
!3100 = !{!3101, !3121, !3125, !3129, !3133, !3137, !3141, !3145, !3146, !3147, !3148, !3152}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3099, file: !574, line: 222, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!141, !3105}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !574, line: 197, size: 1088, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3106, file: !574, line: 199, baseType: !3030, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3106, file: !574, line: 200, baseType: !311, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3106, file: !574, line: 201, baseType: !666, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3106, file: !574, line: 202, baseType: !131, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3106, file: !574, line: 205, baseType: !1047, size: 192, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3106, file: !574, line: 206, baseType: !1047, size: 192, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3106, file: !574, line: 207, baseType: !141, size: 32, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3106, file: !574, line: 208, baseType: !180, size: 128, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3106, file: !574, line: 209, baseType: !234, size: 64, offset: 832)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3106, file: !574, line: 211, baseType: !280, size: 64, offset: 896)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3106, file: !574, line: 212, baseType: !445, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3106, file: !574, line: 213, baseType: !445, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3106, file: !574, line: 214, baseType: !963, size: 64, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3099, file: !574, line: 223, baseType: !3122, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null, !3105}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3099, file: !574, line: 236, baseType: !3126, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!141, !666, !131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3099, file: !574, line: 238, baseType: !3130, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!131, !666, !2673}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3099, file: !574, line: 239, baseType: !3134, size: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!131, !666, !131, !2673}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3099, file: !574, line: 240, baseType: !3138, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !666, !131}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3099, file: !574, line: 242, baseType: !3142, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!265, !3105, !234, !280, !486}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3099, file: !574, line: 252, baseType: !280, size: 64, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3099, file: !574, line: 259, baseType: !445, size: 8, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3099, file: !574, line: 260, baseType: !3142, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3099, file: !574, line: 263, baseType: !3149, size: 64, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!2702, !3105, !2703}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3099, file: !574, line: 266, baseType: !3153, size: 64, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!141, !3105, !935}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3094, file: !574, line: 109, baseType: !3157, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !574, line: 31, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3094, file: !574, line: 110, baseType: !486, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3094, file: !574, line: 111, baseType: !3030, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3031, file: !574, line: 148, baseType: !131, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3031, file: !574, line: 154, baseType: !376, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3031, file: !574, line: 156, baseType: !134, size: 16, offset: 896)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3031, file: !574, line: 157, baseType: !275, size: 16, offset: 912)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3031, file: !574, line: 158, baseType: !3166, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !574, line: 32, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !173, file: !174, line: 71, baseType: !3169, size: 32, offset: 448)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3170, line: 19, size: 32, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3171 = !{!3172}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3169, file: !3170, line: 20, baseType: !1104, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !173, file: !174, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !173, file: !174, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !173, file: !174, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !173, file: !174, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !173, file: !174, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !67, line: 463, baseType: !169, size: 64, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !170, file: !67, line: 465, baseType: !3180, size: 64, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !170, file: !67, line: 467, baseType: !177, size: 64, offset: 640)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !67, line: 468, baseType: !3184, size: 64, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3194, !3199, !3203}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3186, file: !67, line: 88, baseType: !177, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3186, file: !67, line: 89, baseType: !287, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3186, file: !67, line: 90, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!141, !169, !229}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3186, file: !67, line: 91, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!234, !169, !3198, !3027, !3028}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3186, file: !67, line: 93, baseType: !3200, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !169}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3186, file: !67, line: 95, baseType: !3204, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3207)
!3207 = !{!3208, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3206, file: !74, line: 279, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!141, !169}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3206, file: !74, line: 280, baseType: !3200, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3206, file: !74, line: 281, baseType: !3209, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3206, file: !74, line: 282, baseType: !3209, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3206, file: !74, line: 283, baseType: !3209, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3206, file: !74, line: 284, baseType: !3209, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3206, file: !74, line: 285, baseType: !3209, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3206, file: !74, line: 286, baseType: !3209, size: 64, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3206, file: !74, line: 287, baseType: !3209, size: 64, offset: 512)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3206, file: !74, line: 288, baseType: !3209, size: 64, offset: 576)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3206, file: !74, line: 289, baseType: !3209, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3206, file: !74, line: 290, baseType: !3209, size: 64, offset: 704)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3206, file: !74, line: 291, baseType: !3209, size: 64, offset: 768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3206, file: !74, line: 292, baseType: !3209, size: 64, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3206, file: !74, line: 293, baseType: !3209, size: 64, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3206, file: !74, line: 294, baseType: !3209, size: 64, offset: 960)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3206, file: !74, line: 295, baseType: !3209, size: 64, offset: 1024)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3206, file: !74, line: 296, baseType: !3209, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3206, file: !74, line: 297, baseType: !3209, size: 64, offset: 1152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3206, file: !74, line: 298, baseType: !3209, size: 64, offset: 1216)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3206, file: !74, line: 299, baseType: !3209, size: 64, offset: 1280)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3206, file: !74, line: 300, baseType: !3209, size: 64, offset: 1344)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3206, file: !74, line: 301, baseType: !3209, size: 64, offset: 1408)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !170, file: !67, line: 470, baseType: !3235, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3237, line: 82, size: 1408, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3320, !3323, !3324}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3236, file: !3237, line: 83, baseType: !177, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3236, file: !3237, line: 84, baseType: !177, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3236, file: !3237, line: 85, baseType: !169, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3236, file: !3237, line: 86, baseType: !287, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3236, file: !3237, line: 87, baseType: !287, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3236, file: !3237, line: 88, baseType: !287, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3236, file: !3237, line: 90, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!141, !169, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3271, !3284, !3285, !3286, !3287, !3288, !3296, !3297, !3298, !3299, !3300, !3301}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3250, file: !61, line: 96, baseType: !177, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3250, file: !61, line: 97, baseType: !3235, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3250, file: !61, line: 99, baseType: !126, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3250, file: !61, line: 100, baseType: !177, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3250, file: !61, line: 102, baseType: !445, size: 8, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3250, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3250, file: !61, line: 105, baseType: !3259, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3262, line: 262, size: 1600, elements: !3263)
!3262 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3263 = !{!3264, !3265, !3266, !3270}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3261, file: !3262, line: 263, baseType: !2497, size: 256)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3261, file: !3262, line: 264, baseType: !2497, size: 256, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3261, file: !3262, line: 265, baseType: !3267, size: 1024, offset: 512)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1024, elements: !3268)
!3268 = !{!3269}
!3269 = !DISubrange(count: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3261, file: !3262, line: 266, baseType: !3010, size: 64, offset: 1536)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3250, file: !61, line: 106, baseType: !3272, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3262, line: 210, size: 256, elements: !3275)
!3275 = !{!3276, !3280, !3282, !3283}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3274, file: !3262, line: 211, baseType: !3277, size: 72)
!3277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 72, elements: !3278)
!3278 = !{!3279}
!3279 = !DISubrange(count: 9)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3274, file: !3262, line: 212, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3262, line: 14, baseType: !283)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3274, file: !3262, line: 213, baseType: !150, size: 32, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3274, file: !3262, line: 214, baseType: !150, size: 32, offset: 224)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3250, file: !61, line: 108, baseType: !3209, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3250, file: !61, line: 109, baseType: !3200, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3250, file: !61, line: 110, baseType: !3209, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3250, file: !61, line: 111, baseType: !3200, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3250, file: !61, line: 112, baseType: !3289, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!141, !169, !3292}
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3294)
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3293, file: !74, line: 51, baseType: !141, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3250, file: !61, line: 113, baseType: !3209, size: 64, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3250, file: !61, line: 114, baseType: !287, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3250, file: !61, line: 115, baseType: !287, size: 64, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3250, file: !61, line: 117, baseType: !3204, size: 64, offset: 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3250, file: !61, line: 118, baseType: !3200, size: 64, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3250, file: !61, line: 120, baseType: !3302, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3236, file: !3237, line: 91, baseType: !3191, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3236, file: !3237, line: 92, baseType: !3209, size: 64, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3236, file: !3237, line: 93, baseType: !3200, size: 64, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3236, file: !3237, line: 94, baseType: !3209, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3236, file: !3237, line: 95, baseType: !3200, size: 64, offset: 704)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3236, file: !3237, line: 97, baseType: !3209, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3236, file: !3237, line: 98, baseType: !3209, size: 64, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3236, file: !3237, line: 100, baseType: !3289, size: 64, offset: 896)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3236, file: !3237, line: 101, baseType: !3209, size: 64, offset: 960)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3236, file: !3237, line: 103, baseType: !3209, size: 64, offset: 1024)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3236, file: !3237, line: 105, baseType: !3209, size: 64, offset: 1088)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3236, file: !3237, line: 107, baseType: !3204, size: 64, offset: 1152)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3236, file: !3237, line: 109, baseType: !3317, size: 64, offset: 1216)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3237, line: 109, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3236, file: !3237, line: 111, baseType: !3321, size: 64, offset: 1280)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3237, line: 111, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3236, file: !3237, line: 112, baseType: !600, offset: 1344)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3236, file: !3237, line: 114, baseType: !445, size: 8, offset: 1344)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !170, file: !67, line: 471, baseType: !3249, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !170, file: !67, line: 473, baseType: !131, size: 64, offset: 896)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !170, file: !67, line: 475, baseType: !131, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !67, line: 480, baseType: !1047, size: 192, offset: 1024)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !170, file: !67, line: 484, baseType: !3330, size: 576, offset: 1216)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3330, file: !67, line: 362, baseType: !180, size: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3330, file: !67, line: 363, baseType: !180, size: 128, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3330, file: !67, line: 364, baseType: !180, size: 128, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3330, file: !67, line: 365, baseType: !180, size: 128, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3330, file: !67, line: 366, baseType: !445, size: 8, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3330, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !170, file: !67, line: 485, baseType: !3339, size: 2304, offset: 1792)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3436, !3440}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3339, file: !74, line: 566, baseType: !3292, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3339, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3339, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3339, file: !74, line: 569, baseType: !445, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3339, file: !74, line: 570, baseType: !445, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3339, file: !74, line: 571, baseType: !445, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3339, file: !74, line: 572, baseType: !445, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3339, file: !74, line: 573, baseType: !445, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3339, file: !74, line: 574, baseType: !445, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3339, file: !74, line: 575, baseType: !445, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3339, file: !74, line: 576, baseType: !445, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3339, file: !74, line: 577, baseType: !148, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3339, file: !74, line: 578, baseType: !193, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3339, file: !74, line: 580, baseType: !180, size: 128, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3339, file: !74, line: 581, baseType: !1376, size: 192, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3339, file: !74, line: 582, baseType: !3357, size: 64, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3359, line: 43, size: 1472, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3368, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3358, file: !3359, line: 44, baseType: !177, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3358, file: !3359, line: 45, baseType: !141, size: 32, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3358, file: !3359, line: 46, baseType: !180, size: 128, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3358, file: !3359, line: 47, baseType: !193, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3358, file: !3359, line: 48, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3358, file: !3359, line: 49, baseType: !3369, size: 320, offset: 320)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3370, line: 11, size: 320, elements: !3371)
!3370 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3371 = !{!3372, !3373, !3374, !3379}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3369, file: !3370, line: 16, baseType: !594, size: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3369, file: !3370, line: 17, baseType: !283, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3369, file: !3370, line: 18, baseType: !3375, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3369, file: !3370, line: 19, baseType: !148, size: 32, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3358, file: !3359, line: 50, baseType: !283, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3358, file: !3359, line: 51, baseType: !1174, size: 64, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3358, file: !3359, line: 52, baseType: !1174, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3358, file: !3359, line: 53, baseType: !1174, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3358, file: !3359, line: 54, baseType: !1174, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3358, file: !3359, line: 55, baseType: !1174, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3358, file: !3359, line: 56, baseType: !283, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3358, file: !3359, line: 57, baseType: !283, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3358, file: !3359, line: 58, baseType: !283, size: 64, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3358, file: !3359, line: 59, baseType: !283, size: 64, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3358, file: !3359, line: 60, baseType: !283, size: 64, offset: 1280)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3358, file: !3359, line: 61, baseType: !169, size: 64, offset: 1344)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3358, file: !3359, line: 62, baseType: !445, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3358, file: !3359, line: 63, baseType: !445, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3339, file: !74, line: 583, baseType: !445, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3339, file: !74, line: 584, baseType: !445, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3339, file: !74, line: 585, baseType: !445, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3339, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3339, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3339, file: !74, line: 592, baseType: !1166, size: 512, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3339, file: !74, line: 593, baseType: !376, size: 64, offset: 1088)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3339, file: !74, line: 594, baseType: !1828, size: 256, offset: 1152)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3339, file: !74, line: 595, baseType: !1355, size: 128, offset: 1408)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3339, file: !74, line: 596, baseType: !3366, size: 64, offset: 1536)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3339, file: !74, line: 597, baseType: !702, size: 32, offset: 1600)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3339, file: !74, line: 598, baseType: !702, size: 32, offset: 1632)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3339, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3339, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3339, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3339, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3339, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3339, file: !74, line: 604, baseType: !445, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3339, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3339, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3339, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3339, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3339, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3339, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3339, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3339, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3339, file: !74, line: 613, baseType: !141, size: 32, offset: 1792)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3339, file: !74, line: 614, baseType: !141, size: 32, offset: 1824)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3339, file: !74, line: 615, baseType: !376, size: 64, offset: 1856)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3339, file: !74, line: 616, baseType: !376, size: 64, offset: 1920)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3339, file: !74, line: 617, baseType: !376, size: 64, offset: 1984)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3339, file: !74, line: 618, baseType: !376, size: 64, offset: 2048)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3339, file: !74, line: 620, baseType: !3427, size: 64, offset: 2112)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3428, file: !74, line: 537, baseType: !193)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3428, file: !74, line: 538, baseType: !7, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3428, file: !74, line: 540, baseType: !180, size: 128, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3428, file: !74, line: 543, baseType: !3434, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3339, file: !74, line: 621, baseType: !3437, size: 64, offset: 2176)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !169, !1318}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3339, file: !74, line: 622, baseType: !3441, size: 64, offset: 2240)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !170, file: !67, line: 486, baseType: !3444, size: 64, offset: 4096)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3453, !3454, !3455}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3445, file: !74, line: 643, baseType: !3206, size: 1472)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3445, file: !74, line: 644, baseType: !3209, size: 64, offset: 1472)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3445, file: !74, line: 645, baseType: !3450, size: 64, offset: 1536)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !169, !445}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3445, file: !74, line: 646, baseType: !3209, size: 64, offset: 1600)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3445, file: !74, line: 647, baseType: !3200, size: 64, offset: 1664)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3445, file: !74, line: 648, baseType: !3200, size: 64, offset: 1728)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !170, file: !67, line: 493, baseType: !3457, size: 64, offset: 4160)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !170, file: !67, line: 499, baseType: !180, size: 128, offset: 4224)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !170, file: !67, line: 502, baseType: !3461, size: 64, offset: 4352)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3463)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !170, file: !67, line: 504, baseType: !3465, size: 64, offset: 4416)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !170, file: !67, line: 505, baseType: !376, size: 64, offset: 4480)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !170, file: !67, line: 510, baseType: !376, size: 64, offset: 4544)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !170, file: !67, line: 511, baseType: !3469, size: 64, offset: 4608)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !170, file: !67, line: 513, baseType: !3473, size: 64, offset: 4672)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3474, file: !67, line: 293, baseType: !7, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3474, file: !67, line: 294, baseType: !283, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !170, file: !67, line: 515, baseType: !180, size: 128, offset: 4736)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !170, file: !67, line: 526, baseType: !3480, offset: 4864)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3481, line: 5, elements: !207)
!3481 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !170, file: !67, line: 528, baseType: !3483, size: 64, offset: 4864)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3485, line: 14, flags: DIFlagFwdDecl)
!3485 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !170, file: !67, line: 529, baseType: !3487, size: 64, offset: 4928)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3237, line: 22, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !170, file: !67, line: 534, baseType: !468, size: 32, offset: 4992)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !170, file: !67, line: 535, baseType: !148, size: 32, offset: 5024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !170, file: !67, line: 537, baseType: !193, offset: 5056)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !170, file: !67, line: 538, baseType: !180, size: 128, offset: 5056)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !170, file: !67, line: 540, baseType: !3494, size: 64, offset: 5184)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3496, line: 54, size: 960, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3508, !3512, !3513, !3514, !3515, !3519, !3523, !3524}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3495, file: !3496, line: 55, baseType: !177, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3495, file: !3496, line: 56, baseType: !126, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3495, file: !3496, line: 58, baseType: !287, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3495, file: !3496, line: 59, baseType: !287, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3495, file: !3496, line: 60, baseType: !186, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3495, file: !3496, line: 62, baseType: !3191, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3495, file: !3496, line: 63, baseType: !3505, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!234, !169, !3198}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3495, file: !3496, line: 65, baseType: !3509, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !3494}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3495, file: !3496, line: 66, baseType: !3200, size: 64, offset: 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3495, file: !3496, line: 68, baseType: !3209, size: 64, offset: 576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3495, file: !3496, line: 70, baseType: !2993, size: 64, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3495, file: !3496, line: 71, baseType: !3516, size: 64, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!3010, !169}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3495, file: !3496, line: 73, baseType: !3520, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !169, !3027, !3028}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3495, file: !3496, line: 75, baseType: !3204, size: 64, offset: 832)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3495, file: !3496, line: 77, baseType: !3321, size: 64, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !170, file: !67, line: 541, baseType: !287, size: 64, offset: 5248)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !170, file: !67, line: 543, baseType: !3200, size: 64, offset: 5312)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !170, file: !67, line: 544, baseType: !3528, size: 64, offset: 5376)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !170, file: !67, line: 545, baseType: !3531, size: 64, offset: 5440)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !170, file: !67, line: 547, baseType: !445, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !170, file: !67, line: 548, baseType: !445, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !170, file: !67, line: 549, baseType: !445, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !170, file: !67, line: 550, baseType: !445, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !166, file: !6, line: 426, baseType: !169, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !166, file: !6, line: 427, baseType: !141, size: 32, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !166, file: !6, line: 428, baseType: !177, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !166, file: !6, line: 429, baseType: !1226, size: 8, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !166, file: !6, line: 433, baseType: !1226, size: 8, offset: 264)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !166, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !166, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !166, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !166, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !166, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !166, file: !6, line: 444, baseType: !141, size: 32, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !166, file: !6, line: 446, baseType: !1047, size: 192, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !166, file: !6, line: 448, baseType: !3550, size: 128, offset: 576)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3551)
!3551 = !{!3552}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3550, file: !6, line: 418, baseType: !3553, size: 128)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !161)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !166, file: !6, line: 449, baseType: !137, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !166, file: !6, line: 450, baseType: !165, size: 64, offset: 768)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !166, file: !6, line: 452, baseType: !141, size: 32, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !166, file: !6, line: 459, baseType: !141, size: 32, offset: 864)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !166, file: !6, line: 460, baseType: !141, size: 32, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !166, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !138, file: !6, line: 647, baseType: !3561, size: 640, offset: 640)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3562)
!3562 = !{!3563, !3574, !3582, !3590, !3591, !3592, !3595, !3597, !3598, !3599}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3561, file: !6, line: 68, baseType: !3564, size: 72)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3564, file: !88, line: 408, baseType: !1227, size: 8)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3564, file: !88, line: 409, baseType: !1227, size: 8, offset: 8)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3564, file: !88, line: 411, baseType: !1227, size: 8, offset: 16)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3564, file: !88, line: 412, baseType: !1227, size: 8, offset: 24)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3564, file: !88, line: 413, baseType: !135, size: 16, offset: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3564, file: !88, line: 414, baseType: !1227, size: 8, offset: 48)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3564, file: !88, line: 418, baseType: !1227, size: 8, offset: 56)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3564, file: !88, line: 419, baseType: !1227, size: 8, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3561, file: !6, line: 69, baseType: !3575, size: 48, offset: 72)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3575, file: !88, line: 690, baseType: !1227, size: 8)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3575, file: !88, line: 691, baseType: !1227, size: 8, offset: 8)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3575, file: !88, line: 693, baseType: !1227, size: 8, offset: 16)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3575, file: !88, line: 694, baseType: !1227, size: 8, offset: 24)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3575, file: !88, line: 695, baseType: !135, size: 16, offset: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3561, file: !6, line: 70, baseType: !3583, size: 64, offset: 120)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3584)
!3584 = !{!3585, !3586, !3587, !3588}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3583, file: !88, line: 678, baseType: !1227, size: 8)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3583, file: !88, line: 679, baseType: !1227, size: 8, offset: 8)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3583, file: !88, line: 680, baseType: !135, size: 16, offset: 16)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3583, file: !88, line: 681, baseType: !3589, size: 32, offset: 32)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !136, line: 31, baseType: !150)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3561, file: !6, line: 71, baseType: !180, size: 128, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3561, file: !6, line: 72, baseType: !131, size: 64, offset: 320)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3561, file: !6, line: 73, baseType: !3593, size: 64, offset: 384)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3561, file: !6, line: 75, baseType: !3596, size: 64, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3561, file: !6, line: 76, baseType: !141, size: 32, offset: 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3561, file: !6, line: 77, baseType: !141, size: 32, offset: 544)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3561, file: !6, line: 78, baseType: !141, size: 32, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !138, file: !6, line: 649, baseType: !170, size: 5568, offset: 1280)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !138, file: !6, line: 651, baseType: !3602, size: 144, offset: 6848)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3602, file: !88, line: 290, baseType: !1227, size: 8)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3602, file: !88, line: 291, baseType: !1227, size: 8, offset: 8)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3602, file: !88, line: 293, baseType: !135, size: 16, offset: 16)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3602, file: !88, line: 294, baseType: !1227, size: 8, offset: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3602, file: !88, line: 295, baseType: !1227, size: 8, offset: 40)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3602, file: !88, line: 296, baseType: !1227, size: 8, offset: 48)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3602, file: !88, line: 297, baseType: !1227, size: 8, offset: 56)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3602, file: !88, line: 298, baseType: !135, size: 16, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3602, file: !88, line: 299, baseType: !135, size: 16, offset: 80)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3602, file: !88, line: 300, baseType: !135, size: 16, offset: 96)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3602, file: !88, line: 301, baseType: !1227, size: 8, offset: 112)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3602, file: !88, line: 302, baseType: !1227, size: 8, offset: 120)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3602, file: !88, line: 303, baseType: !1227, size: 8, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3602, file: !88, line: 304, baseType: !1227, size: 8, offset: 136)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !138, file: !6, line: 652, baseType: !3619, size: 64, offset: 7040)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3621)
!3621 = !{!3622, !3630, !3638, !3650, !3663, !3672}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3620, file: !6, line: 397, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3624, file: !88, line: 845, baseType: !1227, size: 8)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3624, file: !88, line: 846, baseType: !1227, size: 8, offset: 8)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3624, file: !88, line: 848, baseType: !135, size: 16, offset: 16)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3624, file: !88, line: 849, baseType: !1227, size: 8, offset: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3620, file: !6, line: 400, baseType: !3631, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3637}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3632, file: !88, line: 896, baseType: !1227, size: 8)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3632, file: !88, line: 897, baseType: !1227, size: 8, offset: 8)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3632, file: !88, line: 898, baseType: !1227, size: 8, offset: 16)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3632, file: !88, line: 899, baseType: !3589, size: 32, offset: 24)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3620, file: !6, line: 401, baseType: !3639, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3640, file: !88, line: 918, baseType: !1227, size: 8)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3640, file: !88, line: 919, baseType: !1227, size: 8, offset: 8)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3640, file: !88, line: 920, baseType: !1227, size: 8, offset: 16)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3640, file: !88, line: 921, baseType: !1227, size: 8, offset: 24)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3640, file: !88, line: 923, baseType: !135, size: 16, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3640, file: !88, line: 928, baseType: !1227, size: 8, offset: 48)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3640, file: !88, line: 929, baseType: !1227, size: 8, offset: 56)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3640, file: !88, line: 930, baseType: !135, size: 16, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3620, file: !6, line: 402, baseType: !3651, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3652, file: !88, line: 956, baseType: !1227, size: 8)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3652, file: !88, line: 957, baseType: !1227, size: 8, offset: 8)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3652, file: !88, line: 958, baseType: !1227, size: 8, offset: 16)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3652, file: !88, line: 959, baseType: !1227, size: 8, offset: 24)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3652, file: !88, line: 960, baseType: !3589, size: 32, offset: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3652, file: !88, line: 963, baseType: !135, size: 16, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3652, file: !88, line: 967, baseType: !135, size: 16, offset: 80)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3652, file: !88, line: 968, baseType: !3662, size: 32, offset: 96)
!3662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3589, size: 32, elements: !1245)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3620, file: !6, line: 403, baseType: !3664, size: 64, offset: 256)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3666)
!3666 = !{!3667, !3668, !3669, !3670, !3671}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3665, file: !88, line: 941, baseType: !1227, size: 8)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3665, file: !88, line: 942, baseType: !1227, size: 8, offset: 8)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3665, file: !88, line: 943, baseType: !1227, size: 8, offset: 16)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3665, file: !88, line: 944, baseType: !1227, size: 8, offset: 24)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3665, file: !88, line: 945, baseType: !2504, size: 128, offset: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3620, file: !6, line: 404, baseType: !3673, size: 64, offset: 320)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3674, file: !88, line: 1081, baseType: !1227, size: 8)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3674, file: !88, line: 1082, baseType: !1227, size: 8, offset: 8)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3674, file: !88, line: 1083, baseType: !1227, size: 8, offset: 16)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !138, file: !6, line: 653, baseType: !3680, size: 64, offset: 7104)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3682)
!3682 = !{!3683, !3694, !3695, !3708, !3750, !3759, !3760}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3681, file: !6, line: 375, baseType: !3684, size: 72)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3684, file: !88, line: 350, baseType: !1227, size: 8)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3684, file: !88, line: 351, baseType: !1227, size: 8, offset: 8)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3684, file: !88, line: 353, baseType: !135, size: 16, offset: 16)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3684, file: !88, line: 354, baseType: !1227, size: 8, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3684, file: !88, line: 355, baseType: !1227, size: 8, offset: 40)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3684, file: !88, line: 356, baseType: !1227, size: 8, offset: 48)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3684, file: !88, line: 357, baseType: !1227, size: 8, offset: 56)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3684, file: !88, line: 358, baseType: !1227, size: 8, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3681, file: !6, line: 377, baseType: !234, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3681, file: !6, line: 381, baseType: !3696, size: 1024, offset: 192)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3697, size: 1024, elements: !145)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3698, file: !88, line: 784, baseType: !1227, size: 8)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3698, file: !88, line: 785, baseType: !1227, size: 8, offset: 8)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3698, file: !88, line: 787, baseType: !1227, size: 8, offset: 16)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3698, file: !88, line: 788, baseType: !1227, size: 8, offset: 24)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3698, file: !88, line: 789, baseType: !1227, size: 8, offset: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3698, file: !88, line: 790, baseType: !1227, size: 8, offset: 40)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3698, file: !88, line: 791, baseType: !1227, size: 8, offset: 48)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3698, file: !88, line: 792, baseType: !1227, size: 8, offset: 56)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3681, file: !6, line: 385, baseType: !3709, size: 2048, offset: 1216)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3710, size: 2048, elements: !2088)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3712)
!3712 = !{!3713, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3711, file: !6, line: 235, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3716)
!3716 = !{!3717, !3729, !3730, !3731, !3733}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3715, file: !6, line: 83, baseType: !3718, size: 72)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3718, file: !88, line: 390, baseType: !1227, size: 8)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3718, file: !88, line: 391, baseType: !1227, size: 8, offset: 8)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3718, file: !88, line: 393, baseType: !1227, size: 8, offset: 16)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3718, file: !88, line: 394, baseType: !1227, size: 8, offset: 24)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3718, file: !88, line: 395, baseType: !1227, size: 8, offset: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3718, file: !88, line: 396, baseType: !1227, size: 8, offset: 40)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3718, file: !88, line: 397, baseType: !1227, size: 8, offset: 48)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3718, file: !88, line: 398, baseType: !1227, size: 8, offset: 56)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3718, file: !88, line: 399, baseType: !1227, size: 8, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3715, file: !6, line: 85, baseType: !141, size: 32, offset: 96)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3715, file: !6, line: 86, baseType: !3596, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3715, file: !6, line: 91, baseType: !3732, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3715, file: !6, line: 93, baseType: !234, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3711, file: !6, line: 237, baseType: !3714, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3711, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3711, file: !6, line: 243, baseType: !3697, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3711, file: !6, line: 245, baseType: !141, size: 32, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3711, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3711, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3711, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3711, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3711, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3711, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3711, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3711, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3711, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3711, file: !6, line: 257, baseType: !170, size: 5568, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3711, file: !6, line: 258, baseType: !169, size: 64, offset: 5952)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3711, file: !6, line: 259, baseType: !1828, size: 256, offset: 6016)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3681, file: !6, line: 389, baseType: !3751, size: 2048, offset: 3264)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3752, size: 2048, elements: !2088)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3754)
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3753, file: !6, line: 323, baseType: !7, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3753, file: !6, line: 324, baseType: !3169, size: 32, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3753, file: !6, line: 328, baseType: !3758, offset: 64)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3715, elements: !2189)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3681, file: !6, line: 391, baseType: !3596, size: 64, offset: 5312)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3681, file: !6, line: 392, baseType: !141, size: 32, offset: 5376)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !138, file: !6, line: 655, baseType: !3680, size: 64, offset: 7168)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !138, file: !6, line: 656, baseType: !3763, size: 1024, offset: 7232)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3732, size: 1024, elements: !145)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !138, file: !6, line: 657, baseType: !3763, size: 1024, offset: 8256)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !138, file: !6, line: 659, baseType: !3766, size: 64, offset: 9280)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !138, file: !6, line: 661, baseType: !134, size: 16, offset: 9344)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !138, file: !6, line: 662, baseType: !1226, size: 8, offset: 9360)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !138, file: !6, line: 663, baseType: !1226, size: 8, offset: 9368)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !138, file: !6, line: 664, baseType: !1226, size: 8, offset: 9376)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !138, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !138, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !138, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !138, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !138, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !138, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !138, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !138, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !138, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !138, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !138, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !138, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !138, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !138, file: !6, line: 679, baseType: !141, size: 32, offset: 9408)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !138, file: !6, line: 682, baseType: !234, size: 64, offset: 9472)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !138, file: !6, line: 683, baseType: !234, size: 64, offset: 9536)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !138, file: !6, line: 684, baseType: !234, size: 64, offset: 9600)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !138, file: !6, line: 686, baseType: !180, size: 128, offset: 9664)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !138, file: !6, line: 688, baseType: !141, size: 32, offset: 9792)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !138, file: !6, line: 690, baseType: !148, size: 32, offset: 9824)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !138, file: !6, line: 691, baseType: !702, size: 32, offset: 9856)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !138, file: !6, line: 693, baseType: !283, size: 64, offset: 9920)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !138, file: !6, line: 696, baseType: !283, size: 64, offset: 9984)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !138, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !138, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !138, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !138, file: !6, line: 702, baseType: !3798, size: 64, offset: 10112)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !138, file: !6, line: 703, baseType: !141, size: 32, offset: 10176)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !138, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !138, file: !6, line: 705, baseType: !3803, size: 64, offset: 10240)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3804)
!3804 = !{!3805, !3806}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3803, file: !6, line: 506, baseType: !7, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3803, file: !6, line: 512, baseType: !141, size: 32, offset: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !138, file: !6, line: 706, baseType: !3808, size: 128, offset: 10304)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3808, file: !6, line: 529, baseType: !7, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3808, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3808, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3808, file: !6, line: 551, baseType: !141, size: 32, offset: 96)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !138, file: !6, line: 707, baseType: !3808, size: 128, offset: 10432)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !138, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !138, file: !6, line: 710, baseType: !814, size: 16, offset: 10592)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !138, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_pcwd_private", file: !3, line: 114, size: 768, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3882, !3883, !3884, !3885, !3886, !3887}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3819, file: !3, line: 116, baseType: !137, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3819, file: !3, line: 118, baseType: !3710, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "interface_number", scope: !3819, file: !3, line: 121, baseType: !7, size: 32, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "intr_buffer", scope: !3819, file: !3, line: 124, baseType: !3596, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "intr_dma", scope: !3819, file: !3, line: 126, baseType: !874, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "intr_size", scope: !3819, file: !3, line: 128, baseType: !280, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "intr_urb", scope: !3819, file: !3, line: 130, baseType: !3828, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3874}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3829, file: !6, line: 1563, baseType: !3169, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !3829, file: !6, line: 1564, baseType: !141, size: 32, offset: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3829, file: !6, line: 1565, baseType: !131, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3829, file: !6, line: 1566, baseType: !702, size: 32, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !3829, file: !6, line: 1567, baseType: !702, size: 32, offset: 160)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3829, file: !6, line: 1570, baseType: !180, size: 128, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !3829, file: !6, line: 1572, baseType: !180, size: 128, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !3829, file: !6, line: 1573, baseType: !3839, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3840, file: !6, line: 1361, baseType: !180, size: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3840, file: !6, line: 1362, baseType: !1355, size: 128, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3840, file: !6, line: 1363, baseType: !193, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3840, file: !6, line: 1364, baseType: !702, size: 32, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3840, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3829, file: !6, line: 1574, baseType: !137, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3829, file: !6, line: 1575, baseType: !3732, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3829, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3829, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3829, file: !6, line: 1578, baseType: !141, size: 32, offset: 704)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !3829, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !3829, file: !6, line: 1580, baseType: !131, size: 64, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !3829, file: !6, line: 1581, baseType: !874, size: 64, offset: 832)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3829, file: !6, line: 1582, baseType: !3856, size: 64, offset: 896)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !3829, file: !6, line: 1583, baseType: !141, size: 32, offset: 960)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !3829, file: !6, line: 1584, baseType: !141, size: 32, offset: 992)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !3829, file: !6, line: 1585, baseType: !148, size: 32, offset: 1024)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3829, file: !6, line: 1586, baseType: !148, size: 32, offset: 1056)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !3829, file: !6, line: 1587, baseType: !3596, size: 64, offset: 1088)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !3829, file: !6, line: 1588, baseType: !874, size: 64, offset: 1152)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !3829, file: !6, line: 1589, baseType: !141, size: 32, offset: 1216)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !3829, file: !6, line: 1590, baseType: !141, size: 32, offset: 1248)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3829, file: !6, line: 1591, baseType: !141, size: 32, offset: 1280)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !3829, file: !6, line: 1593, baseType: !141, size: 32, offset: 1312)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3829, file: !6, line: 1594, baseType: !131, size: 64, offset: 1344)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3829, file: !6, line: 1595, baseType: !3870, size: 64, offset: 1408)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !3871)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{null, !3828}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !3829, file: !6, line: 1596, baseType: !3875, offset: 1472)
!3875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3876, elements: !2189)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3876, file: !6, line: 1352, baseType: !7, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3876, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3876, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3876, file: !6, line: 1355, baseType: !141, size: 32, offset: 96)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_command", scope: !3819, file: !3, line: 133, baseType: !382, size: 8, offset: 448)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_data_msb", scope: !3819, file: !3, line: 135, baseType: !382, size: 8, offset: 456)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_data_lsb", scope: !3819, file: !3, line: 137, baseType: !382, size: 8, offset: 464)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_received", scope: !3819, file: !3, line: 139, baseType: !702, size: 32, offset: 480)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "exists", scope: !3819, file: !3, line: 142, baseType: !141, size: 32, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !3819, file: !3, line: 144, baseType: !1047, size: 192, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!3895 = !{!0, !3896, !3901, !3906, !3911, !3963, !3966, !3971, !3973, !3975, !3980, !3982, !3987, !3992, !3994, !3999, !4001, !4062, !4065, !4067, !4069, !4073, !4086, !4100, !4102, !4104, !4106, !4108, !4119, !4121, !4123}
!3896 = !DIGlobalVariableExpression(var: !3897, expr: !DIExpression())
!3897 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description213", scope: !2, file: !3, line: 51, type: !3898, isLocal: true, isDefinition: true, align: 8)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 432, elements: !3899)
!3899 = !{!3900}
!3900 = !DISubrange(count: 54)
!3901 = !DIGlobalVariableExpression(var: !3902, expr: !DIExpression())
!3902 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file214", scope: !2, file: !3, line: 52, type: !3903, isLocal: true, isDefinition: true, align: 8)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 320, elements: !3904)
!3904 = !{!3905}
!3905 = !DISubrange(count: 40)
!3906 = !DIGlobalVariableExpression(var: !3907, expr: !DIExpression())
!3907 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license215", scope: !2, file: !3, line: 52, type: !3908, isLocal: true, isDefinition: true, align: 8)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 168, elements: !3909)
!3909 = !{!3910}
!3910 = !DISubrange(count: 21)
!3911 = !DIGlobalVariableExpression(var: !3912, expr: !DIExpression())
!3912 = distinct !DIGlobalVariable(name: "__param_heartbeat", scope: !2, file: !3, line: 57, type: !3913, isLocal: true, isDefinition: true, align: 64)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3914)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3915, line: 69, size: 320, elements: !3916)
!3915 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3916 = !{!3917, !3918, !3919, !3935, !3937, !3941, !3942}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3914, file: !3915, line: 70, baseType: !177, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3914, file: !3915, line: 71, baseType: !126, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3914, file: !3915, line: 72, baseType: !3920, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3922)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3915, line: 47, size: 256, elements: !3923)
!3923 = !{!3924, !3925, !3930, !3934}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3922, file: !3915, line: 49, baseType: !7, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3922, file: !3915, line: 51, baseType: !3926, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!141, !177, !3929}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3922, file: !3915, line: 53, baseType: !3931, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!141, !234, !3929}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3922, file: !3915, line: 55, baseType: !423, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3914, file: !3915, line: 73, baseType: !3936, size: 16, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3914, file: !3915, line: 74, baseType: !3938, size: 8, offset: 208)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !149, line: 16, baseType: !3939)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !133, line: 20, baseType: !3940)
!3940 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3914, file: !3915, line: 75, baseType: !1226, size: 8, offset: 216)
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3914, file: !3915, line: 76, baseType: !3943, size: 64, offset: 256)
!3943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3914, file: !3915, line: 76, size: 64, elements: !3944)
!3944 = !{!3945, !3946, !3953}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3943, file: !3915, line: 77, baseType: !131, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3943, file: !3915, line: 78, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3949)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3915, line: 86, size: 128, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3949, file: !3915, line: 87, baseType: !7, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3949, file: !3915, line: 88, baseType: !234, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3943, file: !3915, line: 79, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3956)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3915, line: 92, size: 256, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3956, file: !3915, line: 94, baseType: !7, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3956, file: !3915, line: 95, baseType: !7, size: 32, offset: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3956, file: !3915, line: 96, baseType: !2480, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3956, file: !3915, line: 97, baseType: !3920, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3956, file: !3915, line: 98, baseType: !131, size: 64, offset: 192)
!3963 = !DIGlobalVariableExpression(var: !3964, expr: !DIExpression())
!3964 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_heartbeattype216", scope: !2, file: !3, line: 57, type: !3965, isLocal: true, isDefinition: true, align: 8)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !2088)
!3966 = !DIGlobalVariableExpression(var: !3967, expr: !DIExpression())
!3967 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_heartbeat217", scope: !2, file: !3, line: 58, type: !3968, isLocal: true, isDefinition: true, align: 8)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 960, elements: !3969)
!3969 = !{!3970}
!3970 = !DISubrange(count: 120)
!3971 = !DIGlobalVariableExpression(var: !3972, expr: !DIExpression())
!3972 = distinct !DIGlobalVariable(name: "__param_nowayout", scope: !2, file: !3, line: 63, type: !3913, isLocal: true, isDefinition: true, align: 64)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nowayouttype218", scope: !2, file: !3, line: 63, type: !3965, isLocal: true, isDefinition: true, align: 8)
!3975 = !DIGlobalVariableExpression(var: !3976, expr: !DIExpression())
!3976 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_nowayout219", scope: !2, file: !3, line: 64, type: !3977, isLocal: true, isDefinition: true, align: 8)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 600, elements: !3978)
!3978 = !{!3979}
!3979 = !DISubrange(count: 75)
!3980 = !DIGlobalVariableExpression(var: !3981, expr: !DIExpression())
!3981 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_pcwd_driver_init220", scope: !2, file: !3, line: 805, type: !131, isLocal: true, isDefinition: true)
!3982 = !DIGlobalVariableExpression(var: !3983, expr: !DIExpression())
!3983 = distinct !DIGlobalVariable(name: "__exitcall_usb_pcwd_driver_exit", scope: !2, file: !3, line: 805, type: !3984, isLocal: true, isDefinition: true)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3985, line: 117, baseType: !3986)
!3985 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "__param_str_heartbeat", scope: !2, file: !3, line: 57, type: !3989, isLocal: true, isDefinition: true)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 152, elements: !3990)
!3990 = !{!3991}
!3991 = !DISubrange(count: 19)
!3992 = !DIGlobalVariableExpression(var: !3993, expr: !DIExpression())
!3993 = distinct !DIGlobalVariable(name: "heartbeat", scope: !2, file: !3, line: 56, type: !141, isLocal: true, isDefinition: true)
!3994 = !DIGlobalVariableExpression(var: !3995, expr: !DIExpression())
!3995 = distinct !DIGlobalVariable(name: "__param_str_nowayout", scope: !2, file: !3, line: 63, type: !3996, isLocal: true, isDefinition: true)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 144, elements: !3997)
!3997 = !{!3998}
!3998 = !DISubrange(count: 18)
!3999 = !DIGlobalVariableExpression(var: !4000, expr: !DIExpression())
!4000 = distinct !DIGlobalVariable(name: "nowayout", scope: !2, file: !3, line: 62, type: !445, isLocal: true, isDefinition: true)
!4001 = !DIGlobalVariableExpression(var: !4002, expr: !DIExpression())
!4002 = distinct !DIGlobalVariable(name: "usb_pcwd_driver", scope: !2, file: !3, line: 157, type: !4003, isLocal: true, isDefinition: true)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4004)
!4004 = !{!4005, !4006, !4027, !4031, !4035, !4039, !4043, !4044, !4045, !4046, !4047, !4048, !4053, !4058, !4059, !4060, !4061}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4003, file: !6, line: 1185, baseType: !177, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4003, file: !6, line: 1187, baseType: !4007, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!141, !3710, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4012)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3262, line: 121, size: 256, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4012, file: !3262, line: 123, baseType: !132, size: 16)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4012, file: !3262, line: 126, baseType: !132, size: 16, offset: 16)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4012, file: !3262, line: 127, baseType: !132, size: 16, offset: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4012, file: !3262, line: 128, baseType: !132, size: 16, offset: 48)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4012, file: !3262, line: 129, baseType: !132, size: 16, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4012, file: !3262, line: 132, baseType: !1227, size: 8, offset: 80)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4012, file: !3262, line: 133, baseType: !1227, size: 8, offset: 88)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4012, file: !3262, line: 134, baseType: !1227, size: 8, offset: 96)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4012, file: !3262, line: 137, baseType: !1227, size: 8, offset: 104)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4012, file: !3262, line: 138, baseType: !1227, size: 8, offset: 112)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4012, file: !3262, line: 139, baseType: !1227, size: 8, offset: 120)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4012, file: !3262, line: 142, baseType: !1227, size: 8, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4012, file: !3262, line: 145, baseType: !3281, size: 64, align: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4003, file: !6, line: 1190, baseType: !4028, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3710}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4003, file: !6, line: 1192, baseType: !4032, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!141, !3710, !7, !131}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4003, file: !6, line: 1195, baseType: !4036, size: 64, offset: 256)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!141, !3710, !3292}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4003, file: !6, line: 1196, baseType: !4040, size: 64, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!141, !3710}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4003, file: !6, line: 1197, baseType: !4040, size: 64, offset: 384)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4003, file: !6, line: 1199, baseType: !4040, size: 64, offset: 448)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4003, file: !6, line: 1200, baseType: !4040, size: 64, offset: 512)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4003, file: !6, line: 1202, baseType: !4010, size: 64, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4003, file: !6, line: 1203, baseType: !287, size: 64, offset: 640)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4003, file: !6, line: 1205, baseType: !4049, size: 128, offset: 704)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4050)
!4050 = !{!4051, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4049, file: !6, line: 1092, baseType: !193)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4049, file: !6, line: 1093, baseType: !180, size: 128)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4003, file: !6, line: 1206, baseType: !4054, size: 1216, offset: 832)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4054, file: !6, line: 1114, baseType: !3250, size: 1152)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4054, file: !6, line: 1115, baseType: !141, size: 32, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4003, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4003, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4003, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4003, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4062 = !DIGlobalVariableExpression(var: !4063, expr: !DIExpression())
!4063 = distinct !DIGlobalVariable(name: "__key", scope: !4064, file: !3, line: 650, type: !600, isLocal: true, isDefinition: true)
!4064 = distinct !DISubprogram(name: "usb_pcwd_probe", scope: !3, file: !3, line: 599, type: !4008, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4065 = !DIGlobalVariableExpression(var: !4066, expr: !DIExpression())
!4066 = distinct !DIGlobalVariable(name: "cards_found", scope: !2, file: !3, line: 107, type: !141, isLocal: true, isDefinition: true)
!4067 = !DIGlobalVariableExpression(var: !4068, expr: !DIExpression())
!4068 = distinct !DIGlobalVariable(name: "usb_pcwd_device", scope: !2, file: !3, line: 146, type: !3818, isLocal: true, isDefinition: true)
!4069 = !DIGlobalVariableExpression(var: !4070, expr: !DIExpression())
!4070 = distinct !DIGlobalVariable(name: "heartbeat_tbl", scope: !2, file: !3, line: 95, type: !4071, isLocal: true, isDefinition: true)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4072, size: 256, elements: !1204)
!4072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!4073 = !DIGlobalVariableExpression(var: !4074, expr: !DIExpression())
!4074 = distinct !DIGlobalVariable(name: "usb_pcwd_notifier", scope: !2, file: !3, line: 578, type: !4075, isLocal: true, isDefinition: true)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4076, line: 54, size: 192, elements: !4077)
!4076 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4077 = !{!4078, !4084, !4085}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4075, file: !4076, line: 55, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4076, line: 51, baseType: !4080)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!141, !4083, !283, !131}
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4075, file: !4076, line: 56, baseType: !4083, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4075, file: !4076, line: 57, baseType: !141, size: 32, offset: 128)
!4086 = !DIGlobalVariableExpression(var: !4087, expr: !DIExpression())
!4087 = distinct !DIGlobalVariable(name: "usb_pcwd_temperature_miscdev", scope: !2, file: !3, line: 572, type: !4088, isLocal: true, isDefinition: true)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !4089, line: 79, size: 640, elements: !4090)
!4089 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4088, file: !4089, line: 80, baseType: !141, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4088, file: !4089, line: 81, baseType: !177, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4088, file: !4089, line: 82, baseType: !2660, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4088, file: !4089, line: 83, baseType: !180, size: 128, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4088, file: !4089, line: 84, baseType: !169, size: 64, offset: 320)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !4088, file: !4089, line: 85, baseType: !169, size: 64, offset: 384)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4088, file: !4089, line: 86, baseType: !287, size: 64, offset: 448)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4088, file: !4089, line: 87, baseType: !177, size: 64, offset: 512)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4088, file: !4089, line: 88, baseType: !275, size: 16, offset: 576)
!4100 = !DIGlobalVariableExpression(var: !4101, expr: !DIExpression())
!4101 = distinct !DIGlobalVariable(name: "usb_pcwd_temperature_fops", scope: !2, file: !3, line: 564, type: !2661, isLocal: true, isDefinition: true)
!4102 = !DIGlobalVariableExpression(var: !4103, expr: !DIExpression())
!4103 = distinct !DIGlobalVariable(name: "usb_pcwd_miscdev", scope: !2, file: !3, line: 558, type: !4088, isLocal: true, isDefinition: true)
!4104 = !DIGlobalVariableExpression(var: !4105, expr: !DIExpression())
!4105 = distinct !DIGlobalVariable(name: "usb_pcwd_fops", scope: !2, file: !3, line: 548, type: !2661, isLocal: true, isDefinition: true)
!4106 = !DIGlobalVariableExpression(var: !4107, expr: !DIExpression())
!4107 = distinct !DIGlobalVariable(name: "expect_release", scope: !2, file: !3, line: 111, type: !144, isLocal: true, isDefinition: true)
!4108 = !DIGlobalVariableExpression(var: !4109, expr: !DIExpression())
!4109 = distinct !DIGlobalVariable(name: "ident", scope: !4110, file: !3, line: 393, type: !4111, isLocal: true, isDefinition: true)
!4110 = distinct !DISubprogram(name: "usb_pcwd_ioctl", scope: !3, file: !3, line: 388, type: !2707, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4112)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_info", file: !4113, line: 18, size: 320, elements: !4114)
!4113 = !DIFile(filename: "./include/uapi/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!4114 = !{!4115, !4116, !4117}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4112, file: !4113, line: 19, baseType: !150, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_version", scope: !4112, file: !4113, line: 20, baseType: !150, size: 32, offset: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "identity", scope: !4112, file: !4113, line: 21, baseType: !4118, size: 256, offset: 64)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 256, elements: !2088)
!4119 = !DIGlobalVariableExpression(var: !4120, expr: !DIExpression())
!4120 = distinct !DIGlobalVariable(name: "is_active", scope: !2, file: !3, line: 110, type: !283, isLocal: true, isDefinition: true)
!4121 = !DIGlobalVariableExpression(var: !4122, expr: !DIExpression())
!4122 = distinct !DIGlobalVariable(name: "disconnect_mutex", scope: !2, file: !3, line: 149, type: !1047, isLocal: true, isDefinition: true)
!4123 = !DIGlobalVariableExpression(var: !4124, expr: !DIExpression())
!4124 = distinct !DIGlobalVariable(name: "usb_pcwd_table", scope: !2, file: !3, line: 72, type: !4125, isLocal: true, isDefinition: true)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4011, size: 512, elements: !161)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 392, elements: !4127)
!4127 = !{!4128}
!4128 = !DISubrange(count: 49)
!4129 = !{!"rsp"}
!4130 = !{i32 7, !"Dwarf Version", i32 4}
!4131 = !{i32 2, !"Debug Info Version", i32 3}
!4132 = !{i32 1, !"wchar_size", i32 2}
!4133 = !{i32 1, !"Code Model", i32 2}
!4134 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4135 = distinct !DISubprogram(name: "usb_pcwd_driver_init", scope: !3, file: !3, line: 805, type: !4136, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!141}
!4138 = !DILocation(line: 805, column: 1, scope: !4135)
!4139 = distinct !DISubprogram(name: "usb_pcwd_driver_exit", scope: !3, file: !3, line: 805, type: !1749, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4140 = !DILocation(line: 805, column: 1, scope: !4139)
!4141 = !DILocalVariable(name: "interface", arg: 1, scope: !4064, file: !3, line: 599, type: !3710)
!4142 = !DILocation(line: 599, column: 49, scope: !4064)
!4143 = !DILocalVariable(name: "id", arg: 2, scope: !4064, file: !3, line: 600, type: !4010)
!4144 = !DILocation(line: 600, column: 35, scope: !4064)
!4145 = !DILocalVariable(name: "udev", scope: !4064, file: !3, line: 602, type: !137)
!4146 = !DILocation(line: 602, column: 21, scope: !4064)
!4147 = !DILocation(line: 602, column: 48, scope: !4064)
!4148 = !DILocation(line: 602, column: 28, scope: !4064)
!4149 = !DILocalVariable(name: "iface_desc", scope: !4064, file: !3, line: 603, type: !3714)
!4150 = !DILocation(line: 603, column: 29, scope: !4064)
!4151 = !DILocalVariable(name: "endpoint", scope: !4064, file: !3, line: 604, type: !4152)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!4153 = !DILocation(line: 604, column: 34, scope: !4064)
!4154 = !DILocalVariable(name: "usb_pcwd", scope: !4064, file: !3, line: 605, type: !3818)
!4155 = !DILocation(line: 605, column: 27, scope: !4064)
!4156 = !DILocalVariable(name: "pipe", scope: !4064, file: !3, line: 606, type: !141)
!4157 = !DILocation(line: 606, column: 6, scope: !4064)
!4158 = !DILocalVariable(name: "retval", scope: !4064, file: !3, line: 607, type: !141)
!4159 = !DILocation(line: 607, column: 6, scope: !4064)
!4160 = !DILocalVariable(name: "got_fw_rev", scope: !4064, file: !3, line: 608, type: !141)
!4161 = !DILocation(line: 608, column: 6, scope: !4064)
!4162 = !DILocalVariable(name: "fw_rev_major", scope: !4064, file: !3, line: 609, type: !382)
!4163 = !DILocation(line: 609, column: 16, scope: !4064)
!4164 = !DILocalVariable(name: "fw_rev_minor", scope: !4064, file: !3, line: 609, type: !382)
!4165 = !DILocation(line: 609, column: 30, scope: !4064)
!4166 = !DILocalVariable(name: "fw_ver_str", scope: !4064, file: !3, line: 610, type: !4167)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 160, elements: !2059)
!4168 = !DILocation(line: 610, column: 7, scope: !4064)
!4169 = !DILocalVariable(name: "option_switches", scope: !4064, file: !3, line: 611, type: !382)
!4170 = !DILocation(line: 611, column: 16, scope: !4064)
!4171 = !DILocalVariable(name: "dummy", scope: !4064, file: !3, line: 611, type: !382)
!4172 = !DILocation(line: 611, column: 33, scope: !4064)
!4173 = !DILocation(line: 613, column: 13, scope: !4064)
!4174 = !DILocation(line: 614, column: 6, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 614, column: 6)
!4176 = !DILocation(line: 614, column: 18, scope: !4175)
!4177 = !DILocation(line: 614, column: 6, scope: !4064)
!4178 = !DILocation(line: 615, column: 3, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 614, column: 23)
!4180 = !DILocation(line: 616, column: 3, scope: !4179)
!4181 = !DILocation(line: 620, column: 15, scope: !4064)
!4182 = !DILocation(line: 620, column: 26, scope: !4064)
!4183 = !DILocation(line: 620, column: 13, scope: !4064)
!4184 = !DILocation(line: 623, column: 8, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 623, column: 6)
!4186 = !DILocation(line: 623, column: 20, scope: !4185)
!4187 = !DILocation(line: 623, column: 25, scope: !4185)
!4188 = !DILocation(line: 623, column: 41, scope: !4185)
!4189 = !DILocation(line: 623, column: 6, scope: !4064)
!4190 = !DILocation(line: 624, column: 3, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 623, column: 60)
!4192 = !DILocation(line: 625, column: 3, scope: !4191)
!4193 = !DILocation(line: 628, column: 6, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 628, column: 6)
!4195 = !DILocation(line: 628, column: 18, scope: !4194)
!4196 = !DILocation(line: 628, column: 23, scope: !4194)
!4197 = !DILocation(line: 628, column: 37, scope: !4194)
!4198 = !DILocation(line: 628, column: 6, scope: !4064)
!4199 = !DILocation(line: 629, column: 3, scope: !4194)
!4200 = !DILocation(line: 632, column: 14, scope: !4064)
!4201 = !DILocation(line: 632, column: 26, scope: !4064)
!4202 = !DILocation(line: 632, column: 38, scope: !4064)
!4203 = !DILocation(line: 632, column: 11, scope: !4064)
!4204 = !DILocation(line: 634, column: 30, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 634, column: 6)
!4206 = !DILocation(line: 634, column: 7, scope: !4205)
!4207 = !DILocation(line: 634, column: 6, scope: !4064)
!4208 = !DILocation(line: 636, column: 3, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 634, column: 41)
!4210 = !DILocation(line: 637, column: 3, scope: !4209)
!4211 = !DILocation(line: 641, column: 9, scope: !4064)
!4212 = !DILocation(line: 641, column: 7, scope: !4064)
!4213 = !DILocation(line: 644, column: 13, scope: !4064)
!4214 = !DILocation(line: 644, column: 11, scope: !4064)
!4215 = !DILocation(line: 645, column: 6, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 645, column: 6)
!4217 = !DILocation(line: 645, column: 15, scope: !4216)
!4218 = !DILocation(line: 645, column: 6, scope: !4064)
!4219 = !DILocation(line: 646, column: 3, scope: !4216)
!4220 = !DILocation(line: 648, column: 20, scope: !4064)
!4221 = !DILocation(line: 648, column: 18, scope: !4064)
!4222 = !DILocation(line: 650, column: 2, scope: !4064)
!4223 = !DILocation(line: 650, column: 2, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 650, column: 2)
!4225 = !DILocation(line: 651, column: 19, scope: !4064)
!4226 = !DILocation(line: 651, column: 2, scope: !4064)
!4227 = !DILocation(line: 651, column: 12, scope: !4064)
!4228 = !DILocation(line: 651, column: 17, scope: !4064)
!4229 = !DILocation(line: 652, column: 24, scope: !4064)
!4230 = !DILocation(line: 652, column: 2, scope: !4064)
!4231 = !DILocation(line: 652, column: 12, scope: !4064)
!4232 = !DILocation(line: 652, column: 22, scope: !4064)
!4233 = !DILocation(line: 653, column: 31, scope: !4064)
!4234 = !DILocation(line: 653, column: 43, scope: !4064)
!4235 = !DILocation(line: 653, column: 48, scope: !4064)
!4236 = !DILocation(line: 653, column: 2, scope: !4064)
!4237 = !DILocation(line: 653, column: 12, scope: !4064)
!4238 = !DILocation(line: 653, column: 29, scope: !4064)
!4239 = !DILocation(line: 654, column: 25, scope: !4064)
!4240 = !DILocation(line: 654, column: 63, scope: !4064)
!4241 = !DILocation(line: 655, column: 5, scope: !4064)
!4242 = !DILocation(line: 654, column: 24, scope: !4064)
!4243 = !DILocation(line: 654, column: 2, scope: !4064)
!4244 = !DILocation(line: 654, column: 12, scope: !4064)
!4245 = !DILocation(line: 654, column: 22, scope: !4064)
!4246 = !DILocation(line: 658, column: 45, scope: !4064)
!4247 = !DILocation(line: 658, column: 51, scope: !4064)
!4248 = !DILocation(line: 658, column: 61, scope: !4064)
!4249 = !DILocation(line: 659, column: 19, scope: !4064)
!4250 = !DILocation(line: 659, column: 29, scope: !4064)
!4251 = !DILocation(line: 658, column: 26, scope: !4064)
!4252 = !DILocation(line: 658, column: 2, scope: !4064)
!4253 = !DILocation(line: 658, column: 12, scope: !4064)
!4254 = !DILocation(line: 658, column: 24, scope: !4064)
!4255 = !DILocation(line: 660, column: 7, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 660, column: 6)
!4257 = !DILocation(line: 660, column: 17, scope: !4256)
!4258 = !DILocation(line: 660, column: 6, scope: !4064)
!4259 = !DILocation(line: 661, column: 3, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 660, column: 30)
!4261 = !DILocation(line: 662, column: 3, scope: !4260)
!4262 = !DILocation(line: 666, column: 23, scope: !4064)
!4263 = !DILocation(line: 666, column: 2, scope: !4064)
!4264 = !DILocation(line: 666, column: 12, scope: !4064)
!4265 = !DILocation(line: 666, column: 21, scope: !4064)
!4266 = !DILocation(line: 667, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 667, column: 6)
!4268 = !DILocation(line: 667, column: 17, scope: !4267)
!4269 = !DILocation(line: 667, column: 6, scope: !4064)
!4270 = !DILocation(line: 668, column: 3, scope: !4267)
!4271 = !DILocation(line: 671, column: 19, scope: !4064)
!4272 = !DILocation(line: 671, column: 29, scope: !4064)
!4273 = !DILocation(line: 671, column: 39, scope: !4064)
!4274 = !DILocation(line: 671, column: 45, scope: !4064)
!4275 = !DILocation(line: 672, column: 4, scope: !4064)
!4276 = !DILocation(line: 672, column: 14, scope: !4064)
!4277 = !DILocation(line: 672, column: 27, scope: !4064)
!4278 = !DILocation(line: 672, column: 37, scope: !4064)
!4279 = !DILocation(line: 673, column: 24, scope: !4064)
!4280 = !DILocation(line: 673, column: 34, scope: !4064)
!4281 = !DILocation(line: 673, column: 44, scope: !4064)
!4282 = !DILocation(line: 671, column: 2, scope: !4064)
!4283 = !DILocation(line: 674, column: 37, scope: !4064)
!4284 = !DILocation(line: 674, column: 47, scope: !4064)
!4285 = !DILocation(line: 674, column: 2, scope: !4064)
!4286 = !DILocation(line: 674, column: 12, scope: !4064)
!4287 = !DILocation(line: 674, column: 22, scope: !4064)
!4288 = !DILocation(line: 674, column: 35, scope: !4064)
!4289 = !DILocation(line: 675, column: 2, scope: !4064)
!4290 = !DILocation(line: 675, column: 12, scope: !4064)
!4291 = !DILocation(line: 675, column: 22, scope: !4064)
!4292 = !DILocation(line: 675, column: 37, scope: !4064)
!4293 = !DILocation(line: 678, column: 21, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 678, column: 6)
!4295 = !DILocation(line: 678, column: 31, scope: !4294)
!4296 = !DILocation(line: 678, column: 6, scope: !4294)
!4297 = !DILocation(line: 678, column: 6, scope: !4064)
!4298 = !DILocation(line: 679, column: 3, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 678, column: 54)
!4300 = !DILocation(line: 680, column: 10, scope: !4299)
!4301 = !DILocation(line: 681, column: 3, scope: !4299)
!4302 = !DILocation(line: 685, column: 2, scope: !4064)
!4303 = !DILocation(line: 685, column: 12, scope: !4064)
!4304 = !DILocation(line: 685, column: 19, scope: !4064)
!4305 = !DILocation(line: 688, column: 16, scope: !4064)
!4306 = !DILocation(line: 688, column: 2, scope: !4064)
!4307 = !DILocation(line: 691, column: 37, scope: !4064)
!4308 = !DILocation(line: 691, column: 15, scope: !4064)
!4309 = !DILocation(line: 691, column: 13, scope: !4064)
!4310 = !DILocation(line: 693, column: 6, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 693, column: 6)
!4312 = !DILocation(line: 693, column: 6, scope: !4064)
!4313 = !DILocation(line: 694, column: 11, scope: !4311)
!4314 = !DILocation(line: 694, column: 34, scope: !4311)
!4315 = !DILocation(line: 694, column: 48, scope: !4311)
!4316 = !DILocation(line: 694, column: 3, scope: !4311)
!4317 = !DILocation(line: 696, column: 11, scope: !4311)
!4318 = !DILocation(line: 696, column: 3, scope: !4311)
!4319 = !DILocation(line: 698, column: 2, scope: !4064)
!4320 = !DILocation(line: 701, column: 24, scope: !4064)
!4321 = !DILocation(line: 701, column: 2, scope: !4064)
!4322 = !DILocation(line: 704, column: 2, scope: !4064)
!4323 = !DILocation(line: 710, column: 6, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 710, column: 6)
!4325 = !DILocation(line: 710, column: 16, scope: !4324)
!4326 = !DILocation(line: 710, column: 6, scope: !4064)
!4327 = !DILocation(line: 711, column: 30, scope: !4324)
!4328 = !DILocation(line: 711, column: 46, scope: !4324)
!4329 = !DILocation(line: 711, column: 15, scope: !4324)
!4330 = !DILocation(line: 711, column: 13, scope: !4324)
!4331 = !DILocation(line: 711, column: 3, scope: !4324)
!4332 = !DILocation(line: 715, column: 29, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 715, column: 6)
!4334 = !DILocation(line: 715, column: 39, scope: !4333)
!4335 = !DILocation(line: 715, column: 6, scope: !4333)
!4336 = !DILocation(line: 715, column: 6, scope: !4064)
!4337 = !DILocation(line: 716, column: 26, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 715, column: 51)
!4339 = !DILocation(line: 716, column: 3, scope: !4338)
!4340 = !DILocation(line: 717, column: 3, scope: !4338)
!4341 = !DILocation(line: 719, column: 2, scope: !4338)
!4342 = !DILocation(line: 721, column: 11, scope: !4064)
!4343 = !DILocation(line: 721, column: 9, scope: !4064)
!4344 = !DILocation(line: 722, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 722, column: 6)
!4346 = !DILocation(line: 722, column: 13, scope: !4345)
!4347 = !DILocation(line: 722, column: 6, scope: !4064)
!4348 = !DILocation(line: 723, column: 3, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 722, column: 19)
!4350 = !DILocation(line: 724, column: 3, scope: !4349)
!4351 = !DILocation(line: 727, column: 11, scope: !4064)
!4352 = !DILocation(line: 727, column: 9, scope: !4064)
!4353 = !DILocation(line: 728, column: 6, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 728, column: 6)
!4355 = !DILocation(line: 728, column: 13, scope: !4354)
!4356 = !DILocation(line: 728, column: 6, scope: !4064)
!4357 = !DILocation(line: 729, column: 3, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 728, column: 19)
!4359 = !DILocation(line: 731, column: 3, scope: !4358)
!4360 = !DILocation(line: 734, column: 11, scope: !4064)
!4361 = !DILocation(line: 734, column: 9, scope: !4064)
!4362 = !DILocation(line: 735, column: 6, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 735, column: 6)
!4364 = !DILocation(line: 735, column: 13, scope: !4363)
!4365 = !DILocation(line: 735, column: 6, scope: !4064)
!4366 = !DILocation(line: 736, column: 3, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 735, column: 19)
!4368 = !DILocation(line: 738, column: 3, scope: !4367)
!4369 = !DILocation(line: 742, column: 19, scope: !4064)
!4370 = !DILocation(line: 742, column: 30, scope: !4064)
!4371 = !DILocation(line: 742, column: 2, scope: !4064)
!4372 = !DILocation(line: 744, column: 2, scope: !4064)
!4373 = !DILocation(line: 747, column: 2, scope: !4064)
!4374 = !DILabel(scope: !4064, name: "err_out_misc_deregister", file: !3, line: 749)
!4375 = !DILocation(line: 749, column: 1, scope: !4064)
!4376 = !DILocation(line: 750, column: 2, scope: !4064)
!4377 = !DILabel(scope: !4064, name: "err_out_unregister_reboot", file: !3, line: 751)
!4378 = !DILocation(line: 751, column: 1, scope: !4064)
!4379 = !DILocation(line: 752, column: 2, scope: !4064)
!4380 = !DILabel(scope: !4064, name: "error", file: !3, line: 753)
!4381 = !DILocation(line: 753, column: 1, scope: !4064)
!4382 = !DILocation(line: 754, column: 6, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 754, column: 6)
!4384 = !DILocation(line: 754, column: 6, scope: !4064)
!4385 = !DILocation(line: 755, column: 19, scope: !4383)
!4386 = !DILocation(line: 755, column: 3, scope: !4383)
!4387 = !DILocation(line: 756, column: 18, scope: !4064)
!4388 = !DILocation(line: 757, column: 9, scope: !4064)
!4389 = !DILocation(line: 757, column: 2, scope: !4064)
!4390 = !DILocation(line: 758, column: 1, scope: !4064)
!4391 = distinct !DISubprogram(name: "usb_pcwd_disconnect", scope: !3, file: !3, line: 769, type: !4029, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4392 = !DILocalVariable(name: "interface", arg: 1, scope: !4391, file: !3, line: 769, type: !3710)
!4393 = !DILocation(line: 769, column: 55, scope: !4391)
!4394 = !DILocalVariable(name: "usb_pcwd", scope: !4391, file: !3, line: 771, type: !3818)
!4395 = !DILocation(line: 771, column: 27, scope: !4391)
!4396 = !DILocation(line: 774, column: 2, scope: !4391)
!4397 = !DILocation(line: 776, column: 30, scope: !4391)
!4398 = !DILocation(line: 776, column: 13, scope: !4391)
!4399 = !DILocation(line: 776, column: 11, scope: !4391)
!4400 = !DILocation(line: 777, column: 19, scope: !4391)
!4401 = !DILocation(line: 777, column: 2, scope: !4391)
!4402 = !DILocation(line: 779, column: 14, scope: !4391)
!4403 = !DILocation(line: 779, column: 24, scope: !4391)
!4404 = !DILocation(line: 779, column: 2, scope: !4391)
!4405 = !DILocation(line: 782, column: 7, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 782, column: 6)
!4407 = !DILocation(line: 782, column: 6, scope: !4391)
!4408 = !DILocation(line: 783, column: 17, scope: !4406)
!4409 = !DILocation(line: 783, column: 3, scope: !4406)
!4410 = !DILocation(line: 786, column: 2, scope: !4391)
!4411 = !DILocation(line: 786, column: 12, scope: !4391)
!4412 = !DILocation(line: 786, column: 19, scope: !4391)
!4413 = !DILocation(line: 789, column: 2, scope: !4391)
!4414 = !DILocation(line: 790, column: 2, scope: !4391)
!4415 = !DILocation(line: 791, column: 2, scope: !4391)
!4416 = !DILocation(line: 793, column: 16, scope: !4391)
!4417 = !DILocation(line: 793, column: 26, scope: !4391)
!4418 = !DILocation(line: 793, column: 2, scope: !4391)
!4419 = !DILocation(line: 796, column: 18, scope: !4391)
!4420 = !DILocation(line: 796, column: 2, scope: !4391)
!4421 = !DILocation(line: 798, column: 13, scope: !4391)
!4422 = !DILocation(line: 800, column: 2, scope: !4391)
!4423 = !DILocation(line: 802, column: 2, scope: !4391)
!4424 = !DILocation(line: 803, column: 1, scope: !4391)
!4425 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4426, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!137, !3710}
!4428 = !DILocalVariable(name: "intf", arg: 1, scope: !4425, file: !6, line: 715, type: !3710)
!4429 = !DILocation(line: 715, column: 76, scope: !4425)
!4430 = !DILocalVariable(name: "__mptr", scope: !4431, file: !6, line: 717, type: !131)
!4431 = distinct !DILexicalBlock(scope: !4425, file: !6, line: 717, column: 9)
!4432 = !DILocation(line: 717, column: 9, scope: !4431)
!4433 = !DILocation(line: 717, column: 9, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4431, file: !6, line: 717, column: 9)
!4435 = !DILocation(line: 717, column: 2, scope: !4425)
!4436 = distinct !DISubprogram(name: "usb_endpoint_is_int_in", scope: !88, file: !88, line: 596, type: !4437, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!141, !4439}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!4441 = !DILocalVariable(name: "epd", arg: 1, scope: !4436, file: !88, line: 597, type: !4439)
!4442 = !DILocation(line: 597, column: 43, scope: !4436)
!4443 = !DILocation(line: 599, column: 31, scope: !4436)
!4444 = !DILocation(line: 599, column: 9, scope: !4436)
!4445 = !DILocation(line: 599, column: 36, scope: !4436)
!4446 = !DILocation(line: 599, column: 59, scope: !4436)
!4447 = !DILocation(line: 599, column: 39, scope: !4436)
!4448 = !DILocation(line: 0, scope: !4436)
!4449 = !DILocation(line: 599, column: 2, scope: !4436)
!4450 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !4451, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!7, !137, !7}
!4453 = !DILocalVariable(name: "dev", arg: 1, scope: !4450, file: !6, line: 1945, type: !137)
!4454 = !DILocation(line: 1945, column: 61, scope: !4450)
!4455 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4450, file: !6, line: 1946, type: !7)
!4456 = !DILocation(line: 1946, column: 16, scope: !4450)
!4457 = !DILocation(line: 1948, column: 10, scope: !4450)
!4458 = !DILocation(line: 1948, column: 15, scope: !4450)
!4459 = !DILocation(line: 1948, column: 22, scope: !4450)
!4460 = !DILocation(line: 1948, column: 31, scope: !4450)
!4461 = !DILocation(line: 1948, column: 40, scope: !4450)
!4462 = !DILocation(line: 1948, column: 28, scope: !4450)
!4463 = !DILocation(line: 1948, column: 2, scope: !4450)
!4464 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !4465, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!131, !280, !129}
!4467 = !DILocalVariable(name: "s", arg: 1, scope: !4468, file: !114, line: 445, type: !889)
!4468 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !4469, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!131, !889, !129, !280}
!4471 = !DILocation(line: 445, column: 72, scope: !4468, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 552, column: 10, scope: !4473, inlinedAt: !4476)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !114, line: 540, column: 34)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !114, line: 540, column: 6)
!4475 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !4465, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4476 = distinct !DILocation(line: 664, column: 9, scope: !4464)
!4477 = !DILocalVariable(name: "flags", arg: 2, scope: !4468, file: !114, line: 446, type: !129)
!4478 = !DILocation(line: 446, column: 9, scope: !4468, inlinedAt: !4472)
!4479 = !DILocalVariable(name: "size", arg: 3, scope: !4468, file: !114, line: 446, type: !280)
!4480 = !DILocation(line: 446, column: 23, scope: !4468, inlinedAt: !4472)
!4481 = !DILocalVariable(name: "ret", scope: !4468, file: !114, line: 448, type: !131)
!4482 = !DILocation(line: 448, column: 8, scope: !4468, inlinedAt: !4472)
!4483 = !DILocalVariable(name: "flags", arg: 1, scope: !4484, file: !114, line: 318, type: !129)
!4484 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !4485, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!113, !129}
!4487 = !DILocation(line: 318, column: 67, scope: !4484, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 553, column: 20, scope: !4473, inlinedAt: !4476)
!4489 = !DILocalVariable(name: "size", arg: 1, scope: !4490, file: !114, line: 346, type: !280)
!4490 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !4491, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!7, !280}
!4493 = !DILocation(line: 346, column: 58, scope: !4490, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 547, column: 11, scope: !4473, inlinedAt: !4476)
!4495 = !DILocalVariable(name: "size", arg: 1, scope: !4496, file: !114, line: 472, type: !280)
!4496 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !4497, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!131, !280, !129, !7}
!4499 = !DILocation(line: 472, column: 28, scope: !4496, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 481, column: 9, scope: !4501, inlinedAt: !4502)
!4501 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !4465, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4502 = distinct !DILocation(line: 545, column: 11, scope: !4503, inlinedAt: !4476)
!4503 = distinct !DILexicalBlock(scope: !4473, file: !114, line: 544, column: 7)
!4504 = !DILocalVariable(name: "flags", arg: 2, scope: !4496, file: !114, line: 472, type: !129)
!4505 = !DILocation(line: 472, column: 40, scope: !4496, inlinedAt: !4500)
!4506 = !DILocalVariable(name: "order", arg: 3, scope: !4496, file: !114, line: 472, type: !7)
!4507 = !DILocation(line: 472, column: 60, scope: !4496, inlinedAt: !4500)
!4508 = !DILocalVariable(name: "size", arg: 1, scope: !4501, file: !114, line: 478, type: !280)
!4509 = !DILocation(line: 478, column: 51, scope: !4501, inlinedAt: !4502)
!4510 = !DILocalVariable(name: "flags", arg: 2, scope: !4501, file: !114, line: 478, type: !129)
!4511 = !DILocation(line: 478, column: 63, scope: !4501, inlinedAt: !4502)
!4512 = !DILocalVariable(name: "order", scope: !4501, file: !114, line: 480, type: !7)
!4513 = !DILocation(line: 480, column: 15, scope: !4501, inlinedAt: !4502)
!4514 = !DILocalVariable(name: "size", arg: 1, scope: !4475, file: !114, line: 538, type: !280)
!4515 = !DILocation(line: 538, column: 45, scope: !4475, inlinedAt: !4476)
!4516 = !DILocalVariable(name: "flags", arg: 2, scope: !4475, file: !114, line: 538, type: !129)
!4517 = !DILocation(line: 538, column: 57, scope: !4475, inlinedAt: !4476)
!4518 = !DILocalVariable(name: "index", scope: !4473, file: !114, line: 542, type: !7)
!4519 = !DILocation(line: 542, column: 16, scope: !4473, inlinedAt: !4476)
!4520 = !DILocalVariable(name: "size", arg: 1, scope: !4464, file: !114, line: 662, type: !280)
!4521 = !DILocation(line: 662, column: 36, scope: !4464)
!4522 = !DILocalVariable(name: "flags", arg: 2, scope: !4464, file: !114, line: 662, type: !129)
!4523 = !DILocation(line: 662, column: 48, scope: !4464)
!4524 = !DILocation(line: 664, column: 17, scope: !4464)
!4525 = !DILocation(line: 664, column: 23, scope: !4464)
!4526 = !DILocation(line: 664, column: 29, scope: !4464)
!4527 = !DILocation(line: 540, column: 27, scope: !4474, inlinedAt: !4476)
!4528 = !DILocation(line: 540, column: 6, scope: !4474, inlinedAt: !4476)
!4529 = !DILocation(line: 540, column: 6, scope: !4475, inlinedAt: !4476)
!4530 = !DILocation(line: 544, column: 7, scope: !4503, inlinedAt: !4476)
!4531 = !DILocation(line: 544, column: 12, scope: !4503, inlinedAt: !4476)
!4532 = !DILocation(line: 544, column: 7, scope: !4473, inlinedAt: !4476)
!4533 = !DILocation(line: 545, column: 25, scope: !4503, inlinedAt: !4476)
!4534 = !DILocation(line: 545, column: 31, scope: !4503, inlinedAt: !4476)
!4535 = !DILocation(line: 480, column: 33, scope: !4501, inlinedAt: !4502)
!4536 = !DILocation(line: 480, column: 23, scope: !4501, inlinedAt: !4502)
!4537 = !DILocation(line: 481, column: 29, scope: !4501, inlinedAt: !4502)
!4538 = !DILocation(line: 481, column: 35, scope: !4501, inlinedAt: !4502)
!4539 = !DILocation(line: 481, column: 42, scope: !4501, inlinedAt: !4502)
!4540 = !DILocation(line: 474, column: 23, scope: !4496, inlinedAt: !4500)
!4541 = !DILocation(line: 474, column: 29, scope: !4496, inlinedAt: !4500)
!4542 = !DILocation(line: 474, column: 36, scope: !4496, inlinedAt: !4500)
!4543 = !DILocation(line: 474, column: 9, scope: !4496, inlinedAt: !4500)
!4544 = !DILocation(line: 545, column: 4, scope: !4503, inlinedAt: !4476)
!4545 = !DILocation(line: 547, column: 25, scope: !4473, inlinedAt: !4476)
!4546 = !DILocation(line: 348, column: 7, scope: !4547, inlinedAt: !4494)
!4547 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 348, column: 6)
!4548 = !DILocation(line: 348, column: 6, scope: !4490, inlinedAt: !4494)
!4549 = !DILocation(line: 349, column: 3, scope: !4547, inlinedAt: !4494)
!4550 = !DILocation(line: 351, column: 6, scope: !4551, inlinedAt: !4494)
!4551 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 351, column: 6)
!4552 = !DILocation(line: 351, column: 11, scope: !4551, inlinedAt: !4494)
!4553 = !DILocation(line: 351, column: 6, scope: !4490, inlinedAt: !4494)
!4554 = !DILocation(line: 352, column: 3, scope: !4551, inlinedAt: !4494)
!4555 = !DILocation(line: 354, column: 32, scope: !4556, inlinedAt: !4494)
!4556 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 354, column: 6)
!4557 = !DILocation(line: 354, column: 37, scope: !4556, inlinedAt: !4494)
!4558 = !DILocation(line: 354, column: 42, scope: !4556, inlinedAt: !4494)
!4559 = !DILocation(line: 354, column: 45, scope: !4556, inlinedAt: !4494)
!4560 = !DILocation(line: 354, column: 50, scope: !4556, inlinedAt: !4494)
!4561 = !DILocation(line: 354, column: 6, scope: !4490, inlinedAt: !4494)
!4562 = !DILocation(line: 355, column: 3, scope: !4556, inlinedAt: !4494)
!4563 = !DILocation(line: 356, column: 32, scope: !4564, inlinedAt: !4494)
!4564 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 356, column: 6)
!4565 = !DILocation(line: 356, column: 37, scope: !4564, inlinedAt: !4494)
!4566 = !DILocation(line: 356, column: 43, scope: !4564, inlinedAt: !4494)
!4567 = !DILocation(line: 356, column: 46, scope: !4564, inlinedAt: !4494)
!4568 = !DILocation(line: 356, column: 51, scope: !4564, inlinedAt: !4494)
!4569 = !DILocation(line: 356, column: 6, scope: !4490, inlinedAt: !4494)
!4570 = !DILocation(line: 357, column: 3, scope: !4564, inlinedAt: !4494)
!4571 = !DILocation(line: 358, column: 6, scope: !4572, inlinedAt: !4494)
!4572 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 358, column: 6)
!4573 = !DILocation(line: 358, column: 11, scope: !4572, inlinedAt: !4494)
!4574 = !DILocation(line: 358, column: 6, scope: !4490, inlinedAt: !4494)
!4575 = !DILocation(line: 358, column: 26, scope: !4572, inlinedAt: !4494)
!4576 = !DILocation(line: 359, column: 6, scope: !4577, inlinedAt: !4494)
!4577 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 359, column: 6)
!4578 = !DILocation(line: 359, column: 11, scope: !4577, inlinedAt: !4494)
!4579 = !DILocation(line: 359, column: 6, scope: !4490, inlinedAt: !4494)
!4580 = !DILocation(line: 359, column: 26, scope: !4577, inlinedAt: !4494)
!4581 = !DILocation(line: 360, column: 6, scope: !4582, inlinedAt: !4494)
!4582 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 360, column: 6)
!4583 = !DILocation(line: 360, column: 11, scope: !4582, inlinedAt: !4494)
!4584 = !DILocation(line: 360, column: 6, scope: !4490, inlinedAt: !4494)
!4585 = !DILocation(line: 360, column: 26, scope: !4582, inlinedAt: !4494)
!4586 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !4494)
!4587 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 361, column: 6)
!4588 = !DILocation(line: 361, column: 11, scope: !4587, inlinedAt: !4494)
!4589 = !DILocation(line: 361, column: 6, scope: !4490, inlinedAt: !4494)
!4590 = !DILocation(line: 361, column: 26, scope: !4587, inlinedAt: !4494)
!4591 = !DILocation(line: 362, column: 6, scope: !4592, inlinedAt: !4494)
!4592 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 362, column: 6)
!4593 = !DILocation(line: 362, column: 11, scope: !4592, inlinedAt: !4494)
!4594 = !DILocation(line: 362, column: 6, scope: !4490, inlinedAt: !4494)
!4595 = !DILocation(line: 362, column: 26, scope: !4592, inlinedAt: !4494)
!4596 = !DILocation(line: 363, column: 6, scope: !4597, inlinedAt: !4494)
!4597 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 363, column: 6)
!4598 = !DILocation(line: 363, column: 11, scope: !4597, inlinedAt: !4494)
!4599 = !DILocation(line: 363, column: 6, scope: !4490, inlinedAt: !4494)
!4600 = !DILocation(line: 363, column: 26, scope: !4597, inlinedAt: !4494)
!4601 = !DILocation(line: 364, column: 6, scope: !4602, inlinedAt: !4494)
!4602 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 364, column: 6)
!4603 = !DILocation(line: 364, column: 11, scope: !4602, inlinedAt: !4494)
!4604 = !DILocation(line: 364, column: 6, scope: !4490, inlinedAt: !4494)
!4605 = !DILocation(line: 364, column: 26, scope: !4602, inlinedAt: !4494)
!4606 = !DILocation(line: 365, column: 6, scope: !4607, inlinedAt: !4494)
!4607 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 365, column: 6)
!4608 = !DILocation(line: 365, column: 11, scope: !4607, inlinedAt: !4494)
!4609 = !DILocation(line: 365, column: 6, scope: !4490, inlinedAt: !4494)
!4610 = !DILocation(line: 365, column: 26, scope: !4607, inlinedAt: !4494)
!4611 = !DILocation(line: 366, column: 6, scope: !4612, inlinedAt: !4494)
!4612 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 366, column: 6)
!4613 = !DILocation(line: 366, column: 11, scope: !4612, inlinedAt: !4494)
!4614 = !DILocation(line: 366, column: 6, scope: !4490, inlinedAt: !4494)
!4615 = !DILocation(line: 366, column: 26, scope: !4612, inlinedAt: !4494)
!4616 = !DILocation(line: 367, column: 6, scope: !4617, inlinedAt: !4494)
!4617 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 367, column: 6)
!4618 = !DILocation(line: 367, column: 11, scope: !4617, inlinedAt: !4494)
!4619 = !DILocation(line: 367, column: 6, scope: !4490, inlinedAt: !4494)
!4620 = !DILocation(line: 367, column: 26, scope: !4617, inlinedAt: !4494)
!4621 = !DILocation(line: 368, column: 6, scope: !4622, inlinedAt: !4494)
!4622 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 368, column: 6)
!4623 = !DILocation(line: 368, column: 11, scope: !4622, inlinedAt: !4494)
!4624 = !DILocation(line: 368, column: 6, scope: !4490, inlinedAt: !4494)
!4625 = !DILocation(line: 368, column: 26, scope: !4622, inlinedAt: !4494)
!4626 = !DILocation(line: 369, column: 6, scope: !4627, inlinedAt: !4494)
!4627 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 369, column: 6)
!4628 = !DILocation(line: 369, column: 11, scope: !4627, inlinedAt: !4494)
!4629 = !DILocation(line: 369, column: 6, scope: !4490, inlinedAt: !4494)
!4630 = !DILocation(line: 369, column: 26, scope: !4627, inlinedAt: !4494)
!4631 = !DILocation(line: 370, column: 6, scope: !4632, inlinedAt: !4494)
!4632 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 370, column: 6)
!4633 = !DILocation(line: 370, column: 11, scope: !4632, inlinedAt: !4494)
!4634 = !DILocation(line: 370, column: 6, scope: !4490, inlinedAt: !4494)
!4635 = !DILocation(line: 370, column: 26, scope: !4632, inlinedAt: !4494)
!4636 = !DILocation(line: 371, column: 6, scope: !4637, inlinedAt: !4494)
!4637 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 371, column: 6)
!4638 = !DILocation(line: 371, column: 11, scope: !4637, inlinedAt: !4494)
!4639 = !DILocation(line: 371, column: 6, scope: !4490, inlinedAt: !4494)
!4640 = !DILocation(line: 371, column: 26, scope: !4637, inlinedAt: !4494)
!4641 = !DILocation(line: 372, column: 6, scope: !4642, inlinedAt: !4494)
!4642 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 372, column: 6)
!4643 = !DILocation(line: 372, column: 11, scope: !4642, inlinedAt: !4494)
!4644 = !DILocation(line: 372, column: 6, scope: !4490, inlinedAt: !4494)
!4645 = !DILocation(line: 372, column: 26, scope: !4642, inlinedAt: !4494)
!4646 = !DILocation(line: 373, column: 6, scope: !4647, inlinedAt: !4494)
!4647 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 373, column: 6)
!4648 = !DILocation(line: 373, column: 11, scope: !4647, inlinedAt: !4494)
!4649 = !DILocation(line: 373, column: 6, scope: !4490, inlinedAt: !4494)
!4650 = !DILocation(line: 373, column: 26, scope: !4647, inlinedAt: !4494)
!4651 = !DILocation(line: 374, column: 6, scope: !4652, inlinedAt: !4494)
!4652 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 374, column: 6)
!4653 = !DILocation(line: 374, column: 11, scope: !4652, inlinedAt: !4494)
!4654 = !DILocation(line: 374, column: 6, scope: !4490, inlinedAt: !4494)
!4655 = !DILocation(line: 374, column: 26, scope: !4652, inlinedAt: !4494)
!4656 = !DILocation(line: 375, column: 6, scope: !4657, inlinedAt: !4494)
!4657 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 375, column: 6)
!4658 = !DILocation(line: 375, column: 11, scope: !4657, inlinedAt: !4494)
!4659 = !DILocation(line: 375, column: 6, scope: !4490, inlinedAt: !4494)
!4660 = !DILocation(line: 375, column: 27, scope: !4657, inlinedAt: !4494)
!4661 = !DILocation(line: 376, column: 6, scope: !4662, inlinedAt: !4494)
!4662 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 376, column: 6)
!4663 = !DILocation(line: 376, column: 11, scope: !4662, inlinedAt: !4494)
!4664 = !DILocation(line: 376, column: 6, scope: !4490, inlinedAt: !4494)
!4665 = !DILocation(line: 376, column: 32, scope: !4662, inlinedAt: !4494)
!4666 = !DILocation(line: 377, column: 6, scope: !4667, inlinedAt: !4494)
!4667 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 377, column: 6)
!4668 = !DILocation(line: 377, column: 11, scope: !4667, inlinedAt: !4494)
!4669 = !DILocation(line: 377, column: 6, scope: !4490, inlinedAt: !4494)
!4670 = !DILocation(line: 377, column: 32, scope: !4667, inlinedAt: !4494)
!4671 = !DILocation(line: 378, column: 6, scope: !4672, inlinedAt: !4494)
!4672 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 378, column: 6)
!4673 = !DILocation(line: 378, column: 11, scope: !4672, inlinedAt: !4494)
!4674 = !DILocation(line: 378, column: 6, scope: !4490, inlinedAt: !4494)
!4675 = !DILocation(line: 378, column: 32, scope: !4672, inlinedAt: !4494)
!4676 = !DILocation(line: 379, column: 6, scope: !4677, inlinedAt: !4494)
!4677 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 379, column: 6)
!4678 = !DILocation(line: 379, column: 11, scope: !4677, inlinedAt: !4494)
!4679 = !DILocation(line: 379, column: 6, scope: !4490, inlinedAt: !4494)
!4680 = !DILocation(line: 379, column: 33, scope: !4677, inlinedAt: !4494)
!4681 = !DILocation(line: 380, column: 6, scope: !4682, inlinedAt: !4494)
!4682 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 380, column: 6)
!4683 = !DILocation(line: 380, column: 11, scope: !4682, inlinedAt: !4494)
!4684 = !DILocation(line: 380, column: 6, scope: !4490, inlinedAt: !4494)
!4685 = !DILocation(line: 380, column: 33, scope: !4682, inlinedAt: !4494)
!4686 = !DILocation(line: 381, column: 6, scope: !4687, inlinedAt: !4494)
!4687 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 381, column: 6)
!4688 = !DILocation(line: 381, column: 11, scope: !4687, inlinedAt: !4494)
!4689 = !DILocation(line: 381, column: 6, scope: !4490, inlinedAt: !4494)
!4690 = !DILocation(line: 381, column: 33, scope: !4687, inlinedAt: !4494)
!4691 = !DILocation(line: 382, column: 2, scope: !4692, inlinedAt: !4494)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !114, line: 382, column: 2)
!4693 = distinct !DILexicalBlock(scope: !4490, file: !114, line: 382, column: 2)
!4694 = !{i32 -2142593142, i32 -2142593113, i32 -2142593067, i32 -2142593009, i32 -2142592955, i32 -2142592901, i32 -2142592846, i32 -2142592815}
!4695 = !DILocation(line: 382, column: 2, scope: !4696, inlinedAt: !4494)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !114, line: 382, column: 2)
!4697 = distinct !DILexicalBlock(scope: !4693, file: !114, line: 382, column: 2)
!4698 = !{i32 -2142592372, i32 -2142592365, i32 -2142592311, i32 -2142592280, i32 -2142592250}
!4699 = !DILocation(line: 382, column: 2, scope: !4697, inlinedAt: !4494)
!4700 = !DILocation(line: 386, column: 1, scope: !4490, inlinedAt: !4494)
!4701 = !DILocation(line: 547, column: 9, scope: !4473, inlinedAt: !4476)
!4702 = !DILocation(line: 549, column: 8, scope: !4703, inlinedAt: !4476)
!4703 = distinct !DILexicalBlock(scope: !4473, file: !114, line: 549, column: 7)
!4704 = !DILocation(line: 549, column: 7, scope: !4473, inlinedAt: !4476)
!4705 = !DILocation(line: 550, column: 4, scope: !4703, inlinedAt: !4476)
!4706 = !DILocation(line: 553, column: 33, scope: !4473, inlinedAt: !4476)
!4707 = !DILocation(line: 325, column: 6, scope: !4708, inlinedAt: !4488)
!4708 = distinct !DILexicalBlock(scope: !4484, file: !114, line: 325, column: 6)
!4709 = !DILocation(line: 325, column: 6, scope: !4484, inlinedAt: !4488)
!4710 = !DILocation(line: 326, column: 3, scope: !4708, inlinedAt: !4488)
!4711 = !DILocation(line: 332, column: 9, scope: !4484, inlinedAt: !4488)
!4712 = !DILocation(line: 332, column: 15, scope: !4484, inlinedAt: !4488)
!4713 = !DILocation(line: 332, column: 2, scope: !4484, inlinedAt: !4488)
!4714 = !DILocation(line: 336, column: 1, scope: !4484, inlinedAt: !4488)
!4715 = !DILocation(line: 553, column: 5, scope: !4473, inlinedAt: !4476)
!4716 = !DILocation(line: 553, column: 41, scope: !4473, inlinedAt: !4476)
!4717 = !DILocation(line: 554, column: 5, scope: !4473, inlinedAt: !4476)
!4718 = !DILocation(line: 554, column: 12, scope: !4473, inlinedAt: !4476)
!4719 = !DILocation(line: 448, column: 31, scope: !4468, inlinedAt: !4472)
!4720 = !DILocation(line: 448, column: 34, scope: !4468, inlinedAt: !4472)
!4721 = !DILocation(line: 448, column: 14, scope: !4468, inlinedAt: !4472)
!4722 = !DILocation(line: 450, column: 22, scope: !4468, inlinedAt: !4472)
!4723 = !DILocation(line: 450, column: 25, scope: !4468, inlinedAt: !4472)
!4724 = !DILocation(line: 450, column: 30, scope: !4468, inlinedAt: !4472)
!4725 = !DILocation(line: 450, column: 36, scope: !4468, inlinedAt: !4472)
!4726 = !DILocation(line: 450, column: 8, scope: !4468, inlinedAt: !4472)
!4727 = !DILocation(line: 450, column: 6, scope: !4468, inlinedAt: !4472)
!4728 = !DILocation(line: 451, column: 9, scope: !4468, inlinedAt: !4472)
!4729 = !DILocation(line: 552, column: 3, scope: !4473, inlinedAt: !4476)
!4730 = !DILocation(line: 557, column: 19, scope: !4475, inlinedAt: !4476)
!4731 = !DILocation(line: 557, column: 25, scope: !4475, inlinedAt: !4476)
!4732 = !DILocation(line: 557, column: 9, scope: !4475, inlinedAt: !4476)
!4733 = !DILocation(line: 557, column: 2, scope: !4475, inlinedAt: !4476)
!4734 = !DILocation(line: 558, column: 1, scope: !4475, inlinedAt: !4476)
!4735 = !DILocation(line: 664, column: 2, scope: !4464)
!4736 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !4737, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !3828, !137, !7, !131, !141, !3870, !131, !141}
!4739 = !DILocalVariable(name: "urb", arg: 1, scope: !4736, file: !6, line: 1688, type: !3828)
!4740 = !DILocation(line: 1688, column: 49, scope: !4736)
!4741 = !DILocalVariable(name: "dev", arg: 2, scope: !4736, file: !6, line: 1689, type: !137)
!4742 = !DILocation(line: 1689, column: 28, scope: !4736)
!4743 = !DILocalVariable(name: "pipe", arg: 3, scope: !4736, file: !6, line: 1690, type: !7)
!4744 = !DILocation(line: 1690, column: 22, scope: !4736)
!4745 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !4736, file: !6, line: 1691, type: !131)
!4746 = !DILocation(line: 1691, column: 15, scope: !4736)
!4747 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !4736, file: !6, line: 1692, type: !141)
!4748 = !DILocation(line: 1692, column: 13, scope: !4736)
!4749 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !4736, file: !6, line: 1693, type: !3870)
!4750 = !DILocation(line: 1693, column: 24, scope: !4736)
!4751 = !DILocalVariable(name: "context", arg: 7, scope: !4736, file: !6, line: 1694, type: !131)
!4752 = !DILocation(line: 1694, column: 15, scope: !4736)
!4753 = !DILocalVariable(name: "interval", arg: 8, scope: !4736, file: !6, line: 1695, type: !141)
!4754 = !DILocation(line: 1695, column: 13, scope: !4736)
!4755 = !DILocation(line: 1697, column: 13, scope: !4736)
!4756 = !DILocation(line: 1697, column: 2, scope: !4736)
!4757 = !DILocation(line: 1697, column: 7, scope: !4736)
!4758 = !DILocation(line: 1697, column: 11, scope: !4736)
!4759 = !DILocation(line: 1698, column: 14, scope: !4736)
!4760 = !DILocation(line: 1698, column: 2, scope: !4736)
!4761 = !DILocation(line: 1698, column: 7, scope: !4736)
!4762 = !DILocation(line: 1698, column: 12, scope: !4736)
!4763 = !DILocation(line: 1699, column: 25, scope: !4736)
!4764 = !DILocation(line: 1699, column: 2, scope: !4736)
!4765 = !DILocation(line: 1699, column: 7, scope: !4736)
!4766 = !DILocation(line: 1699, column: 23, scope: !4736)
!4767 = !DILocation(line: 1700, column: 32, scope: !4736)
!4768 = !DILocation(line: 1700, column: 2, scope: !4736)
!4769 = !DILocation(line: 1700, column: 7, scope: !4736)
!4770 = !DILocation(line: 1700, column: 30, scope: !4736)
!4771 = !DILocation(line: 1701, column: 18, scope: !4736)
!4772 = !DILocation(line: 1701, column: 2, scope: !4736)
!4773 = !DILocation(line: 1701, column: 7, scope: !4736)
!4774 = !DILocation(line: 1701, column: 16, scope: !4736)
!4775 = !DILocation(line: 1702, column: 17, scope: !4736)
!4776 = !DILocation(line: 1702, column: 2, scope: !4736)
!4777 = !DILocation(line: 1702, column: 7, scope: !4736)
!4778 = !DILocation(line: 1702, column: 15, scope: !4736)
!4779 = !DILocation(line: 1704, column: 6, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4736, file: !6, line: 1704, column: 6)
!4781 = !DILocation(line: 1704, column: 11, scope: !4780)
!4782 = !DILocation(line: 1704, column: 17, scope: !4780)
!4783 = !DILocation(line: 1704, column: 35, scope: !4780)
!4784 = !DILocation(line: 1704, column: 38, scope: !4780)
!4785 = !DILocation(line: 1704, column: 43, scope: !4780)
!4786 = !DILocation(line: 1704, column: 49, scope: !4780)
!4787 = !DILocation(line: 1704, column: 6, scope: !4736)
!4788 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !4789, file: !6, line: 1706, type: !141)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !6, line: 1706, column: 14)
!4790 = distinct !DILexicalBlock(scope: !4780, file: !6, line: 1704, column: 69)
!4791 = !DILocation(line: 1706, column: 14, scope: !4789)
!4792 = !DILocalVariable(name: "__UNIQUE_ID___x203", scope: !4793, file: !6, line: 1706, type: !141)
!4793 = distinct !DILexicalBlock(scope: !4789, file: !6, line: 1706, column: 14)
!4794 = !DILocation(line: 1706, column: 14, scope: !4793)
!4795 = !DILocalVariable(name: "__UNIQUE_ID___y204", scope: !4793, file: !6, line: 1706, type: !141)
!4796 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !4789, file: !6, line: 1706, type: !141)
!4797 = !DILocation(line: 1706, column: 12, scope: !4790)
!4798 = !DILocation(line: 1708, column: 25, scope: !4790)
!4799 = !DILocation(line: 1708, column: 34, scope: !4790)
!4800 = !DILocation(line: 1708, column: 21, scope: !4790)
!4801 = !DILocation(line: 1708, column: 3, scope: !4790)
!4802 = !DILocation(line: 1708, column: 8, scope: !4790)
!4803 = !DILocation(line: 1708, column: 17, scope: !4790)
!4804 = !DILocation(line: 1709, column: 2, scope: !4790)
!4805 = !DILocation(line: 1710, column: 19, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4780, file: !6, line: 1709, column: 9)
!4807 = !DILocation(line: 1710, column: 3, scope: !4806)
!4808 = !DILocation(line: 1710, column: 8, scope: !4806)
!4809 = !DILocation(line: 1710, column: 17, scope: !4806)
!4810 = !DILocation(line: 1713, column: 2, scope: !4736)
!4811 = !DILocation(line: 1713, column: 7, scope: !4736)
!4812 = !DILocation(line: 1713, column: 19, scope: !4736)
!4813 = !DILocation(line: 1714, column: 1, scope: !4736)
!4814 = distinct !DISubprogram(name: "usb_pcwd_intr_done", scope: !3, file: !3, line: 165, type: !3872, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4815 = !DILocalVariable(name: "v", arg: 1, scope: !4816, file: !4817, line: 39, type: !4820)
!4816 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4817, file: !4817, line: 39, type: !4818, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4817 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4818 = !DISubroutineType(types: !4819)
!4819 = !{null, !4820, !141}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!4821 = !DILocation(line: 39, column: 55, scope: !4816, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 46, column: 2, scope: !4823, inlinedAt: !4825)
!4823 = distinct !DISubprogram(name: "atomic_set", scope: !4824, file: !4824, line: 43, type: !4818, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4824 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4825 = distinct !DILocation(line: 198, column: 2, scope: !4814)
!4826 = !DILocalVariable(name: "i", arg: 2, scope: !4816, file: !4817, line: 39, type: !141)
!4827 = !DILocation(line: 39, column: 62, scope: !4816, inlinedAt: !4822)
!4828 = !DILocalVariable(name: "v", arg: 1, scope: !4829, file: !4830, line: 84, type: !4833)
!4829 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4830, file: !4830, line: 84, type: !4831, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4830 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4831 = !DISubroutineType(types: !4832)
!4832 = !{null, !4833, !280}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4835)
!4835 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4836 = !DILocation(line: 84, column: 74, scope: !4829, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 45, column: 2, scope: !4823, inlinedAt: !4825)
!4838 = !DILocalVariable(name: "size", arg: 2, scope: !4829, file: !4830, line: 84, type: !280)
!4839 = !DILocation(line: 84, column: 84, scope: !4829, inlinedAt: !4837)
!4840 = !DILocalVariable(name: "v", arg: 1, scope: !4823, file: !4824, line: 43, type: !4820)
!4841 = !DILocation(line: 43, column: 22, scope: !4823, inlinedAt: !4825)
!4842 = !DILocalVariable(name: "i", arg: 2, scope: !4823, file: !4824, line: 43, type: !141)
!4843 = !DILocation(line: 43, column: 29, scope: !4823, inlinedAt: !4825)
!4844 = !DILocalVariable(name: "urb", arg: 1, scope: !4814, file: !3, line: 165, type: !3828)
!4845 = !DILocation(line: 165, column: 44, scope: !4814)
!4846 = !DILocalVariable(name: "usb_pcwd", scope: !4814, file: !3, line: 167, type: !3818)
!4847 = !DILocation(line: 167, column: 27, scope: !4814)
!4848 = !DILocation(line: 168, column: 32, scope: !4814)
!4849 = !DILocation(line: 168, column: 37, scope: !4814)
!4850 = !DILocation(line: 168, column: 5, scope: !4814)
!4851 = !DILocalVariable(name: "data", scope: !4814, file: !3, line: 169, type: !3596)
!4852 = !DILocation(line: 169, column: 17, scope: !4814)
!4853 = !DILocation(line: 169, column: 24, scope: !4814)
!4854 = !DILocation(line: 169, column: 34, scope: !4814)
!4855 = !DILocalVariable(name: "dev", scope: !4814, file: !3, line: 170, type: !169)
!4856 = !DILocation(line: 170, column: 17, scope: !4814)
!4857 = !DILocation(line: 170, column: 24, scope: !4814)
!4858 = !DILocation(line: 170, column: 34, scope: !4814)
!4859 = !DILocation(line: 170, column: 45, scope: !4814)
!4860 = !DILocalVariable(name: "retval", scope: !4814, file: !3, line: 171, type: !141)
!4861 = !DILocation(line: 171, column: 6, scope: !4814)
!4862 = !DILocation(line: 173, column: 10, scope: !4814)
!4863 = !DILocation(line: 173, column: 15, scope: !4814)
!4864 = !DILocation(line: 173, column: 2, scope: !4814)
!4865 = !DILocation(line: 175, column: 3, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 173, column: 23)
!4867 = !DILocation(line: 182, column: 3, scope: !4866)
!4868 = !DILocation(line: 187, column: 3, scope: !4866)
!4869 = !DILocation(line: 193, column: 27, scope: !4814)
!4870 = !DILocation(line: 193, column: 2, scope: !4814)
!4871 = !DILocation(line: 193, column: 12, scope: !4814)
!4872 = !DILocation(line: 193, column: 25, scope: !4814)
!4873 = !DILocation(line: 194, column: 27, scope: !4814)
!4874 = !DILocation(line: 194, column: 2, scope: !4814)
!4875 = !DILocation(line: 194, column: 12, scope: !4814)
!4876 = !DILocation(line: 194, column: 25, scope: !4814)
!4877 = !DILocation(line: 195, column: 27, scope: !4814)
!4878 = !DILocation(line: 195, column: 2, scope: !4814)
!4879 = !DILocation(line: 195, column: 12, scope: !4814)
!4880 = !DILocation(line: 195, column: 25, scope: !4814)
!4881 = !DILocation(line: 198, column: 14, scope: !4814)
!4882 = !DILocation(line: 198, column: 24, scope: !4814)
!4883 = !DILocation(line: 45, column: 26, scope: !4823, inlinedAt: !4825)
!4884 = !DILocation(line: 86, column: 20, scope: !4829, inlinedAt: !4837)
!4885 = !DILocation(line: 86, column: 23, scope: !4829, inlinedAt: !4837)
!4886 = !DILocation(line: 86, column: 2, scope: !4829, inlinedAt: !4837)
!4887 = !DILocation(line: 87, column: 2, scope: !4829, inlinedAt: !4837)
!4888 = !DILocation(line: 46, column: 18, scope: !4823, inlinedAt: !4825)
!4889 = !DILocation(line: 46, column: 21, scope: !4823, inlinedAt: !4825)
!4890 = !DILocation(line: 41, column: 2, scope: !4891, inlinedAt: !4822)
!4891 = distinct !DILexicalBlock(scope: !4816, file: !4817, line: 41, column: 2)
!4892 = !DILocation(line: 198, column: 2, scope: !4814)
!4893 = !DILabel(scope: !4814, name: "resubmit", file: !3, line: 200)
!4894 = !DILocation(line: 200, column: 1, scope: !4814)
!4895 = !DILocation(line: 201, column: 26, scope: !4814)
!4896 = !DILocation(line: 201, column: 11, scope: !4814)
!4897 = !DILocation(line: 201, column: 9, scope: !4814)
!4898 = !DILocation(line: 202, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 202, column: 6)
!4900 = !DILocation(line: 202, column: 6, scope: !4814)
!4901 = !DILocation(line: 203, column: 3, scope: !4899)
!4902 = !DILocation(line: 205, column: 1, scope: !4814)
!4903 = distinct !DISubprogram(name: "usb_pcwd_stop", scope: !3, file: !3, line: 282, type: !4904, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!141, !3818}
!4906 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !4903, file: !3, line: 282, type: !3818)
!4907 = !DILocation(line: 282, column: 51, scope: !4903)
!4908 = !DILocalVariable(name: "msb", scope: !4903, file: !3, line: 284, type: !382)
!4909 = !DILocation(line: 284, column: 16, scope: !4903)
!4910 = !DILocalVariable(name: "lsb", scope: !4903, file: !3, line: 285, type: !382)
!4911 = !DILocation(line: 285, column: 16, scope: !4903)
!4912 = !DILocalVariable(name: "retval", scope: !4903, file: !3, line: 286, type: !141)
!4913 = !DILocation(line: 286, column: 6, scope: !4903)
!4914 = !DILocation(line: 289, column: 33, scope: !4903)
!4915 = !DILocation(line: 289, column: 11, scope: !4903)
!4916 = !DILocation(line: 289, column: 9, scope: !4903)
!4917 = !DILocation(line: 292, column: 7, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 292, column: 6)
!4919 = !DILocation(line: 292, column: 14, scope: !4918)
!4920 = !DILocation(line: 292, column: 20, scope: !4918)
!4921 = !DILocation(line: 292, column: 24, scope: !4918)
!4922 = !DILocation(line: 292, column: 28, scope: !4918)
!4923 = !DILocation(line: 292, column: 6, scope: !4903)
!4924 = !DILocation(line: 293, column: 3, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 292, column: 35)
!4926 = !DILocation(line: 294, column: 3, scope: !4925)
!4927 = !DILocation(line: 297, column: 2, scope: !4903)
!4928 = !DILocation(line: 298, column: 1, scope: !4903)
!4929 = distinct !DISubprogram(name: "usb_pcwd_send_command", scope: !3, file: !3, line: 207, type: !4930, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!141, !3818, !382, !3596, !3596}
!4932 = !DILocalVariable(name: "v", arg: 1, scope: !4933, file: !4817, line: 23, type: !4936)
!4933 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4817, file: !4817, line: 23, type: !4934, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!141, !4936}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!4938 = !DILocation(line: 23, column: 61, scope: !4933, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 28, column: 9, scope: !4940, inlinedAt: !4941)
!4940 = distinct !DISubprogram(name: "atomic_read", scope: !4824, file: !4824, line: 25, type: !4934, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4941 = distinct !DILocation(line: 249, column: 7, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 249, column: 7)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 247, column: 18)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 246, column: 2)
!4945 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 246, column: 2)
!4946 = !DILocalVariable(name: "v", arg: 1, scope: !4947, file: !4830, line: 69, type: !4833)
!4947 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4830, file: !4830, line: 69, type: !4831, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4948 = !DILocation(line: 69, column: 73, scope: !4947, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 27, column: 2, scope: !4940, inlinedAt: !4941)
!4950 = !DILocalVariable(name: "size", arg: 2, scope: !4947, file: !4830, line: 69, type: !280)
!4951 = !DILocation(line: 69, column: 83, scope: !4947, inlinedAt: !4949)
!4952 = !DILocalVariable(name: "v", arg: 1, scope: !4940, file: !4824, line: 25, type: !4936)
!4953 = !DILocation(line: 25, column: 29, scope: !4940, inlinedAt: !4941)
!4954 = !DILocation(line: 39, column: 55, scope: !4816, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 46, column: 2, scope: !4823, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 233, column: 2, scope: !4929)
!4957 = !DILocation(line: 39, column: 62, scope: !4816, inlinedAt: !4955)
!4958 = !DILocation(line: 84, column: 74, scope: !4829, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 45, column: 2, scope: !4823, inlinedAt: !4956)
!4960 = !DILocation(line: 84, column: 84, scope: !4829, inlinedAt: !4959)
!4961 = !DILocation(line: 43, column: 22, scope: !4823, inlinedAt: !4956)
!4962 = !DILocation(line: 43, column: 29, scope: !4823, inlinedAt: !4956)
!4963 = !DILocation(line: 445, column: 72, scope: !4468, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 552, column: 10, scope: !4473, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 218, column: 8, scope: !4929)
!4966 = !DILocation(line: 446, column: 9, scope: !4468, inlinedAt: !4964)
!4967 = !DILocation(line: 446, column: 23, scope: !4468, inlinedAt: !4964)
!4968 = !DILocation(line: 448, column: 8, scope: !4468, inlinedAt: !4964)
!4969 = !DILocation(line: 318, column: 67, scope: !4484, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 553, column: 20, scope: !4473, inlinedAt: !4965)
!4971 = !DILocation(line: 346, column: 58, scope: !4490, inlinedAt: !4972)
!4972 = distinct !DILocation(line: 547, column: 11, scope: !4473, inlinedAt: !4965)
!4973 = !DILocation(line: 472, column: 28, scope: !4496, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 481, column: 9, scope: !4501, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 545, column: 11, scope: !4503, inlinedAt: !4965)
!4976 = !DILocation(line: 472, column: 40, scope: !4496, inlinedAt: !4974)
!4977 = !DILocation(line: 472, column: 60, scope: !4496, inlinedAt: !4974)
!4978 = !DILocation(line: 478, column: 51, scope: !4501, inlinedAt: !4975)
!4979 = !DILocation(line: 478, column: 63, scope: !4501, inlinedAt: !4975)
!4980 = !DILocation(line: 480, column: 15, scope: !4501, inlinedAt: !4975)
!4981 = !DILocation(line: 538, column: 45, scope: !4475, inlinedAt: !4965)
!4982 = !DILocation(line: 538, column: 57, scope: !4475, inlinedAt: !4965)
!4983 = !DILocation(line: 542, column: 16, scope: !4473, inlinedAt: !4965)
!4984 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !4929, file: !3, line: 207, type: !3818)
!4985 = !DILocation(line: 207, column: 59, scope: !4929)
!4986 = !DILocalVariable(name: "cmd", arg: 2, scope: !4929, file: !3, line: 208, type: !382)
!4987 = !DILocation(line: 208, column: 17, scope: !4929)
!4988 = !DILocalVariable(name: "msb", arg: 3, scope: !4929, file: !3, line: 208, type: !3596)
!4989 = !DILocation(line: 208, column: 37, scope: !4929)
!4990 = !DILocalVariable(name: "lsb", arg: 4, scope: !4929, file: !3, line: 208, type: !3596)
!4991 = !DILocation(line: 208, column: 57, scope: !4929)
!4992 = !DILocalVariable(name: "got_response", scope: !4929, file: !3, line: 210, type: !141)
!4993 = !DILocation(line: 210, column: 6, scope: !4929)
!4994 = !DILocalVariable(name: "count", scope: !4929, file: !3, line: 210, type: !141)
!4995 = !DILocation(line: 210, column: 20, scope: !4929)
!4996 = !DILocalVariable(name: "buf", scope: !4929, file: !3, line: 211, type: !3596)
!4997 = !DILocation(line: 211, column: 17, scope: !4929)
!4998 = !DILocation(line: 215, column: 8, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 215, column: 6)
!5000 = !DILocation(line: 215, column: 18, scope: !4999)
!5001 = !DILocation(line: 215, column: 23, scope: !4999)
!5002 = !DILocation(line: 215, column: 33, scope: !4999)
!5003 = !DILocation(line: 215, column: 6, scope: !4929)
!5004 = !DILocation(line: 216, column: 3, scope: !4999)
!5005 = !DILocation(line: 540, column: 27, scope: !4474, inlinedAt: !4965)
!5006 = !DILocation(line: 540, column: 6, scope: !4474, inlinedAt: !4965)
!5007 = !DILocation(line: 540, column: 6, scope: !4475, inlinedAt: !4965)
!5008 = !DILocation(line: 544, column: 7, scope: !4503, inlinedAt: !4965)
!5009 = !DILocation(line: 544, column: 12, scope: !4503, inlinedAt: !4965)
!5010 = !DILocation(line: 544, column: 7, scope: !4473, inlinedAt: !4965)
!5011 = !DILocation(line: 545, column: 25, scope: !4503, inlinedAt: !4965)
!5012 = !DILocation(line: 545, column: 31, scope: !4503, inlinedAt: !4965)
!5013 = !DILocation(line: 480, column: 33, scope: !4501, inlinedAt: !4975)
!5014 = !DILocation(line: 480, column: 23, scope: !4501, inlinedAt: !4975)
!5015 = !DILocation(line: 481, column: 29, scope: !4501, inlinedAt: !4975)
!5016 = !DILocation(line: 481, column: 35, scope: !4501, inlinedAt: !4975)
!5017 = !DILocation(line: 481, column: 42, scope: !4501, inlinedAt: !4975)
!5018 = !DILocation(line: 474, column: 23, scope: !4496, inlinedAt: !4974)
!5019 = !DILocation(line: 474, column: 29, scope: !4496, inlinedAt: !4974)
!5020 = !DILocation(line: 474, column: 36, scope: !4496, inlinedAt: !4974)
!5021 = !DILocation(line: 474, column: 9, scope: !4496, inlinedAt: !4974)
!5022 = !DILocation(line: 545, column: 4, scope: !4503, inlinedAt: !4965)
!5023 = !DILocation(line: 547, column: 25, scope: !4473, inlinedAt: !4965)
!5024 = !DILocation(line: 348, column: 7, scope: !4547, inlinedAt: !4972)
!5025 = !DILocation(line: 348, column: 6, scope: !4490, inlinedAt: !4972)
!5026 = !DILocation(line: 349, column: 3, scope: !4547, inlinedAt: !4972)
!5027 = !DILocation(line: 351, column: 6, scope: !4551, inlinedAt: !4972)
!5028 = !DILocation(line: 351, column: 11, scope: !4551, inlinedAt: !4972)
!5029 = !DILocation(line: 351, column: 6, scope: !4490, inlinedAt: !4972)
!5030 = !DILocation(line: 352, column: 3, scope: !4551, inlinedAt: !4972)
!5031 = !DILocation(line: 354, column: 32, scope: !4556, inlinedAt: !4972)
!5032 = !DILocation(line: 354, column: 37, scope: !4556, inlinedAt: !4972)
!5033 = !DILocation(line: 354, column: 42, scope: !4556, inlinedAt: !4972)
!5034 = !DILocation(line: 354, column: 45, scope: !4556, inlinedAt: !4972)
!5035 = !DILocation(line: 354, column: 50, scope: !4556, inlinedAt: !4972)
!5036 = !DILocation(line: 354, column: 6, scope: !4490, inlinedAt: !4972)
!5037 = !DILocation(line: 355, column: 3, scope: !4556, inlinedAt: !4972)
!5038 = !DILocation(line: 356, column: 32, scope: !4564, inlinedAt: !4972)
!5039 = !DILocation(line: 356, column: 37, scope: !4564, inlinedAt: !4972)
!5040 = !DILocation(line: 356, column: 43, scope: !4564, inlinedAt: !4972)
!5041 = !DILocation(line: 356, column: 46, scope: !4564, inlinedAt: !4972)
!5042 = !DILocation(line: 356, column: 51, scope: !4564, inlinedAt: !4972)
!5043 = !DILocation(line: 356, column: 6, scope: !4490, inlinedAt: !4972)
!5044 = !DILocation(line: 357, column: 3, scope: !4564, inlinedAt: !4972)
!5045 = !DILocation(line: 358, column: 6, scope: !4572, inlinedAt: !4972)
!5046 = !DILocation(line: 358, column: 11, scope: !4572, inlinedAt: !4972)
!5047 = !DILocation(line: 358, column: 6, scope: !4490, inlinedAt: !4972)
!5048 = !DILocation(line: 358, column: 26, scope: !4572, inlinedAt: !4972)
!5049 = !DILocation(line: 359, column: 6, scope: !4577, inlinedAt: !4972)
!5050 = !DILocation(line: 359, column: 11, scope: !4577, inlinedAt: !4972)
!5051 = !DILocation(line: 359, column: 6, scope: !4490, inlinedAt: !4972)
!5052 = !DILocation(line: 359, column: 26, scope: !4577, inlinedAt: !4972)
!5053 = !DILocation(line: 360, column: 6, scope: !4582, inlinedAt: !4972)
!5054 = !DILocation(line: 360, column: 11, scope: !4582, inlinedAt: !4972)
!5055 = !DILocation(line: 360, column: 6, scope: !4490, inlinedAt: !4972)
!5056 = !DILocation(line: 360, column: 26, scope: !4582, inlinedAt: !4972)
!5057 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !4972)
!5058 = !DILocation(line: 361, column: 11, scope: !4587, inlinedAt: !4972)
!5059 = !DILocation(line: 361, column: 6, scope: !4490, inlinedAt: !4972)
!5060 = !DILocation(line: 361, column: 26, scope: !4587, inlinedAt: !4972)
!5061 = !DILocation(line: 362, column: 6, scope: !4592, inlinedAt: !4972)
!5062 = !DILocation(line: 362, column: 11, scope: !4592, inlinedAt: !4972)
!5063 = !DILocation(line: 362, column: 6, scope: !4490, inlinedAt: !4972)
!5064 = !DILocation(line: 362, column: 26, scope: !4592, inlinedAt: !4972)
!5065 = !DILocation(line: 363, column: 6, scope: !4597, inlinedAt: !4972)
!5066 = !DILocation(line: 363, column: 11, scope: !4597, inlinedAt: !4972)
!5067 = !DILocation(line: 363, column: 6, scope: !4490, inlinedAt: !4972)
!5068 = !DILocation(line: 363, column: 26, scope: !4597, inlinedAt: !4972)
!5069 = !DILocation(line: 364, column: 6, scope: !4602, inlinedAt: !4972)
!5070 = !DILocation(line: 364, column: 11, scope: !4602, inlinedAt: !4972)
!5071 = !DILocation(line: 364, column: 6, scope: !4490, inlinedAt: !4972)
!5072 = !DILocation(line: 364, column: 26, scope: !4602, inlinedAt: !4972)
!5073 = !DILocation(line: 365, column: 6, scope: !4607, inlinedAt: !4972)
!5074 = !DILocation(line: 365, column: 11, scope: !4607, inlinedAt: !4972)
!5075 = !DILocation(line: 365, column: 6, scope: !4490, inlinedAt: !4972)
!5076 = !DILocation(line: 365, column: 26, scope: !4607, inlinedAt: !4972)
!5077 = !DILocation(line: 366, column: 6, scope: !4612, inlinedAt: !4972)
!5078 = !DILocation(line: 366, column: 11, scope: !4612, inlinedAt: !4972)
!5079 = !DILocation(line: 366, column: 6, scope: !4490, inlinedAt: !4972)
!5080 = !DILocation(line: 366, column: 26, scope: !4612, inlinedAt: !4972)
!5081 = !DILocation(line: 367, column: 6, scope: !4617, inlinedAt: !4972)
!5082 = !DILocation(line: 367, column: 11, scope: !4617, inlinedAt: !4972)
!5083 = !DILocation(line: 367, column: 6, scope: !4490, inlinedAt: !4972)
!5084 = !DILocation(line: 367, column: 26, scope: !4617, inlinedAt: !4972)
!5085 = !DILocation(line: 368, column: 6, scope: !4622, inlinedAt: !4972)
!5086 = !DILocation(line: 368, column: 11, scope: !4622, inlinedAt: !4972)
!5087 = !DILocation(line: 368, column: 6, scope: !4490, inlinedAt: !4972)
!5088 = !DILocation(line: 368, column: 26, scope: !4622, inlinedAt: !4972)
!5089 = !DILocation(line: 369, column: 6, scope: !4627, inlinedAt: !4972)
!5090 = !DILocation(line: 369, column: 11, scope: !4627, inlinedAt: !4972)
!5091 = !DILocation(line: 369, column: 6, scope: !4490, inlinedAt: !4972)
!5092 = !DILocation(line: 369, column: 26, scope: !4627, inlinedAt: !4972)
!5093 = !DILocation(line: 370, column: 6, scope: !4632, inlinedAt: !4972)
!5094 = !DILocation(line: 370, column: 11, scope: !4632, inlinedAt: !4972)
!5095 = !DILocation(line: 370, column: 6, scope: !4490, inlinedAt: !4972)
!5096 = !DILocation(line: 370, column: 26, scope: !4632, inlinedAt: !4972)
!5097 = !DILocation(line: 371, column: 6, scope: !4637, inlinedAt: !4972)
!5098 = !DILocation(line: 371, column: 11, scope: !4637, inlinedAt: !4972)
!5099 = !DILocation(line: 371, column: 6, scope: !4490, inlinedAt: !4972)
!5100 = !DILocation(line: 371, column: 26, scope: !4637, inlinedAt: !4972)
!5101 = !DILocation(line: 372, column: 6, scope: !4642, inlinedAt: !4972)
!5102 = !DILocation(line: 372, column: 11, scope: !4642, inlinedAt: !4972)
!5103 = !DILocation(line: 372, column: 6, scope: !4490, inlinedAt: !4972)
!5104 = !DILocation(line: 372, column: 26, scope: !4642, inlinedAt: !4972)
!5105 = !DILocation(line: 373, column: 6, scope: !4647, inlinedAt: !4972)
!5106 = !DILocation(line: 373, column: 11, scope: !4647, inlinedAt: !4972)
!5107 = !DILocation(line: 373, column: 6, scope: !4490, inlinedAt: !4972)
!5108 = !DILocation(line: 373, column: 26, scope: !4647, inlinedAt: !4972)
!5109 = !DILocation(line: 374, column: 6, scope: !4652, inlinedAt: !4972)
!5110 = !DILocation(line: 374, column: 11, scope: !4652, inlinedAt: !4972)
!5111 = !DILocation(line: 374, column: 6, scope: !4490, inlinedAt: !4972)
!5112 = !DILocation(line: 374, column: 26, scope: !4652, inlinedAt: !4972)
!5113 = !DILocation(line: 375, column: 6, scope: !4657, inlinedAt: !4972)
!5114 = !DILocation(line: 375, column: 11, scope: !4657, inlinedAt: !4972)
!5115 = !DILocation(line: 375, column: 6, scope: !4490, inlinedAt: !4972)
!5116 = !DILocation(line: 375, column: 27, scope: !4657, inlinedAt: !4972)
!5117 = !DILocation(line: 376, column: 6, scope: !4662, inlinedAt: !4972)
!5118 = !DILocation(line: 376, column: 11, scope: !4662, inlinedAt: !4972)
!5119 = !DILocation(line: 376, column: 6, scope: !4490, inlinedAt: !4972)
!5120 = !DILocation(line: 376, column: 32, scope: !4662, inlinedAt: !4972)
!5121 = !DILocation(line: 377, column: 6, scope: !4667, inlinedAt: !4972)
!5122 = !DILocation(line: 377, column: 11, scope: !4667, inlinedAt: !4972)
!5123 = !DILocation(line: 377, column: 6, scope: !4490, inlinedAt: !4972)
!5124 = !DILocation(line: 377, column: 32, scope: !4667, inlinedAt: !4972)
!5125 = !DILocation(line: 378, column: 6, scope: !4672, inlinedAt: !4972)
!5126 = !DILocation(line: 378, column: 11, scope: !4672, inlinedAt: !4972)
!5127 = !DILocation(line: 378, column: 6, scope: !4490, inlinedAt: !4972)
!5128 = !DILocation(line: 378, column: 32, scope: !4672, inlinedAt: !4972)
!5129 = !DILocation(line: 379, column: 6, scope: !4677, inlinedAt: !4972)
!5130 = !DILocation(line: 379, column: 11, scope: !4677, inlinedAt: !4972)
!5131 = !DILocation(line: 379, column: 6, scope: !4490, inlinedAt: !4972)
!5132 = !DILocation(line: 379, column: 33, scope: !4677, inlinedAt: !4972)
!5133 = !DILocation(line: 380, column: 6, scope: !4682, inlinedAt: !4972)
!5134 = !DILocation(line: 380, column: 11, scope: !4682, inlinedAt: !4972)
!5135 = !DILocation(line: 380, column: 6, scope: !4490, inlinedAt: !4972)
!5136 = !DILocation(line: 380, column: 33, scope: !4682, inlinedAt: !4972)
!5137 = !DILocation(line: 381, column: 6, scope: !4687, inlinedAt: !4972)
!5138 = !DILocation(line: 381, column: 11, scope: !4687, inlinedAt: !4972)
!5139 = !DILocation(line: 381, column: 6, scope: !4490, inlinedAt: !4972)
!5140 = !DILocation(line: 381, column: 33, scope: !4687, inlinedAt: !4972)
!5141 = !DILocation(line: 382, column: 2, scope: !4692, inlinedAt: !4972)
!5142 = !DILocation(line: 382, column: 2, scope: !4696, inlinedAt: !4972)
!5143 = !DILocation(line: 382, column: 2, scope: !4697, inlinedAt: !4972)
!5144 = !DILocation(line: 386, column: 1, scope: !4490, inlinedAt: !4972)
!5145 = !DILocation(line: 547, column: 9, scope: !4473, inlinedAt: !4965)
!5146 = !DILocation(line: 549, column: 8, scope: !4703, inlinedAt: !4965)
!5147 = !DILocation(line: 549, column: 7, scope: !4473, inlinedAt: !4965)
!5148 = !DILocation(line: 550, column: 4, scope: !4703, inlinedAt: !4965)
!5149 = !DILocation(line: 553, column: 33, scope: !4473, inlinedAt: !4965)
!5150 = !DILocation(line: 325, column: 6, scope: !4708, inlinedAt: !4970)
!5151 = !DILocation(line: 325, column: 6, scope: !4484, inlinedAt: !4970)
!5152 = !DILocation(line: 326, column: 3, scope: !4708, inlinedAt: !4970)
!5153 = !DILocation(line: 332, column: 9, scope: !4484, inlinedAt: !4970)
!5154 = !DILocation(line: 332, column: 15, scope: !4484, inlinedAt: !4970)
!5155 = !DILocation(line: 332, column: 2, scope: !4484, inlinedAt: !4970)
!5156 = !DILocation(line: 336, column: 1, scope: !4484, inlinedAt: !4970)
!5157 = !DILocation(line: 553, column: 5, scope: !4473, inlinedAt: !4965)
!5158 = !DILocation(line: 553, column: 41, scope: !4473, inlinedAt: !4965)
!5159 = !DILocation(line: 554, column: 5, scope: !4473, inlinedAt: !4965)
!5160 = !DILocation(line: 554, column: 12, scope: !4473, inlinedAt: !4965)
!5161 = !DILocation(line: 448, column: 31, scope: !4468, inlinedAt: !4964)
!5162 = !DILocation(line: 448, column: 34, scope: !4468, inlinedAt: !4964)
!5163 = !DILocation(line: 448, column: 14, scope: !4468, inlinedAt: !4964)
!5164 = !DILocation(line: 450, column: 22, scope: !4468, inlinedAt: !4964)
!5165 = !DILocation(line: 450, column: 25, scope: !4468, inlinedAt: !4964)
!5166 = !DILocation(line: 450, column: 30, scope: !4468, inlinedAt: !4964)
!5167 = !DILocation(line: 450, column: 36, scope: !4468, inlinedAt: !4964)
!5168 = !DILocation(line: 450, column: 8, scope: !4468, inlinedAt: !4964)
!5169 = !DILocation(line: 450, column: 6, scope: !4468, inlinedAt: !4964)
!5170 = !DILocation(line: 451, column: 9, scope: !4468, inlinedAt: !4964)
!5171 = !DILocation(line: 552, column: 3, scope: !4473, inlinedAt: !4965)
!5172 = !DILocation(line: 557, column: 19, scope: !4475, inlinedAt: !4965)
!5173 = !DILocation(line: 557, column: 25, scope: !4475, inlinedAt: !4965)
!5174 = !DILocation(line: 557, column: 9, scope: !4475, inlinedAt: !4965)
!5175 = !DILocation(line: 557, column: 2, scope: !4475, inlinedAt: !4965)
!5176 = !DILocation(line: 558, column: 1, scope: !4475, inlinedAt: !4965)
!5177 = !DILocation(line: 218, column: 6, scope: !4929)
!5178 = !DILocation(line: 219, column: 6, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 219, column: 6)
!5180 = !DILocation(line: 219, column: 10, scope: !5179)
!5181 = !DILocation(line: 219, column: 6, scope: !4929)
!5182 = !DILocation(line: 220, column: 3, scope: !5179)
!5183 = !DILocation(line: 224, column: 11, scope: !4929)
!5184 = !DILocation(line: 224, column: 2, scope: !4929)
!5185 = !DILocation(line: 224, column: 9, scope: !4929)
!5186 = !DILocation(line: 225, column: 12, scope: !4929)
!5187 = !DILocation(line: 225, column: 11, scope: !4929)
!5188 = !DILocation(line: 225, column: 2, scope: !4929)
!5189 = !DILocation(line: 225, column: 9, scope: !4929)
!5190 = !DILocation(line: 226, column: 12, scope: !4929)
!5191 = !DILocation(line: 226, column: 11, scope: !4929)
!5192 = !DILocation(line: 226, column: 2, scope: !4929)
!5193 = !DILocation(line: 226, column: 9, scope: !4929)
!5194 = !DILocation(line: 227, column: 20, scope: !4929)
!5195 = !DILocation(line: 227, column: 27, scope: !4929)
!5196 = !DILocation(line: 227, column: 11, scope: !4929)
!5197 = !DILocation(line: 227, column: 18, scope: !4929)
!5198 = !DILocation(line: 227, column: 2, scope: !4929)
!5199 = !DILocation(line: 227, column: 9, scope: !4929)
!5200 = !DILocation(line: 233, column: 14, scope: !4929)
!5201 = !DILocation(line: 233, column: 24, scope: !4929)
!5202 = !DILocation(line: 45, column: 26, scope: !4823, inlinedAt: !4956)
!5203 = !DILocation(line: 86, column: 20, scope: !4829, inlinedAt: !4959)
!5204 = !DILocation(line: 86, column: 23, scope: !4829, inlinedAt: !4959)
!5205 = !DILocation(line: 86, column: 2, scope: !4829, inlinedAt: !4959)
!5206 = !DILocation(line: 87, column: 2, scope: !4829, inlinedAt: !4959)
!5207 = !DILocation(line: 46, column: 18, scope: !4823, inlinedAt: !4956)
!5208 = !DILocation(line: 46, column: 21, scope: !4823, inlinedAt: !4956)
!5209 = !DILocation(line: 41, column: 2, scope: !4891, inlinedAt: !4955)
!5210 = !DILocation(line: 235, column: 22, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 235, column: 6)
!5212 = !DILocation(line: 235, column: 32, scope: !5211)
!5213 = !DILocation(line: 235, column: 38, scope: !5211)
!5214 = !DILocation(line: 237, column: 12, scope: !5211)
!5215 = !DILocation(line: 237, column: 22, scope: !5211)
!5216 = !DILocation(line: 237, column: 40, scope: !5211)
!5217 = !DILocation(line: 235, column: 6, scope: !5211)
!5218 = !DILocation(line: 238, column: 25, scope: !5211)
!5219 = !DILocation(line: 235, column: 6, scope: !4929)
!5220 = !DILocation(line: 242, column: 2, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 238, column: 31)
!5222 = !DILocation(line: 245, column: 15, scope: !4929)
!5223 = !DILocation(line: 246, column: 13, scope: !4945)
!5224 = !DILocation(line: 246, column: 7, scope: !4945)
!5225 = !DILocation(line: 246, column: 19, scope: !4944)
!5226 = !DILocation(line: 246, column: 25, scope: !4944)
!5227 = !DILocation(line: 246, column: 48, scope: !4944)
!5228 = !DILocation(line: 246, column: 53, scope: !4944)
!5229 = !DILocation(line: 246, column: 52, scope: !4944)
!5230 = !DILocation(line: 0, scope: !4944)
!5231 = !DILocation(line: 246, column: 2, scope: !4945)
!5232 = !DILocation(line: 248, column: 3, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 248, column: 3)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 248, column: 3)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 248, column: 3)
!5236 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 248, column: 3)
!5237 = !DILocation(line: 249, column: 20, scope: !4942)
!5238 = !DILocation(line: 249, column: 30, scope: !4942)
!5239 = !DILocation(line: 27, column: 25, scope: !4940, inlinedAt: !4941)
!5240 = !DILocation(line: 71, column: 19, scope: !4947, inlinedAt: !4949)
!5241 = !DILocation(line: 71, column: 22, scope: !4947, inlinedAt: !4949)
!5242 = !DILocation(line: 71, column: 2, scope: !4947, inlinedAt: !4949)
!5243 = !DILocation(line: 72, column: 2, scope: !4947, inlinedAt: !4949)
!5244 = !DILocation(line: 28, column: 26, scope: !4940, inlinedAt: !4941)
!5245 = !DILocation(line: 29, column: 9, scope: !4933, inlinedAt: !4939)
!5246 = !DILocation(line: 249, column: 7, scope: !4942)
!5247 = !DILocation(line: 249, column: 7, scope: !4943)
!5248 = !DILocation(line: 250, column: 17, scope: !4942)
!5249 = !DILocation(line: 250, column: 4, scope: !4942)
!5250 = !DILocation(line: 251, column: 2, scope: !4943)
!5251 = !DILocation(line: 247, column: 14, scope: !4944)
!5252 = !DILocation(line: 246, column: 2, scope: !4944)
!5253 = distinct !{!5253, !5231, !5254}
!5254 = !DILocation(line: 251, column: 2, scope: !4945)
!5255 = !DILocation(line: 253, column: 7, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 253, column: 6)
!5257 = !DILocation(line: 253, column: 6, scope: !5256)
!5258 = !DILocation(line: 253, column: 21, scope: !5256)
!5259 = !DILocation(line: 253, column: 25, scope: !5256)
!5260 = !DILocation(line: 253, column: 32, scope: !5256)
!5261 = !DILocation(line: 253, column: 42, scope: !5256)
!5262 = !DILocation(line: 253, column: 29, scope: !5256)
!5263 = !DILocation(line: 253, column: 6, scope: !4929)
!5264 = !DILocation(line: 255, column: 10, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 253, column: 56)
!5266 = !DILocation(line: 255, column: 20, scope: !5265)
!5267 = !DILocation(line: 255, column: 4, scope: !5265)
!5268 = !DILocation(line: 255, column: 8, scope: !5265)
!5269 = !DILocation(line: 256, column: 10, scope: !5265)
!5270 = !DILocation(line: 256, column: 20, scope: !5265)
!5271 = !DILocation(line: 256, column: 4, scope: !5265)
!5272 = !DILocation(line: 256, column: 8, scope: !5265)
!5273 = !DILocation(line: 257, column: 2, scope: !5265)
!5274 = !DILocation(line: 259, column: 8, scope: !4929)
!5275 = !DILocation(line: 259, column: 2, scope: !4929)
!5276 = !DILocation(line: 261, column: 9, scope: !4929)
!5277 = !DILocation(line: 261, column: 2, scope: !4929)
!5278 = !DILocation(line: 262, column: 1, scope: !4929)
!5279 = distinct !DISubprogram(name: "usb_pcwd_set_heartbeat", scope: !3, file: !3, line: 310, type: !5280, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!141, !3818, !141}
!5282 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !5279, file: !3, line: 310, type: !3818)
!5283 = !DILocation(line: 310, column: 60, scope: !5279)
!5284 = !DILocalVariable(name: "t", arg: 2, scope: !5279, file: !3, line: 310, type: !141)
!5285 = !DILocation(line: 310, column: 74, scope: !5279)
!5286 = !DILocalVariable(name: "msb", scope: !5279, file: !3, line: 312, type: !382)
!5287 = !DILocation(line: 312, column: 16, scope: !5279)
!5288 = !DILocation(line: 312, column: 22, scope: !5279)
!5289 = !DILocation(line: 312, column: 24, scope: !5279)
!5290 = !DILocalVariable(name: "lsb", scope: !5279, file: !3, line: 313, type: !382)
!5291 = !DILocation(line: 313, column: 16, scope: !5279)
!5292 = !DILocation(line: 313, column: 22, scope: !5279)
!5293 = !DILocation(line: 313, column: 24, scope: !5279)
!5294 = !DILocation(line: 315, column: 7, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 315, column: 6)
!5296 = !DILocation(line: 315, column: 9, scope: !5295)
!5297 = !DILocation(line: 315, column: 19, scope: !5295)
!5298 = !DILocation(line: 315, column: 23, scope: !5295)
!5299 = !DILocation(line: 315, column: 25, scope: !5295)
!5300 = !DILocation(line: 315, column: 6, scope: !5279)
!5301 = !DILocation(line: 316, column: 3, scope: !5295)
!5302 = !DILocation(line: 319, column: 24, scope: !5279)
!5303 = !DILocation(line: 319, column: 2, scope: !5279)
!5304 = !DILocation(line: 321, column: 14, scope: !5279)
!5305 = !DILocation(line: 321, column: 12, scope: !5279)
!5306 = !DILocation(line: 322, column: 2, scope: !5279)
!5307 = !DILocation(line: 323, column: 1, scope: !5279)
!5308 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5309, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{null, !3710, !131}
!5311 = !DILocalVariable(name: "intf", arg: 1, scope: !5308, file: !6, line: 268, type: !3710)
!5312 = !DILocation(line: 268, column: 59, scope: !5308)
!5313 = !DILocalVariable(name: "data", arg: 2, scope: !5308, file: !6, line: 268, type: !131)
!5314 = !DILocation(line: 268, column: 71, scope: !5308)
!5315 = !DILocation(line: 270, column: 19, scope: !5308)
!5316 = !DILocation(line: 270, column: 25, scope: !5308)
!5317 = !DILocation(line: 270, column: 30, scope: !5308)
!5318 = !DILocation(line: 270, column: 2, scope: !5308)
!5319 = !DILocation(line: 271, column: 1, scope: !5308)
!5320 = distinct !DISubprogram(name: "usb_pcwd_delete", scope: !3, file: !3, line: 585, type: !5321, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{null, !3818}
!5323 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !5320, file: !3, line: 585, type: !3818)
!5324 = !DILocation(line: 585, column: 61, scope: !5320)
!5325 = !DILocation(line: 587, column: 15, scope: !5320)
!5326 = !DILocation(line: 587, column: 25, scope: !5320)
!5327 = !DILocation(line: 587, column: 2, scope: !5320)
!5328 = !DILocation(line: 588, column: 20, scope: !5320)
!5329 = !DILocation(line: 588, column: 30, scope: !5320)
!5330 = !DILocation(line: 588, column: 36, scope: !5320)
!5331 = !DILocation(line: 588, column: 46, scope: !5320)
!5332 = !DILocation(line: 589, column: 6, scope: !5320)
!5333 = !DILocation(line: 589, column: 16, scope: !5320)
!5334 = !DILocation(line: 589, column: 29, scope: !5320)
!5335 = !DILocation(line: 589, column: 39, scope: !5320)
!5336 = !DILocation(line: 588, column: 2, scope: !5320)
!5337 = !DILocation(line: 590, column: 8, scope: !5320)
!5338 = !DILocation(line: 590, column: 2, scope: !5320)
!5339 = !DILocation(line: 591, column: 1, scope: !5320)
!5340 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !88, file: !88, line: 542, type: !4437, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5341 = !DILocalVariable(name: "epd", arg: 1, scope: !5340, file: !88, line: 543, type: !4439)
!5342 = !DILocation(line: 543, column: 43, scope: !5340)
!5343 = !DILocation(line: 545, column: 11, scope: !5340)
!5344 = !DILocation(line: 545, column: 16, scope: !5340)
!5345 = !DILocation(line: 545, column: 29, scope: !5340)
!5346 = !DILocation(line: 545, column: 59, scope: !5340)
!5347 = !DILocation(line: 545, column: 2, scope: !5340)
!5348 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !88, file: !88, line: 492, type: !4437, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5349 = !DILocalVariable(name: "epd", arg: 1, scope: !5348, file: !88, line: 492, type: !4439)
!5350 = !DILocation(line: 492, column: 77, scope: !5348)
!5351 = !DILocation(line: 494, column: 11, scope: !5348)
!5352 = !DILocation(line: 494, column: 16, scope: !5348)
!5353 = !DILocation(line: 494, column: 33, scope: !5348)
!5354 = !DILocation(line: 494, column: 58, scope: !5348)
!5355 = !DILocation(line: 494, column: 2, scope: !5348)
!5356 = distinct !DISubprogram(name: "get_order", scope: !5357, file: !5357, line: 29, type: !5358, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5357 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!141, !283}
!5360 = !DILocalVariable(name: "x", arg: 1, scope: !5361, file: !5362, line: 366, type: !377)
!5361 = distinct !DISubprogram(name: "fls64", scope: !5362, file: !5362, line: 366, type: !5363, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5362 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!141, !377}
!5365 = !DILocation(line: 366, column: 40, scope: !5361, inlinedAt: !5366)
!5366 = distinct !DILocation(line: 46, column: 9, scope: !5356)
!5367 = !DILocalVariable(name: "bitpos", scope: !5361, file: !5362, line: 368, type: !141)
!5368 = !DILocation(line: 368, column: 6, scope: !5361, inlinedAt: !5366)
!5369 = !DILocalVariable(name: "size", arg: 1, scope: !5356, file: !5357, line: 29, type: !283)
!5370 = !DILocation(line: 29, column: 63, scope: !5356)
!5371 = !DILocation(line: 31, column: 27, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5356, file: !5357, line: 31, column: 6)
!5373 = !DILocation(line: 31, column: 6, scope: !5372)
!5374 = !DILocation(line: 31, column: 6, scope: !5356)
!5375 = !DILocation(line: 32, column: 8, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5377, file: !5357, line: 32, column: 7)
!5377 = distinct !DILexicalBlock(scope: !5372, file: !5357, line: 31, column: 34)
!5378 = !DILocation(line: 32, column: 7, scope: !5377)
!5379 = !DILocation(line: 33, column: 4, scope: !5376)
!5380 = !DILocation(line: 35, column: 7, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !5357, line: 35, column: 7)
!5382 = !DILocation(line: 35, column: 12, scope: !5381)
!5383 = !DILocation(line: 35, column: 7, scope: !5377)
!5384 = !DILocation(line: 36, column: 4, scope: !5381)
!5385 = !DILocation(line: 38, column: 10, scope: !5377)
!5386 = !DILocation(line: 38, column: 28, scope: !5377)
!5387 = !DILocation(line: 38, column: 41, scope: !5377)
!5388 = !DILocation(line: 38, column: 3, scope: !5377)
!5389 = !DILocation(line: 41, column: 6, scope: !5356)
!5390 = !DILocation(line: 42, column: 7, scope: !5356)
!5391 = !DILocation(line: 46, column: 15, scope: !5356)
!5392 = !DILocation(line: 374, column: 2, scope: !5361, inlinedAt: !5366)
!5393 = !DILocation(line: 376, column: 14, scope: !5361, inlinedAt: !5366)
!5394 = !{i32 317963}
!5395 = !DILocation(line: 377, column: 9, scope: !5361, inlinedAt: !5366)
!5396 = !DILocation(line: 377, column: 16, scope: !5361, inlinedAt: !5366)
!5397 = !DILocation(line: 46, column: 2, scope: !5356)
!5398 = !DILocation(line: 48, column: 1, scope: !5356)
!5399 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5400, file: !5400, line: 30, type: !5401, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5400 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!141, !376}
!5403 = !DILocation(line: 366, column: 40, scope: !5361, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 32, column: 9, scope: !5399)
!5405 = !DILocation(line: 368, column: 6, scope: !5361, inlinedAt: !5404)
!5406 = !DILocalVariable(name: "n", arg: 1, scope: !5399, file: !5400, line: 30, type: !376)
!5407 = !DILocation(line: 30, column: 21, scope: !5399)
!5408 = !DILocation(line: 32, column: 15, scope: !5399)
!5409 = !DILocation(line: 374, column: 2, scope: !5361, inlinedAt: !5404)
!5410 = !DILocation(line: 376, column: 14, scope: !5361, inlinedAt: !5404)
!5411 = !DILocation(line: 377, column: 9, scope: !5361, inlinedAt: !5404)
!5412 = !DILocation(line: 377, column: 16, scope: !5361, inlinedAt: !5404)
!5413 = !DILocation(line: 32, column: 18, scope: !5399)
!5414 = !DILocation(line: 32, column: 2, scope: !5399)
!5415 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5416, file: !5416, line: 137, type: !5417, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5416 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!131, !889, !3010, !280, !129}
!5419 = !DILocalVariable(name: "s", arg: 1, scope: !5415, file: !5416, line: 137, type: !889)
!5420 = !DILocation(line: 137, column: 54, scope: !5415)
!5421 = !DILocalVariable(name: "object", arg: 2, scope: !5415, file: !5416, line: 137, type: !3010)
!5422 = !DILocation(line: 137, column: 69, scope: !5415)
!5423 = !DILocalVariable(name: "size", arg: 3, scope: !5415, file: !5416, line: 138, type: !280)
!5424 = !DILocation(line: 138, column: 12, scope: !5415)
!5425 = !DILocalVariable(name: "flags", arg: 4, scope: !5415, file: !5416, line: 138, type: !129)
!5426 = !DILocation(line: 138, column: 24, scope: !5415)
!5427 = !DILocation(line: 140, column: 17, scope: !5415)
!5428 = !DILocation(line: 140, column: 2, scope: !5415)
!5429 = distinct !DISubprogram(name: "kasan_check_write", scope: !5430, file: !5430, line: 38, type: !5431, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5430 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!445, !4833, !7}
!5433 = !DILocalVariable(name: "p", arg: 1, scope: !5429, file: !5430, line: 38, type: !4833)
!5434 = !DILocation(line: 38, column: 59, scope: !5429)
!5435 = !DILocalVariable(name: "size", arg: 2, scope: !5429, file: !5430, line: 38, type: !7)
!5436 = !DILocation(line: 38, column: 75, scope: !5429)
!5437 = !DILocation(line: 40, column: 2, scope: !5429)
!5438 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5439, file: !5439, line: 178, type: !5440, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5439 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5440 = !DISubroutineType(types: !5441)
!5441 = !{null, !4833, !280, !141}
!5442 = !DILocalVariable(name: "ptr", arg: 1, scope: !5438, file: !5439, line: 178, type: !4833)
!5443 = !DILocation(line: 178, column: 60, scope: !5438)
!5444 = !DILocalVariable(name: "size", arg: 2, scope: !5438, file: !5439, line: 178, type: !280)
!5445 = !DILocation(line: 178, column: 72, scope: !5438)
!5446 = !DILocalVariable(name: "type", arg: 3, scope: !5438, file: !5439, line: 179, type: !141)
!5447 = !DILocation(line: 179, column: 15, scope: !5438)
!5448 = !DILocation(line: 179, column: 23, scope: !5438)
!5449 = distinct !DISubprogram(name: "kasan_check_read", scope: !5430, file: !5430, line: 34, type: !5431, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5450 = !DILocalVariable(name: "p", arg: 1, scope: !5449, file: !5430, line: 34, type: !4833)
!5451 = !DILocation(line: 34, column: 58, scope: !5449)
!5452 = !DILocalVariable(name: "size", arg: 2, scope: !5449, file: !5430, line: 34, type: !7)
!5453 = !DILocation(line: 34, column: 74, scope: !5449)
!5454 = !DILocation(line: 36, column: 2, scope: !5449)
!5455 = distinct !DISubprogram(name: "usb_pcwd_notify_sys", scope: !3, file: !3, line: 535, type: !4081, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5456 = !DILocalVariable(name: "this", arg: 1, scope: !5455, file: !3, line: 535, type: !4083)
!5457 = !DILocation(line: 535, column: 55, scope: !5455)
!5458 = !DILocalVariable(name: "code", arg: 2, scope: !5455, file: !3, line: 535, type: !283)
!5459 = !DILocation(line: 535, column: 75, scope: !5455)
!5460 = !DILocalVariable(name: "unused", arg: 3, scope: !5455, file: !3, line: 536, type: !131)
!5461 = !DILocation(line: 536, column: 15, scope: !5455)
!5462 = !DILocation(line: 538, column: 6, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 538, column: 6)
!5464 = !DILocation(line: 538, column: 11, scope: !5463)
!5465 = !DILocation(line: 538, column: 23, scope: !5463)
!5466 = !DILocation(line: 538, column: 26, scope: !5463)
!5467 = !DILocation(line: 538, column: 31, scope: !5463)
!5468 = !DILocation(line: 538, column: 6, scope: !5455)
!5469 = !DILocation(line: 539, column: 17, scope: !5463)
!5470 = !DILocation(line: 539, column: 3, scope: !5463)
!5471 = !DILocation(line: 541, column: 2, scope: !5455)
!5472 = distinct !DISubprogram(name: "usb_pcwd_temperature_read", scope: !3, file: !3, line: 507, type: !2671, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5473 = !DILocalVariable(name: "addr", arg: 1, scope: !5474, file: !5475, line: 138, type: !3010)
!5474 = distinct !DISubprogram(name: "check_copy_size", scope: !5475, file: !5475, line: 138, type: !5476, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5475 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!445, !3010, !280, !445}
!5478 = !DILocation(line: 138, column: 29, scope: !5474, inlinedAt: !5479)
!5479 = distinct !DILocation(line: 199, column: 6, scope: !5480, inlinedAt: !5485)
!5480 = distinct !DILexicalBlock(scope: !5482, file: !5481, line: 199, column: 6)
!5481 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5482 = distinct !DISubprogram(name: "copy_to_user", scope: !5481, file: !5481, line: 197, type: !5483, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!283, !131, !3010, !283}
!5485 = distinct !DILocation(line: 515, column: 6, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 515, column: 6)
!5487 = !DILocalVariable(name: "bytes", arg: 2, scope: !5474, file: !5475, line: 138, type: !280)
!5488 = !DILocation(line: 138, column: 42, scope: !5474, inlinedAt: !5479)
!5489 = !DILocalVariable(name: "is_source", arg: 3, scope: !5474, file: !5475, line: 138, type: !445)
!5490 = !DILocation(line: 138, column: 54, scope: !5474, inlinedAt: !5479)
!5491 = !DILocalVariable(name: "sz", scope: !5474, file: !5475, line: 140, type: !141)
!5492 = !DILocation(line: 140, column: 6, scope: !5474, inlinedAt: !5479)
!5493 = !DILocalVariable(name: "__ret_warn_on", scope: !5494, file: !5475, line: 150, type: !141)
!5494 = distinct !DILexicalBlock(scope: !5495, file: !5475, line: 150, column: 6)
!5495 = distinct !DILexicalBlock(scope: !5474, file: !5475, line: 150, column: 6)
!5496 = !DILocation(line: 150, column: 6, scope: !5494, inlinedAt: !5479)
!5497 = !DILocalVariable(name: "to", arg: 1, scope: !5482, file: !5481, line: 197, type: !131)
!5498 = !DILocation(line: 197, column: 27, scope: !5482, inlinedAt: !5485)
!5499 = !DILocalVariable(name: "from", arg: 2, scope: !5482, file: !5481, line: 197, type: !3010)
!5500 = !DILocation(line: 197, column: 43, scope: !5482, inlinedAt: !5485)
!5501 = !DILocalVariable(name: "n", arg: 3, scope: !5482, file: !5481, line: 197, type: !283)
!5502 = !DILocation(line: 197, column: 63, scope: !5482, inlinedAt: !5485)
!5503 = !DILocalVariable(name: "file", arg: 1, scope: !5472, file: !3, line: 507, type: !311)
!5504 = !DILocation(line: 507, column: 55, scope: !5472)
!5505 = !DILocalVariable(name: "data", arg: 2, scope: !5472, file: !3, line: 507, type: !234)
!5506 = !DILocation(line: 507, column: 74, scope: !5472)
!5507 = !DILocalVariable(name: "len", arg: 3, scope: !5472, file: !3, line: 508, type: !280)
!5508 = !DILocation(line: 508, column: 12, scope: !5472)
!5509 = !DILocalVariable(name: "ppos", arg: 4, scope: !5472, file: !3, line: 508, type: !2673)
!5510 = !DILocation(line: 508, column: 25, scope: !5472)
!5511 = !DILocalVariable(name: "temperature", scope: !5472, file: !3, line: 510, type: !141)
!5512 = !DILocation(line: 510, column: 6, scope: !5472)
!5513 = !DILocation(line: 512, column: 31, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 512, column: 6)
!5515 = !DILocation(line: 512, column: 6, scope: !5514)
!5516 = !DILocation(line: 512, column: 6, scope: !5472)
!5517 = !DILocation(line: 513, column: 3, scope: !5514)
!5518 = !DILocation(line: 515, column: 19, scope: !5486)
!5519 = !DILocation(line: 515, column: 25, scope: !5486)
!5520 = !DILocation(line: 199, column: 6, scope: !5480, inlinedAt: !5485)
!5521 = !DILocation(line: 141, column: 6, scope: !5522, inlinedAt: !5479)
!5522 = distinct !DILexicalBlock(scope: !5474, file: !5475, line: 141, column: 6)
!5523 = !DILocation(line: 0, scope: !5522, inlinedAt: !5479)
!5524 = !DILocation(line: 141, column: 6, scope: !5474, inlinedAt: !5479)
!5525 = !DILocation(line: 142, column: 29, scope: !5526, inlinedAt: !5479)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !5475, line: 142, column: 7)
!5527 = distinct !DILexicalBlock(scope: !5522, file: !5475, line: 141, column: 39)
!5528 = !DILocation(line: 142, column: 8, scope: !5526, inlinedAt: !5479)
!5529 = !DILocation(line: 142, column: 7, scope: !5527, inlinedAt: !5479)
!5530 = !DILocation(line: 143, column: 18, scope: !5526, inlinedAt: !5479)
!5531 = !DILocation(line: 143, column: 22, scope: !5526, inlinedAt: !5479)
!5532 = !DILocation(line: 143, column: 4, scope: !5526, inlinedAt: !5479)
!5533 = !DILocation(line: 144, column: 12, scope: !5534, inlinedAt: !5479)
!5534 = distinct !DILexicalBlock(scope: !5526, file: !5475, line: 144, column: 12)
!5535 = !DILocation(line: 144, column: 12, scope: !5526, inlinedAt: !5479)
!5536 = !DILocation(line: 145, column: 4, scope: !5534, inlinedAt: !5479)
!5537 = !DILocation(line: 147, column: 4, scope: !5534, inlinedAt: !5479)
!5538 = !DILocation(line: 148, column: 3, scope: !5527, inlinedAt: !5479)
!5539 = !DILocation(line: 150, column: 6, scope: !5540, inlinedAt: !5479)
!5540 = distinct !DILexicalBlock(scope: !5494, file: !5475, line: 150, column: 6)
!5541 = !DILocation(line: 150, column: 6, scope: !5542, inlinedAt: !5479)
!5542 = distinct !DILexicalBlock(scope: !5543, file: !5475, line: 150, column: 6)
!5543 = distinct !DILexicalBlock(scope: !5540, file: !5475, line: 150, column: 6)
!5544 = !{i32 -2145538869, i32 -2145538840, i32 -2145538794, i32 -2145538736, i32 -2145538682, i32 -2145538628, i32 -2145538573, i32 -2145538542}
!5545 = !DILocation(line: 150, column: 6, scope: !5546, inlinedAt: !5479)
!5546 = distinct !DILexicalBlock(scope: !5543, file: !5475, line: 150, column: 6)
!5547 = !{i32 -2145538122, i32 -2145538115, i32 -2145538063, i32 -2145538032, i32 -2145538002}
!5548 = !DILocation(line: 150, column: 6, scope: !5543, inlinedAt: !5479)
!5549 = !DILocation(line: 150, column: 6, scope: !5495, inlinedAt: !5479)
!5550 = !DILocation(line: 150, column: 6, scope: !5474, inlinedAt: !5479)
!5551 = !DILocation(line: 151, column: 3, scope: !5495, inlinedAt: !5479)
!5552 = !DILocation(line: 152, column: 20, scope: !5474, inlinedAt: !5479)
!5553 = !DILocation(line: 152, column: 26, scope: !5474, inlinedAt: !5479)
!5554 = !DILocation(line: 152, column: 33, scope: !5474, inlinedAt: !5479)
!5555 = !DILocation(line: 152, column: 2, scope: !5474, inlinedAt: !5479)
!5556 = !DILocation(line: 153, column: 2, scope: !5474, inlinedAt: !5479)
!5557 = !DILocation(line: 154, column: 1, scope: !5474, inlinedAt: !5479)
!5558 = !DILocation(line: 199, column: 6, scope: !5482, inlinedAt: !5485)
!5559 = !DILocation(line: 200, column: 21, scope: !5480, inlinedAt: !5485)
!5560 = !DILocation(line: 200, column: 25, scope: !5480, inlinedAt: !5485)
!5561 = !DILocation(line: 200, column: 31, scope: !5480, inlinedAt: !5485)
!5562 = !DILocation(line: 200, column: 7, scope: !5480, inlinedAt: !5485)
!5563 = !DILocation(line: 200, column: 5, scope: !5480, inlinedAt: !5485)
!5564 = !DILocation(line: 200, column: 3, scope: !5480, inlinedAt: !5485)
!5565 = !DILocation(line: 201, column: 9, scope: !5482, inlinedAt: !5485)
!5566 = !DILocation(line: 515, column: 6, scope: !5486)
!5567 = !DILocation(line: 515, column: 6, scope: !5472)
!5568 = !DILocation(line: 516, column: 3, scope: !5486)
!5569 = !DILocation(line: 518, column: 2, scope: !5472)
!5570 = !DILocation(line: 519, column: 1, scope: !5472)
!5571 = distinct !DISubprogram(name: "usb_pcwd_temperature_open", scope: !3, file: !3, line: 521, type: !2717, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5572 = !DILocalVariable(name: "inode", arg: 1, scope: !5571, file: !3, line: 521, type: !384)
!5573 = !DILocation(line: 521, column: 52, scope: !5571)
!5574 = !DILocalVariable(name: "file", arg: 2, scope: !5571, file: !3, line: 521, type: !311)
!5575 = !DILocation(line: 521, column: 72, scope: !5571)
!5576 = !DILocation(line: 523, column: 21, scope: !5571)
!5577 = !DILocation(line: 523, column: 28, scope: !5571)
!5578 = !DILocation(line: 523, column: 9, scope: !5571)
!5579 = !DILocation(line: 523, column: 2, scope: !5571)
!5580 = distinct !DISubprogram(name: "usb_pcwd_temperature_release", scope: !3, file: !3, line: 526, type: !2717, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5581 = !DILocalVariable(name: "inode", arg: 1, scope: !5580, file: !3, line: 526, type: !384)
!5582 = !DILocation(line: 526, column: 55, scope: !5580)
!5583 = !DILocalVariable(name: "file", arg: 2, scope: !5580, file: !3, line: 526, type: !311)
!5584 = !DILocation(line: 526, column: 75, scope: !5580)
!5585 = !DILocation(line: 528, column: 2, scope: !5580)
!5586 = distinct !DISubprogram(name: "usb_pcwd_get_temperature", scope: !3, file: !3, line: 325, type: !5587, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!141, !3818, !660}
!5589 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !5586, file: !3, line: 325, type: !3818)
!5590 = !DILocation(line: 325, column: 62, scope: !5586)
!5591 = !DILocalVariable(name: "temperature", arg: 2, scope: !5586, file: !3, line: 326, type: !660)
!5592 = !DILocation(line: 326, column: 13, scope: !5586)
!5593 = !DILocalVariable(name: "msb", scope: !5586, file: !3, line: 328, type: !382)
!5594 = !DILocation(line: 328, column: 16, scope: !5586)
!5595 = !DILocalVariable(name: "lsb", scope: !5586, file: !3, line: 328, type: !382)
!5596 = !DILocation(line: 328, column: 21, scope: !5586)
!5597 = !DILocation(line: 330, column: 24, scope: !5586)
!5598 = !DILocation(line: 330, column: 2, scope: !5586)
!5599 = !DILocation(line: 336, column: 18, scope: !5586)
!5600 = !DILocation(line: 336, column: 22, scope: !5586)
!5601 = !DILocation(line: 336, column: 26, scope: !5586)
!5602 = !DILocation(line: 336, column: 31, scope: !5586)
!5603 = !DILocation(line: 336, column: 3, scope: !5586)
!5604 = !DILocation(line: 336, column: 15, scope: !5586)
!5605 = !DILocation(line: 338, column: 2, scope: !5586)
!5606 = distinct !DISubprogram(name: "copy_overflow", scope: !5475, file: !5475, line: 132, type: !5607, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{null, !141, !283}
!5609 = !DILocalVariable(name: "size", arg: 1, scope: !5606, file: !5475, line: 132, type: !141)
!5610 = !DILocation(line: 132, column: 38, scope: !5606)
!5611 = !DILocalVariable(name: "count", arg: 2, scope: !5606, file: !5475, line: 132, type: !283)
!5612 = !DILocation(line: 132, column: 58, scope: !5606)
!5613 = !DILocalVariable(name: "__ret_warn_on", scope: !5614, file: !5475, line: 134, type: !141)
!5614 = distinct !DILexicalBlock(scope: !5606, file: !5475, line: 134, column: 2)
!5615 = !DILocation(line: 134, column: 2, scope: !5614)
!5616 = !DILocation(line: 134, column: 2, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5614, file: !5475, line: 134, column: 2)
!5618 = !DILocation(line: 134, column: 2, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5617, file: !5475, line: 134, column: 2)
!5620 = !DILocation(line: 134, column: 2, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5619, file: !5475, line: 134, column: 2)
!5622 = !DILocation(line: 134, column: 2, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5619, file: !5475, line: 134, column: 2)
!5624 = !DILocation(line: 134, column: 2, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5623, file: !5475, line: 134, column: 2)
!5626 = !DILocation(line: 134, column: 2, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5623, file: !5475, line: 134, column: 2)
!5628 = !{i32 -2145540693, i32 -2145540664, i32 -2145540618, i32 -2145540560, i32 -2145540506, i32 -2145540452, i32 -2145540397, i32 -2145540366}
!5629 = !DILocation(line: 134, column: 2, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5623, file: !5475, line: 134, column: 2)
!5631 = !{i32 -2145539946, i32 -2145539939, i32 -2145539887, i32 -2145539856, i32 -2145539826}
!5632 = !DILocation(line: 134, column: 2, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5623, file: !5475, line: 134, column: 2)
!5634 = !DILocation(line: 134, column: 2, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5619, file: !5475, line: 134, column: 2)
!5636 = !DILocation(line: 135, column: 1, scope: !5606)
!5637 = distinct !DISubprogram(name: "check_object_size", scope: !5475, file: !5475, line: 122, type: !5638, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{null, !3010, !283, !445}
!5640 = !DILocalVariable(name: "ptr", arg: 1, scope: !5637, file: !5475, line: 122, type: !3010)
!5641 = !DILocation(line: 122, column: 50, scope: !5637)
!5642 = !DILocalVariable(name: "n", arg: 2, scope: !5637, file: !5475, line: 122, type: !283)
!5643 = !DILocation(line: 122, column: 69, scope: !5637)
!5644 = !DILocalVariable(name: "to_user", arg: 3, scope: !5637, file: !5475, line: 123, type: !445)
!5645 = !DILocation(line: 123, column: 15, scope: !5637)
!5646 = !DILocation(line: 124, column: 3, scope: !5637)
!5647 = distinct !DISubprogram(name: "usb_pcwd_write", scope: !3, file: !3, line: 359, type: !2676, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5648 = !DILocalVariable(name: "file", arg: 1, scope: !5647, file: !3, line: 359, type: !311)
!5649 = !DILocation(line: 359, column: 44, scope: !5647)
!5650 = !DILocalVariable(name: "data", arg: 2, scope: !5647, file: !3, line: 359, type: !177)
!5651 = !DILocation(line: 359, column: 69, scope: !5647)
!5652 = !DILocalVariable(name: "len", arg: 3, scope: !5647, file: !3, line: 360, type: !280)
!5653 = !DILocation(line: 360, column: 14, scope: !5647)
!5654 = !DILocalVariable(name: "ppos", arg: 4, scope: !5647, file: !3, line: 360, type: !2673)
!5655 = !DILocation(line: 360, column: 27, scope: !5647)
!5656 = !DILocation(line: 363, column: 6, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 363, column: 6)
!5658 = !DILocation(line: 363, column: 6, scope: !5647)
!5659 = !DILocation(line: 364, column: 8, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 364, column: 7)
!5661 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 363, column: 11)
!5662 = !DILocation(line: 364, column: 7, scope: !5661)
!5663 = !DILocalVariable(name: "i", scope: !5664, file: !3, line: 365, type: !280)
!5664 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 364, column: 18)
!5665 = !DILocation(line: 365, column: 11, scope: !5664)
!5666 = !DILocation(line: 369, column: 19, scope: !5664)
!5667 = !DILocation(line: 373, column: 11, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 373, column: 4)
!5669 = !DILocation(line: 373, column: 9, scope: !5668)
!5670 = !DILocation(line: 373, column: 16, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 373, column: 4)
!5672 = !DILocation(line: 373, column: 21, scope: !5671)
!5673 = !DILocation(line: 373, column: 18, scope: !5671)
!5674 = !DILocation(line: 373, column: 4, scope: !5668)
!5675 = !DILocalVariable(name: "c", scope: !5676, file: !3, line: 374, type: !144)
!5676 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 373, column: 31)
!5677 = !DILocation(line: 374, column: 10, scope: !5676)
!5678 = !DILocation(line: 375, column: 9, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 375, column: 9)
!5680 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 375, column: 9)
!5681 = !DILocalVariable(name: "__ret_gu", scope: !5682, file: !3, line: 375, type: !141)
!5682 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 375, column: 9)
!5683 = !DILocation(line: 375, column: 9, scope: !5682)
!5684 = !DILocalVariable(name: "__val_gu", scope: !5682, file: !3, line: 375, type: !382)
!5685 = !{i32 -2142407137}
!5686 = !DILocation(line: 375, column: 9, scope: !5680)
!5687 = !DILocation(line: 375, column: 9, scope: !5676)
!5688 = !DILocation(line: 376, column: 6, scope: !5680)
!5689 = !DILocation(line: 377, column: 9, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 377, column: 9)
!5691 = !DILocation(line: 377, column: 11, scope: !5690)
!5692 = !DILocation(line: 377, column: 9, scope: !5676)
!5693 = !DILocation(line: 378, column: 21, scope: !5690)
!5694 = !DILocation(line: 378, column: 6, scope: !5690)
!5695 = !DILocation(line: 379, column: 4, scope: !5676)
!5696 = !DILocation(line: 373, column: 27, scope: !5671)
!5697 = !DILocation(line: 373, column: 4, scope: !5671)
!5698 = distinct !{!5698, !5674, !5699}
!5699 = !DILocation(line: 379, column: 4, scope: !5668)
!5700 = !DILocation(line: 380, column: 3, scope: !5664)
!5701 = !DILocation(line: 383, column: 22, scope: !5661)
!5702 = !DILocation(line: 383, column: 3, scope: !5661)
!5703 = !DILocation(line: 384, column: 2, scope: !5661)
!5704 = !DILocation(line: 385, column: 9, scope: !5647)
!5705 = !DILocation(line: 385, column: 2, scope: !5647)
!5706 = !DILocation(line: 386, column: 1, scope: !5647)
!5707 = !DILocation(line: 138, column: 29, scope: !5474, inlinedAt: !5708)
!5708 = distinct !DILocation(line: 199, column: 6, scope: !5480, inlinedAt: !5709)
!5709 = distinct !DILocation(line: 403, column: 10, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 401, column: 15)
!5711 = !DILocation(line: 138, column: 42, scope: !5474, inlinedAt: !5708)
!5712 = !DILocation(line: 138, column: 54, scope: !5474, inlinedAt: !5708)
!5713 = !DILocation(line: 140, column: 6, scope: !5474, inlinedAt: !5708)
!5714 = !DILocation(line: 150, column: 6, scope: !5494, inlinedAt: !5708)
!5715 = !DILocation(line: 197, column: 27, scope: !5482, inlinedAt: !5709)
!5716 = !DILocation(line: 197, column: 43, scope: !5482, inlinedAt: !5709)
!5717 = !DILocation(line: 197, column: 63, scope: !5482, inlinedAt: !5709)
!5718 = !DILocalVariable(name: "file", arg: 1, scope: !4110, file: !3, line: 388, type: !311)
!5719 = !DILocation(line: 388, column: 41, scope: !4110)
!5720 = !DILocalVariable(name: "cmd", arg: 2, scope: !4110, file: !3, line: 388, type: !7)
!5721 = !DILocation(line: 388, column: 60, scope: !4110)
!5722 = !DILocalVariable(name: "arg", arg: 3, scope: !4110, file: !3, line: 389, type: !283)
!5723 = !DILocation(line: 389, column: 21, scope: !4110)
!5724 = !DILocalVariable(name: "argp", scope: !4110, file: !3, line: 391, type: !131)
!5725 = !DILocation(line: 391, column: 15, scope: !4110)
!5726 = !DILocation(line: 391, column: 37, scope: !4110)
!5727 = !DILocation(line: 391, column: 22, scope: !4110)
!5728 = !DILocalVariable(name: "p", scope: !4110, file: !3, line: 392, type: !660)
!5729 = !DILocation(line: 392, column: 14, scope: !4110)
!5730 = !DILocation(line: 392, column: 18, scope: !4110)
!5731 = !DILocation(line: 401, column: 10, scope: !4110)
!5732 = !DILocation(line: 401, column: 2, scope: !4110)
!5733 = !DILocation(line: 403, column: 23, scope: !5710)
!5734 = !DILocation(line: 199, column: 6, scope: !5480, inlinedAt: !5709)
!5735 = !DILocation(line: 141, column: 6, scope: !5522, inlinedAt: !5708)
!5736 = !DILocation(line: 0, scope: !5522, inlinedAt: !5708)
!5737 = !DILocation(line: 141, column: 6, scope: !5474, inlinedAt: !5708)
!5738 = !DILocation(line: 142, column: 29, scope: !5526, inlinedAt: !5708)
!5739 = !DILocation(line: 142, column: 8, scope: !5526, inlinedAt: !5708)
!5740 = !DILocation(line: 142, column: 7, scope: !5527, inlinedAt: !5708)
!5741 = !DILocation(line: 143, column: 18, scope: !5526, inlinedAt: !5708)
!5742 = !DILocation(line: 143, column: 22, scope: !5526, inlinedAt: !5708)
!5743 = !DILocation(line: 143, column: 4, scope: !5526, inlinedAt: !5708)
!5744 = !DILocation(line: 144, column: 12, scope: !5534, inlinedAt: !5708)
!5745 = !DILocation(line: 144, column: 12, scope: !5526, inlinedAt: !5708)
!5746 = !DILocation(line: 145, column: 4, scope: !5534, inlinedAt: !5708)
!5747 = !DILocation(line: 147, column: 4, scope: !5534, inlinedAt: !5708)
!5748 = !DILocation(line: 148, column: 3, scope: !5527, inlinedAt: !5708)
!5749 = !DILocation(line: 150, column: 6, scope: !5540, inlinedAt: !5708)
!5750 = !DILocation(line: 150, column: 6, scope: !5542, inlinedAt: !5708)
!5751 = !DILocation(line: 150, column: 6, scope: !5546, inlinedAt: !5708)
!5752 = !DILocation(line: 150, column: 6, scope: !5543, inlinedAt: !5708)
!5753 = !DILocation(line: 150, column: 6, scope: !5495, inlinedAt: !5708)
!5754 = !DILocation(line: 150, column: 6, scope: !5474, inlinedAt: !5708)
!5755 = !DILocation(line: 151, column: 3, scope: !5495, inlinedAt: !5708)
!5756 = !DILocation(line: 152, column: 20, scope: !5474, inlinedAt: !5708)
!5757 = !DILocation(line: 152, column: 26, scope: !5474, inlinedAt: !5708)
!5758 = !DILocation(line: 152, column: 33, scope: !5474, inlinedAt: !5708)
!5759 = !DILocation(line: 152, column: 2, scope: !5474, inlinedAt: !5708)
!5760 = !DILocation(line: 153, column: 2, scope: !5474, inlinedAt: !5708)
!5761 = !DILocation(line: 154, column: 1, scope: !5474, inlinedAt: !5708)
!5762 = !DILocation(line: 199, column: 6, scope: !5482, inlinedAt: !5709)
!5763 = !DILocation(line: 200, column: 21, scope: !5480, inlinedAt: !5709)
!5764 = !DILocation(line: 200, column: 25, scope: !5480, inlinedAt: !5709)
!5765 = !DILocation(line: 200, column: 31, scope: !5480, inlinedAt: !5709)
!5766 = !DILocation(line: 200, column: 7, scope: !5480, inlinedAt: !5709)
!5767 = !DILocation(line: 200, column: 5, scope: !5480, inlinedAt: !5709)
!5768 = !DILocation(line: 200, column: 3, scope: !5480, inlinedAt: !5709)
!5769 = !DILocation(line: 201, column: 9, scope: !5482, inlinedAt: !5709)
!5770 = !DILocation(line: 403, column: 10, scope: !5710)
!5771 = !DILocation(line: 403, column: 3, scope: !5710)
!5772 = !DILocation(line: 407, column: 10, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 407, column: 10)
!5774 = !DILocalVariable(name: "__ret_pu", scope: !5775, file: !3, line: 407, type: !141)
!5775 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 407, column: 10)
!5776 = !DILocation(line: 407, column: 10, scope: !5775)
!5777 = !DILocalVariable(name: "__ptr_pu", scope: !5775, file: !3, line: 407, type: !131)
!5778 = !DILocalVariable(name: "__val_pu", scope: !5775, file: !3, line: 407, type: !141)
!5779 = !{i32 -2142402984}
!5780 = !DILocation(line: 407, column: 3, scope: !5710)
!5781 = !DILocalVariable(name: "temperature", scope: !5782, file: !3, line: 411, type: !141)
!5782 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 410, column: 2)
!5783 = !DILocation(line: 411, column: 7, scope: !5782)
!5784 = !DILocation(line: 413, column: 32, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 413, column: 7)
!5786 = !DILocation(line: 413, column: 7, scope: !5785)
!5787 = !DILocation(line: 413, column: 7, scope: !5782)
!5788 = !DILocation(line: 414, column: 4, scope: !5785)
!5789 = !DILocation(line: 416, column: 10, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 416, column: 10)
!5791 = !DILocalVariable(name: "__ret_pu", scope: !5792, file: !3, line: 416, type: !141)
!5792 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 416, column: 10)
!5793 = !DILocation(line: 416, column: 10, scope: !5792)
!5794 = !DILocalVariable(name: "__ptr_pu", scope: !5792, file: !3, line: 416, type: !131)
!5795 = !DILocalVariable(name: "__val_pu", scope: !5792, file: !3, line: 416, type: !141)
!5796 = !{i32 -2142401534}
!5797 = !DILocation(line: 416, column: 3, scope: !5782)
!5798 = !DILocalVariable(name: "new_options", scope: !5799, file: !3, line: 421, type: !141)
!5799 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 420, column: 2)
!5800 = !DILocation(line: 421, column: 7, scope: !5799)
!5801 = !DILocalVariable(name: "retval", scope: !5799, file: !3, line: 421, type: !141)
!5802 = !DILocation(line: 421, column: 20, scope: !5799)
!5803 = !DILocation(line: 423, column: 7, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 423, column: 7)
!5805 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 423, column: 7)
!5806 = !DILocalVariable(name: "__ret_gu", scope: !5807, file: !3, line: 423, type: !141)
!5807 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 423, column: 7)
!5808 = !DILocation(line: 423, column: 7, scope: !5807)
!5809 = !DILocalVariable(name: "__val_gu", scope: !5807, file: !3, line: 423, type: !7)
!5810 = !{i32 -2142400157}
!5811 = !DILocation(line: 423, column: 7, scope: !5805)
!5812 = !DILocation(line: 423, column: 7, scope: !5799)
!5813 = !DILocation(line: 424, column: 4, scope: !5805)
!5814 = !DILocation(line: 426, column: 7, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 426, column: 7)
!5816 = !DILocation(line: 426, column: 19, scope: !5815)
!5817 = !DILocation(line: 426, column: 7, scope: !5799)
!5818 = !DILocation(line: 427, column: 18, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 426, column: 40)
!5820 = !DILocation(line: 427, column: 4, scope: !5819)
!5821 = !DILocation(line: 428, column: 11, scope: !5819)
!5822 = !DILocation(line: 429, column: 3, scope: !5819)
!5823 = !DILocation(line: 431, column: 7, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 431, column: 7)
!5825 = !DILocation(line: 431, column: 19, scope: !5824)
!5826 = !DILocation(line: 431, column: 7, scope: !5799)
!5827 = !DILocation(line: 432, column: 19, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 431, column: 39)
!5829 = !DILocation(line: 432, column: 4, scope: !5828)
!5830 = !DILocation(line: 433, column: 11, scope: !5828)
!5831 = !DILocation(line: 434, column: 3, scope: !5828)
!5832 = !DILocation(line: 436, column: 10, scope: !5799)
!5833 = !DILocation(line: 436, column: 3, scope: !5799)
!5834 = !DILocation(line: 440, column: 22, scope: !5710)
!5835 = !DILocation(line: 440, column: 3, scope: !5710)
!5836 = !DILocation(line: 441, column: 3, scope: !5710)
!5837 = !DILocalVariable(name: "new_heartbeat", scope: !5838, file: !3, line: 445, type: !141)
!5838 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 444, column: 2)
!5839 = !DILocation(line: 445, column: 7, scope: !5838)
!5840 = !DILocation(line: 447, column: 7, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 447, column: 7)
!5842 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 447, column: 7)
!5843 = !DILocalVariable(name: "__ret_gu", scope: !5844, file: !3, line: 447, type: !141)
!5844 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 447, column: 7)
!5845 = !DILocation(line: 447, column: 7, scope: !5844)
!5846 = !DILocalVariable(name: "__val_gu", scope: !5844, file: !3, line: 447, type: !7)
!5847 = !{i32 -2142397081}
!5848 = !DILocation(line: 447, column: 7, scope: !5842)
!5849 = !DILocation(line: 447, column: 7, scope: !5838)
!5850 = !DILocation(line: 448, column: 4, scope: !5842)
!5851 = !DILocation(line: 450, column: 30, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 450, column: 7)
!5853 = !DILocation(line: 450, column: 47, scope: !5852)
!5854 = !DILocation(line: 450, column: 7, scope: !5852)
!5855 = !DILocation(line: 450, column: 7, scope: !5838)
!5856 = !DILocation(line: 451, column: 4, scope: !5852)
!5857 = !DILocation(line: 453, column: 22, scope: !5838)
!5858 = !DILocation(line: 453, column: 3, scope: !5838)
!5859 = !DILocation(line: 454, column: 2, scope: !5838)
!5860 = !DILocation(line: 458, column: 10, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 458, column: 10)
!5862 = !DILocalVariable(name: "__ret_pu", scope: !5863, file: !3, line: 458, type: !141)
!5863 = distinct !DILexicalBlock(scope: !5861, file: !3, line: 458, column: 10)
!5864 = !DILocation(line: 458, column: 10, scope: !5863)
!5865 = !DILocalVariable(name: "__ptr_pu", scope: !5863, file: !3, line: 458, type: !131)
!5866 = !DILocalVariable(name: "__val_pu", scope: !5863, file: !3, line: 458, type: !141)
!5867 = !{i32 -2142394634}
!5868 = !DILocation(line: 458, column: 3, scope: !5710)
!5869 = !DILocalVariable(name: "time_left", scope: !5870, file: !3, line: 462, type: !141)
!5870 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 461, column: 2)
!5871 = !DILocation(line: 462, column: 7, scope: !5870)
!5872 = !DILocation(line: 464, column: 29, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 464, column: 7)
!5874 = !DILocation(line: 464, column: 7, scope: !5873)
!5875 = !DILocation(line: 464, column: 7, scope: !5870)
!5876 = !DILocation(line: 465, column: 4, scope: !5873)
!5877 = !DILocation(line: 467, column: 10, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 467, column: 10)
!5879 = !DILocalVariable(name: "__ret_pu", scope: !5880, file: !3, line: 467, type: !141)
!5880 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 467, column: 10)
!5881 = !DILocation(line: 467, column: 10, scope: !5880)
!5882 = !DILocalVariable(name: "__ptr_pu", scope: !5880, file: !3, line: 467, type: !131)
!5883 = !DILocalVariable(name: "__val_pu", scope: !5880, file: !3, line: 467, type: !141)
!5884 = !{i32 -2142393175}
!5885 = !DILocation(line: 467, column: 3, scope: !5870)
!5886 = !DILocation(line: 471, column: 3, scope: !5710)
!5887 = !DILocation(line: 473, column: 1, scope: !4110)
!5888 = distinct !DISubprogram(name: "usb_pcwd_open", scope: !3, file: !3, line: 475, type: !2717, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5889 = !DILocalVariable(name: "inode", arg: 1, scope: !5888, file: !3, line: 475, type: !384)
!5890 = !DILocation(line: 475, column: 40, scope: !5888)
!5891 = !DILocalVariable(name: "file", arg: 2, scope: !5888, file: !3, line: 475, type: !311)
!5892 = !DILocation(line: 475, column: 60, scope: !5888)
!5893 = !DILocation(line: 478, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 478, column: 6)
!5895 = !DILocation(line: 478, column: 6, scope: !5888)
!5896 = !DILocation(line: 479, column: 3, scope: !5894)
!5897 = !DILocation(line: 482, column: 17, scope: !5888)
!5898 = !DILocation(line: 482, column: 2, scope: !5888)
!5899 = !DILocation(line: 483, column: 21, scope: !5888)
!5900 = !DILocation(line: 483, column: 2, scope: !5888)
!5901 = !DILocation(line: 484, column: 21, scope: !5888)
!5902 = !DILocation(line: 484, column: 28, scope: !5888)
!5903 = !DILocation(line: 484, column: 9, scope: !5888)
!5904 = !DILocation(line: 484, column: 2, scope: !5888)
!5905 = !DILocation(line: 485, column: 1, scope: !5888)
!5906 = distinct !DISubprogram(name: "usb_pcwd_release", scope: !3, file: !3, line: 487, type: !2717, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5907 = !DILocalVariable(name: "inode", arg: 1, scope: !5906, file: !3, line: 487, type: !384)
!5908 = !DILocation(line: 487, column: 43, scope: !5906)
!5909 = !DILocalVariable(name: "file", arg: 2, scope: !5906, file: !3, line: 487, type: !311)
!5910 = !DILocation(line: 487, column: 63, scope: !5906)
!5911 = !DILocation(line: 492, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 492, column: 6)
!5913 = !DILocation(line: 492, column: 21, scope: !5912)
!5914 = !DILocation(line: 492, column: 6, scope: !5906)
!5915 = !DILocation(line: 493, column: 17, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 492, column: 28)
!5917 = !DILocation(line: 493, column: 3, scope: !5916)
!5918 = !DILocation(line: 494, column: 2, scope: !5916)
!5919 = !DILocation(line: 495, column: 3, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 494, column: 9)
!5921 = !DILocation(line: 496, column: 22, scope: !5920)
!5922 = !DILocation(line: 496, column: 3, scope: !5920)
!5923 = !DILocation(line: 498, column: 17, scope: !5906)
!5924 = !DILocation(line: 499, column: 2, scope: !5906)
!5925 = !DILocation(line: 500, column: 2, scope: !5906)
!5926 = distinct !DISubprogram(name: "might_fault", scope: !5927, file: !5927, line: 315, type: !1749, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5927 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5928 = !DILocation(line: 315, column: 40, scope: !5926)
!5929 = distinct !DISubprogram(name: "usb_pcwd_keepalive", scope: !3, file: !3, line: 300, type: !4904, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5930 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !5929, file: !3, line: 300, type: !3818)
!5931 = !DILocation(line: 300, column: 56, scope: !5929)
!5932 = !DILocalVariable(name: "dummy", scope: !5929, file: !3, line: 302, type: !382)
!5933 = !DILocation(line: 302, column: 16, scope: !5929)
!5934 = !DILocation(line: 305, column: 24, scope: !5929)
!5935 = !DILocation(line: 305, column: 2, scope: !5929)
!5936 = !DILocation(line: 307, column: 2, scope: !5929)
!5937 = distinct !DISubprogram(name: "usb_pcwd_start", scope: !3, file: !3, line: 264, type: !4904, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5938 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !5937, file: !3, line: 264, type: !3818)
!5939 = !DILocation(line: 264, column: 52, scope: !5937)
!5940 = !DILocalVariable(name: "msb", scope: !5937, file: !3, line: 266, type: !382)
!5941 = !DILocation(line: 266, column: 16, scope: !5937)
!5942 = !DILocalVariable(name: "lsb", scope: !5937, file: !3, line: 267, type: !382)
!5943 = !DILocation(line: 267, column: 16, scope: !5937)
!5944 = !DILocalVariable(name: "retval", scope: !5937, file: !3, line: 268, type: !141)
!5945 = !DILocation(line: 268, column: 6, scope: !5937)
!5946 = !DILocation(line: 271, column: 33, scope: !5937)
!5947 = !DILocation(line: 271, column: 11, scope: !5937)
!5948 = !DILocation(line: 271, column: 9, scope: !5937)
!5949 = !DILocation(line: 274, column: 7, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 274, column: 6)
!5951 = !DILocation(line: 274, column: 14, scope: !5950)
!5952 = !DILocation(line: 274, column: 20, scope: !5950)
!5953 = !DILocation(line: 274, column: 24, scope: !5950)
!5954 = !DILocation(line: 274, column: 28, scope: !5950)
!5955 = !DILocation(line: 274, column: 6, scope: !5937)
!5956 = !DILocation(line: 275, column: 3, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5950, file: !3, line: 274, column: 35)
!5958 = !DILocation(line: 276, column: 3, scope: !5957)
!5959 = !DILocation(line: 279, column: 2, scope: !5937)
!5960 = !DILocation(line: 280, column: 1, scope: !5937)
!5961 = distinct !DISubprogram(name: "usb_pcwd_get_timeleft", scope: !3, file: !3, line: 341, type: !5587, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5962 = !DILocalVariable(name: "usb_pcwd", arg: 1, scope: !5961, file: !3, line: 341, type: !3818)
!5963 = !DILocation(line: 341, column: 59, scope: !5961)
!5964 = !DILocalVariable(name: "time_left", arg: 2, scope: !5961, file: !3, line: 342, type: !660)
!5965 = !DILocation(line: 342, column: 14, scope: !5961)
!5966 = !DILocalVariable(name: "msb", scope: !5961, file: !3, line: 344, type: !382)
!5967 = !DILocation(line: 344, column: 16, scope: !5961)
!5968 = !DILocalVariable(name: "lsb", scope: !5961, file: !3, line: 344, type: !382)
!5969 = !DILocation(line: 344, column: 21, scope: !5961)
!5970 = !DILocation(line: 348, column: 24, scope: !5961)
!5971 = !DILocation(line: 348, column: 2, scope: !5961)
!5972 = !DILocation(line: 350, column: 16, scope: !5961)
!5973 = !DILocation(line: 350, column: 20, scope: !5961)
!5974 = !DILocation(line: 350, column: 28, scope: !5961)
!5975 = !DILocation(line: 350, column: 26, scope: !5961)
!5976 = !DILocation(line: 350, column: 3, scope: !5961)
!5977 = !DILocation(line: 350, column: 13, scope: !5961)
!5978 = !DILocation(line: 352, column: 2, scope: !5961)
!5979 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5980, file: !5980, line: 68, type: !5981, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5980 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5981 = !DISubroutineType(types: !5982)
!5982 = !{!445, !269, !5983}
!5983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5984, size: 64)
!5984 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !283)
!5985 = !DILocalVariable(name: "nr", arg: 1, scope: !5986, file: !5362, line: 136, type: !269)
!5986 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5362, file: !5362, line: 136, type: !5981, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5987 = !DILocation(line: 136, column: 28, scope: !5986, inlinedAt: !5988)
!5988 = distinct !DILocation(line: 71, column: 9, scope: !5979)
!5989 = !DILocalVariable(name: "addr", arg: 2, scope: !5986, file: !5362, line: 136, type: !5983)
!5990 = !DILocation(line: 136, column: 56, scope: !5986, inlinedAt: !5988)
!5991 = !DILocalVariable(name: "c", scope: !5992, file: !5362, line: 138, type: !445)
!5992 = distinct !DILexicalBlock(scope: !5986, file: !5362, line: 138, column: 9)
!5993 = !DILocation(line: 138, column: 9, scope: !5992, inlinedAt: !5988)
!5994 = !DILocalVariable(name: "v", arg: 1, scope: !5995, file: !4830, line: 99, type: !4833)
!5995 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4830, file: !4830, line: 99, type: !4831, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5996 = !DILocation(line: 99, column: 79, scope: !5995, inlinedAt: !5997)
!5997 = distinct !DILocation(line: 70, column: 2, scope: !5979)
!5998 = !DILocalVariable(name: "size", arg: 2, scope: !5995, file: !4830, line: 99, type: !280)
!5999 = !DILocation(line: 99, column: 89, scope: !5995, inlinedAt: !5997)
!6000 = !DILocalVariable(name: "nr", arg: 1, scope: !5979, file: !5980, line: 68, type: !269)
!6001 = !DILocation(line: 68, column: 42, scope: !5979)
!6002 = !DILocalVariable(name: "addr", arg: 2, scope: !5979, file: !5980, line: 68, type: !5983)
!6003 = !DILocation(line: 68, column: 70, scope: !5979)
!6004 = !DILocation(line: 70, column: 31, scope: !5979)
!6005 = !DILocation(line: 70, column: 38, scope: !5979)
!6006 = !DILocation(line: 70, column: 36, scope: !5979)
!6007 = !DILocation(line: 101, column: 20, scope: !5995, inlinedAt: !5997)
!6008 = !DILocation(line: 101, column: 23, scope: !5995, inlinedAt: !5997)
!6009 = !DILocation(line: 101, column: 2, scope: !5995, inlinedAt: !5997)
!6010 = !DILocation(line: 102, column: 2, scope: !5995, inlinedAt: !5997)
!6011 = !DILocation(line: 71, column: 31, scope: !5979)
!6012 = !DILocation(line: 71, column: 35, scope: !5979)
!6013 = !{i32 -2147129772, i32 -2147129676}
!6014 = !DILocation(line: 71, column: 2, scope: !5979)
!6015 = distinct !DISubprogram(name: "clear_bit", scope: !5980, file: !5980, line: 39, type: !6016, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{null, !269, !5983}
!6018 = !DILocalVariable(name: "nr", arg: 1, scope: !6019, file: !5362, line: 72, type: !269)
!6019 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5362, file: !5362, line: 72, type: !6016, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6020 = !DILocation(line: 72, column: 21, scope: !6019, inlinedAt: !6021)
!6021 = distinct !DILocation(line: 42, column: 2, scope: !6015)
!6022 = !DILocalVariable(name: "addr", arg: 2, scope: !6019, file: !5362, line: 72, type: !5983)
!6023 = !DILocation(line: 72, column: 49, scope: !6019, inlinedAt: !6021)
!6024 = !DILocation(line: 84, column: 74, scope: !4829, inlinedAt: !6025)
!6025 = distinct !DILocation(line: 41, column: 2, scope: !6015)
!6026 = !DILocation(line: 84, column: 84, scope: !4829, inlinedAt: !6025)
!6027 = !DILocalVariable(name: "nr", arg: 1, scope: !6015, file: !5980, line: 39, type: !269)
!6028 = !DILocation(line: 39, column: 35, scope: !6015)
!6029 = !DILocalVariable(name: "addr", arg: 2, scope: !6015, file: !5980, line: 39, type: !5983)
!6030 = !DILocation(line: 39, column: 63, scope: !6015)
!6031 = !DILocation(line: 41, column: 26, scope: !6015)
!6032 = !DILocation(line: 41, column: 33, scope: !6015)
!6033 = !DILocation(line: 41, column: 31, scope: !6015)
!6034 = !DILocation(line: 86, column: 20, scope: !4829, inlinedAt: !6025)
!6035 = !DILocation(line: 86, column: 23, scope: !4829, inlinedAt: !6025)
!6036 = !DILocation(line: 86, column: 2, scope: !4829, inlinedAt: !6025)
!6037 = !DILocation(line: 87, column: 2, scope: !4829, inlinedAt: !6025)
!6038 = !DILocation(line: 42, column: 17, scope: !6015)
!6039 = !DILocation(line: 42, column: 21, scope: !6015)
!6040 = !DILocation(line: 74, column: 27, scope: !6041, inlinedAt: !6021)
!6041 = distinct !DILexicalBlock(scope: !6019, file: !5362, line: 74, column: 6)
!6042 = !DILocation(line: 74, column: 6, scope: !6041, inlinedAt: !6021)
!6043 = !DILocation(line: 74, column: 6, scope: !6019, inlinedAt: !6021)
!6044 = !DILocation(line: 76, column: 6, scope: !6045, inlinedAt: !6021)
!6045 = distinct !DILexicalBlock(scope: !6041, file: !5362, line: 74, column: 32)
!6046 = !DILocation(line: 77, column: 13, scope: !6045, inlinedAt: !6021)
!6047 = !DILocation(line: 77, column: 12, scope: !6045, inlinedAt: !6021)
!6048 = !DILocation(line: 75, column: 3, scope: !6045, inlinedAt: !6021)
!6049 = !{i32 -2147133304}
!6050 = !DILocation(line: 78, column: 2, scope: !6045, inlinedAt: !6021)
!6051 = !DILocation(line: 80, column: 8, scope: !6052, inlinedAt: !6021)
!6052 = distinct !DILexicalBlock(scope: !6041, file: !5362, line: 78, column: 9)
!6053 = !DILocation(line: 80, column: 32, scope: !6052, inlinedAt: !6021)
!6054 = !DILocation(line: 79, column: 3, scope: !6052, inlinedAt: !6021)
!6055 = !{i32 -2147133172}
!6056 = !DILocation(line: 43, column: 1, scope: !6015)
!6057 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !6058, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6058 = !DISubroutineType(types: !6059)
!6059 = !{null, !169, !131}
!6060 = !DILocalVariable(name: "dev", arg: 1, scope: !6057, file: !67, line: 660, type: !169)
!6061 = !DILocation(line: 660, column: 51, scope: !6057)
!6062 = !DILocalVariable(name: "data", arg: 2, scope: !6057, file: !67, line: 660, type: !131)
!6063 = !DILocation(line: 660, column: 62, scope: !6057)
!6064 = !DILocation(line: 662, column: 21, scope: !6057)
!6065 = !DILocation(line: 662, column: 2, scope: !6057)
!6066 = !DILocation(line: 662, column: 7, scope: !6057)
!6067 = !DILocation(line: 662, column: 19, scope: !6057)
!6068 = !DILocation(line: 663, column: 1, scope: !6057)
!6069 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6070, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6070 = !DISubroutineType(types: !6071)
!6071 = !{!131, !3710}
!6072 = !DILocalVariable(name: "intf", arg: 1, scope: !6069, file: !6, line: 263, type: !3710)
!6073 = !DILocation(line: 263, column: 60, scope: !6069)
!6074 = !DILocation(line: 265, column: 26, scope: !6069)
!6075 = !DILocation(line: 265, column: 32, scope: !6069)
!6076 = !DILocation(line: 265, column: 9, scope: !6069)
!6077 = !DILocation(line: 265, column: 2, scope: !6069)
!6078 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !6079, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!131, !6081}
!6081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6082, size: 64)
!6082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!6083 = !DILocalVariable(name: "dev", arg: 1, scope: !6078, file: !67, line: 655, type: !6081)
!6084 = !DILocation(line: 655, column: 58, scope: !6078)
!6085 = !DILocation(line: 657, column: 9, scope: !6078)
!6086 = !DILocation(line: 657, column: 14, scope: !6078)
!6087 = !DILocation(line: 657, column: 2, scope: !6078)
