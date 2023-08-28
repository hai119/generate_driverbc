; ModuleID = '../bcout/drivers/input/misc/keyspan_remote.llvm.bc'
source_filename = "drivers/input/misc/keyspan_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_keyspan_driver_init6:\09\09\09"
module asm ".long\09keyspan_driver_init - .\09\09\09"
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
%struct.usb_keyspan = type { [128 x i8], [64 x i8], [32 x i16], %struct.usb_device*, %struct.input_dev*, %struct.usb_interface*, %struct.usb_endpoint_descriptor*, %struct.urb*, i32, i64, i8*, %struct.bit_tester, i32, i32 }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
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
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.bit_tester = type { i32, i32, i32, i32, [32 x i8] }
%struct.keyspan_message = type { i16, i8, i8 }

@__param_str_debug = internal constant [21 x i8] c"keyspan_remote.debug\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !3899
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !3813
@__UNIQUE_ID_debugtype212 = internal constant [34 x i8] c"keyspan_remote.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !3865
@__UNIQUE_ID_debug213 = internal constant [70 x i8] c"keyspan_remote.parm=debug:Enable extra debug messages and information\00", section ".modinfo", align 1, !dbg !3870
@__UNIQUE_ID___addressable_keyspan_driver_init214 = internal global i8* bitcast (i32 ()* @keyspan_driver_init to i8*), section ".discard.addressable", align 8, !dbg !3875
@keyspan_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @keyspan_probe, void (%struct.usb_interface*)* @keyspan_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @keyspan_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !3901
@__exitcall_keyspan_driver_exit = internal global void ()* @keyspan_driver_exit, section ".exitcall.exit", align 8, !dbg !3877
@__UNIQUE_ID_author215 = internal constant [57 x i8] c"keyspan_remote.author=Michael Downey <downey@zymeta.com>\00", section ".modinfo", align 1, !dbg !3882
@__UNIQUE_ID_description216 = internal constant [70 x i8] c"keyspan_remote.description=Driver for the USB Keyspan remote control.\00", section ".modinfo", align 1, !dbg !3887
@__UNIQUE_ID_file217 = internal constant [54 x i8] c"keyspan_remote.file=drivers/input/misc/keyspan_remote\00", section ".modinfo", align 1, !dbg !3889
@__UNIQUE_ID_license218 = internal constant [27 x i8] c"keyspan_remote.license=GPL\00", section ".modinfo", align 1, !dbg !3894
@.str = private unnamed_addr constant [15 x i8] c"keyspan_remote\00", align 1
@keyspan_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1741, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3966
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"USB Keyspan Remote %04x:%04x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@keyspan_key_table = internal constant [32 x i16] [i16 0, i16 0, i16 128, i16 200, i16 0, i16 165, i16 168, i16 159, i16 163, i16 0, i16 0, i16 0, i16 119, i16 115, i16 0, i16 0, i16 0, i16 114, i16 0, i16 103, i16 0, i16 113, i16 105, i16 28, i16 106, i16 0, i16 0, i16 108, i16 0, i16 55, i16 0, i16 139], align 16, !dbg !3962
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s - usb_submit_urb failed with result: %d\0A\00", align 1
@__func__.keyspan_irq_recv = private unnamed_addr constant [17 x i8] c"keyspan_irq_recv\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"%s - Unknown sequence found in system data.\0A\00", align 1
@__func__.keyspan_check_data = private unnamed_addr constant [19 x i8] c"keyspan_check_data\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s - Unknown sequence found in button data.\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%s - Error in message, invalid toggle.\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Bad message received, no stop bit found.\0A\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_debugtype212, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__UNIQUE_ID_debug213, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_keyspan_driver_init214 to i8*), i8* bitcast (void ()* @keyspan_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_keyspan_driver_exit to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_author215, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__UNIQUE_ID_description216, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_file217, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license218, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @keyspan_driver_init() #0 section ".init.text" !dbg !3977 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @keyspan_driver, %struct.module* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3980
  ret i32 %call, !dbg !3980
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @keyspan_driver_exit() #0 section ".exit.text" !dbg !3981 {
entry:
  call void @usb_deregister(%struct.usb_driver* @keyspan_driver) #9, !dbg !3982
  ret void, !dbg !3982
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @keyspan_probe(%struct.usb_interface* %interface, %struct.usb_device_id* %id) #2 !dbg !3983 {
entry:
  %retval = alloca i32, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %remote = alloca %struct.usb_keyspan*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !3984, metadata !DIExpression()), !dbg !3985
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !3988, metadata !DIExpression()), !dbg !3989
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !3990
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !3991
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !3989
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %remote, metadata !3995, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4356, metadata !DIExpression()), !dbg !4357
  %1 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4358
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4359
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4359
  %call1 = call %struct.usb_endpoint_descriptor* @keyspan_get_in_endpoint(%struct.usb_host_interface* %2) #9, !dbg !4360
  store %struct.usb_endpoint_descriptor* %call1, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4361
  %3 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4362
  %tobool = icmp ne %struct.usb_endpoint_descriptor* %3, null, !dbg !4362
  br i1 %tobool, label %if.end, label %if.then, !dbg !4364

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4365
  br label %return, !dbg !4365

if.end:                                           ; preds = %entry
  %call2 = call i8* @kzalloc(i64 376, i32 3264) #9, !dbg !4366
  %4 = bitcast i8* %call2 to %struct.usb_keyspan*, !dbg !4366
  store %struct.usb_keyspan* %4, %struct.usb_keyspan** %remote, align 8, !dbg !4367
  %call3 = call %struct.input_dev* @input_allocate_device() #9, !dbg !4368
  store %struct.input_dev* %call3, %struct.input_dev** %input_dev, align 8, !dbg !4369
  %5 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4370
  %tobool4 = icmp ne %struct.usb_keyspan* %5, null, !dbg !4370
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !4372

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4373
  %tobool5 = icmp ne %struct.input_dev* %6, null, !dbg !4373
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4374

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -12, i32* %error, align 4, !dbg !4375
  br label %fail1, !dbg !4377

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4378
  %8 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4379
  %udev8 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %8, i32 0, i32 3, !dbg !4380
  store %struct.usb_device* %7, %struct.usb_device** %udev8, align 8, !dbg !4381
  %9 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4382
  %10 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4383
  %input = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %10, i32 0, i32 4, !dbg !4384
  store %struct.input_dev* %9, %struct.input_dev** %input, align 8, !dbg !4385
  %11 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4386
  %12 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4387
  %interface9 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %12, i32 0, i32 5, !dbg !4388
  store %struct.usb_interface* %11, %struct.usb_interface** %interface9, align 8, !dbg !4389
  %13 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4390
  %14 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4391
  %in_endpoint = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %14, i32 0, i32 6, !dbg !4392
  store %struct.usb_endpoint_descriptor* %13, %struct.usb_endpoint_descriptor** %in_endpoint, align 8, !dbg !4393
  %15 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4394
  %toggle = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %15, i32 0, i32 13, !dbg !4395
  store i32 -1, i32* %toggle, align 4, !dbg !4396
  %16 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4397
  %17 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4398
  %in_dma = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %17, i32 0, i32 9, !dbg !4399
  %call10 = call i8* @usb_alloc_coherent(%struct.usb_device* %16, i64 8, i32 3264, i64* %in_dma) #9, !dbg !4400
  %18 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4401
  %in_buffer = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %18, i32 0, i32 10, !dbg !4402
  store i8* %call10, i8** %in_buffer, align 8, !dbg !4403
  %19 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4404
  %in_buffer11 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %19, i32 0, i32 10, !dbg !4406
  %20 = load i8*, i8** %in_buffer11, align 8, !dbg !4406
  %tobool12 = icmp ne i8* %20, null, !dbg !4404
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4407

if.then13:                                        ; preds = %if.end7
  store i32 -12, i32* %error, align 4, !dbg !4408
  br label %fail1, !dbg !4410

if.end14:                                         ; preds = %if.end7
  %call15 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4411
  %21 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4412
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %21, i32 0, i32 7, !dbg !4413
  store %struct.urb* %call15, %struct.urb** %irq_urb, align 8, !dbg !4414
  %22 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4415
  %irq_urb16 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %22, i32 0, i32 7, !dbg !4417
  %23 = load %struct.urb*, %struct.urb** %irq_urb16, align 8, !dbg !4417
  %tobool17 = icmp ne %struct.urb* %23, null, !dbg !4415
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4418

if.then18:                                        ; preds = %if.end14
  store i32 -12, i32* %error, align 4, !dbg !4419
  br label %fail2, !dbg !4421

if.end19:                                         ; preds = %if.end14
  %24 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4422
  %call20 = call i32 @keyspan_setup(%struct.usb_device* %24) #9, !dbg !4423
  store i32 %call20, i32* %error, align 4, !dbg !4424
  %25 = load i32, i32* %error, align 4, !dbg !4425
  %tobool21 = icmp ne i32 %25, 0, !dbg !4425
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4427

if.then22:                                        ; preds = %if.end19
  store i32 -19, i32* %error, align 4, !dbg !4428
  br label %fail3, !dbg !4430

if.end23:                                         ; preds = %if.end19
  %26 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4431
  %manufacturer = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 32, !dbg !4433
  %27 = load i8*, i8** %manufacturer, align 8, !dbg !4433
  %tobool24 = icmp ne i8* %27, null, !dbg !4431
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !4434

if.then25:                                        ; preds = %if.end23
  %28 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4435
  %name = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %28, i32 0, i32 0, !dbg !4436
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4435
  %29 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4437
  %manufacturer26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 32, !dbg !4438
  %30 = load i8*, i8** %manufacturer26, align 8, !dbg !4438
  %call27 = call i64 @strlcpy(i8* %arraydecay, i8* %30, i64 128) #9, !dbg !4439
  br label %if.end28, !dbg !4439

if.end28:                                         ; preds = %if.then25, %if.end23
  %31 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4440
  %product = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 31, !dbg !4442
  %32 = load i8*, i8** %product, align 8, !dbg !4442
  %tobool29 = icmp ne i8* %32, null, !dbg !4440
  br i1 %tobool29, label %if.then30, label %if.end42, !dbg !4443

if.then30:                                        ; preds = %if.end28
  %33 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4444
  %manufacturer31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 32, !dbg !4447
  %34 = load i8*, i8** %manufacturer31, align 8, !dbg !4447
  %tobool32 = icmp ne i8* %34, null, !dbg !4444
  br i1 %tobool32, label %if.then33, label %if.end37, !dbg !4448

if.then33:                                        ; preds = %if.then30
  %35 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4449
  %name34 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %35, i32 0, i32 0, !dbg !4450
  %arraydecay35 = getelementptr inbounds [128 x i8], [128 x i8]* %name34, i64 0, i64 0, !dbg !4449
  %call36 = call i64 @strlcat(i8* %arraydecay35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 128) #9, !dbg !4451
  br label %if.end37, !dbg !4451

if.end37:                                         ; preds = %if.then33, %if.then30
  %36 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4452
  %name38 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %36, i32 0, i32 0, !dbg !4453
  %arraydecay39 = getelementptr inbounds [128 x i8], [128 x i8]* %name38, i64 0, i64 0, !dbg !4452
  %37 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4454
  %product40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 31, !dbg !4455
  %38 = load i8*, i8** %product40, align 8, !dbg !4455
  %call41 = call i64 @strlcat(i8* %arraydecay39, i8* %38, i64 128) #9, !dbg !4456
  br label %if.end42, !dbg !4457

if.end42:                                         ; preds = %if.end37, %if.end28
  %39 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4458
  %name43 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %39, i32 0, i32 0, !dbg !4460
  %arraydecay44 = getelementptr inbounds [128 x i8], [128 x i8]* %name43, i64 0, i64 0, !dbg !4458
  %call45 = call i64 @strlen(i8* %arraydecay44) #9, !dbg !4461
  %tobool46 = icmp ne i64 %call45, 0, !dbg !4461
  br i1 %tobool46, label %if.end53, label %if.then47, !dbg !4462

if.then47:                                        ; preds = %if.end42
  %40 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4463
  %name48 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %40, i32 0, i32 0, !dbg !4464
  %arraydecay49 = getelementptr inbounds [128 x i8], [128 x i8]* %name48, i64 0, i64 0, !dbg !4463
  %41 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4465
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 15, !dbg !4465
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !4465
  %42 = load i16, i16* %idVendor, align 8, !dbg !4465
  %conv = zext i16 %42 to i32, !dbg !4465
  %43 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4466
  %descriptor50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 15, !dbg !4466
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor50, i32 0, i32 8, !dbg !4466
  %44 = load i16, i16* %idProduct, align 2, !dbg !4466
  %conv51 = zext i16 %44 to i32, !dbg !4466
  %call52 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay49, i64 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %conv, i32 %conv51) #9, !dbg !4467
  br label %if.end53, !dbg !4467

if.end53:                                         ; preds = %if.then47, %if.end42
  %45 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4468
  %46 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4469
  %phys = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %46, i32 0, i32 1, !dbg !4470
  %arraydecay54 = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !4469
  %call55 = call i32 @usb_make_path(%struct.usb_device* %45, i8* %arraydecay54, i64 64) #9, !dbg !4471
  %47 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4472
  %phys56 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %47, i32 0, i32 1, !dbg !4473
  %arraydecay57 = getelementptr inbounds [64 x i8], [64 x i8]* %phys56, i64 0, i64 0, !dbg !4472
  %call58 = call i64 @strlcat(i8* %arraydecay57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 64) #9, !dbg !4474
  %48 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4475
  %keymap = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %48, i32 0, i32 2, !dbg !4476
  %arraydecay59 = getelementptr inbounds [32 x i16], [32 x i16]* %keymap, i64 0, i64 0, !dbg !4477
  %49 = bitcast i16* %arraydecay59 to i8*, !dbg !4477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 16 bitcast ([32 x i16]* @keyspan_key_table to i8*), i64 64, i1 false), !dbg !4477
  %50 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4478
  %name60 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %50, i32 0, i32 0, !dbg !4479
  %arraydecay61 = getelementptr inbounds [128 x i8], [128 x i8]* %name60, i64 0, i64 0, !dbg !4478
  %51 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4480
  %name62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 0, !dbg !4481
  store i8* %arraydecay61, i8** %name62, align 8, !dbg !4482
  %52 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4483
  %phys63 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %52, i32 0, i32 1, !dbg !4484
  %arraydecay64 = getelementptr inbounds [64 x i8], [64 x i8]* %phys63, i64 0, i64 0, !dbg !4483
  %53 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4485
  %phys65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 1, !dbg !4486
  store i8* %arraydecay64, i8** %phys65, align 8, !dbg !4487
  %54 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4488
  %55 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4489
  %id66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 3, !dbg !4490
  call void @usb_to_input_id(%struct.usb_device* %54, %struct.input_id* %id66) #9, !dbg !4491
  %56 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4492
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 7, !dbg !4493
  %57 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4494
  %dev67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 40, !dbg !4495
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev67, i32 0, i32 1, !dbg !4496
  store %struct.device* %dev, %struct.device** %parent, align 8, !dbg !4497
  %58 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4498
  %keymap68 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %58, i32 0, i32 2, !dbg !4499
  %arraydecay69 = getelementptr inbounds [32 x i16], [32 x i16]* %keymap68, i64 0, i64 0, !dbg !4498
  %59 = bitcast i16* %arraydecay69 to i8*, !dbg !4498
  %60 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4500
  %keycode = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 17, !dbg !4501
  store i8* %59, i8** %keycode, align 8, !dbg !4502
  %61 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4503
  %keycodesize = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 16, !dbg !4504
  store i32 2, i32* %keycodesize, align 8, !dbg !4505
  %62 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4506
  %keycodemax = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 15, !dbg !4507
  store i32 32, i32* %keycodemax, align 4, !dbg !4508
  %63 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4509
  call void @input_set_capability(%struct.input_dev* %63, i32 4, i32 4) #9, !dbg !4510
  %64 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4511
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 5, !dbg !4512
  %arraydecay70 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4511
  call void @__set_bit(i64 1, i64* %arraydecay70) #9, !dbg !4513
  store i32 0, i32* %i, align 4, !dbg !4514
  br label %for.cond, !dbg !4516

for.cond:                                         ; preds = %for.inc, %if.end53
  %65 = load i32, i32* %i, align 4, !dbg !4517
  %conv71 = sext i32 %65 to i64, !dbg !4517
  %cmp = icmp ult i64 %conv71, 32, !dbg !4519
  br i1 %cmp, label %for.body, label %for.end, !dbg !4520

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %i, align 4, !dbg !4521
  %idxprom = sext i32 %66 to i64, !dbg !4522
  %arrayidx = getelementptr [32 x i16], [32 x i16]* @keyspan_key_table, i64 0, i64 %idxprom, !dbg !4522
  %67 = load i16, i16* %arrayidx, align 2, !dbg !4522
  %conv73 = zext i16 %67 to i64, !dbg !4522
  %68 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4523
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 6, !dbg !4524
  %arraydecay74 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4523
  call void @__set_bit(i64 %conv73, i64* %arraydecay74) #9, !dbg !4525
  br label %for.inc, !dbg !4525

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %i, align 4, !dbg !4526
  %inc = add i32 %69, 1, !dbg !4526
  store i32 %inc, i32* %i, align 4, !dbg !4526
  br label %for.cond, !dbg !4527, !llvm.loop !4528

for.end:                                          ; preds = %for.cond
  %70 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4530
  %keybit75 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 6, !dbg !4531
  %arraydecay76 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit75, i64 0, i64 0, !dbg !4530
  call void @__clear_bit(i64 0, i64* %arraydecay76) #9, !dbg !4532
  %71 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4533
  %72 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4534
  %73 = bitcast %struct.usb_keyspan* %72 to i8*, !dbg !4534
  call void @input_set_drvdata(%struct.input_dev* %71, i8* %73) #9, !dbg !4535
  %74 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4536
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %74, i32 0, i32 31, !dbg !4537
  store i32 (%struct.input_dev*)* @keyspan_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !4538
  %75 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4539
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 32, !dbg !4540
  store void (%struct.input_dev*)* @keyspan_close, void (%struct.input_dev*)** %close, align 8, !dbg !4541
  %76 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4542
  %irq_urb77 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %76, i32 0, i32 7, !dbg !4543
  %77 = load %struct.urb*, %struct.urb** %irq_urb77, align 8, !dbg !4543
  %78 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4544
  %udev78 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %78, i32 0, i32 3, !dbg !4545
  %79 = load %struct.usb_device*, %struct.usb_device** %udev78, align 8, !dbg !4545
  %80 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4546
  %udev79 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %80, i32 0, i32 3, !dbg !4546
  %81 = load %struct.usb_device*, %struct.usb_device** %udev79, align 8, !dbg !4546
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4546
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %82, i32 0, i32 2, !dbg !4546
  %83 = load i8, i8* %bEndpointAddress, align 1, !dbg !4546
  %conv80 = zext i8 %83 to i32, !dbg !4546
  %call81 = call i32 @__create_pipe(%struct.usb_device* %81, i32 %conv80) #9, !dbg !4546
  %or = or i32 1073741824, %call81, !dbg !4546
  %or82 = or i32 %or, 128, !dbg !4546
  %84 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4547
  %in_buffer83 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %84, i32 0, i32 10, !dbg !4548
  %85 = load i8*, i8** %in_buffer83, align 8, !dbg !4548
  %86 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4549
  %87 = bitcast %struct.usb_keyspan* %86 to i8*, !dbg !4549
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4550
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %88, i32 0, i32 5, !dbg !4551
  %89 = load i8, i8* %bInterval, align 1, !dbg !4551
  %conv84 = zext i8 %89 to i32, !dbg !4550
  call void @usb_fill_int_urb(%struct.urb* %77, %struct.usb_device* %79, i32 %or82, i8* %85, i32 8, void (%struct.urb*)* @keyspan_irq_recv, i8* %87, i32 %conv84) #9, !dbg !4552
  %90 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4553
  %in_dma85 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %90, i32 0, i32 9, !dbg !4554
  %91 = load i64, i64* %in_dma85, align 8, !dbg !4554
  %92 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4555
  %irq_urb86 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %92, i32 0, i32 7, !dbg !4556
  %93 = load %struct.urb*, %struct.urb** %irq_urb86, align 8, !dbg !4556
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 15, !dbg !4557
  store i64 %91, i64* %transfer_dma, align 8, !dbg !4558
  %94 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4559
  %irq_urb87 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %94, i32 0, i32 7, !dbg !4560
  %95 = load %struct.urb*, %struct.urb** %irq_urb87, align 8, !dbg !4560
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 13, !dbg !4561
  %96 = load i32, i32* %transfer_flags, align 4, !dbg !4562
  %or88 = or i32 %96, 4, !dbg !4562
  store i32 %or88, i32* %transfer_flags, align 4, !dbg !4562
  %97 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4563
  %input89 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %97, i32 0, i32 4, !dbg !4564
  %98 = load %struct.input_dev*, %struct.input_dev** %input89, align 8, !dbg !4564
  %call90 = call i32 @input_register_device(%struct.input_dev* %98) #9, !dbg !4565
  store i32 %call90, i32* %error, align 4, !dbg !4566
  %99 = load i32, i32* %error, align 4, !dbg !4567
  %tobool91 = icmp ne i32 %99, 0, !dbg !4567
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !4569

if.then92:                                        ; preds = %for.end
  br label %fail3, !dbg !4570

if.end93:                                         ; preds = %for.end
  %100 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4571
  %101 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4572
  %102 = bitcast %struct.usb_keyspan* %101 to i8*, !dbg !4572
  call void @usb_set_intfdata(%struct.usb_interface* %100, i8* %102) #9, !dbg !4573
  store i32 0, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

fail3:                                            ; preds = %if.then92, %if.then22
  call void @llvm.dbg.label(metadata !4575), !dbg !4576
  %103 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4577
  %irq_urb94 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %103, i32 0, i32 7, !dbg !4578
  %104 = load %struct.urb*, %struct.urb** %irq_urb94, align 8, !dbg !4578
  call void @usb_free_urb(%struct.urb* %104) #9, !dbg !4579
  br label %fail2, !dbg !4579

fail2:                                            ; preds = %fail3, %if.then18
  call void @llvm.dbg.label(metadata !4580), !dbg !4581
  %105 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4582
  %106 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4583
  %in_buffer95 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %106, i32 0, i32 10, !dbg !4584
  %107 = load i8*, i8** %in_buffer95, align 8, !dbg !4584
  %108 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4585
  %in_dma96 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %108, i32 0, i32 9, !dbg !4586
  %109 = load i64, i64* %in_dma96, align 8, !dbg !4586
  call void @usb_free_coherent(%struct.usb_device* %105, i64 8, i8* %107, i64 %109) #9, !dbg !4587
  br label %fail1, !dbg !4587

fail1:                                            ; preds = %fail2, %if.then13, %if.then6
  call void @llvm.dbg.label(metadata !4588), !dbg !4589
  %110 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4590
  %111 = bitcast %struct.usb_keyspan* %110 to i8*, !dbg !4590
  call void @kfree(i8* %111) #9, !dbg !4591
  %112 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4592
  call void @input_free_device(%struct.input_dev* %112) #9, !dbg !4593
  %113 = load i32, i32* %error, align 4, !dbg !4594
  store i32 %113, i32* %retval, align 4, !dbg !4595
  br label %return, !dbg !4595

return:                                           ; preds = %fail1, %if.end93, %if.then
  %114 = load i32, i32* %retval, align 4, !dbg !4596
  ret i32 %114, !dbg !4596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @keyspan_disconnect(%struct.usb_interface* %interface) #2 !dbg !4597 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %remote = alloca %struct.usb_keyspan*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %remote, metadata !4600, metadata !DIExpression()), !dbg !4601
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4602
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4603
  %1 = bitcast i8* %call to %struct.usb_keyspan*, !dbg !4603
  store %struct.usb_keyspan* %1, %struct.usb_keyspan** %remote, align 8, !dbg !4604
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4605
  call void @usb_set_intfdata(%struct.usb_interface* %2, i8* null) #9, !dbg !4606
  %3 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4607
  %tobool = icmp ne %struct.usb_keyspan* %3, null, !dbg !4607
  br i1 %tobool, label %if.then, label %if.end, !dbg !4609

if.then:                                          ; preds = %entry
  %4 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4610
  %input = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %4, i32 0, i32 4, !dbg !4612
  %5 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4612
  call void @input_unregister_device(%struct.input_dev* %5) #9, !dbg !4613
  %6 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4614
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %6, i32 0, i32 7, !dbg !4615
  %7 = load %struct.urb*, %struct.urb** %irq_urb, align 8, !dbg !4615
  call void @usb_kill_urb(%struct.urb* %7) #9, !dbg !4616
  %8 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4617
  %irq_urb1 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %8, i32 0, i32 7, !dbg !4618
  %9 = load %struct.urb*, %struct.urb** %irq_urb1, align 8, !dbg !4618
  call void @usb_free_urb(%struct.urb* %9) #9, !dbg !4619
  %10 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4620
  %udev = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %10, i32 0, i32 3, !dbg !4621
  %11 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4621
  %12 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4622
  %in_buffer = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %12, i32 0, i32 10, !dbg !4623
  %13 = load i8*, i8** %in_buffer, align 8, !dbg !4623
  %14 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4624
  %in_dma = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %14, i32 0, i32 9, !dbg !4625
  %15 = load i64, i64* %in_dma, align 8, !dbg !4625
  call void @usb_free_coherent(%struct.usb_device* %11, i64 8, i8* %13, i64 %15) #9, !dbg !4626
  %16 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !4627
  %17 = bitcast %struct.usb_keyspan* %16 to i8*, !dbg !4627
  call void @kfree(i8* %17) #9, !dbg !4628
  br label %if.end, !dbg !4629

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4630
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4631 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4636, metadata !DIExpression()), !dbg !4638
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4638
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4638
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4638
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4638
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4638
  store i8* %2, i8** %__mptr, align 8, !dbg !4638
  br label %do.body, !dbg !4638

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4639

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4638
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4638
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4638
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4639
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4638
  ret %struct.usb_device* %5, !dbg !4641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_endpoint_descriptor* @keyspan_get_in_endpoint(%struct.usb_host_interface* %iface) #2 !dbg !4642 {
entry:
  %retval = alloca %struct.usb_endpoint_descriptor*, align 8
  %iface.addr = alloca %struct.usb_host_interface*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %i = alloca i32, align 4
  store %struct.usb_host_interface* %iface, %struct.usb_host_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !4647, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4649, metadata !DIExpression()), !dbg !4650
  store i32 0, i32* %i, align 4, !dbg !4651
  br label %for.cond, !dbg !4653

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4654
  %1 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface.addr, align 8, !dbg !4656
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %1, i32 0, i32 0, !dbg !4657
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4658
  %2 = load i8, i8* %bNumEndpoints, align 4, !dbg !4658
  %conv = zext i8 %2 to i32, !dbg !4656
  %cmp = icmp slt i32 %0, %conv, !dbg !4659
  br i1 %cmp, label %for.body, label %for.end, !dbg !4660

for.body:                                         ; preds = %for.cond
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface.addr, align 8, !dbg !4661
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %3, i32 0, i32 3, !dbg !4663
  %4 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint2, align 8, !dbg !4663
  %5 = load i32, i32* %i, align 4, !dbg !4664
  %idxprom = sext i32 %5 to i64, !dbg !4661
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %4, i64 %idxprom, !dbg !4661
  %desc3 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4665
  store %struct.usb_endpoint_descriptor* %desc3, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4666
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4667
  %call = call i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %6) #9, !dbg !4669
  %tobool = icmp ne i32 %call, 0, !dbg !4669
  br i1 %tobool, label %if.then, label %if.end, !dbg !4670

if.then:                                          ; preds = %for.body
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4671
  store %struct.usb_endpoint_descriptor* %7, %struct.usb_endpoint_descriptor** %retval, align 8, !dbg !4673
  br label %return, !dbg !4673

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4674

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !4675
  %inc = add i32 %8, 1, !dbg !4675
  store i32 %inc, i32* %i, align 4, !dbg !4675
  br label %for.cond, !dbg !4676, !llvm.loop !4677

for.end:                                          ; preds = %for.cond
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %retval, align 8, !dbg !4679
  br label %return, !dbg !4679

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %retval, align 8, !dbg !4680
  ret %struct.usb_endpoint_descriptor* %9, !dbg !4680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4681 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4684, metadata !DIExpression()), !dbg !4688
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4694, metadata !DIExpression()), !dbg !4695
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4696, metadata !DIExpression()), !dbg !4697
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4698, metadata !DIExpression()), !dbg !4699
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4700, metadata !DIExpression()), !dbg !4704
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4706, metadata !DIExpression()), !dbg !4710
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4712, metadata !DIExpression()), !dbg !4716
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4721, metadata !DIExpression()), !dbg !4722
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4723, metadata !DIExpression()), !dbg !4724
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4725, metadata !DIExpression()), !dbg !4726
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4727, metadata !DIExpression()), !dbg !4728
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4729, metadata !DIExpression()), !dbg !4730
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4731, metadata !DIExpression()), !dbg !4732
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4733, metadata !DIExpression()), !dbg !4734
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4735, metadata !DIExpression()), !dbg !4736
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  %0 = load i64, i64* %size.addr, align 8, !dbg !4741
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4742
  %or = or i32 %1, 256, !dbg !4743
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4744
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4745
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4746

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4747
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4748
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4749

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4750
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4751
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4752
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4753
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4730
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4754
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4755
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4756
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4757
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4758
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4759
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4760
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4760
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4760
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4760
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4760
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4761
  br label %kmalloc.exit, !dbg !4761

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4762
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4763
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4765

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4769
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4770

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4772
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4774
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4775

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4776
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4777
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4778

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4779
  br label %kmalloc_index.exit.i, !dbg !4779

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4780
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4782
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4783

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4784
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4785
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4786

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4790
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4791

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4795
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4796

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4800
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4801

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4805
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4806

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4810
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4811

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4815
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4816

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4820
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4821

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4825
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4826

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4830
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4831

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4835
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4836

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4840
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4841

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4845
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4846

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4848
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4850
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4851

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4855
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4856

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4857
  br label %kmalloc_index.exit.i, !dbg !4857

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4858
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4860
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4861

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4865
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4866

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4867
  br label %kmalloc_index.exit.i, !dbg !4867

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4870
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4871

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4875
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4876

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4878
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4880
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4881

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4882
  br label %kmalloc_index.exit.i, !dbg !4882

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4885
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4886

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4887
  br label %kmalloc_index.exit.i, !dbg !4887

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4888
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4890
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4891

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4895
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4896

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4900
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4901

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4902
  br label %kmalloc_index.exit.i, !dbg !4902

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4903
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4905
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4906

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4907
  br label %kmalloc_index.exit.i, !dbg !4907

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4908, !srcloc !4911
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4912, !srcloc !4915
  unreachable, !dbg !4916

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4917
  store i32 %45, i32* %index.i, align 4, !dbg !4918
  %46 = load i32, i32* %index.i, align 4, !dbg !4919
  %tobool.i = icmp ne i32 %46, 0, !dbg !4919
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4921

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4922
  br label %kmalloc.exit, !dbg !4922

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4923
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4924
  %and.i.i = and i32 %48, 17, !dbg !4924
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4924
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4924
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4924
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4924
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4926

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4927
  br label %kmalloc_type.exit.i, !dbg !4927

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4928
  %and2.i.i = and i32 %49, 1, !dbg !4929
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4928
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4928
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4928
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4930
  br label %kmalloc_type.exit.i, !dbg !4930

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4931
  %idxprom.i = zext i32 %51 to i64, !dbg !4932
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4932
  %52 = load i32, i32* %index.i, align 4, !dbg !4933
  %idxprom6.i = zext i32 %52 to i64, !dbg !4932
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4932
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4932
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4934
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4935
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4936
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4937
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4938
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4938
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4938
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4938
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4938
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4699
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4939
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4940
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4941
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4942
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4943
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4944
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4945
  store i8* %62, i8** %retval.i, align 8, !dbg !4946
  br label %kmalloc.exit, !dbg !4946

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4947
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4948
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4949
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4949
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4949
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4949
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4949
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4950
  br label %kmalloc.exit, !dbg !4950

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4951
  ret i8* %65, !dbg !4952
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @keyspan_setup(%struct.usb_device* %dev) #2 !dbg !4953 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.usb_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4956, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4958, metadata !DIExpression()), !dbg !4959
  store i32 0, i32* %retval1, align 4, !dbg !4959
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4960
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4961
  %call = call i32 @__create_pipe(%struct.usb_device* %1, i32 0) #9, !dbg !4961
  %or = or i32 -2147483648, %call, !dbg !4961
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %0, i32 %or, i8 zeroext 17, i8 zeroext 64, i16 zeroext 22017, i16 zeroext 0, i8* null, i16 zeroext 0, i32 5000) #9, !dbg !4962
  store i32 %call2, i32* %retval1, align 4, !dbg !4963
  %2 = load i32, i32* %retval1, align 4, !dbg !4964
  %tobool = icmp ne i32 %2, 0, !dbg !4964
  br i1 %tobool, label %if.then, label %if.end, !dbg !4966

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %retval1, align 4, !dbg !4967
  store i32 %3, i32* %retval, align 4, !dbg !4969
  br label %return, !dbg !4969

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4970
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4971
  %call3 = call i32 @__create_pipe(%struct.usb_device* %5, i32 0) #9, !dbg !4971
  %or4 = or i32 -2147483648, %call3, !dbg !4971
  %call5 = call i32 @usb_control_msg(%struct.usb_device* %4, i32 %or4, i8 zeroext 68, i8 zeroext 64, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 5000) #9, !dbg !4972
  store i32 %call5, i32* %retval1, align 4, !dbg !4973
  %6 = load i32, i32* %retval1, align 4, !dbg !4974
  %tobool6 = icmp ne i32 %6, 0, !dbg !4974
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4976

if.then7:                                         ; preds = %if.end
  %7 = load i32, i32* %retval1, align 4, !dbg !4977
  store i32 %7, i32* %retval, align 4, !dbg !4979
  br label %return, !dbg !4979

if.end8:                                          ; preds = %if.end
  %8 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4980
  %9 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4981
  %call9 = call i32 @__create_pipe(%struct.usb_device* %9, i32 0) #9, !dbg !4981
  %or10 = or i32 -2147483648, %call9, !dbg !4981
  %call11 = call i32 @usb_control_msg(%struct.usb_device* %8, i32 %or10, i8 zeroext 34, i8 zeroext 64, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 5000) #9, !dbg !4982
  store i32 %call11, i32* %retval1, align 4, !dbg !4983
  %10 = load i32, i32* %retval1, align 4, !dbg !4984
  %tobool12 = icmp ne i32 %10, 0, !dbg !4984
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4986

if.then13:                                        ; preds = %if.end8
  %11 = load i32, i32* %retval1, align 4, !dbg !4987
  store i32 %11, i32* %retval, align 4, !dbg !4989
  br label %return, !dbg !4989

if.end14:                                         ; preds = %if.end8
  %12 = load i32, i32* %retval1, align 4, !dbg !4990
  store i32 %12, i32* %retval, align 4, !dbg !4991
  br label %return, !dbg !4991

return:                                           ; preds = %if.end14, %if.then13, %if.then7, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4992
  ret i32 %13, !dbg !4992
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !4993 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5002, metadata !DIExpression()), !dbg !5003
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5004
  %1 = load i64, i64* %size.addr, align 8, !dbg !5005
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5006
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5007
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5007
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5008
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5008
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5009
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5010
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5009
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !5011
  store i32 %call, i32* %actual, align 4, !dbg !5012
  %6 = load i32, i32* %actual, align 4, !dbg !5013
  %7 = load i64, i64* %size.addr, align 8, !dbg !5014
  %conv = trunc i64 %7 to i32, !dbg !5015
  %cmp = icmp sge i32 %6, %conv, !dbg !5016
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5017

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5017

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5018
  br label %cond.end, !dbg !5017

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5017
  ret i32 %cond, !dbg !5019
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5020 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5027, metadata !DIExpression()), !dbg !5028
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5031
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5032
  store i16 3, i16* %bustype, align 2, !dbg !5033
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5034
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5034
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5034
  %2 = load i16, i16* %idVendor, align 8, !dbg !5034
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5035
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5036
  store i16 %2, i16* %vendor, align 2, !dbg !5037
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5038
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5038
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5038
  %5 = load i16, i16* %idProduct, align 2, !dbg !5038
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5039
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5040
  store i16 %5, i16* %product, align 2, !dbg !5041
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5042
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5042
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5042
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5042
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5043
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5044
  store i16 %8, i16* %version, align 2, !dbg !5045
  ret void, !dbg !5046
}

; Function Attrs: noredzone
declare dso_local void @input_set_capability(%struct.input_dev*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #2 !dbg !5047 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5053, metadata !DIExpression()), !dbg !5056
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5058, metadata !DIExpression()), !dbg !5059
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5060, metadata !DIExpression()), !dbg !5068
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5070, metadata !DIExpression()), !dbg !5071
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5076
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5077
  %div = sdiv i64 %1, 64, !dbg !5077
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5078
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5076
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5079
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5080
  %conv.i = trunc i64 %4 to i32, !dbg !5080
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5081
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5082
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5082
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5082
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5083
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5084
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5085
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5086
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #10, !dbg !5087, !srcloc !5088
  ret void, !dbg !5089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #2 !dbg !5090 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5093
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5095, metadata !DIExpression()), !dbg !5096
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5060, metadata !DIExpression()), !dbg !5097
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5070, metadata !DIExpression()), !dbg !5099
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5104
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5105
  %div = sdiv i64 %1, 64, !dbg !5105
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5106
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5104
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5107
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5108
  %conv.i = trunc i64 %4 to i32, !dbg !5108
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5109
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5110
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5110
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5110
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5111
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5112
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5113
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5114
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #10, !dbg !5115, !srcloc !5116
  ret void, !dbg !5117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #2 !dbg !5118 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5121, metadata !DIExpression()), !dbg !5122
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5123, metadata !DIExpression()), !dbg !5124
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5125
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5126
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5127
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #9, !dbg !5128
  ret void, !dbg !5129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @keyspan_open(%struct.input_dev* %dev) #2 !dbg !5130 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %remote = alloca %struct.usb_keyspan*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %remote, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5135
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #9, !dbg !5136
  %1 = bitcast i8* %call to %struct.usb_keyspan*, !dbg !5136
  store %struct.usb_keyspan* %1, %struct.usb_keyspan** %remote, align 8, !dbg !5134
  %2 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !5137
  %udev = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %2, i32 0, i32 3, !dbg !5138
  %3 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5138
  %4 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !5139
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %4, i32 0, i32 7, !dbg !5140
  %5 = load %struct.urb*, %struct.urb** %irq_urb, align 8, !dbg !5140
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 8, !dbg !5141
  store %struct.usb_device* %3, %struct.usb_device** %dev1, align 8, !dbg !5142
  %6 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !5143
  %irq_urb2 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %6, i32 0, i32 7, !dbg !5145
  %7 = load %struct.urb*, %struct.urb** %irq_urb2, align 8, !dbg !5145
  %call3 = call i32 @usb_submit_urb(%struct.urb* %7, i32 3264) #9, !dbg !5146
  %tobool = icmp ne i32 %call3, 0, !dbg !5146
  br i1 %tobool, label %if.then, label %if.end, !dbg !5147

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5148
  br label %return, !dbg !5148

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5149
  br label %return, !dbg !5149

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5150
  ret i32 %8, !dbg !5150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @keyspan_close(%struct.input_dev* %dev) #2 !dbg !5151 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %remote = alloca %struct.usb_keyspan*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %remote, metadata !5154, metadata !DIExpression()), !dbg !5155
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5156
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #9, !dbg !5157
  %1 = bitcast i8* %call to %struct.usb_keyspan*, !dbg !5157
  store %struct.usb_keyspan* %1, %struct.usb_keyspan** %remote, align 8, !dbg !5155
  %2 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote, align 8, !dbg !5158
  %irq_urb = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %2, i32 0, i32 7, !dbg !5159
  %3 = load %struct.urb*, %struct.urb** %irq_urb, align 8, !dbg !5159
  call void @usb_kill_urb(%struct.urb* %3) #9, !dbg !5160
  ret void, !dbg !5161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5162 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5175, metadata !DIExpression()), !dbg !5176
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5181
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5182
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5183
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5184
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5185
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5186
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5187
  store i32 %2, i32* %pipe2, align 8, !dbg !5188
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5189
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5190
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5191
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5192
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5193
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5194
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5195
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5196
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5197
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5198
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5199
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5200
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5201
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5202
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5203
  store i8* %10, i8** %context4, align 8, !dbg !5204
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5205
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5207
  %13 = load i32, i32* %speed, align 4, !dbg !5207
  %cmp = icmp eq i32 %13, 3, !dbg !5208
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5209

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5210
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5211
  %15 = load i32, i32* %speed5, align 4, !dbg !5211
  %cmp6 = icmp uge i32 %15, 5, !dbg !5212
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5213

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5214, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5218, metadata !DIExpression()), !dbg !5220
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5220
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5220
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5221, metadata !DIExpression()), !dbg !5220
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5220
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5220
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5220
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5220
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5220

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5220
  br label %cond.end, !dbg !5220

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5220
  br label %cond.end, !dbg !5220

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5220
  store i32 %cond, i32* %tmp, align 4, !dbg !5220
  %21 = load i32, i32* %tmp, align 4, !dbg !5220
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5217
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5222, metadata !DIExpression()), !dbg !5217
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5217
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5217
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5217
  %cmp9 = icmp slt i32 %22, %23, !dbg !5217
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5217

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5217
  br label %cond.end12, !dbg !5217

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5217
  br label %cond.end12, !dbg !5217

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5217
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5217
  %26 = load i32, i32* %tmp8, align 4, !dbg !5217
  store i32 %26, i32* %interval.addr, align 4, !dbg !5223
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5224
  %sub = sub i32 %27, 1, !dbg !5225
  %shl = shl i32 1, %sub, !dbg !5226
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5227
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5228
  store i32 %shl, i32* %interval14, align 8, !dbg !5229
  br label %if.end, !dbg !5230

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5231
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5233
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5234
  store i32 %29, i32* %interval15, align 8, !dbg !5235
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5236
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5237
  store i32 -1, i32* %start_frame, align 8, !dbg !5238
  ret void, !dbg !5239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5240 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5247
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5248
  %1 = load i32, i32* %devnum, align 8, !dbg !5248
  %shl = shl i32 %1, 8, !dbg !5249
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5250
  %shl1 = shl i32 %2, 15, !dbg !5251
  %or = or i32 %shl, %shl1, !dbg !5252
  ret i32 %or, !dbg !5253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @keyspan_irq_recv(%struct.urb* %urb) #2 !dbg !5254 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.usb_keyspan*, align 8
  %retval = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %dev, metadata !5257, metadata !DIExpression()), !dbg !5258
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5259
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5260
  %1 = load i8*, i8** %context, align 8, !dbg !5260
  %2 = bitcast i8* %1 to %struct.usb_keyspan*, !dbg !5259
  store %struct.usb_keyspan* %2, %struct.usb_keyspan** %dev, align 8, !dbg !5258
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !5261, metadata !DIExpression()), !dbg !5262
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5263
  %status = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !5264
  %4 = load i32, i32* %status, align 8, !dbg !5264
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb1
    i32 -2, label %sw.bb1
    i32 -108, label %sw.bb1
  ], !dbg !5265

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5266

sw.bb1:                                           ; preds = %entry, %entry, %entry
  br label %if.end5, !dbg !5268

sw.default:                                       ; preds = %entry
  br label %resubmit, !dbg !5269

sw.epilog:                                        ; preds = %sw.bb
  %5 = load i32, i32* @debug, align 4, !dbg !5270
  %tobool = icmp ne i32 %5, 0, !dbg !5270
  br i1 %tobool, label %if.then, label %if.end, !dbg !5272

if.then:                                          ; preds = %sw.epilog
  %6 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev, align 8, !dbg !5273
  call void @keyspan_print(%struct.usb_keyspan* %6) #9, !dbg !5274
  br label %if.end, !dbg !5274

if.end:                                           ; preds = %if.then, %sw.epilog
  %7 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev, align 8, !dbg !5275
  call void @keyspan_check_data(%struct.usb_keyspan* %7) #9, !dbg !5276
  br label %resubmit, !dbg !5276

resubmit:                                         ; preds = %if.end, %sw.default
  call void @llvm.dbg.label(metadata !5277), !dbg !5278
  %8 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5279
  %call = call i32 @usb_submit_urb(%struct.urb* %8, i32 2592) #9, !dbg !5280
  store i32 %call, i32* %retval, align 4, !dbg !5281
  %9 = load i32, i32* %retval, align 4, !dbg !5282
  %tobool2 = icmp ne i32 %9, 0, !dbg !5282
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5284

if.then3:                                         ; preds = %resubmit
  %10 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev, align 8, !dbg !5285
  %interface = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %10, i32 0, i32 5, !dbg !5285
  %11 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5285
  %dev4 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 7, !dbg !5285
  %12 = load i32, i32* %retval, align 4, !dbg !5285
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.keyspan_irq_recv, i64 0, i64 0), i32 %12) #13, !dbg !5285
  br label %if.end5, !dbg !5285

if.end5:                                          ; preds = %sw.bb1, %if.then3, %resubmit
  ret void, !dbg !5286
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5287 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5292, metadata !DIExpression()), !dbg !5293
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5294
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5295
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5296
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5297
  ret void, !dbg !5298
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5299 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5306
  %call = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %0) #9, !dbg !5307
  %tobool = icmp ne i32 %call, 0, !dbg !5307
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5308

land.rhs:                                         ; preds = %entry
  %1 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5309
  %call1 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %1) #9, !dbg !5310
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5308
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5311
  %land.ext = zext i1 %2 to i32, !dbg !5308
  ret i32 %land.ext, !dbg !5312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5313 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5316
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5317
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5317
  %conv = zext i8 %1 to i32, !dbg !5316
  %and = and i32 %conv, 3, !dbg !5318
  %cmp = icmp eq i32 %and, 3, !dbg !5319
  %conv1 = zext i1 %cmp to i32, !dbg !5319
  ret i32 %conv1, !dbg !5320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !5321 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5324
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5325
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5325
  %conv = zext i8 %1 to i32, !dbg !5324
  %and = and i32 %conv, 128, !dbg !5326
  %cmp = icmp eq i32 %and, 128, !dbg !5327
  %conv1 = zext i1 %cmp to i32, !dbg !5327
  ret i32 %conv1, !dbg !5328
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5329 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5333, metadata !DIExpression()), !dbg !5337
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5339, metadata !DIExpression()), !dbg !5340
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  %0 = load i64, i64* %size.addr, align 8, !dbg !5343
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5345
  br i1 %1, label %if.then, label %if.end447, !dbg !5346

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5347
  %tobool = icmp ne i64 %2, 0, !dbg !5347
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5350

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5351
  br label %return, !dbg !5351

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5352
  %cmp = icmp ult i64 %3, 4096, !dbg !5354
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5355

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub = sub i64 %4, 1, !dbg !5357
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5357
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5357

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub4 = sub i64 %6, 1, !dbg !5357
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5357
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5357

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub6 = sub i64 %8, 1, !dbg !5357
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5357
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5357

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5357

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub9 = sub i64 %9, 1, !dbg !5357
  %and = and i64 %sub9, -9223372036854775808, !dbg !5357
  %tobool10 = icmp ne i64 %and, 0, !dbg !5357
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5357

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5357

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub13 = sub i64 %10, 1, !dbg !5357
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5357
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5357
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5357

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5357

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub18 = sub i64 %11, 1, !dbg !5357
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5357
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5357
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5357

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5357

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub23 = sub i64 %12, 1, !dbg !5357
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5357
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5357
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5357

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5357

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub28 = sub i64 %13, 1, !dbg !5357
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5357
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5357
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5357

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5357

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub33 = sub i64 %14, 1, !dbg !5357
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5357
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5357
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5357

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5357

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub38 = sub i64 %15, 1, !dbg !5357
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5357
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5357
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5357

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5357

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub43 = sub i64 %16, 1, !dbg !5357
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5357
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5357
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5357

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5357

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub48 = sub i64 %17, 1, !dbg !5357
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5357
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5357
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5357

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5357

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub53 = sub i64 %18, 1, !dbg !5357
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5357
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5357
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5357

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5357

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub58 = sub i64 %19, 1, !dbg !5357
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5357
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5357
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5357

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5357

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub63 = sub i64 %20, 1, !dbg !5357
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5357
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5357
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5357

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5357

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub68 = sub i64 %21, 1, !dbg !5357
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5357
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5357
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5357

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5357

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub73 = sub i64 %22, 1, !dbg !5357
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5357
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5357
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5357

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5357

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub78 = sub i64 %23, 1, !dbg !5357
  %and79 = and i64 %sub78, 562949953421312, !dbg !5357
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5357
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5357

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5357

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub83 = sub i64 %24, 1, !dbg !5357
  %and84 = and i64 %sub83, 281474976710656, !dbg !5357
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5357
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5357

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5357

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub88 = sub i64 %25, 1, !dbg !5357
  %and89 = and i64 %sub88, 140737488355328, !dbg !5357
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5357
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5357

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5357

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub93 = sub i64 %26, 1, !dbg !5357
  %and94 = and i64 %sub93, 70368744177664, !dbg !5357
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5357
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5357

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5357

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub98 = sub i64 %27, 1, !dbg !5357
  %and99 = and i64 %sub98, 35184372088832, !dbg !5357
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5357
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5357

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5357

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub103 = sub i64 %28, 1, !dbg !5357
  %and104 = and i64 %sub103, 17592186044416, !dbg !5357
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5357
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5357

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5357

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub108 = sub i64 %29, 1, !dbg !5357
  %and109 = and i64 %sub108, 8796093022208, !dbg !5357
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5357
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5357

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5357

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub113 = sub i64 %30, 1, !dbg !5357
  %and114 = and i64 %sub113, 4398046511104, !dbg !5357
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5357
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5357

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5357

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub118 = sub i64 %31, 1, !dbg !5357
  %and119 = and i64 %sub118, 2199023255552, !dbg !5357
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5357
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5357

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5357

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub123 = sub i64 %32, 1, !dbg !5357
  %and124 = and i64 %sub123, 1099511627776, !dbg !5357
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5357
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5357

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5357

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub128 = sub i64 %33, 1, !dbg !5357
  %and129 = and i64 %sub128, 549755813888, !dbg !5357
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5357
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5357

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5357

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub133 = sub i64 %34, 1, !dbg !5357
  %and134 = and i64 %sub133, 274877906944, !dbg !5357
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5357
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5357

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5357

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub138 = sub i64 %35, 1, !dbg !5357
  %and139 = and i64 %sub138, 137438953472, !dbg !5357
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5357
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5357

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5357

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub143 = sub i64 %36, 1, !dbg !5357
  %and144 = and i64 %sub143, 68719476736, !dbg !5357
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5357
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5357

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5357

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub148 = sub i64 %37, 1, !dbg !5357
  %and149 = and i64 %sub148, 34359738368, !dbg !5357
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5357
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5357

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5357

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub153 = sub i64 %38, 1, !dbg !5357
  %and154 = and i64 %sub153, 17179869184, !dbg !5357
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5357
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5357

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5357

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub158 = sub i64 %39, 1, !dbg !5357
  %and159 = and i64 %sub158, 8589934592, !dbg !5357
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5357
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5357

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5357

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub163 = sub i64 %40, 1, !dbg !5357
  %and164 = and i64 %sub163, 4294967296, !dbg !5357
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5357
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5357

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5357

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub168 = sub i64 %41, 1, !dbg !5357
  %and169 = and i64 %sub168, 2147483648, !dbg !5357
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5357
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5357

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5357

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub173 = sub i64 %42, 1, !dbg !5357
  %and174 = and i64 %sub173, 1073741824, !dbg !5357
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5357
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5357

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5357

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub178 = sub i64 %43, 1, !dbg !5357
  %and179 = and i64 %sub178, 536870912, !dbg !5357
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5357
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5357

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5357

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub183 = sub i64 %44, 1, !dbg !5357
  %and184 = and i64 %sub183, 268435456, !dbg !5357
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5357
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5357

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5357

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub188 = sub i64 %45, 1, !dbg !5357
  %and189 = and i64 %sub188, 134217728, !dbg !5357
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5357
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5357

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5357

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub193 = sub i64 %46, 1, !dbg !5357
  %and194 = and i64 %sub193, 67108864, !dbg !5357
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5357
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5357

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5357

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub198 = sub i64 %47, 1, !dbg !5357
  %and199 = and i64 %sub198, 33554432, !dbg !5357
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5357
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5357

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5357

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub203 = sub i64 %48, 1, !dbg !5357
  %and204 = and i64 %sub203, 16777216, !dbg !5357
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5357
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5357

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5357

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub208 = sub i64 %49, 1, !dbg !5357
  %and209 = and i64 %sub208, 8388608, !dbg !5357
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5357
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5357

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5357

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub213 = sub i64 %50, 1, !dbg !5357
  %and214 = and i64 %sub213, 4194304, !dbg !5357
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5357
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5357

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5357

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub218 = sub i64 %51, 1, !dbg !5357
  %and219 = and i64 %sub218, 2097152, !dbg !5357
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5357
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5357

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5357

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub223 = sub i64 %52, 1, !dbg !5357
  %and224 = and i64 %sub223, 1048576, !dbg !5357
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5357
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5357

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5357

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub228 = sub i64 %53, 1, !dbg !5357
  %and229 = and i64 %sub228, 524288, !dbg !5357
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5357
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5357

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5357

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub233 = sub i64 %54, 1, !dbg !5357
  %and234 = and i64 %sub233, 262144, !dbg !5357
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5357
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5357

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5357

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub238 = sub i64 %55, 1, !dbg !5357
  %and239 = and i64 %sub238, 131072, !dbg !5357
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5357
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5357

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5357

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub243 = sub i64 %56, 1, !dbg !5357
  %and244 = and i64 %sub243, 65536, !dbg !5357
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5357
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5357

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5357

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub248 = sub i64 %57, 1, !dbg !5357
  %and249 = and i64 %sub248, 32768, !dbg !5357
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5357
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5357

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5357

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub253 = sub i64 %58, 1, !dbg !5357
  %and254 = and i64 %sub253, 16384, !dbg !5357
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5357
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5357

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5357

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub258 = sub i64 %59, 1, !dbg !5357
  %and259 = and i64 %sub258, 8192, !dbg !5357
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5357
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5357

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5357

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub263 = sub i64 %60, 1, !dbg !5357
  %and264 = and i64 %sub263, 4096, !dbg !5357
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5357
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5357

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5357

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub268 = sub i64 %61, 1, !dbg !5357
  %and269 = and i64 %sub268, 2048, !dbg !5357
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5357
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5357

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5357

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub273 = sub i64 %62, 1, !dbg !5357
  %and274 = and i64 %sub273, 1024, !dbg !5357
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5357
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5357

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5357

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub278 = sub i64 %63, 1, !dbg !5357
  %and279 = and i64 %sub278, 512, !dbg !5357
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5357
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5357

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5357

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub283 = sub i64 %64, 1, !dbg !5357
  %and284 = and i64 %sub283, 256, !dbg !5357
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5357
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5357

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5357

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub288 = sub i64 %65, 1, !dbg !5357
  %and289 = and i64 %sub288, 128, !dbg !5357
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5357
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5357

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5357

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub293 = sub i64 %66, 1, !dbg !5357
  %and294 = and i64 %sub293, 64, !dbg !5357
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5357
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5357

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5357

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub298 = sub i64 %67, 1, !dbg !5357
  %and299 = and i64 %sub298, 32, !dbg !5357
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5357
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5357

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5357

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub303 = sub i64 %68, 1, !dbg !5357
  %and304 = and i64 %sub303, 16, !dbg !5357
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5357
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5357

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5357

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub308 = sub i64 %69, 1, !dbg !5357
  %and309 = and i64 %sub308, 8, !dbg !5357
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5357
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5357

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5357

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub313 = sub i64 %70, 1, !dbg !5357
  %and314 = and i64 %sub313, 4, !dbg !5357
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5357
  %71 = zext i1 %tobool315 to i64, !dbg !5357
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5357
  br label %cond.end, !dbg !5357

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5357
  br label %cond.end317, !dbg !5357

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5357
  br label %cond.end319, !dbg !5357

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5357
  br label %cond.end321, !dbg !5357

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5357
  br label %cond.end323, !dbg !5357

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5357
  br label %cond.end325, !dbg !5357

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5357
  br label %cond.end327, !dbg !5357

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5357
  br label %cond.end329, !dbg !5357

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5357
  br label %cond.end331, !dbg !5357

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5357
  br label %cond.end333, !dbg !5357

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5357
  br label %cond.end335, !dbg !5357

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5357
  br label %cond.end337, !dbg !5357

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5357
  br label %cond.end339, !dbg !5357

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5357
  br label %cond.end341, !dbg !5357

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5357
  br label %cond.end343, !dbg !5357

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5357
  br label %cond.end345, !dbg !5357

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5357
  br label %cond.end347, !dbg !5357

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5357
  br label %cond.end349, !dbg !5357

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5357
  br label %cond.end351, !dbg !5357

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5357
  br label %cond.end353, !dbg !5357

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5357
  br label %cond.end355, !dbg !5357

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5357
  br label %cond.end357, !dbg !5357

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5357
  br label %cond.end359, !dbg !5357

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5357
  br label %cond.end361, !dbg !5357

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5357
  br label %cond.end363, !dbg !5357

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5357
  br label %cond.end365, !dbg !5357

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5357
  br label %cond.end367, !dbg !5357

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5357
  br label %cond.end369, !dbg !5357

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5357
  br label %cond.end371, !dbg !5357

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5357
  br label %cond.end373, !dbg !5357

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5357
  br label %cond.end375, !dbg !5357

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5357
  br label %cond.end377, !dbg !5357

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5357
  br label %cond.end379, !dbg !5357

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5357
  br label %cond.end381, !dbg !5357

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5357
  br label %cond.end383, !dbg !5357

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5357
  br label %cond.end385, !dbg !5357

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5357
  br label %cond.end387, !dbg !5357

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5357
  br label %cond.end389, !dbg !5357

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5357
  br label %cond.end391, !dbg !5357

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5357
  br label %cond.end393, !dbg !5357

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5357
  br label %cond.end395, !dbg !5357

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5357
  br label %cond.end397, !dbg !5357

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5357
  br label %cond.end399, !dbg !5357

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5357
  br label %cond.end401, !dbg !5357

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5357
  br label %cond.end403, !dbg !5357

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5357
  br label %cond.end405, !dbg !5357

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5357
  br label %cond.end407, !dbg !5357

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5357
  br label %cond.end409, !dbg !5357

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5357
  br label %cond.end411, !dbg !5357

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5357
  br label %cond.end413, !dbg !5357

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5357
  br label %cond.end415, !dbg !5357

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5357
  br label %cond.end417, !dbg !5357

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5357
  br label %cond.end419, !dbg !5357

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5357
  br label %cond.end421, !dbg !5357

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5357
  br label %cond.end423, !dbg !5357

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5357
  br label %cond.end425, !dbg !5357

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5357
  br label %cond.end427, !dbg !5357

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5357
  br label %cond.end429, !dbg !5357

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5357
  br label %cond.end431, !dbg !5357

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5357
  br label %cond.end433, !dbg !5357

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5357
  br label %cond.end435, !dbg !5357

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5357
  br label %cond.end437, !dbg !5357

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5357
  br label %cond.end440, !dbg !5357

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5357

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5357
  br label %cond.end444, !dbg !5357

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5357
  %sub443 = sub i64 %72, 1, !dbg !5357
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5357
  br label %cond.end444, !dbg !5357

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5357
  %sub446 = sub i32 %cond445, 12, !dbg !5358
  %add = add i32 %sub446, 1, !dbg !5359
  store i32 %add, i32* %retval, align 4, !dbg !5360
  br label %return, !dbg !5360

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5361
  %dec = add i64 %73, -1, !dbg !5361
  store i64 %dec, i64* %size.addr, align 8, !dbg !5361
  %74 = load i64, i64* %size.addr, align 8, !dbg !5362
  %shr = lshr i64 %74, 12, !dbg !5362
  store i64 %shr, i64* %size.addr, align 8, !dbg !5362
  %75 = load i64, i64* %size.addr, align 8, !dbg !5363
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5340
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5364
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5365
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5364, !srcloc !5366
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5364
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5367
  %add.i = add i32 %79, 1, !dbg !5368
  store i32 %add.i, i32* %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5370
  ret i32 %80, !dbg !5370
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5371 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5333, metadata !DIExpression()), !dbg !5375
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5339, metadata !DIExpression()), !dbg !5377
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  %0 = load i64, i64* %n.addr, align 8, !dbg !5380
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5377
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5381
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5382
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5381, !srcloc !5366
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5381
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5383
  %add.i = add i32 %4, 1, !dbg !5384
  %sub = sub i32 %add.i, 1, !dbg !5385
  ret i32 %sub, !dbg !5386
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5387 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5398
  ret i8* %0, !dbg !5399
}

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5400 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5404, metadata !DIExpression()), !dbg !5405
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  ret i1 true, !dbg !5408
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5409 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  ret void, !dbg !5419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5420 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5427
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5428
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5429
  store i8* %0, i8** %driver_data, align 8, !dbg !5430
  ret void, !dbg !5431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !5432 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5437
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5438
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #9, !dbg !5439
  ret i8* %call, !dbg !5440
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5441 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5448
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5449
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5449
  ret i8* %1, !dbg !5450
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @keyspan_print(%struct.usb_keyspan* %dev) #2 !dbg !5451 {
entry:
  %dev.addr = alloca %struct.usb_keyspan*, align 8
  %codes = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  store %struct.usb_keyspan* %dev, %struct.usb_keyspan** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %dev.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.declare(metadata [32 x i8]* %codes, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5458, metadata !DIExpression()), !dbg !5459
  store i32 0, i32* %i, align 4, !dbg !5460
  br label %for.cond, !dbg !5462

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5463
  %cmp = icmp slt i32 %0, 8, !dbg !5465
  br i1 %cmp, label %for.body, label %for.end, !dbg !5466

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %codes, i64 0, i64 0, !dbg !5467
  %1 = load i32, i32* %i, align 4, !dbg !5468
  %mul = mul i32 %1, 3, !dbg !5469
  %idx.ext = sext i32 %mul to i64, !dbg !5470
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !5470
  %2 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5471
  %in_buffer = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %2, i32 0, i32 10, !dbg !5472
  %3 = load i8*, i8** %in_buffer, align 8, !dbg !5472
  %4 = load i32, i32* %i, align 4, !dbg !5473
  %idxprom = sext i32 %4 to i64, !dbg !5471
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom, !dbg !5471
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5471
  %conv = zext i8 %5 to i32, !dbg !5471
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr, i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #9, !dbg !5474
  br label %for.inc, !dbg !5474

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !5475
  %inc = add i32 %6, 1, !dbg !5475
  store i32 %inc, i32* %i, align 4, !dbg !5475
  br label %for.cond, !dbg !5476, !llvm.loop !5477

for.end:                                          ; preds = %for.cond
  %7 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5479
  %udev = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %7, i32 0, i32 3, !dbg !5479
  %8 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5479
  %dev1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 14, !dbg !5479
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %codes, i64 0, i64 0, !dbg !5479
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay2) #13, !dbg !5479
  ret void, !dbg !5480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @keyspan_check_data(%struct.usb_keyspan* %remote) #2 !dbg !5481 {
entry:
  %remote.addr = alloca %struct.usb_keyspan*, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %message = alloca %struct.keyspan_message, align 2
  store %struct.usb_keyspan* %remote, %struct.usb_keyspan** %remote.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %remote.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5484, metadata !DIExpression()), !dbg !5485
  call void @llvm.dbg.declare(metadata i32* %found, metadata !5486, metadata !DIExpression()), !dbg !5487
  store i32 0, i32* %found, align 4, !dbg !5487
  call void @llvm.dbg.declare(metadata %struct.keyspan_message* %message, metadata !5488, metadata !DIExpression()), !dbg !5494
  %0 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5495
  %stage = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %0, i32 0, i32 12, !dbg !5496
  %1 = load i32, i32* %stage, align 8, !dbg !5496
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb71
  ], !dbg !5497

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5498
  br label %for.cond, !dbg !5501

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load i32, i32* %i, align 4, !dbg !5502
  %cmp = icmp slt i32 %2, 8, !dbg !5504
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5505

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5506
  %in_buffer = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %3, i32 0, i32 10, !dbg !5507
  %4 = load i8*, i8** %in_buffer, align 8, !dbg !5507
  %5 = load i32, i32* %i, align 4, !dbg !5508
  %idxprom = sext i32 %5 to i64, !dbg !5506
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom, !dbg !5506
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5506
  %conv = zext i8 %6 to i32, !dbg !5506
  %cmp1 = icmp eq i32 %conv, 255, !dbg !5509
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !5510
  br i1 %7, label %for.body, label %for.end, !dbg !5511

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !5511

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !5512
  %inc = add i32 %8, 1, !dbg !5512
  store i32 %inc, i32* %i, align 4, !dbg !5512
  br label %for.cond, !dbg !5513, !llvm.loop !5514

for.end:                                          ; preds = %land.end
  %9 = load i32, i32* %i, align 4, !dbg !5516
  %cmp3 = icmp slt i32 %9, 8, !dbg !5518
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5519

if.then:                                          ; preds = %for.end
  %10 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5520
  %data = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %10, i32 0, i32 11, !dbg !5522
  %buffer = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data, i32 0, i32 4, !dbg !5523
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buffer, i64 0, i64 0, !dbg !5524
  %11 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5525
  %in_buffer5 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %11, i32 0, i32 10, !dbg !5526
  %12 = load i8*, i8** %in_buffer5, align 8, !dbg !5526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 1 %12, i64 8, i1 false), !dbg !5524
  %13 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5527
  %data6 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %13, i32 0, i32 11, !dbg !5528
  %len = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data6, i32 0, i32 1, !dbg !5529
  store i32 8, i32* %len, align 4, !dbg !5530
  %14 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5531
  %data7 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %14, i32 0, i32 11, !dbg !5532
  %pos = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data7, i32 0, i32 2, !dbg !5533
  store i32 0, i32* %pos, align 8, !dbg !5534
  %15 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5535
  %data8 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %15, i32 0, i32 11, !dbg !5536
  %tester = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data8, i32 0, i32 0, !dbg !5537
  store i32 0, i32* %tester, align 8, !dbg !5538
  %16 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5539
  %data9 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %16, i32 0, i32 11, !dbg !5540
  %bits_left = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data9, i32 0, i32 3, !dbg !5541
  store i32 0, i32* %bits_left, align 4, !dbg !5542
  %17 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5543
  %stage10 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %17, i32 0, i32 12, !dbg !5544
  store i32 1, i32* %stage10, align 8, !dbg !5545
  br label %if.end, !dbg !5546

if.end:                                           ; preds = %if.then, %for.end
  br label %sw.epilog, !dbg !5547

sw.bb11:                                          ; preds = %entry
  %18 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5548
  %data12 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %18, i32 0, i32 11, !dbg !5549
  %buffer13 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data12, i32 0, i32 4, !dbg !5550
  %arraydecay14 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer13, i64 0, i64 0, !dbg !5548
  %19 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5551
  %data15 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %19, i32 0, i32 11, !dbg !5552
  %len16 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data15, i32 0, i32 1, !dbg !5553
  %20 = load i32, i32* %len16, align 4, !dbg !5553
  %idx.ext = sext i32 %20 to i64, !dbg !5554
  %add.ptr = getelementptr i8, i8* %arraydecay14, i64 %idx.ext, !dbg !5554
  %21 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5555
  %in_buffer17 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %21, i32 0, i32 10, !dbg !5556
  %22 = load i8*, i8** %in_buffer17, align 8, !dbg !5556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %22, i64 8, i1 false), !dbg !5557
  %23 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5558
  %data18 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %23, i32 0, i32 11, !dbg !5559
  %len19 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data18, i32 0, i32 1, !dbg !5560
  %24 = load i32, i32* %len19, align 4, !dbg !5561
  %add = add i32 %24, 8, !dbg !5561
  store i32 %add, i32* %len19, align 4, !dbg !5561
  store i32 0, i32* %found, align 4, !dbg !5562
  br label %while.cond, !dbg !5563

while.cond:                                       ; preds = %for.end62, %sw.bb11
  %25 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5564
  %data20 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %25, i32 0, i32 11, !dbg !5565
  %bits_left21 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data20, i32 0, i32 3, !dbg !5566
  %26 = load i32, i32* %bits_left21, align 4, !dbg !5566
  %cmp22 = icmp sge i32 %26, 14, !dbg !5567
  br i1 %cmp22, label %land.rhs30, label %lor.lhs.false, !dbg !5568

lor.lhs.false:                                    ; preds = %while.cond
  %27 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5569
  %data24 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %27, i32 0, i32 11, !dbg !5570
  %pos25 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data24, i32 0, i32 2, !dbg !5571
  %28 = load i32, i32* %pos25, align 8, !dbg !5571
  %29 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5572
  %data26 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %29, i32 0, i32 11, !dbg !5573
  %len27 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data26, i32 0, i32 1, !dbg !5574
  %30 = load i32, i32* %len27, align 4, !dbg !5574
  %cmp28 = icmp slt i32 %28, %30, !dbg !5575
  br i1 %cmp28, label %land.rhs30, label %land.end31, !dbg !5576

land.rhs30:                                       ; preds = %lor.lhs.false, %while.cond
  %31 = load i32, i32* %found, align 4, !dbg !5577
  %tobool = icmp ne i32 %31, 0, !dbg !5578
  %lnot = xor i1 %tobool, true, !dbg !5578
  br label %land.end31

land.end31:                                       ; preds = %land.rhs30, %lor.lhs.false
  %32 = phi i1 [ false, %lor.lhs.false ], [ %lnot, %land.rhs30 ], !dbg !5579
  br i1 %32, label %while.body, label %while.end, !dbg !5563

while.body:                                       ; preds = %land.end31
  store i32 0, i32* %i, align 4, !dbg !5580
  br label %for.cond32, !dbg !5583

for.cond32:                                       ; preds = %for.inc60, %while.body
  %33 = load i32, i32* %i, align 4, !dbg !5584
  %cmp33 = icmp slt i32 %33, 8, !dbg !5586
  br i1 %cmp33, label %for.body35, label %for.end62, !dbg !5587

for.body35:                                       ; preds = %for.cond32
  %34 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5588
  %call = call i32 @keyspan_load_tester(%struct.usb_keyspan* %34, i32 14) #9, !dbg !5591
  %cmp36 = icmp ne i32 %call, 0, !dbg !5592
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !5593

if.then38:                                        ; preds = %for.body35
  %35 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5594
  %stage39 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %35, i32 0, i32 12, !dbg !5596
  store i32 0, i32* %stage39, align 8, !dbg !5597
  br label %sw.epilog, !dbg !5598

if.end40:                                         ; preds = %for.body35
  %36 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5599
  %data41 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %36, i32 0, i32 11, !dbg !5601
  %tester42 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data41, i32 0, i32 0, !dbg !5602
  %37 = load i32, i32* %tester42, align 8, !dbg !5602
  %and = and i32 %37, 16383, !dbg !5603
  %cmp43 = icmp eq i32 %and, 16256, !dbg !5604
  br i1 %cmp43, label %if.then45, label %if.else, !dbg !5605

if.then45:                                        ; preds = %if.end40
  %38 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5606
  %data46 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %38, i32 0, i32 11, !dbg !5608
  %tester47 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data46, i32 0, i32 0, !dbg !5609
  %39 = load i32, i32* %tester47, align 8, !dbg !5609
  %shr = lshr i32 %39, 14, !dbg !5610
  %40 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5611
  %data48 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %40, i32 0, i32 11, !dbg !5612
  %tester49 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data48, i32 0, i32 0, !dbg !5613
  store i32 %shr, i32* %tester49, align 8, !dbg !5614
  %41 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5615
  %data50 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %41, i32 0, i32 11, !dbg !5616
  %bits_left51 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data50, i32 0, i32 3, !dbg !5617
  %42 = load i32, i32* %bits_left51, align 4, !dbg !5618
  %sub = sub i32 %42, 14, !dbg !5618
  store i32 %sub, i32* %bits_left51, align 4, !dbg !5618
  store i32 1, i32* %found, align 4, !dbg !5619
  br label %for.end62, !dbg !5620

if.else:                                          ; preds = %if.end40
  %43 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5621
  %data52 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %43, i32 0, i32 11, !dbg !5623
  %tester53 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data52, i32 0, i32 0, !dbg !5624
  %44 = load i32, i32* %tester53, align 8, !dbg !5624
  %shr54 = lshr i32 %44, 1, !dbg !5625
  %45 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5626
  %data55 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %45, i32 0, i32 11, !dbg !5627
  %tester56 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data55, i32 0, i32 0, !dbg !5628
  store i32 %shr54, i32* %tester56, align 8, !dbg !5629
  %46 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5630
  %data57 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %46, i32 0, i32 11, !dbg !5631
  %bits_left58 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data57, i32 0, i32 3, !dbg !5632
  %47 = load i32, i32* %bits_left58, align 4, !dbg !5633
  %dec = add i32 %47, -1, !dbg !5633
  store i32 %dec, i32* %bits_left58, align 4, !dbg !5633
  br label %if.end59

if.end59:                                         ; preds = %if.else
  br label %for.inc60, !dbg !5634

for.inc60:                                        ; preds = %if.end59
  %48 = load i32, i32* %i, align 4, !dbg !5635
  %inc61 = add i32 %48, 1, !dbg !5635
  store i32 %inc61, i32* %i, align 4, !dbg !5635
  br label %for.cond32, !dbg !5636, !llvm.loop !5637

for.end62:                                        ; preds = %if.then45, %for.cond32
  br label %while.cond, !dbg !5563, !llvm.loop !5639

while.end:                                        ; preds = %land.end31
  %49 = load i32, i32* %found, align 4, !dbg !5641
  %tobool63 = icmp ne i32 %49, 0, !dbg !5641
  br i1 %tobool63, label %if.else68, label %if.then64, !dbg !5643

if.then64:                                        ; preds = %while.end
  %50 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5644
  %stage65 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %50, i32 0, i32 12, !dbg !5646
  store i32 0, i32* %stage65, align 8, !dbg !5647
  %51 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5648
  %data66 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %51, i32 0, i32 11, !dbg !5649
  %len67 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data66, i32 0, i32 1, !dbg !5650
  store i32 0, i32* %len67, align 4, !dbg !5651
  br label %if.end70, !dbg !5652

if.else68:                                        ; preds = %while.end
  %52 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5653
  %stage69 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %52, i32 0, i32 12, !dbg !5655
  store i32 2, i32* %stage69, align 8, !dbg !5656
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then64
  br label %sw.epilog, !dbg !5657

sw.bb71:                                          ; preds = %entry
  %53 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5658
  %data72 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %53, i32 0, i32 11, !dbg !5659
  %buffer73 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data72, i32 0, i32 4, !dbg !5660
  %arraydecay74 = getelementptr inbounds [32 x i8], [32 x i8]* %buffer73, i64 0, i64 0, !dbg !5658
  %54 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5661
  %data75 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %54, i32 0, i32 11, !dbg !5662
  %len76 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data75, i32 0, i32 1, !dbg !5663
  %55 = load i32, i32* %len76, align 4, !dbg !5663
  %idx.ext77 = sext i32 %55 to i64, !dbg !5664
  %add.ptr78 = getelementptr i8, i8* %arraydecay74, i64 %idx.ext77, !dbg !5664
  %56 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5665
  %in_buffer79 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %56, i32 0, i32 10, !dbg !5666
  %57 = load i8*, i8** %in_buffer79, align 8, !dbg !5666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr78, i8* align 1 %57, i64 8, i1 false), !dbg !5667
  %58 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5668
  %data80 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %58, i32 0, i32 11, !dbg !5669
  %len81 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data80, i32 0, i32 1, !dbg !5670
  %59 = load i32, i32* %len81, align 4, !dbg !5671
  %add82 = add i32 %59, 8, !dbg !5671
  store i32 %add82, i32* %len81, align 4, !dbg !5671
  %system = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 0, !dbg !5672
  store i16 0, i16* %system, align 2, !dbg !5673
  store i32 0, i32* %i, align 4, !dbg !5674
  br label %for.cond83, !dbg !5676

for.cond83:                                       ; preds = %for.inc131, %sw.bb71
  %60 = load i32, i32* %i, align 4, !dbg !5677
  %cmp84 = icmp slt i32 %60, 9, !dbg !5679
  br i1 %cmp84, label %for.body86, label %for.end133, !dbg !5680

for.body86:                                       ; preds = %for.cond83
  %61 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5681
  %call87 = call i32 @keyspan_load_tester(%struct.usb_keyspan* %61, i32 6) #9, !dbg !5683
  %62 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5684
  %data88 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %62, i32 0, i32 11, !dbg !5686
  %tester89 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data88, i32 0, i32 0, !dbg !5687
  %63 = load i32, i32* %tester89, align 8, !dbg !5687
  %and90 = and i32 %63, 31, !dbg !5688
  %cmp91 = icmp eq i32 %and90, 24, !dbg !5689
  br i1 %cmp91, label %if.then93, label %if.else106, !dbg !5690

if.then93:                                        ; preds = %for.body86
  %system94 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 0, !dbg !5691
  %64 = load i16, i16* %system94, align 2, !dbg !5691
  %conv95 = zext i16 %64 to i32, !dbg !5693
  %shl = shl i32 %conv95, 1, !dbg !5694
  %conv96 = trunc i32 %shl to i16, !dbg !5693
  %system97 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 0, !dbg !5695
  store i16 %conv96, i16* %system97, align 2, !dbg !5696
  %65 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5697
  %data98 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %65, i32 0, i32 11, !dbg !5698
  %tester99 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data98, i32 0, i32 0, !dbg !5699
  %66 = load i32, i32* %tester99, align 8, !dbg !5699
  %shr100 = lshr i32 %66, 5, !dbg !5700
  %67 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5701
  %data101 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %67, i32 0, i32 11, !dbg !5702
  %tester102 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data101, i32 0, i32 0, !dbg !5703
  store i32 %shr100, i32* %tester102, align 8, !dbg !5704
  %68 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5705
  %data103 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %68, i32 0, i32 11, !dbg !5706
  %bits_left104 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data103, i32 0, i32 3, !dbg !5707
  %69 = load i32, i32* %bits_left104, align 4, !dbg !5708
  %sub105 = sub i32 %69, 5, !dbg !5708
  store i32 %sub105, i32* %bits_left104, align 4, !dbg !5708
  br label %if.end130, !dbg !5709

if.else106:                                       ; preds = %for.body86
  %70 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5710
  %data107 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %70, i32 0, i32 11, !dbg !5712
  %tester108 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data107, i32 0, i32 0, !dbg !5713
  %71 = load i32, i32* %tester108, align 8, !dbg !5713
  %and109 = and i32 %71, 63, !dbg !5714
  %cmp110 = icmp eq i32 %and109, 60, !dbg !5715
  br i1 %cmp110, label %if.then112, label %if.else127, !dbg !5716

if.then112:                                       ; preds = %if.else106
  %system113 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 0, !dbg !5717
  %72 = load i16, i16* %system113, align 2, !dbg !5717
  %conv114 = zext i16 %72 to i32, !dbg !5719
  %shl115 = shl i32 %conv114, 1, !dbg !5720
  %add116 = add i32 %shl115, 1, !dbg !5721
  %conv117 = trunc i32 %add116 to i16, !dbg !5722
  %system118 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 0, !dbg !5723
  store i16 %conv117, i16* %system118, align 2, !dbg !5724
  %73 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5725
  %data119 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %73, i32 0, i32 11, !dbg !5726
  %tester120 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data119, i32 0, i32 0, !dbg !5727
  %74 = load i32, i32* %tester120, align 8, !dbg !5727
  %shr121 = lshr i32 %74, 6, !dbg !5728
  %75 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5729
  %data122 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %75, i32 0, i32 11, !dbg !5730
  %tester123 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data122, i32 0, i32 0, !dbg !5731
  store i32 %shr121, i32* %tester123, align 8, !dbg !5732
  %76 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5733
  %data124 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %76, i32 0, i32 11, !dbg !5734
  %bits_left125 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data124, i32 0, i32 3, !dbg !5735
  %77 = load i32, i32* %bits_left125, align 4, !dbg !5736
  %sub126 = sub i32 %77, 6, !dbg !5736
  store i32 %sub126, i32* %bits_left125, align 4, !dbg !5736
  br label %if.end129, !dbg !5737

if.else127:                                       ; preds = %if.else106
  %78 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5738
  %interface = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %78, i32 0, i32 5, !dbg !5738
  %79 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5738
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 7, !dbg !5738
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.keyspan_check_data, i64 0, i64 0)) #13, !dbg !5738
  %80 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5740
  %stage128 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %80, i32 0, i32 12, !dbg !5741
  store i32 0, i32* %stage128, align 8, !dbg !5742
  br label %sw.epilog, !dbg !5743

if.end129:                                        ; preds = %if.then112
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then93
  br label %for.inc131, !dbg !5744

for.inc131:                                       ; preds = %if.end130
  %81 = load i32, i32* %i, align 4, !dbg !5745
  %inc132 = add i32 %81, 1, !dbg !5745
  store i32 %inc132, i32* %i, align 4, !dbg !5745
  br label %for.cond83, !dbg !5746, !llvm.loop !5747

for.end133:                                       ; preds = %for.cond83
  %button = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 1, !dbg !5749
  store i8 0, i8* %button, align 2, !dbg !5750
  store i32 0, i32* %i, align 4, !dbg !5751
  br label %for.cond134, !dbg !5753

for.cond134:                                      ; preds = %for.inc185, %for.end133
  %82 = load i32, i32* %i, align 4, !dbg !5754
  %cmp135 = icmp slt i32 %82, 5, !dbg !5756
  br i1 %cmp135, label %for.body137, label %for.end187, !dbg !5757

for.body137:                                      ; preds = %for.cond134
  %83 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5758
  %call138 = call i32 @keyspan_load_tester(%struct.usb_keyspan* %83, i32 6) #9, !dbg !5760
  %84 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5761
  %data139 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %84, i32 0, i32 11, !dbg !5763
  %tester140 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data139, i32 0, i32 0, !dbg !5764
  %85 = load i32, i32* %tester140, align 8, !dbg !5764
  %and141 = and i32 %85, 31, !dbg !5765
  %cmp142 = icmp eq i32 %and141, 24, !dbg !5766
  br i1 %cmp142, label %if.then144, label %if.else158, !dbg !5767

if.then144:                                       ; preds = %for.body137
  %button145 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 1, !dbg !5768
  %86 = load i8, i8* %button145, align 2, !dbg !5768
  %conv146 = zext i8 %86 to i32, !dbg !5770
  %shl147 = shl i32 %conv146, 1, !dbg !5771
  %conv148 = trunc i32 %shl147 to i8, !dbg !5770
  %button149 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 1, !dbg !5772
  store i8 %conv148, i8* %button149, align 2, !dbg !5773
  %87 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5774
  %data150 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %87, i32 0, i32 11, !dbg !5775
  %tester151 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data150, i32 0, i32 0, !dbg !5776
  %88 = load i32, i32* %tester151, align 8, !dbg !5776
  %shr152 = lshr i32 %88, 5, !dbg !5777
  %89 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5778
  %data153 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %89, i32 0, i32 11, !dbg !5779
  %tester154 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data153, i32 0, i32 0, !dbg !5780
  store i32 %shr152, i32* %tester154, align 8, !dbg !5781
  %90 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5782
  %data155 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %90, i32 0, i32 11, !dbg !5783
  %bits_left156 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data155, i32 0, i32 3, !dbg !5784
  %91 = load i32, i32* %bits_left156, align 4, !dbg !5785
  %sub157 = sub i32 %91, 5, !dbg !5785
  store i32 %sub157, i32* %bits_left156, align 4, !dbg !5785
  br label %if.end184, !dbg !5786

if.else158:                                       ; preds = %for.body137
  %92 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5787
  %data159 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %92, i32 0, i32 11, !dbg !5789
  %tester160 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data159, i32 0, i32 0, !dbg !5790
  %93 = load i32, i32* %tester160, align 8, !dbg !5790
  %and161 = and i32 %93, 63, !dbg !5791
  %cmp162 = icmp eq i32 %and161, 60, !dbg !5792
  br i1 %cmp162, label %if.then164, label %if.else179, !dbg !5793

if.then164:                                       ; preds = %if.else158
  %button165 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 1, !dbg !5794
  %94 = load i8, i8* %button165, align 2, !dbg !5794
  %conv166 = zext i8 %94 to i32, !dbg !5796
  %shl167 = shl i32 %conv166, 1, !dbg !5797
  %add168 = add i32 %shl167, 1, !dbg !5798
  %conv169 = trunc i32 %add168 to i8, !dbg !5799
  %button170 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 1, !dbg !5800
  store i8 %conv169, i8* %button170, align 2, !dbg !5801
  %95 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5802
  %data171 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %95, i32 0, i32 11, !dbg !5803
  %tester172 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data171, i32 0, i32 0, !dbg !5804
  %96 = load i32, i32* %tester172, align 8, !dbg !5804
  %shr173 = lshr i32 %96, 6, !dbg !5805
  %97 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5806
  %data174 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %97, i32 0, i32 11, !dbg !5807
  %tester175 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data174, i32 0, i32 0, !dbg !5808
  store i32 %shr173, i32* %tester175, align 8, !dbg !5809
  %98 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5810
  %data176 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %98, i32 0, i32 11, !dbg !5811
  %bits_left177 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data176, i32 0, i32 3, !dbg !5812
  %99 = load i32, i32* %bits_left177, align 4, !dbg !5813
  %sub178 = sub i32 %99, 6, !dbg !5813
  store i32 %sub178, i32* %bits_left177, align 4, !dbg !5813
  br label %if.end183, !dbg !5814

if.else179:                                       ; preds = %if.else158
  %100 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5815
  %interface180 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %100, i32 0, i32 5, !dbg !5815
  %101 = load %struct.usb_interface*, %struct.usb_interface** %interface180, align 8, !dbg !5815
  %dev181 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 7, !dbg !5815
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev181, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.keyspan_check_data, i64 0, i64 0)) #13, !dbg !5815
  %102 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5817
  %stage182 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %102, i32 0, i32 12, !dbg !5818
  store i32 0, i32* %stage182, align 8, !dbg !5819
  br label %sw.epilog, !dbg !5820

if.end183:                                        ; preds = %if.then164
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then144
  br label %for.inc185, !dbg !5821

for.inc185:                                       ; preds = %if.end184
  %103 = load i32, i32* %i, align 4, !dbg !5822
  %inc186 = add i32 %103, 1, !dbg !5822
  store i32 %inc186, i32* %i, align 4, !dbg !5822
  br label %for.cond134, !dbg !5823, !llvm.loop !5824

for.end187:                                       ; preds = %for.cond134
  %104 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5826
  %call188 = call i32 @keyspan_load_tester(%struct.usb_keyspan* %104, i32 6) #9, !dbg !5827
  %105 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5828
  %data189 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %105, i32 0, i32 11, !dbg !5830
  %tester190 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data189, i32 0, i32 0, !dbg !5831
  %106 = load i32, i32* %tester190, align 8, !dbg !5831
  %and191 = and i32 %106, 31, !dbg !5832
  %cmp192 = icmp eq i32 %and191, 24, !dbg !5833
  br i1 %cmp192, label %if.then194, label %if.else203, !dbg !5834

if.then194:                                       ; preds = %for.end187
  %toggle = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 2, !dbg !5835
  store i8 0, i8* %toggle, align 1, !dbg !5837
  %107 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5838
  %data195 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %107, i32 0, i32 11, !dbg !5839
  %tester196 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data195, i32 0, i32 0, !dbg !5840
  %108 = load i32, i32* %tester196, align 8, !dbg !5840
  %shr197 = lshr i32 %108, 5, !dbg !5841
  %109 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5842
  %data198 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %109, i32 0, i32 11, !dbg !5843
  %tester199 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data198, i32 0, i32 0, !dbg !5844
  store i32 %shr197, i32* %tester199, align 8, !dbg !5845
  %110 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5846
  %data200 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %110, i32 0, i32 11, !dbg !5847
  %bits_left201 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data200, i32 0, i32 3, !dbg !5848
  %111 = load i32, i32* %bits_left201, align 4, !dbg !5849
  %sub202 = sub i32 %111, 5, !dbg !5849
  store i32 %sub202, i32* %bits_left201, align 4, !dbg !5849
  br label %if.end224, !dbg !5850

if.else203:                                       ; preds = %for.end187
  %112 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5851
  %data204 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %112, i32 0, i32 11, !dbg !5853
  %tester205 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data204, i32 0, i32 0, !dbg !5854
  %113 = load i32, i32* %tester205, align 8, !dbg !5854
  %and206 = and i32 %113, 63, !dbg !5855
  %cmp207 = icmp eq i32 %and206, 60, !dbg !5856
  br i1 %cmp207, label %if.then209, label %if.else219, !dbg !5857

if.then209:                                       ; preds = %if.else203
  %toggle210 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 2, !dbg !5858
  store i8 1, i8* %toggle210, align 1, !dbg !5860
  %114 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5861
  %data211 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %114, i32 0, i32 11, !dbg !5862
  %tester212 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data211, i32 0, i32 0, !dbg !5863
  %115 = load i32, i32* %tester212, align 8, !dbg !5863
  %shr213 = lshr i32 %115, 6, !dbg !5864
  %116 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5865
  %data214 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %116, i32 0, i32 11, !dbg !5866
  %tester215 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data214, i32 0, i32 0, !dbg !5867
  store i32 %shr213, i32* %tester215, align 8, !dbg !5868
  %117 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5869
  %data216 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %117, i32 0, i32 11, !dbg !5870
  %bits_left217 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data216, i32 0, i32 3, !dbg !5871
  %118 = load i32, i32* %bits_left217, align 4, !dbg !5872
  %sub218 = sub i32 %118, 6, !dbg !5872
  store i32 %sub218, i32* %bits_left217, align 4, !dbg !5872
  br label %if.end223, !dbg !5873

if.else219:                                       ; preds = %if.else203
  %119 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5874
  %interface220 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %119, i32 0, i32 5, !dbg !5874
  %120 = load %struct.usb_interface*, %struct.usb_interface** %interface220, align 8, !dbg !5874
  %dev221 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %120, i32 0, i32 7, !dbg !5874
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev221, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.keyspan_check_data, i64 0, i64 0)) #13, !dbg !5874
  %121 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5876
  %stage222 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %121, i32 0, i32 12, !dbg !5877
  store i32 0, i32* %stage222, align 8, !dbg !5878
  br label %sw.epilog, !dbg !5879

if.end223:                                        ; preds = %if.then209
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.then194
  %122 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5880
  %call225 = call i32 @keyspan_load_tester(%struct.usb_keyspan* %122, i32 5) #9, !dbg !5881
  %123 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5882
  %data226 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %123, i32 0, i32 11, !dbg !5884
  %tester227 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data226, i32 0, i32 0, !dbg !5885
  %124 = load i32, i32* %tester227, align 8, !dbg !5885
  %and228 = and i32 %124, 31, !dbg !5886
  %cmp229 = icmp eq i32 %and228, 0, !dbg !5887
  br i1 %cmp229, label %if.then231, label %if.else240, !dbg !5888

if.then231:                                       ; preds = %if.end224
  %125 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5889
  %data232 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %125, i32 0, i32 11, !dbg !5891
  %tester233 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data232, i32 0, i32 0, !dbg !5892
  %126 = load i32, i32* %tester233, align 8, !dbg !5892
  %shr234 = lshr i32 %126, 5, !dbg !5893
  %127 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5894
  %data235 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %127, i32 0, i32 11, !dbg !5895
  %tester236 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data235, i32 0, i32 0, !dbg !5896
  store i32 %shr234, i32* %tester236, align 8, !dbg !5897
  %128 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5898
  %data237 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %128, i32 0, i32 11, !dbg !5899
  %bits_left238 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data237, i32 0, i32 3, !dbg !5900
  %129 = load i32, i32* %bits_left238, align 4, !dbg !5901
  %sub239 = sub i32 %129, 5, !dbg !5901
  store i32 %sub239, i32* %bits_left238, align 4, !dbg !5901
  br label %if.end243, !dbg !5902

if.else240:                                       ; preds = %if.end224
  %130 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5903
  %interface241 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %130, i32 0, i32 5, !dbg !5903
  %131 = load %struct.usb_interface*, %struct.usb_interface** %interface241, align 8, !dbg !5903
  %dev242 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %131, i32 0, i32 7, !dbg !5903
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev242, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #13, !dbg !5903
  br label %if.end243

if.end243:                                        ; preds = %if.else240, %if.then231
  %toggle244 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 2, !dbg !5905
  %132 = load i8, i8* %toggle244, align 1, !dbg !5905
  %conv245 = zext i8 %132 to i32, !dbg !5907
  %133 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5908
  %toggle246 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %133, i32 0, i32 13, !dbg !5909
  %134 = load i32, i32* %toggle246, align 4, !dbg !5909
  %cmp247 = icmp ne i32 %conv245, %134, !dbg !5910
  br i1 %cmp247, label %if.then249, label %if.end257, !dbg !5911

if.then249:                                       ; preds = %if.end243
  %135 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5912
  %button250 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 1, !dbg !5914
  %136 = load i8, i8* %button250, align 2, !dbg !5914
  %conv251 = zext i8 %136 to i32, !dbg !5915
  call void @keyspan_report_button(%struct.usb_keyspan* %135, i32 %conv251, i32 1) #9, !dbg !5916
  %137 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5917
  %button252 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 1, !dbg !5918
  %138 = load i8, i8* %button252, align 2, !dbg !5918
  %conv253 = zext i8 %138 to i32, !dbg !5919
  call void @keyspan_report_button(%struct.usb_keyspan* %137, i32 %conv253, i32 0) #9, !dbg !5920
  %toggle254 = getelementptr inbounds %struct.keyspan_message, %struct.keyspan_message* %message, i32 0, i32 2, !dbg !5921
  %139 = load i8, i8* %toggle254, align 1, !dbg !5921
  %conv255 = zext i8 %139 to i32, !dbg !5922
  %140 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5923
  %toggle256 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %140, i32 0, i32 13, !dbg !5924
  store i32 %conv255, i32* %toggle256, align 4, !dbg !5925
  br label %if.end257, !dbg !5926

if.end257:                                        ; preds = %if.then249, %if.end243
  %141 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !5927
  %stage258 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %141, i32 0, i32 12, !dbg !5928
  store i32 0, i32* %stage258, align 8, !dbg !5929
  br label %sw.epilog, !dbg !5930

sw.epilog:                                        ; preds = %if.then38, %if.else127, %if.else179, %if.else219, %entry, %if.end257, %if.end70, %if.end
  ret void, !dbg !5931
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #8

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @keyspan_load_tester(%struct.usb_keyspan* %dev, i32 %bits_needed) #2 !dbg !5932 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.usb_keyspan*, align 8
  %bits_needed.addr = alloca i32, align 4
  store %struct.usb_keyspan* %dev, %struct.usb_keyspan** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %dev.addr, metadata !5935, metadata !DIExpression()), !dbg !5936
  store i32 %bits_needed, i32* %bits_needed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits_needed.addr, metadata !5937, metadata !DIExpression()), !dbg !5938
  %0 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5939
  %data = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %0, i32 0, i32 11, !dbg !5941
  %bits_left = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data, i32 0, i32 3, !dbg !5942
  %1 = load i32, i32* %bits_left, align 4, !dbg !5942
  %2 = load i32, i32* %bits_needed.addr, align 4, !dbg !5943
  %cmp = icmp sge i32 %1, %2, !dbg !5944
  br i1 %cmp, label %if.then, label %if.end, !dbg !5945

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5946
  br label %return, !dbg !5946

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5947
  %data1 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %3, i32 0, i32 11, !dbg !5949
  %pos = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data1, i32 0, i32 2, !dbg !5950
  %4 = load i32, i32* %pos, align 8, !dbg !5950
  %5 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5951
  %data2 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %5, i32 0, i32 11, !dbg !5952
  %len = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data2, i32 0, i32 1, !dbg !5953
  %6 = load i32, i32* %len, align 4, !dbg !5953
  %cmp3 = icmp sge i32 %4, %6, !dbg !5954
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5955

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !5956
  br label %return, !dbg !5956

if.end5:                                          ; preds = %if.end
  br label %while.cond, !dbg !5958

while.cond:                                       ; preds = %while.body, %if.end5
  %7 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5959
  %data6 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %7, i32 0, i32 11, !dbg !5960
  %bits_left7 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data6, i32 0, i32 3, !dbg !5961
  %8 = load i32, i32* %bits_left7, align 4, !dbg !5961
  %add = add i32 %8, 7, !dbg !5962
  %conv = sext i32 %add to i64, !dbg !5959
  %cmp8 = icmp ult i64 %conv, 32, !dbg !5963
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !5964

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5965
  %data10 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %9, i32 0, i32 11, !dbg !5966
  %pos11 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data10, i32 0, i32 2, !dbg !5967
  %10 = load i32, i32* %pos11, align 8, !dbg !5967
  %11 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5968
  %data12 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %11, i32 0, i32 11, !dbg !5969
  %len13 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data12, i32 0, i32 1, !dbg !5970
  %12 = load i32, i32* %len13, align 4, !dbg !5970
  %cmp14 = icmp slt i32 %10, %12, !dbg !5971
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ], !dbg !5972
  br i1 %13, label %while.body, label %while.end, !dbg !5958

while.body:                                       ; preds = %land.end
  %14 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5973
  %data16 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %14, i32 0, i32 11, !dbg !5975
  %buffer = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data16, i32 0, i32 4, !dbg !5976
  %15 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5977
  %data17 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %15, i32 0, i32 11, !dbg !5978
  %pos18 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data17, i32 0, i32 2, !dbg !5979
  %16 = load i32, i32* %pos18, align 8, !dbg !5980
  %inc = add i32 %16, 1, !dbg !5980
  store i32 %inc, i32* %pos18, align 8, !dbg !5980
  %idxprom = sext i32 %16 to i64, !dbg !5973
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %buffer, i64 0, i64 %idxprom, !dbg !5973
  %17 = load i8, i8* %arrayidx, align 1, !dbg !5973
  %conv19 = zext i8 %17 to i32, !dbg !5973
  %18 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5981
  %data20 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %18, i32 0, i32 11, !dbg !5982
  %bits_left21 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data20, i32 0, i32 3, !dbg !5983
  %19 = load i32, i32* %bits_left21, align 4, !dbg !5983
  %shl = shl i32 %conv19, %19, !dbg !5984
  %20 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5985
  %data22 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %20, i32 0, i32 11, !dbg !5986
  %tester = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data22, i32 0, i32 0, !dbg !5987
  %21 = load i32, i32* %tester, align 8, !dbg !5988
  %add23 = add i32 %21, %shl, !dbg !5988
  store i32 %add23, i32* %tester, align 8, !dbg !5988
  %22 = load %struct.usb_keyspan*, %struct.usb_keyspan** %dev.addr, align 8, !dbg !5989
  %data24 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %22, i32 0, i32 11, !dbg !5990
  %bits_left25 = getelementptr inbounds %struct.bit_tester, %struct.bit_tester* %data24, i32 0, i32 3, !dbg !5991
  %23 = load i32, i32* %bits_left25, align 4, !dbg !5992
  %add26 = add i32 %23, 8, !dbg !5992
  store i32 %add26, i32* %bits_left25, align 4, !dbg !5992
  br label %while.cond, !dbg !5958, !llvm.loop !5993

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !5995
  br label %return, !dbg !5995

return:                                           ; preds = %while.end, %if.then4, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !5996
  ret i32 %24, !dbg !5996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @keyspan_report_button(%struct.usb_keyspan* %remote, i32 %button, i32 %press) #2 !dbg !5997 {
entry:
  %remote.addr = alloca %struct.usb_keyspan*, align 8
  %button.addr = alloca i32, align 4
  %press.addr = alloca i32, align 4
  %input = alloca %struct.input_dev*, align 8
  store %struct.usb_keyspan* %remote, %struct.usb_keyspan** %remote.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_keyspan** %remote.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  store i32 %button, i32* %button.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %button.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  store i32 %press, i32* %press.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %press.addr, metadata !6004, metadata !DIExpression()), !dbg !6005
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !6006, metadata !DIExpression()), !dbg !6007
  %0 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !6008
  %input1 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %0, i32 0, i32 4, !dbg !6009
  %1 = load %struct.input_dev*, %struct.input_dev** %input1, align 8, !dbg !6009
  store %struct.input_dev* %1, %struct.input_dev** %input, align 8, !dbg !6007
  %2 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !6010
  %3 = load i32, i32* %button.addr, align 4, !dbg !6011
  call void @input_event(%struct.input_dev* %2, i32 4, i32 4, i32 %3) #9, !dbg !6012
  %4 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !6013
  %5 = load %struct.usb_keyspan*, %struct.usb_keyspan** %remote.addr, align 8, !dbg !6014
  %keymap = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %5, i32 0, i32 2, !dbg !6015
  %6 = load i32, i32* %button.addr, align 4, !dbg !6016
  %idxprom = sext i32 %6 to i64, !dbg !6014
  %arrayidx = getelementptr [32 x i16], [32 x i16]* %keymap, i64 0, i64 %idxprom, !dbg !6014
  %7 = load i16, i16* %arrayidx, align 2, !dbg !6014
  %conv = zext i16 %7 to i32, !dbg !6014
  %8 = load i32, i32* %press.addr, align 4, !dbg !6017
  call void @input_report_key(%struct.input_dev* %4, i32 %conv, i32 %8) #9, !dbg !6018
  %9 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !6019
  call void @input_sync(%struct.input_dev* %9) #9, !dbg !6020
  ret void, !dbg !6021
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !6022 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6025, metadata !DIExpression()), !dbg !6026
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6031
  %1 = load i32, i32* %code.addr, align 4, !dbg !6032
  %2 = load i32, i32* %value.addr, align 4, !dbg !6033
  %tobool = icmp ne i32 %2, 0, !dbg !6034
  %lnot = xor i1 %tobool, true, !dbg !6034
  %lnot1 = xor i1 %lnot, true, !dbg !6035
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6035
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #9, !dbg !6036
  ret void, !dbg !6037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !6038 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6041
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #9, !dbg !6042
  ret void, !dbg !6043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6044 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6047, metadata !DIExpression()), !dbg !6048
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6049
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6050
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6051
  ret i8* %call, !dbg !6052
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3972, !3973, !3974, !3975}
!llvm.ident = !{!3976}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 19, type: !3969, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !3812, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/misc/keyspan_remote.c", directory: "/home/lizy2001/genbc/linux")
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
!125 = !{!126, !129, !131, !134, !136, !137, !138, !3811}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !128, line: 76, flags: DIFlagFwdDecl)
!128 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !130, line: 148, baseType: !7)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !132, line: 24, baseType: !133)
!132 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !135, line: 29, baseType: !131)
!135 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !140)
!140 = !{!141, !142, !147, !151, !152, !153, !154, !155, !158, !159, !163, !164, !3553, !3593, !3594, !3611, !3672, !3754, !3755, !3757, !3758, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3793, !3794, !3795, !3800, !3807, !3808, !3809, !3810}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !139, file: !6, line: 632, baseType: !136, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !139, file: !6, line: 633, baseType: !143, size: 128, offset: 32)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !145)
!144 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!145 = !{!146}
!146 = !DISubrange(count: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !139, file: !6, line: 634, baseType: !148, size: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !149, line: 21, baseType: !150)
!149 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !7)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !139, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !139, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !139, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !139, file: !6, line: 640, baseType: !156, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !139, file: !6, line: 641, baseType: !136, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !139, file: !6, line: 643, baseType: !160, size: 64, offset: 416)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 2)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !6, line: 645, baseType: !138, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !139, file: !6, line: 646, baseType: !165, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !167)
!167 = !{!168, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3547, !3548, !3549, !3550, !3551, !3552}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !166, file: !6, line: 425, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !171)
!171 = !{!172, !3171, !3172, !3175, !3176, !3227, !3318, !3319, !3320, !3321, !3322, !3331, !3436, !3449, !3452, !3453, !3457, !3459, !3460, !3461, !3465, !3471, !3472, !3475, !3479, !3482, !3483, !3484, !3485, !3486, !3518, !3519, !3520, !3523, !3526, !3527, !3528, !3529}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !67, line: 462, baseType: !173, size: 512)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !174, line: 64, size: 512, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !179, !185, !187, !247, !3022, !3161, !3166, !3167, !3168, !3169, !3170}
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
!218 = !{!136, !188, !186}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !174, line: 158, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!177, !188, !186}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !212, file: !174, line: 159, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!136, !188, !186, !229}
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
!241 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !230, file: !174, line: 151, baseType: !136, size: 32, offset: 4288)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !230, file: !174, line: 152, baseType: !243, size: 16384, offset: 4320)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16384, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 2048)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !230, file: !174, line: 153, baseType: !136, size: 32, offset: 20704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !173, file: !174, line: 69, baseType: !248, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !174, line: 138, size: 448, elements: !250)
!250 = !{!251, !255, !284, !286, !2982, !3012, !3016}
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
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !130, line: 19, baseType: !133)
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
!291 = !{!292, !293, !297, !2979, !2980}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !259, line: 85, baseType: !177, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !290, file: !259, line: 86, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!275, !186, !270, !136}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !290, file: !259, line: 88, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!275, !186, !301, !136}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !259, line: 168, size: 448, elements: !303)
!303 = !{!304, !305, !306, !307, !2974, !2975}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !302, file: !259, line: 169, baseType: !271, size: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !302, file: !259, line: 170, baseType: !280, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !302, file: !259, line: 171, baseType: !137, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !302, file: !259, line: 172, baseType: !308, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!265, !311, !186, !301, !234, !486, !280}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !313)
!313 = !{!314, !332, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2957, !2958, !2967, !2968, !2969, !2970, !2971, !2972, !2973}
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
!343 = !{!344, !345, !355, !363, !364, !383, !2907, !2909, !2921, !2922, !2923, !2924, !2925, !2931, !2932, !2933}
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
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !132, line: 31, baseType: !378)
!378 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !339, line: 54, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !342, file: !339, line: 96, baseType: !384, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !386)
!386 = !{!387, !388, !389, !397, !404, !405, !553, !2619, !2620, !2621, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2883, !2891, !2892, !2893, !2903, !2904, !2905, !2906}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !385, file: !38, line: 611, baseType: !275, size: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !385, file: !38, line: 612, baseType: !133, size: 16, offset: 16)
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
!425 = !{null, !137}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !419, file: !420, line: 12, baseType: !137, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !408, file: !38, line: 1867, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!136, !384, !136}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !408, file: !38, line: 1868, baseType: !432, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !384, !136}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !408, file: !38, line: 1870, baseType: !438, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!136, !341, !234, !136}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !408, file: !38, line: 1872, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!136, !384, !341, !275, !445}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 30, baseType: !446)
!446 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !408, file: !38, line: 1873, baseType: !448, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!136, !341, !384, !341}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !408, file: !38, line: 1874, baseType: !452, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!136, !384, !341}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !408, file: !38, line: 1875, baseType: !456, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!136, !384, !341, !177}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !408, file: !38, line: 1876, baseType: !460, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!136, !384, !341, !275}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !408, file: !38, line: 1877, baseType: !452, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !408, file: !38, line: 1878, baseType: !465, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!136, !384, !341, !275, !468}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !130, line: 16, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !130, line: 13, baseType: !148)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !408, file: !38, line: 1879, baseType: !471, size: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!136, !384, !341, !384, !341, !7}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !408, file: !38, line: 1881, baseType: !475, size: 64, offset: 832)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!136, !341, !478}
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
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !488)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !490, file: !491, line: 15, baseType: !269, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !479, file: !38, line: 226, baseType: !490, size: 128, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !479, file: !38, line: 227, baseType: !490, size: 128, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !479, file: !38, line: 234, baseType: !311, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !408, file: !38, line: 1882, baseType: !501, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!136, !504, !506, !148, !7}
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
!536 = !{!136, !384, !537, !376, !376}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !408, file: !38, line: 1886, baseType: !540, size: 64, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!136, !384, !543, !136}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !408, file: !38, line: 1887, baseType: !545, size: 64, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!136, !384, !341, !311, !7, !275}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !408, file: !38, line: 1890, baseType: !460, size: 64, offset: 1216)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !408, file: !38, line: 1891, baseType: !550, size: 64, offset: 1280)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!136, !384, !435, !136}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !385, file: !38, line: 623, baseType: !554, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !609, !2226, !2308, !2391, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2407, !2411, !2412, !2415, !2416, !2419, !2420, !2421, !2462, !2489, !2490, !2491, !2492, !2493, !2494, !2497, !2499, !2506, !2507, !2509, !2510, !2511, !2570, !2571, !2586, !2587, !2588, !2589, !2590, !2593, !2594, !2595, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
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
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !564, file: !38, line: 2230, baseType: !136, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !564, file: !38, line: 2238, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!136, !572}
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
!582 = !{!341, !563, !136, !177, !137}
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
!613 = !{!614, !618, !622, !623, !627, !633, !637, !638, !639, !643, !647, !648, !649, !650, !656, !661, !662, !669, !670, !671, !672, !2210, !2225}
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
!626 = !{null, !384, !136}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !612, file: !38, line: 1941, baseType: !628, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!136, !384, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !612, file: !38, line: 1942, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!136, !384}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !612, file: !38, line: 1943, baseType: !619, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !612, file: !38, line: 1944, baseType: !584, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !612, file: !38, line: 1945, baseType: !640, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!136, !554, !136}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !612, file: !38, line: 1946, baseType: !644, size: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!136, !554}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !612, file: !38, line: 1947, baseType: !644, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !612, file: !38, line: 1948, baseType: !644, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !612, file: !38, line: 1949, baseType: !644, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !612, file: !38, line: 1950, baseType: !651, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!136, !341, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !612, file: !38, line: 1951, baseType: !657, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!136, !554, !660, !234}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !612, file: !38, line: 1952, baseType: !584, size: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !612, file: !38, line: 1954, baseType: !663, size: 64, offset: 1024)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!136, !666, !341}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !668, line: 539, flags: DIFlagFwdDecl)
!668 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !612, file: !38, line: 1955, baseType: !663, size: 64, offset: 1088)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !612, file: !38, line: 1956, baseType: !663, size: 64, offset: 1152)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !612, file: !38, line: 1957, baseType: !663, size: 64, offset: 1216)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !612, file: !38, line: 1963, baseType: !673, size: 64, offset: 1280)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!136, !554, !676, !129}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !678, line: 68, size: 512, align: 128, elements: !679)
!678 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !681, !2202, !2209}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !678, line: 69, baseType: !283, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 77, baseType: !682, size: 320, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !678, line: 77, size: 320, elements: !683)
!683 = !{!684, !870, !875, !903, !911, !917, !2194, !2201}
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
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !694, file: !695, line: 296, baseType: !137, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !690, file: !38, line: 454, baseType: !129, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !690, file: !38, line: 455, baseType: !702, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !130, line: 168, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 166, size: 32, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !703, file: !130, line: 167, baseType: !136, size: 32)
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
!748 = !{!136, !676, !631}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !743, file: !38, line: 369, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!136, !311, !676}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !743, file: !38, line: 372, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!136, !689, !631}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !743, file: !38, line: 375, baseType: !758, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!136, !676}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !743, file: !38, line: 381, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!136, !311, !689, !183, !7}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !743, file: !38, line: 383, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !743, file: !38, line: 385, baseType: !772, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!136, !311, !689, !486, !7, !7, !775, !776}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !743, file: !38, line: 388, baseType: !778, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!136, !311, !689, !486, !7, !7, !676, !137}
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
!793 = !{!136, !676, !129}
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
!811 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !803, file: !38, line: 328, baseType: !137, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !803, file: !38, line: 329, baseType: !136, size: 32, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !803, file: !38, line: 330, baseType: !814, size: 16, offset: 288)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !149, line: 19, baseType: !131)
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
!828 = !{!136, !689, !676, !676, !13}
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
!840 = !{!136, !676, !283, !283}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !743, file: !38, line: 409, baseType: !842, size: 64, offset: 1152)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !676, !845, !845}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !743, file: !38, line: 410, baseType: !847, size: 64, offset: 1216)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!136, !689, !676}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !743, file: !38, line: 413, baseType: !851, size: 64, offset: 1280)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!136, !854, !311, !856}
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
!867 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !690, file: !38, line: 470, baseType: !137, size: 64, offset: 1152)
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
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !883, file: !678, line: 109, baseType: !136, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !883, file: !678, line: 110, baseType: !136, size: 32, offset: 96)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !876, file: !678, line: 117, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !678, line: 117, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !876, file: !678, line: 119, baseType: !137, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !876, file: !678, line: 120, baseType: !893, size: 64, offset: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !876, file: !678, line: 120, size: 64, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !893, file: !678, line: 121, baseType: !137, size: 64)
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
!919 = !{!920, !921, !923, !924, !2193}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !918, file: !678, line: 146, baseType: !283, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !918, file: !678, line: 147, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !668, line: 509, baseType: !676)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !918, file: !678, line: 148, baseType: !283, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !678, line: 149, baseType: !925, size: 64, offset: 192)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !678, line: 149, size: 64, elements: !926)
!926 = !{!927, !2192}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !925, file: !678, line: 150, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !678, line: 388, size: 7296, elements: !930)
!930 = !{!931, !2188}
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !678, line: 389, baseType: !932, size: 7296)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !678, line: 389, size: 7296, elements: !933)
!933 = !{!934, !972, !973, !974, !978, !979, !980, !981, !982, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1023, !1031, !1034, !1080, !1081, !2172, !2173, !2176, !2177, !2178, !2181, !2182, !2183, !2186, !2187}
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
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !936, file: !678, line: 362, baseType: !137, size: 64, offset: 1344)
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
!994 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !932, file: !678, line: 452, baseType: !136, size: 32, offset: 768)
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
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1037, file: !1036, line: 37, baseType: !133, size: 16, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1037, file: !1036, line: 40, baseType: !1047, size: 192, offset: 512)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1048, line: 53, size: 192, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1047, file: !1048, line: 54, baseType: !726, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1047, file: !1048, line: 55, baseType: !193, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1047, file: !1048, line: 59, baseType: !180, size: 128, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1037, file: !1036, line: 41, baseType: !137, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1037, file: !1036, line: 42, baseType: !1055, size: 64, offset: 768)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1058, line: 13, size: 896, elements: !1059)
!1058 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1057, file: !1058, line: 14, baseType: !137, size: 64)
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
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !132, line: 23, baseType: !1079)
!1079 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !932, file: !678, line: 495, baseType: !283, size: 64, offset: 6528)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !932, file: !678, line: 497, baseType: !1082, size: 64, offset: 6592)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !678, line: 381, size: 384, elements: !1084)
!1084 = !{!1085, !1086, !2171}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1083, file: !678, line: 382, baseType: !702, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1083, file: !678, line: 383, baseType: !1087, size: 128, offset: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !678, line: 376, size: 128, elements: !1088)
!1088 = !{!1089, !2169}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1087, file: !678, line: 377, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1092, line: 640, size: 48640, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1100, !1102, !1103, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1120, !1138, !1149, !1234, !1235, !1236, !1247, !1248, !1250, !1251, !1252, !1253, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1332, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1370, !1372, !1373, !1374, !1386, !1387, !1388, !1389, !1390, !1391, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1415, !1420, !1602, !1603, !1604, !1605, !1606, !1609, !1612, !1615, !1618, !1622, !1723, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1769, !1770, !1771, !1772, !1773, !1778, !1779, !1780, !1783, !1784, !1787, !1790, !1793, !1796, !1839, !1842, !1843, !1922, !1923, !1926, !1927, !1930, !1931, !1932, !1936, !1937, !1938, !1951, !1952, !1953, !1963, !1968, !1971, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1091, file: !1092, line: 646, baseType: !1095, size: 128)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1096, line: 56, size: 128, elements: !1097)
!1096 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1096, line: 57, baseType: !283, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1095, file: !1096, line: 58, baseType: !148, size: 32, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1091, file: !1092, line: 649, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !269)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1091, file: !1092, line: 657, baseType: !137, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1091, file: !1092, line: 658, baseType: !1104, size: 32, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1105, line: 113, baseType: !1106)
!1105 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1105, line: 111, size: 32, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1106, file: !1105, line: 112, baseType: !702, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1091, file: !1092, line: 660, baseType: !7, size: 32, offset: 288)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1091, file: !1092, line: 661, baseType: !7, size: 32, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1091, file: !1092, line: 684, baseType: !136, size: 32, offset: 352)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1091, file: !1092, line: 686, baseType: !136, size: 32, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1091, file: !1092, line: 687, baseType: !136, size: 32, offset: 416)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1091, file: !1092, line: 688, baseType: !136, size: 32, offset: 448)
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
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1139, file: !1092, line: 494, baseType: !133, size: 16, offset: 288)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1139, file: !1092, line: 495, baseType: !133, size: 16, offset: 304)
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
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !267, line: 96, baseType: !136)
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
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !382)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1166, file: !21, line: 124, baseType: !1226, size: 8, offset: 456)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1166, file: !21, line: 125, baseType: !1226, size: 8, offset: 464)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1166, file: !21, line: 126, baseType: !1226, size: 8, offset: 472)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1150, file: !1092, line: 572, baseType: !1166, size: 512, offset: 1216)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1150, file: !1092, line: 580, baseType: !1233, size: 64, offset: 1728)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1091, file: !1092, line: 721, baseType: !7, size: 32, offset: 3584)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1091, file: !1092, line: 722, baseType: !136, size: 32, offset: 3616)
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
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1091, file: !1092, line: 766, baseType: !136, size: 32, offset: 4352)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1091, file: !1092, line: 767, baseType: !136, size: 32, offset: 4384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1091, file: !1092, line: 768, baseType: !136, size: 32, offset: 4416)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1091, file: !1092, line: 770, baseType: !136, size: 32, offset: 4448)
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
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !136)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1313, file: !1314, line: 9, baseType: !1318, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1296, file: !26, line: 45, baseType: !376, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1283, file: !26, line: 54, baseType: !1323, size: 256)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1283, file: !26, line: 48, size: 256, elements: !1324)
!1324 = !{!1325, !1328, !1329, !1330, !1331}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1323, file: !26, line: 49, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1323, file: !26, line: 50, baseType: !136, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1323, file: !26, line: 51, baseType: !136, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1323, file: !26, line: 52, baseType: !283, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1323, file: !26, line: 53, baseType: !283, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1091, file: !1092, line: 835, baseType: !1333, size: 32, offset: 5120)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !130, line: 22, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !267, line: 28, baseType: !136)
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
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1364, file: !47, line: 55, baseType: !136, size: 32)
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
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1450, file: !1451, line: 201, baseType: !137, size: 64, offset: 576)
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
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1450, file: !1451, line: 210, baseType: !133, size: 16, offset: 864)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1450, file: !1451, line: 211, baseType: !133, size: 16, offset: 880)
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
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1523, file: !1451, line: 129, baseType: !137, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1523, file: !1451, line: 130, baseType: !1527, size: 256)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !1029)
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
!1548 = !{!136, !1449, !1549, !1551, !1449}
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
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1574, file: !1575, line: 18, baseType: !136, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1574, file: !1575, line: 19, baseType: !136, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1574, file: !1575, line: 20, baseType: !136, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1574, file: !1575, line: 21, baseType: !136, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1574, file: !1575, line: 22, baseType: !283, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1574, file: !1575, line: 23, baseType: !283, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1423, file: !1424, line: 146, baseType: !1585, size: 64, offset: 1024)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !678, line: 516, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1423, file: !1424, line: 147, baseType: !1588, size: 64, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1424, line: 25, size: 64, elements: !1590)
!1590 = !{!1591, !1592, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1589, file: !1424, line: 26, baseType: !702, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1589, file: !1424, line: 27, baseType: !136, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !1424, line: 28, baseType: !1594, offset: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 0)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 149, baseType: !1598, size: 128, offset: 1152)
!1598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 149, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1598, file: !1424, line: 150, baseType: !136, size: 32)
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
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1624, file: !1625, line: 85, baseType: !136, size: 32, offset: 64)
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
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1624, file: !1625, line: 100, baseType: !136, size: 32, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1624, file: !1625, line: 106, baseType: !136, size: 32, offset: 736)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1624, file: !1625, line: 107, baseType: !1090, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1624, file: !1625, line: 110, baseType: !136, size: 32, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !1625, line: 111, baseType: !7, size: 32, offset: 864)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1624, file: !1625, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1624, file: !1625, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1624, file: !1625, line: 128, baseType: !136, size: 32, offset: 928)
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
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1624, file: !1625, line: 162, baseType: !136, size: 32, offset: 3072)
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
!1743 = !{null, !136}
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
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1761, file: !1762, line: 36, baseType: !136, size: 32)
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
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1091, file: !1092, line: 1043, baseType: !137, size: 64, offset: 10560)
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
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1798, file: !1799, line: 107, baseType: !133, size: 16, offset: 128)
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
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1849, file: !1635, line: 13, baseType: !136, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1849, file: !1635, line: 13, baseType: !136, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1849, file: !1635, line: 13, baseType: !136, size: 32, offset: 64)
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
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !267, line: 95, baseType: !136)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1864, file: !1856, line: 42, baseType: !136, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1864, file: !1856, line: 43, baseType: !1870, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1856, line: 11, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1856, line: 8, size: 64, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1871, file: !1856, line: 9, baseType: !136, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1871, file: !1856, line: 10, baseType: !137, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1864, file: !1856, line: 44, baseType: !136, size: 32, offset: 128)
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
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1883, file: !1856, line: 58, baseType: !136, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1883, file: !1856, line: 59, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !267, line: 94, baseType: !268)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1883, file: !1856, line: 60, baseType: !1889, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1855, file: !1856, line: 95, baseType: !1892, size: 256)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 64, size: 256, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1892, file: !1856, line: 65, baseType: !137, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, scope: !1892, file: !1856, line: 77, baseType: !1896, size: 192, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !1856, line: 77, size: 192, elements: !1897)
!1897 = !{!1898, !1899, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1896, file: !1856, line: 82, baseType: !1079, size: 16)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1896, file: !1856, line: 88, baseType: !1900, size: 192)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1856, line: 84, size: 192, elements: !1901)
!1901 = !{!1902, !1904, !1905}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1900, file: !1856, line: 85, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !1204)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1900, file: !1856, line: 86, baseType: !137, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1900, file: !1856, line: 87, baseType: !137, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1896, file: !1856, line: 93, baseType: !1907, size: 96)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1856, line: 90, size: 96, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1907, file: !1856, line: 91, baseType: !1903, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1907, file: !1856, line: 92, baseType: !150, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1855, file: !1856, line: 101, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 98, size: 128, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1912, file: !1856, line: 99, baseType: !269, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1912, file: !1856, line: 100, baseType: !136, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1855, file: !1856, line: 108, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !1856, line: 104, size: 128, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1917, file: !1856, line: 105, baseType: !137, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1917, file: !1856, line: 106, baseType: !136, size: 32, offset: 64)
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
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1091, file: !1092, line: 1206, baseType: !136, size: 32, offset: 12736)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1091, file: !1092, line: 1207, baseType: !136, size: 32, offset: 12768)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1091, file: !1092, line: 1209, baseType: !283, size: 64, offset: 12800)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1091, file: !1092, line: 1219, baseType: !376, size: 64, offset: 12864)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1091, file: !1092, line: 1220, baseType: !376, size: 64, offset: 12928)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1091, file: !1092, line: 1317, baseType: !136, size: 32, offset: 12992)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1091, file: !1092, line: 1319, baseType: !1090, size: 64, offset: 13056)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1091, file: !1092, line: 1322, baseType: !1985, size: 64, offset: 13120)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1987, line: 9, flags: DIFlagFwdDecl)
!1987 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1091, file: !1092, line: 1326, baseType: !1104, size: 32, offset: 13184)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1091, file: !1092, line: 1342, baseType: !137, size: 64, offset: 13248)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1091, file: !1092, line: 1343, baseType: !377, size: 64, offset: 13312)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1091, file: !1092, line: 1344, baseType: !376, size: 64, offset: 13376)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1091, file: !1092, line: 1345, baseType: !377, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1091, file: !1092, line: 1346, baseType: !377, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1091, file: !1092, line: 1347, baseType: !377, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1091, file: !1092, line: 1348, baseType: !324, size: 128, align: 64, offset: 13504)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1091, file: !1092, line: 1358, baseType: !1997, size: 34816, offset: 13824)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1998, line: 485, size: 34816, elements: !1999)
!1998 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2029, !2030, !2031, !2032, !2033, !2034, !2037, !2038, !2039}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1997, file: !1998, line: 487, baseType: !2001, size: 192)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2002, size: 192, elements: !235)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2003, line: 16, size: 64, elements: !2004)
!2003 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2002, file: !2003, line: 17, baseType: !814, size: 16)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2002, file: !2003, line: 18, baseType: !814, size: 16, offset: 16)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2002, file: !2003, line: 19, baseType: !814, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2002, file: !2003, line: 19, baseType: !814, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2002, file: !2003, line: 19, baseType: !814, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2002, file: !2003, line: 19, baseType: !814, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2002, file: !2003, line: 19, baseType: !814, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2002, file: !2003, line: 20, baseType: !814, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2002, file: !2003, line: 20, baseType: !814, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2002, file: !2003, line: 20, baseType: !814, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2002, file: !2003, line: 20, baseType: !814, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2002, file: !2003, line: 20, baseType: !814, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2002, file: !2003, line: 20, baseType: !814, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1997, file: !1998, line: 491, baseType: !283, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1997, file: !1998, line: 495, baseType: !133, size: 16, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1997, file: !1998, line: 496, baseType: !133, size: 16, offset: 272)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1997, file: !1998, line: 497, baseType: !133, size: 16, offset: 288)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1997, file: !1998, line: 498, baseType: !133, size: 16, offset: 304)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1997, file: !1998, line: 502, baseType: !283, size: 64, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1997, file: !1998, line: 503, baseType: !283, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1997, file: !1998, line: 514, baseType: !2026, size: 256, offset: 448)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2027, size: 256, elements: !1029)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1998, line: 483, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1997, file: !1998, line: 516, baseType: !283, size: 64, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1997, file: !1998, line: 518, baseType: !283, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1997, file: !1998, line: 520, baseType: !283, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1997, file: !1998, line: 521, baseType: !283, size: 64, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1997, file: !1998, line: 522, baseType: !283, size: 64, offset: 960)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1997, file: !1998, line: 528, baseType: !2035, size: 64, offset: 1024)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1998, line: 10, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1997, file: !1998, line: 535, baseType: !283, size: 64, offset: 1088)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1997, file: !1998, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1997, file: !1998, line: 540, baseType: !2040, size: 33280, offset: 1536)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2041, line: 317, size: 33280, elements: !2042)
!2041 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2040, file: !2041, line: 330, baseType: !7, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2040, file: !2041, line: 337, baseType: !283, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2040, file: !2041, line: 348, baseType: !2046, size: 32768, offset: 512)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2041, line: 304, size: 32768, elements: !2047)
!2047 = !{!2048, !2063, !2102, !2152, !2165}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2046, file: !2041, line: 305, baseType: !2049, size: 896)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2041, line: 12, size: 896, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2062}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2049, file: !2041, line: 13, baseType: !148, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2049, file: !2041, line: 14, baseType: !148, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2049, file: !2041, line: 15, baseType: !148, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2049, file: !2041, line: 16, baseType: !148, size: 32, offset: 96)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2049, file: !2041, line: 17, baseType: !148, size: 32, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2049, file: !2041, line: 18, baseType: !148, size: 32, offset: 160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2049, file: !2041, line: 19, baseType: !148, size: 32, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2049, file: !2041, line: 22, baseType: !2059, size: 640, offset: 224)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 640, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 20)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2049, file: !2041, line: 25, baseType: !148, size: 32, offset: 864)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2046, file: !2041, line: 306, baseType: !2064, size: 4096, align: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2041, line: 34, size: 4096, align: 128, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2085, !2086, !2087, !2091, !2093, !2097}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2064, file: !2041, line: 35, baseType: !814, size: 16)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2064, file: !2041, line: 36, baseType: !814, size: 16, offset: 16)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2064, file: !2041, line: 37, baseType: !814, size: 16, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2064, file: !2041, line: 38, baseType: !814, size: 16, offset: 48)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2064, file: !2041, line: 39, baseType: !2071, size: 128, offset: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2064, file: !2041, line: 39, size: 128, elements: !2072)
!2072 = !{!2073, !2078}
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2041, line: 40, baseType: !2074, size: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2071, file: !2041, line: 40, size: 128, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2074, file: !2041, line: 41, baseType: !376, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2074, file: !2041, line: 42, baseType: !376, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, scope: !2071, file: !2041, line: 44, baseType: !2079, size: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2071, file: !2041, line: 44, size: 128, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2079, file: !2041, line: 45, baseType: !148, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2079, file: !2041, line: 46, baseType: !148, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2079, file: !2041, line: 47, baseType: !148, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2079, file: !2041, line: 48, baseType: !148, size: 32, offset: 96)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2064, file: !2041, line: 51, baseType: !148, size: 32, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2064, file: !2041, line: 52, baseType: !148, size: 32, offset: 224)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2064, file: !2041, line: 55, baseType: !2088, size: 1024, offset: 256)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1024, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2064, file: !2041, line: 58, baseType: !2092, size: 2048, offset: 1280)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2048, elements: !239)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2064, file: !2041, line: 60, baseType: !2094, size: 384, offset: 3328)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, elements: !2095)
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
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2103, file: !2041, line: 80, baseType: !148, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2103, file: !2041, line: 81, baseType: !148, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2103, file: !2041, line: 82, baseType: !148, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2103, file: !2041, line: 83, baseType: !148, size: 32, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2103, file: !2041, line: 84, baseType: !148, size: 32, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2103, file: !2041, line: 85, baseType: !148, size: 32, offset: 160)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2103, file: !2041, line: 86, baseType: !148, size: 32, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2103, file: !2041, line: 88, baseType: !2059, size: 640, offset: 224)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2103, file: !2041, line: 89, baseType: !1226, size: 8, offset: 864)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2103, file: !2041, line: 90, baseType: !1226, size: 8, offset: 872)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2103, file: !2041, line: 91, baseType: !1226, size: 8, offset: 880)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2103, file: !2041, line: 92, baseType: !1226, size: 8, offset: 888)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2103, file: !2041, line: 93, baseType: !1226, size: 8, offset: 896)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2103, file: !2041, line: 94, baseType: !1226, size: 8, offset: 904)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2103, file: !2041, line: 95, baseType: !2120, size: 64, offset: 960)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2122, line: 11, size: 128, elements: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2121, file: !2122, line: 12, baseType: !269, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2121, file: !2122, line: 13, baseType: !2126, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2128, line: 56, size: 1344, elements: !2129)
!2128 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2127, file: !2128, line: 61, baseType: !283, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2127, file: !2128, line: 62, baseType: !283, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2127, file: !2128, line: 63, baseType: !283, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2127, file: !2128, line: 64, baseType: !283, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2127, file: !2128, line: 65, baseType: !283, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2127, file: !2128, line: 66, baseType: !283, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2127, file: !2128, line: 68, baseType: !283, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2127, file: !2128, line: 69, baseType: !283, size: 64, offset: 448)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2127, file: !2128, line: 70, baseType: !283, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2127, file: !2128, line: 71, baseType: !283, size: 64, offset: 576)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2127, file: !2128, line: 72, baseType: !283, size: 64, offset: 640)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2127, file: !2128, line: 73, baseType: !283, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2127, file: !2128, line: 74, baseType: !283, size: 64, offset: 768)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2127, file: !2128, line: 75, baseType: !283, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2127, file: !2128, line: 76, baseType: !283, size: 64, offset: 896)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2127, file: !2128, line: 81, baseType: !283, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2127, file: !2128, line: 83, baseType: !283, size: 64, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2127, file: !2128, line: 84, baseType: !283, size: 64, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2127, file: !2128, line: 85, baseType: !283, size: 64, offset: 1152)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2127, file: !2128, line: 86, baseType: !283, size: 64, offset: 1216)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2127, file: !2128, line: 87, baseType: !283, size: 64, offset: 1280)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2103, file: !2041, line: 96, baseType: !148, size: 32, offset: 1024)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2046, file: !2041, line: 308, baseType: !2153, size: 4608, align: 512)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2041, line: 289, size: 4608, align: 512, elements: !2154)
!2154 = !{!2155, !2156, !2163}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2153, file: !2041, line: 290, baseType: !2064, size: 4096, align: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2153, file: !2041, line: 291, baseType: !2157, size: 512, offset: 4096)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2041, line: 268, size: 512, elements: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2157, file: !2041, line: 269, baseType: !376, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2157, file: !2041, line: 270, baseType: !376, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2157, file: !2041, line: 271, baseType: !2162, size: 384, offset: 128)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, elements: !1497)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2153, file: !2041, line: 292, baseType: !2164, offset: 4608)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, elements: !1595)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2046, file: !2041, line: 309, baseType: !2166, size: 32768)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 32768, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 4096)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1087, file: !678, line: 378, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1083, file: !678, line: 384, baseType: !1376, size: 192, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !932, file: !678, line: 500, baseType: !193, offset: 6656)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !932, file: !678, line: 501, baseType: !2174, size: 64, offset: 6656)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !678, line: 387, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !932, file: !678, line: 516, baseType: !1585, size: 64, offset: 6720)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !932, file: !678, line: 519, baseType: !311, size: 64, offset: 6784)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !932, file: !678, line: 521, baseType: !2179, size: 64, offset: 6848)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !678, line: 521, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !932, file: !678, line: 545, baseType: !702, size: 32, offset: 6912)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !932, file: !678, line: 548, baseType: !445, size: 8, offset: 6944)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !932, file: !678, line: 550, baseType: !2184, offset: 6952)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2185, line: 142, elements: !207)
!2185 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !932, file: !678, line: 554, baseType: !1828, size: 256, offset: 6976)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !932, file: !678, line: 557, baseType: !148, size: 32, offset: 7232)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !929, file: !678, line: 565, baseType: !2189, offset: 7296)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, elements: !2190)
!2190 = !{!2191}
!2191 = !DISubrange(count: -1)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !925, file: !678, line: 151, baseType: !702, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !918, file: !678, line: 156, baseType: !193, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !678, line: 159, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !678, line: 159, size: 128, elements: !2196)
!2196 = !{!2197, !2200}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2195, file: !678, line: 161, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !678, line: 161, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2195, file: !678, line: 162, baseType: !137, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !682, file: !678, line: 176, baseType: !324, size: 128, align: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 179, baseType: !2203, size: 32, offset: 384)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !678, line: 179, size: 32, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2203, file: !678, line: 184, baseType: !702, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2203, file: !678, line: 192, baseType: !7, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2203, file: !678, line: 194, baseType: !7, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2203, file: !678, line: 195, baseType: !136, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !677, file: !678, line: 199, baseType: !702, size: 32, offset: 416)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !612, file: !38, line: 1964, baseType: !2211, size: 64, offset: 1344)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!269, !554, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2216, line: 12, size: 256, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2217 = !{!2218, !2219, !2220, !2221, !2222}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2215, file: !2216, line: 13, baseType: !129, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2215, file: !2216, line: 16, baseType: !136, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2215, file: !2216, line: 23, baseType: !283, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2215, file: !2216, line: 30, baseType: !283, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2215, file: !2216, line: 33, baseType: !2223, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !678, line: 27, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !612, file: !38, line: 1966, baseType: !2211, size: 64, offset: 1408)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !555, file: !38, line: 1424, baseType: !2227, size: 64, offset: 448)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2230)
!2230 = !{!2231, !2277, !2281, !2285, !2286, !2287, !2288, !2289, !2294, !2299, !2303}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2229, file: !32, line: 323, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!136, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2262, !2263, !2264}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2236, file: !32, line: 295, baseType: !594, size: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2236, file: !32, line: 296, baseType: !180, size: 128, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2236, file: !32, line: 297, baseType: !180, size: 128, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2236, file: !32, line: 298, baseType: !180, size: 128, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2236, file: !32, line: 299, baseType: !1047, size: 192, offset: 512)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2236, file: !32, line: 300, baseType: !193, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2236, file: !32, line: 301, baseType: !702, size: 32, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2236, file: !32, line: 302, baseType: !554, size: 64, offset: 768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2236, file: !32, line: 303, baseType: !2247, size: 64, offset: 832)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2248)
!2248 = !{!2249, !2261}
!2249 = !DIDerivedType(tag: DW_TAG_member, scope: !2247, file: !32, line: 69, baseType: !2250, size: 32)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2247, file: !32, line: 69, size: 32, elements: !2251)
!2251 = !{!2252, !2253, !2254}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2250, file: !32, line: 70, baseType: !390, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2250, file: !32, line: 71, baseType: !398, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2250, file: !32, line: 72, baseType: !2255, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2256, line: 24, baseType: !2257)
!2256 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2256, line: 22, size: 32, elements: !2258)
!2258 = !{!2259}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2257, file: !2256, line: 23, baseType: !2260, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2256, line: 20, baseType: !396)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2247, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2236, file: !32, line: 304, baseType: !486, size: 64, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2236, file: !32, line: 305, baseType: !283, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2236, file: !32, line: 306, baseType: !2265, size: 576, offset: 1024)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2266)
!2266 = !{!2267, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2265, file: !32, line: 206, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !488)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2265, file: !32, line: 207, baseType: !2268, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2265, file: !32, line: 208, baseType: !2268, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2265, file: !32, line: 209, baseType: !2268, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2265, file: !32, line: 210, baseType: !2268, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2265, file: !32, line: 211, baseType: !2268, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2265, file: !32, line: 212, baseType: !2268, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2265, file: !32, line: 213, baseType: !494, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2265, file: !32, line: 214, baseType: !494, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2229, file: !32, line: 324, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!2235, !554, !136}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2229, file: !32, line: 325, baseType: !2282, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2235}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2229, file: !32, line: 326, baseType: !2232, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2229, file: !32, line: 327, baseType: !2232, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2229, file: !32, line: 328, baseType: !2232, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2229, file: !32, line: 329, baseType: !640, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2229, file: !32, line: 332, baseType: !2290, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!2293, !384}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2229, file: !32, line: 333, baseType: !2295, size: 64, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!136, !384, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2229, file: !32, line: 335, baseType: !2300, size: 64, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!136, !384, !2293}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2229, file: !32, line: 337, baseType: !2304, size: 64, offset: 640)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!136, !554, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !555, file: !38, line: 1425, baseType: !2309, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2312)
!2312 = !{!2313, !2317, !2318, !2322, !2323, !2324, !2339, !2362, !2366, !2367, !2390}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2311, file: !32, line: 429, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!136, !554, !136, !136, !504}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2311, file: !32, line: 430, baseType: !640, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2311, file: !32, line: 431, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!136, !554, !7}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2311, file: !32, line: 432, baseType: !2319, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2311, file: !32, line: 433, baseType: !640, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2311, file: !32, line: 434, baseType: !2325, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!136, !554, !136, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2329, file: !32, line: 416, baseType: !136, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2329, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2329, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2329, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2329, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2329, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2329, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2329, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2311, file: !32, line: 435, baseType: !2340, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!136, !554, !2247, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2344, file: !32, line: 344, baseType: !136, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2344, file: !32, line: 345, baseType: !376, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2344, file: !32, line: 346, baseType: !376, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2344, file: !32, line: 347, baseType: !376, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2344, file: !32, line: 348, baseType: !376, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2344, file: !32, line: 349, baseType: !376, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2344, file: !32, line: 350, baseType: !376, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2344, file: !32, line: 351, baseType: !732, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2344, file: !32, line: 353, baseType: !732, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2344, file: !32, line: 354, baseType: !136, size: 32, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2344, file: !32, line: 355, baseType: !136, size: 32, offset: 608)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2344, file: !32, line: 356, baseType: !376, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2344, file: !32, line: 357, baseType: !376, size: 64, offset: 704)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2344, file: !32, line: 358, baseType: !376, size: 64, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2344, file: !32, line: 359, baseType: !732, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2344, file: !32, line: 360, baseType: !136, size: 32, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2311, file: !32, line: 436, baseType: !2363, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!136, !554, !2307, !2343}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2311, file: !32, line: 438, baseType: !2340, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2311, file: !32, line: 439, baseType: !2368, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!136, !554, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2372, file: !32, line: 410, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2372, file: !32, line: 411, baseType: !2376, size: 1344, offset: 64)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2377, size: 1344, elements: !235)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2389}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2377, file: !32, line: 396, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2377, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2377, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2377, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2377, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2377, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2377, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2377, file: !32, line: 404, baseType: !378, size: 64, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2377, file: !32, line: 405, baseType: !2388, size: 64, offset: 320)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !130, line: 126, baseType: !376)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2377, file: !32, line: 406, baseType: !2388, size: 64, offset: 384)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2311, file: !32, line: 440, baseType: !2319, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !555, file: !38, line: 1426, baseType: !2392, size: 64, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !555, file: !38, line: 1427, baseType: !283, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !555, file: !38, line: 1428, baseType: !283, size: 64, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !555, file: !38, line: 1429, baseType: !283, size: 64, offset: 768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !555, file: !38, line: 1430, baseType: !341, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !555, file: !38, line: 1431, baseType: !722, size: 256, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !555, file: !38, line: 1432, baseType: !136, size: 32, offset: 1152)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !555, file: !38, line: 1433, baseType: !702, size: 32, offset: 1184)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !555, file: !38, line: 1437, baseType: !2403, size: 64, offset: 1216)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2406)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !555, file: !38, line: 1449, baseType: !2408, size: 64, offset: 1280)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !357, line: 34, size: 64, elements: !2409)
!2409 = !{!2410}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2408, file: !357, line: 35, baseType: !360, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !555, file: !38, line: 1450, baseType: !180, size: 128, offset: 1344)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !555, file: !38, line: 1451, baseType: !2413, size: 64, offset: 1472)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !555, file: !38, line: 1452, baseType: !1794, size: 64, offset: 1536)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !555, file: !38, line: 1453, baseType: !2417, size: 64, offset: 1600)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !555, file: !38, line: 1454, baseType: !594, size: 128, offset: 1664)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !555, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !555, file: !38, line: 1456, baseType: !2422, size: 2432, offset: 1856)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2423)
!2423 = !{!2424, !2425, !2426, !2428, !2460}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2422, file: !32, line: 519, baseType: !7, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2422, file: !32, line: 520, baseType: !722, size: 256, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2422, file: !32, line: 521, baseType: !2427, size: 192, offset: 320)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 192, elements: !235)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2422, file: !32, line: 522, baseType: !2429, size: 1728, offset: 512)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2430, size: 1728, elements: !235)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2431)
!2431 = !{!2432, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2430, file: !32, line: 223, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2435)
!2435 = !{!2436, !2437, !2450, !2451}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2434, file: !32, line: 444, baseType: !136, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2434, file: !32, line: 445, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2440)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2440, file: !32, line: 311, baseType: !640, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2440, file: !32, line: 312, baseType: !640, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2440, file: !32, line: 313, baseType: !640, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2440, file: !32, line: 314, baseType: !640, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2440, file: !32, line: 315, baseType: !2232, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2440, file: !32, line: 316, baseType: !2232, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2440, file: !32, line: 317, baseType: !2232, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2440, file: !32, line: 318, baseType: !2304, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2434, file: !32, line: 446, baseType: !126, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2434, file: !32, line: 447, baseType: !2433, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2430, file: !32, line: 224, baseType: !136, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2430, file: !32, line: 226, baseType: !180, size: 128, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2430, file: !32, line: 227, baseType: !283, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2430, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2430, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2430, file: !32, line: 230, baseType: !2268, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2430, file: !32, line: 231, baseType: !2268, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2430, file: !32, line: 232, baseType: !137, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2422, file: !32, line: 523, baseType: !2461, size: 192, offset: 2240)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2438, size: 192, elements: !235)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !555, file: !38, line: 1458, baseType: !2463, size: 2112, offset: 4288)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2463, file: !38, line: 1411, baseType: !136, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2463, file: !38, line: 1412, baseType: !1355, size: 128, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2463, file: !38, line: 1413, baseType: !2468, size: 1920, offset: 192)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2469, size: 1920, elements: !235)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2470, line: 12, size: 640, elements: !2471)
!2470 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2471 = !{!2472, !2480, !2482, !2487, !2488}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2469, file: !2470, line: 13, baseType: !2473, size: 320)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2474, line: 17, size: 320, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2475 = !{!2476, !2477, !2478, !2479}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2473, file: !2474, line: 18, baseType: !136, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2473, file: !2474, line: 19, baseType: !136, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2473, file: !2474, line: 20, baseType: !1355, size: 128, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2473, file: !2474, line: 22, baseType: !324, size: 128, align: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2469, file: !2470, line: 14, baseType: !2481, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2469, file: !2470, line: 15, baseType: !2483, size: 64, offset: 384)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2484, line: 16, size: 64, elements: !2485)
!2484 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2485 = !{!2486}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2483, file: !2484, line: 17, baseType: !1090, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2469, file: !2470, line: 16, baseType: !1355, size: 128, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2469, file: !2470, line: 17, baseType: !702, size: 32, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !555, file: !38, line: 1465, baseType: !137, size: 64, offset: 6400)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !555, file: !38, line: 1468, baseType: !148, size: 32, offset: 6464)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !555, file: !38, line: 1470, baseType: !494, size: 64, offset: 6528)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !555, file: !38, line: 1471, baseType: !494, size: 64, offset: 6592)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !555, file: !38, line: 1473, baseType: !150, size: 32, offset: 6656)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !555, file: !38, line: 1474, baseType: !2495, size: 64, offset: 6720)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !555, file: !38, line: 1477, baseType: !2498, size: 256, offset: 6784)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !2089)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !555, file: !38, line: 1478, baseType: !2500, size: 128, offset: 7040)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2501, line: 18, baseType: !2502)
!2501 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2501, line: 16, size: 128, elements: !2503)
!2503 = !{!2504}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2502, file: !2501, line: 17, baseType: !2505, size: 128)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 128, elements: !145)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !555, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !555, file: !38, line: 1481, baseType: !2508, size: 32, offset: 7200)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !130, line: 150, baseType: !7)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !555, file: !38, line: 1487, baseType: !1047, size: 192, offset: 7232)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !555, file: !38, line: 1493, baseType: !177, size: 64, offset: 7424)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !555, file: !38, line: 1495, baseType: !2512, size: 64, offset: 7488)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2514)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !339, line: 135, size: 1024, align: 512, elements: !2515)
!2515 = !{!2516, !2520, !2521, !2528, !2534, !2538, !2542, !2546, !2547, !2551, !2555, !2560, !2564}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2514, file: !339, line: 136, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!136, !341, !7}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2514, file: !339, line: 137, baseType: !2517, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2514, file: !339, line: 138, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!136, !2525, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2514, file: !339, line: 139, baseType: !2529, size: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!136, !2525, !7, !177, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2514, file: !339, line: 141, baseType: !2535, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!136, !2525}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2514, file: !339, line: 142, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!136, !341}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2514, file: !339, line: 143, baseType: !2543, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !341}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2514, file: !339, line: 144, baseType: !2543, size: 64, offset: 448)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2514, file: !339, line: 145, baseType: !2548, size: 64, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !341, !384}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2514, file: !339, line: 146, baseType: !2552, size: 64, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!234, !341, !234, !136}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2514, file: !339, line: 147, baseType: !2556, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!337, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2514, file: !339, line: 148, baseType: !2561, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!136, !504, !445}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2514, file: !339, line: 149, baseType: !2565, size: 64, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!341, !341, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !555, file: !38, line: 1500, baseType: !136, size: 32, offset: 7552)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !555, file: !38, line: 1502, baseType: !2572, size: 448, offset: 7616)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2216, line: 60, size: 448, elements: !2573)
!2573 = !{!2574, !2579, !2580, !2581, !2582, !2583, !2584}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2572, file: !2216, line: 61, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!283, !2578, !2214}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2572, file: !2216, line: 63, baseType: !2575, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2572, file: !2216, line: 66, baseType: !269, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2572, file: !2216, line: 67, baseType: !136, size: 32, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2572, file: !2216, line: 68, baseType: !7, size: 32, offset: 224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2572, file: !2216, line: 71, baseType: !180, size: 128, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2572, file: !2216, line: 77, baseType: !2585, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !555, file: !38, line: 1505, baseType: !726, size: 64, offset: 8064)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !555, file: !38, line: 1508, baseType: !726, size: 64, offset: 8128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !555, file: !38, line: 1511, baseType: !136, size: 32, offset: 8192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !555, file: !38, line: 1514, baseType: !863, size: 32, offset: 8224)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !555, file: !38, line: 1517, baseType: !2591, size: 64, offset: 8256)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1829, line: 18, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !555, file: !38, line: 1518, baseType: !590, size: 64, offset: 8320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !555, file: !38, line: 1525, baseType: !1585, size: 64, offset: 8384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !555, file: !38, line: 1532, baseType: !2596, size: 64, offset: 8448)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2597, line: 52, size: 64, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2596, file: !2597, line: 53, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2597, line: 40, size: 256, elements: !2602)
!2602 = !{!2603, !2604, !2609}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2601, file: !2597, line: 42, baseType: !193)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2601, file: !2597, line: 44, baseType: !2605, size: 192)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2597, line: 28, size: 192, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2605, file: !2597, line: 29, baseType: !180, size: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2605, file: !2597, line: 31, baseType: !269, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2601, file: !2597, line: 49, baseType: !269, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !555, file: !38, line: 1533, baseType: !2596, size: 64, offset: 8512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !555, file: !38, line: 1534, baseType: !324, size: 128, align: 64, offset: 8576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !555, file: !38, line: 1535, baseType: !1828, size: 256, offset: 8704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !555, file: !38, line: 1537, baseType: !1047, size: 192, offset: 8960)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !555, file: !38, line: 1542, baseType: !136, size: 32, offset: 9152)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !555, file: !38, line: 1545, baseType: !193, offset: 9184)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !555, file: !38, line: 1546, baseType: !180, size: 128, offset: 9216)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !555, file: !38, line: 1548, baseType: !193, offset: 9344)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !555, file: !38, line: 1549, baseType: !180, size: 128, offset: 9344)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !385, file: !38, line: 624, baseType: !689, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !385, file: !38, line: 631, baseType: !283, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 639, baseType: !2622, size: 32, offset: 384)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 639, size: 32, elements: !2623)
!2623 = !{!2624, !2626}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2622, file: !38, line: 640, baseType: !2625, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2622, file: !38, line: 641, baseType: !7, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !385, file: !38, line: 643, baseType: !468, size: 32, offset: 416)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !385, file: !38, line: 644, baseType: !486, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !385, file: !38, line: 645, baseType: !490, size: 128, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !385, file: !38, line: 646, baseType: !490, size: 128, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !385, file: !38, line: 647, baseType: !490, size: 128, offset: 768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !385, file: !38, line: 648, baseType: !193, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !385, file: !38, line: 649, baseType: !133, size: 16, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !385, file: !38, line: 650, baseType: !1226, size: 8, offset: 912)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !385, file: !38, line: 651, baseType: !1226, size: 8, offset: 920)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !385, file: !38, line: 652, baseType: !2388, size: 64, offset: 960)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !385, file: !38, line: 659, baseType: !283, size: 64, offset: 1024)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !385, file: !38, line: 660, baseType: !722, size: 256, offset: 1088)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !385, file: !38, line: 662, baseType: !283, size: 64, offset: 1344)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !385, file: !38, line: 663, baseType: !283, size: 64, offset: 1408)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !385, file: !38, line: 665, baseType: !594, size: 128, offset: 1472)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !385, file: !38, line: 666, baseType: !180, size: 128, offset: 1600)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !385, file: !38, line: 675, baseType: !180, size: 128, offset: 1728)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !385, file: !38, line: 676, baseType: !180, size: 128, offset: 1856)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !385, file: !38, line: 677, baseType: !180, size: 128, offset: 1984)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 678, baseType: !2647, size: 128, offset: 2112)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 678, size: 128, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2647, file: !38, line: 679, baseType: !590, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2647, file: !38, line: 680, baseType: !324, size: 128, align: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !385, file: !38, line: 682, baseType: !728, size: 64, offset: 2240)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !385, file: !38, line: 683, baseType: !728, size: 64, offset: 2304)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !385, file: !38, line: 684, baseType: !702, size: 32, offset: 2368)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !385, file: !38, line: 685, baseType: !702, size: 32, offset: 2400)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !385, file: !38, line: 686, baseType: !702, size: 32, offset: 2432)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !385, file: !38, line: 688, baseType: !702, size: 32, offset: 2464)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 690, baseType: !2658, size: 64, offset: 2496)
!2658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 690, size: 64, elements: !2659)
!2659 = !{!2660, !2882}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2658, file: !38, line: 691, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2664)
!2664 = !{!2665, !2666, !2670, !2675, !2679, !2680, !2681, !2685, !2698, !2699, !2706, !2710, !2711, !2715, !2716, !2720, !2725, !2726, !2730, !2734, !2842, !2846, !2847, !2851, !2852, !2856, !2860, !2865, !2869, !2873, !2877, !2881}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2663, file: !38, line: 1823, baseType: !126, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2663, file: !38, line: 1824, baseType: !2667, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!486, !311, !486, !136}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2663, file: !38, line: 1825, baseType: !2671, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!265, !311, !234, !280, !2674}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2663, file: !38, line: 1826, baseType: !2676, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!265, !311, !177, !280, !2674}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2663, file: !38, line: 1827, baseType: !799, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2663, file: !38, line: 1828, baseType: !799, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2663, file: !38, line: 1829, baseType: !2682, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!136, !802, !445}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2663, file: !38, line: 1830, baseType: !2686, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!136, !311, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2691)
!2691 = !{!2692, !2697}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2690, file: !38, line: 1777, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2694)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!136, !2689, !177, !136, !486, !376, !7}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2690, file: !38, line: 1778, baseType: !486, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2663, file: !38, line: 1831, baseType: !2686, size: 64, offset: 512)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2663, file: !38, line: 1832, baseType: !2700, size: 64, offset: 576)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!2703, !311, !2704}
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !135, line: 52, baseType: !7)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !574, line: 27, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2663, file: !38, line: 1833, baseType: !2707, size: 64, offset: 640)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!269, !311, !7, !283}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2663, file: !38, line: 1834, baseType: !2707, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2663, file: !38, line: 1835, baseType: !2712, size: 64, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!136, !311, !935}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2663, file: !38, line: 1836, baseType: !283, size: 64, offset: 832)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2663, file: !38, line: 1837, baseType: !2717, size: 64, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!136, !384, !311}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2663, file: !38, line: 1838, baseType: !2721, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!136, !311, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !137)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2663, file: !38, line: 1839, baseType: !2717, size: 64, offset: 1024)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2663, file: !38, line: 1840, baseType: !2727, size: 64, offset: 1088)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!136, !311, !486, !486, !136}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2663, file: !38, line: 1841, baseType: !2731, size: 64, offset: 1152)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!136, !136, !311, !136}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2663, file: !38, line: 1842, baseType: !2735, size: 64, offset: 1216)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!136, !311, !136, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2772, !2773, !2774, !2787, !2818}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2739, file: !38, line: 1063, baseType: !2738, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2739, file: !38, line: 1064, baseType: !180, size: 128, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2739, file: !38, line: 1065, baseType: !594, size: 128, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2739, file: !38, line: 1066, baseType: !180, size: 128, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2739, file: !38, line: 1069, baseType: !180, size: 128, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2739, file: !38, line: 1072, baseType: !2724, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2739, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2739, file: !38, line: 1074, baseType: !382, size: 8, offset: 672)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2739, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2739, file: !38, line: 1076, baseType: !136, size: 32, offset: 736)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2739, file: !38, line: 1077, baseType: !1355, size: 128, offset: 768)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2739, file: !38, line: 1078, baseType: !311, size: 64, offset: 896)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2739, file: !38, line: 1079, baseType: !486, size: 64, offset: 960)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2739, file: !38, line: 1080, baseType: !486, size: 64, offset: 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2739, file: !38, line: 1082, baseType: !2756, size: 64, offset: 1088)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2758)
!2758 = !{!2759, !2767, !2768, !2769, !2770, !2771}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2757, file: !38, line: 1315, baseType: !2760)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2761, line: 20, baseType: !2762)
!2761 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2761, line: 11, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2762, file: !2761, line: 12, baseType: !2765)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !205, line: 33, baseType: !2766)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 31, elements: !207)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2757, file: !38, line: 1316, baseType: !136, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2757, file: !38, line: 1317, baseType: !136, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2757, file: !38, line: 1318, baseType: !2756, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2757, file: !38, line: 1319, baseType: !311, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2757, file: !38, line: 1320, baseType: !324, size: 128, align: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2739, file: !38, line: 1084, baseType: !283, size: 64, offset: 1152)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2739, file: !38, line: 1085, baseType: !283, size: 64, offset: 1216)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2739, file: !38, line: 1087, baseType: !2775, size: 64, offset: 1280)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2777)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2778)
!2778 = !{!2779, !2783}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2777, file: !38, line: 1012, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2738, !2738}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2777, file: !38, line: 1013, baseType: !2784, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !2738}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2739, file: !38, line: 1088, baseType: !2788, size: 64, offset: 1344)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2790)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2791)
!2791 = !{!2792, !2796, !2800, !2801, !2805, !2809, !2813, !2817}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2790, file: !38, line: 1017, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!2724, !2724}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2790, file: !38, line: 1018, baseType: !2797, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2724}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2790, file: !38, line: 1019, baseType: !2784, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2790, file: !38, line: 1020, baseType: !2802, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!136, !2738, !136}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2790, file: !38, line: 1021, baseType: !2806, size: 64, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!445, !2738}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2790, file: !38, line: 1022, baseType: !2810, size: 64, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!136, !2738, !136, !183}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2790, file: !38, line: 1023, baseType: !2814, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{null, !2738, !776}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2790, file: !38, line: 1024, baseType: !2806, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2739, file: !38, line: 1097, baseType: !2819, size: 256, offset: 1408)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2739, file: !38, line: 1089, size: 256, elements: !2820)
!2820 = !{!2821, !2830, !2836}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2819, file: !38, line: 1090, baseType: !2822, size: 256)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2823, line: 10, size: 256, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2824 = !{!2825, !2826, !2829}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2822, file: !2823, line: 11, baseType: !148, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2822, file: !2823, line: 12, baseType: !2827, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2823, line: 5, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2822, file: !2823, line: 13, baseType: !180, size: 128, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2819, file: !38, line: 1091, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2823, line: 17, size: 64, elements: !2832)
!2832 = !{!2833}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2831, file: !2823, line: 18, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2823, line: 16, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2819, file: !38, line: 1096, baseType: !2837, size: 192)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2819, file: !38, line: 1092, size: 192, elements: !2838)
!2838 = !{!2839, !2840, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2837, file: !38, line: 1093, baseType: !180, size: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2837, file: !38, line: 1094, baseType: !136, size: 32, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2837, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2663, file: !38, line: 1843, baseType: !2843, size: 64, offset: 1280)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!265, !311, !676, !136, !280, !2674, !136}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2663, file: !38, line: 1844, baseType: !975, size: 64, offset: 1344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2663, file: !38, line: 1845, baseType: !2848, size: 64, offset: 1408)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!136, !136}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2663, file: !38, line: 1846, baseType: !2735, size: 64, offset: 1472)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2663, file: !38, line: 1847, baseType: !2853, size: 64, offset: 1536)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!265, !1969, !311, !2674, !280, !7}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2663, file: !38, line: 1848, baseType: !2857, size: 64, offset: 1600)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!265, !311, !2674, !1969, !280, !7}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2663, file: !38, line: 1849, baseType: !2861, size: 64, offset: 1664)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!136, !311, !269, !2864, !776}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2663, file: !38, line: 1850, baseType: !2866, size: 64, offset: 1728)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!269, !311, !136, !486, !486}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2663, file: !38, line: 1852, baseType: !2870, size: 64, offset: 1792)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{null, !666, !311}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2663, file: !38, line: 1856, baseType: !2874, size: 64, offset: 1856)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!265, !311, !486, !311, !486, !280, !7}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2663, file: !38, line: 1858, baseType: !2878, size: 64, offset: 1920)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!486, !311, !486, !311, !486, !486, !7}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2663, file: !38, line: 1861, baseType: !2727, size: 64, offset: 1984)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2658, file: !38, line: 692, baseType: !619, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !385, file: !38, line: 694, baseType: !2884, size: 64, offset: 2560)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2885, file: !38, line: 1101, baseType: !193)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2885, file: !38, line: 1102, baseType: !180, size: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2885, file: !38, line: 1103, baseType: !180, size: 128, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2885, file: !38, line: 1104, baseType: !180, size: 128, offset: 256)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !385, file: !38, line: 695, baseType: !690, size: 1216, align: 64, offset: 2624)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !385, file: !38, line: 696, baseType: !180, size: 128, offset: 3840)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !38, line: 697, baseType: !2894, size: 64, offset: 3968)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !38, line: 697, size: 64, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2901, !2902}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2894, file: !38, line: 698, baseType: !1969, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2894, file: !38, line: 699, baseType: !2413, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2894, file: !38, line: 700, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2894, file: !38, line: 701, baseType: !234, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2894, file: !38, line: 702, baseType: !7, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !385, file: !38, line: 705, baseType: !150, size: 32, offset: 4032)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !385, file: !38, line: 708, baseType: !150, size: 32, offset: 4064)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !385, file: !38, line: 709, baseType: !2495, size: 64, offset: 4096)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !385, file: !38, line: 720, baseType: !137, size: 64, offset: 4160)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !342, file: !339, line: 98, baseType: !2908, size: 256, offset: 448)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !2089)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !342, file: !339, line: 101, baseType: !2910, size: 32, offset: 704)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2911, line: 25, size: 32, elements: !2912)
!2911 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2912 = !{!2913}
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !2911, line: 26, baseType: !2914, size: 32)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2910, file: !2911, line: 26, size: 32, elements: !2915)
!2915 = !{!2916}
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !2911, line: 30, baseType: !2917, size: 32)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !2911, line: 30, size: 32, elements: !2918)
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2917, file: !2911, line: 31, baseType: !193)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2917, file: !2911, line: 32, baseType: !136, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !342, file: !339, line: 102, baseType: !2512, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !342, file: !339, line: 103, baseType: !554, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !342, file: !339, line: 104, baseType: !283, size: 64, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !342, file: !339, line: 105, baseType: !137, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !339, line: 107, baseType: !2926, size: 128, offset: 1024)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !339, line: 107, size: 128, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2926, file: !339, line: 108, baseType: !180, size: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2926, file: !339, line: 109, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !342, file: !339, line: 111, baseType: !180, size: 128, offset: 1152)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !342, file: !339, line: 112, baseType: !180, size: 128, offset: 1280)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !342, file: !339, line: 120, baseType: !2934, size: 128, offset: 1408)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !339, line: 116, size: 128, elements: !2935)
!2935 = !{!2936, !2937, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2934, file: !339, line: 117, baseType: !594, size: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2934, file: !339, line: 118, baseType: !356, size: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2934, file: !339, line: 119, baseType: !324, size: 128, align: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !312, file: !38, line: 922, baseType: !384, size: 64, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !312, file: !38, line: 923, baseType: !2661, size: 64, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !312, file: !38, line: 929, baseType: !193, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !312, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !312, file: !38, line: 931, baseType: !726, size: 64, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !312, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !312, file: !38, line: 933, baseType: !2508, size: 32, offset: 544)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !312, file: !38, line: 934, baseType: !1047, size: 192, offset: 576)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !312, file: !38, line: 935, baseType: !486, size: 64, offset: 768)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !312, file: !38, line: 936, baseType: !2949, size: 192, offset: 832)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2949, file: !38, line: 886, baseType: !2760)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2949, file: !38, line: 887, baseType: !1345, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2949, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2949, file: !38, line: 889, baseType: !390, size: 32, offset: 96)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2949, file: !38, line: 889, baseType: !390, size: 32, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2949, file: !38, line: 890, baseType: !136, size: 32, offset: 160)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !312, file: !38, line: 937, baseType: !1421, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !312, file: !38, line: 938, baseType: !2959, size: 256, offset: 1088)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964, !2965, !2966}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2959, file: !38, line: 897, baseType: !283, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2959, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2959, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2959, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2959, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2959, file: !38, line: 904, baseType: !486, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !312, file: !38, line: 940, baseType: !376, size: 64, offset: 1344)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !312, file: !38, line: 945, baseType: !137, size: 64, offset: 1408)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !312, file: !38, line: 949, baseType: !180, size: 128, offset: 1472)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !312, file: !38, line: 950, baseType: !180, size: 128, offset: 1600)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !312, file: !38, line: 952, baseType: !689, size: 64, offset: 1728)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !312, file: !38, line: 953, baseType: !863, size: 32, offset: 1792)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !312, file: !38, line: 954, baseType: !863, size: 32, offset: 1824)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !302, file: !259, line: 174, baseType: !308, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !302, file: !259, line: 176, baseType: !2976, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!136, !311, !186, !301, !935}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !290, file: !259, line: 90, baseType: !285, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !290, file: !259, line: 91, baseType: !2981, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !249, file: !174, line: 143, baseType: !2983, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!2986, !186}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2988)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2989)
!2989 = !{!2990, !2991, !2995, !2999, !3007, !3011}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2988, file: !55, line: 40, baseType: !54, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2988, file: !55, line: 41, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!445}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2988, file: !55, line: 42, baseType: !2996, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!137}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2988, file: !55, line: 43, baseType: !3000, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!3003, !3005}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2988, file: !55, line: 44, baseType: !3008, size: 64, offset: 256)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!3003}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2988, file: !55, line: 45, baseType: !423, size: 64, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !249, file: !174, line: 144, baseType: !3013, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!3003, !186}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !249, file: !174, line: 145, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !186, !3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !173, file: !174, line: 70, baseType: !3023, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !574, line: 123, size: 1024, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3154, !3155, !3156, !3157, !3158}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3024, file: !574, line: 124, baseType: !702, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3024, file: !574, line: 125, baseType: !702, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3024, file: !574, line: 135, baseType: !3023, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3024, file: !574, line: 136, baseType: !177, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3024, file: !574, line: 138, baseType: !715, size: 192, align: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3024, file: !574, line: 140, baseType: !3003, size: 64, offset: 384)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3024, file: !574, line: 141, baseType: !7, size: 32, offset: 448)
!3033 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !574, line: 142, baseType: !3034, size: 256, offset: 512)
!3034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3024, file: !574, line: 142, size: 256, elements: !3035)
!3035 = !{!3036, !3082, !3086}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3034, file: !574, line: 143, baseType: !3037, size: 192)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !574, line: 91, size: 192, elements: !3038)
!3038 = !{!3039, !3040, !3041}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3037, file: !574, line: 92, baseType: !283, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3037, file: !574, line: 94, baseType: !711, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3037, file: !574, line: 100, baseType: !3042, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !574, line: 180, size: 704, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3054, !3055, !3056, !3080, !3081}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3043, file: !574, line: 182, baseType: !3023, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3043, file: !574, line: 183, baseType: !7, size: 32, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3043, file: !574, line: 186, baseType: !3048, size: 192, offset: 128)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3049, line: 19, size: 192, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3048, file: !3049, line: 20, baseType: !694, size: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3048, file: !3049, line: 21, baseType: !7, size: 32, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3048, file: !3049, line: 22, baseType: !7, size: 32, offset: 160)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3043, file: !574, line: 187, baseType: !148, size: 32, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3043, file: !574, line: 188, baseType: !148, size: 32, offset: 352)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3043, file: !574, line: 189, baseType: !3057, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !574, line: 168, size: 320, elements: !3059)
!3059 = !{!3060, !3064, !3068, !3072, !3076}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3058, file: !574, line: 169, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!136, !666, !3042}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3058, file: !574, line: 171, baseType: !3065, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!136, !3023, !177, !275}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3058, file: !574, line: 173, baseType: !3069, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!136, !3023}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3058, file: !574, line: 174, baseType: !3073, size: 64, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!136, !3023, !3023, !177}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3058, file: !574, line: 176, baseType: !3077, size: 64, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!136, !666, !3023, !3042}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3043, file: !574, line: 192, baseType: !180, size: 128, offset: 448)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3043, file: !574, line: 194, baseType: !1355, size: 128, offset: 576)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3034, file: !574, line: 144, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !574, line: 103, size: 64, elements: !3084)
!3084 = !{!3085}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3083, file: !574, line: 104, baseType: !3023, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3034, file: !574, line: 145, baseType: !3087, size: 256)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !574, line: 107, size: 256, elements: !3088)
!3088 = !{!3089, !3149, !3152, !3153}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3087, file: !574, line: 108, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3092)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !574, line: 217, size: 768, elements: !3093)
!3093 = !{!3094, !3114, !3118, !3122, !3126, !3130, !3134, !3138, !3139, !3140, !3141, !3145}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3092, file: !574, line: 222, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!136, !3098}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !574, line: 197, size: 1088, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3099, file: !574, line: 199, baseType: !3023, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3099, file: !574, line: 200, baseType: !311, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3099, file: !574, line: 201, baseType: !666, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3099, file: !574, line: 202, baseType: !137, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3099, file: !574, line: 205, baseType: !1047, size: 192, offset: 256)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3099, file: !574, line: 206, baseType: !1047, size: 192, offset: 448)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3099, file: !574, line: 207, baseType: !136, size: 32, offset: 640)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3099, file: !574, line: 208, baseType: !180, size: 128, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3099, file: !574, line: 209, baseType: !234, size: 64, offset: 832)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3099, file: !574, line: 211, baseType: !280, size: 64, offset: 896)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3099, file: !574, line: 212, baseType: !445, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3099, file: !574, line: 213, baseType: !445, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3099, file: !574, line: 214, baseType: !963, size: 64, offset: 1024)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3092, file: !574, line: 223, baseType: !3115, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !3098}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3092, file: !574, line: 236, baseType: !3119, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!136, !666, !137}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3092, file: !574, line: 238, baseType: !3123, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!137, !666, !2674}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3092, file: !574, line: 239, baseType: !3127, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!137, !666, !137, !2674}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3092, file: !574, line: 240, baseType: !3131, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !666, !137}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3092, file: !574, line: 242, baseType: !3135, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!265, !3098, !234, !280, !486}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3092, file: !574, line: 252, baseType: !280, size: 64, offset: 448)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3092, file: !574, line: 259, baseType: !445, size: 8, offset: 512)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3092, file: !574, line: 260, baseType: !3135, size: 64, offset: 576)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3092, file: !574, line: 263, baseType: !3142, size: 64, offset: 640)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!2703, !3098, !2704}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3092, file: !574, line: 266, baseType: !3146, size: 64, offset: 704)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!136, !3098, !935}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3087, file: !574, line: 109, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !574, line: 31, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3087, file: !574, line: 110, baseType: !486, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3087, file: !574, line: 111, baseType: !3023, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3024, file: !574, line: 148, baseType: !137, size: 64, offset: 768)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3024, file: !574, line: 154, baseType: !376, size: 64, offset: 832)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3024, file: !574, line: 156, baseType: !133, size: 16, offset: 896)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3024, file: !574, line: 157, baseType: !275, size: 16, offset: 912)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3024, file: !574, line: 158, baseType: !3159, size: 64, offset: 960)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !574, line: 32, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !173, file: !174, line: 71, baseType: !3162, size: 32, offset: 448)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3163, line: 19, size: 32, elements: !3164)
!3163 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3164 = !{!3165}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3162, file: !3163, line: 20, baseType: !1104, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !173, file: !174, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !173, file: !174, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !173, file: !174, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !173, file: !174, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !173, file: !174, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !67, line: 463, baseType: !169, size: 64, offset: 512)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !170, file: !67, line: 465, baseType: !3173, size: 64, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !170, file: !67, line: 467, baseType: !177, size: 64, offset: 640)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !67, line: 468, baseType: !3177, size: 64, offset: 704)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3179)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3187, !3192, !3196}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3179, file: !67, line: 88, baseType: !177, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3179, file: !67, line: 89, baseType: !287, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3179, file: !67, line: 90, baseType: !3184, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!136, !169, !229}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3179, file: !67, line: 91, baseType: !3188, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!234, !169, !3191, !3020, !3021}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3179, file: !67, line: 93, baseType: !3193, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !169}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3179, file: !67, line: 95, baseType: !3197, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3200)
!3200 = !{!3201, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3199, file: !74, line: 279, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!136, !169}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3199, file: !74, line: 280, baseType: !3193, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3199, file: !74, line: 281, baseType: !3202, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3199, file: !74, line: 282, baseType: !3202, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3199, file: !74, line: 283, baseType: !3202, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3199, file: !74, line: 284, baseType: !3202, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3199, file: !74, line: 285, baseType: !3202, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3199, file: !74, line: 286, baseType: !3202, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3199, file: !74, line: 287, baseType: !3202, size: 64, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3199, file: !74, line: 288, baseType: !3202, size: 64, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3199, file: !74, line: 289, baseType: !3202, size: 64, offset: 640)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3199, file: !74, line: 290, baseType: !3202, size: 64, offset: 704)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3199, file: !74, line: 291, baseType: !3202, size: 64, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3199, file: !74, line: 292, baseType: !3202, size: 64, offset: 832)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3199, file: !74, line: 293, baseType: !3202, size: 64, offset: 896)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3199, file: !74, line: 294, baseType: !3202, size: 64, offset: 960)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3199, file: !74, line: 295, baseType: !3202, size: 64, offset: 1024)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3199, file: !74, line: 296, baseType: !3202, size: 64, offset: 1088)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3199, file: !74, line: 297, baseType: !3202, size: 64, offset: 1152)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3199, file: !74, line: 298, baseType: !3202, size: 64, offset: 1216)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3199, file: !74, line: 299, baseType: !3202, size: 64, offset: 1280)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3199, file: !74, line: 300, baseType: !3202, size: 64, offset: 1344)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3199, file: !74, line: 301, baseType: !3202, size: 64, offset: 1408)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !170, file: !67, line: 470, baseType: !3228, size: 64, offset: 768)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3230, line: 82, size: 1408, elements: !3231)
!3230 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3313, !3316, !3317}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3229, file: !3230, line: 83, baseType: !177, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3229, file: !3230, line: 84, baseType: !177, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3229, file: !3230, line: 85, baseType: !169, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3229, file: !3230, line: 86, baseType: !287, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3229, file: !3230, line: 87, baseType: !287, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3229, file: !3230, line: 88, baseType: !287, size: 64, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3229, file: !3230, line: 90, baseType: !3239, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!136, !169, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250, !3251, !3264, !3277, !3278, !3279, !3280, !3281, !3289, !3290, !3291, !3292, !3293, !3294}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3243, file: !61, line: 96, baseType: !177, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3243, file: !61, line: 97, baseType: !3228, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3243, file: !61, line: 99, baseType: !126, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3243, file: !61, line: 100, baseType: !177, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3243, file: !61, line: 102, baseType: !445, size: 8, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3243, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3243, file: !61, line: 105, baseType: !3252, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3254)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3255, line: 262, size: 1600, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3256 = !{!3257, !3258, !3259, !3263}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3254, file: !3255, line: 263, baseType: !2498, size: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3254, file: !3255, line: 264, baseType: !2498, size: 256, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3254, file: !3255, line: 265, baseType: !3260, size: 1024, offset: 512)
!3260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1024, elements: !3261)
!3261 = !{!3262}
!3262 = !DISubrange(count: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3254, file: !3255, line: 266, baseType: !3003, size: 64, offset: 1536)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3243, file: !61, line: 106, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3267)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3255, line: 210, size: 256, elements: !3268)
!3268 = !{!3269, !3273, !3275, !3276}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3267, file: !3255, line: 211, baseType: !3270, size: 72)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 72, elements: !3271)
!3271 = !{!3272}
!3272 = !DISubrange(count: 9)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3267, file: !3255, line: 212, baseType: !3274, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3255, line: 14, baseType: !283)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3267, file: !3255, line: 213, baseType: !150, size: 32, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3267, file: !3255, line: 214, baseType: !150, size: 32, offset: 224)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3243, file: !61, line: 108, baseType: !3202, size: 64, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3243, file: !61, line: 109, baseType: !3193, size: 64, offset: 512)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3243, file: !61, line: 110, baseType: !3202, size: 64, offset: 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3243, file: !61, line: 111, baseType: !3193, size: 64, offset: 640)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3243, file: !61, line: 112, baseType: !3282, size: 64, offset: 704)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!136, !169, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3286)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3286, file: !74, line: 51, baseType: !136, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3243, file: !61, line: 113, baseType: !3202, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3243, file: !61, line: 114, baseType: !287, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3243, file: !61, line: 115, baseType: !287, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3243, file: !61, line: 117, baseType: !3197, size: 64, offset: 960)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3243, file: !61, line: 118, baseType: !3193, size: 64, offset: 1024)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3243, file: !61, line: 120, baseType: !3295, size: 64, offset: 1088)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3229, file: !3230, line: 91, baseType: !3184, size: 64, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3229, file: !3230, line: 92, baseType: !3202, size: 64, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3229, file: !3230, line: 93, baseType: !3193, size: 64, offset: 576)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3229, file: !3230, line: 94, baseType: !3202, size: 64, offset: 640)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3229, file: !3230, line: 95, baseType: !3193, size: 64, offset: 704)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3229, file: !3230, line: 97, baseType: !3202, size: 64, offset: 768)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3229, file: !3230, line: 98, baseType: !3202, size: 64, offset: 832)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3229, file: !3230, line: 100, baseType: !3282, size: 64, offset: 896)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3229, file: !3230, line: 101, baseType: !3202, size: 64, offset: 960)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3229, file: !3230, line: 103, baseType: !3202, size: 64, offset: 1024)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3229, file: !3230, line: 105, baseType: !3202, size: 64, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3229, file: !3230, line: 107, baseType: !3197, size: 64, offset: 1152)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3229, file: !3230, line: 109, baseType: !3310, size: 64, offset: 1216)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3230, line: 109, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3229, file: !3230, line: 111, baseType: !3314, size: 64, offset: 1280)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3230, line: 111, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3229, file: !3230, line: 112, baseType: !600, offset: 1344)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3229, file: !3230, line: 114, baseType: !445, size: 8, offset: 1344)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !170, file: !67, line: 471, baseType: !3242, size: 64, offset: 832)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !170, file: !67, line: 473, baseType: !137, size: 64, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !170, file: !67, line: 475, baseType: !137, size: 64, offset: 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !67, line: 480, baseType: !1047, size: 192, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !170, file: !67, line: 484, baseType: !3323, size: 576, offset: 1216)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3323, file: !67, line: 362, baseType: !180, size: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3323, file: !67, line: 363, baseType: !180, size: 128, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3323, file: !67, line: 364, baseType: !180, size: 128, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3323, file: !67, line: 365, baseType: !180, size: 128, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3323, file: !67, line: 366, baseType: !445, size: 8, offset: 512)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3323, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !170, file: !67, line: 485, baseType: !3332, size: 2304, offset: 1792)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3429, !3433}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3332, file: !74, line: 566, baseType: !3285, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3332, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3332, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3332, file: !74, line: 569, baseType: !445, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3332, file: !74, line: 570, baseType: !445, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3332, file: !74, line: 571, baseType: !445, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3332, file: !74, line: 572, baseType: !445, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3332, file: !74, line: 573, baseType: !445, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3332, file: !74, line: 574, baseType: !445, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3332, file: !74, line: 575, baseType: !445, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3332, file: !74, line: 576, baseType: !445, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3332, file: !74, line: 577, baseType: !148, size: 32, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3332, file: !74, line: 578, baseType: !193, offset: 96)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3332, file: !74, line: 580, baseType: !180, size: 128, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3332, file: !74, line: 581, baseType: !1376, size: 192, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3332, file: !74, line: 582, baseType: !3350, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3352, line: 43, size: 1472, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3361, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !3352, line: 44, baseType: !177, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3351, file: !3352, line: 45, baseType: !136, size: 32, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3351, file: !3352, line: 46, baseType: !180, size: 128, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3351, file: !3352, line: 47, baseType: !193, offset: 256)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3351, file: !3352, line: 48, baseType: !3359, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3351, file: !3352, line: 49, baseType: !3362, size: 320, offset: 320)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3363, line: 11, size: 320, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3364 = !{!3365, !3366, !3367, !3372}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3362, file: !3363, line: 16, baseType: !594, size: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3362, file: !3363, line: 17, baseType: !283, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3362, file: !3363, line: 18, baseType: !3368, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3362, file: !3363, line: 19, baseType: !148, size: 32, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3351, file: !3352, line: 50, baseType: !283, size: 64, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3351, file: !3352, line: 51, baseType: !1174, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3351, file: !3352, line: 52, baseType: !1174, size: 64, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3351, file: !3352, line: 53, baseType: !1174, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3351, file: !3352, line: 54, baseType: !1174, size: 64, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3351, file: !3352, line: 55, baseType: !1174, size: 64, offset: 960)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3351, file: !3352, line: 56, baseType: !283, size: 64, offset: 1024)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3351, file: !3352, line: 57, baseType: !283, size: 64, offset: 1088)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3351, file: !3352, line: 58, baseType: !283, size: 64, offset: 1152)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3351, file: !3352, line: 59, baseType: !283, size: 64, offset: 1216)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3351, file: !3352, line: 60, baseType: !283, size: 64, offset: 1280)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3351, file: !3352, line: 61, baseType: !169, size: 64, offset: 1344)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3351, file: !3352, line: 62, baseType: !445, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3351, file: !3352, line: 63, baseType: !445, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3332, file: !74, line: 583, baseType: !445, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3332, file: !74, line: 584, baseType: !445, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3332, file: !74, line: 585, baseType: !445, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3332, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3332, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3332, file: !74, line: 592, baseType: !1166, size: 512, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3332, file: !74, line: 593, baseType: !376, size: 64, offset: 1088)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3332, file: !74, line: 594, baseType: !1828, size: 256, offset: 1152)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3332, file: !74, line: 595, baseType: !1355, size: 128, offset: 1408)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3332, file: !74, line: 596, baseType: !3359, size: 64, offset: 1536)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3332, file: !74, line: 597, baseType: !702, size: 32, offset: 1600)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3332, file: !74, line: 598, baseType: !702, size: 32, offset: 1632)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3332, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3332, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3332, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3332, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3332, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3332, file: !74, line: 604, baseType: !445, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3332, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3332, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3332, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3332, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3332, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3332, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3332, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3332, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3332, file: !74, line: 613, baseType: !136, size: 32, offset: 1792)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3332, file: !74, line: 614, baseType: !136, size: 32, offset: 1824)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3332, file: !74, line: 615, baseType: !376, size: 64, offset: 1856)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3332, file: !74, line: 616, baseType: !376, size: 64, offset: 1920)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3332, file: !74, line: 617, baseType: !376, size: 64, offset: 1984)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3332, file: !74, line: 618, baseType: !376, size: 64, offset: 2048)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3332, file: !74, line: 620, baseType: !3420, size: 64, offset: 2112)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3421, file: !74, line: 537, baseType: !193)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3421, file: !74, line: 538, baseType: !7, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3421, file: !74, line: 540, baseType: !180, size: 128, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3421, file: !74, line: 543, baseType: !3427, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3332, file: !74, line: 621, baseType: !3430, size: 64, offset: 2176)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{null, !169, !1318}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3332, file: !74, line: 622, baseType: !3434, size: 64, offset: 2240)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !170, file: !67, line: 486, baseType: !3437, size: 64, offset: 4096)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3446, !3447, !3448}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3438, file: !74, line: 643, baseType: !3199, size: 1472)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3438, file: !74, line: 644, baseType: !3202, size: 64, offset: 1472)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3438, file: !74, line: 645, baseType: !3443, size: 64, offset: 1536)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !169, !445}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3438, file: !74, line: 646, baseType: !3202, size: 64, offset: 1600)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3438, file: !74, line: 647, baseType: !3193, size: 64, offset: 1664)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3438, file: !74, line: 648, baseType: !3193, size: 64, offset: 1728)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !170, file: !67, line: 493, baseType: !3450, size: 64, offset: 4160)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !170, file: !67, line: 499, baseType: !180, size: 128, offset: 4224)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !170, file: !67, line: 502, baseType: !3454, size: 64, offset: 4352)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !170, file: !67, line: 504, baseType: !3458, size: 64, offset: 4416)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !170, file: !67, line: 505, baseType: !376, size: 64, offset: 4480)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !170, file: !67, line: 510, baseType: !376, size: 64, offset: 4544)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !170, file: !67, line: 511, baseType: !3462, size: 64, offset: 4608)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3464)
!3464 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !170, file: !67, line: 513, baseType: !3466, size: 64, offset: 4672)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3468)
!3468 = !{!3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3467, file: !67, line: 293, baseType: !7, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3467, file: !67, line: 294, baseType: !283, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !170, file: !67, line: 515, baseType: !180, size: 128, offset: 4736)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !170, file: !67, line: 526, baseType: !3473, offset: 4864)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3474, line: 5, elements: !207)
!3474 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !170, file: !67, line: 528, baseType: !3476, size: 64, offset: 4864)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3478, line: 14, flags: DIFlagFwdDecl)
!3478 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !170, file: !67, line: 529, baseType: !3480, size: 64, offset: 4928)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3230, line: 22, flags: DIFlagFwdDecl)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !170, file: !67, line: 534, baseType: !468, size: 32, offset: 4992)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !170, file: !67, line: 535, baseType: !148, size: 32, offset: 5024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !170, file: !67, line: 537, baseType: !193, offset: 5056)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !170, file: !67, line: 538, baseType: !180, size: 128, offset: 5056)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !170, file: !67, line: 540, baseType: !3487, size: 64, offset: 5184)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3489, line: 54, size: 960, elements: !3490)
!3489 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3501, !3505, !3506, !3507, !3508, !3512, !3516, !3517}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3488, file: !3489, line: 55, baseType: !177, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3488, file: !3489, line: 56, baseType: !126, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3488, file: !3489, line: 58, baseType: !287, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3488, file: !3489, line: 59, baseType: !287, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3488, file: !3489, line: 60, baseType: !186, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3488, file: !3489, line: 62, baseType: !3184, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3488, file: !3489, line: 63, baseType: !3498, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!234, !169, !3191}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3488, file: !3489, line: 65, baseType: !3502, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{null, !3487}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3488, file: !3489, line: 66, baseType: !3193, size: 64, offset: 512)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3488, file: !3489, line: 68, baseType: !3202, size: 64, offset: 576)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3488, file: !3489, line: 70, baseType: !2986, size: 64, offset: 640)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3488, file: !3489, line: 71, baseType: !3509, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3003, !169}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3488, file: !3489, line: 73, baseType: !3513, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !169, !3020, !3021}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3488, file: !3489, line: 75, baseType: !3197, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3488, file: !3489, line: 77, baseType: !3314, size: 64, offset: 896)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !170, file: !67, line: 541, baseType: !287, size: 64, offset: 5248)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !170, file: !67, line: 543, baseType: !3193, size: 64, offset: 5312)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !170, file: !67, line: 544, baseType: !3521, size: 64, offset: 5376)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !170, file: !67, line: 545, baseType: !3524, size: 64, offset: 5440)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !170, file: !67, line: 547, baseType: !445, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !170, file: !67, line: 548, baseType: !445, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !170, file: !67, line: 549, baseType: !445, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !170, file: !67, line: 550, baseType: !445, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !166, file: !6, line: 426, baseType: !169, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !166, file: !6, line: 427, baseType: !136, size: 32, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !166, file: !6, line: 428, baseType: !177, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !166, file: !6, line: 429, baseType: !1226, size: 8, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !166, file: !6, line: 433, baseType: !1226, size: 8, offset: 264)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !166, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !166, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !166, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !166, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !166, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !166, file: !6, line: 444, baseType: !136, size: 32, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !166, file: !6, line: 446, baseType: !1047, size: 192, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !166, file: !6, line: 448, baseType: !3543, size: 128, offset: 576)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3544)
!3544 = !{!3545}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3543, file: !6, line: 418, baseType: !3546, size: 128)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !161)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !166, file: !6, line: 449, baseType: !138, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !166, file: !6, line: 450, baseType: !165, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !166, file: !6, line: 452, baseType: !136, size: 32, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !166, file: !6, line: 459, baseType: !136, size: 32, offset: 864)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !166, file: !6, line: 460, baseType: !136, size: 32, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !166, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !139, file: !6, line: 647, baseType: !3554, size: 640, offset: 640)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3555)
!3555 = !{!3556, !3567, !3575, !3583, !3584, !3585, !3588, !3590, !3591, !3592}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3554, file: !6, line: 68, baseType: !3557, size: 72)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3557, file: !88, line: 408, baseType: !1227, size: 8)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3557, file: !88, line: 409, baseType: !1227, size: 8, offset: 8)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3557, file: !88, line: 411, baseType: !1227, size: 8, offset: 16)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3557, file: !88, line: 412, baseType: !1227, size: 8, offset: 24)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3557, file: !88, line: 413, baseType: !134, size: 16, offset: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3557, file: !88, line: 414, baseType: !1227, size: 8, offset: 48)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3557, file: !88, line: 418, baseType: !1227, size: 8, offset: 56)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3557, file: !88, line: 419, baseType: !1227, size: 8, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3554, file: !6, line: 69, baseType: !3568, size: 48, offset: 72)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3568, file: !88, line: 690, baseType: !1227, size: 8)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3568, file: !88, line: 691, baseType: !1227, size: 8, offset: 8)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3568, file: !88, line: 693, baseType: !1227, size: 8, offset: 16)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3568, file: !88, line: 694, baseType: !1227, size: 8, offset: 24)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3568, file: !88, line: 695, baseType: !134, size: 16, offset: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3554, file: !6, line: 70, baseType: !3576, size: 64, offset: 120)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3576, file: !88, line: 678, baseType: !1227, size: 8)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3576, file: !88, line: 679, baseType: !1227, size: 8, offset: 8)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3576, file: !88, line: 680, baseType: !134, size: 16, offset: 16)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3576, file: !88, line: 681, baseType: !3582, size: 32, offset: 32)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !135, line: 31, baseType: !150)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3554, file: !6, line: 71, baseType: !180, size: 128, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3554, file: !6, line: 72, baseType: !137, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3554, file: !6, line: 73, baseType: !3586, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3554, file: !6, line: 75, baseType: !3589, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3554, file: !6, line: 76, baseType: !136, size: 32, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3554, file: !6, line: 77, baseType: !136, size: 32, offset: 544)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3554, file: !6, line: 78, baseType: !136, size: 32, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !139, file: !6, line: 649, baseType: !170, size: 5568, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !139, file: !6, line: 651, baseType: !3595, size: 144, offset: 6848)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3595, file: !88, line: 290, baseType: !1227, size: 8)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3595, file: !88, line: 291, baseType: !1227, size: 8, offset: 8)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3595, file: !88, line: 293, baseType: !134, size: 16, offset: 16)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3595, file: !88, line: 294, baseType: !1227, size: 8, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3595, file: !88, line: 295, baseType: !1227, size: 8, offset: 40)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3595, file: !88, line: 296, baseType: !1227, size: 8, offset: 48)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3595, file: !88, line: 297, baseType: !1227, size: 8, offset: 56)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3595, file: !88, line: 298, baseType: !134, size: 16, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3595, file: !88, line: 299, baseType: !134, size: 16, offset: 80)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3595, file: !88, line: 300, baseType: !134, size: 16, offset: 96)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3595, file: !88, line: 301, baseType: !1227, size: 8, offset: 112)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3595, file: !88, line: 302, baseType: !1227, size: 8, offset: 120)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3595, file: !88, line: 303, baseType: !1227, size: 8, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3595, file: !88, line: 304, baseType: !1227, size: 8, offset: 136)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !139, file: !6, line: 652, baseType: !3612, size: 64, offset: 7040)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3614)
!3614 = !{!3615, !3623, !3631, !3643, !3656, !3665}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3613, file: !6, line: 397, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3617, file: !88, line: 845, baseType: !1227, size: 8)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3617, file: !88, line: 846, baseType: !1227, size: 8, offset: 8)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3617, file: !88, line: 848, baseType: !134, size: 16, offset: 16)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3617, file: !88, line: 849, baseType: !1227, size: 8, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3613, file: !6, line: 400, baseType: !3624, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3625, file: !88, line: 896, baseType: !1227, size: 8)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3625, file: !88, line: 897, baseType: !1227, size: 8, offset: 8)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3625, file: !88, line: 898, baseType: !1227, size: 8, offset: 16)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3625, file: !88, line: 899, baseType: !3582, size: 32, offset: 24)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3613, file: !6, line: 401, baseType: !3632, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3633, file: !88, line: 918, baseType: !1227, size: 8)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3633, file: !88, line: 919, baseType: !1227, size: 8, offset: 8)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3633, file: !88, line: 920, baseType: !1227, size: 8, offset: 16)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3633, file: !88, line: 921, baseType: !1227, size: 8, offset: 24)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3633, file: !88, line: 923, baseType: !134, size: 16, offset: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3633, file: !88, line: 928, baseType: !1227, size: 8, offset: 48)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3633, file: !88, line: 929, baseType: !1227, size: 8, offset: 56)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3633, file: !88, line: 930, baseType: !134, size: 16, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3613, file: !6, line: 402, baseType: !3644, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3645, file: !88, line: 956, baseType: !1227, size: 8)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3645, file: !88, line: 957, baseType: !1227, size: 8, offset: 8)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3645, file: !88, line: 958, baseType: !1227, size: 8, offset: 16)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3645, file: !88, line: 959, baseType: !1227, size: 8, offset: 24)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3645, file: !88, line: 960, baseType: !3582, size: 32, offset: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3645, file: !88, line: 963, baseType: !134, size: 16, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3645, file: !88, line: 967, baseType: !134, size: 16, offset: 80)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3645, file: !88, line: 968, baseType: !3655, size: 32, offset: 96)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3582, size: 32, elements: !1245)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3613, file: !6, line: 403, baseType: !3657, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3663, !3664}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3658, file: !88, line: 941, baseType: !1227, size: 8)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3658, file: !88, line: 942, baseType: !1227, size: 8, offset: 8)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3658, file: !88, line: 943, baseType: !1227, size: 8, offset: 16)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3658, file: !88, line: 944, baseType: !1227, size: 8, offset: 24)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3658, file: !88, line: 945, baseType: !2505, size: 128, offset: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3613, file: !6, line: 404, baseType: !3666, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3668)
!3668 = !{!3669, !3670, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3667, file: !88, line: 1081, baseType: !1227, size: 8)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3667, file: !88, line: 1082, baseType: !1227, size: 8, offset: 8)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3667, file: !88, line: 1083, baseType: !1227, size: 8, offset: 16)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !139, file: !6, line: 653, baseType: !3673, size: 64, offset: 7104)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3675)
!3675 = !{!3676, !3687, !3688, !3701, !3743, !3752, !3753}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3674, file: !6, line: 375, baseType: !3677, size: 72)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3677, file: !88, line: 350, baseType: !1227, size: 8)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3677, file: !88, line: 351, baseType: !1227, size: 8, offset: 8)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3677, file: !88, line: 353, baseType: !134, size: 16, offset: 16)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3677, file: !88, line: 354, baseType: !1227, size: 8, offset: 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3677, file: !88, line: 355, baseType: !1227, size: 8, offset: 40)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3677, file: !88, line: 356, baseType: !1227, size: 8, offset: 48)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3677, file: !88, line: 357, baseType: !1227, size: 8, offset: 56)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3677, file: !88, line: 358, baseType: !1227, size: 8, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3674, file: !6, line: 377, baseType: !234, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3674, file: !6, line: 381, baseType: !3689, size: 1024, offset: 192)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3690, size: 1024, elements: !145)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3691, file: !88, line: 784, baseType: !1227, size: 8)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3691, file: !88, line: 785, baseType: !1227, size: 8, offset: 8)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3691, file: !88, line: 787, baseType: !1227, size: 8, offset: 16)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3691, file: !88, line: 788, baseType: !1227, size: 8, offset: 24)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3691, file: !88, line: 789, baseType: !1227, size: 8, offset: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3691, file: !88, line: 790, baseType: !1227, size: 8, offset: 40)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3691, file: !88, line: 791, baseType: !1227, size: 8, offset: 48)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3691, file: !88, line: 792, baseType: !1227, size: 8, offset: 56)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3674, file: !6, line: 385, baseType: !3702, size: 2048, offset: 1216)
!3702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3703, size: 2048, elements: !2089)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3705)
!3705 = !{!3706, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3704, file: !6, line: 235, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3709)
!3709 = !{!3710, !3722, !3723, !3724, !3726}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3708, file: !6, line: 83, baseType: !3711, size: 72)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3711, file: !88, line: 390, baseType: !1227, size: 8)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3711, file: !88, line: 391, baseType: !1227, size: 8, offset: 8)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3711, file: !88, line: 393, baseType: !1227, size: 8, offset: 16)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3711, file: !88, line: 394, baseType: !1227, size: 8, offset: 24)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3711, file: !88, line: 395, baseType: !1227, size: 8, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3711, file: !88, line: 396, baseType: !1227, size: 8, offset: 40)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3711, file: !88, line: 397, baseType: !1227, size: 8, offset: 48)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3711, file: !88, line: 398, baseType: !1227, size: 8, offset: 56)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3711, file: !88, line: 399, baseType: !1227, size: 8, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3708, file: !6, line: 85, baseType: !136, size: 32, offset: 96)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3708, file: !6, line: 86, baseType: !3589, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3708, file: !6, line: 91, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3708, file: !6, line: 93, baseType: !234, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3704, file: !6, line: 237, baseType: !3707, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3704, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3704, file: !6, line: 243, baseType: !3690, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3704, file: !6, line: 245, baseType: !136, size: 32, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3704, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3704, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3704, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3704, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3704, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3704, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3704, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3704, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3704, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3704, file: !6, line: 257, baseType: !170, size: 5568, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3704, file: !6, line: 258, baseType: !169, size: 64, offset: 5952)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3704, file: !6, line: 259, baseType: !1828, size: 256, offset: 6016)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3674, file: !6, line: 389, baseType: !3744, size: 2048, offset: 3264)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3745, size: 2048, elements: !2089)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3747)
!3747 = !{!3748, !3749, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3746, file: !6, line: 323, baseType: !7, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3746, file: !6, line: 324, baseType: !3162, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3746, file: !6, line: 328, baseType: !3751, offset: 64)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3708, elements: !2190)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3674, file: !6, line: 391, baseType: !3589, size: 64, offset: 5312)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3674, file: !6, line: 392, baseType: !136, size: 32, offset: 5376)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !139, file: !6, line: 655, baseType: !3673, size: 64, offset: 7168)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !139, file: !6, line: 656, baseType: !3756, size: 1024, offset: 7232)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3725, size: 1024, elements: !145)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !139, file: !6, line: 657, baseType: !3756, size: 1024, offset: 8256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !139, file: !6, line: 659, baseType: !3759, size: 64, offset: 9280)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !139, file: !6, line: 661, baseType: !133, size: 16, offset: 9344)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !139, file: !6, line: 662, baseType: !1226, size: 8, offset: 9360)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !139, file: !6, line: 663, baseType: !1226, size: 8, offset: 9368)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !139, file: !6, line: 664, baseType: !1226, size: 8, offset: 9376)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !139, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !139, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !139, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !139, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !139, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !139, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !139, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !139, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !139, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !139, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !139, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !139, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !139, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !139, file: !6, line: 679, baseType: !136, size: 32, offset: 9408)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !139, file: !6, line: 682, baseType: !234, size: 64, offset: 9472)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !139, file: !6, line: 683, baseType: !234, size: 64, offset: 9536)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !139, file: !6, line: 684, baseType: !234, size: 64, offset: 9600)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !139, file: !6, line: 686, baseType: !180, size: 128, offset: 9664)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !139, file: !6, line: 688, baseType: !136, size: 32, offset: 9792)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !139, file: !6, line: 690, baseType: !148, size: 32, offset: 9824)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !139, file: !6, line: 691, baseType: !702, size: 32, offset: 9856)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !139, file: !6, line: 693, baseType: !283, size: 64, offset: 9920)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !139, file: !6, line: 696, baseType: !283, size: 64, offset: 9984)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !139, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !139, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !139, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !139, file: !6, line: 702, baseType: !3791, size: 64, offset: 10112)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !139, file: !6, line: 703, baseType: !136, size: 32, offset: 10176)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !139, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !139, file: !6, line: 705, baseType: !3796, size: 64, offset: 10240)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3797)
!3797 = !{!3798, !3799}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3796, file: !6, line: 506, baseType: !7, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3796, file: !6, line: 512, baseType: !136, size: 32, offset: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !139, file: !6, line: 706, baseType: !3801, size: 128, offset: 10304)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3806}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3801, file: !6, line: 529, baseType: !7, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3801, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3801, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3801, file: !6, line: 551, baseType: !136, size: 32, offset: 96)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !139, file: !6, line: 707, baseType: !3801, size: 128, offset: 10432)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !139, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !139, file: !6, line: 710, baseType: !814, size: 16, offset: 10592)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !139, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!3812 = !{!3813, !3865, !3870, !3875, !3877, !3882, !3887, !3889, !3894, !3899, !0, !3901, !3962, !3966}
!3813 = !DIGlobalVariableExpression(var: !3814, expr: !DIExpression())
!3814 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 19, type: !3815, isLocal: true, isDefinition: true, align: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3817, line: 69, size: 320, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3818 = !{!3819, !3820, !3821, !3837, !3839, !3843, !3844}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3816, file: !3817, line: 70, baseType: !177, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3816, file: !3817, line: 71, baseType: !126, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3816, file: !3817, line: 72, baseType: !3822, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3817, line: 47, size: 256, elements: !3825)
!3825 = !{!3826, !3827, !3832, !3836}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3824, file: !3817, line: 49, baseType: !7, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3824, file: !3817, line: 51, baseType: !3828, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!136, !177, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3824, file: !3817, line: 53, baseType: !3833, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!136, !234, !3831}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3824, file: !3817, line: 55, baseType: !423, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3816, file: !3817, line: 73, baseType: !3838, size: 16, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3816, file: !3817, line: 74, baseType: !3840, size: 8, offset: 208)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !149, line: 16, baseType: !3841)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !132, line: 20, baseType: !3842)
!3842 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3816, file: !3817, line: 75, baseType: !1226, size: 8, offset: 216)
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !3816, file: !3817, line: 76, baseType: !3845, size: 64, offset: 256)
!3845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3816, file: !3817, line: 76, size: 64, elements: !3846)
!3846 = !{!3847, !3848, !3855}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3845, file: !3817, line: 77, baseType: !137, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3845, file: !3817, line: 78, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3817, line: 86, size: 128, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3851, file: !3817, line: 87, baseType: !7, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3851, file: !3817, line: 88, baseType: !234, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3845, file: !3817, line: 79, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3817, line: 92, size: 256, elements: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3864}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3858, file: !3817, line: 94, baseType: !7, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3858, file: !3817, line: 95, baseType: !7, size: 32, offset: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3858, file: !3817, line: 96, baseType: !2481, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3858, file: !3817, line: 97, baseType: !3822, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3858, file: !3817, line: 98, baseType: !137, size: 64, offset: 192)
!3865 = !DIGlobalVariableExpression(var: !3866, expr: !DIExpression())
!3866 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype212", scope: !2, file: !3, line: 19, type: !3867, isLocal: true, isDefinition: true, align: 8)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 272, elements: !3868)
!3868 = !{!3869}
!3869 = !DISubrange(count: 34)
!3870 = !DIGlobalVariableExpression(var: !3871, expr: !DIExpression())
!3871 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug213", scope: !2, file: !3, line: 20, type: !3872, isLocal: true, isDefinition: true, align: 8)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 560, elements: !3873)
!3873 = !{!3874}
!3874 = !DISubrange(count: 70)
!3875 = !DIGlobalVariableExpression(var: !3876, expr: !DIExpression())
!3876 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_keyspan_driver_init214", scope: !2, file: !3, line: 585, type: !137, isLocal: true, isDefinition: true)
!3877 = !DIGlobalVariableExpression(var: !3878, expr: !DIExpression())
!3878 = distinct !DIGlobalVariable(name: "__exitcall_keyspan_driver_exit", scope: !2, file: !3, line: 585, type: !3879, isLocal: true, isDefinition: true)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3880, line: 117, baseType: !3881)
!3880 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!3882 = !DIGlobalVariableExpression(var: !3883, expr: !DIExpression())
!3883 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author215", scope: !2, file: !3, line: 588, type: !3884, isLocal: true, isDefinition: true, align: 8)
!3884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 456, elements: !3885)
!3885 = !{!3886}
!3886 = !DISubrange(count: 57)
!3887 = !DIGlobalVariableExpression(var: !3888, expr: !DIExpression())
!3888 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description216", scope: !2, file: !3, line: 589, type: !3872, isLocal: true, isDefinition: true, align: 8)
!3889 = !DIGlobalVariableExpression(var: !3890, expr: !DIExpression())
!3890 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file217", scope: !2, file: !3, line: 590, type: !3891, isLocal: true, isDefinition: true, align: 8)
!3891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 432, elements: !3892)
!3892 = !{!3893}
!3893 = !DISubrange(count: 54)
!3894 = !DIGlobalVariableExpression(var: !3895, expr: !DIExpression())
!3895 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license218", scope: !2, file: !3, line: 590, type: !3896, isLocal: true, isDefinition: true, align: 8)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 216, elements: !3897)
!3897 = !{!3898}
!3898 = !DISubrange(count: 27)
!3899 = !DIGlobalVariableExpression(var: !3900, expr: !DIExpression())
!3900 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 18, type: !136, isLocal: true, isDefinition: true)
!3901 = !DIGlobalVariableExpression(var: !3902, expr: !DIExpression())
!3902 = distinct !DIGlobalVariable(name: "keyspan_driver", scope: !2, file: !3, line: 577, type: !3903, isLocal: true, isDefinition: true)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3904)
!3904 = !{!3905, !3906, !3927, !3931, !3935, !3939, !3943, !3944, !3945, !3946, !3947, !3948, !3953, !3958, !3959, !3960, !3961}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3903, file: !6, line: 1185, baseType: !177, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3903, file: !6, line: 1187, baseType: !3907, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!136, !3703, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3912)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3255, line: 121, size: 256, elements: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3912, file: !3255, line: 123, baseType: !131, size: 16)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3912, file: !3255, line: 126, baseType: !131, size: 16, offset: 16)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3912, file: !3255, line: 127, baseType: !131, size: 16, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3912, file: !3255, line: 128, baseType: !131, size: 16, offset: 48)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3912, file: !3255, line: 129, baseType: !131, size: 16, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3912, file: !3255, line: 132, baseType: !1227, size: 8, offset: 80)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3912, file: !3255, line: 133, baseType: !1227, size: 8, offset: 88)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3912, file: !3255, line: 134, baseType: !1227, size: 8, offset: 96)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3912, file: !3255, line: 137, baseType: !1227, size: 8, offset: 104)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3912, file: !3255, line: 138, baseType: !1227, size: 8, offset: 112)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3912, file: !3255, line: 139, baseType: !1227, size: 8, offset: 120)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3912, file: !3255, line: 142, baseType: !1227, size: 8, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3912, file: !3255, line: 145, baseType: !3274, size: 64, align: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3903, file: !6, line: 1190, baseType: !3928, size: 64, offset: 128)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !3703}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3903, file: !6, line: 1192, baseType: !3932, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!136, !3703, !7, !137}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3903, file: !6, line: 1195, baseType: !3936, size: 64, offset: 256)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!136, !3703, !3285}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3903, file: !6, line: 1196, baseType: !3940, size: 64, offset: 320)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!136, !3703}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3903, file: !6, line: 1197, baseType: !3940, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3903, file: !6, line: 1199, baseType: !3940, size: 64, offset: 448)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3903, file: !6, line: 1200, baseType: !3940, size: 64, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3903, file: !6, line: 1202, baseType: !3910, size: 64, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3903, file: !6, line: 1203, baseType: !287, size: 64, offset: 640)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3903, file: !6, line: 1205, baseType: !3949, size: 128, offset: 704)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3949, file: !6, line: 1092, baseType: !193)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3949, file: !6, line: 1093, baseType: !180, size: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3903, file: !6, line: 1206, baseType: !3954, size: 1216, offset: 832)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3955)
!3955 = !{!3956, !3957}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3954, file: !6, line: 1114, baseType: !3243, size: 1152)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3954, file: !6, line: 1115, baseType: !136, size: 32, offset: 1152)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3903, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3903, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3903, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3903, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3962 = !DIGlobalVariableExpression(var: !3963, expr: !DIExpression())
!3963 = distinct !DIGlobalVariable(name: "keyspan_key_table", scope: !2, file: !3, line: 44, type: !3964, isLocal: true, isDefinition: true)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3965, size: 512, elements: !2089)
!3965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!3966 = !DIGlobalVariableExpression(var: !3967, expr: !DIExpression())
!3967 = distinct !DIGlobalVariable(name: "keyspan_table", scope: !2, file: !3, line: 80, type: !3968, isLocal: true, isDefinition: true)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3911, size: 512, elements: !161)
!3969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 168, elements: !3970)
!3970 = !{!3971}
!3971 = !DISubrange(count: 21)
!3972 = !{i32 7, !"Dwarf Version", i32 4}
!3973 = !{i32 2, !"Debug Info Version", i32 3}
!3974 = !{i32 1, !"wchar_size", i32 2}
!3975 = !{i32 1, !"Code Model", i32 2}
!3976 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3977 = distinct !DISubprogram(name: "keyspan_driver_init", scope: !3, file: !3, line: 585, type: !3978, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!136}
!3980 = !DILocation(line: 585, column: 1, scope: !3977)
!3981 = distinct !DISubprogram(name: "keyspan_driver_exit", scope: !3, file: !3, line: 585, type: !1749, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!3982 = !DILocation(line: 585, column: 1, scope: !3981)
!3983 = distinct !DISubprogram(name: "keyspan_probe", scope: !3, file: !3, line: 444, type: !3908, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!3984 = !DILocalVariable(name: "interface", arg: 1, scope: !3983, file: !3, line: 444, type: !3703)
!3985 = !DILocation(line: 444, column: 48, scope: !3983)
!3986 = !DILocalVariable(name: "id", arg: 2, scope: !3983, file: !3, line: 444, type: !3910)
!3987 = !DILocation(line: 444, column: 87, scope: !3983)
!3988 = !DILocalVariable(name: "udev", scope: !3983, file: !3, line: 446, type: !138)
!3989 = !DILocation(line: 446, column: 21, scope: !3983)
!3990 = !DILocation(line: 446, column: 48, scope: !3983)
!3991 = !DILocation(line: 446, column: 28, scope: !3983)
!3992 = !DILocalVariable(name: "endpoint", scope: !3983, file: !3, line: 447, type: !3993)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3994 = !DILocation(line: 447, column: 34, scope: !3983)
!3995 = !DILocalVariable(name: "remote", scope: !3983, file: !3, line: 448, type: !3996)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_keyspan", file: !3, line: 102, size: 3008, elements: !3998)
!3998 = !{!3999, !4000, !4002, !4004, !4005, !4280, !4281, !4282, !4337, !4338, !4339, !4340, !4349, !4350}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3997, file: !3, line: 103, baseType: !3260, size: 1024)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3997, file: !3, line: 104, baseType: !4001, size: 512, offset: 1024)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 512, elements: !239)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "keymap", scope: !3997, file: !3, line: 105, baseType: !4003, size: 512, offset: 1536)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, elements: !2089)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3997, file: !3, line: 106, baseType: !138, size: 64, offset: 2048)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !3997, file: !3, line: 107, baseType: !4006, size: 64, offset: 2112)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4008, line: 131, size: 10432, elements: !4009)
!4008 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4009 = !{!4010, !4011, !4012, !4013, !4021, !4022, !4023, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4050, !4055, !4150, !4153, !4154, !4155, !4157, !4160, !4170, !4171, !4172, !4173, !4174, !4178, !4182, !4186, !4190, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4277, !4278}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4007, file: !4008, line: 132, baseType: !177, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4007, file: !4008, line: 133, baseType: !177, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4007, file: !4008, line: 134, baseType: !177, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4007, file: !4008, line: 135, baseType: !4014, size: 64, offset: 192)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4015, line: 59, size: 64, elements: !4016)
!4015 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4016 = !{!4017, !4018, !4019, !4020}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4014, file: !4015, line: 60, baseType: !131, size: 16)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4014, file: !4015, line: 61, baseType: !131, size: 16, offset: 16)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4014, file: !4015, line: 62, baseType: !131, size: 16, offset: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4014, file: !4015, line: 63, baseType: !131, size: 16, offset: 48)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4007, file: !4008, line: 137, baseType: !1244, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4007, file: !4008, line: 139, baseType: !1244, size: 64, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4007, file: !4008, line: 140, baseType: !4024, size: 768, offset: 384)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 768, elements: !2095)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4007, file: !4008, line: 141, baseType: !1244, size: 64, offset: 1152)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4007, file: !4008, line: 142, baseType: !1244, size: 64, offset: 1216)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4007, file: !4008, line: 143, baseType: !1244, size: 64, offset: 1280)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4007, file: !4008, line: 144, baseType: !1244, size: 64, offset: 1344)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4007, file: !4008, line: 145, baseType: !1244, size: 64, offset: 1408)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4007, file: !4008, line: 146, baseType: !3546, size: 128, offset: 1472)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4007, file: !4008, line: 147, baseType: !1244, size: 64, offset: 1600)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4007, file: !4008, line: 149, baseType: !7, size: 32, offset: 1664)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4007, file: !4008, line: 151, baseType: !7, size: 32, offset: 1696)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4007, file: !4008, line: 152, baseType: !7, size: 32, offset: 1728)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4007, file: !4008, line: 153, baseType: !137, size: 64, offset: 1792)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4007, file: !4008, line: 155, baseType: !4037, size: 64, offset: 1856)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!136, !4006, !4040, !2481}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4042)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4015, line: 114, size: 320, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4042, file: !4015, line: 116, baseType: !1227, size: 8)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4042, file: !4015, line: 117, baseType: !1227, size: 8, offset: 8)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4042, file: !4015, line: 118, baseType: !131, size: 16, offset: 16)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4042, file: !4015, line: 119, baseType: !150, size: 32, offset: 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4042, file: !4015, line: 120, baseType: !4049, size: 256, offset: 64)
!4049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1227, size: 256, elements: !2089)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4007, file: !4008, line: 158, baseType: !4051, size: 64, offset: 1920)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!136, !4006, !4054}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4007, file: !4008, line: 161, baseType: !4056, size: 64, offset: 1984)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4008, line: 534, size: 896, elements: !4058)
!4058 = !{!4059, !4126, !4130, !4134, !4138, !4139, !4143, !4144, !4145, !4146, !4147, !4148}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4057, file: !4008, line: 535, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!136, !4006, !4063, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4015, line: 450, size: 384, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4074, !4079}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4064, file: !4015, line: 451, baseType: !131, size: 16)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4064, file: !4015, line: 452, baseType: !1078, size: 16, offset: 16)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4064, file: !4015, line: 453, baseType: !131, size: 16, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4064, file: !4015, line: 454, baseType: !4070, size: 32, offset: 48)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4015, line: 316, size: 32, elements: !4071)
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4070, file: !4015, line: 317, baseType: !131, size: 16)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4070, file: !4015, line: 318, baseType: !131, size: 16, offset: 16)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4064, file: !4015, line: 455, baseType: !4075, size: 32, offset: 80)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4015, line: 306, size: 32, elements: !4076)
!4076 = !{!4077, !4078}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4075, file: !4015, line: 307, baseType: !131, size: 16)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4075, file: !4015, line: 308, baseType: !131, size: 16, offset: 16)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4064, file: !4015, line: 463, baseType: !4080, size: 256, offset: 128)
!4080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4064, file: !4015, line: 457, size: 256, elements: !4081)
!4081 = !{!4082, !4093, !4099, !4111, !4121}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4080, file: !4015, line: 458, baseType: !4083, size: 80)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4015, line: 345, size: 80, elements: !4084)
!4084 = !{!4085, !4086}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4083, file: !4015, line: 346, baseType: !1078, size: 16)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4083, file: !4015, line: 347, baseType: !4087, size: 64, offset: 16)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4015, line: 333, size: 64, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4087, file: !4015, line: 334, baseType: !131, size: 16)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4087, file: !4015, line: 335, baseType: !131, size: 16, offset: 16)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4087, file: !4015, line: 336, baseType: !131, size: 16, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4087, file: !4015, line: 337, baseType: !131, size: 16, offset: 48)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4080, file: !4015, line: 459, baseType: !4094, size: 96)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4015, line: 356, size: 96, elements: !4095)
!4095 = !{!4096, !4097, !4098}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4094, file: !4015, line: 357, baseType: !1078, size: 16)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4094, file: !4015, line: 358, baseType: !1078, size: 16, offset: 16)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4094, file: !4015, line: 359, baseType: !4087, size: 64, offset: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4080, file: !4015, line: 460, baseType: !4100, size: 256)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4015, line: 401, size: 256, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4100, file: !4015, line: 402, baseType: !131, size: 16)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4100, file: !4015, line: 403, baseType: !131, size: 16, offset: 16)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4100, file: !4015, line: 404, baseType: !1078, size: 16, offset: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4100, file: !4015, line: 405, baseType: !1078, size: 16, offset: 48)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4100, file: !4015, line: 406, baseType: !131, size: 16, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4100, file: !4015, line: 408, baseType: !4087, size: 64, offset: 80)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4100, file: !4015, line: 410, baseType: !150, size: 32, offset: 160)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4100, file: !4015, line: 411, baseType: !4110, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4080, file: !4015, line: 461, baseType: !4112, size: 192)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4113, size: 192, elements: !161)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4015, line: 372, size: 96, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119, !4120}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4113, file: !4015, line: 373, baseType: !131, size: 16)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4113, file: !4015, line: 374, baseType: !131, size: 16, offset: 16)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4113, file: !4015, line: 376, baseType: !1078, size: 16, offset: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4113, file: !4015, line: 377, baseType: !1078, size: 16, offset: 48)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4113, file: !4015, line: 379, baseType: !131, size: 16, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4113, file: !4015, line: 380, baseType: !1078, size: 16, offset: 80)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4080, file: !4015, line: 462, baseType: !4122, size: 32)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4015, line: 422, size: 32, elements: !4123)
!4123 = !{!4124, !4125}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4122, file: !4015, line: 423, baseType: !131, size: 16)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4122, file: !4015, line: 424, baseType: !131, size: 16, offset: 16)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4057, file: !4008, line: 537, baseType: !4127, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!136, !4006, !136}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4057, file: !4008, line: 539, baseType: !4131, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!136, !4006, !136, !136}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4057, file: !4008, line: 540, baseType: !4135, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !4006, !814}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4057, file: !4008, line: 541, baseType: !4135, size: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4057, file: !4008, line: 543, baseType: !4140, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{null, !4056}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4057, file: !4008, line: 545, baseType: !137, size: 64, offset: 384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4057, file: !4008, line: 547, baseType: !3546, size: 128, offset: 448)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4057, file: !4008, line: 549, baseType: !1047, size: 192, offset: 576)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4057, file: !4008, line: 551, baseType: !136, size: 32, offset: 768)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4057, file: !4008, line: 552, baseType: !4063, size: 64, offset: 832)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4057, file: !4008, line: 553, baseType: !4149, offset: 896)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, elements: !2190)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4007, file: !4008, line: 163, baseType: !4151, size: 64, offset: 2048)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4008, line: 24, flags: DIFlagFwdDecl)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4007, file: !4008, line: 165, baseType: !7, size: 32, offset: 2112)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4007, file: !4008, line: 166, baseType: !3362, size: 320, offset: 2176)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4007, file: !4008, line: 168, baseType: !4156, size: 64, offset: 2496)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !161)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4007, file: !4008, line: 170, baseType: !4158, size: 64, offset: 2560)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4008, line: 170, flags: DIFlagFwdDecl)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4007, file: !4008, line: 172, baseType: !4161, size: 64, offset: 2624)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4015, line: 90, size: 192, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167, !4168, !4169}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4162, file: !4015, line: 91, baseType: !1319, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4162, file: !4015, line: 92, baseType: !1319, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4162, file: !4015, line: 93, baseType: !1319, size: 32, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4162, file: !4015, line: 94, baseType: !1319, size: 32, offset: 96)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4162, file: !4015, line: 95, baseType: !1319, size: 32, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4162, file: !4015, line: 96, baseType: !1319, size: 32, offset: 160)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4007, file: !4008, line: 174, baseType: !4024, size: 768, offset: 2688)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4007, file: !4008, line: 175, baseType: !1244, size: 64, offset: 3456)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4007, file: !4008, line: 176, baseType: !1244, size: 64, offset: 3520)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4007, file: !4008, line: 177, baseType: !1244, size: 64, offset: 3584)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4007, file: !4008, line: 179, baseType: !4175, size: 64, offset: 3648)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!136, !4006}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4007, file: !4008, line: 180, baseType: !4179, size: 64, offset: 3712)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{null, !4006}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4007, file: !4008, line: 181, baseType: !4183, size: 64, offset: 3776)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!136, !4006, !311}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4007, file: !4008, line: 182, baseType: !4187, size: 64, offset: 3840)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!136, !4006, !7, !7, !136}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4007, file: !4008, line: 184, baseType: !4191, size: 64, offset: 3904)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4008, line: 337, size: 576, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4197, !4198, !4264, !4265}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4192, file: !4008, line: 339, baseType: !137, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4192, file: !4008, line: 341, baseType: !136, size: 32, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4192, file: !4008, line: 342, baseType: !177, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4192, file: !4008, line: 344, baseType: !4006, size: 64, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4192, file: !4008, line: 345, baseType: !4199, size: 64, offset: 256)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4008, line: 302, size: 960, elements: !4201)
!4201 = !{!4202, !4203, !4207, !4218, !4222, !4226, !4253, !4257, !4258, !4259, !4260, !4261, !4262, !4263}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4200, file: !4008, line: 304, baseType: !137, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4200, file: !4008, line: 306, baseType: !4204, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !4191, !7, !7, !136}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4200, file: !4008, line: 307, baseType: !4208, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !4191, !4211, !7}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4008, line: 32, size: 64, elements: !4214)
!4214 = !{!4215, !4216, !4217}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4213, file: !4008, line: 33, baseType: !131, size: 16)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4213, file: !4008, line: 34, baseType: !131, size: 16, offset: 16)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4213, file: !4008, line: 35, baseType: !1319, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4200, file: !4008, line: 309, baseType: !4219, size: 64, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!445, !4191, !7, !7, !136}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4200, file: !4008, line: 310, baseType: !4223, size: 64, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!445, !4199, !4006}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4200, file: !4008, line: 311, baseType: !4227, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!136, !4199, !4006, !4230}
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3255, line: 342, size: 1600, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4237, !4238, !4239, !4241, !4243, !4244, !4245, !4246, !4247, !4248, !4250, !4251, !4252}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4232, file: !3255, line: 344, baseType: !3274, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4232, file: !3255, line: 346, baseType: !131, size: 16, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4232, file: !3255, line: 347, baseType: !131, size: 16, offset: 80)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4232, file: !3255, line: 348, baseType: !131, size: 16, offset: 96)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4232, file: !3255, line: 349, baseType: !131, size: 16, offset: 112)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4232, file: !3255, line: 351, baseType: !4240, size: 64, offset: 128)
!4240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3274, size: 64, elements: !1245)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4232, file: !3255, line: 352, baseType: !4242, size: 768, offset: 192)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3274, size: 768, elements: !2095)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4232, file: !3255, line: 353, baseType: !4240, size: 64, offset: 960)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4232, file: !3255, line: 354, baseType: !4240, size: 64, offset: 1024)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4232, file: !3255, line: 355, baseType: !4240, size: 64, offset: 1088)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4232, file: !3255, line: 356, baseType: !4240, size: 64, offset: 1152)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4232, file: !3255, line: 357, baseType: !4240, size: 64, offset: 1216)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4232, file: !3255, line: 358, baseType: !4249, size: 128, offset: 1280)
!4249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3274, size: 128, elements: !161)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4232, file: !3255, line: 359, baseType: !4240, size: 64, offset: 1408)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4232, file: !3255, line: 360, baseType: !4240, size: 64, offset: 1472)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4232, file: !3255, line: 362, baseType: !3274, size: 64, offset: 1536)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4200, file: !4008, line: 312, baseType: !4254, size: 64, offset: 384)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4191}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4200, file: !4008, line: 313, baseType: !4254, size: 64, offset: 448)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4200, file: !4008, line: 315, baseType: !445, size: 8, offset: 512)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4200, file: !4008, line: 316, baseType: !136, size: 32, offset: 544)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4200, file: !4008, line: 317, baseType: !177, size: 64, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4200, file: !4008, line: 319, baseType: !4230, size: 64, offset: 640)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4200, file: !4008, line: 321, baseType: !180, size: 128, offset: 704)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4200, file: !4008, line: 322, baseType: !180, size: 128, offset: 832)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4192, file: !4008, line: 347, baseType: !180, size: 128, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4192, file: !4008, line: 348, baseType: !180, size: 128, offset: 448)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4007, file: !4008, line: 186, baseType: !193, offset: 3968)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4007, file: !4008, line: 187, baseType: !1047, size: 192, offset: 3968)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4007, file: !4008, line: 189, baseType: !7, size: 32, offset: 4160)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4007, file: !4008, line: 190, baseType: !445, size: 8, offset: 4192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4007, file: !4008, line: 192, baseType: !170, size: 5568, offset: 4224)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4007, file: !4008, line: 194, baseType: !180, size: 128, offset: 9792)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4007, file: !4008, line: 195, baseType: !180, size: 128, offset: 9920)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4007, file: !4008, line: 197, baseType: !7, size: 32, offset: 10048)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4007, file: !4008, line: 198, baseType: !7, size: 32, offset: 10080)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4007, file: !4008, line: 199, baseType: !4276, size: 64, offset: 10112)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4007, file: !4008, line: 201, baseType: !445, size: 8, offset: 10176)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4007, file: !4008, line: 203, baseType: !4279, size: 192, offset: 10240)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 192, elements: !235)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3997, file: !3, line: 108, baseType: !3703, size: 64, offset: 2176)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "in_endpoint", scope: !3997, file: !3, line: 109, baseType: !3993, size: 64, offset: 2240)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "irq_urb", scope: !3997, file: !3, line: 110, baseType: !4283, size: 64, offset: 2304)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4285)
!4285 = !{!4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4329}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4284, file: !6, line: 1563, baseType: !3162, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4284, file: !6, line: 1564, baseType: !136, size: 32, offset: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4284, file: !6, line: 1565, baseType: !137, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4284, file: !6, line: 1566, baseType: !702, size: 32, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4284, file: !6, line: 1567, baseType: !702, size: 32, offset: 160)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4284, file: !6, line: 1570, baseType: !180, size: 128, offset: 192)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4284, file: !6, line: 1572, baseType: !180, size: 128, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4284, file: !6, line: 1573, baseType: !4294, size: 64, offset: 448)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4295, file: !6, line: 1361, baseType: !180, size: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4295, file: !6, line: 1362, baseType: !1355, size: 128, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4295, file: !6, line: 1363, baseType: !193, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4295, file: !6, line: 1364, baseType: !702, size: 32, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4295, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4284, file: !6, line: 1574, baseType: !138, size: 64, offset: 512)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4284, file: !6, line: 1575, baseType: !3725, size: 64, offset: 576)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4284, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4284, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4284, file: !6, line: 1578, baseType: !136, size: 32, offset: 704)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4284, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4284, file: !6, line: 1580, baseType: !137, size: 64, offset: 768)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4284, file: !6, line: 1581, baseType: !874, size: 64, offset: 832)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4284, file: !6, line: 1582, baseType: !4311, size: 64, offset: 896)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4284, file: !6, line: 1583, baseType: !136, size: 32, offset: 960)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4284, file: !6, line: 1584, baseType: !136, size: 32, offset: 992)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4284, file: !6, line: 1585, baseType: !148, size: 32, offset: 1024)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4284, file: !6, line: 1586, baseType: !148, size: 32, offset: 1056)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4284, file: !6, line: 1587, baseType: !3589, size: 64, offset: 1088)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4284, file: !6, line: 1588, baseType: !874, size: 64, offset: 1152)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4284, file: !6, line: 1589, baseType: !136, size: 32, offset: 1216)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4284, file: !6, line: 1590, baseType: !136, size: 32, offset: 1248)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4284, file: !6, line: 1591, baseType: !136, size: 32, offset: 1280)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4284, file: !6, line: 1593, baseType: !136, size: 32, offset: 1312)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4284, file: !6, line: 1594, baseType: !137, size: 64, offset: 1344)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4284, file: !6, line: 1595, baseType: !4325, size: 64, offset: 1408)
!4325 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4326)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !4283}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4284, file: !6, line: 1596, baseType: !4330, offset: 1472)
!4330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4331, elements: !2190)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4332)
!4332 = !{!4333, !4334, !4335, !4336}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4331, file: !6, line: 1352, baseType: !7, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4331, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4331, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4331, file: !6, line: 1355, baseType: !136, size: 32, offset: 96)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3997, file: !3, line: 111, baseType: !136, size: 32, offset: 2368)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "in_dma", scope: !3997, file: !3, line: 112, baseType: !874, size: 64, offset: 2432)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "in_buffer", scope: !3997, file: !3, line: 113, baseType: !3589, size: 64, offset: 2496)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3997, file: !3, line: 116, baseType: !4341, size: 384, offset: 2560)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bit_tester", file: !3, line: 93, size: 384, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "tester", scope: !4341, file: !3, line: 94, baseType: !148, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4341, file: !3, line: 95, baseType: !136, size: 32, offset: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4341, file: !3, line: 96, baseType: !136, size: 32, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "bits_left", scope: !4341, file: !3, line: 97, baseType: !136, size: 32, offset: 96)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4341, file: !3, line: 98, baseType: !4348, size: 256, offset: 128)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 256, elements: !2089)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "stage", scope: !3997, file: !3, line: 117, baseType: !136, size: 32, offset: 2944)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !3997, file: !3, line: 118, baseType: !136, size: 32, offset: 2976)
!4351 = !DILocation(line: 448, column: 22, scope: !3983)
!4352 = !DILocalVariable(name: "input_dev", scope: !3983, file: !3, line: 449, type: !4006)
!4353 = !DILocation(line: 449, column: 20, scope: !3983)
!4354 = !DILocalVariable(name: "i", scope: !3983, file: !3, line: 450, type: !136)
!4355 = !DILocation(line: 450, column: 6, scope: !3983)
!4356 = !DILocalVariable(name: "error", scope: !3983, file: !3, line: 450, type: !136)
!4357 = !DILocation(line: 450, column: 9, scope: !3983)
!4358 = !DILocation(line: 452, column: 37, scope: !3983)
!4359 = !DILocation(line: 452, column: 48, scope: !3983)
!4360 = !DILocation(line: 452, column: 13, scope: !3983)
!4361 = !DILocation(line: 452, column: 11, scope: !3983)
!4362 = !DILocation(line: 453, column: 7, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 453, column: 6)
!4364 = !DILocation(line: 453, column: 6, scope: !3983)
!4365 = !DILocation(line: 454, column: 3, scope: !4363)
!4366 = !DILocation(line: 456, column: 11, scope: !3983)
!4367 = !DILocation(line: 456, column: 9, scope: !3983)
!4368 = !DILocation(line: 457, column: 14, scope: !3983)
!4369 = !DILocation(line: 457, column: 12, scope: !3983)
!4370 = !DILocation(line: 458, column: 7, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 458, column: 6)
!4372 = !DILocation(line: 458, column: 14, scope: !4371)
!4373 = !DILocation(line: 458, column: 18, scope: !4371)
!4374 = !DILocation(line: 458, column: 6, scope: !3983)
!4375 = !DILocation(line: 459, column: 9, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 458, column: 29)
!4377 = !DILocation(line: 460, column: 3, scope: !4376)
!4378 = !DILocation(line: 463, column: 17, scope: !3983)
!4379 = !DILocation(line: 463, column: 2, scope: !3983)
!4380 = !DILocation(line: 463, column: 10, scope: !3983)
!4381 = !DILocation(line: 463, column: 15, scope: !3983)
!4382 = !DILocation(line: 464, column: 18, scope: !3983)
!4383 = !DILocation(line: 464, column: 2, scope: !3983)
!4384 = !DILocation(line: 464, column: 10, scope: !3983)
!4385 = !DILocation(line: 464, column: 16, scope: !3983)
!4386 = !DILocation(line: 465, column: 22, scope: !3983)
!4387 = !DILocation(line: 465, column: 2, scope: !3983)
!4388 = !DILocation(line: 465, column: 10, scope: !3983)
!4389 = !DILocation(line: 465, column: 20, scope: !3983)
!4390 = !DILocation(line: 466, column: 24, scope: !3983)
!4391 = !DILocation(line: 466, column: 2, scope: !3983)
!4392 = !DILocation(line: 466, column: 10, scope: !3983)
!4393 = !DILocation(line: 466, column: 22, scope: !3983)
!4394 = !DILocation(line: 467, column: 2, scope: !3983)
!4395 = !DILocation(line: 467, column: 10, scope: !3983)
!4396 = !DILocation(line: 467, column: 17, scope: !3983)
!4397 = !DILocation(line: 469, column: 41, scope: !3983)
!4398 = !DILocation(line: 469, column: 71, scope: !3983)
!4399 = !DILocation(line: 469, column: 79, scope: !3983)
!4400 = !DILocation(line: 469, column: 22, scope: !3983)
!4401 = !DILocation(line: 469, column: 2, scope: !3983)
!4402 = !DILocation(line: 469, column: 10, scope: !3983)
!4403 = !DILocation(line: 469, column: 20, scope: !3983)
!4404 = !DILocation(line: 470, column: 7, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 470, column: 6)
!4406 = !DILocation(line: 470, column: 15, scope: !4405)
!4407 = !DILocation(line: 470, column: 6, scope: !3983)
!4408 = !DILocation(line: 471, column: 9, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 470, column: 26)
!4410 = !DILocation(line: 472, column: 3, scope: !4409)
!4411 = !DILocation(line: 475, column: 20, scope: !3983)
!4412 = !DILocation(line: 475, column: 2, scope: !3983)
!4413 = !DILocation(line: 475, column: 10, scope: !3983)
!4414 = !DILocation(line: 475, column: 18, scope: !3983)
!4415 = !DILocation(line: 476, column: 7, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 476, column: 6)
!4417 = !DILocation(line: 476, column: 15, scope: !4416)
!4418 = !DILocation(line: 476, column: 6, scope: !3983)
!4419 = !DILocation(line: 477, column: 9, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 476, column: 24)
!4421 = !DILocation(line: 478, column: 3, scope: !4420)
!4422 = !DILocation(line: 481, column: 24, scope: !3983)
!4423 = !DILocation(line: 481, column: 10, scope: !3983)
!4424 = !DILocation(line: 481, column: 8, scope: !3983)
!4425 = !DILocation(line: 482, column: 6, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 482, column: 6)
!4427 = !DILocation(line: 482, column: 6, scope: !3983)
!4428 = !DILocation(line: 483, column: 9, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 482, column: 13)
!4430 = !DILocation(line: 484, column: 3, scope: !4429)
!4431 = !DILocation(line: 487, column: 6, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 487, column: 6)
!4433 = !DILocation(line: 487, column: 12, scope: !4432)
!4434 = !DILocation(line: 487, column: 6, scope: !3983)
!4435 = !DILocation(line: 488, column: 11, scope: !4432)
!4436 = !DILocation(line: 488, column: 19, scope: !4432)
!4437 = !DILocation(line: 488, column: 25, scope: !4432)
!4438 = !DILocation(line: 488, column: 31, scope: !4432)
!4439 = !DILocation(line: 488, column: 3, scope: !4432)
!4440 = !DILocation(line: 490, column: 6, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 490, column: 6)
!4442 = !DILocation(line: 490, column: 12, scope: !4441)
!4443 = !DILocation(line: 490, column: 6, scope: !3983)
!4444 = !DILocation(line: 491, column: 7, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 491, column: 7)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 490, column: 21)
!4447 = !DILocation(line: 491, column: 13, scope: !4445)
!4448 = !DILocation(line: 491, column: 7, scope: !4446)
!4449 = !DILocation(line: 492, column: 12, scope: !4445)
!4450 = !DILocation(line: 492, column: 20, scope: !4445)
!4451 = !DILocation(line: 492, column: 4, scope: !4445)
!4452 = !DILocation(line: 493, column: 11, scope: !4446)
!4453 = !DILocation(line: 493, column: 19, scope: !4446)
!4454 = !DILocation(line: 493, column: 25, scope: !4446)
!4455 = !DILocation(line: 493, column: 31, scope: !4446)
!4456 = !DILocation(line: 493, column: 3, scope: !4446)
!4457 = !DILocation(line: 494, column: 2, scope: !4446)
!4458 = !DILocation(line: 496, column: 14, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 496, column: 6)
!4460 = !DILocation(line: 496, column: 22, scope: !4459)
!4461 = !DILocation(line: 496, column: 7, scope: !4459)
!4462 = !DILocation(line: 496, column: 6, scope: !3983)
!4463 = !DILocation(line: 497, column: 12, scope: !4459)
!4464 = !DILocation(line: 497, column: 20, scope: !4459)
!4465 = !DILocation(line: 499, column: 5, scope: !4459)
!4466 = !DILocation(line: 500, column: 5, scope: !4459)
!4467 = !DILocation(line: 497, column: 3, scope: !4459)
!4468 = !DILocation(line: 502, column: 16, scope: !3983)
!4469 = !DILocation(line: 502, column: 22, scope: !3983)
!4470 = !DILocation(line: 502, column: 30, scope: !3983)
!4471 = !DILocation(line: 502, column: 2, scope: !3983)
!4472 = !DILocation(line: 503, column: 10, scope: !3983)
!4473 = !DILocation(line: 503, column: 18, scope: !3983)
!4474 = !DILocation(line: 503, column: 2, scope: !3983)
!4475 = !DILocation(line: 504, column: 9, scope: !3983)
!4476 = !DILocation(line: 504, column: 17, scope: !3983)
!4477 = !DILocation(line: 504, column: 2, scope: !3983)
!4478 = !DILocation(line: 506, column: 20, scope: !3983)
!4479 = !DILocation(line: 506, column: 28, scope: !3983)
!4480 = !DILocation(line: 506, column: 2, scope: !3983)
!4481 = !DILocation(line: 506, column: 13, scope: !3983)
!4482 = !DILocation(line: 506, column: 18, scope: !3983)
!4483 = !DILocation(line: 507, column: 20, scope: !3983)
!4484 = !DILocation(line: 507, column: 28, scope: !3983)
!4485 = !DILocation(line: 507, column: 2, scope: !3983)
!4486 = !DILocation(line: 507, column: 13, scope: !3983)
!4487 = !DILocation(line: 507, column: 18, scope: !3983)
!4488 = !DILocation(line: 508, column: 18, scope: !3983)
!4489 = !DILocation(line: 508, column: 25, scope: !3983)
!4490 = !DILocation(line: 508, column: 36, scope: !3983)
!4491 = !DILocation(line: 508, column: 2, scope: !3983)
!4492 = !DILocation(line: 509, column: 27, scope: !3983)
!4493 = !DILocation(line: 509, column: 38, scope: !3983)
!4494 = !DILocation(line: 509, column: 2, scope: !3983)
!4495 = !DILocation(line: 509, column: 13, scope: !3983)
!4496 = !DILocation(line: 509, column: 17, scope: !3983)
!4497 = !DILocation(line: 509, column: 24, scope: !3983)
!4498 = !DILocation(line: 510, column: 23, scope: !3983)
!4499 = !DILocation(line: 510, column: 31, scope: !3983)
!4500 = !DILocation(line: 510, column: 2, scope: !3983)
!4501 = !DILocation(line: 510, column: 13, scope: !3983)
!4502 = !DILocation(line: 510, column: 21, scope: !3983)
!4503 = !DILocation(line: 511, column: 2, scope: !3983)
!4504 = !DILocation(line: 511, column: 13, scope: !3983)
!4505 = !DILocation(line: 511, column: 25, scope: !3983)
!4506 = !DILocation(line: 512, column: 2, scope: !3983)
!4507 = !DILocation(line: 512, column: 13, scope: !3983)
!4508 = !DILocation(line: 512, column: 24, scope: !3983)
!4509 = !DILocation(line: 514, column: 23, scope: !3983)
!4510 = !DILocation(line: 514, column: 2, scope: !3983)
!4511 = !DILocation(line: 515, column: 20, scope: !3983)
!4512 = !DILocation(line: 515, column: 31, scope: !3983)
!4513 = !DILocation(line: 515, column: 2, scope: !3983)
!4514 = !DILocation(line: 516, column: 9, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 516, column: 2)
!4516 = !DILocation(line: 516, column: 7, scope: !4515)
!4517 = !DILocation(line: 516, column: 14, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 516, column: 2)
!4519 = !DILocation(line: 516, column: 16, scope: !4518)
!4520 = !DILocation(line: 516, column: 2, scope: !4515)
!4521 = !DILocation(line: 517, column: 31, scope: !4518)
!4522 = !DILocation(line: 517, column: 13, scope: !4518)
!4523 = !DILocation(line: 517, column: 35, scope: !4518)
!4524 = !DILocation(line: 517, column: 46, scope: !4518)
!4525 = !DILocation(line: 517, column: 3, scope: !4518)
!4526 = !DILocation(line: 516, column: 50, scope: !4518)
!4527 = !DILocation(line: 516, column: 2, scope: !4518)
!4528 = distinct !{!4528, !4520, !4529}
!4529 = !DILocation(line: 517, column: 52, scope: !4515)
!4530 = !DILocation(line: 518, column: 28, scope: !3983)
!4531 = !DILocation(line: 518, column: 39, scope: !3983)
!4532 = !DILocation(line: 518, column: 2, scope: !3983)
!4533 = !DILocation(line: 520, column: 20, scope: !3983)
!4534 = !DILocation(line: 520, column: 31, scope: !3983)
!4535 = !DILocation(line: 520, column: 2, scope: !3983)
!4536 = !DILocation(line: 522, column: 2, scope: !3983)
!4537 = !DILocation(line: 522, column: 13, scope: !3983)
!4538 = !DILocation(line: 522, column: 18, scope: !3983)
!4539 = !DILocation(line: 523, column: 2, scope: !3983)
!4540 = !DILocation(line: 523, column: 13, scope: !3983)
!4541 = !DILocation(line: 523, column: 19, scope: !3983)
!4542 = !DILocation(line: 529, column: 19, scope: !3983)
!4543 = !DILocation(line: 529, column: 27, scope: !3983)
!4544 = !DILocation(line: 530, column: 5, scope: !3983)
!4545 = !DILocation(line: 530, column: 13, scope: !3983)
!4546 = !DILocation(line: 531, column: 5, scope: !3983)
!4547 = !DILocation(line: 532, column: 5, scope: !3983)
!4548 = !DILocation(line: 532, column: 13, scope: !3983)
!4549 = !DILocation(line: 532, column: 53, scope: !3983)
!4550 = !DILocation(line: 533, column: 5, scope: !3983)
!4551 = !DILocation(line: 533, column: 15, scope: !3983)
!4552 = !DILocation(line: 529, column: 2, scope: !3983)
!4553 = !DILocation(line: 534, column: 34, scope: !3983)
!4554 = !DILocation(line: 534, column: 42, scope: !3983)
!4555 = !DILocation(line: 534, column: 2, scope: !3983)
!4556 = !DILocation(line: 534, column: 10, scope: !3983)
!4557 = !DILocation(line: 534, column: 19, scope: !3983)
!4558 = !DILocation(line: 534, column: 32, scope: !3983)
!4559 = !DILocation(line: 535, column: 2, scope: !3983)
!4560 = !DILocation(line: 535, column: 10, scope: !3983)
!4561 = !DILocation(line: 535, column: 19, scope: !3983)
!4562 = !DILocation(line: 535, column: 34, scope: !3983)
!4563 = !DILocation(line: 538, column: 32, scope: !3983)
!4564 = !DILocation(line: 538, column: 40, scope: !3983)
!4565 = !DILocation(line: 538, column: 10, scope: !3983)
!4566 = !DILocation(line: 538, column: 8, scope: !3983)
!4567 = !DILocation(line: 539, column: 6, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 539, column: 6)
!4569 = !DILocation(line: 539, column: 6, scope: !3983)
!4570 = !DILocation(line: 540, column: 3, scope: !4568)
!4571 = !DILocation(line: 543, column: 19, scope: !3983)
!4572 = !DILocation(line: 543, column: 30, scope: !3983)
!4573 = !DILocation(line: 543, column: 2, scope: !3983)
!4574 = !DILocation(line: 545, column: 2, scope: !3983)
!4575 = !DILabel(scope: !3983, name: "fail3", file: !3, line: 547)
!4576 = !DILocation(line: 547, column: 2, scope: !3983)
!4577 = !DILocation(line: 547, column: 22, scope: !3983)
!4578 = !DILocation(line: 547, column: 30, scope: !3983)
!4579 = !DILocation(line: 547, column: 9, scope: !3983)
!4580 = !DILabel(scope: !3983, name: "fail2", file: !3, line: 548)
!4581 = !DILocation(line: 548, column: 2, scope: !3983)
!4582 = !DILocation(line: 548, column: 27, scope: !3983)
!4583 = !DILocation(line: 548, column: 44, scope: !3983)
!4584 = !DILocation(line: 548, column: 52, scope: !3983)
!4585 = !DILocation(line: 548, column: 63, scope: !3983)
!4586 = !DILocation(line: 548, column: 71, scope: !3983)
!4587 = !DILocation(line: 548, column: 9, scope: !3983)
!4588 = !DILabel(scope: !3983, name: "fail1", file: !3, line: 549)
!4589 = !DILocation(line: 549, column: 2, scope: !3983)
!4590 = !DILocation(line: 549, column: 15, scope: !3983)
!4591 = !DILocation(line: 549, column: 9, scope: !3983)
!4592 = !DILocation(line: 550, column: 20, scope: !3983)
!4593 = !DILocation(line: 550, column: 2, scope: !3983)
!4594 = !DILocation(line: 552, column: 9, scope: !3983)
!4595 = !DILocation(line: 552, column: 2, scope: !3983)
!4596 = !DILocation(line: 553, column: 1, scope: !3983)
!4597 = distinct !DISubprogram(name: "keyspan_disconnect", scope: !3, file: !3, line: 558, type: !3929, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4598 = !DILocalVariable(name: "interface", arg: 1, scope: !4597, file: !3, line: 558, type: !3703)
!4599 = !DILocation(line: 558, column: 54, scope: !4597)
!4600 = !DILocalVariable(name: "remote", scope: !4597, file: !3, line: 560, type: !3996)
!4601 = !DILocation(line: 560, column: 22, scope: !4597)
!4602 = !DILocation(line: 562, column: 28, scope: !4597)
!4603 = !DILocation(line: 562, column: 11, scope: !4597)
!4604 = !DILocation(line: 562, column: 9, scope: !4597)
!4605 = !DILocation(line: 563, column: 19, scope: !4597)
!4606 = !DILocation(line: 563, column: 2, scope: !4597)
!4607 = !DILocation(line: 565, column: 6, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 565, column: 6)
!4609 = !DILocation(line: 565, column: 6, scope: !4597)
!4610 = !DILocation(line: 566, column: 27, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 565, column: 14)
!4612 = !DILocation(line: 566, column: 35, scope: !4611)
!4613 = !DILocation(line: 566, column: 3, scope: !4611)
!4614 = !DILocation(line: 567, column: 16, scope: !4611)
!4615 = !DILocation(line: 567, column: 24, scope: !4611)
!4616 = !DILocation(line: 567, column: 3, scope: !4611)
!4617 = !DILocation(line: 568, column: 16, scope: !4611)
!4618 = !DILocation(line: 568, column: 24, scope: !4611)
!4619 = !DILocation(line: 568, column: 3, scope: !4611)
!4620 = !DILocation(line: 569, column: 21, scope: !4611)
!4621 = !DILocation(line: 569, column: 29, scope: !4611)
!4622 = !DILocation(line: 569, column: 46, scope: !4611)
!4623 = !DILocation(line: 569, column: 54, scope: !4611)
!4624 = !DILocation(line: 569, column: 65, scope: !4611)
!4625 = !DILocation(line: 569, column: 73, scope: !4611)
!4626 = !DILocation(line: 569, column: 3, scope: !4611)
!4627 = !DILocation(line: 570, column: 9, scope: !4611)
!4628 = !DILocation(line: 570, column: 3, scope: !4611)
!4629 = !DILocation(line: 571, column: 2, scope: !4611)
!4630 = !DILocation(line: 572, column: 1, scope: !4597)
!4631 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4632, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!138, !3703}
!4634 = !DILocalVariable(name: "intf", arg: 1, scope: !4631, file: !6, line: 715, type: !3703)
!4635 = !DILocation(line: 715, column: 76, scope: !4631)
!4636 = !DILocalVariable(name: "__mptr", scope: !4637, file: !6, line: 717, type: !137)
!4637 = distinct !DILexicalBlock(scope: !4631, file: !6, line: 717, column: 9)
!4638 = !DILocation(line: 717, column: 9, scope: !4637)
!4639 = !DILocation(line: 717, column: 9, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4637, file: !6, line: 717, column: 9)
!4641 = !DILocation(line: 717, column: 2, scope: !4631)
!4642 = distinct !DISubprogram(name: "keyspan_get_in_endpoint", scope: !3, file: !3, line: 423, type: !4643, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!3993, !3707}
!4645 = !DILocalVariable(name: "iface", arg: 1, scope: !4642, file: !3, line: 423, type: !3707)
!4646 = !DILocation(line: 423, column: 91, scope: !4642)
!4647 = !DILocalVariable(name: "endpoint", scope: !4642, file: !3, line: 426, type: !3993)
!4648 = !DILocation(line: 426, column: 34, scope: !4642)
!4649 = !DILocalVariable(name: "i", scope: !4642, file: !3, line: 427, type: !136)
!4650 = !DILocation(line: 427, column: 6, scope: !4642)
!4651 = !DILocation(line: 429, column: 9, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 429, column: 2)
!4653 = !DILocation(line: 429, column: 7, scope: !4652)
!4654 = !DILocation(line: 429, column: 14, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 429, column: 2)
!4656 = !DILocation(line: 429, column: 18, scope: !4655)
!4657 = !DILocation(line: 429, column: 25, scope: !4655)
!4658 = !DILocation(line: 429, column: 30, scope: !4655)
!4659 = !DILocation(line: 429, column: 16, scope: !4655)
!4660 = !DILocation(line: 429, column: 2, scope: !4652)
!4661 = !DILocation(line: 430, column: 15, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 429, column: 50)
!4663 = !DILocation(line: 430, column: 22, scope: !4662)
!4664 = !DILocation(line: 430, column: 31, scope: !4662)
!4665 = !DILocation(line: 430, column: 34, scope: !4662)
!4666 = !DILocation(line: 430, column: 12, scope: !4662)
!4667 = !DILocation(line: 432, column: 30, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 432, column: 7)
!4669 = !DILocation(line: 432, column: 7, scope: !4668)
!4670 = !DILocation(line: 432, column: 7, scope: !4662)
!4671 = !DILocation(line: 434, column: 11, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 432, column: 41)
!4673 = !DILocation(line: 434, column: 4, scope: !4672)
!4674 = !DILocation(line: 436, column: 2, scope: !4662)
!4675 = !DILocation(line: 429, column: 45, scope: !4655)
!4676 = !DILocation(line: 429, column: 2, scope: !4655)
!4677 = distinct !{!4677, !4660, !4678}
!4678 = !DILocation(line: 436, column: 2, scope: !4652)
!4679 = !DILocation(line: 438, column: 2, scope: !4642)
!4680 = !DILocation(line: 439, column: 1, scope: !4642)
!4681 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !4682, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!137, !280, !129}
!4684 = !DILocalVariable(name: "s", arg: 1, scope: !4685, file: !114, line: 445, type: !889)
!4685 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !4686, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!137, !889, !129, !280}
!4688 = !DILocation(line: 445, column: 72, scope: !4685, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 552, column: 10, scope: !4690, inlinedAt: !4693)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !114, line: 540, column: 34)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !114, line: 540, column: 6)
!4692 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !4682, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4693 = distinct !DILocation(line: 664, column: 9, scope: !4681)
!4694 = !DILocalVariable(name: "flags", arg: 2, scope: !4685, file: !114, line: 446, type: !129)
!4695 = !DILocation(line: 446, column: 9, scope: !4685, inlinedAt: !4689)
!4696 = !DILocalVariable(name: "size", arg: 3, scope: !4685, file: !114, line: 446, type: !280)
!4697 = !DILocation(line: 446, column: 23, scope: !4685, inlinedAt: !4689)
!4698 = !DILocalVariable(name: "ret", scope: !4685, file: !114, line: 448, type: !137)
!4699 = !DILocation(line: 448, column: 8, scope: !4685, inlinedAt: !4689)
!4700 = !DILocalVariable(name: "flags", arg: 1, scope: !4701, file: !114, line: 318, type: !129)
!4701 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !4702, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!113, !129}
!4704 = !DILocation(line: 318, column: 67, scope: !4701, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 553, column: 20, scope: !4690, inlinedAt: !4693)
!4706 = !DILocalVariable(name: "size", arg: 1, scope: !4707, file: !114, line: 346, type: !280)
!4707 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !4708, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!7, !280}
!4710 = !DILocation(line: 346, column: 58, scope: !4707, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 547, column: 11, scope: !4690, inlinedAt: !4693)
!4712 = !DILocalVariable(name: "size", arg: 1, scope: !4713, file: !114, line: 472, type: !280)
!4713 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !4714, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!137, !280, !129, !7}
!4716 = !DILocation(line: 472, column: 28, scope: !4713, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 481, column: 9, scope: !4718, inlinedAt: !4719)
!4718 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !4682, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4719 = distinct !DILocation(line: 545, column: 11, scope: !4720, inlinedAt: !4693)
!4720 = distinct !DILexicalBlock(scope: !4690, file: !114, line: 544, column: 7)
!4721 = !DILocalVariable(name: "flags", arg: 2, scope: !4713, file: !114, line: 472, type: !129)
!4722 = !DILocation(line: 472, column: 40, scope: !4713, inlinedAt: !4717)
!4723 = !DILocalVariable(name: "order", arg: 3, scope: !4713, file: !114, line: 472, type: !7)
!4724 = !DILocation(line: 472, column: 60, scope: !4713, inlinedAt: !4717)
!4725 = !DILocalVariable(name: "size", arg: 1, scope: !4718, file: !114, line: 478, type: !280)
!4726 = !DILocation(line: 478, column: 51, scope: !4718, inlinedAt: !4719)
!4727 = !DILocalVariable(name: "flags", arg: 2, scope: !4718, file: !114, line: 478, type: !129)
!4728 = !DILocation(line: 478, column: 63, scope: !4718, inlinedAt: !4719)
!4729 = !DILocalVariable(name: "order", scope: !4718, file: !114, line: 480, type: !7)
!4730 = !DILocation(line: 480, column: 15, scope: !4718, inlinedAt: !4719)
!4731 = !DILocalVariable(name: "size", arg: 1, scope: !4692, file: !114, line: 538, type: !280)
!4732 = !DILocation(line: 538, column: 45, scope: !4692, inlinedAt: !4693)
!4733 = !DILocalVariable(name: "flags", arg: 2, scope: !4692, file: !114, line: 538, type: !129)
!4734 = !DILocation(line: 538, column: 57, scope: !4692, inlinedAt: !4693)
!4735 = !DILocalVariable(name: "index", scope: !4690, file: !114, line: 542, type: !7)
!4736 = !DILocation(line: 542, column: 16, scope: !4690, inlinedAt: !4693)
!4737 = !DILocalVariable(name: "size", arg: 1, scope: !4681, file: !114, line: 662, type: !280)
!4738 = !DILocation(line: 662, column: 36, scope: !4681)
!4739 = !DILocalVariable(name: "flags", arg: 2, scope: !4681, file: !114, line: 662, type: !129)
!4740 = !DILocation(line: 662, column: 48, scope: !4681)
!4741 = !DILocation(line: 664, column: 17, scope: !4681)
!4742 = !DILocation(line: 664, column: 23, scope: !4681)
!4743 = !DILocation(line: 664, column: 29, scope: !4681)
!4744 = !DILocation(line: 540, column: 27, scope: !4691, inlinedAt: !4693)
!4745 = !DILocation(line: 540, column: 6, scope: !4691, inlinedAt: !4693)
!4746 = !DILocation(line: 540, column: 6, scope: !4692, inlinedAt: !4693)
!4747 = !DILocation(line: 544, column: 7, scope: !4720, inlinedAt: !4693)
!4748 = !DILocation(line: 544, column: 12, scope: !4720, inlinedAt: !4693)
!4749 = !DILocation(line: 544, column: 7, scope: !4690, inlinedAt: !4693)
!4750 = !DILocation(line: 545, column: 25, scope: !4720, inlinedAt: !4693)
!4751 = !DILocation(line: 545, column: 31, scope: !4720, inlinedAt: !4693)
!4752 = !DILocation(line: 480, column: 33, scope: !4718, inlinedAt: !4719)
!4753 = !DILocation(line: 480, column: 23, scope: !4718, inlinedAt: !4719)
!4754 = !DILocation(line: 481, column: 29, scope: !4718, inlinedAt: !4719)
!4755 = !DILocation(line: 481, column: 35, scope: !4718, inlinedAt: !4719)
!4756 = !DILocation(line: 481, column: 42, scope: !4718, inlinedAt: !4719)
!4757 = !DILocation(line: 474, column: 23, scope: !4713, inlinedAt: !4717)
!4758 = !DILocation(line: 474, column: 29, scope: !4713, inlinedAt: !4717)
!4759 = !DILocation(line: 474, column: 36, scope: !4713, inlinedAt: !4717)
!4760 = !DILocation(line: 474, column: 9, scope: !4713, inlinedAt: !4717)
!4761 = !DILocation(line: 545, column: 4, scope: !4720, inlinedAt: !4693)
!4762 = !DILocation(line: 547, column: 25, scope: !4690, inlinedAt: !4693)
!4763 = !DILocation(line: 348, column: 7, scope: !4764, inlinedAt: !4711)
!4764 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 348, column: 6)
!4765 = !DILocation(line: 348, column: 6, scope: !4707, inlinedAt: !4711)
!4766 = !DILocation(line: 349, column: 3, scope: !4764, inlinedAt: !4711)
!4767 = !DILocation(line: 351, column: 6, scope: !4768, inlinedAt: !4711)
!4768 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 351, column: 6)
!4769 = !DILocation(line: 351, column: 11, scope: !4768, inlinedAt: !4711)
!4770 = !DILocation(line: 351, column: 6, scope: !4707, inlinedAt: !4711)
!4771 = !DILocation(line: 352, column: 3, scope: !4768, inlinedAt: !4711)
!4772 = !DILocation(line: 354, column: 32, scope: !4773, inlinedAt: !4711)
!4773 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 354, column: 6)
!4774 = !DILocation(line: 354, column: 37, scope: !4773, inlinedAt: !4711)
!4775 = !DILocation(line: 354, column: 42, scope: !4773, inlinedAt: !4711)
!4776 = !DILocation(line: 354, column: 45, scope: !4773, inlinedAt: !4711)
!4777 = !DILocation(line: 354, column: 50, scope: !4773, inlinedAt: !4711)
!4778 = !DILocation(line: 354, column: 6, scope: !4707, inlinedAt: !4711)
!4779 = !DILocation(line: 355, column: 3, scope: !4773, inlinedAt: !4711)
!4780 = !DILocation(line: 356, column: 32, scope: !4781, inlinedAt: !4711)
!4781 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 356, column: 6)
!4782 = !DILocation(line: 356, column: 37, scope: !4781, inlinedAt: !4711)
!4783 = !DILocation(line: 356, column: 43, scope: !4781, inlinedAt: !4711)
!4784 = !DILocation(line: 356, column: 46, scope: !4781, inlinedAt: !4711)
!4785 = !DILocation(line: 356, column: 51, scope: !4781, inlinedAt: !4711)
!4786 = !DILocation(line: 356, column: 6, scope: !4707, inlinedAt: !4711)
!4787 = !DILocation(line: 357, column: 3, scope: !4781, inlinedAt: !4711)
!4788 = !DILocation(line: 358, column: 6, scope: !4789, inlinedAt: !4711)
!4789 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 358, column: 6)
!4790 = !DILocation(line: 358, column: 11, scope: !4789, inlinedAt: !4711)
!4791 = !DILocation(line: 358, column: 6, scope: !4707, inlinedAt: !4711)
!4792 = !DILocation(line: 358, column: 26, scope: !4789, inlinedAt: !4711)
!4793 = !DILocation(line: 359, column: 6, scope: !4794, inlinedAt: !4711)
!4794 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 359, column: 6)
!4795 = !DILocation(line: 359, column: 11, scope: !4794, inlinedAt: !4711)
!4796 = !DILocation(line: 359, column: 6, scope: !4707, inlinedAt: !4711)
!4797 = !DILocation(line: 359, column: 26, scope: !4794, inlinedAt: !4711)
!4798 = !DILocation(line: 360, column: 6, scope: !4799, inlinedAt: !4711)
!4799 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 360, column: 6)
!4800 = !DILocation(line: 360, column: 11, scope: !4799, inlinedAt: !4711)
!4801 = !DILocation(line: 360, column: 6, scope: !4707, inlinedAt: !4711)
!4802 = !DILocation(line: 360, column: 26, scope: !4799, inlinedAt: !4711)
!4803 = !DILocation(line: 361, column: 6, scope: !4804, inlinedAt: !4711)
!4804 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 361, column: 6)
!4805 = !DILocation(line: 361, column: 11, scope: !4804, inlinedAt: !4711)
!4806 = !DILocation(line: 361, column: 6, scope: !4707, inlinedAt: !4711)
!4807 = !DILocation(line: 361, column: 26, scope: !4804, inlinedAt: !4711)
!4808 = !DILocation(line: 362, column: 6, scope: !4809, inlinedAt: !4711)
!4809 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 362, column: 6)
!4810 = !DILocation(line: 362, column: 11, scope: !4809, inlinedAt: !4711)
!4811 = !DILocation(line: 362, column: 6, scope: !4707, inlinedAt: !4711)
!4812 = !DILocation(line: 362, column: 26, scope: !4809, inlinedAt: !4711)
!4813 = !DILocation(line: 363, column: 6, scope: !4814, inlinedAt: !4711)
!4814 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 363, column: 6)
!4815 = !DILocation(line: 363, column: 11, scope: !4814, inlinedAt: !4711)
!4816 = !DILocation(line: 363, column: 6, scope: !4707, inlinedAt: !4711)
!4817 = !DILocation(line: 363, column: 26, scope: !4814, inlinedAt: !4711)
!4818 = !DILocation(line: 364, column: 6, scope: !4819, inlinedAt: !4711)
!4819 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 364, column: 6)
!4820 = !DILocation(line: 364, column: 11, scope: !4819, inlinedAt: !4711)
!4821 = !DILocation(line: 364, column: 6, scope: !4707, inlinedAt: !4711)
!4822 = !DILocation(line: 364, column: 26, scope: !4819, inlinedAt: !4711)
!4823 = !DILocation(line: 365, column: 6, scope: !4824, inlinedAt: !4711)
!4824 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 365, column: 6)
!4825 = !DILocation(line: 365, column: 11, scope: !4824, inlinedAt: !4711)
!4826 = !DILocation(line: 365, column: 6, scope: !4707, inlinedAt: !4711)
!4827 = !DILocation(line: 365, column: 26, scope: !4824, inlinedAt: !4711)
!4828 = !DILocation(line: 366, column: 6, scope: !4829, inlinedAt: !4711)
!4829 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 366, column: 6)
!4830 = !DILocation(line: 366, column: 11, scope: !4829, inlinedAt: !4711)
!4831 = !DILocation(line: 366, column: 6, scope: !4707, inlinedAt: !4711)
!4832 = !DILocation(line: 366, column: 26, scope: !4829, inlinedAt: !4711)
!4833 = !DILocation(line: 367, column: 6, scope: !4834, inlinedAt: !4711)
!4834 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 367, column: 6)
!4835 = !DILocation(line: 367, column: 11, scope: !4834, inlinedAt: !4711)
!4836 = !DILocation(line: 367, column: 6, scope: !4707, inlinedAt: !4711)
!4837 = !DILocation(line: 367, column: 26, scope: !4834, inlinedAt: !4711)
!4838 = !DILocation(line: 368, column: 6, scope: !4839, inlinedAt: !4711)
!4839 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 368, column: 6)
!4840 = !DILocation(line: 368, column: 11, scope: !4839, inlinedAt: !4711)
!4841 = !DILocation(line: 368, column: 6, scope: !4707, inlinedAt: !4711)
!4842 = !DILocation(line: 368, column: 26, scope: !4839, inlinedAt: !4711)
!4843 = !DILocation(line: 369, column: 6, scope: !4844, inlinedAt: !4711)
!4844 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 369, column: 6)
!4845 = !DILocation(line: 369, column: 11, scope: !4844, inlinedAt: !4711)
!4846 = !DILocation(line: 369, column: 6, scope: !4707, inlinedAt: !4711)
!4847 = !DILocation(line: 369, column: 26, scope: !4844, inlinedAt: !4711)
!4848 = !DILocation(line: 370, column: 6, scope: !4849, inlinedAt: !4711)
!4849 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 370, column: 6)
!4850 = !DILocation(line: 370, column: 11, scope: !4849, inlinedAt: !4711)
!4851 = !DILocation(line: 370, column: 6, scope: !4707, inlinedAt: !4711)
!4852 = !DILocation(line: 370, column: 26, scope: !4849, inlinedAt: !4711)
!4853 = !DILocation(line: 371, column: 6, scope: !4854, inlinedAt: !4711)
!4854 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 371, column: 6)
!4855 = !DILocation(line: 371, column: 11, scope: !4854, inlinedAt: !4711)
!4856 = !DILocation(line: 371, column: 6, scope: !4707, inlinedAt: !4711)
!4857 = !DILocation(line: 371, column: 26, scope: !4854, inlinedAt: !4711)
!4858 = !DILocation(line: 372, column: 6, scope: !4859, inlinedAt: !4711)
!4859 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 372, column: 6)
!4860 = !DILocation(line: 372, column: 11, scope: !4859, inlinedAt: !4711)
!4861 = !DILocation(line: 372, column: 6, scope: !4707, inlinedAt: !4711)
!4862 = !DILocation(line: 372, column: 26, scope: !4859, inlinedAt: !4711)
!4863 = !DILocation(line: 373, column: 6, scope: !4864, inlinedAt: !4711)
!4864 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 373, column: 6)
!4865 = !DILocation(line: 373, column: 11, scope: !4864, inlinedAt: !4711)
!4866 = !DILocation(line: 373, column: 6, scope: !4707, inlinedAt: !4711)
!4867 = !DILocation(line: 373, column: 26, scope: !4864, inlinedAt: !4711)
!4868 = !DILocation(line: 374, column: 6, scope: !4869, inlinedAt: !4711)
!4869 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 374, column: 6)
!4870 = !DILocation(line: 374, column: 11, scope: !4869, inlinedAt: !4711)
!4871 = !DILocation(line: 374, column: 6, scope: !4707, inlinedAt: !4711)
!4872 = !DILocation(line: 374, column: 26, scope: !4869, inlinedAt: !4711)
!4873 = !DILocation(line: 375, column: 6, scope: !4874, inlinedAt: !4711)
!4874 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 375, column: 6)
!4875 = !DILocation(line: 375, column: 11, scope: !4874, inlinedAt: !4711)
!4876 = !DILocation(line: 375, column: 6, scope: !4707, inlinedAt: !4711)
!4877 = !DILocation(line: 375, column: 27, scope: !4874, inlinedAt: !4711)
!4878 = !DILocation(line: 376, column: 6, scope: !4879, inlinedAt: !4711)
!4879 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 376, column: 6)
!4880 = !DILocation(line: 376, column: 11, scope: !4879, inlinedAt: !4711)
!4881 = !DILocation(line: 376, column: 6, scope: !4707, inlinedAt: !4711)
!4882 = !DILocation(line: 376, column: 32, scope: !4879, inlinedAt: !4711)
!4883 = !DILocation(line: 377, column: 6, scope: !4884, inlinedAt: !4711)
!4884 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 377, column: 6)
!4885 = !DILocation(line: 377, column: 11, scope: !4884, inlinedAt: !4711)
!4886 = !DILocation(line: 377, column: 6, scope: !4707, inlinedAt: !4711)
!4887 = !DILocation(line: 377, column: 32, scope: !4884, inlinedAt: !4711)
!4888 = !DILocation(line: 378, column: 6, scope: !4889, inlinedAt: !4711)
!4889 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 378, column: 6)
!4890 = !DILocation(line: 378, column: 11, scope: !4889, inlinedAt: !4711)
!4891 = !DILocation(line: 378, column: 6, scope: !4707, inlinedAt: !4711)
!4892 = !DILocation(line: 378, column: 32, scope: !4889, inlinedAt: !4711)
!4893 = !DILocation(line: 379, column: 6, scope: !4894, inlinedAt: !4711)
!4894 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 379, column: 6)
!4895 = !DILocation(line: 379, column: 11, scope: !4894, inlinedAt: !4711)
!4896 = !DILocation(line: 379, column: 6, scope: !4707, inlinedAt: !4711)
!4897 = !DILocation(line: 379, column: 33, scope: !4894, inlinedAt: !4711)
!4898 = !DILocation(line: 380, column: 6, scope: !4899, inlinedAt: !4711)
!4899 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 380, column: 6)
!4900 = !DILocation(line: 380, column: 11, scope: !4899, inlinedAt: !4711)
!4901 = !DILocation(line: 380, column: 6, scope: !4707, inlinedAt: !4711)
!4902 = !DILocation(line: 380, column: 33, scope: !4899, inlinedAt: !4711)
!4903 = !DILocation(line: 381, column: 6, scope: !4904, inlinedAt: !4711)
!4904 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 381, column: 6)
!4905 = !DILocation(line: 381, column: 11, scope: !4904, inlinedAt: !4711)
!4906 = !DILocation(line: 381, column: 6, scope: !4707, inlinedAt: !4711)
!4907 = !DILocation(line: 381, column: 33, scope: !4904, inlinedAt: !4711)
!4908 = !DILocation(line: 382, column: 2, scope: !4909, inlinedAt: !4711)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !114, line: 382, column: 2)
!4910 = distinct !DILexicalBlock(scope: !4707, file: !114, line: 382, column: 2)
!4911 = !{i32 -2144639889, i32 -2144639860, i32 -2144639814, i32 -2144639756, i32 -2144639702, i32 -2144639648, i32 -2144639593, i32 -2144639562}
!4912 = !DILocation(line: 382, column: 2, scope: !4913, inlinedAt: !4711)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !114, line: 382, column: 2)
!4914 = distinct !DILexicalBlock(scope: !4910, file: !114, line: 382, column: 2)
!4915 = !{i32 -2144639119, i32 -2144639112, i32 -2144639058, i32 -2144639027, i32 -2144638997}
!4916 = !DILocation(line: 382, column: 2, scope: !4914, inlinedAt: !4711)
!4917 = !DILocation(line: 386, column: 1, scope: !4707, inlinedAt: !4711)
!4918 = !DILocation(line: 547, column: 9, scope: !4690, inlinedAt: !4693)
!4919 = !DILocation(line: 549, column: 8, scope: !4920, inlinedAt: !4693)
!4920 = distinct !DILexicalBlock(scope: !4690, file: !114, line: 549, column: 7)
!4921 = !DILocation(line: 549, column: 7, scope: !4690, inlinedAt: !4693)
!4922 = !DILocation(line: 550, column: 4, scope: !4920, inlinedAt: !4693)
!4923 = !DILocation(line: 553, column: 33, scope: !4690, inlinedAt: !4693)
!4924 = !DILocation(line: 325, column: 6, scope: !4925, inlinedAt: !4705)
!4925 = distinct !DILexicalBlock(scope: !4701, file: !114, line: 325, column: 6)
!4926 = !DILocation(line: 325, column: 6, scope: !4701, inlinedAt: !4705)
!4927 = !DILocation(line: 326, column: 3, scope: !4925, inlinedAt: !4705)
!4928 = !DILocation(line: 332, column: 9, scope: !4701, inlinedAt: !4705)
!4929 = !DILocation(line: 332, column: 15, scope: !4701, inlinedAt: !4705)
!4930 = !DILocation(line: 332, column: 2, scope: !4701, inlinedAt: !4705)
!4931 = !DILocation(line: 336, column: 1, scope: !4701, inlinedAt: !4705)
!4932 = !DILocation(line: 553, column: 5, scope: !4690, inlinedAt: !4693)
!4933 = !DILocation(line: 553, column: 41, scope: !4690, inlinedAt: !4693)
!4934 = !DILocation(line: 554, column: 5, scope: !4690, inlinedAt: !4693)
!4935 = !DILocation(line: 554, column: 12, scope: !4690, inlinedAt: !4693)
!4936 = !DILocation(line: 448, column: 31, scope: !4685, inlinedAt: !4689)
!4937 = !DILocation(line: 448, column: 34, scope: !4685, inlinedAt: !4689)
!4938 = !DILocation(line: 448, column: 14, scope: !4685, inlinedAt: !4689)
!4939 = !DILocation(line: 450, column: 22, scope: !4685, inlinedAt: !4689)
!4940 = !DILocation(line: 450, column: 25, scope: !4685, inlinedAt: !4689)
!4941 = !DILocation(line: 450, column: 30, scope: !4685, inlinedAt: !4689)
!4942 = !DILocation(line: 450, column: 36, scope: !4685, inlinedAt: !4689)
!4943 = !DILocation(line: 450, column: 8, scope: !4685, inlinedAt: !4689)
!4944 = !DILocation(line: 450, column: 6, scope: !4685, inlinedAt: !4689)
!4945 = !DILocation(line: 451, column: 9, scope: !4685, inlinedAt: !4689)
!4946 = !DILocation(line: 552, column: 3, scope: !4690, inlinedAt: !4693)
!4947 = !DILocation(line: 557, column: 19, scope: !4692, inlinedAt: !4693)
!4948 = !DILocation(line: 557, column: 25, scope: !4692, inlinedAt: !4693)
!4949 = !DILocation(line: 557, column: 9, scope: !4692, inlinedAt: !4693)
!4950 = !DILocation(line: 557, column: 2, scope: !4692, inlinedAt: !4693)
!4951 = !DILocation(line: 558, column: 1, scope: !4692, inlinedAt: !4693)
!4952 = !DILocation(line: 664, column: 2, scope: !4681)
!4953 = distinct !DISubprogram(name: "keyspan_setup", scope: !3, file: !3, line: 334, type: !4954, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!136, !138}
!4956 = !DILocalVariable(name: "dev", arg: 1, scope: !4953, file: !3, line: 334, type: !138)
!4957 = !DILocation(line: 334, column: 45, scope: !4953)
!4958 = !DILocalVariable(name: "retval", scope: !4953, file: !3, line: 336, type: !136)
!4959 = !DILocation(line: 336, column: 6, scope: !4953)
!4960 = !DILocation(line: 338, column: 27, scope: !4953)
!4961 = !DILocation(line: 338, column: 32, scope: !4953)
!4962 = !DILocation(line: 338, column: 11, scope: !4953)
!4963 = !DILocation(line: 338, column: 9, scope: !4953)
!4964 = !DILocation(line: 341, column: 6, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 341, column: 6)
!4966 = !DILocation(line: 341, column: 6, scope: !4953)
!4967 = !DILocation(line: 344, column: 10, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 341, column: 14)
!4969 = !DILocation(line: 344, column: 3, scope: !4968)
!4970 = !DILocation(line: 347, column: 27, scope: !4953)
!4971 = !DILocation(line: 347, column: 32, scope: !4953)
!4972 = !DILocation(line: 347, column: 11, scope: !4953)
!4973 = !DILocation(line: 347, column: 9, scope: !4953)
!4974 = !DILocation(line: 350, column: 6, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 350, column: 6)
!4976 = !DILocation(line: 350, column: 6, scope: !4953)
!4977 = !DILocation(line: 353, column: 10, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 350, column: 14)
!4979 = !DILocation(line: 353, column: 3, scope: !4978)
!4980 = !DILocation(line: 356, column: 27, scope: !4953)
!4981 = !DILocation(line: 356, column: 32, scope: !4953)
!4982 = !DILocation(line: 356, column: 11, scope: !4953)
!4983 = !DILocation(line: 356, column: 9, scope: !4953)
!4984 = !DILocation(line: 359, column: 6, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 359, column: 6)
!4986 = !DILocation(line: 359, column: 6, scope: !4953)
!4987 = !DILocation(line: 362, column: 10, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 359, column: 14)
!4989 = !DILocation(line: 362, column: 3, scope: !4988)
!4990 = !DILocation(line: 366, column: 9, scope: !4953)
!4991 = !DILocation(line: 366, column: 2, scope: !4953)
!4992 = !DILocation(line: 367, column: 1, scope: !4953)
!4993 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !4994, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!136, !138, !234, !280}
!4996 = !DILocalVariable(name: "dev", arg: 1, scope: !4993, file: !6, line: 912, type: !138)
!4997 = !DILocation(line: 912, column: 52, scope: !4993)
!4998 = !DILocalVariable(name: "buf", arg: 2, scope: !4993, file: !6, line: 912, type: !234)
!4999 = !DILocation(line: 912, column: 63, scope: !4993)
!5000 = !DILocalVariable(name: "size", arg: 3, scope: !4993, file: !6, line: 912, type: !280)
!5001 = !DILocation(line: 912, column: 75, scope: !4993)
!5002 = !DILocalVariable(name: "actual", scope: !4993, file: !6, line: 914, type: !136)
!5003 = !DILocation(line: 914, column: 6, scope: !4993)
!5004 = !DILocation(line: 915, column: 20, scope: !4993)
!5005 = !DILocation(line: 915, column: 25, scope: !4993)
!5006 = !DILocation(line: 915, column: 44, scope: !4993)
!5007 = !DILocation(line: 915, column: 49, scope: !4993)
!5008 = !DILocation(line: 915, column: 54, scope: !4993)
!5009 = !DILocation(line: 916, column: 6, scope: !4993)
!5010 = !DILocation(line: 916, column: 11, scope: !4993)
!5011 = !DILocation(line: 915, column: 11, scope: !4993)
!5012 = !DILocation(line: 915, column: 9, scope: !4993)
!5013 = !DILocation(line: 917, column: 10, scope: !4993)
!5014 = !DILocation(line: 917, column: 25, scope: !4993)
!5015 = !DILocation(line: 917, column: 20, scope: !4993)
!5016 = !DILocation(line: 917, column: 17, scope: !4993)
!5017 = !DILocation(line: 917, column: 9, scope: !4993)
!5018 = !DILocation(line: 917, column: 38, scope: !4993)
!5019 = !DILocation(line: 917, column: 2, scope: !4993)
!5020 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5021, file: !5021, line: 18, type: !5022, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5021 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !5024, !5026}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!5027 = !DILocalVariable(name: "dev", arg: 1, scope: !5020, file: !5021, line: 18, type: !5024)
!5028 = !DILocation(line: 18, column: 42, scope: !5020)
!5029 = !DILocalVariable(name: "id", arg: 2, scope: !5020, file: !5021, line: 18, type: !5026)
!5030 = !DILocation(line: 18, column: 64, scope: !5020)
!5031 = !DILocation(line: 20, column: 2, scope: !5020)
!5032 = !DILocation(line: 20, column: 6, scope: !5020)
!5033 = !DILocation(line: 20, column: 14, scope: !5020)
!5034 = !DILocation(line: 21, column: 15, scope: !5020)
!5035 = !DILocation(line: 21, column: 2, scope: !5020)
!5036 = !DILocation(line: 21, column: 6, scope: !5020)
!5037 = !DILocation(line: 21, column: 13, scope: !5020)
!5038 = !DILocation(line: 22, column: 16, scope: !5020)
!5039 = !DILocation(line: 22, column: 2, scope: !5020)
!5040 = !DILocation(line: 22, column: 6, scope: !5020)
!5041 = !DILocation(line: 22, column: 14, scope: !5020)
!5042 = !DILocation(line: 23, column: 16, scope: !5020)
!5043 = !DILocation(line: 23, column: 2, scope: !5020)
!5044 = !DILocation(line: 23, column: 6, scope: !5020)
!5045 = !DILocation(line: 23, column: 14, scope: !5020)
!5046 = !DILocation(line: 24, column: 1, scope: !5020)
!5047 = distinct !DISubprogram(name: "__set_bit", scope: !5048, file: !5048, line: 25, type: !5049, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5048 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !269, !5051}
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !283)
!5053 = !DILocalVariable(name: "nr", arg: 1, scope: !5054, file: !5055, line: 66, type: !269)
!5054 = distinct !DISubprogram(name: "arch___set_bit", scope: !5055, file: !5055, line: 66, type: !5049, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5055 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5056 = !DILocation(line: 66, column: 21, scope: !5054, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 28, column: 2, scope: !5047)
!5058 = !DILocalVariable(name: "addr", arg: 2, scope: !5054, file: !5055, line: 66, type: !5051)
!5059 = !DILocation(line: 66, column: 49, scope: !5054, inlinedAt: !5057)
!5060 = !DILocalVariable(name: "v", arg: 1, scope: !5061, file: !5062, line: 39, type: !5065)
!5061 = distinct !DISubprogram(name: "instrument_write", scope: !5062, file: !5062, line: 39, type: !5063, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5062 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5063 = !DISubroutineType(types: !5064)
!5064 = !{null, !5065, !280}
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5067)
!5067 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5068 = !DILocation(line: 39, column: 67, scope: !5061, inlinedAt: !5069)
!5069 = distinct !DILocation(line: 27, column: 2, scope: !5047)
!5070 = !DILocalVariable(name: "size", arg: 2, scope: !5061, file: !5062, line: 39, type: !280)
!5071 = !DILocation(line: 39, column: 77, scope: !5061, inlinedAt: !5069)
!5072 = !DILocalVariable(name: "nr", arg: 1, scope: !5047, file: !5048, line: 25, type: !269)
!5073 = !DILocation(line: 25, column: 35, scope: !5047)
!5074 = !DILocalVariable(name: "addr", arg: 2, scope: !5047, file: !5048, line: 25, type: !5051)
!5075 = !DILocation(line: 25, column: 63, scope: !5047)
!5076 = !DILocation(line: 27, column: 19, scope: !5047)
!5077 = !DILocation(line: 27, column: 26, scope: !5047)
!5078 = !DILocation(line: 27, column: 24, scope: !5047)
!5079 = !DILocation(line: 41, column: 20, scope: !5061, inlinedAt: !5069)
!5080 = !DILocation(line: 41, column: 23, scope: !5061, inlinedAt: !5069)
!5081 = !DILocation(line: 41, column: 2, scope: !5061, inlinedAt: !5069)
!5082 = !DILocation(line: 42, column: 2, scope: !5061, inlinedAt: !5069)
!5083 = !DILocation(line: 28, column: 17, scope: !5047)
!5084 = !DILocation(line: 28, column: 21, scope: !5047)
!5085 = !DILocation(line: 68, column: 44, scope: !5054, inlinedAt: !5057)
!5086 = !DILocation(line: 68, column: 56, scope: !5054, inlinedAt: !5057)
!5087 = !DILocation(line: 68, column: 2, scope: !5054, inlinedAt: !5057)
!5088 = !{i32 -2147197216}
!5089 = !DILocation(line: 29, column: 1, scope: !5047)
!5090 = distinct !DISubprogram(name: "__clear_bit", scope: !5048, file: !5048, line: 40, type: !5049, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5091 = !DILocalVariable(name: "nr", arg: 1, scope: !5092, file: !5055, line: 92, type: !269)
!5092 = distinct !DISubprogram(name: "arch___clear_bit", scope: !5055, file: !5055, line: 92, type: !5049, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5093 = !DILocation(line: 92, column: 23, scope: !5092, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 43, column: 2, scope: !5090)
!5095 = !DILocalVariable(name: "addr", arg: 2, scope: !5092, file: !5055, line: 92, type: !5051)
!5096 = !DILocation(line: 92, column: 51, scope: !5092, inlinedAt: !5094)
!5097 = !DILocation(line: 39, column: 67, scope: !5061, inlinedAt: !5098)
!5098 = distinct !DILocation(line: 42, column: 2, scope: !5090)
!5099 = !DILocation(line: 39, column: 77, scope: !5061, inlinedAt: !5098)
!5100 = !DILocalVariable(name: "nr", arg: 1, scope: !5090, file: !5048, line: 40, type: !269)
!5101 = !DILocation(line: 40, column: 37, scope: !5090)
!5102 = !DILocalVariable(name: "addr", arg: 2, scope: !5090, file: !5048, line: 40, type: !5051)
!5103 = !DILocation(line: 40, column: 65, scope: !5090)
!5104 = !DILocation(line: 42, column: 19, scope: !5090)
!5105 = !DILocation(line: 42, column: 26, scope: !5090)
!5106 = !DILocation(line: 42, column: 24, scope: !5090)
!5107 = !DILocation(line: 41, column: 20, scope: !5061, inlinedAt: !5098)
!5108 = !DILocation(line: 41, column: 23, scope: !5061, inlinedAt: !5098)
!5109 = !DILocation(line: 41, column: 2, scope: !5061, inlinedAt: !5098)
!5110 = !DILocation(line: 42, column: 2, scope: !5061, inlinedAt: !5098)
!5111 = !DILocation(line: 43, column: 19, scope: !5090)
!5112 = !DILocation(line: 43, column: 23, scope: !5090)
!5113 = !DILocation(line: 94, column: 44, scope: !5092, inlinedAt: !5094)
!5114 = !DILocation(line: 94, column: 56, scope: !5092, inlinedAt: !5094)
!5115 = !DILocation(line: 94, column: 2, scope: !5092, inlinedAt: !5094)
!5116 = !{i32 -2147196017}
!5117 = !DILocation(line: 44, column: 1, scope: !5090)
!5118 = distinct !DISubprogram(name: "input_set_drvdata", scope: !4008, file: !4008, line: 371, type: !5119, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{null, !4006, !137}
!5121 = !DILocalVariable(name: "dev", arg: 1, scope: !5118, file: !4008, line: 371, type: !4006)
!5122 = !DILocation(line: 371, column: 56, scope: !5118)
!5123 = !DILocalVariable(name: "data", arg: 2, scope: !5118, file: !4008, line: 371, type: !137)
!5124 = !DILocation(line: 371, column: 67, scope: !5118)
!5125 = !DILocation(line: 373, column: 19, scope: !5118)
!5126 = !DILocation(line: 373, column: 24, scope: !5118)
!5127 = !DILocation(line: 373, column: 29, scope: !5118)
!5128 = !DILocation(line: 373, column: 2, scope: !5118)
!5129 = !DILocation(line: 374, column: 1, scope: !5118)
!5130 = distinct !DISubprogram(name: "keyspan_open", scope: !3, file: !3, line: 405, type: !4176, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5131 = !DILocalVariable(name: "dev", arg: 1, scope: !5130, file: !3, line: 405, type: !4006)
!5132 = !DILocation(line: 405, column: 43, scope: !5130)
!5133 = !DILocalVariable(name: "remote", scope: !5130, file: !3, line: 407, type: !3996)
!5134 = !DILocation(line: 407, column: 22, scope: !5130)
!5135 = !DILocation(line: 407, column: 49, scope: !5130)
!5136 = !DILocation(line: 407, column: 31, scope: !5130)
!5137 = !DILocation(line: 409, column: 25, scope: !5130)
!5138 = !DILocation(line: 409, column: 33, scope: !5130)
!5139 = !DILocation(line: 409, column: 2, scope: !5130)
!5140 = !DILocation(line: 409, column: 10, scope: !5130)
!5141 = !DILocation(line: 409, column: 19, scope: !5130)
!5142 = !DILocation(line: 409, column: 23, scope: !5130)
!5143 = !DILocation(line: 410, column: 21, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 410, column: 6)
!5145 = !DILocation(line: 410, column: 29, scope: !5144)
!5146 = !DILocation(line: 410, column: 6, scope: !5144)
!5147 = !DILocation(line: 410, column: 6, scope: !5130)
!5148 = !DILocation(line: 411, column: 3, scope: !5144)
!5149 = !DILocation(line: 413, column: 2, scope: !5130)
!5150 = !DILocation(line: 414, column: 1, scope: !5130)
!5151 = distinct !DISubprogram(name: "keyspan_close", scope: !3, file: !3, line: 416, type: !4180, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5152 = !DILocalVariable(name: "dev", arg: 1, scope: !5151, file: !3, line: 416, type: !4006)
!5153 = !DILocation(line: 416, column: 45, scope: !5151)
!5154 = !DILocalVariable(name: "remote", scope: !5151, file: !3, line: 418, type: !3996)
!5155 = !DILocation(line: 418, column: 22, scope: !5151)
!5156 = !DILocation(line: 418, column: 49, scope: !5151)
!5157 = !DILocation(line: 418, column: 31, scope: !5151)
!5158 = !DILocation(line: 420, column: 15, scope: !5151)
!5159 = !DILocation(line: 420, column: 23, scope: !5151)
!5160 = !DILocation(line: 420, column: 2, scope: !5151)
!5161 = !DILocation(line: 421, column: 1, scope: !5151)
!5162 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5163, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{null, !4283, !138, !7, !137, !136, !4325, !137, !136}
!5165 = !DILocalVariable(name: "urb", arg: 1, scope: !5162, file: !6, line: 1688, type: !4283)
!5166 = !DILocation(line: 1688, column: 49, scope: !5162)
!5167 = !DILocalVariable(name: "dev", arg: 2, scope: !5162, file: !6, line: 1689, type: !138)
!5168 = !DILocation(line: 1689, column: 28, scope: !5162)
!5169 = !DILocalVariable(name: "pipe", arg: 3, scope: !5162, file: !6, line: 1690, type: !7)
!5170 = !DILocation(line: 1690, column: 22, scope: !5162)
!5171 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5162, file: !6, line: 1691, type: !137)
!5172 = !DILocation(line: 1691, column: 15, scope: !5162)
!5173 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5162, file: !6, line: 1692, type: !136)
!5174 = !DILocation(line: 1692, column: 13, scope: !5162)
!5175 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5162, file: !6, line: 1693, type: !4325)
!5176 = !DILocation(line: 1693, column: 24, scope: !5162)
!5177 = !DILocalVariable(name: "context", arg: 7, scope: !5162, file: !6, line: 1694, type: !137)
!5178 = !DILocation(line: 1694, column: 15, scope: !5162)
!5179 = !DILocalVariable(name: "interval", arg: 8, scope: !5162, file: !6, line: 1695, type: !136)
!5180 = !DILocation(line: 1695, column: 13, scope: !5162)
!5181 = !DILocation(line: 1697, column: 13, scope: !5162)
!5182 = !DILocation(line: 1697, column: 2, scope: !5162)
!5183 = !DILocation(line: 1697, column: 7, scope: !5162)
!5184 = !DILocation(line: 1697, column: 11, scope: !5162)
!5185 = !DILocation(line: 1698, column: 14, scope: !5162)
!5186 = !DILocation(line: 1698, column: 2, scope: !5162)
!5187 = !DILocation(line: 1698, column: 7, scope: !5162)
!5188 = !DILocation(line: 1698, column: 12, scope: !5162)
!5189 = !DILocation(line: 1699, column: 25, scope: !5162)
!5190 = !DILocation(line: 1699, column: 2, scope: !5162)
!5191 = !DILocation(line: 1699, column: 7, scope: !5162)
!5192 = !DILocation(line: 1699, column: 23, scope: !5162)
!5193 = !DILocation(line: 1700, column: 32, scope: !5162)
!5194 = !DILocation(line: 1700, column: 2, scope: !5162)
!5195 = !DILocation(line: 1700, column: 7, scope: !5162)
!5196 = !DILocation(line: 1700, column: 30, scope: !5162)
!5197 = !DILocation(line: 1701, column: 18, scope: !5162)
!5198 = !DILocation(line: 1701, column: 2, scope: !5162)
!5199 = !DILocation(line: 1701, column: 7, scope: !5162)
!5200 = !DILocation(line: 1701, column: 16, scope: !5162)
!5201 = !DILocation(line: 1702, column: 17, scope: !5162)
!5202 = !DILocation(line: 1702, column: 2, scope: !5162)
!5203 = !DILocation(line: 1702, column: 7, scope: !5162)
!5204 = !DILocation(line: 1702, column: 15, scope: !5162)
!5205 = !DILocation(line: 1704, column: 6, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5162, file: !6, line: 1704, column: 6)
!5207 = !DILocation(line: 1704, column: 11, scope: !5206)
!5208 = !DILocation(line: 1704, column: 17, scope: !5206)
!5209 = !DILocation(line: 1704, column: 35, scope: !5206)
!5210 = !DILocation(line: 1704, column: 38, scope: !5206)
!5211 = !DILocation(line: 1704, column: 43, scope: !5206)
!5212 = !DILocation(line: 1704, column: 49, scope: !5206)
!5213 = !DILocation(line: 1704, column: 6, scope: !5162)
!5214 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5215, file: !6, line: 1706, type: !136)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !6, line: 1706, column: 14)
!5216 = distinct !DILexicalBlock(scope: !5206, file: !6, line: 1704, column: 69)
!5217 = !DILocation(line: 1706, column: 14, scope: !5215)
!5218 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5219, file: !6, line: 1706, type: !136)
!5219 = distinct !DILexicalBlock(scope: !5215, file: !6, line: 1706, column: 14)
!5220 = !DILocation(line: 1706, column: 14, scope: !5219)
!5221 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5219, file: !6, line: 1706, type: !136)
!5222 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5215, file: !6, line: 1706, type: !136)
!5223 = !DILocation(line: 1706, column: 12, scope: !5216)
!5224 = !DILocation(line: 1708, column: 25, scope: !5216)
!5225 = !DILocation(line: 1708, column: 34, scope: !5216)
!5226 = !DILocation(line: 1708, column: 21, scope: !5216)
!5227 = !DILocation(line: 1708, column: 3, scope: !5216)
!5228 = !DILocation(line: 1708, column: 8, scope: !5216)
!5229 = !DILocation(line: 1708, column: 17, scope: !5216)
!5230 = !DILocation(line: 1709, column: 2, scope: !5216)
!5231 = !DILocation(line: 1710, column: 19, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5206, file: !6, line: 1709, column: 9)
!5233 = !DILocation(line: 1710, column: 3, scope: !5232)
!5234 = !DILocation(line: 1710, column: 8, scope: !5232)
!5235 = !DILocation(line: 1710, column: 17, scope: !5232)
!5236 = !DILocation(line: 1713, column: 2, scope: !5162)
!5237 = !DILocation(line: 1713, column: 7, scope: !5162)
!5238 = !DILocation(line: 1713, column: 19, scope: !5162)
!5239 = !DILocation(line: 1714, column: 1, scope: !5162)
!5240 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5241, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!7, !138, !7}
!5243 = !DILocalVariable(name: "dev", arg: 1, scope: !5240, file: !6, line: 1945, type: !138)
!5244 = !DILocation(line: 1945, column: 61, scope: !5240)
!5245 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5240, file: !6, line: 1946, type: !7)
!5246 = !DILocation(line: 1946, column: 16, scope: !5240)
!5247 = !DILocation(line: 1948, column: 10, scope: !5240)
!5248 = !DILocation(line: 1948, column: 15, scope: !5240)
!5249 = !DILocation(line: 1948, column: 22, scope: !5240)
!5250 = !DILocation(line: 1948, column: 31, scope: !5240)
!5251 = !DILocation(line: 1948, column: 40, scope: !5240)
!5252 = !DILocation(line: 1948, column: 28, scope: !5240)
!5253 = !DILocation(line: 1948, column: 2, scope: !5240)
!5254 = distinct !DISubprogram(name: "keyspan_irq_recv", scope: !3, file: !3, line: 372, type: !4327, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5255 = !DILocalVariable(name: "urb", arg: 1, scope: !5254, file: !3, line: 372, type: !4283)
!5256 = !DILocation(line: 372, column: 42, scope: !5254)
!5257 = !DILocalVariable(name: "dev", scope: !5254, file: !3, line: 374, type: !3996)
!5258 = !DILocation(line: 374, column: 22, scope: !5254)
!5259 = !DILocation(line: 374, column: 28, scope: !5254)
!5260 = !DILocation(line: 374, column: 33, scope: !5254)
!5261 = !DILocalVariable(name: "retval", scope: !5254, file: !3, line: 375, type: !136)
!5262 = !DILocation(line: 375, column: 6, scope: !5254)
!5263 = !DILocation(line: 378, column: 10, scope: !5254)
!5264 = !DILocation(line: 378, column: 15, scope: !5254)
!5265 = !DILocation(line: 378, column: 2, scope: !5254)
!5266 = !DILocation(line: 380, column: 3, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 378, column: 23)
!5268 = !DILocation(line: 386, column: 3, scope: !5267)
!5269 = !DILocation(line: 389, column: 3, scope: !5267)
!5270 = !DILocation(line: 392, column: 6, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 392, column: 6)
!5272 = !DILocation(line: 392, column: 6, scope: !5254)
!5273 = !DILocation(line: 393, column: 17, scope: !5271)
!5274 = !DILocation(line: 393, column: 3, scope: !5271)
!5275 = !DILocation(line: 395, column: 21, scope: !5254)
!5276 = !DILocation(line: 395, column: 2, scope: !5254)
!5277 = !DILabel(scope: !5254, name: "resubmit", file: !3, line: 397)
!5278 = !DILocation(line: 397, column: 1, scope: !5254)
!5279 = !DILocation(line: 398, column: 26, scope: !5254)
!5280 = !DILocation(line: 398, column: 11, scope: !5254)
!5281 = !DILocation(line: 398, column: 9, scope: !5254)
!5282 = !DILocation(line: 399, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 399, column: 6)
!5284 = !DILocation(line: 399, column: 6, scope: !5254)
!5285 = !DILocation(line: 400, column: 3, scope: !5283)
!5286 = !DILocation(line: 403, column: 1, scope: !5254)
!5287 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5288, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{null, !3703, !137}
!5290 = !DILocalVariable(name: "intf", arg: 1, scope: !5287, file: !6, line: 268, type: !3703)
!5291 = !DILocation(line: 268, column: 59, scope: !5287)
!5292 = !DILocalVariable(name: "data", arg: 2, scope: !5287, file: !6, line: 268, type: !137)
!5293 = !DILocation(line: 268, column: 71, scope: !5287)
!5294 = !DILocation(line: 270, column: 19, scope: !5287)
!5295 = !DILocation(line: 270, column: 25, scope: !5287)
!5296 = !DILocation(line: 270, column: 30, scope: !5287)
!5297 = !DILocation(line: 270, column: 2, scope: !5287)
!5298 = !DILocation(line: 271, column: 1, scope: !5287)
!5299 = distinct !DISubprogram(name: "usb_endpoint_is_int_in", scope: !88, file: !88, line: 596, type: !5300, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!136, !5302}
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!5304 = !DILocalVariable(name: "epd", arg: 1, scope: !5299, file: !88, line: 597, type: !5302)
!5305 = !DILocation(line: 597, column: 43, scope: !5299)
!5306 = !DILocation(line: 599, column: 31, scope: !5299)
!5307 = !DILocation(line: 599, column: 9, scope: !5299)
!5308 = !DILocation(line: 599, column: 36, scope: !5299)
!5309 = !DILocation(line: 599, column: 59, scope: !5299)
!5310 = !DILocation(line: 599, column: 39, scope: !5299)
!5311 = !DILocation(line: 0, scope: !5299)
!5312 = !DILocation(line: 599, column: 2, scope: !5299)
!5313 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !88, file: !88, line: 542, type: !5300, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5314 = !DILocalVariable(name: "epd", arg: 1, scope: !5313, file: !88, line: 543, type: !5302)
!5315 = !DILocation(line: 543, column: 43, scope: !5313)
!5316 = !DILocation(line: 545, column: 11, scope: !5313)
!5317 = !DILocation(line: 545, column: 16, scope: !5313)
!5318 = !DILocation(line: 545, column: 29, scope: !5313)
!5319 = !DILocation(line: 545, column: 59, scope: !5313)
!5320 = !DILocation(line: 545, column: 2, scope: !5313)
!5321 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !88, file: !88, line: 492, type: !5300, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5322 = !DILocalVariable(name: "epd", arg: 1, scope: !5321, file: !88, line: 492, type: !5302)
!5323 = !DILocation(line: 492, column: 77, scope: !5321)
!5324 = !DILocation(line: 494, column: 11, scope: !5321)
!5325 = !DILocation(line: 494, column: 16, scope: !5321)
!5326 = !DILocation(line: 494, column: 33, scope: !5321)
!5327 = !DILocation(line: 494, column: 58, scope: !5321)
!5328 = !DILocation(line: 494, column: 2, scope: !5321)
!5329 = distinct !DISubprogram(name: "get_order", scope: !5330, file: !5330, line: 29, type: !5331, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5330 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!136, !283}
!5333 = !DILocalVariable(name: "x", arg: 1, scope: !5334, file: !5055, line: 366, type: !377)
!5334 = distinct !DISubprogram(name: "fls64", scope: !5055, file: !5055, line: 366, type: !5335, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!136, !377}
!5337 = !DILocation(line: 366, column: 40, scope: !5334, inlinedAt: !5338)
!5338 = distinct !DILocation(line: 46, column: 9, scope: !5329)
!5339 = !DILocalVariable(name: "bitpos", scope: !5334, file: !5055, line: 368, type: !136)
!5340 = !DILocation(line: 368, column: 6, scope: !5334, inlinedAt: !5338)
!5341 = !DILocalVariable(name: "size", arg: 1, scope: !5329, file: !5330, line: 29, type: !283)
!5342 = !DILocation(line: 29, column: 63, scope: !5329)
!5343 = !DILocation(line: 31, column: 27, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5329, file: !5330, line: 31, column: 6)
!5345 = !DILocation(line: 31, column: 6, scope: !5344)
!5346 = !DILocation(line: 31, column: 6, scope: !5329)
!5347 = !DILocation(line: 32, column: 8, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !5330, line: 32, column: 7)
!5349 = distinct !DILexicalBlock(scope: !5344, file: !5330, line: 31, column: 34)
!5350 = !DILocation(line: 32, column: 7, scope: !5349)
!5351 = !DILocation(line: 33, column: 4, scope: !5348)
!5352 = !DILocation(line: 35, column: 7, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5349, file: !5330, line: 35, column: 7)
!5354 = !DILocation(line: 35, column: 12, scope: !5353)
!5355 = !DILocation(line: 35, column: 7, scope: !5349)
!5356 = !DILocation(line: 36, column: 4, scope: !5353)
!5357 = !DILocation(line: 38, column: 10, scope: !5349)
!5358 = !DILocation(line: 38, column: 28, scope: !5349)
!5359 = !DILocation(line: 38, column: 41, scope: !5349)
!5360 = !DILocation(line: 38, column: 3, scope: !5349)
!5361 = !DILocation(line: 41, column: 6, scope: !5329)
!5362 = !DILocation(line: 42, column: 7, scope: !5329)
!5363 = !DILocation(line: 46, column: 15, scope: !5329)
!5364 = !DILocation(line: 374, column: 2, scope: !5334, inlinedAt: !5338)
!5365 = !DILocation(line: 376, column: 14, scope: !5334, inlinedAt: !5338)
!5366 = !{i32 254369}
!5367 = !DILocation(line: 377, column: 9, scope: !5334, inlinedAt: !5338)
!5368 = !DILocation(line: 377, column: 16, scope: !5334, inlinedAt: !5338)
!5369 = !DILocation(line: 46, column: 2, scope: !5329)
!5370 = !DILocation(line: 48, column: 1, scope: !5329)
!5371 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5372, file: !5372, line: 30, type: !5373, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5372 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!136, !376}
!5375 = !DILocation(line: 366, column: 40, scope: !5334, inlinedAt: !5376)
!5376 = distinct !DILocation(line: 32, column: 9, scope: !5371)
!5377 = !DILocation(line: 368, column: 6, scope: !5334, inlinedAt: !5376)
!5378 = !DILocalVariable(name: "n", arg: 1, scope: !5371, file: !5372, line: 30, type: !376)
!5379 = !DILocation(line: 30, column: 21, scope: !5371)
!5380 = !DILocation(line: 32, column: 15, scope: !5371)
!5381 = !DILocation(line: 374, column: 2, scope: !5334, inlinedAt: !5376)
!5382 = !DILocation(line: 376, column: 14, scope: !5334, inlinedAt: !5376)
!5383 = !DILocation(line: 377, column: 9, scope: !5334, inlinedAt: !5376)
!5384 = !DILocation(line: 377, column: 16, scope: !5334, inlinedAt: !5376)
!5385 = !DILocation(line: 32, column: 18, scope: !5371)
!5386 = !DILocation(line: 32, column: 2, scope: !5371)
!5387 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1987, file: !1987, line: 137, type: !5388, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!137, !889, !3003, !280, !129}
!5390 = !DILocalVariable(name: "s", arg: 1, scope: !5387, file: !1987, line: 137, type: !889)
!5391 = !DILocation(line: 137, column: 54, scope: !5387)
!5392 = !DILocalVariable(name: "object", arg: 2, scope: !5387, file: !1987, line: 137, type: !3003)
!5393 = !DILocation(line: 137, column: 69, scope: !5387)
!5394 = !DILocalVariable(name: "size", arg: 3, scope: !5387, file: !1987, line: 138, type: !280)
!5395 = !DILocation(line: 138, column: 12, scope: !5387)
!5396 = !DILocalVariable(name: "flags", arg: 4, scope: !5387, file: !1987, line: 138, type: !129)
!5397 = !DILocation(line: 138, column: 24, scope: !5387)
!5398 = !DILocation(line: 140, column: 17, scope: !5387)
!5399 = !DILocation(line: 140, column: 2, scope: !5387)
!5400 = distinct !DISubprogram(name: "kasan_check_write", scope: !5401, file: !5401, line: 38, type: !5402, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5401 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!445, !5065, !7}
!5404 = !DILocalVariable(name: "p", arg: 1, scope: !5400, file: !5401, line: 38, type: !5065)
!5405 = !DILocation(line: 38, column: 59, scope: !5400)
!5406 = !DILocalVariable(name: "size", arg: 2, scope: !5400, file: !5401, line: 38, type: !7)
!5407 = !DILocation(line: 38, column: 75, scope: !5400)
!5408 = !DILocation(line: 40, column: 2, scope: !5400)
!5409 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5410, file: !5410, line: 178, type: !5411, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5410 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5411 = !DISubroutineType(types: !5412)
!5412 = !{null, !5065, !280, !136}
!5413 = !DILocalVariable(name: "ptr", arg: 1, scope: !5409, file: !5410, line: 178, type: !5065)
!5414 = !DILocation(line: 178, column: 60, scope: !5409)
!5415 = !DILocalVariable(name: "size", arg: 2, scope: !5409, file: !5410, line: 178, type: !280)
!5416 = !DILocation(line: 178, column: 72, scope: !5409)
!5417 = !DILocalVariable(name: "type", arg: 3, scope: !5409, file: !5410, line: 179, type: !136)
!5418 = !DILocation(line: 179, column: 15, scope: !5409)
!5419 = !DILocation(line: 179, column: 23, scope: !5409)
!5420 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !5421, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{null, !169, !137}
!5423 = !DILocalVariable(name: "dev", arg: 1, scope: !5420, file: !67, line: 660, type: !169)
!5424 = !DILocation(line: 660, column: 51, scope: !5420)
!5425 = !DILocalVariable(name: "data", arg: 2, scope: !5420, file: !67, line: 660, type: !137)
!5426 = !DILocation(line: 660, column: 62, scope: !5420)
!5427 = !DILocation(line: 662, column: 21, scope: !5420)
!5428 = !DILocation(line: 662, column: 2, scope: !5420)
!5429 = !DILocation(line: 662, column: 7, scope: !5420)
!5430 = !DILocation(line: 662, column: 19, scope: !5420)
!5431 = !DILocation(line: 663, column: 1, scope: !5420)
!5432 = distinct !DISubprogram(name: "input_get_drvdata", scope: !4008, file: !4008, line: 366, type: !5433, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!137, !4006}
!5435 = !DILocalVariable(name: "dev", arg: 1, scope: !5432, file: !4008, line: 366, type: !4006)
!5436 = !DILocation(line: 366, column: 57, scope: !5432)
!5437 = !DILocation(line: 368, column: 26, scope: !5432)
!5438 = !DILocation(line: 368, column: 31, scope: !5432)
!5439 = !DILocation(line: 368, column: 9, scope: !5432)
!5440 = !DILocation(line: 368, column: 2, scope: !5432)
!5441 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5442, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!137, !5444}
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!5446 = !DILocalVariable(name: "dev", arg: 1, scope: !5441, file: !67, line: 655, type: !5444)
!5447 = !DILocation(line: 655, column: 58, scope: !5441)
!5448 = !DILocation(line: 657, column: 9, scope: !5441)
!5449 = !DILocation(line: 657, column: 14, scope: !5441)
!5450 = !DILocation(line: 657, column: 2, scope: !5441)
!5451 = distinct !DISubprogram(name: "keyspan_print", scope: !3, file: !3, line: 126, type: !5452, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !3996}
!5454 = !DILocalVariable(name: "dev", arg: 1, scope: !5451, file: !3, line: 126, type: !3996)
!5455 = !DILocation(line: 126, column: 47, scope: !5451)
!5456 = !DILocalVariable(name: "codes", scope: !5451, file: !3, line: 128, type: !2498)
!5457 = !DILocation(line: 128, column: 7, scope: !5451)
!5458 = !DILocalVariable(name: "i", scope: !5451, file: !3, line: 129, type: !136)
!5459 = !DILocation(line: 129, column: 6, scope: !5451)
!5460 = !DILocation(line: 131, column: 9, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 131, column: 2)
!5462 = !DILocation(line: 131, column: 7, scope: !5461)
!5463 = !DILocation(line: 131, column: 14, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 131, column: 2)
!5465 = !DILocation(line: 131, column: 16, scope: !5464)
!5466 = !DILocation(line: 131, column: 2, scope: !5461)
!5467 = !DILocation(line: 132, column: 12, scope: !5464)
!5468 = !DILocation(line: 132, column: 20, scope: !5464)
!5469 = !DILocation(line: 132, column: 22, scope: !5464)
!5470 = !DILocation(line: 132, column: 18, scope: !5464)
!5471 = !DILocation(line: 132, column: 39, scope: !5464)
!5472 = !DILocation(line: 132, column: 44, scope: !5464)
!5473 = !DILocation(line: 132, column: 54, scope: !5464)
!5474 = !DILocation(line: 132, column: 3, scope: !5464)
!5475 = !DILocation(line: 131, column: 30, scope: !5464)
!5476 = !DILocation(line: 131, column: 2, scope: !5464)
!5477 = distinct !{!5477, !5466, !5478}
!5478 = !DILocation(line: 132, column: 56, scope: !5461)
!5479 = !DILocation(line: 134, column: 2, scope: !5451)
!5480 = !DILocation(line: 135, column: 1, scope: !5451)
!5481 = distinct !DISubprogram(name: "keyspan_check_data", scope: !3, file: !3, line: 179, type: !5452, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5482 = !DILocalVariable(name: "remote", arg: 1, scope: !5481, file: !3, line: 179, type: !3996)
!5483 = !DILocation(line: 179, column: 52, scope: !5481)
!5484 = !DILocalVariable(name: "i", scope: !5481, file: !3, line: 181, type: !136)
!5485 = !DILocation(line: 181, column: 6, scope: !5481)
!5486 = !DILocalVariable(name: "found", scope: !5481, file: !3, line: 182, type: !136)
!5487 = !DILocation(line: 182, column: 6, scope: !5481)
!5488 = !DILocalVariable(name: "message", scope: !5481, file: !3, line: 183, type: !5489)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyspan_message", file: !3, line: 86, size: 32, elements: !5490)
!5490 = !{!5491, !5492, !5493}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !5489, file: !3, line: 87, baseType: !814, size: 16)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !5489, file: !3, line: 88, baseType: !1226, size: 8, offset: 16)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5489, file: !3, line: 89, baseType: !1226, size: 8, offset: 24)
!5494 = !DILocation(line: 183, column: 25, scope: !5481)
!5495 = !DILocation(line: 185, column: 9, scope: !5481)
!5496 = !DILocation(line: 185, column: 17, scope: !5481)
!5497 = !DILocation(line: 185, column: 2, scope: !5481)
!5498 = !DILocation(line: 191, column: 10, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 191, column: 3)
!5500 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 185, column: 24)
!5501 = !DILocation(line: 191, column: 8, scope: !5499)
!5502 = !DILocation(line: 191, column: 15, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 191, column: 3)
!5504 = !DILocation(line: 191, column: 17, scope: !5503)
!5505 = !DILocation(line: 191, column: 29, scope: !5503)
!5506 = !DILocation(line: 191, column: 32, scope: !5503)
!5507 = !DILocation(line: 191, column: 40, scope: !5503)
!5508 = !DILocation(line: 191, column: 50, scope: !5503)
!5509 = !DILocation(line: 191, column: 53, scope: !5503)
!5510 = !DILocation(line: 0, scope: !5503)
!5511 = !DILocation(line: 191, column: 3, scope: !5499)
!5512 = !DILocation(line: 191, column: 61, scope: !5503)
!5513 = !DILocation(line: 191, column: 3, scope: !5503)
!5514 = distinct !{!5514, !5511, !5515}
!5515 = !DILocation(line: 191, column: 65, scope: !5499)
!5516 = !DILocation(line: 193, column: 7, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 193, column: 7)
!5518 = !DILocation(line: 193, column: 9, scope: !5517)
!5519 = !DILocation(line: 193, column: 7, scope: !5500)
!5520 = !DILocation(line: 194, column: 11, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 193, column: 22)
!5522 = !DILocation(line: 194, column: 19, scope: !5521)
!5523 = !DILocation(line: 194, column: 24, scope: !5521)
!5524 = !DILocation(line: 194, column: 4, scope: !5521)
!5525 = !DILocation(line: 194, column: 32, scope: !5521)
!5526 = !DILocation(line: 194, column: 40, scope: !5521)
!5527 = !DILocation(line: 195, column: 4, scope: !5521)
!5528 = !DILocation(line: 195, column: 12, scope: !5521)
!5529 = !DILocation(line: 195, column: 17, scope: !5521)
!5530 = !DILocation(line: 195, column: 21, scope: !5521)
!5531 = !DILocation(line: 196, column: 4, scope: !5521)
!5532 = !DILocation(line: 196, column: 12, scope: !5521)
!5533 = !DILocation(line: 196, column: 17, scope: !5521)
!5534 = !DILocation(line: 196, column: 21, scope: !5521)
!5535 = !DILocation(line: 197, column: 4, scope: !5521)
!5536 = !DILocation(line: 197, column: 12, scope: !5521)
!5537 = !DILocation(line: 197, column: 17, scope: !5521)
!5538 = !DILocation(line: 197, column: 24, scope: !5521)
!5539 = !DILocation(line: 198, column: 4, scope: !5521)
!5540 = !DILocation(line: 198, column: 12, scope: !5521)
!5541 = !DILocation(line: 198, column: 17, scope: !5521)
!5542 = !DILocation(line: 198, column: 27, scope: !5521)
!5543 = !DILocation(line: 199, column: 4, scope: !5521)
!5544 = !DILocation(line: 199, column: 12, scope: !5521)
!5545 = !DILocation(line: 199, column: 18, scope: !5521)
!5546 = !DILocation(line: 200, column: 3, scope: !5521)
!5547 = !DILocation(line: 201, column: 3, scope: !5500)
!5548 = !DILocation(line: 208, column: 10, scope: !5500)
!5549 = !DILocation(line: 208, column: 18, scope: !5500)
!5550 = !DILocation(line: 208, column: 23, scope: !5500)
!5551 = !DILocation(line: 208, column: 32, scope: !5500)
!5552 = !DILocation(line: 208, column: 40, scope: !5500)
!5553 = !DILocation(line: 208, column: 45, scope: !5500)
!5554 = !DILocation(line: 208, column: 30, scope: !5500)
!5555 = !DILocation(line: 208, column: 50, scope: !5500)
!5556 = !DILocation(line: 208, column: 58, scope: !5500)
!5557 = !DILocation(line: 208, column: 3, scope: !5500)
!5558 = !DILocation(line: 209, column: 3, scope: !5500)
!5559 = !DILocation(line: 209, column: 11, scope: !5500)
!5560 = !DILocation(line: 209, column: 16, scope: !5500)
!5561 = !DILocation(line: 209, column: 20, scope: !5500)
!5562 = !DILocation(line: 211, column: 9, scope: !5500)
!5563 = !DILocation(line: 212, column: 3, scope: !5500)
!5564 = !DILocation(line: 212, column: 11, scope: !5500)
!5565 = !DILocation(line: 212, column: 19, scope: !5500)
!5566 = !DILocation(line: 212, column: 24, scope: !5500)
!5567 = !DILocation(line: 212, column: 34, scope: !5500)
!5568 = !DILocation(line: 212, column: 40, scope: !5500)
!5569 = !DILocation(line: 212, column: 43, scope: !5500)
!5570 = !DILocation(line: 212, column: 51, scope: !5500)
!5571 = !DILocation(line: 212, column: 56, scope: !5500)
!5572 = !DILocation(line: 212, column: 62, scope: !5500)
!5573 = !DILocation(line: 212, column: 70, scope: !5500)
!5574 = !DILocation(line: 212, column: 75, scope: !5500)
!5575 = !DILocation(line: 212, column: 60, scope: !5500)
!5576 = !DILocation(line: 212, column: 80, scope: !5500)
!5577 = !DILocation(line: 212, column: 84, scope: !5500)
!5578 = !DILocation(line: 212, column: 83, scope: !5500)
!5579 = !DILocation(line: 0, scope: !5500)
!5580 = !DILocation(line: 213, column: 11, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 213, column: 4)
!5582 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 212, column: 91)
!5583 = !DILocation(line: 213, column: 9, scope: !5581)
!5584 = !DILocation(line: 213, column: 16, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 213, column: 4)
!5586 = !DILocation(line: 213, column: 18, scope: !5585)
!5587 = !DILocation(line: 213, column: 4, scope: !5581)
!5588 = !DILocation(line: 214, column: 29, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 214, column: 9)
!5590 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 213, column: 28)
!5591 = !DILocation(line: 214, column: 9, scope: !5589)
!5592 = !DILocation(line: 214, column: 41, scope: !5589)
!5593 = !DILocation(line: 214, column: 9, scope: !5590)
!5594 = !DILocation(line: 215, column: 6, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 214, column: 47)
!5596 = !DILocation(line: 215, column: 14, scope: !5595)
!5597 = !DILocation(line: 215, column: 20, scope: !5595)
!5598 = !DILocation(line: 216, column: 6, scope: !5595)
!5599 = !DILocation(line: 219, column: 10, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 219, column: 9)
!5601 = !DILocation(line: 219, column: 18, scope: !5600)
!5602 = !DILocation(line: 219, column: 23, scope: !5600)
!5603 = !DILocation(line: 219, column: 30, scope: !5600)
!5604 = !DILocation(line: 219, column: 43, scope: !5600)
!5605 = !DILocation(line: 219, column: 9, scope: !5590)
!5606 = !DILocation(line: 220, column: 28, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 219, column: 52)
!5608 = !DILocation(line: 220, column: 36, scope: !5607)
!5609 = !DILocation(line: 220, column: 41, scope: !5607)
!5610 = !DILocation(line: 220, column: 48, scope: !5607)
!5611 = !DILocation(line: 220, column: 6, scope: !5607)
!5612 = !DILocation(line: 220, column: 14, scope: !5607)
!5613 = !DILocation(line: 220, column: 19, scope: !5607)
!5614 = !DILocation(line: 220, column: 26, scope: !5607)
!5615 = !DILocation(line: 221, column: 6, scope: !5607)
!5616 = !DILocation(line: 221, column: 14, scope: !5607)
!5617 = !DILocation(line: 221, column: 19, scope: !5607)
!5618 = !DILocation(line: 221, column: 29, scope: !5607)
!5619 = !DILocation(line: 222, column: 12, scope: !5607)
!5620 = !DILocation(line: 223, column: 6, scope: !5607)
!5621 = !DILocation(line: 225, column: 28, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 224, column: 12)
!5623 = !DILocation(line: 225, column: 36, scope: !5622)
!5624 = !DILocation(line: 225, column: 41, scope: !5622)
!5625 = !DILocation(line: 225, column: 48, scope: !5622)
!5626 = !DILocation(line: 225, column: 6, scope: !5622)
!5627 = !DILocation(line: 225, column: 14, scope: !5622)
!5628 = !DILocation(line: 225, column: 19, scope: !5622)
!5629 = !DILocation(line: 225, column: 26, scope: !5622)
!5630 = !DILocation(line: 226, column: 8, scope: !5622)
!5631 = !DILocation(line: 226, column: 16, scope: !5622)
!5632 = !DILocation(line: 226, column: 21, scope: !5622)
!5633 = !DILocation(line: 226, column: 6, scope: !5622)
!5634 = !DILocation(line: 228, column: 4, scope: !5590)
!5635 = !DILocation(line: 213, column: 23, scope: !5585)
!5636 = !DILocation(line: 213, column: 4, scope: !5585)
!5637 = distinct !{!5637, !5587, !5638}
!5638 = !DILocation(line: 228, column: 4, scope: !5581)
!5639 = distinct !{!5639, !5563, !5640}
!5640 = !DILocation(line: 229, column: 3, scope: !5500)
!5641 = !DILocation(line: 231, column: 8, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 231, column: 7)
!5643 = !DILocation(line: 231, column: 7, scope: !5500)
!5644 = !DILocation(line: 232, column: 4, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 231, column: 15)
!5646 = !DILocation(line: 232, column: 12, scope: !5645)
!5647 = !DILocation(line: 232, column: 18, scope: !5645)
!5648 = !DILocation(line: 233, column: 4, scope: !5645)
!5649 = !DILocation(line: 233, column: 12, scope: !5645)
!5650 = !DILocation(line: 233, column: 17, scope: !5645)
!5651 = !DILocation(line: 233, column: 21, scope: !5645)
!5652 = !DILocation(line: 234, column: 3, scope: !5645)
!5653 = !DILocation(line: 235, column: 4, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 234, column: 10)
!5655 = !DILocation(line: 235, column: 12, scope: !5654)
!5656 = !DILocation(line: 235, column: 18, scope: !5654)
!5657 = !DILocation(line: 237, column: 3, scope: !5500)
!5658 = !DILocation(line: 245, column: 10, scope: !5500)
!5659 = !DILocation(line: 245, column: 18, scope: !5500)
!5660 = !DILocation(line: 245, column: 23, scope: !5500)
!5661 = !DILocation(line: 245, column: 32, scope: !5500)
!5662 = !DILocation(line: 245, column: 40, scope: !5500)
!5663 = !DILocation(line: 245, column: 45, scope: !5500)
!5664 = !DILocation(line: 245, column: 30, scope: !5500)
!5665 = !DILocation(line: 245, column: 50, scope: !5500)
!5666 = !DILocation(line: 245, column: 58, scope: !5500)
!5667 = !DILocation(line: 245, column: 3, scope: !5500)
!5668 = !DILocation(line: 246, column: 3, scope: !5500)
!5669 = !DILocation(line: 246, column: 11, scope: !5500)
!5670 = !DILocation(line: 246, column: 16, scope: !5500)
!5671 = !DILocation(line: 246, column: 20, scope: !5500)
!5672 = !DILocation(line: 248, column: 11, scope: !5500)
!5673 = !DILocation(line: 248, column: 18, scope: !5500)
!5674 = !DILocation(line: 249, column: 10, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 249, column: 3)
!5676 = !DILocation(line: 249, column: 8, scope: !5675)
!5677 = !DILocation(line: 249, column: 15, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 249, column: 3)
!5679 = !DILocation(line: 249, column: 17, scope: !5678)
!5680 = !DILocation(line: 249, column: 3, scope: !5675)
!5681 = !DILocation(line: 250, column: 24, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 249, column: 27)
!5683 = !DILocation(line: 250, column: 4, scope: !5682)
!5684 = !DILocation(line: 252, column: 9, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 252, column: 8)
!5686 = !DILocation(line: 252, column: 17, scope: !5685)
!5687 = !DILocation(line: 252, column: 22, scope: !5685)
!5688 = !DILocation(line: 252, column: 29, scope: !5685)
!5689 = !DILocation(line: 252, column: 42, scope: !5685)
!5690 = !DILocation(line: 252, column: 8, scope: !5682)
!5691 = !DILocation(line: 253, column: 30, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 252, column: 51)
!5693 = !DILocation(line: 253, column: 22, scope: !5692)
!5694 = !DILocation(line: 253, column: 37, scope: !5692)
!5695 = !DILocation(line: 253, column: 13, scope: !5692)
!5696 = !DILocation(line: 253, column: 20, scope: !5692)
!5697 = !DILocation(line: 254, column: 27, scope: !5692)
!5698 = !DILocation(line: 254, column: 35, scope: !5692)
!5699 = !DILocation(line: 254, column: 40, scope: !5692)
!5700 = !DILocation(line: 254, column: 47, scope: !5692)
!5701 = !DILocation(line: 254, column: 5, scope: !5692)
!5702 = !DILocation(line: 254, column: 13, scope: !5692)
!5703 = !DILocation(line: 254, column: 18, scope: !5692)
!5704 = !DILocation(line: 254, column: 25, scope: !5692)
!5705 = !DILocation(line: 255, column: 5, scope: !5692)
!5706 = !DILocation(line: 255, column: 13, scope: !5692)
!5707 = !DILocation(line: 255, column: 18, scope: !5692)
!5708 = !DILocation(line: 255, column: 28, scope: !5692)
!5709 = !DILocation(line: 256, column: 4, scope: !5692)
!5710 = !DILocation(line: 256, column: 16, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 256, column: 15)
!5712 = !DILocation(line: 256, column: 24, scope: !5711)
!5713 = !DILocation(line: 256, column: 29, scope: !5711)
!5714 = !DILocation(line: 256, column: 36, scope: !5711)
!5715 = !DILocation(line: 256, column: 48, scope: !5711)
!5716 = !DILocation(line: 256, column: 15, scope: !5685)
!5717 = !DILocation(line: 257, column: 31, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 256, column: 56)
!5719 = !DILocation(line: 257, column: 23, scope: !5718)
!5720 = !DILocation(line: 257, column: 38, scope: !5718)
!5721 = !DILocation(line: 257, column: 44, scope: !5718)
!5722 = !DILocation(line: 257, column: 22, scope: !5718)
!5723 = !DILocation(line: 257, column: 13, scope: !5718)
!5724 = !DILocation(line: 257, column: 20, scope: !5718)
!5725 = !DILocation(line: 258, column: 27, scope: !5718)
!5726 = !DILocation(line: 258, column: 35, scope: !5718)
!5727 = !DILocation(line: 258, column: 40, scope: !5718)
!5728 = !DILocation(line: 258, column: 47, scope: !5718)
!5729 = !DILocation(line: 258, column: 5, scope: !5718)
!5730 = !DILocation(line: 258, column: 13, scope: !5718)
!5731 = !DILocation(line: 258, column: 18, scope: !5718)
!5732 = !DILocation(line: 258, column: 25, scope: !5718)
!5733 = !DILocation(line: 259, column: 5, scope: !5718)
!5734 = !DILocation(line: 259, column: 13, scope: !5718)
!5735 = !DILocation(line: 259, column: 18, scope: !5718)
!5736 = !DILocation(line: 259, column: 28, scope: !5718)
!5737 = !DILocation(line: 260, column: 4, scope: !5718)
!5738 = !DILocation(line: 261, column: 5, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 260, column: 11)
!5740 = !DILocation(line: 264, column: 5, scope: !5739)
!5741 = !DILocation(line: 264, column: 13, scope: !5739)
!5742 = !DILocation(line: 264, column: 19, scope: !5739)
!5743 = !DILocation(line: 265, column: 5, scope: !5739)
!5744 = !DILocation(line: 267, column: 3, scope: !5682)
!5745 = !DILocation(line: 249, column: 23, scope: !5678)
!5746 = !DILocation(line: 249, column: 3, scope: !5678)
!5747 = distinct !{!5747, !5680, !5748}
!5748 = !DILocation(line: 267, column: 3, scope: !5675)
!5749 = !DILocation(line: 269, column: 11, scope: !5500)
!5750 = !DILocation(line: 269, column: 18, scope: !5500)
!5751 = !DILocation(line: 270, column: 10, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 270, column: 3)
!5753 = !DILocation(line: 270, column: 8, scope: !5752)
!5754 = !DILocation(line: 270, column: 15, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 270, column: 3)
!5756 = !DILocation(line: 270, column: 17, scope: !5755)
!5757 = !DILocation(line: 270, column: 3, scope: !5752)
!5758 = !DILocation(line: 271, column: 24, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 270, column: 27)
!5760 = !DILocation(line: 271, column: 4, scope: !5759)
!5761 = !DILocation(line: 273, column: 9, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 273, column: 8)
!5763 = !DILocation(line: 273, column: 17, scope: !5762)
!5764 = !DILocation(line: 273, column: 22, scope: !5762)
!5765 = !DILocation(line: 273, column: 29, scope: !5762)
!5766 = !DILocation(line: 273, column: 42, scope: !5762)
!5767 = !DILocation(line: 273, column: 8, scope: !5759)
!5768 = !DILocation(line: 274, column: 30, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 273, column: 51)
!5770 = !DILocation(line: 274, column: 22, scope: !5769)
!5771 = !DILocation(line: 274, column: 37, scope: !5769)
!5772 = !DILocation(line: 274, column: 13, scope: !5769)
!5773 = !DILocation(line: 274, column: 20, scope: !5769)
!5774 = !DILocation(line: 275, column: 27, scope: !5769)
!5775 = !DILocation(line: 275, column: 35, scope: !5769)
!5776 = !DILocation(line: 275, column: 40, scope: !5769)
!5777 = !DILocation(line: 275, column: 47, scope: !5769)
!5778 = !DILocation(line: 275, column: 5, scope: !5769)
!5779 = !DILocation(line: 275, column: 13, scope: !5769)
!5780 = !DILocation(line: 275, column: 18, scope: !5769)
!5781 = !DILocation(line: 275, column: 25, scope: !5769)
!5782 = !DILocation(line: 276, column: 5, scope: !5769)
!5783 = !DILocation(line: 276, column: 13, scope: !5769)
!5784 = !DILocation(line: 276, column: 18, scope: !5769)
!5785 = !DILocation(line: 276, column: 28, scope: !5769)
!5786 = !DILocation(line: 277, column: 4, scope: !5769)
!5787 = !DILocation(line: 277, column: 16, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 277, column: 15)
!5789 = !DILocation(line: 277, column: 24, scope: !5788)
!5790 = !DILocation(line: 277, column: 29, scope: !5788)
!5791 = !DILocation(line: 277, column: 36, scope: !5788)
!5792 = !DILocation(line: 277, column: 48, scope: !5788)
!5793 = !DILocation(line: 277, column: 15, scope: !5762)
!5794 = !DILocation(line: 278, column: 31, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 277, column: 56)
!5796 = !DILocation(line: 278, column: 23, scope: !5795)
!5797 = !DILocation(line: 278, column: 38, scope: !5795)
!5798 = !DILocation(line: 278, column: 44, scope: !5795)
!5799 = !DILocation(line: 278, column: 22, scope: !5795)
!5800 = !DILocation(line: 278, column: 13, scope: !5795)
!5801 = !DILocation(line: 278, column: 20, scope: !5795)
!5802 = !DILocation(line: 279, column: 27, scope: !5795)
!5803 = !DILocation(line: 279, column: 35, scope: !5795)
!5804 = !DILocation(line: 279, column: 40, scope: !5795)
!5805 = !DILocation(line: 279, column: 47, scope: !5795)
!5806 = !DILocation(line: 279, column: 5, scope: !5795)
!5807 = !DILocation(line: 279, column: 13, scope: !5795)
!5808 = !DILocation(line: 279, column: 18, scope: !5795)
!5809 = !DILocation(line: 279, column: 25, scope: !5795)
!5810 = !DILocation(line: 280, column: 5, scope: !5795)
!5811 = !DILocation(line: 280, column: 13, scope: !5795)
!5812 = !DILocation(line: 280, column: 18, scope: !5795)
!5813 = !DILocation(line: 280, column: 28, scope: !5795)
!5814 = !DILocation(line: 281, column: 4, scope: !5795)
!5815 = !DILocation(line: 282, column: 5, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 281, column: 11)
!5817 = !DILocation(line: 285, column: 5, scope: !5816)
!5818 = !DILocation(line: 285, column: 13, scope: !5816)
!5819 = !DILocation(line: 285, column: 19, scope: !5816)
!5820 = !DILocation(line: 286, column: 5, scope: !5816)
!5821 = !DILocation(line: 288, column: 3, scope: !5759)
!5822 = !DILocation(line: 270, column: 23, scope: !5755)
!5823 = !DILocation(line: 270, column: 3, scope: !5755)
!5824 = distinct !{!5824, !5757, !5825}
!5825 = !DILocation(line: 288, column: 3, scope: !5752)
!5826 = !DILocation(line: 290, column: 23, scope: !5500)
!5827 = !DILocation(line: 290, column: 3, scope: !5500)
!5828 = !DILocation(line: 291, column: 8, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 291, column: 7)
!5830 = !DILocation(line: 291, column: 16, scope: !5829)
!5831 = !DILocation(line: 291, column: 21, scope: !5829)
!5832 = !DILocation(line: 291, column: 28, scope: !5829)
!5833 = !DILocation(line: 291, column: 41, scope: !5829)
!5834 = !DILocation(line: 291, column: 7, scope: !5500)
!5835 = !DILocation(line: 292, column: 12, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 291, column: 50)
!5837 = !DILocation(line: 292, column: 19, scope: !5836)
!5838 = !DILocation(line: 293, column: 26, scope: !5836)
!5839 = !DILocation(line: 293, column: 34, scope: !5836)
!5840 = !DILocation(line: 293, column: 39, scope: !5836)
!5841 = !DILocation(line: 293, column: 46, scope: !5836)
!5842 = !DILocation(line: 293, column: 4, scope: !5836)
!5843 = !DILocation(line: 293, column: 12, scope: !5836)
!5844 = !DILocation(line: 293, column: 17, scope: !5836)
!5845 = !DILocation(line: 293, column: 24, scope: !5836)
!5846 = !DILocation(line: 294, column: 4, scope: !5836)
!5847 = !DILocation(line: 294, column: 12, scope: !5836)
!5848 = !DILocation(line: 294, column: 17, scope: !5836)
!5849 = !DILocation(line: 294, column: 27, scope: !5836)
!5850 = !DILocation(line: 295, column: 3, scope: !5836)
!5851 = !DILocation(line: 295, column: 15, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 295, column: 14)
!5853 = !DILocation(line: 295, column: 23, scope: !5852)
!5854 = !DILocation(line: 295, column: 28, scope: !5852)
!5855 = !DILocation(line: 295, column: 35, scope: !5852)
!5856 = !DILocation(line: 295, column: 47, scope: !5852)
!5857 = !DILocation(line: 295, column: 14, scope: !5829)
!5858 = !DILocation(line: 296, column: 12, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 295, column: 55)
!5860 = !DILocation(line: 296, column: 19, scope: !5859)
!5861 = !DILocation(line: 297, column: 26, scope: !5859)
!5862 = !DILocation(line: 297, column: 34, scope: !5859)
!5863 = !DILocation(line: 297, column: 39, scope: !5859)
!5864 = !DILocation(line: 297, column: 46, scope: !5859)
!5865 = !DILocation(line: 297, column: 4, scope: !5859)
!5866 = !DILocation(line: 297, column: 12, scope: !5859)
!5867 = !DILocation(line: 297, column: 17, scope: !5859)
!5868 = !DILocation(line: 297, column: 24, scope: !5859)
!5869 = !DILocation(line: 298, column: 4, scope: !5859)
!5870 = !DILocation(line: 298, column: 12, scope: !5859)
!5871 = !DILocation(line: 298, column: 17, scope: !5859)
!5872 = !DILocation(line: 298, column: 27, scope: !5859)
!5873 = !DILocation(line: 299, column: 3, scope: !5859)
!5874 = !DILocation(line: 300, column: 4, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 299, column: 10)
!5876 = !DILocation(line: 303, column: 4, scope: !5875)
!5877 = !DILocation(line: 303, column: 12, scope: !5875)
!5878 = !DILocation(line: 303, column: 18, scope: !5875)
!5879 = !DILocation(line: 304, column: 4, scope: !5875)
!5880 = !DILocation(line: 307, column: 23, scope: !5500)
!5881 = !DILocation(line: 307, column: 3, scope: !5500)
!5882 = !DILocation(line: 308, column: 8, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 308, column: 7)
!5884 = !DILocation(line: 308, column: 16, scope: !5883)
!5885 = !DILocation(line: 308, column: 21, scope: !5883)
!5886 = !DILocation(line: 308, column: 28, scope: !5883)
!5887 = !DILocation(line: 308, column: 41, scope: !5883)
!5888 = !DILocation(line: 308, column: 7, scope: !5500)
!5889 = !DILocation(line: 309, column: 26, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 308, column: 50)
!5891 = !DILocation(line: 309, column: 34, scope: !5890)
!5892 = !DILocation(line: 309, column: 39, scope: !5890)
!5893 = !DILocation(line: 309, column: 46, scope: !5890)
!5894 = !DILocation(line: 309, column: 4, scope: !5890)
!5895 = !DILocation(line: 309, column: 12, scope: !5890)
!5896 = !DILocation(line: 309, column: 17, scope: !5890)
!5897 = !DILocation(line: 309, column: 24, scope: !5890)
!5898 = !DILocation(line: 310, column: 4, scope: !5890)
!5899 = !DILocation(line: 310, column: 12, scope: !5890)
!5900 = !DILocation(line: 310, column: 17, scope: !5890)
!5901 = !DILocation(line: 310, column: 27, scope: !5890)
!5902 = !DILocation(line: 311, column: 3, scope: !5890)
!5903 = !DILocation(line: 312, column: 4, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 311, column: 10)
!5905 = !DILocation(line: 320, column: 15, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 320, column: 7)
!5907 = !DILocation(line: 320, column: 7, scope: !5906)
!5908 = !DILocation(line: 320, column: 25, scope: !5906)
!5909 = !DILocation(line: 320, column: 33, scope: !5906)
!5910 = !DILocation(line: 320, column: 22, scope: !5906)
!5911 = !DILocation(line: 320, column: 7, scope: !5500)
!5912 = !DILocation(line: 321, column: 26, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 320, column: 41)
!5914 = !DILocation(line: 321, column: 42, scope: !5913)
!5915 = !DILocation(line: 321, column: 34, scope: !5913)
!5916 = !DILocation(line: 321, column: 4, scope: !5913)
!5917 = !DILocation(line: 322, column: 26, scope: !5913)
!5918 = !DILocation(line: 322, column: 42, scope: !5913)
!5919 = !DILocation(line: 322, column: 34, scope: !5913)
!5920 = !DILocation(line: 322, column: 4, scope: !5913)
!5921 = !DILocation(line: 323, column: 29, scope: !5913)
!5922 = !DILocation(line: 323, column: 21, scope: !5913)
!5923 = !DILocation(line: 323, column: 4, scope: !5913)
!5924 = !DILocation(line: 323, column: 12, scope: !5913)
!5925 = !DILocation(line: 323, column: 19, scope: !5913)
!5926 = !DILocation(line: 324, column: 3, scope: !5913)
!5927 = !DILocation(line: 326, column: 3, scope: !5500)
!5928 = !DILocation(line: 326, column: 11, scope: !5500)
!5929 = !DILocation(line: 326, column: 17, scope: !5500)
!5930 = !DILocation(line: 327, column: 3, scope: !5500)
!5931 = !DILocation(line: 329, column: 1, scope: !5481)
!5932 = distinct !DISubprogram(name: "keyspan_load_tester", scope: !3, file: !3, line: 141, type: !5933, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!136, !3996, !136}
!5935 = !DILocalVariable(name: "dev", arg: 1, scope: !5932, file: !3, line: 141, type: !3996)
!5936 = !DILocation(line: 141, column: 52, scope: !5932)
!5937 = !DILocalVariable(name: "bits_needed", arg: 2, scope: !5932, file: !3, line: 141, type: !136)
!5938 = !DILocation(line: 141, column: 61, scope: !5932)
!5939 = !DILocation(line: 143, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 143, column: 6)
!5941 = !DILocation(line: 143, column: 11, scope: !5940)
!5942 = !DILocation(line: 143, column: 16, scope: !5940)
!5943 = !DILocation(line: 143, column: 29, scope: !5940)
!5944 = !DILocation(line: 143, column: 26, scope: !5940)
!5945 = !DILocation(line: 143, column: 6, scope: !5932)
!5946 = !DILocation(line: 144, column: 3, scope: !5940)
!5947 = !DILocation(line: 150, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 150, column: 6)
!5949 = !DILocation(line: 150, column: 11, scope: !5948)
!5950 = !DILocation(line: 150, column: 16, scope: !5948)
!5951 = !DILocation(line: 150, column: 23, scope: !5948)
!5952 = !DILocation(line: 150, column: 28, scope: !5948)
!5953 = !DILocation(line: 150, column: 33, scope: !5948)
!5954 = !DILocation(line: 150, column: 20, scope: !5948)
!5955 = !DILocation(line: 150, column: 6, scope: !5932)
!5956 = !DILocation(line: 154, column: 3, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 150, column: 38)
!5958 = !DILocation(line: 158, column: 2, scope: !5932)
!5959 = !DILocation(line: 158, column: 10, scope: !5932)
!5960 = !DILocation(line: 158, column: 15, scope: !5932)
!5961 = !DILocation(line: 158, column: 20, scope: !5932)
!5962 = !DILocation(line: 158, column: 30, scope: !5932)
!5963 = !DILocation(line: 158, column: 34, scope: !5932)
!5964 = !DILocation(line: 158, column: 68, scope: !5932)
!5965 = !DILocation(line: 159, column: 10, scope: !5932)
!5966 = !DILocation(line: 159, column: 15, scope: !5932)
!5967 = !DILocation(line: 159, column: 20, scope: !5932)
!5968 = !DILocation(line: 159, column: 26, scope: !5932)
!5969 = !DILocation(line: 159, column: 31, scope: !5932)
!5970 = !DILocation(line: 159, column: 36, scope: !5932)
!5971 = !DILocation(line: 159, column: 24, scope: !5932)
!5972 = !DILocation(line: 0, scope: !5932)
!5973 = !DILocation(line: 160, column: 24, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 159, column: 42)
!5975 = !DILocation(line: 160, column: 29, scope: !5974)
!5976 = !DILocation(line: 160, column: 34, scope: !5974)
!5977 = !DILocation(line: 160, column: 41, scope: !5974)
!5978 = !DILocation(line: 160, column: 46, scope: !5974)
!5979 = !DILocation(line: 160, column: 51, scope: !5974)
!5980 = !DILocation(line: 160, column: 54, scope: !5974)
!5981 = !DILocation(line: 160, column: 61, scope: !5974)
!5982 = !DILocation(line: 160, column: 66, scope: !5974)
!5983 = !DILocation(line: 160, column: 71, scope: !5974)
!5984 = !DILocation(line: 160, column: 58, scope: !5974)
!5985 = !DILocation(line: 160, column: 3, scope: !5974)
!5986 = !DILocation(line: 160, column: 8, scope: !5974)
!5987 = !DILocation(line: 160, column: 13, scope: !5974)
!5988 = !DILocation(line: 160, column: 20, scope: !5974)
!5989 = !DILocation(line: 161, column: 3, scope: !5974)
!5990 = !DILocation(line: 161, column: 8, scope: !5974)
!5991 = !DILocation(line: 161, column: 13, scope: !5974)
!5992 = !DILocation(line: 161, column: 23, scope: !5974)
!5993 = distinct !{!5993, !5958, !5994}
!5994 = !DILocation(line: 162, column: 2, scope: !5932)
!5995 = !DILocation(line: 164, column: 2, scope: !5932)
!5996 = !DILocation(line: 165, column: 1, scope: !5932)
!5997 = distinct !DISubprogram(name: "keyspan_report_button", scope: !3, file: !3, line: 167, type: !5998, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5998 = !DISubroutineType(types: !5999)
!5999 = !{null, !3996, !136, !136}
!6000 = !DILocalVariable(name: "remote", arg: 1, scope: !5997, file: !3, line: 167, type: !3996)
!6001 = !DILocation(line: 167, column: 55, scope: !5997)
!6002 = !DILocalVariable(name: "button", arg: 2, scope: !5997, file: !3, line: 167, type: !136)
!6003 = !DILocation(line: 167, column: 67, scope: !5997)
!6004 = !DILocalVariable(name: "press", arg: 3, scope: !5997, file: !3, line: 167, type: !136)
!6005 = !DILocation(line: 167, column: 79, scope: !5997)
!6006 = !DILocalVariable(name: "input", scope: !5997, file: !3, line: 169, type: !4006)
!6007 = !DILocation(line: 169, column: 20, scope: !5997)
!6008 = !DILocation(line: 169, column: 28, scope: !5997)
!6009 = !DILocation(line: 169, column: 36, scope: !5997)
!6010 = !DILocation(line: 171, column: 14, scope: !5997)
!6011 = !DILocation(line: 171, column: 39, scope: !5997)
!6012 = !DILocation(line: 171, column: 2, scope: !5997)
!6013 = !DILocation(line: 172, column: 19, scope: !5997)
!6014 = !DILocation(line: 172, column: 26, scope: !5997)
!6015 = !DILocation(line: 172, column: 34, scope: !5997)
!6016 = !DILocation(line: 172, column: 41, scope: !5997)
!6017 = !DILocation(line: 172, column: 50, scope: !5997)
!6018 = !DILocation(line: 172, column: 2, scope: !5997)
!6019 = !DILocation(line: 173, column: 13, scope: !5997)
!6020 = !DILocation(line: 173, column: 2, scope: !5997)
!6021 = !DILocation(line: 174, column: 1, scope: !5997)
!6022 = distinct !DISubprogram(name: "input_report_key", scope: !4008, file: !4008, line: 415, type: !6023, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6023 = !DISubroutineType(types: !6024)
!6024 = !{null, !4006, !7, !136}
!6025 = !DILocalVariable(name: "dev", arg: 1, scope: !6022, file: !4008, line: 415, type: !4006)
!6026 = !DILocation(line: 415, column: 55, scope: !6022)
!6027 = !DILocalVariable(name: "code", arg: 2, scope: !6022, file: !4008, line: 415, type: !7)
!6028 = !DILocation(line: 415, column: 73, scope: !6022)
!6029 = !DILocalVariable(name: "value", arg: 3, scope: !6022, file: !4008, line: 415, type: !136)
!6030 = !DILocation(line: 415, column: 83, scope: !6022)
!6031 = !DILocation(line: 417, column: 14, scope: !6022)
!6032 = !DILocation(line: 417, column: 27, scope: !6022)
!6033 = !DILocation(line: 417, column: 35, scope: !6022)
!6034 = !DILocation(line: 417, column: 34, scope: !6022)
!6035 = !DILocation(line: 417, column: 33, scope: !6022)
!6036 = !DILocation(line: 417, column: 2, scope: !6022)
!6037 = !DILocation(line: 418, column: 1, scope: !6022)
!6038 = distinct !DISubprogram(name: "input_sync", scope: !4008, file: !4008, line: 440, type: !4180, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6039 = !DILocalVariable(name: "dev", arg: 1, scope: !6038, file: !4008, line: 440, type: !4006)
!6040 = !DILocation(line: 440, column: 49, scope: !6038)
!6041 = !DILocation(line: 442, column: 14, scope: !6038)
!6042 = !DILocation(line: 442, column: 2, scope: !6038)
!6043 = !DILocation(line: 443, column: 1, scope: !6038)
!6044 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6045, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!137, !3703}
!6047 = !DILocalVariable(name: "intf", arg: 1, scope: !6044, file: !6, line: 263, type: !3703)
!6048 = !DILocation(line: 263, column: 60, scope: !6044)
!6049 = !DILocation(line: 265, column: 26, scope: !6044)
!6050 = !DILocation(line: 265, column: 32, scope: !6044)
!6051 = !DILocation(line: 265, column: 9, scope: !6044)
!6052 = !DILocation(line: 265, column: 2, scope: !6044)
