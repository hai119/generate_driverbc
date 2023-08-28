; ModuleID = '../bcout/drivers/media/usb/siano/smsusb.llvm.bc'
source_filename = "drivers/media/usb/siano/smsusb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_smsusb_driver_init6:\09\09\09"
module asm ".long\09smsusb_driver_init - .\09\09\09"
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
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.sms_msg_hdr = type { i16, i8, i8, i16, i16 }
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
%struct.sms_board = type { i32, i8*, [12 x i8*], %struct.sms_board_gpio_cfg, i8*, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.sms_antenna_config_ST* }
%struct.sms_board_gpio_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sms_antenna_config_ST = type opaque
%struct.smsusb_device_t = type { %struct.usb_device*, %struct.smscore_device_t*, [10 x %struct.smsusb_urb_t], i32, i32, i8, i8, i32 }
%struct.smscore_device_t = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, i8*, i32, i64, i8*, %struct.device*, %struct.usb_device*, [32 x i8], i64, i32 (i8*, i32)*, void (i8*, i32*)*, i32 (i8*, i8*, i64)*, i32 (i8*)*, i32 (i8*)*, i32, i32, i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, i32, i32, i8*, i32, i16, %struct.ir_t, i8, i32 }
%struct.ir_t = type { %struct.rc_dev*, [40 x i8], [32 x i8], i8*, i32, i32 }
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
%struct.smsusb_urb_t = type { %struct.list_head, %struct.smscore_buffer_t*, %struct.smsusb_device_t*, %struct.urb, %struct.work_struct }
%struct.smscore_buffer_t = type { %struct.list_head, i32, i32, i8*, i64, i64 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.firmware = type { i64, i8*, i8* }
%struct.smsdevice_params_t = type { %struct.device*, %struct.usb_device*, i32, i32, [32 x i8], i64, i32 (i8*, i32)*, void (i8*, i32*)*, i32 (i8*, i8*, i64)*, i32 (i8*)*, i32 (i8*)*, i8*, i32 }
%struct.sms_msg_data = type { %struct.sms_msg_hdr, [1 x i32] }

@__UNIQUE_ID___addressable_smsusb_driver_init245 = internal global i8* bitcast (i32 ()* @smsusb_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@smsusb_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @smsusb_probe, void (%struct.usb_interface*)* @smsusb_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @smsusb_suspend, i32 (%struct.usb_interface*)* @smsusb_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([45 x %struct.usb_device_id], [45 x %struct.usb_device_id]* @smsusb_id_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4783
@__exitcall_smsusb_driver_exit = internal global void ()* @smsusb_driver_exit, section ".exitcall.exit", align 8, !dbg !4758
@__UNIQUE_ID_description246 = internal constant [59 x i8] c"smsusb.description=Driver for the Siano SMS1xxx USB dongle\00", section ".modinfo", align 1, !dbg !4763
@__UNIQUE_ID_author247 = internal constant [61 x i8] c"smsusb.author=Siano Mobile Silicon, INC. (uris@siano-ms.com)\00", section ".modinfo", align 1, !dbg !4768
@__UNIQUE_ID_file248 = internal constant [43 x i8] c"smsusb.file=drivers/media/usb/siano/smsusb\00", section ".modinfo", align 1, !dbg !4773
@__UNIQUE_ID_license249 = internal constant [19 x i8] c"smsusb.license=GPL\00", section ".modinfo", align 1, !dbg !4778
@.str = private unnamed_addr constant [7 x i8] c"smsusb\00", align 1
@smsusb_id_table = internal constant [45 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6271, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 13 }, %struct.usb_device_id { i16 3, i16 6271, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 6271, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 6271, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 3 }, %struct.usb_device_id { i16 3, i16 6271, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4 }, %struct.usb_device_id { i16 3, i16 8256, i16 5888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 5 }, %struct.usb_device_id { i16 3, i16 8256, i16 6144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 6 }, %struct.usb_device_id { i16 3, i16 8256, i16 6145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 7 }, %struct.usb_device_id { i16 3, i16 8256, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 10 }, %struct.usb_device_id { i16 3, i16 8256, i16 8202, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8209, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 8217, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21776, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21808, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 21904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 6271, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 11 }, %struct.usb_device_id { i16 3, i16 6271, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 12 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -18032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16368, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -16224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -2656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 6271, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 11 }, %struct.usb_device_id { i16 3, i16 6271, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 12 }, %struct.usb_device_id { i16 3, i16 6271, i16 770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 12 }, %struct.usb_device_id { i16 3, i16 6271, i16 784, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 16 }, %struct.usb_device_id { i16 3, i16 6271, i16 1280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 17 }, %struct.usb_device_id { i16 3, i16 6271, i16 1536, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 18 }, %struct.usb_device_id { i16 3, i16 6271, i16 1792, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 20 }, %struct.usb_device_id { i16 3, i16 6271, i16 2048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 19 }, %struct.usb_device_id { i16 3, i16 6610, i16 134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 14 }, %struct.usb_device_id { i16 3, i16 6610, i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 15 }, %struct.usb_device_id { i16 3, i16 12917, i16 128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 18 }, %struct.usb_device_id { i16 3, i16 8211, i16 599, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 21 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4847
@.str.1 = private unnamed_addr constant [44 x i8] c"\016%s:%s: board id=%lu, interface number %d\0A\00", align 1
@__func__.smsusb_probe = private unnamed_addr constant [13 x i8] c"smsusb_probe\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013%s:%s: usb_set_interface failed, rc %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"usb\\%d-%s\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\016%s:%s: stellar device in cold state was found at %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\016%s:%s: stellar device now in warm state\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\013%s:%s: Failed to put stellar in warm state. Error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\016%s:%s: Device initialized with return code %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\013%s:%s: invalid firmware id specified %d\0A\00", align 1
@__func__.smsusb1_load_firmware = private unnamed_addr constant [22 x i8] c"smsusb1_load_firmware\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"\014%s:%s: failed to open '%s' mode %d, trying again with default firmware\0A\00", align 1
@smsusb1_fw_lkup = internal global [5 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)], align 16, !dbg !4844
@.str.10 = private unnamed_addr constant [38 x i8] c"\014%s:%s: failed to open '%s' mode %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\013%s:%s: failed to allocate firmware buffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"dvbt_stellar_usb.inp\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"dvbh_stellar_usb.inp\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"tdmb_stellar_usb.inp\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"dvbt_bda_stellar_usb.inp\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"\013%s:%s: Unspecified sms device type!\0A\00", align 1
@__func__.smsusb_init_device = private unnamed_addr constant [19 x i8] c"smsusb_init_device\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"\013%s:%s: smscore_register_device(...) failed, rc %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"\013%s:%s: smsusb_start_streaming(...) failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"\013%s:%s: smscore_start_device(...) failed\0A\00", align 1
@__const.smsusb1_setmode.msg = private unnamed_addr constant %struct.sms_msg_hdr { i16 697, i8 0, i8 11, i16 8, i16 0 }, align 2
@__func__.smsusb1_setmode = private unnamed_addr constant [16 x i8] c"smsusb1_setmode\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"\013%s:%s: product string not found\0A\00", align 1
@__func__.smsusb1_detectmode = private unnamed_addr constant [19 x i8] c"smsusb1_detectmode\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"DVBH\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"BDA\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"DVBT\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"TDMB\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"\013%s:%s: smsusb_submit_urb(...) failed\0A\00", align 1
@__func__.smsusb_start_streaming = private unnamed_addr constant [23 x i8] c"smsusb_start_streaming\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"\013%s:%s: smscore_getbuffer(...) returned NULL\0A\00", align 1
@__func__.smsusb_submit_urb = private unnamed_addr constant [18 x i8] c"smsusb_submit_urb\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"\013%s:%s: error, urb status %d (-ESHUTDOWN), %d bytes\0A\00", align 1
@__func__.smsusb_onresponse = private unnamed_addr constant [18 x i8] c"smsusb_onresponse\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"\013%s:%s: invalid response msglen %d offset %d size %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"\013%s:%s: invalid response msglen %d actual %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"\013%s:%s: error, urb status %d, %d bytes\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@.str.34 = private unnamed_addr constant [27 x i8] c"\016%s  Entering status %d.\0A\00", align 1
@__func__.smsusb_suspend = private unnamed_addr constant [15 x i8] c"smsusb_suspend\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"\016%s  Entering.\0A\00", align 1
@__func__.smsusb_resume = private unnamed_addr constant [14 x i8] c"smsusb_resume\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"\016endpoint %d %02x %02x %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"\016%s usb_set_interface failed, rc %d\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_smsusb_driver_init245 to i8*), i8* bitcast (void ()* @smsusb_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_smsusb_driver_exit to i8*), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__UNIQUE_ID_description246, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_author247, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_file248, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license249, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_driver_init() #0 section ".init.text" !dbg !4857 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @smsusb_driver, %struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4860
  ret i32 %call, !dbg !4860
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @smsusb_driver_exit() #0 section ".exit.text" !dbg !4861 {
entry:
  call void @usb_deregister(%struct.usb_driver* @smsusb_driver) #9, !dbg !4862
  ret void, !dbg !4862
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !4863 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %devpath = alloca [32 x i8], align 16
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4870
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4871
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4869
  call void @llvm.dbg.declare(metadata [32 x i8]* %devpath, metadata !4872, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4876, metadata !DIExpression()), !dbg !4877
  %1 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4878
  %driver_info = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %1, i32 0, i32 12, !dbg !4878
  %2 = load i64, i64* %driver_info, align 8, !dbg !4878
  %3 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4878
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %3, i32 0, i32 1, !dbg !4878
  %4 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4878
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %4, i32 0, i32 0, !dbg !4878
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 2, !dbg !4878
  %5 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4878
  %conv = zext i8 %5 to i32, !dbg !4878
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.smsusb_probe, i64 0, i64 0), i64 %2, i32 %conv) #10, !dbg !4878
  %6 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4879
  %driver_info2 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %6, i32 0, i32 12, !dbg !4881
  %7 = load i64, i64* %driver_info2, align 8, !dbg !4881
  %conv3 = trunc i64 %7 to i32, !dbg !4879
  %call4 = call %struct.sms_board* @sms_get_board(i32 %conv3) #9, !dbg !4882
  %intf_num = getelementptr inbounds %struct.sms_board, %struct.sms_board* %call4, i32 0, i32 10, !dbg !4883
  %8 = load i8, i8* %intf_num, align 4, !dbg !4883
  %conv5 = sext i8 %8 to i32, !dbg !4882
  %9 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4884
  %cur_altsetting6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 1, !dbg !4885
  %10 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting6, align 8, !dbg !4885
  %desc7 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %10, i32 0, i32 0, !dbg !4886
  %bInterfaceNumber8 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc7, i32 0, i32 2, !dbg !4887
  %11 = load i8, i8* %bInterfaceNumber8, align 2, !dbg !4887
  %conv9 = zext i8 %11 to i32, !dbg !4884
  %cmp = icmp ne i32 %conv5, %conv9, !dbg !4888
  br i1 %cmp, label %if.then, label %if.end, !dbg !4889

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !4890
  %12 = load i32, i32* %tmp, align 4, !dbg !4894
  store i32 -19, i32* %retval, align 4, !dbg !4895
  br label %return, !dbg !4895

if.end:                                           ; preds = %entry
  %13 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4896
  %num_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 2, !dbg !4898
  %14 = load i32, i32* %num_altsetting, align 8, !dbg !4898
  %cmp11 = icmp ugt i32 %14, 1, !dbg !4899
  br i1 %cmp11, label %if.then13, label %if.end24, !dbg !4900

if.then13:                                        ; preds = %if.end
  %15 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4901
  %16 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4903
  %cur_altsetting14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 1, !dbg !4904
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting14, align 8, !dbg !4904
  %desc15 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 0, !dbg !4905
  %bInterfaceNumber16 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc15, i32 0, i32 2, !dbg !4906
  %18 = load i8, i8* %bInterfaceNumber16, align 2, !dbg !4906
  %conv17 = zext i8 %18 to i32, !dbg !4903
  %call18 = call i32 @usb_set_interface(%struct.usb_device* %15, i32 %conv17, i32 0) #9, !dbg !4907
  store i32 %call18, i32* %rc, align 4, !dbg !4908
  %19 = load i32, i32* %rc, align 4, !dbg !4909
  %cmp19 = icmp slt i32 %19, 0, !dbg !4911
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !4912

if.then21:                                        ; preds = %if.then13
  %20 = load i32, i32* %rc, align 4, !dbg !4913
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.smsusb_probe, i64 0, i64 0), i32 %20) #10, !dbg !4913
  %21 = load i32, i32* %rc, align 4, !dbg !4915
  store i32 %21, i32* %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

if.end23:                                         ; preds = %if.then13
  br label %if.end24, !dbg !4917

if.end24:                                         ; preds = %if.end23, %if.end
  store i32 0, i32* %tmp25, align 4, !dbg !4918
  %22 = load i32, i32* %tmp25, align 4, !dbg !4921
  store i32 0, i32* %i, align 4, !dbg !4922
  br label %for.cond, !dbg !4924

for.cond:                                         ; preds = %for.inc, %if.end24
  %23 = load i32, i32* %i, align 4, !dbg !4925
  %24 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4927
  %cur_altsetting26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1, !dbg !4928
  %25 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting26, align 8, !dbg !4928
  %desc27 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %25, i32 0, i32 0, !dbg !4929
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc27, i32 0, i32 4, !dbg !4930
  %26 = load i8, i8* %bNumEndpoints, align 4, !dbg !4930
  %conv28 = zext i8 %26 to i32, !dbg !4927
  %cmp29 = icmp slt i32 %23, %conv28, !dbg !4931
  br i1 %cmp29, label %for.body, label %for.end, !dbg !4932

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %tmp31, align 4, !dbg !4933
  %27 = load i32, i32* %tmp31, align 4, !dbg !4937
  %28 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4938
  %cur_altsetting32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 1, !dbg !4940
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting32, align 8, !dbg !4940
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 3, !dbg !4941
  %30 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !4941
  %31 = load i32, i32* %i, align 4, !dbg !4942
  %idxprom = sext i32 %31 to i64, !dbg !4938
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %30, i64 %idxprom, !dbg !4938
  %desc33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4943
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc33, i32 0, i32 2, !dbg !4944
  %32 = load i8, i8* %bEndpointAddress, align 2, !dbg !4944
  %conv34 = zext i8 %32 to i32, !dbg !4938
  %and = and i32 %conv34, 128, !dbg !4945
  %tobool = icmp ne i32 %and, 0, !dbg !4945
  br i1 %tobool, label %if.then35, label %if.else, !dbg !4946

if.then35:                                        ; preds = %for.body
  %33 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4947
  %34 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4948
  %35 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4948
  %cur_altsetting36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 1, !dbg !4948
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting36, align 8, !dbg !4948
  %endpoint37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 3, !dbg !4948
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint37, align 8, !dbg !4948
  %38 = load i32, i32* %i, align 4, !dbg !4948
  %idxprom38 = sext i32 %38 to i64, !dbg !4948
  %arrayidx39 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %37, i64 %idxprom38, !dbg !4948
  %desc40 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx39, i32 0, i32 0, !dbg !4948
  %bEndpointAddress41 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc40, i32 0, i32 2, !dbg !4948
  %39 = load i8, i8* %bEndpointAddress41, align 2, !dbg !4948
  %conv42 = zext i8 %39 to i32, !dbg !4948
  %call43 = call i32 @__create_pipe(%struct.usb_device* %34, i32 %conv42) #9, !dbg !4948
  %or = or i32 -1073741824, %call43, !dbg !4948
  %or44 = or i32 %or, 128, !dbg !4948
  %call45 = call i32 @usb_clear_halt(%struct.usb_device* %33, i32 %or44) #9, !dbg !4949
  store i32 %call45, i32* %rc, align 4, !dbg !4950
  br label %if.end56, !dbg !4951

if.else:                                          ; preds = %for.body
  %40 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4952
  %41 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4953
  %42 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4953
  %cur_altsetting46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 1, !dbg !4953
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting46, align 8, !dbg !4953
  %endpoint47 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 3, !dbg !4953
  %44 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint47, align 8, !dbg !4953
  %45 = load i32, i32* %i, align 4, !dbg !4953
  %idxprom48 = sext i32 %45 to i64, !dbg !4953
  %arrayidx49 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %44, i64 %idxprom48, !dbg !4953
  %desc50 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx49, i32 0, i32 0, !dbg !4953
  %bEndpointAddress51 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc50, i32 0, i32 2, !dbg !4953
  %46 = load i8, i8* %bEndpointAddress51, align 2, !dbg !4953
  %conv52 = zext i8 %46 to i32, !dbg !4953
  %call53 = call i32 @__create_pipe(%struct.usb_device* %41, i32 %conv52) #9, !dbg !4953
  %or54 = or i32 -1073741824, %call53, !dbg !4953
  %call55 = call i32 @usb_clear_halt(%struct.usb_device* %40, i32 %or54) #9, !dbg !4954
  store i32 %call55, i32* %rc, align 4, !dbg !4955
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then35
  br label %for.inc, !dbg !4956

for.inc:                                          ; preds = %if.end56
  %47 = load i32, i32* %i, align 4, !dbg !4957
  %inc = add i32 %47, 1, !dbg !4957
  store i32 %inc, i32* %i, align 4, !dbg !4957
  br label %for.cond, !dbg !4958, !llvm.loop !4959

for.end:                                          ; preds = %for.cond
  %48 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4961
  %actconfig = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 19, !dbg !4963
  %49 = load %struct.usb_host_config*, %struct.usb_host_config** %actconfig, align 8, !dbg !4963
  %desc57 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %49, i32 0, i32 0, !dbg !4964
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %desc57, i32 0, i32 3, !dbg !4965
  %50 = load i8, i8* %bNumInterfaces, align 4, !dbg !4965
  %conv58 = zext i8 %50 to i32, !dbg !4961
  %cmp59 = icmp eq i32 %conv58, 2, !dbg !4966
  br i1 %cmp59, label %land.lhs.true, label %if.end69, !dbg !4967

land.lhs.true:                                    ; preds = %for.end
  %51 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4968
  %cur_altsetting61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 1, !dbg !4969
  %52 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting61, align 8, !dbg !4969
  %desc62 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %52, i32 0, i32 0, !dbg !4970
  %bInterfaceNumber63 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc62, i32 0, i32 2, !dbg !4971
  %53 = load i8, i8* %bInterfaceNumber63, align 2, !dbg !4971
  %conv64 = zext i8 %53 to i32, !dbg !4968
  %cmp65 = icmp eq i32 %conv64, 0, !dbg !4972
  br i1 %cmp65, label %if.then67, label %if.end69, !dbg !4973

if.then67:                                        ; preds = %land.lhs.true
  store i32 0, i32* %tmp68, align 4, !dbg !4974
  %54 = load i32, i32* %tmp68, align 4, !dbg !4978
  store i32 -19, i32* %retval, align 4, !dbg !4979
  br label %return, !dbg !4979

if.end69:                                         ; preds = %land.lhs.true, %for.end
  %55 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4980
  %driver_info70 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %55, i32 0, i32 12, !dbg !4982
  %56 = load i64, i64* %driver_info70, align 8, !dbg !4982
  %cmp71 = icmp eq i64 %56, 13, !dbg !4983
  br i1 %cmp71, label %if.then73, label %if.else90, !dbg !4984

if.then73:                                        ; preds = %if.end69
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %devpath, i64 0, i64 0, !dbg !4985
  %57 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4987
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %57, i32 0, i32 12, !dbg !4988
  %58 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4988
  %busnum = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %58, i32 0, i32 2, !dbg !4989
  %59 = load i32, i32* %busnum, align 8, !dbg !4989
  %60 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4990
  %devpath74 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 1, !dbg !4991
  %arraydecay75 = getelementptr inbounds [16 x i8], [16 x i8]* %devpath74, i64 0, i64 0, !dbg !4990
  %call76 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %59, i8* %arraydecay75) #9, !dbg !4992
  %arraydecay77 = getelementptr inbounds [32 x i8], [32 x i8]* %devpath, i64 0, i64 0, !dbg !4993
  %call78 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.smsusb_probe, i64 0, i64 0), i8* %arraydecay77) #10, !dbg !4993
  %61 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4994
  %arraydecay79 = getelementptr inbounds [32 x i8], [32 x i8]* %devpath, i64 0, i64 0, !dbg !4995
  %call80 = call i32 @smscore_registry_getmode(i8* %arraydecay79) #9, !dbg !4996
  %62 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !4997
  %driver_info81 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %62, i32 0, i32 12, !dbg !4998
  %63 = load i64, i64* %driver_info81, align 8, !dbg !4998
  %conv82 = trunc i64 %63 to i32, !dbg !4997
  %call83 = call i32 @smsusb1_load_firmware(%struct.usb_device* %61, i32 %call80, i32 %conv82) #9, !dbg !4999
  store i32 %call83, i32* %rc, align 4, !dbg !5000
  %64 = load i32, i32* %rc, align 4, !dbg !5001
  %tobool84 = icmp ne i32 %64, 0, !dbg !5001
  br i1 %tobool84, label %if.else87, label %if.then85, !dbg !5003

if.then85:                                        ; preds = %if.then73
  %call86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.smsusb_probe, i64 0, i64 0)) #10, !dbg !5004
  br label %if.end89, !dbg !5004

if.else87:                                        ; preds = %if.then73
  %65 = load i32, i32* %rc, align 4, !dbg !5005
  %call88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.smsusb_probe, i64 0, i64 0), i32 %65) #10, !dbg !5005
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.then85
  %66 = load i32, i32* %rc, align 4, !dbg !5006
  store i32 %66, i32* %retval, align 4, !dbg !5007
  br label %return, !dbg !5007

if.else90:                                        ; preds = %if.end69
  %67 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5008
  %68 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5010
  %driver_info91 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %68, i32 0, i32 12, !dbg !5011
  %69 = load i64, i64* %driver_info91, align 8, !dbg !5011
  %conv92 = trunc i64 %69 to i32, !dbg !5010
  %call93 = call i32 @smsusb_init_device(%struct.usb_interface* %67, i32 %conv92) #9, !dbg !5012
  store i32 %call93, i32* %rc, align 4, !dbg !5013
  br label %if.end94

if.end94:                                         ; preds = %if.else90
  %70 = load i32, i32* %rc, align 4, !dbg !5014
  %call95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.smsusb_probe, i64 0, i64 0), i32 %70) #10, !dbg !5014
  %71 = load %struct.usb_device_id*, %struct.usb_device_id** %id.addr, align 8, !dbg !5015
  %driver_info96 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %71, i32 0, i32 12, !dbg !5016
  %72 = load i64, i64* %driver_info96, align 8, !dbg !5016
  %conv97 = trunc i64 %72 to i32, !dbg !5015
  %call98 = call i32 @sms_board_load_modules(i32 %conv97) #9, !dbg !5017
  %73 = load i32, i32* %rc, align 4, !dbg !5018
  store i32 %73, i32* %retval, align 4, !dbg !5019
  br label %return, !dbg !5019

return:                                           ; preds = %if.end94, %if.end89, %if.then67, %if.then21, %if.then
  %74 = load i32, i32* %retval, align 4, !dbg !5020
  ret i32 %74, !dbg !5020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @smsusb_disconnect(%struct.usb_interface* %intf) #2 !dbg !5021 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5024
  call void @smsusb_term_device(%struct.usb_interface* %0) #9, !dbg !5025
  ret void, !dbg !5026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_suspend(%struct.usb_interface* %intf, i32 %msg.coerce) #2 !dbg !5027 {
entry:
  %msg = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.smsusb_device_t*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %msg, i32 0, i32 0
  store i32 %msg.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata %struct.pm_message* %msg, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev, metadata !5032, metadata !DIExpression()), !dbg !5033
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5034
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5035
  %1 = bitcast i8* %call to %struct.smsusb_device_t*, !dbg !5035
  store %struct.smsusb_device_t* %1, %struct.smsusb_device_t** %dev, align 8, !dbg !5033
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %msg, i32 0, i32 0, !dbg !5036
  %2 = load i32, i32* %event, align 4, !dbg !5036
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.smsusb_suspend, i64 0, i64 0), i32 %2) #10, !dbg !5037
  %3 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5038
  %state = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %3, i32 0, i32 7, !dbg !5039
  store i32 1, i32* %state, align 4, !dbg !5040
  %4 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5041
  call void @smsusb_stop_streaming(%struct.smsusb_device_t* %4) #9, !dbg !5042
  ret i32 0, !dbg !5043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_resume(%struct.usb_interface* %intf) #2 !dbg !5044 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %dev = alloca %struct.smsusb_device_t*, align 8
  %udev = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5047, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5049, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev, metadata !5051, metadata !DIExpression()), !dbg !5052
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5053
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5054
  %1 = bitcast i8* %call to %struct.smsusb_device_t*, !dbg !5054
  store %struct.smsusb_device_t* %1, %struct.smsusb_device_t** %dev, align 8, !dbg !5052
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5055, metadata !DIExpression()), !dbg !5056
  %2 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5057
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %2) #9, !dbg !5058
  store %struct.usb_device* %call1, %struct.usb_device** %udev, align 8, !dbg !5056
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.smsusb_resume, i64 0, i64 0)) #10, !dbg !5059
  %3 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5060
  %4 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5061
  %5 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5061
  %in_ep = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %5, i32 0, i32 5, !dbg !5061
  %6 = load i8, i8* %in_ep, align 8, !dbg !5061
  %conv = zext i8 %6 to i32, !dbg !5061
  %call3 = call i32 @__create_pipe(%struct.usb_device* %4, i32 %conv) #9, !dbg !5061
  %or = or i32 -1073741824, %call3, !dbg !5061
  %or4 = or i32 %or, 128, !dbg !5061
  %call5 = call i32 @usb_clear_halt(%struct.usb_device* %3, i32 %or4) #9, !dbg !5062
  %7 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5063
  %8 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5064
  %9 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5064
  %out_ep = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %9, i32 0, i32 6, !dbg !5064
  %10 = load i8, i8* %out_ep, align 1, !dbg !5064
  %conv6 = zext i8 %10 to i32, !dbg !5064
  %call7 = call i32 @__create_pipe(%struct.usb_device* %8, i32 %conv6) #9, !dbg !5064
  %or8 = or i32 -1073741824, %call7, !dbg !5064
  %call9 = call i32 @usb_clear_halt(%struct.usb_device* %7, i32 %or8) #9, !dbg !5065
  store i32 0, i32* %i, align 4, !dbg !5066
  br label %for.cond, !dbg !5068

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !dbg !5069
  %12 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5071
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1, !dbg !5072
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !5072
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %13, i32 0, i32 0, !dbg !5073
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !5074
  %14 = load i8, i8* %bNumEndpoints, align 4, !dbg !5074
  %conv10 = zext i8 %14 to i32, !dbg !5071
  %cmp = icmp slt i32 %11, %conv10, !dbg !5075
  br i1 %cmp, label %for.body, label %for.end, !dbg !5076

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !5077
  %16 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5078
  %cur_altsetting12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 1, !dbg !5079
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting12, align 8, !dbg !5079
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 3, !dbg !5080
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !5080
  %19 = load i32, i32* %i, align 4, !dbg !5081
  %idxprom = sext i32 %19 to i64, !dbg !5078
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %18, i64 %idxprom, !dbg !5078
  %desc13 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !5082
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc13, i32 0, i32 2, !dbg !5083
  %20 = load i8, i8* %bEndpointAddress, align 2, !dbg !5083
  %conv14 = zext i8 %20 to i32, !dbg !5078
  %21 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5084
  %cur_altsetting15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1, !dbg !5085
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting15, align 8, !dbg !5085
  %endpoint16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %22, i32 0, i32 3, !dbg !5086
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint16, align 8, !dbg !5086
  %24 = load i32, i32* %i, align 4, !dbg !5087
  %idxprom17 = sext i32 %24 to i64, !dbg !5084
  %arrayidx18 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i64 %idxprom17, !dbg !5084
  %desc19 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx18, i32 0, i32 0, !dbg !5088
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc19, i32 0, i32 3, !dbg !5089
  %25 = load i8, i8* %bmAttributes, align 1, !dbg !5089
  %conv20 = zext i8 %25 to i32, !dbg !5084
  %26 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5090
  %cur_altsetting21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 1, !dbg !5091
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting21, align 8, !dbg !5091
  %endpoint22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i32 0, i32 3, !dbg !5092
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint22, align 8, !dbg !5092
  %29 = load i32, i32* %i, align 4, !dbg !5093
  %idxprom23 = sext i32 %29 to i64, !dbg !5090
  %arrayidx24 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %28, i64 %idxprom23, !dbg !5090
  %desc25 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx24, i32 0, i32 0, !dbg !5094
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc25, i32 0, i32 4, !dbg !5095
  %30 = load i16, i16* %wMaxPacketSize, align 4, !dbg !5095
  %conv26 = zext i16 %30 to i32, !dbg !5090
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i32 %15, i32 %conv14, i32 %conv20, i32 %conv26) #10, !dbg !5096
  br label %for.inc, !dbg !5096

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !dbg !5097
  %inc = add i32 %31, 1, !dbg !5097
  store i32 %inc, i32* %i, align 4, !dbg !5097
  br label %for.cond, !dbg !5098, !llvm.loop !5099

for.end:                                          ; preds = %for.cond
  %32 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5101
  %num_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %32, i32 0, i32 2, !dbg !5103
  %33 = load i32, i32* %num_altsetting, align 8, !dbg !5103
  %cmp28 = icmp ugt i32 %33, 0, !dbg !5104
  br i1 %cmp28, label %if.then, label %if.end38, !dbg !5105

if.then:                                          ; preds = %for.end
  %34 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5106
  %35 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5108
  %cur_altsetting30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 1, !dbg !5109
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting30, align 8, !dbg !5109
  %desc31 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 0, !dbg !5110
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc31, i32 0, i32 2, !dbg !5111
  %37 = load i8, i8* %bInterfaceNumber, align 2, !dbg !5111
  %conv32 = zext i8 %37 to i32, !dbg !5108
  %call33 = call i32 @usb_set_interface(%struct.usb_device* %34, i32 %conv32, i32 0) #9, !dbg !5112
  store i32 %call33, i32* %rc, align 4, !dbg !5113
  %38 = load i32, i32* %rc, align 4, !dbg !5114
  %cmp34 = icmp slt i32 %38, 0, !dbg !5116
  br i1 %cmp34, label %if.then36, label %if.end, !dbg !5117

if.then36:                                        ; preds = %if.then
  %39 = load i32, i32* %rc, align 4, !dbg !5118
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.smsusb_resume, i64 0, i64 0), i32 %39) #10, !dbg !5120
  %40 = load i32, i32* %rc, align 4, !dbg !5121
  store i32 %40, i32* %retval, align 4, !dbg !5122
  br label %return, !dbg !5122

if.end:                                           ; preds = %if.then
  br label %if.end38, !dbg !5123

if.end38:                                         ; preds = %if.end, %for.end
  %41 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5124
  %call39 = call i32 @smsusb_start_streaming(%struct.smsusb_device_t* %41) #9, !dbg !5125
  store i32 0, i32* %retval, align 4, !dbg !5126
  br label %return, !dbg !5126

return:                                           ; preds = %if.end38, %if.then36
  %42 = load i32, i32* %retval, align 4, !dbg !5127
  ret i32 %42, !dbg !5127
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !5128 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5133, metadata !DIExpression()), !dbg !5135
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5135
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5135
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5135
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5135
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5135
  store i8* %2, i8** %__mptr, align 8, !dbg !5135
  br label %do.body, !dbg !5135

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5136

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5135
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5135
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5135
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5136
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5135
  ret %struct.usb_device* %5, !dbg !5138
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.sms_board* @sms_get_board(i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_clear_halt(%struct.usb_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5139 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5146
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5147
  %1 = load i32, i32* %devnum, align 8, !dbg !5147
  %shl = shl i32 %1, 8, !dbg !5148
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5149
  %shl1 = shl i32 %2, 15, !dbg !5150
  %or = or i32 %shl, %shl1, !dbg !5151
  ret i32 %or, !dbg !5152
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb1_load_firmware(%struct.usb_device* %udev, i32 %id, i32 %board_id) #2 !dbg !5153 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5156, metadata !DIExpression()), !dbg !5160
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5168, metadata !DIExpression()), !dbg !5169
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5170, metadata !DIExpression()), !dbg !5171
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5172, metadata !DIExpression()), !dbg !5173
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5174, metadata !DIExpression()), !dbg !5178
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5180, metadata !DIExpression()), !dbg !5184
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5186, metadata !DIExpression()), !dbg !5190
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5195, metadata !DIExpression()), !dbg !5196
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5197, metadata !DIExpression()), !dbg !5198
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5199, metadata !DIExpression()), !dbg !5200
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5201, metadata !DIExpression()), !dbg !5202
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5203, metadata !DIExpression()), !dbg !5204
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5205, metadata !DIExpression()), !dbg !5206
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5207, metadata !DIExpression()), !dbg !5208
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5209, metadata !DIExpression()), !dbg !5210
  %retval = alloca i32, align 4
  %udev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca i32, align 4
  %board_id.addr = alloca i32, align 4
  %fw = alloca %struct.firmware*, align 8
  %fw_buffer = alloca i8*, align 8
  %rc = alloca i32, align 4
  %dummy = alloca i32, align 4
  %fw_filename = alloca i8*, align 8
  %tmp = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !5213, metadata !DIExpression()), !dbg !5214
  store i32 %board_id, i32* %board_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %board_id.addr, metadata !5215, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.declare(metadata %struct.firmware** %fw, metadata !5217, metadata !DIExpression()), !dbg !5228
  call void @llvm.dbg.declare(metadata i8** %fw_buffer, metadata !5229, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5231, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata i32* %dummy, metadata !5233, metadata !DIExpression()), !dbg !5234
  call void @llvm.dbg.declare(metadata i8** %fw_filename, metadata !5235, metadata !DIExpression()), !dbg !5236
  %0 = load i32, i32* %id.addr, align 4, !dbg !5237
  %cmp = icmp slt i32 %0, 0, !dbg !5239
  br i1 %cmp, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %board_id.addr, align 4, !dbg !5241
  %call = call %struct.sms_board* @sms_get_board(i32 %1) #9, !dbg !5242
  %default_mode = getelementptr inbounds %struct.sms_board, %struct.sms_board* %call, i32 0, i32 11, !dbg !5243
  %2 = load i32, i32* %default_mode, align 8, !dbg !5243
  store i32 %2, i32* %id.addr, align 4, !dbg !5244
  br label %if.end, !dbg !5245

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %id.addr, align 4, !dbg !5246
  %cmp1 = icmp slt i32 %3, 0, !dbg !5248
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !5249

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %id.addr, align 4, !dbg !5250
  %cmp2 = icmp sgt i32 %4, 4, !dbg !5251
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5252

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load i32, i32* %id.addr, align 4, !dbg !5253
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.smsusb1_load_firmware, i64 0, i64 0), i32 %5) #10, !dbg !5253
  store i32 -22, i32* %retval, align 4, !dbg !5255
  br label %return, !dbg !5255

if.end5:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %id.addr, align 4, !dbg !5256
  %7 = load i32, i32* %board_id.addr, align 4, !dbg !5257
  %call6 = call i8* @sms_get_fw_name(i32 %6, i32 %7) #9, !dbg !5258
  store i8* %call6, i8** %fw_filename, align 8, !dbg !5259
  %8 = load i8*, i8** %fw_filename, align 8, !dbg !5260
  %9 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5261
  %dev = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 14, !dbg !5262
  %call7 = call i32 @request_firmware(%struct.firmware** %fw, i8* %8, %struct.device* %dev) #9, !dbg !5263
  store i32 %call7, i32* %rc, align 4, !dbg !5264
  %10 = load i32, i32* %rc, align 4, !dbg !5265
  %cmp8 = icmp slt i32 %10, 0, !dbg !5267
  br i1 %cmp8, label %if.then9, label %if.end17, !dbg !5268

if.then9:                                         ; preds = %if.end5
  %11 = load i8*, i8** %fw_filename, align 8, !dbg !5269
  %12 = load i32, i32* %id.addr, align 4, !dbg !5269
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.smsusb1_load_firmware, i64 0, i64 0), i8* %11, i32 %12) #10, !dbg !5269
  %13 = load i32, i32* %id.addr, align 4, !dbg !5271
  %idxprom = sext i32 %13 to i64, !dbg !5272
  %arrayidx = getelementptr [5 x i8*], [5 x i8*]* @smsusb1_fw_lkup, i64 0, i64 %idxprom, !dbg !5272
  %14 = load i8*, i8** %arrayidx, align 8, !dbg !5272
  store i8* %14, i8** %fw_filename, align 8, !dbg !5273
  %15 = load i8*, i8** %fw_filename, align 8, !dbg !5274
  %16 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5275
  %dev11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 14, !dbg !5276
  %call12 = call i32 @request_firmware(%struct.firmware** %fw, i8* %15, %struct.device* %dev11) #9, !dbg !5277
  store i32 %call12, i32* %rc, align 4, !dbg !5278
  %17 = load i32, i32* %rc, align 4, !dbg !5279
  %cmp13 = icmp slt i32 %17, 0, !dbg !5281
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !5282

if.then14:                                        ; preds = %if.then9
  %18 = load i8*, i8** %fw_filename, align 8, !dbg !5283
  %19 = load i32, i32* %id.addr, align 4, !dbg !5283
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.smsusb1_load_firmware, i64 0, i64 0), i8* %18, i32 %19) #10, !dbg !5283
  %20 = load i32, i32* %rc, align 4, !dbg !5285
  store i32 %20, i32* %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end16:                                         ; preds = %if.then9
  br label %if.end17, !dbg !5287

if.end17:                                         ; preds = %if.end16, %if.end5
  %21 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5288
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0, !dbg !5289
  %22 = load i64, i64* %size, align 8, !dbg !5289
  store i64 %22, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %23 = load i64, i64* %size.addr.i, align 8, !dbg !5290
  %24 = call i1 @llvm.is.constant.i64(i64 %23) #11, !dbg !5291
  br i1 %24, label %if.then.i, label %if.end9.i, !dbg !5292

if.then.i:                                        ; preds = %if.end17
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !5293
  %cmp.i = icmp ugt i64 %25, 8192, !dbg !5294
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5295

if.then1.i:                                       ; preds = %if.then.i
  %26 = load i64, i64* %size.addr.i, align 8, !dbg !5296
  %27 = load i32, i32* %flags.addr.i, align 4, !dbg !5297
  store i64 %26, i64* %size.addr.i.i, align 8
  store i32 %27, i32* %flags.addr.i.i, align 4
  %28 = load i64, i64* %size.addr.i.i, align 8, !dbg !5298
  %call.i.i = call i32 @get_order(i64 %28) #12, !dbg !5299
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5204
  %29 = load i64, i64* %size.addr.i.i, align 8, !dbg !5300
  %30 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5301
  %31 = load i32, i32* %order.i.i, align 4, !dbg !5302
  store i64 %29, i64* %size.addr.i.i.i, align 8
  store i32 %30, i32* %flags.addr.i.i.i, align 4
  store i32 %31, i32* %order.addr.i.i.i, align 4
  %32 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5303
  %33 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5304
  %34 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5305
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %32, i32 %33, i32 %34) #13, !dbg !5306
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5306
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5306
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5306
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5306
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5307
  br label %kmalloc.exit, !dbg !5307

if.end.i:                                         ; preds = %if.then.i
  %35 = load i64, i64* %size.addr.i, align 8, !dbg !5308
  store i64 %35, i64* %size.addr.i11.i, align 8
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5309
  %tobool.i.i = icmp ne i64 %36, 0, !dbg !5309
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5311

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5312
  br label %kmalloc_index.exit.i, !dbg !5312

if.end.i.i:                                       ; preds = %if.end.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5313
  %cmp.i.i = icmp ule i64 %37, 8, !dbg !5315
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5316

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5317
  br label %kmalloc_index.exit.i, !dbg !5317

if.end2.i.i:                                      ; preds = %if.end.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5318
  %cmp3.i.i = icmp ugt i64 %38, 64, !dbg !5320
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5321

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5322
  %cmp4.i.i = icmp ule i64 %39, 96, !dbg !5323
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5324

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5325
  br label %kmalloc_index.exit.i, !dbg !5325

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5326
  %cmp7.i.i = icmp ugt i64 %40, 128, !dbg !5328
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5329

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5330
  %cmp9.i.i = icmp ule i64 %41, 192, !dbg !5331
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5332

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5333
  br label %kmalloc_index.exit.i, !dbg !5333

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5334
  %cmp12.i.i = icmp ule i64 %42, 8, !dbg !5336
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5337

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5338
  br label %kmalloc_index.exit.i, !dbg !5338

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5339
  %cmp15.i.i = icmp ule i64 %43, 16, !dbg !5341
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5342

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5343
  br label %kmalloc_index.exit.i, !dbg !5343

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5344
  %cmp18.i.i = icmp ule i64 %44, 32, !dbg !5346
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5347

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5348
  br label %kmalloc_index.exit.i, !dbg !5348

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5349
  %cmp21.i.i = icmp ule i64 %45, 64, !dbg !5351
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5352

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5353
  br label %kmalloc_index.exit.i, !dbg !5353

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5354
  %cmp24.i.i = icmp ule i64 %46, 128, !dbg !5356
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5357

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5358
  br label %kmalloc_index.exit.i, !dbg !5358

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5359
  %cmp27.i.i = icmp ule i64 %47, 256, !dbg !5361
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5362

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5363
  br label %kmalloc_index.exit.i, !dbg !5363

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5364
  %cmp30.i.i = icmp ule i64 %48, 512, !dbg !5366
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5367

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5368
  br label %kmalloc_index.exit.i, !dbg !5368

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5369
  %cmp33.i.i = icmp ule i64 %49, 1024, !dbg !5371
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5372

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5373
  br label %kmalloc_index.exit.i, !dbg !5373

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5374
  %cmp36.i.i = icmp ule i64 %50, 2048, !dbg !5376
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5377

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5378
  br label %kmalloc_index.exit.i, !dbg !5378

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5379
  %cmp39.i.i = icmp ule i64 %51, 4096, !dbg !5381
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5382

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5383
  br label %kmalloc_index.exit.i, !dbg !5383

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5384
  %cmp42.i.i = icmp ule i64 %52, 8192, !dbg !5386
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5387

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5388
  br label %kmalloc_index.exit.i, !dbg !5388

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5389
  %cmp45.i.i = icmp ule i64 %53, 16384, !dbg !5391
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5392

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5393
  br label %kmalloc_index.exit.i, !dbg !5393

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5394
  %cmp48.i.i = icmp ule i64 %54, 32768, !dbg !5396
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5397

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5398
  br label %kmalloc_index.exit.i, !dbg !5398

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5399
  %cmp51.i.i = icmp ule i64 %55, 65536, !dbg !5401
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5402

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5403
  br label %kmalloc_index.exit.i, !dbg !5403

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5404
  %cmp54.i.i = icmp ule i64 %56, 131072, !dbg !5406
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5407

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5408
  br label %kmalloc_index.exit.i, !dbg !5408

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5409
  %cmp57.i.i = icmp ule i64 %57, 262144, !dbg !5411
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5412

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5413
  br label %kmalloc_index.exit.i, !dbg !5413

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5414
  %cmp60.i.i = icmp ule i64 %58, 524288, !dbg !5416
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5417

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5418
  br label %kmalloc_index.exit.i, !dbg !5418

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5419
  %cmp63.i.i = icmp ule i64 %59, 1048576, !dbg !5421
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5422

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5423
  br label %kmalloc_index.exit.i, !dbg !5423

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5424
  %cmp66.i.i = icmp ule i64 %60, 2097152, !dbg !5426
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5427

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5428
  br label %kmalloc_index.exit.i, !dbg !5428

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5429
  %cmp69.i.i = icmp ule i64 %61, 4194304, !dbg !5431
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5432

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5433
  br label %kmalloc_index.exit.i, !dbg !5433

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5434
  %cmp72.i.i = icmp ule i64 %62, 8388608, !dbg !5436
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5437

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5438
  br label %kmalloc_index.exit.i, !dbg !5438

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5439
  %cmp75.i.i = icmp ule i64 %63, 16777216, !dbg !5441
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5442

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5443
  br label %kmalloc_index.exit.i, !dbg !5443

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5444
  %cmp78.i.i = icmp ule i64 %64, 33554432, !dbg !5446
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5447

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5448
  br label %kmalloc_index.exit.i, !dbg !5448

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5449
  %cmp81.i.i = icmp ule i64 %65, 67108864, !dbg !5451
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5452

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5453
  br label %kmalloc_index.exit.i, !dbg !5453

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5454, !srcloc !5457
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #11, !dbg !5458, !srcloc !5461
  unreachable, !dbg !5462

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %66 = load i32, i32* %retval.i.i, align 4, !dbg !5463
  store i32 %66, i32* %index.i, align 4, !dbg !5464
  %67 = load i32, i32* %index.i, align 4, !dbg !5465
  %tobool.i = icmp ne i32 %67, 0, !dbg !5465
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5467

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5468
  br label %kmalloc.exit, !dbg !5468

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5469
  store i32 %68, i32* %flags.addr.i13.i, align 4
  %69 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5470
  %and.i.i = and i32 %69, 17, !dbg !5470
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5470
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5470
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5470
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5470
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5472

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5473
  br label %kmalloc_type.exit.i, !dbg !5473

if.end.i16.i:                                     ; preds = %if.end4.i
  %70 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5474
  %and2.i.i = and i32 %70, 1, !dbg !5475
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5474
  %71 = zext i1 %tobool3.i.i to i64, !dbg !5474
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5474
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5476
  br label %kmalloc_type.exit.i, !dbg !5476

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %72 = load i32, i32* %retval.i12.i, align 4, !dbg !5477
  %idxprom.i = zext i32 %72 to i64, !dbg !5478
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5478
  %73 = load i32, i32* %index.i, align 4, !dbg !5479
  %idxprom6.i = zext i32 %73 to i64, !dbg !5478
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5478
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5478
  %75 = load i32, i32* %flags.addr.i, align 4, !dbg !5480
  %76 = load i64, i64* %size.addr.i, align 8, !dbg !5481
  store %struct.kmem_cache* %74, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %75, i32* %flags.addr.i17.i, align 4
  store i64 %76, i64* %size.addr.i18.i, align 8
  %77 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5482
  %78 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5483
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %77, i32 %78) #13, !dbg !5484
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5484
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5484
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5484
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5484
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5173
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5485
  %80 = load i8*, i8** %ret.i.i, align 8, !dbg !5486
  %81 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5487
  %82 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5488
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %79, i8* %80, i64 %81, i32 %82) #13, !dbg !5489
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5490
  %83 = load i8*, i8** %ret.i.i, align 8, !dbg !5491
  store i8* %83, i8** %retval.i, align 8, !dbg !5492
  br label %kmalloc.exit, !dbg !5492

if.end9.i:                                        ; preds = %if.end17
  %84 = load i64, i64* %size.addr.i, align 8, !dbg !5493
  %85 = load i32, i32* %flags.addr.i, align 4, !dbg !5494
  %call10.i = call noalias i8* @__kmalloc(i64 %84, i32 %85) #13, !dbg !5495
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5495
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5495
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5495
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5495
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5496
  br label %kmalloc.exit, !dbg !5496

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %86 = load i8*, i8** %retval.i, align 8, !dbg !5497
  store i8* %86, i8** %fw_buffer, align 8, !dbg !5498
  %87 = load i8*, i8** %fw_buffer, align 8, !dbg !5499
  %tobool = icmp ne i8* %87, null, !dbg !5499
  br i1 %tobool, label %if.then19, label %if.else, !dbg !5501

if.then19:                                        ; preds = %kmalloc.exit
  %88 = load i8*, i8** %fw_buffer, align 8, !dbg !5502
  %89 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5504
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %89, i32 0, i32 1, !dbg !5505
  %90 = load i8*, i8** %data, align 8, !dbg !5505
  %91 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5506
  %size20 = getelementptr inbounds %struct.firmware, %struct.firmware* %91, i32 0, i32 0, !dbg !5507
  %92 = load i64, i64* %size20, align 8, !dbg !5507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %88, i8* align 1 %90, i64 %92, i1 false), !dbg !5508
  %93 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5509
  %94 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !5510
  %call21 = call i32 @__create_pipe(%struct.usb_device* %94, i32 2) #9, !dbg !5510
  %or = or i32 -1073741824, %call21, !dbg !5510
  %95 = load i8*, i8** %fw_buffer, align 8, !dbg !5511
  %96 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5512
  %size22 = getelementptr inbounds %struct.firmware, %struct.firmware* %96, i32 0, i32 0, !dbg !5513
  %97 = load i64, i64* %size22, align 8, !dbg !5513
  %conv = trunc i64 %97 to i32, !dbg !5512
  %call23 = call i32 @usb_bulk_msg(%struct.usb_device* %93, i32 %or, i8* %95, i32 %conv, i32* %dummy, i32 1000) #9, !dbg !5514
  store i32 %call23, i32* %rc, align 4, !dbg !5515
  store i32 0, i32* %tmp, align 4, !dbg !5516
  %98 = load i32, i32* %tmp, align 4, !dbg !5519
  %99 = load i8*, i8** %fw_buffer, align 8, !dbg !5520
  call void @kfree(i8* %99) #9, !dbg !5521
  br label %if.end25, !dbg !5522

if.else:                                          ; preds = %kmalloc.exit
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.smsusb1_load_firmware, i64 0, i64 0)) #10, !dbg !5523
  store i32 -12, i32* %rc, align 4, !dbg !5525
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then19
  store i32 0, i32* %tmp26, align 4, !dbg !5526
  %100 = load i32, i32* %tmp26, align 4, !dbg !5529
  %101 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !5530
  call void @release_firmware(%struct.firmware* %101) #9, !dbg !5531
  %102 = load i32, i32* %rc, align 4, !dbg !5532
  store i32 %102, i32* %retval, align 4, !dbg !5533
  br label %return, !dbg !5533

return:                                           ; preds = %if.end25, %if.then14, %if.then3
  %103 = load i32, i32* %retval, align 4, !dbg !5534
  ret i32 %103, !dbg !5534
}

; Function Attrs: noredzone
declare dso_local i32 @smscore_registry_getmode(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_init_device(%struct.usb_interface* %intf, i32 %board_id) #2 !dbg !5535 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %board_id.addr = alloca i32, align 4
  %params = alloca %struct.smsdevice_params_t, align 8
  %dev = alloca %struct.smsusb_device_t*, align 8
  %mdev = alloca i8*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %align = alloca i32, align 4
  %desc3 = alloca %struct.usb_endpoint_descriptor*, align 8
  %tmp = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  store i32 %board_id, i32* %board_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %board_id.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  call void @llvm.dbg.declare(metadata %struct.smsdevice_params_t* %params, metadata !5542, metadata !DIExpression()), !dbg !5558
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata i8** %mdev, metadata !5561, metadata !DIExpression()), !dbg !5562
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5563, metadata !DIExpression()), !dbg !5564
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5565, metadata !DIExpression()), !dbg !5566
  call void @llvm.dbg.declare(metadata i32* %align, metadata !5567, metadata !DIExpression()), !dbg !5568
  store i32 0, i32* %align, align 4, !dbg !5568
  %call = call i8* @kzalloc(i64 2512, i32 3264) #9, !dbg !5569
  %0 = bitcast i8* %call to %struct.smsusb_device_t*, !dbg !5569
  store %struct.smsusb_device_t* %0, %struct.smsusb_device_t** %dev, align 8, !dbg !5570
  %1 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5571
  %tobool = icmp ne %struct.smsusb_device_t* %1, null, !dbg !5571
  br i1 %tobool, label %if.end, label %if.then, !dbg !5573

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5574
  br label %return, !dbg !5574

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.smsdevice_params_t* %params to i8*, !dbg !5575
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 120, i1 false), !dbg !5575
  %3 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5576
  %4 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5577
  %5 = bitcast %struct.smsusb_device_t* %4 to i8*, !dbg !5577
  call void @usb_set_intfdata(%struct.usb_interface* %3, i8* %5) #9, !dbg !5578
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5579
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %6) #9, !dbg !5580
  %7 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5581
  %udev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %7, i32 0, i32 0, !dbg !5582
  store %struct.usb_device* %call1, %struct.usb_device** %udev, align 8, !dbg !5583
  %8 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5584
  %state = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %8, i32 0, i32 7, !dbg !5585
  store i32 0, i32* %state, align 4, !dbg !5586
  store i32 0, i32* %i, align 4, !dbg !5587
  br label %for.cond, !dbg !5589

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !5590
  %10 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5592
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 1, !dbg !5593
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !5593
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i32 0, i32 0, !dbg !5594
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !5595
  %12 = load i8, i8* %bNumEndpoints, align 4, !dbg !5595
  %conv = zext i8 %12 to i32, !dbg !5592
  %cmp = icmp slt i32 %9, %conv, !dbg !5596
  br i1 %cmp, label %for.body, label %for.end, !dbg !5597

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %desc3, metadata !5598, metadata !DIExpression()), !dbg !5601
  %13 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5602
  %cur_altsetting4 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1, !dbg !5603
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting4, align 8, !dbg !5603
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %14, i32 0, i32 3, !dbg !5604
  %15 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !5604
  %16 = load i32, i32* %i, align 4, !dbg !5605
  %idxprom = sext i32 %16 to i64, !dbg !5602
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %15, i64 %idxprom, !dbg !5602
  %desc5 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !5606
  store %struct.usb_endpoint_descriptor* %desc5, %struct.usb_endpoint_descriptor** %desc3, align 8, !dbg !5601
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc3, align 8, !dbg !5607
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %17, i32 0, i32 2, !dbg !5609
  %18 = load i8, i8* %bEndpointAddress, align 1, !dbg !5609
  %conv6 = zext i8 %18 to i32, !dbg !5607
  %and = and i32 %conv6, 128, !dbg !5610
  %tobool7 = icmp ne i32 %and, 0, !dbg !5610
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !5611

if.then8:                                         ; preds = %for.body
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc3, align 8, !dbg !5612
  %bEndpointAddress9 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %19, i32 0, i32 2, !dbg !5614
  %20 = load i8, i8* %bEndpointAddress9, align 1, !dbg !5614
  %21 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5615
  %in_ep = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %21, i32 0, i32 5, !dbg !5616
  store i8 %20, i8* %in_ep, align 8, !dbg !5617
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc3, align 8, !dbg !5618
  %call10 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %22) #9, !dbg !5619
  %conv11 = sext i32 %call10 to i64, !dbg !5619
  %sub = sub i64 %conv11, 8, !dbg !5620
  %conv12 = trunc i64 %sub to i32, !dbg !5619
  store i32 %conv12, i32* %align, align 4, !dbg !5621
  br label %if.end14, !dbg !5622

if.else:                                          ; preds = %for.body
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc3, align 8, !dbg !5623
  %bEndpointAddress13 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %23, i32 0, i32 2, !dbg !5625
  %24 = load i8, i8* %bEndpointAddress13, align 1, !dbg !5625
  %25 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5626
  %out_ep = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %25, i32 0, i32 6, !dbg !5627
  store i8 %24, i8* %out_ep, align 1, !dbg !5628
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  br label %for.inc, !dbg !5629

for.inc:                                          ; preds = %if.end14
  %26 = load i32, i32* %i, align 4, !dbg !5630
  %inc = add i32 %26, 1, !dbg !5630
  store i32 %inc, i32* %i, align 4, !dbg !5630
  br label %for.cond, !dbg !5631, !llvm.loop !5632

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %tmp, align 4, !dbg !5634
  %27 = load i32, i32* %tmp, align 4, !dbg !5637
  %28 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5638
  %in_ep15 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %28, i32 0, i32 5, !dbg !5640
  %29 = load i8, i8* %in_ep15, align 8, !dbg !5640
  %tobool16 = icmp ne i8 %29, 0, !dbg !5638
  br i1 %tobool16, label %lor.lhs.false, label %if.then22, !dbg !5641

lor.lhs.false:                                    ; preds = %for.end
  %30 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5642
  %out_ep17 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %30, i32 0, i32 6, !dbg !5643
  %31 = load i8, i8* %out_ep17, align 1, !dbg !5643
  %tobool18 = icmp ne i8 %31, 0, !dbg !5642
  br i1 %tobool18, label %lor.lhs.false19, label %if.then22, !dbg !5644

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %32 = load i32, i32* %align, align 4, !dbg !5645
  %cmp20 = icmp slt i32 %32, 0, !dbg !5646
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5647

if.then22:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %for.end
  %33 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5648
  call void @smsusb_term_device(%struct.usb_interface* %33) #9, !dbg !5650
  store i32 -19, i32* %retval, align 4, !dbg !5651
  br label %return, !dbg !5651

if.end23:                                         ; preds = %lor.lhs.false19
  %34 = load i32, i32* %board_id.addr, align 4, !dbg !5652
  %call24 = call %struct.sms_board* @sms_get_board(i32 %34) #9, !dbg !5653
  %type = getelementptr inbounds %struct.sms_board, %struct.sms_board* %call24, i32 0, i32 0, !dbg !5654
  %35 = load i32, i32* %type, align 8, !dbg !5654
  %device_type = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 12, !dbg !5655
  store i32 %35, i32* %device_type, align 8, !dbg !5656
  %device_type25 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 12, !dbg !5657
  %36 = load i32, i32* %device_type25, align 8, !dbg !5657
  switch i32 %36, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb26
  ], !dbg !5658

sw.bb:                                            ; preds = %if.end23
  %37 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5659
  %buffer_size = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %37, i32 0, i32 4, !dbg !5661
  store i32 4096, i32* %buffer_size, align 4, !dbg !5662
  %setmode_handler = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 6, !dbg !5663
  store i32 (i8*, i32)* @smsusb1_setmode, i32 (i8*, i32)** %setmode_handler, align 8, !dbg !5664
  %detectmode_handler = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 7, !dbg !5665
  store void (i8*, i32*)* @smsusb1_detectmode, void (i8*, i32*)** %detectmode_handler, align 8, !dbg !5666
  br label %sw.epilog, !dbg !5667

sw.bb26:                                          ; preds = %if.end23
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.smsusb_init_device, i64 0, i64 0)) #10, !dbg !5668
  br label %sw.default, !dbg !5668

sw.default:                                       ; preds = %if.end23, %sw.bb26
  %38 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5669
  %buffer_size28 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %38, i32 0, i32 4, !dbg !5670
  store i32 8192, i32* %buffer_size28, align 4, !dbg !5671
  %39 = load i32, i32* %align, align 4, !dbg !5672
  %40 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5673
  %response_alignment = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %40, i32 0, i32 3, !dbg !5674
  store i32 %39, i32* %response_alignment, align 8, !dbg !5675
  %flags = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 5, !dbg !5676
  %41 = load i64, i64* %flags, align 8, !dbg !5677
  %or = or i64 %41, 1, !dbg !5677
  store i64 %or, i64* %flags, align 8, !dbg !5677
  br label %sw.epilog, !dbg !5678

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %42 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5679
  %udev29 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %42, i32 0, i32 0, !dbg !5680
  %43 = load %struct.usb_device*, %struct.usb_device** %udev29, align 8, !dbg !5680
  %dev30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 14, !dbg !5681
  %device = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 0, !dbg !5682
  store %struct.device* %dev30, %struct.device** %device, align 8, !dbg !5683
  %44 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5684
  %udev31 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %44, i32 0, i32 0, !dbg !5685
  %45 = load %struct.usb_device*, %struct.usb_device** %udev31, align 8, !dbg !5685
  %usb_device = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 1, !dbg !5686
  store %struct.usb_device* %45, %struct.usb_device** %usb_device, align 8, !dbg !5687
  %46 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5688
  %buffer_size32 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %46, i32 0, i32 4, !dbg !5689
  %47 = load i32, i32* %buffer_size32, align 4, !dbg !5689
  %buffer_size33 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 2, !dbg !5690
  store i32 %47, i32* %buffer_size33, align 8, !dbg !5691
  %num_buffers = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 3, !dbg !5692
  store i32 50, i32* %num_buffers, align 4, !dbg !5693
  %sendrequest_handler = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 8, !dbg !5694
  store i32 (i8*, i8*, i64)* @smsusb_sendrequest, i32 (i8*, i8*, i64)** %sendrequest_handler, align 8, !dbg !5695
  %48 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5696
  %49 = bitcast %struct.smsusb_device_t* %48 to i8*, !dbg !5696
  %context = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 11, !dbg !5697
  store i8* %49, i8** %context, align 8, !dbg !5698
  %50 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5699
  %udev34 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %50, i32 0, i32 0, !dbg !5700
  %51 = load %struct.usb_device*, %struct.usb_device** %udev34, align 8, !dbg !5700
  %devpath = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %params, i32 0, i32 4, !dbg !5701
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %devpath, i64 0, i64 0, !dbg !5702
  %call35 = call i32 @usb_make_path(%struct.usb_device* %51, i8* %arraydecay, i64 32) #9, !dbg !5703
  %52 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5704
  %53 = load i32, i32* %board_id.addr, align 4, !dbg !5705
  %call36 = call i8* @siano_media_device_register(%struct.smsusb_device_t* %52, i32 %53) #9, !dbg !5706
  store i8* %call36, i8** %mdev, align 8, !dbg !5707
  %54 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5708
  %coredev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %54, i32 0, i32 1, !dbg !5709
  %55 = load i8*, i8** %mdev, align 8, !dbg !5710
  %call37 = call i32 @smscore_register_device(%struct.smsdevice_params_t* %params, %struct.smscore_device_t** %coredev, i32 0, i8* %55) #9, !dbg !5711
  store i32 %call37, i32* %rc, align 4, !dbg !5712
  %56 = load i32, i32* %rc, align 4, !dbg !5713
  %cmp38 = icmp slt i32 %56, 0, !dbg !5715
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !5716

if.then40:                                        ; preds = %sw.epilog
  %57 = load i32, i32* %rc, align 4, !dbg !5717
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.smsusb_init_device, i64 0, i64 0), i32 %57) #10, !dbg !5717
  %58 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5719
  call void @smsusb_term_device(%struct.usb_interface* %58) #9, !dbg !5720
  %59 = load i8*, i8** %mdev, align 8, !dbg !5721
  call void @kfree(i8* %59) #9, !dbg !5722
  %60 = load i32, i32* %rc, align 4, !dbg !5723
  store i32 %60, i32* %retval, align 4, !dbg !5724
  br label %return, !dbg !5724

if.end42:                                         ; preds = %sw.epilog
  %61 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5725
  %coredev43 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %61, i32 0, i32 1, !dbg !5726
  %62 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev43, align 8, !dbg !5726
  %63 = load i32, i32* %board_id.addr, align 4, !dbg !5727
  call void @smscore_set_board_id(%struct.smscore_device_t* %62, i32 %63) #9, !dbg !5728
  %64 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5729
  %coredev44 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %64, i32 0, i32 1, !dbg !5730
  %65 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev44, align 8, !dbg !5730
  %is_usb_device = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %65, i32 0, i32 42, !dbg !5731
  store i8 1, i8* %is_usb_device, align 8, !dbg !5732
  store i32 0, i32* %i, align 4, !dbg !5733
  br label %for.cond45, !dbg !5735

for.cond45:                                       ; preds = %for.inc55, %if.end42
  %66 = load i32, i32* %i, align 4, !dbg !5736
  %cmp46 = icmp slt i32 %66, 10, !dbg !5738
  br i1 %cmp46, label %for.body48, label %for.end57, !dbg !5739

for.body48:                                       ; preds = %for.cond45
  %67 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5740
  %68 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5742
  %surbs = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %68, i32 0, i32 2, !dbg !5743
  %69 = load i32, i32* %i, align 4, !dbg !5744
  %idxprom49 = sext i32 %69 to i64, !dbg !5742
  %arrayidx50 = getelementptr [10 x %struct.smsusb_urb_t], [10 x %struct.smsusb_urb_t]* %surbs, i64 0, i64 %idxprom49, !dbg !5742
  %dev51 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %arrayidx50, i32 0, i32 2, !dbg !5745
  store %struct.smsusb_device_t* %67, %struct.smsusb_device_t** %dev51, align 8, !dbg !5746
  %70 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5747
  %surbs52 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %70, i32 0, i32 2, !dbg !5748
  %71 = load i32, i32* %i, align 4, !dbg !5749
  %idxprom53 = sext i32 %71 to i64, !dbg !5747
  %arrayidx54 = getelementptr [10 x %struct.smsusb_urb_t], [10 x %struct.smsusb_urb_t]* %surbs52, i64 0, i64 %idxprom53, !dbg !5747
  %urb = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %arrayidx54, i32 0, i32 3, !dbg !5750
  call void @usb_init_urb(%struct.urb* %urb) #9, !dbg !5751
  br label %for.inc55, !dbg !5752

for.inc55:                                        ; preds = %for.body48
  %72 = load i32, i32* %i, align 4, !dbg !5753
  %inc56 = add i32 %72, 1, !dbg !5753
  store i32 %inc56, i32* %i, align 4, !dbg !5753
  br label %for.cond45, !dbg !5754, !llvm.loop !5755

for.end57:                                        ; preds = %for.cond45
  store i32 0, i32* %tmp58, align 4, !dbg !5757
  %73 = load i32, i32* %tmp58, align 4, !dbg !5760
  %74 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5761
  %call59 = call i32 @smsusb_start_streaming(%struct.smsusb_device_t* %74) #9, !dbg !5762
  store i32 %call59, i32* %rc, align 4, !dbg !5763
  %75 = load i32, i32* %rc, align 4, !dbg !5764
  %cmp60 = icmp slt i32 %75, 0, !dbg !5766
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !5767

if.then62:                                        ; preds = %for.end57
  %call63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.smsusb_init_device, i64 0, i64 0)) #10, !dbg !5768
  %76 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5770
  call void @smsusb_term_device(%struct.usb_interface* %76) #9, !dbg !5771
  %77 = load i32, i32* %rc, align 4, !dbg !5772
  store i32 %77, i32* %retval, align 4, !dbg !5773
  br label %return, !dbg !5773

if.end64:                                         ; preds = %for.end57
  %78 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5774
  %state65 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %78, i32 0, i32 7, !dbg !5775
  store i32 2, i32* %state65, align 4, !dbg !5776
  %79 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !5777
  %coredev66 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %79, i32 0, i32 1, !dbg !5778
  %80 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev66, align 8, !dbg !5778
  %call67 = call i32 @smscore_start_device(%struct.smscore_device_t* %80) #9, !dbg !5779
  store i32 %call67, i32* %rc, align 4, !dbg !5780
  %81 = load i32, i32* %rc, align 4, !dbg !5781
  %cmp68 = icmp slt i32 %81, 0, !dbg !5783
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !5784

if.then70:                                        ; preds = %if.end64
  %call71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.smsusb_init_device, i64 0, i64 0)) #10, !dbg !5785
  %82 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5787
  call void @smsusb_term_device(%struct.usb_interface* %82) #9, !dbg !5788
  %83 = load i32, i32* %rc, align 4, !dbg !5789
  store i32 %83, i32* %retval, align 4, !dbg !5790
  br label %return, !dbg !5790

if.end72:                                         ; preds = %if.end64
  store i32 0, i32* %tmp73, align 4, !dbg !5791
  %84 = load i32, i32* %tmp73, align 4, !dbg !5794
  %85 = load i32, i32* %rc, align 4, !dbg !5795
  store i32 %85, i32* %retval, align 4, !dbg !5796
  br label %return, !dbg !5796

return:                                           ; preds = %if.end72, %if.then70, %if.then62, %if.then40, %if.then22, %if.then
  %86 = load i32, i32* %retval, align 4, !dbg !5797
  ret i32 %86, !dbg !5797
}

; Function Attrs: noredzone
declare dso_local i32 @sms_board_load_modules(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @sms_get_fw_name(i32 %mode, i32 %board_id) #2 !dbg !5798 {
entry:
  %mode.addr = alloca i32, align 4
  %board_id.addr = alloca i32, align 4
  %fw = alloca i8**, align 8
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  store i32 %board_id, i32* %board_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %board_id.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  call void @llvm.dbg.declare(metadata i8*** %fw, metadata !5805, metadata !DIExpression()), !dbg !5806
  %0 = load i32, i32* %board_id.addr, align 4, !dbg !5807
  %call = call %struct.sms_board* @sms_get_board(i32 %0) #9, !dbg !5808
  %fw1 = getelementptr inbounds %struct.sms_board, %struct.sms_board* %call, i32 0, i32 2, !dbg !5809
  %arraydecay = getelementptr inbounds [12 x i8*], [12 x i8*]* %fw1, i64 0, i64 0, !dbg !5808
  store i8** %arraydecay, i8*** %fw, align 8, !dbg !5806
  %1 = load i8**, i8*** %fw, align 8, !dbg !5810
  %tobool = icmp ne i8** %1, null, !dbg !5810
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !5811

land.lhs.true:                                    ; preds = %entry
  %2 = load i8**, i8*** %fw, align 8, !dbg !5812
  %3 = load i32, i32* %mode.addr, align 4, !dbg !5813
  %idxprom = sext i32 %3 to i64, !dbg !5812
  %arrayidx = getelementptr i8*, i8** %2, i64 %idxprom, !dbg !5812
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !5812
  %tobool2 = icmp ne i8* %4, null, !dbg !5812
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !5814

cond.true:                                        ; preds = %land.lhs.true
  %5 = load i8**, i8*** %fw, align 8, !dbg !5815
  %6 = load i32, i32* %mode.addr, align 4, !dbg !5816
  %idxprom3 = sext i32 %6 to i64, !dbg !5815
  %arrayidx4 = getelementptr i8*, i8** %5, i64 %idxprom3, !dbg !5815
  %7 = load i8*, i8** %arrayidx4, align 8, !dbg !5815
  br label %cond.end, !dbg !5814

cond.false:                                       ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %mode.addr, align 4, !dbg !5817
  %idxprom5 = sext i32 %8 to i64, !dbg !5818
  %arrayidx6 = getelementptr [5 x i8*], [5 x i8*]* @smsusb1_fw_lkup, i64 0, i64 %idxprom5, !dbg !5818
  %9 = load i8*, i8** %arrayidx6, align 8, !dbg !5818
  br label %cond.end, !dbg !5814

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %9, %cond.false ], !dbg !5814
  ret i8* %cond, !dbg !5819
}

; Function Attrs: noredzone
declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @release_firmware(%struct.firmware*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5820 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5824, metadata !DIExpression()), !dbg !5829
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5831, metadata !DIExpression()), !dbg !5832
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  %0 = load i64, i64* %size.addr, align 8, !dbg !5835
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5837
  br i1 %1, label %if.then, label %if.end447, !dbg !5838

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5839
  %tobool = icmp ne i64 %2, 0, !dbg !5839
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5842

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5843
  br label %return, !dbg !5843

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5844
  %cmp = icmp ult i64 %3, 4096, !dbg !5846
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5847

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub = sub i64 %4, 1, !dbg !5849
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5849
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5849

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub4 = sub i64 %6, 1, !dbg !5849
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5849
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5849

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub6 = sub i64 %8, 1, !dbg !5849
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5849
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5849

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5849

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub9 = sub i64 %9, 1, !dbg !5849
  %and = and i64 %sub9, -9223372036854775808, !dbg !5849
  %tobool10 = icmp ne i64 %and, 0, !dbg !5849
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5849

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5849

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub13 = sub i64 %10, 1, !dbg !5849
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5849
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5849
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5849

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5849

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub18 = sub i64 %11, 1, !dbg !5849
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5849
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5849
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5849

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5849

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub23 = sub i64 %12, 1, !dbg !5849
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5849
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5849
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5849

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5849

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub28 = sub i64 %13, 1, !dbg !5849
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5849
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5849
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5849

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5849

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub33 = sub i64 %14, 1, !dbg !5849
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5849
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5849
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5849

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5849

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub38 = sub i64 %15, 1, !dbg !5849
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5849
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5849
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5849

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5849

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub43 = sub i64 %16, 1, !dbg !5849
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5849
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5849
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5849

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5849

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub48 = sub i64 %17, 1, !dbg !5849
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5849
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5849
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5849

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5849

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub53 = sub i64 %18, 1, !dbg !5849
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5849
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5849
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5849

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5849

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub58 = sub i64 %19, 1, !dbg !5849
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5849
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5849
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5849

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5849

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub63 = sub i64 %20, 1, !dbg !5849
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5849
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5849
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5849

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5849

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub68 = sub i64 %21, 1, !dbg !5849
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5849
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5849
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5849

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5849

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub73 = sub i64 %22, 1, !dbg !5849
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5849
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5849
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5849

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5849

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub78 = sub i64 %23, 1, !dbg !5849
  %and79 = and i64 %sub78, 562949953421312, !dbg !5849
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5849
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5849

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5849

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub83 = sub i64 %24, 1, !dbg !5849
  %and84 = and i64 %sub83, 281474976710656, !dbg !5849
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5849
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5849

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5849

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub88 = sub i64 %25, 1, !dbg !5849
  %and89 = and i64 %sub88, 140737488355328, !dbg !5849
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5849
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5849

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5849

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub93 = sub i64 %26, 1, !dbg !5849
  %and94 = and i64 %sub93, 70368744177664, !dbg !5849
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5849
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5849

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5849

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub98 = sub i64 %27, 1, !dbg !5849
  %and99 = and i64 %sub98, 35184372088832, !dbg !5849
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5849
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5849

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5849

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub103 = sub i64 %28, 1, !dbg !5849
  %and104 = and i64 %sub103, 17592186044416, !dbg !5849
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5849
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5849

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5849

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub108 = sub i64 %29, 1, !dbg !5849
  %and109 = and i64 %sub108, 8796093022208, !dbg !5849
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5849
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5849

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5849

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub113 = sub i64 %30, 1, !dbg !5849
  %and114 = and i64 %sub113, 4398046511104, !dbg !5849
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5849
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5849

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5849

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub118 = sub i64 %31, 1, !dbg !5849
  %and119 = and i64 %sub118, 2199023255552, !dbg !5849
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5849
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5849

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5849

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub123 = sub i64 %32, 1, !dbg !5849
  %and124 = and i64 %sub123, 1099511627776, !dbg !5849
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5849
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5849

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5849

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub128 = sub i64 %33, 1, !dbg !5849
  %and129 = and i64 %sub128, 549755813888, !dbg !5849
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5849
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5849

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5849

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub133 = sub i64 %34, 1, !dbg !5849
  %and134 = and i64 %sub133, 274877906944, !dbg !5849
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5849
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5849

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5849

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub138 = sub i64 %35, 1, !dbg !5849
  %and139 = and i64 %sub138, 137438953472, !dbg !5849
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5849
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5849

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5849

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub143 = sub i64 %36, 1, !dbg !5849
  %and144 = and i64 %sub143, 68719476736, !dbg !5849
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5849
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5849

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5849

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub148 = sub i64 %37, 1, !dbg !5849
  %and149 = and i64 %sub148, 34359738368, !dbg !5849
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5849
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5849

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5849

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub153 = sub i64 %38, 1, !dbg !5849
  %and154 = and i64 %sub153, 17179869184, !dbg !5849
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5849
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5849

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5849

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub158 = sub i64 %39, 1, !dbg !5849
  %and159 = and i64 %sub158, 8589934592, !dbg !5849
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5849
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5849

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5849

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub163 = sub i64 %40, 1, !dbg !5849
  %and164 = and i64 %sub163, 4294967296, !dbg !5849
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5849
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5849

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5849

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub168 = sub i64 %41, 1, !dbg !5849
  %and169 = and i64 %sub168, 2147483648, !dbg !5849
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5849
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5849

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5849

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub173 = sub i64 %42, 1, !dbg !5849
  %and174 = and i64 %sub173, 1073741824, !dbg !5849
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5849
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5849

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5849

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub178 = sub i64 %43, 1, !dbg !5849
  %and179 = and i64 %sub178, 536870912, !dbg !5849
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5849
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5849

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5849

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub183 = sub i64 %44, 1, !dbg !5849
  %and184 = and i64 %sub183, 268435456, !dbg !5849
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5849
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5849

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5849

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub188 = sub i64 %45, 1, !dbg !5849
  %and189 = and i64 %sub188, 134217728, !dbg !5849
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5849
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5849

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5849

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub193 = sub i64 %46, 1, !dbg !5849
  %and194 = and i64 %sub193, 67108864, !dbg !5849
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5849
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5849

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5849

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub198 = sub i64 %47, 1, !dbg !5849
  %and199 = and i64 %sub198, 33554432, !dbg !5849
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5849
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5849

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5849

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub203 = sub i64 %48, 1, !dbg !5849
  %and204 = and i64 %sub203, 16777216, !dbg !5849
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5849
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5849

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5849

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub208 = sub i64 %49, 1, !dbg !5849
  %and209 = and i64 %sub208, 8388608, !dbg !5849
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5849
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5849

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5849

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub213 = sub i64 %50, 1, !dbg !5849
  %and214 = and i64 %sub213, 4194304, !dbg !5849
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5849
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5849

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5849

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub218 = sub i64 %51, 1, !dbg !5849
  %and219 = and i64 %sub218, 2097152, !dbg !5849
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5849
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5849

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5849

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub223 = sub i64 %52, 1, !dbg !5849
  %and224 = and i64 %sub223, 1048576, !dbg !5849
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5849
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5849

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5849

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub228 = sub i64 %53, 1, !dbg !5849
  %and229 = and i64 %sub228, 524288, !dbg !5849
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5849
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5849

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5849

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub233 = sub i64 %54, 1, !dbg !5849
  %and234 = and i64 %sub233, 262144, !dbg !5849
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5849
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5849

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5849

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub238 = sub i64 %55, 1, !dbg !5849
  %and239 = and i64 %sub238, 131072, !dbg !5849
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5849
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5849

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5849

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub243 = sub i64 %56, 1, !dbg !5849
  %and244 = and i64 %sub243, 65536, !dbg !5849
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5849
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5849

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5849

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub248 = sub i64 %57, 1, !dbg !5849
  %and249 = and i64 %sub248, 32768, !dbg !5849
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5849
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5849

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5849

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub253 = sub i64 %58, 1, !dbg !5849
  %and254 = and i64 %sub253, 16384, !dbg !5849
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5849
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5849

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5849

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub258 = sub i64 %59, 1, !dbg !5849
  %and259 = and i64 %sub258, 8192, !dbg !5849
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5849
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5849

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5849

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub263 = sub i64 %60, 1, !dbg !5849
  %and264 = and i64 %sub263, 4096, !dbg !5849
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5849
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5849

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5849

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub268 = sub i64 %61, 1, !dbg !5849
  %and269 = and i64 %sub268, 2048, !dbg !5849
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5849
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5849

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5849

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub273 = sub i64 %62, 1, !dbg !5849
  %and274 = and i64 %sub273, 1024, !dbg !5849
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5849
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5849

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5849

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub278 = sub i64 %63, 1, !dbg !5849
  %and279 = and i64 %sub278, 512, !dbg !5849
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5849
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5849

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5849

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub283 = sub i64 %64, 1, !dbg !5849
  %and284 = and i64 %sub283, 256, !dbg !5849
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5849
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5849

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5849

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub288 = sub i64 %65, 1, !dbg !5849
  %and289 = and i64 %sub288, 128, !dbg !5849
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5849
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5849

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5849

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub293 = sub i64 %66, 1, !dbg !5849
  %and294 = and i64 %sub293, 64, !dbg !5849
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5849
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5849

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5849

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub298 = sub i64 %67, 1, !dbg !5849
  %and299 = and i64 %sub298, 32, !dbg !5849
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5849
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5849

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5849

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub303 = sub i64 %68, 1, !dbg !5849
  %and304 = and i64 %sub303, 16, !dbg !5849
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5849
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5849

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5849

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub308 = sub i64 %69, 1, !dbg !5849
  %and309 = and i64 %sub308, 8, !dbg !5849
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5849
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5849

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5849

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub313 = sub i64 %70, 1, !dbg !5849
  %and314 = and i64 %sub313, 4, !dbg !5849
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5849
  %71 = zext i1 %tobool315 to i64, !dbg !5849
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5849
  br label %cond.end, !dbg !5849

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5849
  br label %cond.end317, !dbg !5849

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5849
  br label %cond.end319, !dbg !5849

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5849
  br label %cond.end321, !dbg !5849

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5849
  br label %cond.end323, !dbg !5849

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5849
  br label %cond.end325, !dbg !5849

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5849
  br label %cond.end327, !dbg !5849

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5849
  br label %cond.end329, !dbg !5849

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5849
  br label %cond.end331, !dbg !5849

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5849
  br label %cond.end333, !dbg !5849

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5849
  br label %cond.end335, !dbg !5849

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5849
  br label %cond.end337, !dbg !5849

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5849
  br label %cond.end339, !dbg !5849

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5849
  br label %cond.end341, !dbg !5849

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5849
  br label %cond.end343, !dbg !5849

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5849
  br label %cond.end345, !dbg !5849

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5849
  br label %cond.end347, !dbg !5849

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5849
  br label %cond.end349, !dbg !5849

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5849
  br label %cond.end351, !dbg !5849

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5849
  br label %cond.end353, !dbg !5849

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5849
  br label %cond.end355, !dbg !5849

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5849
  br label %cond.end357, !dbg !5849

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5849
  br label %cond.end359, !dbg !5849

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5849
  br label %cond.end361, !dbg !5849

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5849
  br label %cond.end363, !dbg !5849

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5849
  br label %cond.end365, !dbg !5849

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5849
  br label %cond.end367, !dbg !5849

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5849
  br label %cond.end369, !dbg !5849

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5849
  br label %cond.end371, !dbg !5849

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5849
  br label %cond.end373, !dbg !5849

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5849
  br label %cond.end375, !dbg !5849

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5849
  br label %cond.end377, !dbg !5849

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5849
  br label %cond.end379, !dbg !5849

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5849
  br label %cond.end381, !dbg !5849

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5849
  br label %cond.end383, !dbg !5849

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5849
  br label %cond.end385, !dbg !5849

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5849
  br label %cond.end387, !dbg !5849

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5849
  br label %cond.end389, !dbg !5849

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5849
  br label %cond.end391, !dbg !5849

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5849
  br label %cond.end393, !dbg !5849

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5849
  br label %cond.end395, !dbg !5849

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5849
  br label %cond.end397, !dbg !5849

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5849
  br label %cond.end399, !dbg !5849

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5849
  br label %cond.end401, !dbg !5849

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5849
  br label %cond.end403, !dbg !5849

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5849
  br label %cond.end405, !dbg !5849

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5849
  br label %cond.end407, !dbg !5849

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5849
  br label %cond.end409, !dbg !5849

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5849
  br label %cond.end411, !dbg !5849

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5849
  br label %cond.end413, !dbg !5849

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5849
  br label %cond.end415, !dbg !5849

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5849
  br label %cond.end417, !dbg !5849

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5849
  br label %cond.end419, !dbg !5849

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5849
  br label %cond.end421, !dbg !5849

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5849
  br label %cond.end423, !dbg !5849

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5849
  br label %cond.end425, !dbg !5849

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5849
  br label %cond.end427, !dbg !5849

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5849
  br label %cond.end429, !dbg !5849

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5849
  br label %cond.end431, !dbg !5849

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5849
  br label %cond.end433, !dbg !5849

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5849
  br label %cond.end435, !dbg !5849

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5849
  br label %cond.end437, !dbg !5849

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5849
  br label %cond.end440, !dbg !5849

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5849

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5849
  br label %cond.end444, !dbg !5849

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5849
  %sub443 = sub i64 %72, 1, !dbg !5849
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5849
  br label %cond.end444, !dbg !5849

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5849
  %sub446 = sub i32 %cond445, 12, !dbg !5850
  %add = add i32 %sub446, 1, !dbg !5851
  store i32 %add, i32* %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5853
  %dec = add i64 %73, -1, !dbg !5853
  store i64 %dec, i64* %size.addr, align 8, !dbg !5853
  %74 = load i64, i64* %size.addr, align 8, !dbg !5854
  %shr = lshr i64 %74, 12, !dbg !5854
  store i64 %shr, i64* %size.addr, align 8, !dbg !5854
  %75 = load i64, i64* %size.addr, align 8, !dbg !5855
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5832
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5856
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5857
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5856, !srcloc !5858
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5856
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5859
  %add.i = add i32 %79, 1, !dbg !5860
  store i32 %add.i, i32* %retval, align 4, !dbg !5861
  br label %return, !dbg !5861

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5862
  ret i32 %80, !dbg !5862
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5863 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5824, metadata !DIExpression()), !dbg !5867
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5831, metadata !DIExpression()), !dbg !5869
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load i64, i64* %n.addr, align 8, !dbg !5872
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5869
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5873
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5874
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5873, !srcloc !5858
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5873
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5875
  %add.i = add i32 %4, 1, !dbg !5876
  %sub = sub i32 %add.i, 1, !dbg !5877
  ret i32 %sub, !dbg !5878
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5879 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5887, metadata !DIExpression()), !dbg !5888
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5891
  ret i8* %0, !dbg !5892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5893 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5156, metadata !DIExpression()), !dbg !5894
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5168, metadata !DIExpression()), !dbg !5897
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5170, metadata !DIExpression()), !dbg !5898
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5172, metadata !DIExpression()), !dbg !5899
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5174, metadata !DIExpression()), !dbg !5900
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5180, metadata !DIExpression()), !dbg !5902
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5186, metadata !DIExpression()), !dbg !5904
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5195, metadata !DIExpression()), !dbg !5907
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5197, metadata !DIExpression()), !dbg !5908
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5199, metadata !DIExpression()), !dbg !5909
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5201, metadata !DIExpression()), !dbg !5910
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5203, metadata !DIExpression()), !dbg !5911
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5205, metadata !DIExpression()), !dbg !5912
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5207, metadata !DIExpression()), !dbg !5913
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5209, metadata !DIExpression()), !dbg !5914
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5915, metadata !DIExpression()), !dbg !5916
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load i64, i64* %size.addr, align 8, !dbg !5919
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5920
  %or = or i32 %1, 256, !dbg !5921
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5922
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5923
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5924

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5925
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5926
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5927

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5928
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5929
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5930
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5931
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5911
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5932
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5933
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5934
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5935
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5936
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5937
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5938
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5938
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5938
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5938
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5938
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5939
  br label %kmalloc.exit, !dbg !5939

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5940
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5941
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5941
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5942

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5943
  br label %kmalloc_index.exit.i, !dbg !5943

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5944
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5945
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5946

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5947
  br label %kmalloc_index.exit.i, !dbg !5947

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5948
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5949
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5950

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5951
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5952
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5953

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5954
  br label %kmalloc_index.exit.i, !dbg !5954

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5955
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5956
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5957

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5958
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5959
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5960

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5961
  br label %kmalloc_index.exit.i, !dbg !5961

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5962
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5963
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5964

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5965
  br label %kmalloc_index.exit.i, !dbg !5965

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5966
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5967
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5968

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5969
  br label %kmalloc_index.exit.i, !dbg !5969

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5970
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5971
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5972

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5973
  br label %kmalloc_index.exit.i, !dbg !5973

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5974
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5975
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5976

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5977
  br label %kmalloc_index.exit.i, !dbg !5977

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5978
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5979
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5980

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5981
  br label %kmalloc_index.exit.i, !dbg !5981

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5982
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5983
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5984

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5985
  br label %kmalloc_index.exit.i, !dbg !5985

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5986
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5987
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5988

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5989
  br label %kmalloc_index.exit.i, !dbg !5989

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5990
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5991
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5992

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5993
  br label %kmalloc_index.exit.i, !dbg !5993

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5994
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5995
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5996

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5997
  br label %kmalloc_index.exit.i, !dbg !5997

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5998
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5999
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6000

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6001
  br label %kmalloc_index.exit.i, !dbg !6001

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6002
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6003
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6004

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6005
  br label %kmalloc_index.exit.i, !dbg !6005

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6006
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6007
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6008

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6009
  br label %kmalloc_index.exit.i, !dbg !6009

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6010
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6011
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6012

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6013
  br label %kmalloc_index.exit.i, !dbg !6013

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6014
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6015
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6016

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6017
  br label %kmalloc_index.exit.i, !dbg !6017

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6018
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6019
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6020

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6021
  br label %kmalloc_index.exit.i, !dbg !6021

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6022
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6023
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6024

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6025
  br label %kmalloc_index.exit.i, !dbg !6025

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6026
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6027
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6028

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6029
  br label %kmalloc_index.exit.i, !dbg !6029

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6030
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6031
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6032

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6033
  br label %kmalloc_index.exit.i, !dbg !6033

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6034
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6035
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6036

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6037
  br label %kmalloc_index.exit.i, !dbg !6037

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6038
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6039
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6040

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6041
  br label %kmalloc_index.exit.i, !dbg !6041

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6042
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6043
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6044

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6045
  br label %kmalloc_index.exit.i, !dbg !6045

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6046
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6047
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6048

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6049
  br label %kmalloc_index.exit.i, !dbg !6049

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6050
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6051
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6052

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6053
  br label %kmalloc_index.exit.i, !dbg !6053

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6054
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6055
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6056

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6057
  br label %kmalloc_index.exit.i, !dbg !6057

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !6058, !srcloc !5457
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #11, !dbg !6059, !srcloc !5461
  unreachable, !dbg !6060

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6061
  store i32 %45, i32* %index.i, align 4, !dbg !6062
  %46 = load i32, i32* %index.i, align 4, !dbg !6063
  %tobool.i = icmp ne i32 %46, 0, !dbg !6063
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6064

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6065
  br label %kmalloc.exit, !dbg !6065

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6066
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6067
  %and.i.i = and i32 %48, 17, !dbg !6067
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6067
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6067
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6067
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6067
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6068

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6069
  br label %kmalloc_type.exit.i, !dbg !6069

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6070
  %and2.i.i = and i32 %49, 1, !dbg !6071
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6070
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6070
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6070
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6072
  br label %kmalloc_type.exit.i, !dbg !6072

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6073
  %idxprom.i = zext i32 %51 to i64, !dbg !6074
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6074
  %52 = load i32, i32* %index.i, align 4, !dbg !6075
  %idxprom6.i = zext i32 %52 to i64, !dbg !6074
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6074
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6074
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6076
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6077
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6078
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6079
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !6080
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6080
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6080
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6080
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !6080
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5899
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6081
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6082
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6083
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6084
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !6085
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6086
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6087
  store i8* %62, i8** %retval.i, align 8, !dbg !6088
  br label %kmalloc.exit, !dbg !6088

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6089
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6090
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !6091
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6091
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6091
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6091
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !6091
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6092
  br label %kmalloc.exit, !dbg !6092

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6093
  ret i8* %65, !dbg !6094
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !6095 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6100, metadata !DIExpression()), !dbg !6101
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6102
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6103
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6104
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !6105
  ret void, !dbg !6106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !6107 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !6114
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !6114
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !6114
  %conv = zext i16 %1 to i32, !dbg !6114
  %and = and i32 %conv, 2047, !dbg !6115
  ret i32 %and, !dbg !6116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @smsusb_term_device(%struct.usb_interface* %intf) #2 !dbg !6117 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.smsusb_device_t*, align 8
  %tmp = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev, metadata !6120, metadata !DIExpression()), !dbg !6121
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6122
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !6123
  %1 = bitcast i8* %call to %struct.smsusb_device_t*, !dbg !6123
  store %struct.smsusb_device_t* %1, %struct.smsusb_device_t** %dev, align 8, !dbg !6121
  %2 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6124
  %tobool = icmp ne %struct.smsusb_device_t* %2, null, !dbg !6124
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6126

if.then:                                          ; preds = %entry
  %3 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6127
  %state = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %3, i32 0, i32 7, !dbg !6129
  store i32 0, i32* %state, align 4, !dbg !6130
  %4 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6131
  call void @smsusb_stop_streaming(%struct.smsusb_device_t* %4) #9, !dbg !6132
  %5 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6133
  %coredev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %5, i32 0, i32 1, !dbg !6135
  %6 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev, align 8, !dbg !6135
  %tobool1 = icmp ne %struct.smscore_device_t* %6, null, !dbg !6133
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6136

if.then2:                                         ; preds = %if.then
  %7 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6137
  %coredev3 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %7, i32 0, i32 1, !dbg !6138
  %8 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev3, align 8, !dbg !6138
  call void @smscore_unregister_device(%struct.smscore_device_t* %8) #9, !dbg !6139
  br label %if.end, !dbg !6139

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !6140
  %9 = load i32, i32* %tmp, align 4, !dbg !6143
  %10 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6144
  %11 = bitcast %struct.smsusb_device_t* %10 to i8*, !dbg !6144
  call void @kfree(i8* %11) #9, !dbg !6145
  br label %if.end4, !dbg !6146

if.end4:                                          ; preds = %if.end, %entry
  %12 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6147
  call void @usb_set_intfdata(%struct.usb_interface* %12, i8* null) #9, !dbg !6148
  ret void, !dbg !6149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb1_setmode(i8* %context, i32 %mode) #2 !dbg !6150 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %msg = alloca %struct.sms_msg_hdr, align 2
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6151, metadata !DIExpression()), !dbg !6152
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  call void @llvm.dbg.declare(metadata %struct.sms_msg_hdr* %msg, metadata !6155, metadata !DIExpression()), !dbg !6156
  %0 = bitcast %struct.sms_msg_hdr* %msg to i8*, !dbg !6156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %0, i8* align 2 bitcast (%struct.sms_msg_hdr* @__const.smsusb1_setmode.msg to i8*), i64 8, i1 false), !dbg !6156
  %1 = load i32, i32* %mode.addr, align 4, !dbg !6157
  %cmp = icmp slt i32 %1, 0, !dbg !6159
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6160

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4, !dbg !6161
  %cmp1 = icmp sgt i32 %2, 4, !dbg !6162
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6163

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %mode.addr, align 4, !dbg !6164
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.smsusb1_setmode, i64 0, i64 0), i32 %3) #10, !dbg !6164
  store i32 -22, i32* %retval, align 4, !dbg !6166
  br label %return, !dbg !6166

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %context.addr, align 8, !dbg !6167
  %5 = bitcast %struct.sms_msg_hdr* %msg to i8*, !dbg !6168
  %call2 = call i32 @smsusb_sendrequest(i8* %4, i8* %5, i64 8) #9, !dbg !6169
  store i32 %call2, i32* %retval, align 4, !dbg !6170
  br label %return, !dbg !6170

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !6171
  ret i32 %6, !dbg !6171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @smsusb1_detectmode(i8* %context, i32* %mode) #2 !dbg !6172 {
entry:
  %context.addr = alloca i8*, align 8
  %mode.addr = alloca i32*, align 8
  %product_string = alloca i8*, align 8
  %tmp = alloca i32, align 4
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6173, metadata !DIExpression()), !dbg !6174
  store i32* %mode, i32** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mode.addr, metadata !6175, metadata !DIExpression()), !dbg !6176
  call void @llvm.dbg.declare(metadata i8** %product_string, metadata !6177, metadata !DIExpression()), !dbg !6178
  %0 = load i8*, i8** %context.addr, align 8, !dbg !6179
  %1 = bitcast i8* %0 to %struct.smsusb_device_t*, !dbg !6180
  %udev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %1, i32 0, i32 0, !dbg !6181
  %2 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6181
  %product = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 31, !dbg !6182
  %3 = load i8*, i8** %product, align 8, !dbg !6182
  store i8* %3, i8** %product_string, align 8, !dbg !6178
  %4 = load i32*, i32** %mode.addr, align 8, !dbg !6183
  store i32 -1, i32* %4, align 4, !dbg !6184
  %5 = load i8*, i8** %product_string, align 8, !dbg !6185
  %tobool = icmp ne i8* %5, null, !dbg !6185
  br i1 %tobool, label %if.else, label %if.then, !dbg !6187

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %product_string, align 8, !dbg !6188
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.smsusb1_detectmode, i64 0, i64 0)) #10, !dbg !6190
  br label %if.end19, !dbg !6191

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %product_string, align 8, !dbg !6192
  %call1 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !6194
  %tobool2 = icmp ne i8* %call1, null, !dbg !6194
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !6195

if.then3:                                         ; preds = %if.else
  %7 = load i32*, i32** %mode.addr, align 8, !dbg !6196
  store i32 1, i32* %7, align 4, !dbg !6197
  br label %if.end18, !dbg !6198

if.else4:                                         ; preds = %if.else
  %8 = load i8*, i8** %product_string, align 8, !dbg !6199
  %call5 = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !6201
  %tobool6 = icmp ne i8* %call5, null, !dbg !6201
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !6202

if.then7:                                         ; preds = %if.else4
  %9 = load i32*, i32** %mode.addr, align 8, !dbg !6203
  store i32 4, i32* %9, align 4, !dbg !6204
  br label %if.end17, !dbg !6205

if.else8:                                         ; preds = %if.else4
  %10 = load i8*, i8** %product_string, align 8, !dbg !6206
  %call9 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !6208
  %tobool10 = icmp ne i8* %call9, null, !dbg !6208
  br i1 %tobool10, label %if.then11, label %if.else12, !dbg !6209

if.then11:                                        ; preds = %if.else8
  %11 = load i32*, i32** %mode.addr, align 8, !dbg !6210
  store i32 0, i32* %11, align 4, !dbg !6211
  br label %if.end16, !dbg !6212

if.else12:                                        ; preds = %if.else8
  %12 = load i8*, i8** %product_string, align 8, !dbg !6213
  %call13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !6215
  %tobool14 = icmp ne i8* %call13, null, !dbg !6215
  br i1 %tobool14, label %if.then15, label %if.end, !dbg !6216

if.then15:                                        ; preds = %if.else12
  %13 = load i32*, i32** %mode.addr, align 8, !dbg !6217
  store i32 2, i32* %13, align 4, !dbg !6218
  br label %if.end, !dbg !6219

if.end:                                           ; preds = %if.then15, %if.else12
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then3
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !6220
  %14 = load i32, i32* %tmp, align 4, !dbg !6223
  ret void, !dbg !6224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_sendrequest(i8* %context, i8* %buffer, i64 %size) #2 !dbg !6225 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %dev = alloca %struct.smsusb_device_t*, align 8
  %phdr = alloca %struct.sms_msg_hdr*, align 8
  %dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !6228, metadata !DIExpression()), !dbg !6229
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6230, metadata !DIExpression()), !dbg !6231
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev, metadata !6232, metadata !DIExpression()), !dbg !6233
  %0 = load i8*, i8** %context.addr, align 8, !dbg !6234
  %1 = bitcast i8* %0 to %struct.smsusb_device_t*, !dbg !6235
  store %struct.smsusb_device_t* %1, %struct.smsusb_device_t** %dev, align 8, !dbg !6233
  call void @llvm.dbg.declare(metadata %struct.sms_msg_hdr** %phdr, metadata !6236, metadata !DIExpression()), !dbg !6237
  call void @llvm.dbg.declare(metadata i32* %dummy, metadata !6238, metadata !DIExpression()), !dbg !6239
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6240, metadata !DIExpression()), !dbg !6241
  %2 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6242
  %state = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %2, i32 0, i32 7, !dbg !6244
  %3 = load i32, i32* %state, align 4, !dbg !6244
  %cmp = icmp ne i32 %3, 2, !dbg !6245
  br i1 %cmp, label %if.then, label %if.end, !dbg !6246

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !6247
  %4 = load i32, i32* %tmp, align 4, !dbg !6251
  store i32 -2, i32* %retval, align 4, !dbg !6252
  br label %return, !dbg !6252

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %buffer.addr, align 8, !dbg !6253
  %6 = load i64, i64* %size.addr, align 8, !dbg !6254
  %call = call i8* @kmemdup(i8* %5, i64 %6, i32 3264) #9, !dbg !6255
  %7 = bitcast i8* %call to %struct.sms_msg_hdr*, !dbg !6255
  store %struct.sms_msg_hdr* %7, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6256
  %8 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6257
  %tobool = icmp ne %struct.sms_msg_hdr* %8, null, !dbg !6257
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6259

if.then1:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !6260
  br label %return, !dbg !6260

if.end2:                                          ; preds = %if.end
  store i32 0, i32* %tmp3, align 4, !dbg !6261
  %9 = load i32, i32* %tmp3, align 4, !dbg !6264
  %10 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6265
  %11 = bitcast %struct.sms_msg_hdr* %10 to %struct.sms_msg_data*, !dbg !6266
  %12 = bitcast %struct.sms_msg_data* %11 to i8*, !dbg !6266
  call void @smsendian_handle_tx_message(i8* %12) #9, !dbg !6267
  %13 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6268
  %14 = bitcast %struct.sms_msg_hdr* %13 to i8*, !dbg !6269
  call void @smsendian_handle_message_header(i8* %14) #9, !dbg !6270
  %15 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6271
  %udev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %15, i32 0, i32 0, !dbg !6272
  %16 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6272
  %17 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6273
  %udev4 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %17, i32 0, i32 0, !dbg !6273
  %18 = load %struct.usb_device*, %struct.usb_device** %udev4, align 8, !dbg !6273
  %call5 = call i32 @__create_pipe(%struct.usb_device* %18, i32 2) #9, !dbg !6273
  %or = or i32 -1073741824, %call5, !dbg !6273
  %19 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6274
  %20 = bitcast %struct.sms_msg_hdr* %19 to i8*, !dbg !6274
  %21 = load i64, i64* %size.addr, align 8, !dbg !6275
  %conv = trunc i64 %21 to i32, !dbg !6275
  %call6 = call i32 @usb_bulk_msg(%struct.usb_device* %16, i32 %or, i8* %20, i32 %conv, i32* %dummy, i32 1000) #9, !dbg !6276
  store i32 %call6, i32* %ret, align 4, !dbg !6277
  %22 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6278
  %23 = bitcast %struct.sms_msg_hdr* %22 to i8*, !dbg !6278
  call void @kfree(i8* %23) #9, !dbg !6279
  %24 = load i32, i32* %ret, align 4, !dbg !6280
  store i32 %24, i32* %retval, align 4, !dbg !6281
  br label %return, !dbg !6281

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !6282
  ret i32 %25, !dbg !6282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !6283 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !6286, metadata !DIExpression()), !dbg !6287
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6288, metadata !DIExpression()), !dbg !6289
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6290, metadata !DIExpression()), !dbg !6291
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !6292, metadata !DIExpression()), !dbg !6293
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !6294
  %1 = load i64, i64* %size.addr, align 8, !dbg !6295
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !6296
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !6297
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !6297
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !6298
  %4 = load i8*, i8** %bus_name, align 8, !dbg !6298
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !6299
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !6300
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !6299
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !6301
  store i32 %call, i32* %actual, align 4, !dbg !6302
  %6 = load i32, i32* %actual, align 4, !dbg !6303
  %7 = load i64, i64* %size.addr, align 8, !dbg !6304
  %conv = trunc i64 %7 to i32, !dbg !6305
  %cmp = icmp sge i32 %6, %conv, !dbg !6306
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6307

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6307

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !6308
  br label %cond.end, !dbg !6307

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !6307
  ret i32 %cond, !dbg !6309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @siano_media_device_register(%struct.smsusb_device_t* %dev, i32 %board_id) #2 !dbg !6310 {
entry:
  %dev.addr = alloca %struct.smsusb_device_t*, align 8
  %board_id.addr = alloca i32, align 4
  store %struct.smsusb_device_t* %dev, %struct.smsusb_device_t** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev.addr, metadata !6313, metadata !DIExpression()), !dbg !6314
  store i32 %board_id, i32* %board_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %board_id.addr, metadata !6315, metadata !DIExpression()), !dbg !6316
  ret i8* null, !dbg !6317
}

; Function Attrs: noredzone
declare dso_local i32 @smscore_register_device(%struct.smsdevice_params_t*, %struct.smscore_device_t**, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local void @smscore_set_board_id(%struct.smscore_device_t*, i32) #1

; Function Attrs: noredzone
declare dso_local void @usb_init_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_start_streaming(%struct.smsusb_device_t* %dev) #2 !dbg !6318 {
entry:
  %dev.addr = alloca %struct.smsusb_device_t*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.smsusb_device_t* %dev, %struct.smsusb_device_t** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6323, metadata !DIExpression()), !dbg !6324
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6325, metadata !DIExpression()), !dbg !6326
  store i32 0, i32* %i, align 4, !dbg !6327
  br label %for.cond, !dbg !6329

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6330
  %cmp = icmp slt i32 %0, 10, !dbg !6332
  br i1 %cmp, label %for.body, label %for.end, !dbg !6333

for.body:                                         ; preds = %for.cond
  %1 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6334
  %2 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6336
  %surbs = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %2, i32 0, i32 2, !dbg !6337
  %3 = load i32, i32* %i, align 4, !dbg !6338
  %idxprom = sext i32 %3 to i64, !dbg !6336
  %arrayidx = getelementptr [10 x %struct.smsusb_urb_t], [10 x %struct.smsusb_urb_t]* %surbs, i64 0, i64 %idxprom, !dbg !6336
  %call = call i32 @smsusb_submit_urb(%struct.smsusb_device_t* %1, %struct.smsusb_urb_t* %arrayidx) #9, !dbg !6339
  store i32 %call, i32* %rc, align 4, !dbg !6340
  %4 = load i32, i32* %rc, align 4, !dbg !6341
  %cmp1 = icmp slt i32 %4, 0, !dbg !6343
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6344

if.then:                                          ; preds = %for.body
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.smsusb_start_streaming, i64 0, i64 0)) #10, !dbg !6345
  %5 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6347
  call void @smsusb_stop_streaming(%struct.smsusb_device_t* %5) #9, !dbg !6348
  br label %for.end, !dbg !6349

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6350

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !6351
  %inc = add i32 %6, 1, !dbg !6351
  store i32 %inc, i32* %i, align 4, !dbg !6351
  br label %for.cond, !dbg !6352, !llvm.loop !6353

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %rc, align 4, !dbg !6355
  ret i32 %7, !dbg !6356
}

; Function Attrs: noredzone
declare dso_local i32 @smscore_start_device(%struct.smscore_device_t*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6357 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6360, metadata !DIExpression()), !dbg !6361
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6362, metadata !DIExpression()), !dbg !6363
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6364
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6365
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6366
  store i8* %0, i8** %driver_data, align 8, !dbg !6367
  ret void, !dbg !6368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6369 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6374
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6375
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6376
  ret i8* %call, !dbg !6377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @smsusb_stop_streaming(%struct.smsusb_device_t* %dev) #2 !dbg !6378 {
entry:
  %dev.addr = alloca %struct.smsusb_device_t*, align 8
  %i = alloca i32, align 4
  store %struct.smsusb_device_t* %dev, %struct.smsusb_device_t** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6383, metadata !DIExpression()), !dbg !6384
  store i32 0, i32* %i, align 4, !dbg !6385
  br label %for.cond, !dbg !6387

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6388
  %cmp = icmp slt i32 %0, 10, !dbg !6390
  br i1 %cmp, label %for.body, label %for.end, !dbg !6391

for.body:                                         ; preds = %for.cond
  %1 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6392
  %surbs = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %1, i32 0, i32 2, !dbg !6394
  %2 = load i32, i32* %i, align 4, !dbg !6395
  %idxprom = sext i32 %2 to i64, !dbg !6392
  %arrayidx = getelementptr [10 x %struct.smsusb_urb_t], [10 x %struct.smsusb_urb_t]* %surbs, i64 0, i64 %idxprom, !dbg !6392
  %urb = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %arrayidx, i32 0, i32 3, !dbg !6396
  call void @usb_kill_urb(%struct.urb* %urb) #9, !dbg !6397
  %3 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6398
  %surbs1 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %3, i32 0, i32 2, !dbg !6400
  %4 = load i32, i32* %i, align 4, !dbg !6401
  %idxprom2 = sext i32 %4 to i64, !dbg !6398
  %arrayidx3 = getelementptr [10 x %struct.smsusb_urb_t], [10 x %struct.smsusb_urb_t]* %surbs1, i64 0, i64 %idxprom2, !dbg !6398
  %cb = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %arrayidx3, i32 0, i32 1, !dbg !6402
  %5 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb, align 8, !dbg !6402
  %tobool = icmp ne %struct.smscore_buffer_t* %5, null, !dbg !6398
  br i1 %tobool, label %if.then, label %if.end, !dbg !6403

if.then:                                          ; preds = %for.body
  %6 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6404
  %coredev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %6, i32 0, i32 1, !dbg !6406
  %7 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev, align 8, !dbg !6406
  %8 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6407
  %surbs4 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %8, i32 0, i32 2, !dbg !6408
  %9 = load i32, i32* %i, align 4, !dbg !6409
  %idxprom5 = sext i32 %9 to i64, !dbg !6407
  %arrayidx6 = getelementptr [10 x %struct.smsusb_urb_t], [10 x %struct.smsusb_urb_t]* %surbs4, i64 0, i64 %idxprom5, !dbg !6407
  %cb7 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %arrayidx6, i32 0, i32 1, !dbg !6410
  %10 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb7, align 8, !dbg !6410
  call void @smscore_putbuffer(%struct.smscore_device_t* %7, %struct.smscore_buffer_t* %10) #9, !dbg !6411
  %11 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6412
  %surbs8 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %11, i32 0, i32 2, !dbg !6413
  %12 = load i32, i32* %i, align 4, !dbg !6414
  %idxprom9 = sext i32 %12 to i64, !dbg !6412
  %arrayidx10 = getelementptr [10 x %struct.smsusb_urb_t], [10 x %struct.smsusb_urb_t]* %surbs8, i64 0, i64 %idxprom9, !dbg !6412
  %cb11 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %arrayidx10, i32 0, i32 1, !dbg !6415
  store %struct.smscore_buffer_t* null, %struct.smscore_buffer_t** %cb11, align 8, !dbg !6416
  br label %if.end, !dbg !6417

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6418

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !6419
  %inc = add i32 %13, 1, !dbg !6419
  store i32 %inc, i32* %i, align 4, !dbg !6419
  br label %for.cond, !dbg !6420, !llvm.loop !6421

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6423
}

; Function Attrs: noredzone
declare dso_local void @smscore_unregister_device(%struct.smscore_device_t*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6424 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6427, metadata !DIExpression()), !dbg !6428
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6429
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6430
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6430
  ret i8* %1, !dbg !6431
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @smscore_putbuffer(%struct.smscore_device_t*, %struct.smscore_buffer_t*) #1

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #1

; Function Attrs: noredzone
declare dso_local void @smsendian_handle_tx_message(i8*) #1

; Function Attrs: noredzone
declare dso_local void @smsendian_handle_message_header(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @smsusb_submit_urb(%struct.smsusb_device_t* %dev, %struct.smsusb_urb_t* %surb) #2 !dbg !6432 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.smsusb_device_t*, align 8
  %surb.addr = alloca %struct.smsusb_urb_t*, align 8
  store %struct.smsusb_device_t* %dev, %struct.smsusb_device_t** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev.addr, metadata !6435, metadata !DIExpression()), !dbg !6436
  store %struct.smsusb_urb_t* %surb, %struct.smsusb_urb_t** %surb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.smsusb_urb_t** %surb.addr, metadata !6437, metadata !DIExpression()), !dbg !6438
  %0 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6439
  %cb = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %0, i32 0, i32 1, !dbg !6441
  %1 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb, align 8, !dbg !6441
  %tobool = icmp ne %struct.smscore_buffer_t* %1, null, !dbg !6439
  br i1 %tobool, label %if.end6, label %if.then, !dbg !6442

if.then:                                          ; preds = %entry
  %2 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6443
  %coredev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %2, i32 0, i32 1, !dbg !6445
  %3 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev, align 8, !dbg !6445
  %call = call %struct.smscore_buffer_t* @smscore_getbuffer(%struct.smscore_device_t* %3) #9, !dbg !6446
  %4 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6447
  %cb1 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %4, i32 0, i32 1, !dbg !6448
  store %struct.smscore_buffer_t* %call, %struct.smscore_buffer_t** %cb1, align 8, !dbg !6449
  %5 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6450
  %cb2 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %5, i32 0, i32 1, !dbg !6452
  %6 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb2, align 8, !dbg !6452
  %tobool3 = icmp ne %struct.smscore_buffer_t* %6, null, !dbg !6450
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6453

if.then4:                                         ; preds = %if.then
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.smsusb_submit_urb, i64 0, i64 0)) #10, !dbg !6454
  store i32 -12, i32* %retval, align 4, !dbg !6456
  br label %return, !dbg !6456

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !6457

if.end6:                                          ; preds = %if.end, %entry
  %7 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6458
  %urb = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %7, i32 0, i32 3, !dbg !6459
  %8 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6460
  %udev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %8, i32 0, i32 0, !dbg !6461
  %9 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6461
  %10 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6462
  %udev7 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %10, i32 0, i32 0, !dbg !6462
  %11 = load %struct.usb_device*, %struct.usb_device** %udev7, align 8, !dbg !6462
  %12 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6462
  %in_ep = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %12, i32 0, i32 5, !dbg !6462
  %13 = load i8, i8* %in_ep, align 8, !dbg !6462
  %conv = zext i8 %13 to i32, !dbg !6462
  %call8 = call i32 @__create_pipe(%struct.usb_device* %11, i32 %conv) #9, !dbg !6462
  %or = or i32 -1073741824, %call8, !dbg !6462
  %or9 = or i32 %or, 128, !dbg !6462
  %14 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6463
  %cb10 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %14, i32 0, i32 1, !dbg !6464
  %15 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb10, align 8, !dbg !6464
  %p = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %15, i32 0, i32 3, !dbg !6465
  %16 = load i8*, i8** %p, align 8, !dbg !6465
  %17 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev.addr, align 8, !dbg !6466
  %buffer_size = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %17, i32 0, i32 4, !dbg !6467
  %18 = load i32, i32* %buffer_size, align 4, !dbg !6467
  %19 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6468
  %20 = bitcast %struct.smsusb_urb_t* %19 to i8*, !dbg !6468
  call void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %9, i32 %or9, i8* %16, i32 %18, void (%struct.urb*)* @smsusb_onresponse, i8* %20) #9, !dbg !6469
  %21 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6470
  %urb11 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %21, i32 0, i32 3, !dbg !6471
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %urb11, i32 0, i32 13, !dbg !6472
  %22 = load i32, i32* %transfer_flags, align 4, !dbg !6473
  %or12 = or i32 %22, 256, !dbg !6473
  store i32 %or12, i32* %transfer_flags, align 4, !dbg !6473
  %23 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb.addr, align 8, !dbg !6474
  %urb13 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %23, i32 0, i32 3, !dbg !6475
  %call14 = call i32 @usb_submit_urb(%struct.urb* %urb13, i32 2592) #9, !dbg !6476
  store i32 %call14, i32* %retval, align 4, !dbg !6477
  br label %return, !dbg !6477

return:                                           ; preds = %if.end6, %if.then4
  %24 = load i32, i32* %retval, align 4, !dbg !6478
  ret i32 %24, !dbg !6478
}

; Function Attrs: noredzone
declare dso_local %struct.smscore_buffer_t* @smscore_getbuffer(%struct.smscore_device_t*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !6479 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6482, metadata !DIExpression()), !dbg !6483
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !6484, metadata !DIExpression()), !dbg !6485
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !6486, metadata !DIExpression()), !dbg !6487
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !6488, metadata !DIExpression()), !dbg !6489
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !6490, metadata !DIExpression()), !dbg !6491
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !6494, metadata !DIExpression()), !dbg !6495
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !6496
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6497
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !6498
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !6499
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !6500
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6501
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !6502
  store i32 %2, i32* %pipe2, align 8, !dbg !6503
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !6504
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6505
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !6506
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !6507
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !6508
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6509
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !6510
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !6511
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !6512
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6513
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !6514
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !6515
  %10 = load i8*, i8** %context.addr, align 8, !dbg !6516
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6517
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !6518
  store i8* %10, i8** %context4, align 8, !dbg !6519
  ret void, !dbg !6520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @smsusb_onresponse(%struct.urb* %urb) #2 !dbg !6521 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %surb = alloca %struct.smsusb_urb_t*, align 8
  %dev = alloca %struct.smsusb_device_t*, align 8
  %phdr = alloca %struct.sms_msg_hdr*, align 8
  %tmp = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !6522, metadata !DIExpression()), !dbg !6523
  call void @llvm.dbg.declare(metadata %struct.smsusb_urb_t** %surb, metadata !6524, metadata !DIExpression()), !dbg !6525
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6526
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !6527
  %1 = load i8*, i8** %context, align 8, !dbg !6527
  %2 = bitcast i8* %1 to %struct.smsusb_urb_t*, !dbg !6528
  store %struct.smsusb_urb_t* %2, %struct.smsusb_urb_t** %surb, align 8, !dbg !6525
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev, metadata !6529, metadata !DIExpression()), !dbg !6530
  %3 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6531
  %dev1 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %3, i32 0, i32 2, !dbg !6532
  %4 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev1, align 8, !dbg !6532
  store %struct.smsusb_device_t* %4, %struct.smsusb_device_t** %dev, align 8, !dbg !6530
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6533
  %status = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !6535
  %6 = load i32, i32* %status, align 8, !dbg !6535
  %cmp = icmp eq i32 %6, -108, !dbg !6536
  br i1 %cmp, label %if.then, label %if.end, !dbg !6537

if.then:                                          ; preds = %entry
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6538
  %status2 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 12, !dbg !6538
  %8 = load i32, i32* %status2, align 8, !dbg !6538
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6538
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 20, !dbg !6538
  %10 = load i32, i32* %actual_length, align 4, !dbg !6538
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.smsusb_onresponse, i64 0, i64 0), i32 %8, i32 %10) #10, !dbg !6538
  br label %return, !dbg !6540

if.end:                                           ; preds = %entry
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6541
  %actual_length3 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 20, !dbg !6543
  %12 = load i32, i32* %actual_length3, align 4, !dbg !6543
  %cmp4 = icmp ugt i32 %12, 0, !dbg !6544
  br i1 %cmp4, label %land.lhs.true, label %if.else53, !dbg !6545

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6546
  %status5 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 12, !dbg !6547
  %14 = load i32, i32* %status5, align 8, !dbg !6547
  %cmp6 = icmp eq i32 %14, 0, !dbg !6548
  br i1 %cmp6, label %if.then7, label %if.else53, !dbg !6549

if.then7:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.sms_msg_hdr** %phdr, metadata !6550, metadata !DIExpression()), !dbg !6552
  %15 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6553
  %cb = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %15, i32 0, i32 1, !dbg !6554
  %16 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb, align 8, !dbg !6554
  %p = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %16, i32 0, i32 3, !dbg !6555
  %17 = load i8*, i8** %p, align 8, !dbg !6555
  %18 = bitcast i8* %17 to %struct.sms_msg_hdr*, !dbg !6556
  store %struct.sms_msg_hdr* %18, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6552
  %19 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6557
  %20 = bitcast %struct.sms_msg_hdr* %19 to i8*, !dbg !6557
  call void @smsendian_handle_message_header(i8* %20) #9, !dbg !6558
  %21 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6559
  %actual_length8 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 20, !dbg !6561
  %22 = load i32, i32* %actual_length8, align 4, !dbg !6561
  %23 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6562
  %msg_length = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %23, i32 0, i32 3, !dbg !6563
  %24 = load i16, i16* %msg_length, align 2, !dbg !6563
  %conv = zext i16 %24 to i32, !dbg !6562
  %cmp9 = icmp uge i32 %22, %conv, !dbg !6564
  br i1 %cmp9, label %if.then11, label %if.else47, !dbg !6565

if.then11:                                        ; preds = %if.then7
  %25 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6566
  %msg_length12 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %25, i32 0, i32 3, !dbg !6568
  %26 = load i16, i16* %msg_length12, align 2, !dbg !6568
  %conv13 = zext i16 %26 to i32, !dbg !6566
  %27 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6569
  %cb14 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %27, i32 0, i32 1, !dbg !6570
  %28 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb14, align 8, !dbg !6570
  %size = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %28, i32 0, i32 1, !dbg !6571
  store i32 %conv13, i32* %size, align 8, !dbg !6572
  %29 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6573
  %response_alignment = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %29, i32 0, i32 3, !dbg !6575
  %30 = load i32, i32* %response_alignment, align 8, !dbg !6575
  %tobool = icmp ne i32 %30, 0, !dbg !6573
  br i1 %tobool, label %land.lhs.true15, label %if.else, !dbg !6576

land.lhs.true15:                                  ; preds = %if.then11
  %31 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6577
  %msg_flags = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %31, i32 0, i32 4, !dbg !6578
  %32 = load i16, i16* %msg_flags, align 2, !dbg !6578
  %conv16 = zext i16 %32 to i32, !dbg !6577
  %and = and i32 %conv16, 4, !dbg !6579
  %tobool17 = icmp ne i32 %and, 0, !dbg !6579
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !6580

if.then18:                                        ; preds = %land.lhs.true15
  %33 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6581
  %response_alignment19 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %33, i32 0, i32 3, !dbg !6583
  %34 = load i32, i32* %response_alignment19, align 8, !dbg !6583
  %35 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6584
  %msg_flags20 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %35, i32 0, i32 4, !dbg !6585
  %36 = load i16, i16* %msg_flags20, align 2, !dbg !6585
  %conv21 = zext i16 %36 to i32, !dbg !6584
  %shr = ashr i32 %conv21, 8, !dbg !6586
  %and22 = and i32 %shr, 3, !dbg !6587
  %add = add i32 %34, %and22, !dbg !6588
  %37 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6589
  %cb23 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %37, i32 0, i32 1, !dbg !6590
  %38 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb23, align 8, !dbg !6590
  %offset = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %38, i32 0, i32 2, !dbg !6591
  store i32 %add, i32* %offset, align 4, !dbg !6592
  %39 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6593
  %msg_length24 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %39, i32 0, i32 3, !dbg !6595
  %40 = load i16, i16* %msg_length24, align 2, !dbg !6595
  %conv25 = zext i16 %40 to i32, !dbg !6596
  %41 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6597
  %cb26 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %41, i32 0, i32 1, !dbg !6598
  %42 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb26, align 8, !dbg !6598
  %offset27 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %42, i32 0, i32 2, !dbg !6599
  %43 = load i32, i32* %offset27, align 4, !dbg !6599
  %add28 = add i32 %conv25, %43, !dbg !6600
  %44 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6601
  %actual_length29 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 20, !dbg !6602
  %45 = load i32, i32* %actual_length29, align 4, !dbg !6602
  %cmp30 = icmp ugt i32 %add28, %45, !dbg !6603
  br i1 %cmp30, label %if.then32, label %if.end39, !dbg !6604

if.then32:                                        ; preds = %if.then18
  %46 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6605
  %msg_length33 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %46, i32 0, i32 3, !dbg !6605
  %47 = load i16, i16* %msg_length33, align 2, !dbg !6605
  %conv34 = zext i16 %47 to i32, !dbg !6605
  %48 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6605
  %cb35 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %48, i32 0, i32 1, !dbg !6605
  %49 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb35, align 8, !dbg !6605
  %offset36 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %49, i32 0, i32 2, !dbg !6605
  %50 = load i32, i32* %offset36, align 4, !dbg !6605
  %51 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6605
  %actual_length37 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 20, !dbg !6605
  %52 = load i32, i32* %actual_length37, align 4, !dbg !6605
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.smsusb_onresponse, i64 0, i64 0), i32 %conv34, i32 %50, i32 %52) #10, !dbg !6605
  br label %exit_and_resubmit, !dbg !6607

if.end39:                                         ; preds = %if.then18
  %53 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6608
  %54 = bitcast %struct.sms_msg_hdr* %53 to i8*, !dbg !6609
  %55 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6610
  %cb40 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %55, i32 0, i32 1, !dbg !6611
  %56 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb40, align 8, !dbg !6611
  %offset41 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %56, i32 0, i32 2, !dbg !6612
  %57 = load i32, i32* %offset41, align 4, !dbg !6612
  %idx.ext = sext i32 %57 to i64, !dbg !6613
  %add.ptr = getelementptr i8, i8* %54, i64 %idx.ext, !dbg !6613
  %58 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6614
  %59 = bitcast %struct.sms_msg_hdr* %58 to i8*, !dbg !6615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 2 %59, i64 8, i1 false), !dbg !6615
  br label %if.end44, !dbg !6616

if.else:                                          ; preds = %land.lhs.true15, %if.then11
  %60 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6617
  %cb42 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %60, i32 0, i32 1, !dbg !6618
  %61 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb42, align 8, !dbg !6618
  %offset43 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %61, i32 0, i32 2, !dbg !6619
  store i32 0, i32* %offset43, align 4, !dbg !6620
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end39
  store i32 0, i32* %tmp, align 4, !dbg !6621
  %62 = load i32, i32* %tmp, align 4, !dbg !6624
  %63 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6625
  %64 = bitcast %struct.sms_msg_hdr* %63 to %struct.sms_msg_data*, !dbg !6626
  %65 = bitcast %struct.sms_msg_data* %64 to i8*, !dbg !6626
  call void @smsendian_handle_rx_message(i8* %65) #9, !dbg !6627
  %66 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6628
  %coredev = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %66, i32 0, i32 1, !dbg !6629
  %67 = load %struct.smscore_device_t*, %struct.smscore_device_t** %coredev, align 8, !dbg !6629
  %68 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6630
  %cb45 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %68, i32 0, i32 1, !dbg !6631
  %69 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %cb45, align 8, !dbg !6631
  call void @smscore_onresponse(%struct.smscore_device_t* %67, %struct.smscore_buffer_t* %69) #9, !dbg !6632
  %70 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6633
  %cb46 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %70, i32 0, i32 1, !dbg !6634
  store %struct.smscore_buffer_t* null, %struct.smscore_buffer_t** %cb46, align 8, !dbg !6635
  br label %if.end52, !dbg !6636

if.else47:                                        ; preds = %if.then7
  %71 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %phdr, align 8, !dbg !6637
  %msg_length48 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %71, i32 0, i32 3, !dbg !6637
  %72 = load i16, i16* %msg_length48, align 2, !dbg !6637
  %conv49 = zext i16 %72 to i32, !dbg !6637
  %73 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6637
  %actual_length50 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 20, !dbg !6637
  %74 = load i32, i32* %actual_length50, align 4, !dbg !6637
  %call51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.smsusb_onresponse, i64 0, i64 0), i32 %conv49, i32 %74) #10, !dbg !6637
  br label %if.end52

if.end52:                                         ; preds = %if.else47, %if.end44
  br label %if.end57, !dbg !6639

if.else53:                                        ; preds = %land.lhs.true, %if.end
  %75 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6640
  %status54 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 12, !dbg !6640
  %76 = load i32, i32* %status54, align 8, !dbg !6640
  %77 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !6640
  %actual_length55 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 20, !dbg !6640
  %78 = load i32, i32* %actual_length55, align 4, !dbg !6640
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.smsusb_onresponse, i64 0, i64 0), i32 %76, i32 %78) #10, !dbg !6640
  br label %if.end57

if.end57:                                         ; preds = %if.else53, %if.end52
  br label %exit_and_resubmit, !dbg !6641

exit_and_resubmit:                                ; preds = %if.end57, %if.then32
  call void @llvm.dbg.label(metadata !6642), !dbg !6643
  br label %do.body, !dbg !6644

do.body:                                          ; preds = %exit_and_resubmit
  %79 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6645
  %wq = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %79, i32 0, i32 4, !dbg !6645
  call void @__init_work(%struct.work_struct* %wq, i32 0) #9, !dbg !6645
  %80 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6645
  %wq58 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %80, i32 0, i32 4, !dbg !6645
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %wq58, i32 0, i32 0, !dbg !6645
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !6645
  store i64 68719476704, i64* %counter, align 8, !dbg !6645
  %81 = bitcast %struct.atomic64_t* %data to i8*, !dbg !6645
  %82 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !6645
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false), !dbg !6645
  %83 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6645
  %wq59 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %83, i32 0, i32 4, !dbg !6645
  %entry60 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %wq59, i32 0, i32 1, !dbg !6645
  call void @INIT_LIST_HEAD(%struct.list_head* %entry60) #9, !dbg !6645
  %84 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6645
  %wq61 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %84, i32 0, i32 4, !dbg !6645
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %wq61, i32 0, i32 2, !dbg !6645
  store void (%struct.work_struct*)* @do_submit_urb, void (%struct.work_struct*)** %func, align 8, !dbg !6645
  br label %do.end, !dbg !6645

do.end:                                           ; preds = %do.body
  %85 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6647
  %wq62 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %85, i32 0, i32 4, !dbg !6648
  %call63 = call zeroext i1 @schedule_work(%struct.work_struct* %wq62) #9, !dbg !6649
  br label %return, !dbg !6650

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !6650
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noredzone
declare dso_local void @smsendian_handle_rx_message(i8*) #1

; Function Attrs: noredzone
declare dso_local void @smscore_onresponse(%struct.smscore_device_t*, %struct.smscore_buffer_t*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !6651 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6654, metadata !DIExpression()), !dbg !6655
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !6656, metadata !DIExpression()), !dbg !6657
  ret void, !dbg !6658
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !6659 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6663, metadata !DIExpression()), !dbg !6664
  br label %do.body, !dbg !6665

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6666

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6668

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6666

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6670
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6670
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6670
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !6670
  br label %do.end3, !dbg !6670

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6666

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6672
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6673
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !6674
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !6675
  ret void, !dbg !6676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @do_submit_urb(%struct.work_struct* %work) #2 !dbg !6677 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %surb = alloca %struct.smsusb_urb_t*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.smsusb_urb_t*, align 8
  %dev = alloca %struct.smsusb_device_t*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6678, metadata !DIExpression()), !dbg !6679
  call void @llvm.dbg.declare(metadata %struct.smsusb_urb_t** %surb, metadata !6680, metadata !DIExpression()), !dbg !6681
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6682, metadata !DIExpression()), !dbg !6684
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6684
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !6684
  store i8* %1, i8** %__mptr, align 8, !dbg !6684
  br label %do.body, !dbg !6684

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6685

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6684
  %add.ptr = getelementptr i8, i8* %2, i64 -216, !dbg !6684
  %3 = bitcast i8* %add.ptr to %struct.smsusb_urb_t*, !dbg !6684
  store %struct.smsusb_urb_t* %3, %struct.smsusb_urb_t** %tmp, align 8, !dbg !6685
  %4 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %tmp, align 8, !dbg !6684
  store %struct.smsusb_urb_t* %4, %struct.smsusb_urb_t** %surb, align 8, !dbg !6681
  call void @llvm.dbg.declare(metadata %struct.smsusb_device_t** %dev, metadata !6687, metadata !DIExpression()), !dbg !6688
  %5 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6689
  %dev1 = getelementptr inbounds %struct.smsusb_urb_t, %struct.smsusb_urb_t* %5, i32 0, i32 2, !dbg !6690
  %6 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev1, align 8, !dbg !6690
  store %struct.smsusb_device_t* %6, %struct.smsusb_device_t** %dev, align 8, !dbg !6688
  %7 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %dev, align 8, !dbg !6691
  %8 = load %struct.smsusb_urb_t*, %struct.smsusb_urb_t** %surb, align 8, !dbg !6692
  %call = call i32 @smsusb_submit_urb(%struct.smsusb_device_t* %7, %struct.smsusb_urb_t* %8) #9, !dbg !6693
  ret void, !dbg !6694
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #2 !dbg !6695 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6698, metadata !DIExpression()), !dbg !6699
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !6700
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6701
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !6702
  ret i1 %call, !dbg !6703
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #2 !dbg !6704 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !6707, metadata !DIExpression()), !dbg !6708
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6709, metadata !DIExpression()), !dbg !6710
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !6711
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6712
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !6713
  ret i1 %call, !dbg !6714
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

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
!llvm.module.flags = !{!4852, !4853, !4854, !4855}
!llvm.ident = !{!4856}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_smsusb_driver_init245", scope: !2, file: !3, line: 727, type: !249, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !245, globals: !4757, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/usb/siano/smsusb.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !112, !121, !126, !144, !151, !165, !196, !202, !207, !212}
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
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SMS_DEVICE_MODE", file: !127, line: 597, baseType: !128, size: 32, elements: !129)
!127 = !DIFile(filename: "./drivers/media/common/siano/smscoreapi.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!130 = !DIEnumerator(name: "DEVICE_MODE_NONE", value: -1)
!131 = !DIEnumerator(name: "DEVICE_MODE_DVBT", value: 0)
!132 = !DIEnumerator(name: "DEVICE_MODE_DVBH", value: 1)
!133 = !DIEnumerator(name: "DEVICE_MODE_DAB_TDMB", value: 2)
!134 = !DIEnumerator(name: "DEVICE_MODE_DAB_TDMB_DABIP", value: 3)
!135 = !DIEnumerator(name: "DEVICE_MODE_DVBT_BDA", value: 4)
!136 = !DIEnumerator(name: "DEVICE_MODE_ISDBT", value: 5)
!137 = !DIEnumerator(name: "DEVICE_MODE_ISDBT_BDA", value: 6)
!138 = !DIEnumerator(name: "DEVICE_MODE_CMMB", value: 7)
!139 = !DIEnumerator(name: "DEVICE_MODE_RAW_TUNER", value: 8)
!140 = !DIEnumerator(name: "DEVICE_MODE_FM_RADIO", value: 9)
!141 = !DIEnumerator(name: "DEVICE_MODE_FM_RADIO_BDA", value: 10)
!142 = !DIEnumerator(name: "DEVICE_MODE_ATSC", value: 11)
!143 = !DIEnumerator(name: "DEVICE_MODE_MAX", value: 12)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !145, line: 305, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!150 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sms_device_type_st", file: !127, line: 75, baseType: !128, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!153 = !DIEnumerator(name: "SMS_UNKNOWN_TYPE", value: -1)
!154 = !DIEnumerator(name: "SMS_STELLAR", value: 0)
!155 = !DIEnumerator(name: "SMS_NOVA_A0", value: 1)
!156 = !DIEnumerator(name: "SMS_NOVA_B0", value: 2)
!157 = !DIEnumerator(name: "SMS_VEGA", value: 3)
!158 = !DIEnumerator(name: "SMS_VENICE", value: 4)
!159 = !DIEnumerator(name: "SMS_MING", value: 5)
!160 = !DIEnumerator(name: "SMS_PELE", value: 6)
!161 = !DIEnumerator(name: "SMS_RIO", value: 7)
!162 = !DIEnumerator(name: "SMS_DENVER_1530", value: 8)
!163 = !DIEnumerator(name: "SMS_DENVER_2160", value: 9)
!164 = !DIEnumerator(name: "SMS_NUM_OF_DEVICE_TYPES", value: 10)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_proto", file: !166, line: 200, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/uapi/linux/lirc.h", directory: "/home/lizy2001/genbc/linux")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!168 = !DIEnumerator(name: "RC_PROTO_UNKNOWN", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "RC_PROTO_OTHER", value: 1, isUnsigned: true)
!170 = !DIEnumerator(name: "RC_PROTO_RC5", value: 2, isUnsigned: true)
!171 = !DIEnumerator(name: "RC_PROTO_RC5X_20", value: 3, isUnsigned: true)
!172 = !DIEnumerator(name: "RC_PROTO_RC5_SZ", value: 4, isUnsigned: true)
!173 = !DIEnumerator(name: "RC_PROTO_JVC", value: 5, isUnsigned: true)
!174 = !DIEnumerator(name: "RC_PROTO_SONY12", value: 6, isUnsigned: true)
!175 = !DIEnumerator(name: "RC_PROTO_SONY15", value: 7, isUnsigned: true)
!176 = !DIEnumerator(name: "RC_PROTO_SONY20", value: 8, isUnsigned: true)
!177 = !DIEnumerator(name: "RC_PROTO_NEC", value: 9, isUnsigned: true)
!178 = !DIEnumerator(name: "RC_PROTO_NECX", value: 10, isUnsigned: true)
!179 = !DIEnumerator(name: "RC_PROTO_NEC32", value: 11, isUnsigned: true)
!180 = !DIEnumerator(name: "RC_PROTO_SANYO", value: 12, isUnsigned: true)
!181 = !DIEnumerator(name: "RC_PROTO_MCIR2_KBD", value: 13, isUnsigned: true)
!182 = !DIEnumerator(name: "RC_PROTO_MCIR2_MSE", value: 14, isUnsigned: true)
!183 = !DIEnumerator(name: "RC_PROTO_RC6_0", value: 15, isUnsigned: true)
!184 = !DIEnumerator(name: "RC_PROTO_RC6_6A_20", value: 16, isUnsigned: true)
!185 = !DIEnumerator(name: "RC_PROTO_RC6_6A_24", value: 17, isUnsigned: true)
!186 = !DIEnumerator(name: "RC_PROTO_RC6_6A_32", value: 18, isUnsigned: true)
!187 = !DIEnumerator(name: "RC_PROTO_RC6_MCE", value: 19, isUnsigned: true)
!188 = !DIEnumerator(name: "RC_PROTO_SHARP", value: 20, isUnsigned: true)
!189 = !DIEnumerator(name: "RC_PROTO_XMP", value: 21, isUnsigned: true)
!190 = !DIEnumerator(name: "RC_PROTO_CEC", value: 22, isUnsigned: true)
!191 = !DIEnumerator(name: "RC_PROTO_IMON", value: 23, isUnsigned: true)
!192 = !DIEnumerator(name: "RC_PROTO_RCMM12", value: 24, isUnsigned: true)
!193 = !DIEnumerator(name: "RC_PROTO_RCMM24", value: 25, isUnsigned: true)
!194 = !DIEnumerator(name: "RC_PROTO_RCMM32", value: 26, isUnsigned: true)
!195 = !DIEnumerator(name: "RC_PROTO_XBOX_DVD", value: 27, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rc_driver_type", file: !197, line: 27, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/media/rc-core.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !200, !201}
!199 = !DIEnumerator(name: "RC_DRIVER_SCANCODE", value: 0, isUnsigned: true)
!200 = !DIEnumerator(name: "RC_DRIVER_IR_RAW", value: 1, isUnsigned: true)
!201 = !DIEnumerator(name: "RC_DRIVER_IR_RAW_TX", value: 2, isUnsigned: true)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "smsusb_state", file: !3, line: 32, baseType: !7, size: 32, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "SMSUSB_DISCONNECTED", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "SMSUSB_SUSPENDED", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "SMSUSB_ACTIVE", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 10, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!209 = !{!210, !211}
!210 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!211 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 30, baseType: !214, size: 64, elements: !215)
!213 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!214 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!216 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!217 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!218 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!219 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!220 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!221 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!222 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!223 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!224 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!225 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!226 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!227 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!228 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!229 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!230 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!231 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!232 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!233 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!234 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!235 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!236 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!237 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!238 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!239 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!240 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!241 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!242 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!243 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!244 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!245 = !{!246, !249, !250, !813, !930, !3938, !4186, !4740, !4753, !128, !4754, !348, !397, !4755}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !248, line: 76, flags: DIFlagFwdDecl)
!248 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !252)
!252 = !{!253, !254, !259, !264, !265, !266, !267, !268, !271, !272, !276, !277, !3927, !3968, !3969, !3986, !4047, !4129, !4130, !4132, !4133, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4168, !4169, !4170, !4175, !4182, !4183, !4184, !4185}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !251, file: !6, line: 632, baseType: !128, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !251, file: !6, line: 633, baseType: !255, size: 128, offset: 32)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !257)
!256 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!257 = !{!258}
!258 = !DISubrange(count: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !251, file: !6, line: 634, baseType: !260, size: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !261, line: 21, baseType: !262)
!261 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !263, line: 27, baseType: !7)
!263 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !251, file: !6, line: 635, baseType: !100, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !251, file: !6, line: 636, baseType: !112, size: 32, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !251, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !251, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !251, file: !6, line: 640, baseType: !269, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !251, file: !6, line: 641, baseType: !128, size: 32, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !251, file: !6, line: 643, baseType: !273, size: 64, offset: 416)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 2)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !251, file: !6, line: 645, baseType: !250, size: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !251, file: !6, line: 646, baseType: !278, size: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !280)
!280 = !{!281, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3921, !3922, !3923, !3924, !3925, !3926}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !279, file: !6, line: 425, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !284)
!284 = !{!285, !3458, !3459, !3462, !3463, !3514, !3605, !3606, !3607, !3608, !3609, !3618, !3723, !3736, !3739, !3740, !3744, !3746, !3747, !3748, !3752, !3758, !3759, !3762, !3766, !3856, !3857, !3858, !3859, !3860, !3892, !3893, !3894, !3897, !3900, !3901, !3902, !3903}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !80, line: 462, baseType: !286, size: 512)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !287, line: 64, size: 512, elements: !288)
!287 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!288 = !{!289, !292, !299, !301, !361, !3309, !3448, !3453, !3454, !3455, !3456, !3457}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !287, line: 65, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !286, file: !287, line: 66, baseType: !293, size: 128, offset: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !294, line: 178, size: 128, elements: !295)
!294 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !294, line: 179, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !293, file: !294, line: 179, baseType: !297, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !287, line: 67, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !286, file: !287, line: 68, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !287, line: 192, size: 704, elements: !304)
!304 = !{!305, !306, !322, !323}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !287, line: 193, baseType: !293, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !303, file: !287, line: 194, baseType: !307, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !308, line: 83, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !308, line: 71, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 72, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 72, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !312, file: !308, line: 73, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !308, line: 20, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !315, file: !308, line: 21, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !319, line: 25, baseType: !320)
!319 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 25, elements: !321)
!321 = !{}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !303, file: !287, line: 195, baseType: !286, size: 512, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !303, file: !287, line: 196, baseType: !324, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !287, line: 156, size: 192, elements: !327)
!327 = !{!328, !333, !338}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !326, file: !287, line: 157, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!128, !302, !300}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !326, file: !287, line: 158, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!290, !302, !300}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !326, file: !287, line: 159, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!128, !302, !300, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !287, line: 148, size: 20736, elements: !345)
!345 = !{!346, !351, !355, !356, !360}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !344, file: !287, line: 149, baseType: !347, size: 192)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 192, elements: !349)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!349 = !{!350}
!350 = !DISubrange(count: 3)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !344, file: !287, line: 150, baseType: !352, size: 4096, offset: 192)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 4096, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !344, file: !287, line: 151, baseType: !128, size: 32, offset: 4288)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !344, file: !287, line: 152, baseType: !357, size: 16384, offset: 4320)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 16384, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 2048)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !344, file: !287, line: 153, baseType: !128, size: 32, offset: 20704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !286, file: !287, line: 69, baseType: !362, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !287, line: 138, size: 448, elements: !364)
!364 = !{!365, !369, !398, !400, !3271, !3299, !3303}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !363, file: !287, line: 139, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !300}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !363, file: !287, line: 140, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !373, line: 230, size: 128, elements: !374)
!373 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!374 = !{!375, !390}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !372, file: !373, line: 231, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !300, !383, !348}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !294, line: 60, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !381, line: 73, baseType: !382)
!381 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !381, line: 15, baseType: !214)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !373, line: 30, size: 128, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !373, line: 31, baseType: !290, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !384, file: !373, line: 32, baseType: !388, size: 16, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !294, line: 19, baseType: !389)
!389 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !372, file: !373, line: 232, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!379, !300, !383, !290, !394}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !294, line: 55, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !381, line: 72, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !381, line: 16, baseType: !397)
!397 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !363, file: !287, line: 141, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !363, file: !287, line: 142, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !373, line: 84, size: 320, elements: !405)
!405 = !{!406, !407, !411, !3268, !3269}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !404, file: !373, line: 85, baseType: !290, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !404, file: !373, line: 86, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!388, !300, !383, !128}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !404, file: !373, line: 88, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!388, !300, !415, !128}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !373, line: 168, size: 448, elements: !417)
!417 = !{!418, !419, !420, !421, !3263, !3264}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !416, file: !373, line: 169, baseType: !384, size: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !416, file: !373, line: 170, baseType: !394, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !416, file: !373, line: 171, baseType: !249, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !416, file: !373, line: 172, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!379, !425, !300, !415, !348, !600, !394}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !427)
!427 = !{!428, !446, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3246, !3247, !3256, !3257, !3258, !3259, !3260, !3261, !3262}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !426, file: !51, line: 920, baseType: !429, size: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !51, line: 917, size: 128, elements: !430)
!430 = !{!431, !437}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !429, file: !51, line: 918, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !433, line: 58, size: 64, elements: !434)
!433 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !432, file: !433, line: 59, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !429, file: !51, line: 919, baseType: !438, size: 128, align: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !294, line: 216, size: 128, align: 64, elements: !439)
!439 = !{!440, !442}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !294, line: 217, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !438, file: !294, line: 218, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !441}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !426, file: !51, line: 921, baseType: !447, size: 128, offset: 128)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !448, line: 8, size: 128, elements: !449)
!448 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !447, file: !448, line: 9, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !453, line: 18, flags: DIFlagFwdDecl)
!453 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !447, file: !448, line: 10, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !453, line: 89, size: 1536, elements: !457)
!457 = !{!458, !459, !469, !477, !478, !497, !3197, !3199, !3211, !3212, !3213, !3214, !3215, !3220, !3221, !3222}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !456, file: !453, line: 91, baseType: !7, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !456, file: !453, line: 92, baseType: !460, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !461, line: 277, baseType: !462)
!461 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !461, line: 277, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !462, file: !461, line: 277, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !461, line: 70, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !461, line: 65, size: 32, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !466, file: !461, line: 66, baseType: !7, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !456, file: !453, line: 93, baseType: !470, size: 128, offset: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !471, line: 38, size: 128, elements: !472)
!471 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!472 = !{!473, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !471, line: 39, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !470, file: !471, line: 39, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !456, file: !453, line: 94, baseType: !455, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !456, file: !453, line: 95, baseType: !479, size: 128, offset: 256)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !453, line: 47, size: 128, elements: !480)
!480 = !{!481, !493}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !453, line: 48, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !453, line: 48, size: 64, elements: !483)
!483 = !{!484, !489}
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !453, line: 49, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !453, line: 49, size: 64, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !485, file: !453, line: 50, baseType: !260, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !485, file: !453, line: 50, baseType: !260, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !482, file: !453, line: 52, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !261, line: 23, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !263, line: 31, baseType: !492)
!492 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !479, file: !453, line: 54, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !456, file: !453, line: 96, baseType: !498, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !500)
!500 = !{!501, !502, !503, !511, !518, !519, !667, !2891, !2892, !2893, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !3165, !3173, !3174, !3175, !3193, !3194, !3195, !3196}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !499, file: !51, line: 611, baseType: !388, size: 16)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !499, file: !51, line: 612, baseType: !389, size: 16, offset: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !499, file: !51, line: 613, baseType: !504, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !505, line: 23, baseType: !506)
!505 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 21, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !506, file: !505, line: 22, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !294, line: 32, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !381, line: 49, baseType: !7)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !499, file: !51, line: 614, baseType: !512, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !505, line: 28, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 26, size: 32, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !513, file: !505, line: 27, baseType: !516, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !294, line: 33, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !381, line: 50, baseType: !7)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !499, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !499, file: !51, line: 622, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !523)
!523 = !{!524, !528, !541, !545, !551, !555, !561, !565, !569, !573, !577, !578, !584, !588, !614, !643, !647, !653, !658, !662, !663}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !522, file: !51, line: 1865, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!455, !498, !455, !7}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !522, file: !51, line: 1866, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!290, !455, !498, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !534, line: 10, size: 128, elements: !535)
!534 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!535 = !{!536, !540}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !533, file: !534, line: 11, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !249}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !533, file: !534, line: 12, baseType: !249, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !522, file: !51, line: 1867, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!128, !498, !128}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !522, file: !51, line: 1868, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!549, !498, !128}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !522, file: !51, line: 1870, baseType: !552, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!128, !455, !348, !128}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !522, file: !51, line: 1872, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!128, !498, !455, !388, !559}
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !294, line: 30, baseType: !560)
!560 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !522, file: !51, line: 1873, baseType: !562, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!128, !455, !498, !455}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !522, file: !51, line: 1874, baseType: !566, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!128, !498, !455}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !522, file: !51, line: 1875, baseType: !570, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!128, !498, !455, !290}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !522, file: !51, line: 1876, baseType: !574, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!128, !498, !455, !388}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !522, file: !51, line: 1877, baseType: !566, size: 64, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !522, file: !51, line: 1878, baseType: !579, size: 64, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!128, !498, !455, !388, !582}
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !294, line: 16, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !294, line: 13, baseType: !260)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !522, file: !51, line: 1879, baseType: !585, size: 64, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!128, !498, !455, !498, !455, !7}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !522, file: !51, line: 1881, baseType: !589, size: 64, offset: 832)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!128, !455, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !603, !611, !612, !613}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !593, file: !51, line: 220, baseType: !7, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !593, file: !51, line: 221, baseType: !388, size: 16, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !593, file: !51, line: 222, baseType: !504, size: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !593, file: !51, line: 223, baseType: !512, size: 32, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !593, file: !51, line: 224, baseType: !600, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !294, line: 46, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !381, line: 88, baseType: !602)
!602 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !593, file: !51, line: 225, baseType: !604, size: 128, offset: 192)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !605, line: 13, size: 128, elements: !606)
!605 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!606 = !{!607, !610}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !604, file: !605, line: 14, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !605, line: 8, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !263, line: 30, baseType: !602)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !604, file: !605, line: 15, baseType: !214, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !593, file: !51, line: 226, baseType: !604, size: 128, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !593, file: !51, line: 227, baseType: !604, size: 128, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !593, file: !51, line: 234, baseType: !425, size: 64, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !522, file: !51, line: 1882, baseType: !615, size: 64, offset: 896)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!128, !618, !620, !260, !7}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !622, line: 22, size: 1152, elements: !623)
!622 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!623 = !{!624, !625, !626, !627, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !621, file: !622, line: 23, baseType: !260, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !621, file: !622, line: 24, baseType: !388, size: 16, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !621, file: !622, line: 25, baseType: !7, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !621, file: !622, line: 26, baseType: !628, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !294, line: 104, baseType: !260)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !621, file: !622, line: 27, baseType: !490, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !621, file: !622, line: 28, baseType: !490, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !621, file: !622, line: 37, baseType: !490, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !621, file: !622, line: 38, baseType: !582, size: 32, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !621, file: !622, line: 39, baseType: !582, size: 32, offset: 352)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !621, file: !622, line: 40, baseType: !504, size: 32, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !621, file: !622, line: 41, baseType: !512, size: 32, offset: 416)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !621, file: !622, line: 42, baseType: !600, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !621, file: !622, line: 43, baseType: !604, size: 128, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !621, file: !622, line: 44, baseType: !604, size: 128, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !621, file: !622, line: 45, baseType: !604, size: 128, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !621, file: !622, line: 46, baseType: !604, size: 128, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !621, file: !622, line: 47, baseType: !490, size: 64, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !621, file: !622, line: 48, baseType: !490, size: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !522, file: !51, line: 1883, baseType: !644, size: 64, offset: 960)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!379, !455, !348, !394}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !522, file: !51, line: 1884, baseType: !648, size: 64, offset: 1024)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!128, !498, !651, !490, !490}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !522, file: !51, line: 1886, baseType: !654, size: 64, offset: 1088)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!128, !498, !657, !128}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !522, file: !51, line: 1887, baseType: !659, size: 64, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!128, !498, !455, !425, !7, !388}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !522, file: !51, line: 1890, baseType: !574, size: 64, offset: 1216)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !522, file: !51, line: 1891, baseType: !664, size: 64, offset: 1280)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!128, !498, !549, !128}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !499, file: !51, line: 623, baseType: !668, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !723, !2498, !2580, !2663, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2679, !2683, !2684, !2687, !2688, !2691, !2692, !2693, !2734, !2761, !2762, !2763, !2764, !2765, !2766, !2769, !2771, !2778, !2779, !2781, !2782, !2783, !2842, !2843, !2858, !2859, !2860, !2861, !2862, !2865, !2866, !2867, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !669, file: !51, line: 1417, baseType: !293, size: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !669, file: !51, line: 1418, baseType: !582, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !669, file: !51, line: 1419, baseType: !496, size: 8, offset: 160)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !669, file: !51, line: 1420, baseType: !397, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !669, file: !51, line: 1421, baseType: !600, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !669, file: !51, line: 1422, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !679)
!679 = !{!680, !681, !682, !689, !693, !697, !701, !702, !703, !713, !716, !717, !718, !720, !721, !722}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !51, line: 2229, baseType: !290, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !678, file: !51, line: 2230, baseType: !128, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !678, file: !51, line: 2238, baseType: !683, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!128, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !688, line: 28, flags: DIFlagFwdDecl)
!688 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !678, file: !51, line: 2239, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !678, file: !51, line: 2240, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!455, !677, !128, !290, !249}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !678, file: !51, line: 2242, baseType: !698, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !668}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !678, file: !51, line: 2243, baseType: !246, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !51, line: 2244, baseType: !677, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !678, file: !51, line: 2245, baseType: !704, size: 64, offset: 512)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !294, line: 182, size: 64, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !704, file: !294, line: 183, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !294, line: 186, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !294, line: 187, baseType: !707, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !708, file: !294, line: 187, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !678, file: !51, line: 2247, baseType: !714, offset: 576)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !715, line: 187, elements: !321)
!715 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !678, file: !51, line: 2248, baseType: !714, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !678, file: !51, line: 2249, baseType: !714, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !678, file: !51, line: 2250, baseType: !719, offset: 576)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, elements: !349)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !678, file: !51, line: 2252, baseType: !714, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !678, file: !51, line: 2253, baseType: !714, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !678, file: !51, line: 2254, baseType: !714, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !669, file: !51, line: 1423, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !727)
!727 = !{!728, !732, !736, !737, !741, !747, !751, !752, !753, !757, !761, !762, !763, !764, !770, !775, !776, !783, !784, !785, !786, !2482, !2497}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !726, file: !51, line: 1936, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!498, !668}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !726, file: !51, line: 1937, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !498}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !726, file: !51, line: 1938, baseType: !733, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !726, file: !51, line: 1940, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !498, !128}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !726, file: !51, line: 1941, baseType: !742, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!128, !498, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !21, line: 40, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !726, file: !51, line: 1942, baseType: !748, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!128, !498}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !726, file: !51, line: 1943, baseType: !733, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !726, file: !51, line: 1944, baseType: !698, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !726, file: !51, line: 1945, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!128, !668, !128}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !726, file: !51, line: 1946, baseType: !758, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!128, !668}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !726, file: !51, line: 1947, baseType: !758, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !726, file: !51, line: 1948, baseType: !758, size: 64, offset: 704)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !726, file: !51, line: 1949, baseType: !758, size: 64, offset: 768)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !726, file: !51, line: 1950, baseType: !765, size: 64, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!128, !455, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !726, file: !51, line: 1951, baseType: !771, size: 64, offset: 896)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!128, !668, !774, !348}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !726, file: !51, line: 1952, baseType: !698, size: 64, offset: 960)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !726, file: !51, line: 1954, baseType: !777, size: 64, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!128, !780, !455}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !782, line: 539, flags: DIFlagFwdDecl)
!782 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!783 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !726, file: !51, line: 1955, baseType: !777, size: 64, offset: 1088)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !726, file: !51, line: 1956, baseType: !777, size: 64, offset: 1152)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !726, file: !51, line: 1957, baseType: !777, size: 64, offset: 1216)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !726, file: !51, line: 1963, baseType: !787, size: 64, offset: 1280)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!128, !668, !790, !813}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !792, line: 68, size: 512, align: 128, elements: !793)
!792 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794, !795, !2474, !2481}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !792, line: 69, baseType: !397, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 77, baseType: !796, size: 320, offset: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 77, size: 320, elements: !797)
!797 = !{!798, !986, !991, !1019, !1027, !1033, !2405, !2473}
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !792, line: 78, baseType: !799, size: 320)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !792, line: 78, size: 320, elements: !800)
!800 = !{!801, !802, !984, !985}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !799, file: !792, line: 84, baseType: !293, size: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !799, file: !792, line: 86, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !805)
!805 = !{!806, !807, !815, !816, !821, !836, !852, !853, !854, !855, !977, !978, !981, !982, !983}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !804, file: !51, line: 452, baseType: !498, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !804, file: !51, line: 453, baseType: !808, size: 128, offset: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !809, line: 292, size: 128, elements: !810)
!809 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !812, !814}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !808, file: !809, line: 293, baseType: !307)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !808, file: !809, line: 295, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !294, line: 148, baseType: !7)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !808, file: !809, line: 296, baseType: !249, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !804, file: !51, line: 454, baseType: !813, size: 32, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !804, file: !51, line: 455, baseType: !817, size: 32, offset: 224)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !294, line: 168, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 166, size: 32, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !818, file: !294, line: 167, baseType: !128, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !804, file: !51, line: 460, baseType: !822, size: 128, offset: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !823, line: 125, size: 128, elements: !824)
!823 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !835}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !822, file: !823, line: 126, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !823, line: 31, size: 64, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !826, file: !823, line: 32, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !823, line: 24, size: 192, align: 64, elements: !831)
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !830, file: !823, line: 25, baseType: !397, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !830, file: !823, line: 26, baseType: !829, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !830, file: !823, line: 27, baseType: !829, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !822, file: !823, line: 127, baseType: !829, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !804, file: !51, line: 461, baseType: !837, size: 256, offset: 384)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !838, line: 35, size: 256, elements: !839)
!838 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!839 = !{!840, !848, !849, !851}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !837, file: !838, line: 36, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !842, line: 13, baseType: !843)
!842 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !294, line: 175, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 173, size: 64, elements: !845)
!845 = !{!846}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !844, file: !294, line: 174, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !261, line: 22, baseType: !609)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !837, file: !838, line: 42, baseType: !841, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !837, file: !838, line: 46, baseType: !850, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !308, line: 29, baseType: !315)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !837, file: !838, line: 47, baseType: !293, size: 128, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !804, file: !51, line: 462, baseType: !397, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !804, file: !51, line: 463, baseType: !397, size: 64, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !804, file: !51, line: 464, baseType: !397, size: 64, offset: 768)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !804, file: !51, line: 465, baseType: !856, size: 64, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !859)
!859 = !{!860, !864, !868, !872, !876, !880, !886, !892, !896, !901, !905, !909, !913, !941, !945, !951, !952, !953, !957, !962, !966, !973}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !858, file: !51, line: 368, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!128, !790, !745}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !858, file: !51, line: 369, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!128, !425, !790}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !858, file: !51, line: 372, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!128, !803, !745}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !858, file: !51, line: 375, baseType: !873, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!128, !790}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !858, file: !51, line: 381, baseType: !877, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!128, !425, !803, !297, !7}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !858, file: !51, line: 383, baseType: !881, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !858, file: !51, line: 385, baseType: !887, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!128, !425, !803, !600, !7, !7, !890, !891}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !858, file: !51, line: 388, baseType: !893, size: 64, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!128, !425, !803, !600, !7, !7, !790, !249}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !858, file: !51, line: 393, baseType: !897, size: 64, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!900, !803, !900}
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !294, line: 125, baseType: !490)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !858, file: !51, line: 394, baseType: !902, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !790, !7, !7}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !858, file: !51, line: 395, baseType: !906, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!128, !790, !813}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !858, file: !51, line: 396, baseType: !910, size: 64, offset: 704)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !790}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !858, file: !51, line: 397, baseType: !914, size: 64, offset: 768)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!379, !917, !939}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !919)
!919 = !{!920, !921, !922, !926, !927, !928, !931, !932}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !918, file: !51, line: 321, baseType: !425, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !918, file: !51, line: 326, baseType: !600, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !918, file: !51, line: 327, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !917, !214, !214}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !918, file: !51, line: 328, baseType: !249, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !918, file: !51, line: 329, baseType: !128, size: 32, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !918, file: !51, line: 330, baseType: !929, size: 16, offset: 288)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !261, line: 19, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !263, line: 24, baseType: !389)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !918, file: !51, line: 331, baseType: !929, size: 16, offset: 304)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !51, line: 332, baseType: !933, size: 64, offset: 320)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !51, line: 332, size: 64, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !933, file: !51, line: 333, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !933, file: !51, line: 334, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !858, file: !51, line: 402, baseType: !942, size: 64, offset: 832)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!128, !803, !790, !790, !13}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !858, file: !51, line: 404, baseType: !946, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!559, !790, !949}
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !950, line: 305, baseType: !7)
!950 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!951 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !858, file: !51, line: 405, baseType: !910, size: 64, offset: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !858, file: !51, line: 406, baseType: !873, size: 64, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !858, file: !51, line: 407, baseType: !954, size: 64, offset: 1088)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!128, !790, !397, !397}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !858, file: !51, line: 409, baseType: !958, size: 64, offset: 1152)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !790, !961, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !858, file: !51, line: 410, baseType: !963, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!128, !803, !790}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !858, file: !51, line: 413, baseType: !967, size: 64, offset: 1280)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!128, !970, !425, !972}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !858, file: !51, line: 415, baseType: !974, size: 64, offset: 1344)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !425}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !51, line: 466, baseType: !397, size: 64, offset: 896)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !804, file: !51, line: 467, baseType: !979, size: 32, offset: 960)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !980, line: 8, baseType: !260)
!980 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!981 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !804, file: !51, line: 468, baseType: !307, offset: 992)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !804, file: !51, line: 469, baseType: !293, size: 128, offset: 1024)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !804, file: !51, line: 470, baseType: !249, size: 64, offset: 1152)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !799, file: !792, line: 87, baseType: !397, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !799, file: !792, line: 94, baseType: !397, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !792, line: 96, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !792, line: 96, size: 64, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !987, file: !792, line: 101, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !294, line: 143, baseType: !490)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !792, line: 103, baseType: !992, size: 320)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !792, line: 103, size: 320, elements: !993)
!993 = !{!994, !1004, !1007, !1008}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !792, line: 104, baseType: !995, size: 128)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !792, line: 104, size: 128, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !995, file: !792, line: 105, baseType: !293, size: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !792, line: 106, baseType: !999, size: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !792, line: 106, size: 128, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !999, file: !792, line: 107, baseType: !790, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !999, file: !792, line: 109, baseType: !128, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !999, file: !792, line: 110, baseType: !128, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !992, file: !792, line: 117, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !792, line: 117, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !992, file: !792, line: 119, baseType: !249, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !792, line: 120, baseType: !1009, size: 64, offset: 256)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !792, line: 120, size: 64, elements: !1010)
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1009, file: !792, line: 121, baseType: !249, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1009, file: !792, line: 122, baseType: !397, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !792, line: 123, baseType: !1014, size: 32)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !792, line: 123, size: 32, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1014, file: !792, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1014, file: !792, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1014, file: !792, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !792, line: 130, baseType: !1020, size: 192)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !792, line: 130, size: 192, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1020, file: !792, line: 131, baseType: !397, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1020, file: !792, line: 134, baseType: !496, size: 8, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1020, file: !792, line: 135, baseType: !496, size: 8, offset: 72)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1020, file: !792, line: 136, baseType: !817, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1020, file: !792, line: 137, baseType: !7, size: 32, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !792, line: 139, baseType: !1028, size: 256)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !792, line: 139, size: 256, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1028, file: !792, line: 140, baseType: !397, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1028, file: !792, line: 141, baseType: !817, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1028, file: !792, line: 143, baseType: !293, size: 128, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !792, line: 145, baseType: !1034, size: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !792, line: 145, size: 256, elements: !1035)
!1035 = !{!1036, !1037, !1039, !1040, !2404}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1034, file: !792, line: 146, baseType: !397, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1034, file: !792, line: 147, baseType: !1038, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !782, line: 509, baseType: !790)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1034, file: !792, line: 148, baseType: !397, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !792, line: 149, baseType: !1041, size: 64, offset: 192)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1034, file: !792, line: 149, size: 64, elements: !1042)
!1042 = !{!1043, !2403}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1041, file: !792, line: 150, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !792, line: 388, size: 7296, elements: !1046)
!1046 = !{!1047, !2399}
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !792, line: 389, baseType: !1048, size: 7296)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !792, line: 389, size: 7296, elements: !1049)
!1049 = !{!1050, !1168, !1169, !1170, !1174, !1175, !1176, !1177, !1178, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1219, !1227, !1230, !1276, !1277, !2383, !2384, !2387, !2388, !2389, !2392, !2393, !2394, !2397, !2398}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1048, file: !792, line: 390, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !792, line: 305, size: 1472, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1068, !1069, !1074, !1075, !1078, !1162, !1163, !1164, !1165, !1166}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1052, file: !792, line: 308, baseType: !397, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1052, file: !792, line: 309, baseType: !397, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1052, file: !792, line: 313, baseType: !1051, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1052, file: !792, line: 313, baseType: !1051, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1052, file: !792, line: 315, baseType: !830, size: 192, align: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1052, file: !792, line: 323, baseType: !397, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1052, file: !792, line: 327, baseType: !1044, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1052, file: !792, line: 333, baseType: !1062, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !782, line: 284, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !782, line: 284, size: 64, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1063, file: !782, line: 284, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1067, line: 19, baseType: !397)
!1067 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1052, file: !792, line: 334, baseType: !397, size: 64, offset: 640)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1052, file: !792, line: 343, baseType: !1070, size: 256, offset: 704)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !792, line: 340, size: 256, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1070, file: !792, line: 341, baseType: !830, size: 192, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1070, file: !792, line: 342, baseType: !397, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1052, file: !792, line: 351, baseType: !293, size: 128, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1052, file: !792, line: 353, baseType: !1076, size: 64, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !792, line: 353, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1052, file: !792, line: 356, baseType: !1079, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1082)
!1082 = !{!1083, !1087, !1088, !1092, !1096, !1136, !1140, !1144, !1148, !1149, !1150, !1154, !1158}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1081, file: !21, line: 558, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1051}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1081, file: !21, line: 559, baseType: !1084, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1081, file: !21, line: 560, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!128, !1051, !397}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1081, file: !21, line: 561, baseType: !1093, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!128, !1051}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1081, file: !21, line: 562, baseType: !1097, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !792, line: 682, baseType: !7)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1116, !1123, !1129, !1130, !1131, !1133, !1135}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1102, file: !21, line: 509, baseType: !1051, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1102, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1102, file: !21, line: 511, baseType: !813, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1102, file: !21, line: 512, baseType: !397, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1102, file: !21, line: 513, baseType: !397, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1102, file: !21, line: 514, baseType: !1110, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !782, line: 385, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !782, line: 385, size: 64, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1112, file: !782, line: 385, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1067, line: 15, baseType: !397)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1102, file: !21, line: 516, baseType: !1117, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !782, line: 359, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !782, line: 359, size: 64, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1119, file: !782, line: 359, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1067, line: 16, baseType: !397)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1102, file: !21, line: 519, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1067, line: 21, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 21, size: 64, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1125, file: !1067, line: 21, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1067, line: 14, baseType: !397)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1102, file: !21, line: 521, baseType: !790, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1102, file: !21, line: 522, baseType: !790, size: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1102, file: !21, line: 528, baseType: !1132, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1102, file: !21, line: 532, baseType: !1134, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1102, file: !21, line: 536, baseType: !1038, size: 64, offset: 704)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1081, file: !21, line: 563, baseType: !1137, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!1100, !1101, !20}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1081, file: !21, line: 565, baseType: !1141, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !1101, !397, !397}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1081, file: !21, line: 567, baseType: !1145, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!397, !1051}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1081, file: !21, line: 571, baseType: !1097, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1081, file: !21, line: 574, baseType: !1097, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1081, file: !21, line: 579, baseType: !1151, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!128, !1051, !397, !249, !128, !128}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1081, file: !21, line: 585, baseType: !1155, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!290, !1051}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1081, file: !21, line: 615, baseType: !1159, size: 64, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!790, !1051, !397}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1052, file: !792, line: 359, baseType: !397, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1052, file: !792, line: 361, baseType: !425, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1052, file: !792, line: 362, baseType: !249, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1052, file: !792, line: 365, baseType: !841, size: 64, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1052, file: !792, line: 373, baseType: !1167, offset: 1472)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !792, line: 296, elements: !321)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1048, file: !792, line: 391, baseType: !826, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1048, file: !792, line: 392, baseType: !490, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1048, file: !792, line: 394, baseType: !1171, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!397, !425, !397, !397, !397, !397}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1048, file: !792, line: 398, baseType: !397, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1048, file: !792, line: 399, baseType: !397, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1048, file: !792, line: 405, baseType: !397, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1048, file: !792, line: 406, baseType: !397, size: 64, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1048, file: !792, line: 407, baseType: !1179, size: 64, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !782, line: 286, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !782, line: 286, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1181, file: !782, line: 286, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1067, line: 18, baseType: !397)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1048, file: !792, line: 416, baseType: !817, size: 32, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1048, file: !792, line: 428, baseType: !817, size: 32, offset: 608)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1048, file: !792, line: 437, baseType: !817, size: 32, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1048, file: !792, line: 447, baseType: !817, size: 32, offset: 672)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1048, file: !792, line: 450, baseType: !841, size: 64, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1048, file: !792, line: 452, baseType: !128, size: 32, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1048, file: !792, line: 454, baseType: !307, offset: 800)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1048, file: !792, line: 457, baseType: !837, size: 256, offset: 832)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1048, file: !792, line: 459, baseType: !293, size: 128, offset: 1088)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1048, file: !792, line: 466, baseType: !397, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1048, file: !792, line: 467, baseType: !397, size: 64, offset: 1280)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1048, file: !792, line: 469, baseType: !397, size: 64, offset: 1344)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1048, file: !792, line: 470, baseType: !397, size: 64, offset: 1408)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1048, file: !792, line: 471, baseType: !843, size: 64, offset: 1472)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1048, file: !792, line: 472, baseType: !397, size: 64, offset: 1536)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1048, file: !792, line: 473, baseType: !397, size: 64, offset: 1600)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1048, file: !792, line: 474, baseType: !397, size: 64, offset: 1664)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1048, file: !792, line: 475, baseType: !397, size: 64, offset: 1728)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1048, file: !792, line: 477, baseType: !307, offset: 1792)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1048, file: !792, line: 478, baseType: !397, size: 64, offset: 1792)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1048, file: !792, line: 478, baseType: !397, size: 64, offset: 1856)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1048, file: !792, line: 478, baseType: !397, size: 64, offset: 1920)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1048, file: !792, line: 478, baseType: !397, size: 64, offset: 1984)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1048, file: !792, line: 479, baseType: !397, size: 64, offset: 2048)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1048, file: !792, line: 479, baseType: !397, size: 64, offset: 2112)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1048, file: !792, line: 479, baseType: !397, size: 64, offset: 2176)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1048, file: !792, line: 480, baseType: !397, size: 64, offset: 2240)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1048, file: !792, line: 480, baseType: !397, size: 64, offset: 2304)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1048, file: !792, line: 480, baseType: !397, size: 64, offset: 2368)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1048, file: !792, line: 480, baseType: !397, size: 64, offset: 2432)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1048, file: !792, line: 482, baseType: !1216, size: 2816, offset: 2496)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 2816, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 44)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1048, file: !792, line: 488, baseType: !1220, size: 256, offset: 5312)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1221, line: 60, size: 256, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1220, file: !1221, line: 61, baseType: !1224, size: 256)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 256, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 4)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1048, file: !792, line: 490, baseType: !1228, size: 64, offset: 5568)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !792, line: 490, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1048, file: !792, line: 493, baseType: !1231, size: 896, offset: 5632)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1232, line: 53, baseType: !1233)
!1232 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1232, line: 13, size: 896, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1241, !1242, !1249, !1250, !1270, !1271, !1272}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1233, file: !1232, line: 18, baseType: !490, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1233, file: !1232, line: 28, baseType: !843, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1233, file: !1232, line: 31, baseType: !837, size: 256, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1233, file: !1232, line: 32, baseType: !1239, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1232, line: 32, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1233, file: !1232, line: 37, baseType: !389, size: 16, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1233, file: !1232, line: 40, baseType: !1243, size: 192, offset: 512)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1244, line: 53, size: 192, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1243, file: !1244, line: 54, baseType: !841, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1243, file: !1244, line: 55, baseType: !307, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1243, file: !1244, line: 59, baseType: !293, size: 128, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1233, file: !1232, line: 41, baseType: !249, size: 64, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1233, file: !1232, line: 42, baseType: !1251, size: 64, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1254, line: 13, size: 896, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1253, file: !1254, line: 14, baseType: !249, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1253, file: !1254, line: 15, baseType: !397, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1253, file: !1254, line: 17, baseType: !397, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1253, file: !1254, line: 17, baseType: !397, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1253, file: !1254, line: 19, baseType: !214, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1253, file: !1254, line: 21, baseType: !214, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1253, file: !1254, line: 22, baseType: !214, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1253, file: !1254, line: 23, baseType: !214, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1253, file: !1254, line: 24, baseType: !214, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1253, file: !1254, line: 25, baseType: !214, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1253, file: !1254, line: 26, baseType: !214, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1253, file: !1254, line: 27, baseType: !214, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1253, file: !1254, line: 28, baseType: !214, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1253, file: !1254, line: 29, baseType: !214, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1233, file: !1232, line: 44, baseType: !817, size: 32, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1233, file: !1232, line: 50, baseType: !929, size: 16, offset: 864)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1233, file: !1232, line: 51, baseType: !1273, size: 16, offset: 880)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !261, line: 18, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !263, line: 23, baseType: !1275)
!1275 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1048, file: !792, line: 495, baseType: !397, size: 64, offset: 6528)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1048, file: !792, line: 497, baseType: !1278, size: 64, offset: 6592)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !792, line: 381, size: 384, elements: !1280)
!1280 = !{!1281, !1282, !2382}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1279, file: !792, line: 382, baseType: !817, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1279, file: !792, line: 383, baseType: !1283, size: 128, offset: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !792, line: 376, size: 128, elements: !1284)
!1284 = !{!1285, !2380}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1283, file: !792, line: 377, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1288, line: 640, size: 48640, elements: !1289)
!1288 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1289 = !{!1290, !1296, !1298, !1299, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1316, !1334, !1345, !1430, !1431, !1432, !1443, !1444, !1446, !1447, !1448, !1449, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1533, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1571, !1573, !1574, !1575, !1587, !1588, !1589, !1590, !1591, !1592, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1616, !1621, !1803, !1804, !1805, !1806, !1807, !1810, !1813, !1816, !1819, !1822, !1923, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1969, !1970, !1971, !1972, !1973, !1978, !1979, !1980, !1983, !1984, !1987, !1990, !1993, !1996, !2038, !2041, !2042, !2121, !2122, !2125, !2126, !2129, !2130, !2131, !2135, !2136, !2137, !2150, !2151, !2152, !2162, !2167, !2170, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1287, file: !1288, line: 646, baseType: !1291, size: 128)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1292, line: 56, size: 128, elements: !1293)
!1292 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1291, file: !1292, line: 57, baseType: !397, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1291, file: !1292, line: 58, baseType: !260, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1287, file: !1288, line: 649, baseType: !1297, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !214)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1287, file: !1288, line: 657, baseType: !249, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1287, file: !1288, line: 658, baseType: !1300, size: 32, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1301, line: 113, baseType: !1302)
!1301 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1301, line: 111, size: 32, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1302, file: !1301, line: 112, baseType: !817, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1287, file: !1288, line: 660, baseType: !7, size: 32, offset: 288)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1287, file: !1288, line: 661, baseType: !7, size: 32, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1287, file: !1288, line: 684, baseType: !128, size: 32, offset: 352)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1287, file: !1288, line: 686, baseType: !128, size: 32, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1287, file: !1288, line: 687, baseType: !128, size: 32, offset: 416)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1287, file: !1288, line: 688, baseType: !128, size: 32, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1287, file: !1288, line: 689, baseType: !7, size: 32, offset: 480)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1287, file: !1288, line: 691, baseType: !1313, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1288, line: 691, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1287, file: !1288, line: 692, baseType: !1317, size: 832, offset: 576)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1288, line: 451, size: 832, elements: !1318)
!1318 = !{!1319, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1317, file: !1288, line: 453, baseType: !1320, size: 128)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1288, line: 325, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1320, file: !1288, line: 326, baseType: !397, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1320, file: !1288, line: 327, baseType: !260, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1317, file: !1288, line: 454, baseType: !830, size: 192, align: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1317, file: !1288, line: 455, baseType: !293, size: 128, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1317, file: !1288, line: 456, baseType: !7, size: 32, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1317, file: !1288, line: 458, baseType: !490, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1317, file: !1288, line: 459, baseType: !490, size: 64, offset: 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1317, file: !1288, line: 460, baseType: !490, size: 64, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1317, file: !1288, line: 461, baseType: !490, size: 64, offset: 704)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1317, file: !1288, line: 463, baseType: !490, size: 64, offset: 768)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1317, file: !1288, line: 465, baseType: !1333, offset: 832)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1288, line: 415, elements: !321)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1287, file: !1288, line: 693, baseType: !1335, size: 384, offset: 1408)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1288, line: 489, size: 384, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1335, file: !1288, line: 490, baseType: !293, size: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1335, file: !1288, line: 491, baseType: !397, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1335, file: !1288, line: 492, baseType: !397, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1335, file: !1288, line: 493, baseType: !7, size: 32, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1335, file: !1288, line: 494, baseType: !389, size: 16, offset: 288)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1335, file: !1288, line: 495, baseType: !389, size: 16, offset: 304)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1335, file: !1288, line: 497, baseType: !1344, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1287, file: !1288, line: 697, baseType: !1346, size: 1792, offset: 1792)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1288, line: 507, size: 1792, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1427, !1428}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1346, file: !1288, line: 508, baseType: !830, size: 192, align: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1346, file: !1288, line: 515, baseType: !490, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1346, file: !1288, line: 516, baseType: !490, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1346, file: !1288, line: 517, baseType: !490, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1346, file: !1288, line: 518, baseType: !490, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1346, file: !1288, line: 519, baseType: !490, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1346, file: !1288, line: 526, baseType: !847, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1346, file: !1288, line: 527, baseType: !490, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1346, file: !1288, line: 528, baseType: !7, size: 32, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1346, file: !1288, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1346, file: !1288, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1346, file: !1288, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1346, file: !1288, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1346, file: !1288, line: 563, baseType: !1362, size: 512, offset: 704)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1363)
!1363 = !{!1364, !1372, !1373, !1378, !1421, !1424, !1425, !1426}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1362, file: !27, line: 119, baseType: !1365, size: 256)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1366, line: 9, size: 256, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1365, file: !1366, line: 10, baseType: !830, size: 192, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1365, file: !1366, line: 11, baseType: !1370, size: 64, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1371, line: 29, baseType: !847)
!1371 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1362, file: !27, line: 120, baseType: !1370, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1362, file: !27, line: 121, baseType: !1374, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!26, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1362, file: !27, line: 122, baseType: !1379, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1381)
!1381 = !{!1382, !1402, !1403, !1406, !1411, !1412, !1416, !1420}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1380, file: !27, line: 160, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1384, file: !27, line: 215, baseType: !850)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1384, file: !27, line: 216, baseType: !7, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1384, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1384, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1384, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1384, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1384, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1384, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1384, file: !27, line: 233, baseType: !1370, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1384, file: !27, line: 234, baseType: !1377, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1384, file: !27, line: 235, baseType: !1370, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1384, file: !27, line: 236, baseType: !1377, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1384, file: !27, line: 237, baseType: !1399, size: 4096, offset: 512)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 4096, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: 8)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1380, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1380, file: !27, line: 162, baseType: !1404, size: 32, offset: 96)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !294, line: 27, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !381, line: 96, baseType: !128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1380, file: !27, line: 163, baseType: !1407, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !461, line: 276, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !461, line: 276, size: 32, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1408, file: !461, line: 276, baseType: !465, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1380, file: !27, line: 164, baseType: !1377, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1380, file: !27, line: 165, baseType: !1413, size: 128, offset: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1366, line: 14, size: 128, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1413, file: !1366, line: 15, baseType: !822, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1380, file: !27, line: 166, baseType: !1417, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!1370}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1380, file: !27, line: 167, baseType: !1370, size: 64, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1362, file: !27, line: 123, baseType: !1422, size: 8, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !261, line: 17, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !263, line: 21, baseType: !496)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1362, file: !27, line: 124, baseType: !1422, size: 8, offset: 456)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1362, file: !27, line: 125, baseType: !1422, size: 8, offset: 464)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1362, file: !27, line: 126, baseType: !1422, size: 8, offset: 472)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1346, file: !1288, line: 572, baseType: !1362, size: 512, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1346, file: !1288, line: 580, baseType: !1429, size: 64, offset: 1728)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1287, file: !1288, line: 721, baseType: !7, size: 32, offset: 3584)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1287, file: !1288, line: 722, baseType: !128, size: 32, offset: 3616)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1287, file: !1288, line: 723, baseType: !1433, size: 64, offset: 3648)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1436, line: 17, baseType: !1437)
!1436 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1436, line: 17, size: 64, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1437, file: !1436, line: 17, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 64, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 1)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1287, file: !1288, line: 724, baseType: !1435, size: 64, offset: 3712)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1287, file: !1288, line: 749, baseType: !1445, offset: 3776)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1288, line: 290, elements: !321)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1287, file: !1288, line: 751, baseType: !293, size: 128, offset: 3776)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1287, file: !1288, line: 757, baseType: !1044, size: 64, offset: 3904)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1287, file: !1288, line: 758, baseType: !1044, size: 64, offset: 3968)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1287, file: !1288, line: 761, baseType: !1450, size: 320, offset: 4032)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1221, line: 34, size: 320, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1450, file: !1221, line: 35, baseType: !490, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1450, file: !1221, line: 36, baseType: !1454, size: 256, offset: 64)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 256, elements: !1225)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1287, file: !1288, line: 766, baseType: !128, size: 32, offset: 4352)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1287, file: !1288, line: 767, baseType: !128, size: 32, offset: 4384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1287, file: !1288, line: 768, baseType: !128, size: 32, offset: 4416)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1287, file: !1288, line: 770, baseType: !128, size: 32, offset: 4448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1287, file: !1288, line: 772, baseType: !397, size: 64, offset: 4480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1287, file: !1288, line: 775, baseType: !7, size: 32, offset: 4544)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1287, file: !1288, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1287, file: !1288, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1287, file: !1288, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1287, file: !1288, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1287, file: !1288, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1287, file: !1288, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1287, file: !1288, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1287, file: !1288, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1287, file: !1288, line: 831, baseType: !397, size: 64, offset: 4672)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1287, file: !1288, line: 833, baseType: !1471, size: 384, offset: 4736)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1472)
!1472 = !{!1473, !1478}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1471, file: !32, line: 26, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!214, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1471, file: !32, line: 27, baseType: !1479, size: 320, offset: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !32, line: 27, size: 320, elements: !1480)
!1480 = !{!1481, !1491, !1518}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1479, file: !32, line: 36, baseType: !1482, size: 320)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !32, line: 29, size: 320, elements: !1483)
!1483 = !{!1484, !1486, !1487, !1488, !1489, !1490}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1482, file: !32, line: 30, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1482, file: !32, line: 31, baseType: !260, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1482, file: !32, line: 32, baseType: !260, size: 32, offset: 96)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1482, file: !32, line: 33, baseType: !260, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1482, file: !32, line: 34, baseType: !490, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1482, file: !32, line: 35, baseType: !1485, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1479, file: !32, line: 46, baseType: !1492, size: 192)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !32, line: 38, size: 192, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1517}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1492, file: !32, line: 39, baseType: !1404, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1492, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !32, line: 41, baseType: !1497, size: 64, offset: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1492, file: !32, line: 41, size: 64, elements: !1498)
!1498 = !{!1499, !1507}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1497, file: !32, line: 42, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1502, line: 7, size: 128, elements: !1503)
!1502 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !{!1504, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1501, file: !1502, line: 8, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !381, line: 93, baseType: !602)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1501, file: !1502, line: 9, baseType: !602, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1497, file: !32, line: 43, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1510, line: 7, size: 64, elements: !1511)
!1510 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1516}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1509, file: !1510, line: 8, baseType: !1513, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1510, line: 5, baseType: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !261, line: 20, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !263, line: 26, baseType: !128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1509, file: !1510, line: 9, baseType: !1514, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1492, file: !32, line: 45, baseType: !490, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1479, file: !32, line: 54, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1479, file: !32, line: 48, size: 256, elements: !1520)
!1520 = !{!1521, !1529, !1530, !1531, !1532}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1519, file: !32, line: 49, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1524, line: 36, size: 64, elements: !1525)
!1524 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1523, file: !1524, line: 37, baseType: !128, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1523, file: !1524, line: 38, baseType: !1275, size: 16, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1523, file: !1524, line: 39, baseType: !1275, size: 16, offset: 48)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1519, file: !32, line: 50, baseType: !128, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1519, file: !32, line: 51, baseType: !128, size: 32, offset: 96)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1519, file: !32, line: 52, baseType: !397, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1519, file: !32, line: 53, baseType: !397, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1287, file: !1288, line: 835, baseType: !1534, size: 32, offset: 5120)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !294, line: 22, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !381, line: 28, baseType: !128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1287, file: !1288, line: 836, baseType: !1534, size: 32, offset: 5152)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1287, file: !1288, line: 840, baseType: !397, size: 64, offset: 5184)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1287, file: !1288, line: 849, baseType: !1286, size: 64, offset: 5248)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1287, file: !1288, line: 852, baseType: !1286, size: 64, offset: 5312)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1287, file: !1288, line: 857, baseType: !293, size: 128, offset: 5376)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1287, file: !1288, line: 858, baseType: !293, size: 128, offset: 5504)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1287, file: !1288, line: 859, baseType: !1286, size: 64, offset: 5632)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1287, file: !1288, line: 867, baseType: !293, size: 128, offset: 5696)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1287, file: !1288, line: 868, baseType: !293, size: 128, offset: 5824)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1287, file: !1288, line: 871, baseType: !1546, size: 64, offset: 5952)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1554, !1555, !1562, !1563}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1547, file: !60, line: 61, baseType: !1300, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1547, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1547, file: !60, line: 63, baseType: !307, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1547, file: !60, line: 65, baseType: !1553, size: 256, offset: 64)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 256, elements: !1225)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1547, file: !60, line: 66, baseType: !704, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1547, file: !60, line: 68, baseType: !1556, size: 128, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1557, line: 40, baseType: !1558)
!1557 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1557, line: 36, size: 128, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1558, file: !1557, line: 37, baseType: !307)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1558, file: !1557, line: 38, baseType: !293, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1547, file: !60, line: 69, baseType: !438, size: 128, align: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1547, file: !60, line: 70, baseType: !1564, size: 128, offset: 640)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, size: 128, elements: !1441)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1565, file: !60, line: 55, baseType: !128, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1565, file: !60, line: 56, baseType: !1569, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1287, file: !1288, line: 872, baseType: !1572, size: 512, offset: 6016)
!1572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 512, elements: !1225)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1287, file: !1288, line: 873, baseType: !293, size: 128, offset: 6528)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1287, file: !1288, line: 874, baseType: !293, size: 128, offset: 6656)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1287, file: !1288, line: 876, baseType: !1576, size: 64, offset: 6784)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1578, line: 26, size: 192, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1577, file: !1578, line: 27, baseType: !7, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1577, file: !1578, line: 28, baseType: !1582, size: 128, offset: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1583, line: 43, size: 128, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1582, file: !1583, line: 44, baseType: !850)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1582, file: !1583, line: 45, baseType: !293, size: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1287, file: !1288, line: 879, baseType: !774, size: 64, offset: 6848)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1287, file: !1288, line: 882, baseType: !774, size: 64, offset: 6912)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1287, file: !1288, line: 884, baseType: !490, size: 64, offset: 6976)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1287, file: !1288, line: 885, baseType: !490, size: 64, offset: 7040)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1287, file: !1288, line: 890, baseType: !490, size: 64, offset: 7104)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1287, file: !1288, line: 891, baseType: !1593, size: 128, offset: 7168)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1288, line: 242, size: 128, elements: !1594)
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1593, file: !1288, line: 244, baseType: !490, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1593, file: !1288, line: 245, baseType: !490, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1593, file: !1288, line: 246, baseType: !850, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1287, file: !1288, line: 900, baseType: !397, size: 64, offset: 7296)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1287, file: !1288, line: 901, baseType: !397, size: 64, offset: 7360)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1287, file: !1288, line: 904, baseType: !490, size: 64, offset: 7424)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1287, file: !1288, line: 907, baseType: !490, size: 64, offset: 7488)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1287, file: !1288, line: 910, baseType: !397, size: 64, offset: 7552)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1287, file: !1288, line: 911, baseType: !397, size: 64, offset: 7616)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1287, file: !1288, line: 914, baseType: !1605, size: 640, offset: 7680)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1606, line: 123, size: 640, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608, !1614, !1615}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1605, file: !1606, line: 124, baseType: !1609, size: 576)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 576, elements: !349)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1606, line: 108, size: 192, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1610, file: !1606, line: 109, baseType: !490, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1610, file: !1606, line: 110, baseType: !1413, size: 128, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1605, file: !1606, line: 125, baseType: !7, size: 32, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1605, file: !1606, line: 126, baseType: !7, size: 32, offset: 608)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1287, file: !1288, line: 917, baseType: !1617, size: 192, offset: 8320)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1606, line: 134, size: 192, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1617, file: !1606, line: 135, baseType: !438, size: 128, align: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1617, file: !1606, line: 136, baseType: !7, size: 32, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1287, file: !1288, line: 923, baseType: !1622, size: 64, offset: 8512)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1625, line: 111, size: 1280, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1644, !1645, !1646, !1647, !1648, !1649, !1756, !1757, !1758, !1759, !1785, !1788, !1798}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1624, file: !1625, line: 112, baseType: !817, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1624, file: !1625, line: 120, baseType: !504, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1624, file: !1625, line: 121, baseType: !512, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1624, file: !1625, line: 122, baseType: !504, size: 32, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1624, file: !1625, line: 123, baseType: !512, size: 32, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1624, file: !1625, line: 124, baseType: !504, size: 32, offset: 160)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1624, file: !1625, line: 125, baseType: !512, size: 32, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1624, file: !1625, line: 126, baseType: !504, size: 32, offset: 224)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1624, file: !1625, line: 127, baseType: !512, size: 32, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1624, file: !1625, line: 128, baseType: !7, size: 32, offset: 288)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1624, file: !1625, line: 129, baseType: !1638, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1639, line: 26, baseType: !1640)
!1639 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1639, line: 24, size: 64, elements: !1641)
!1641 = !{!1642}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1640, file: !1639, line: 25, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !274)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1624, file: !1625, line: 130, baseType: !1638, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1624, file: !1625, line: 131, baseType: !1638, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1624, file: !1625, line: 132, baseType: !1638, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1624, file: !1625, line: 133, baseType: !1638, size: 64, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1624, file: !1625, line: 135, baseType: !496, size: 8, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1624, file: !1625, line: 137, baseType: !1650, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1652, line: 189, size: 1664, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654, !1655, !1658, !1663, !1664, !1667, !1668, !1673, !1674, !1675, !1676, !1678, !1679, !1680, !1681, !1682, !1720, !1741}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1651, file: !1652, line: 190, baseType: !1300, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1651, file: !1652, line: 191, baseType: !1656, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1652, line: 28, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !294, line: 98, baseType: !1514)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 192, baseType: !1659, size: 192, offset: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 192, size: 192, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1659, file: !1652, line: 193, baseType: !293, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1659, file: !1652, line: 194, baseType: !830, size: 192, align: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1651, file: !1652, line: 199, baseType: !837, size: 256, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1651, file: !1652, line: 200, baseType: !1665, size: 64, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1652, line: 200, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1651, file: !1652, line: 201, baseType: !249, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 202, baseType: !1669, size: 64, offset: 640)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 202, size: 64, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1669, file: !1652, line: 203, baseType: !608, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1669, file: !1652, line: 204, baseType: !608, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1651, file: !1652, line: 206, baseType: !608, size: 64, offset: 704)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1651, file: !1652, line: 207, baseType: !504, size: 32, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1651, file: !1652, line: 208, baseType: !512, size: 32, offset: 800)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1651, file: !1652, line: 209, baseType: !1677, size: 32, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1652, line: 31, baseType: !628)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1651, file: !1652, line: 210, baseType: !389, size: 16, offset: 864)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1651, file: !1652, line: 211, baseType: !389, size: 16, offset: 880)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1651, file: !1652, line: 215, baseType: !1275, size: 16, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1651, file: !1652, line: 222, baseType: !397, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 239, baseType: !1683, size: 320, offset: 1024)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 239, size: 320, elements: !1684)
!1684 = !{!1685, !1712}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1683, file: !1652, line: 240, baseType: !1686, size: 320)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1652, line: 108, size: 320, elements: !1687)
!1687 = !{!1688, !1689, !1701, !1704, !1711}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1686, file: !1652, line: 110, baseType: !397, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1652, line: 111, baseType: !1690, size: 64, offset: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1686, file: !1652, line: 111, size: 64, elements: !1691)
!1691 = !{!1692, !1700}
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1652, line: 112, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1652, line: 112, size: 64, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1693, file: !1652, line: 114, baseType: !929, size: 16)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1693, file: !1652, line: 115, baseType: !1697, size: 48, offset: 16)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 48, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 6)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1690, file: !1652, line: 121, baseType: !397, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1686, file: !1652, line: 123, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1652, line: 96, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1686, file: !1652, line: 124, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1652, line: 102, size: 192, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1706, file: !1652, line: 103, baseType: !438, size: 128, align: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1706, file: !1652, line: 104, baseType: !1300, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1706, file: !1652, line: 105, baseType: !559, size: 8, offset: 160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1686, file: !1652, line: 125, baseType: !290, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1652, line: 241, baseType: !1713, size: 320)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1652, line: 241, size: 320, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718, !1719}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1713, file: !1652, line: 242, baseType: !397, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1713, file: !1652, line: 243, baseType: !397, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !1652, line: 244, baseType: !1702, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1713, file: !1652, line: 245, baseType: !1705, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1713, file: !1652, line: 246, baseType: !348, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 254, baseType: !1721, size: 256, offset: 1344)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 254, size: 256, elements: !1722)
!1722 = !{!1723, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1721, file: !1652, line: 255, baseType: !1724, size: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1652, line: 128, size: 256, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1724, file: !1652, line: 129, baseType: !249, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1724, file: !1652, line: 130, baseType: !1728, size: 256)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !1225)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !1652, line: 256, baseType: !1730, size: 256)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !1652, line: 256, size: 256, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1730, file: !1652, line: 258, baseType: !293, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1730, file: !1652, line: 259, baseType: !1734, size: 128, offset: 128)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1735, line: 22, size: 128, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1740}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1734, file: !1735, line: 23, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1735, line: 23, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1734, file: !1735, line: 24, baseType: !397, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1651, file: !1652, line: 274, baseType: !1742, size: 64, offset: 1600)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1652, line: 170, size: 192, elements: !1744)
!1744 = !{!1745, !1754, !1755}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1743, file: !1652, line: 171, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1652, line: 165, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!128, !1650, !1750, !1752, !1650}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1743, file: !1652, line: 172, baseType: !1650, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1743, file: !1652, line: 173, baseType: !1702, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1624, file: !1625, line: 138, baseType: !1650, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1624, file: !1625, line: 139, baseType: !1650, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1624, file: !1625, line: 140, baseType: !1650, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1624, file: !1625, line: 145, baseType: !1760, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1762, line: 13, size: 896, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1761, file: !1762, line: 14, baseType: !1300, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1761, file: !1762, line: 15, baseType: !817, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1761, file: !1762, line: 16, baseType: !817, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1761, file: !1762, line: 21, baseType: !841, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1761, file: !1762, line: 27, baseType: !397, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1761, file: !1762, line: 28, baseType: !397, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1761, file: !1762, line: 29, baseType: !841, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1761, file: !1762, line: 32, baseType: !708, size: 128, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1761, file: !1762, line: 33, baseType: !504, size: 32, offset: 512)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1761, file: !1762, line: 37, baseType: !841, size: 64, offset: 576)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1761, file: !1762, line: 44, baseType: !1775, size: 256, offset: 640)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1776, line: 15, size: 256, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !1776, line: 16, baseType: !850)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1775, file: !1776, line: 18, baseType: !128, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1775, file: !1776, line: 19, baseType: !128, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1775, file: !1776, line: 20, baseType: !128, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1775, file: !1776, line: 21, baseType: !128, size: 32, offset: 96)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1775, file: !1776, line: 22, baseType: !397, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1775, file: !1776, line: 23, baseType: !397, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1624, file: !1625, line: 146, baseType: !1786, size: 64, offset: 1024)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !505, line: 18, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1624, file: !1625, line: 147, baseType: !1789, size: 64, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1625, line: 25, size: 64, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1790, file: !1625, line: 26, baseType: !817, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1790, file: !1625, line: 27, baseType: !128, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1790, file: !1625, line: 28, baseType: !1795, offset: 64)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, elements: !1796)
!1796 = !{!1797}
!1797 = !DISubrange(count: 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 149, baseType: !1799, size: 128, offset: 1152)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 149, size: 128, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1799, file: !1625, line: 150, baseType: !128, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1799, file: !1625, line: 151, baseType: !438, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1287, file: !1288, line: 926, baseType: !1622, size: 64, offset: 8576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1287, file: !1288, line: 929, baseType: !1622, size: 64, offset: 8640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1287, file: !1288, line: 933, baseType: !1650, size: 64, offset: 8704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1287, file: !1288, line: 943, baseType: !255, size: 128, offset: 8768)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1287, file: !1288, line: 945, baseType: !1808, size: 64, offset: 8896)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1288, line: 49, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1287, file: !1288, line: 956, baseType: !1811, size: 64, offset: 8960)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1288, line: 45, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1287, file: !1288, line: 959, baseType: !1814, size: 64, offset: 9024)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1288, line: 959, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1287, file: !1288, line: 962, baseType: !1817, size: 64, offset: 9088)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1288, line: 66, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1287, file: !1288, line: 966, baseType: !1820, size: 64, offset: 9152)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1288, line: 50, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1287, file: !1288, line: 969, baseType: !1823, size: 64, offset: 9216)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1825, line: 82, size: 7296, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1862, !1871, !1872, !1874, !1875, !1876, !1879, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1909, !1910, !1917, !1918, !1919, !1920, !1921, !1922}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1824, file: !1825, line: 83, baseType: !1300, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1824, file: !1825, line: 84, baseType: !817, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1824, file: !1825, line: 85, baseType: !128, size: 32, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1824, file: !1825, line: 86, baseType: !293, size: 128, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1824, file: !1825, line: 88, baseType: !1556, size: 128, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1824, file: !1825, line: 91, baseType: !1286, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1824, file: !1825, line: 94, baseType: !1834, size: 192, offset: 448)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1835, line: 30, size: 192, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1834, file: !1835, line: 31, baseType: !293, size: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1834, file: !1835, line: 32, baseType: !1839, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1840, line: 25, baseType: !1841)
!1840 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1840, line: 23, size: 64, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1841, file: !1840, line: 24, baseType: !1440, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1824, file: !1825, line: 97, baseType: !704, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1824, file: !1825, line: 100, baseType: !128, size: 32, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1824, file: !1825, line: 106, baseType: !128, size: 32, offset: 736)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1824, file: !1825, line: 107, baseType: !1286, size: 64, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1824, file: !1825, line: 110, baseType: !128, size: 32, offset: 832)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1824, file: !1825, line: 111, baseType: !7, size: 32, offset: 864)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1824, file: !1825, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1824, file: !1825, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1824, file: !1825, line: 128, baseType: !128, size: 32, offset: 928)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1824, file: !1825, line: 129, baseType: !293, size: 128, offset: 960)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1824, file: !1825, line: 132, baseType: !1362, size: 512, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1824, file: !1825, line: 133, baseType: !1370, size: 64, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1824, file: !1825, line: 140, baseType: !1857, size: 256, offset: 1664)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 256, elements: !274)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1825, line: 38, size: 128, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1858, file: !1825, line: 39, baseType: !490, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1858, file: !1825, line: 40, baseType: !490, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1824, file: !1825, line: 146, baseType: !1863, size: 192, offset: 1920)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1825, line: 66, size: 192, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1863, file: !1825, line: 67, baseType: !1866, size: 192)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1825, line: 47, size: 192, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1866, file: !1825, line: 48, baseType: !843, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1866, file: !1825, line: 49, baseType: !843, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1866, file: !1825, line: 50, baseType: !843, size: 64, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1824, file: !1825, line: 150, baseType: !1605, size: 640, offset: 2112)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1824, file: !1825, line: 153, baseType: !1873, size: 256, offset: 2752)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1546, size: 256, elements: !1225)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1824, file: !1825, line: 159, baseType: !1546, size: 64, offset: 3008)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1824, file: !1825, line: 162, baseType: !128, size: 32, offset: 3072)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1824, file: !1825, line: 164, baseType: !1877, size: 64, offset: 3136)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1825, line: 164, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1824, file: !1825, line: 175, baseType: !1880, size: 32, offset: 3200)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !461, line: 805, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 798, size: 32, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1881, file: !461, line: 803, baseType: !460, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1881, file: !461, line: 804, baseType: !307, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1824, file: !1825, line: 176, baseType: !490, size: 64, offset: 3264)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1824, file: !1825, line: 176, baseType: !490, size: 64, offset: 3328)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1824, file: !1825, line: 176, baseType: !490, size: 64, offset: 3392)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1824, file: !1825, line: 176, baseType: !490, size: 64, offset: 3456)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1824, file: !1825, line: 177, baseType: !490, size: 64, offset: 3520)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1824, file: !1825, line: 178, baseType: !490, size: 64, offset: 3584)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1824, file: !1825, line: 179, baseType: !1593, size: 128, offset: 3648)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1824, file: !1825, line: 180, baseType: !397, size: 64, offset: 3776)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1824, file: !1825, line: 180, baseType: !397, size: 64, offset: 3840)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1824, file: !1825, line: 180, baseType: !397, size: 64, offset: 3904)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1824, file: !1825, line: 180, baseType: !397, size: 64, offset: 3968)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1824, file: !1825, line: 181, baseType: !397, size: 64, offset: 4032)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1824, file: !1825, line: 181, baseType: !397, size: 64, offset: 4096)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1824, file: !1825, line: 181, baseType: !397, size: 64, offset: 4160)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1824, file: !1825, line: 181, baseType: !397, size: 64, offset: 4224)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1824, file: !1825, line: 182, baseType: !397, size: 64, offset: 4288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1824, file: !1825, line: 182, baseType: !397, size: 64, offset: 4352)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1824, file: !1825, line: 182, baseType: !397, size: 64, offset: 4416)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1824, file: !1825, line: 182, baseType: !397, size: 64, offset: 4480)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1824, file: !1825, line: 183, baseType: !397, size: 64, offset: 4544)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1824, file: !1825, line: 183, baseType: !397, size: 64, offset: 4608)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1824, file: !1825, line: 184, baseType: !1907, offset: 4672)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1908, line: 12, elements: !321)
!1908 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1824, file: !1825, line: 192, baseType: !492, size: 64, offset: 4672)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1824, file: !1825, line: 203, baseType: !1911, size: 2048, offset: 4736)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1912, size: 2048, elements: !257)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1913, line: 43, size: 128, elements: !1914)
!1913 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1912, file: !1913, line: 44, baseType: !396, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1912, file: !1913, line: 45, baseType: !396, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1824, file: !1825, line: 220, baseType: !559, size: 8, offset: 6784)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1824, file: !1825, line: 221, baseType: !1275, size: 16, offset: 6800)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1824, file: !1825, line: 222, baseType: !1275, size: 16, offset: 6816)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1824, file: !1825, line: 224, baseType: !1044, size: 64, offset: 6848)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1824, file: !1825, line: 227, baseType: !1243, size: 192, offset: 6912)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1824, file: !1825, line: 233, baseType: !1243, size: 192, offset: 7104)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1287, file: !1288, line: 970, baseType: !1924, size: 64, offset: 9280)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1825, line: 20, size: 16576, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1925, file: !1825, line: 21, baseType: !307)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1925, file: !1825, line: 22, baseType: !1300, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1925, file: !1825, line: 23, baseType: !1556, size: 128, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1925, file: !1825, line: 24, baseType: !1931, size: 16384, offset: 192)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1932, size: 16384, elements: !353)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1835, line: 49, size: 256, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1932, file: !1835, line: 50, baseType: !1935, size: 256)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1835, line: 35, size: 256, elements: !1936)
!1936 = !{!1937, !1944, !1945, !1951}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1935, file: !1835, line: 37, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1939, line: 19, baseType: !1940)
!1939 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1939, line: 18, baseType: !1942)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !128}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1935, file: !1835, line: 38, baseType: !397, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1935, file: !1835, line: 44, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1939, line: 22, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1939, line: 21, baseType: !1949)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1935, file: !1835, line: 46, baseType: !1839, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1287, file: !1288, line: 971, baseType: !1839, size: 64, offset: 9344)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1287, file: !1288, line: 972, baseType: !1839, size: 64, offset: 9408)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1287, file: !1288, line: 974, baseType: !1839, size: 64, offset: 9472)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1287, file: !1288, line: 975, baseType: !1834, size: 192, offset: 9536)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1287, file: !1288, line: 976, baseType: !397, size: 64, offset: 9728)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1287, file: !1288, line: 977, baseType: !394, size: 64, offset: 9792)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1287, file: !1288, line: 978, baseType: !7, size: 32, offset: 9856)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1287, file: !1288, line: 980, baseType: !441, size: 64, offset: 9920)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1287, file: !1288, line: 989, baseType: !1961, size: 128, offset: 9984)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1962, line: 35, size: 128, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1961, file: !1962, line: 36, baseType: !128, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1961, file: !1962, line: 37, baseType: !817, size: 32, offset: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1961, file: !1962, line: 38, baseType: !1967, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1962, line: 23, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1287, file: !1288, line: 992, baseType: !490, size: 64, offset: 10112)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1287, file: !1288, line: 993, baseType: !490, size: 64, offset: 10176)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1287, file: !1288, line: 996, baseType: !307, offset: 10240)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1287, file: !1288, line: 999, baseType: !850, offset: 10240)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1287, file: !1288, line: 1001, baseType: !1974, size: 64, offset: 10240)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1288, line: 636, size: 64, elements: !1975)
!1975 = !{!1976}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1974, file: !1288, line: 637, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1287, file: !1288, line: 1005, baseType: !822, size: 128, offset: 10304)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1287, file: !1288, line: 1007, baseType: !1286, size: 64, offset: 10432)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1287, file: !1288, line: 1009, baseType: !1981, size: 64, offset: 10496)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1288, line: 1009, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1287, file: !1288, line: 1043, baseType: !249, size: 64, offset: 10560)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1287, file: !1288, line: 1046, baseType: !1985, size: 64, offset: 10624)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1288, line: 41, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1287, file: !1288, line: 1050, baseType: !1988, size: 64, offset: 10688)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1288, line: 42, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1287, file: !1288, line: 1054, baseType: !1991, size: 64, offset: 10752)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1288, line: 55, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1287, file: !1288, line: 1056, baseType: !1994, size: 64, offset: 10816)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1288, line: 40, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1287, file: !1288, line: 1058, baseType: !1997, size: 64, offset: 10880)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1999, line: 99, size: 704, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006, !2007, !2026, !2027}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1998, file: !1999, line: 100, baseType: !841, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1998, file: !1999, line: 101, baseType: !817, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1998, file: !1999, line: 102, baseType: !817, size: 32, offset: 96)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1998, file: !1999, line: 105, baseType: !307, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1998, file: !1999, line: 107, baseType: !389, size: 16, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1998, file: !1999, line: 109, baseType: !808, size: 128, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1998, file: !1999, line: 110, baseType: !2008, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1999, line: 73, size: 448, elements: !2010)
!2010 = !{!2011, !2014, !2015, !2020, !2025}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2009, file: !1999, line: 74, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1999, line: 74, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2009, file: !1999, line: 75, baseType: !1997, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2009, file: !1999, line: 83, baseType: !2016, size: 128, offset: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2009, file: !1999, line: 83, size: 128, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2016, file: !1999, line: 84, baseType: !293, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2016, file: !1999, line: 85, baseType: !1005, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, scope: !2009, file: !1999, line: 87, baseType: !2021, size: 128, offset: 256)
!2021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2009, file: !1999, line: 87, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2021, file: !1999, line: 88, baseType: !708, size: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2021, file: !1999, line: 89, baseType: !438, size: 128, align: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2009, file: !1999, line: 92, baseType: !7, size: 32, offset: 384)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1998, file: !1999, line: 111, baseType: !704, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1998, file: !1999, line: 113, baseType: !2028, size: 256, offset: 448)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !213, line: 102, size: 256, elements: !2029)
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2028, file: !213, line: 103, baseType: !841, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2028, file: !213, line: 104, baseType: !293, size: 128, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2028, file: !213, line: 105, baseType: !2033, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !213, line: 21, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1287, file: !1288, line: 1061, baseType: !2039, size: 64, offset: 10944)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1288, line: 43, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1287, file: !1288, line: 1064, baseType: !397, size: 64, offset: 11008)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1287, file: !1288, line: 1065, baseType: !2043, size: 64, offset: 11072)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1835, line: 14, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1835, line: 12, size: 384, elements: !2046)
!2046 = !{!2047}
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !1835, line: 13, baseType: !2048, size: 384)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !1835, line: 13, size: 384, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2048, file: !1835, line: 13, baseType: !128, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2048, file: !1835, line: 13, baseType: !128, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2048, file: !1835, line: 13, baseType: !128, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2048, file: !1835, line: 13, baseType: !2054, size: 256, offset: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2055, line: 32, size: 256, elements: !2056)
!2055 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2062, !2075, !2081, !2090, !2110, !2115}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2054, file: !2055, line: 37, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2055, line: 34, size: 64, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2058, file: !2055, line: 35, baseType: !1535, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2058, file: !2055, line: 36, baseType: !510, size: 32, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2054, file: !2055, line: 45, baseType: !2063, size: 192)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2055, line: 40, size: 192, elements: !2064)
!2064 = !{!2065, !2067, !2068, !2074}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2063, file: !2055, line: 41, baseType: !2066, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !381, line: 95, baseType: !128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2063, file: !2055, line: 42, baseType: !128, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2063, file: !2055, line: 43, baseType: !2069, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2055, line: 11, baseType: !2070)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2055, line: 8, size: 64, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2070, file: !2055, line: 9, baseType: !128, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2070, file: !2055, line: 10, baseType: !249, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2063, file: !2055, line: 44, baseType: !128, size: 32, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2054, file: !2055, line: 52, baseType: !2076, size: 128)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2055, line: 48, size: 128, elements: !2077)
!2077 = !{!2078, !2079, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2076, file: !2055, line: 49, baseType: !1535, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2076, file: !2055, line: 50, baseType: !510, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2076, file: !2055, line: 51, baseType: !2069, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2054, file: !2055, line: 61, baseType: !2082, size: 256)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2055, line: 55, size: 256, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2089}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2082, file: !2055, line: 56, baseType: !1535, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2082, file: !2055, line: 57, baseType: !510, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2082, file: !2055, line: 58, baseType: !128, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2082, file: !2055, line: 59, baseType: !2088, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !381, line: 94, baseType: !382)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2082, file: !2055, line: 60, baseType: !2088, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2054, file: !2055, line: 95, baseType: !2091, size: 256)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2055, line: 64, size: 256, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2091, file: !2055, line: 65, baseType: !249, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !2055, line: 77, baseType: !2095, size: 192, offset: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2055, line: 77, size: 192, elements: !2096)
!2096 = !{!2097, !2098, !2105}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2095, file: !2055, line: 82, baseType: !1275, size: 16)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2095, file: !2055, line: 88, baseType: !2099, size: 192)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2095, file: !2055, line: 84, size: 192, elements: !2100)
!2100 = !{!2101, !2103, !2104}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2099, file: !2055, line: 85, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 64, elements: !1400)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2099, file: !2055, line: 86, baseType: !249, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2099, file: !2055, line: 87, baseType: !249, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2095, file: !2055, line: 93, baseType: !2106, size: 96)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2095, file: !2055, line: 90, size: 96, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2106, file: !2055, line: 91, baseType: !2102, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2106, file: !2055, line: 92, baseType: !262, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2054, file: !2055, line: 101, baseType: !2111, size: 128)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2055, line: 98, size: 128, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2111, file: !2055, line: 99, baseType: !214, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2111, file: !2055, line: 100, baseType: !128, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2054, file: !2055, line: 108, baseType: !2116, size: 128)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2054, file: !2055, line: 104, size: 128, elements: !2117)
!2117 = !{!2118, !2119, !2120}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2116, file: !2055, line: 105, baseType: !249, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2116, file: !2055, line: 106, baseType: !128, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2116, file: !2055, line: 107, baseType: !7, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1287, file: !1288, line: 1067, baseType: !1907, offset: 11136)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1287, file: !1288, line: 1099, baseType: !2123, size: 64, offset: 11136)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1288, line: 56, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1287, file: !1288, line: 1103, baseType: !293, size: 128, offset: 11200)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1287, file: !1288, line: 1104, baseType: !2127, size: 64, offset: 11328)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1288, line: 46, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1287, file: !1288, line: 1105, baseType: !1243, size: 192, offset: 11392)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1287, file: !1288, line: 1106, baseType: !7, size: 32, offset: 11584)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1287, file: !1288, line: 1109, baseType: !2132, size: 128, offset: 11648)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2133, size: 128, elements: !274)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1288, line: 51, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1287, file: !1288, line: 1110, baseType: !1243, size: 192, offset: 11776)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1287, file: !1288, line: 1111, baseType: !293, size: 128, offset: 11968)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1287, file: !1288, line: 1173, baseType: !2138, size: 64, offset: 12096)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2140, line: 62, size: 256, align: 256, elements: !2141)
!2140 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !{!2142, !2143, !2144, !2149}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2139, file: !2140, line: 75, baseType: !262, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2139, file: !2140, line: 90, baseType: !262, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2139, file: !2140, line: 124, baseType: !2145, size: 64, offset: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !2140, line: 109, size: 64, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2145, file: !2140, line: 110, baseType: !491, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2145, file: !2140, line: 112, baseType: !491, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2139, file: !2140, line: 144, baseType: !262, size: 32, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1287, file: !1288, line: 1174, baseType: !260, size: 32, offset: 12160)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1287, file: !1288, line: 1179, baseType: !397, size: 64, offset: 12224)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1287, file: !1288, line: 1182, baseType: !2153, size: 128, offset: 12288)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1221, line: 76, size: 128, elements: !2154)
!2154 = !{!2155, !2160, !2161}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2153, file: !1221, line: 85, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2157, line: 7, size: 64, elements: !2158)
!2157 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2158 = !{!2159}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2156, file: !2157, line: 12, baseType: !1437, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2153, file: !1221, line: 88, baseType: !559, size: 8, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2153, file: !1221, line: 95, baseType: !559, size: 8, offset: 72)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1288, line: 1184, baseType: !2163, size: 128, offset: 12416)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !1288, line: 1184, size: 128, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2163, file: !1288, line: 1185, baseType: !1300, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2163, file: !1288, line: 1186, baseType: !438, size: 128, align: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1287, file: !1288, line: 1190, baseType: !2168, size: 64, offset: 12544)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1288, line: 53, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1287, file: !1288, line: 1192, baseType: !2171, size: 128, offset: 12608)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1221, line: 64, size: 128, elements: !2172)
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2171, file: !1221, line: 65, baseType: !790, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2171, file: !1221, line: 67, baseType: !262, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2171, file: !1221, line: 68, baseType: !262, size: 32, offset: 96)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1287, file: !1288, line: 1206, baseType: !128, size: 32, offset: 12736)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1287, file: !1288, line: 1207, baseType: !128, size: 32, offset: 12768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1287, file: !1288, line: 1209, baseType: !397, size: 64, offset: 12800)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1287, file: !1288, line: 1219, baseType: !490, size: 64, offset: 12864)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1287, file: !1288, line: 1220, baseType: !490, size: 64, offset: 12928)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1287, file: !1288, line: 1317, baseType: !128, size: 32, offset: 12992)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1287, file: !1288, line: 1319, baseType: !1286, size: 64, offset: 13056)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1287, file: !1288, line: 1322, baseType: !2184, size: 64, offset: 13120)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2186, line: 56, size: 512, elements: !2187)
!2186 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2187 = !{!2188, !2189, !2190, !2191, !2192, !2193, !2194, !2196}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2185, file: !2186, line: 57, baseType: !2184, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2185, file: !2186, line: 58, baseType: !249, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2185, file: !2186, line: 59, baseType: !397, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !2186, line: 60, baseType: !397, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2185, file: !2186, line: 61, baseType: !890, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2185, file: !2186, line: 62, baseType: !7, size: 32, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2185, file: !2186, line: 63, baseType: !2195, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !294, line: 153, baseType: !490)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2185, file: !2186, line: 64, baseType: !2197, size: 64, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1287, file: !1288, line: 1326, baseType: !1300, size: 32, offset: 13184)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1287, file: !1288, line: 1342, baseType: !249, size: 64, offset: 13248)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1287, file: !1288, line: 1343, baseType: !491, size: 64, offset: 13312)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1287, file: !1288, line: 1344, baseType: !490, size: 64, offset: 13376)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1287, file: !1288, line: 1345, baseType: !491, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1287, file: !1288, line: 1346, baseType: !491, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1287, file: !1288, line: 1347, baseType: !491, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1287, file: !1288, line: 1348, baseType: !438, size: 128, align: 64, offset: 13504)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1287, file: !1288, line: 1358, baseType: !2208, size: 34816, offset: 13824)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2209, line: 485, size: 34816, elements: !2210)
!2209 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2210 = !{!2211, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2240, !2241, !2242, !2243, !2244, !2245, !2248, !2249, !2250}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2208, file: !2209, line: 487, baseType: !2212, size: 192)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2213, size: 192, elements: !349)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2214, line: 16, size: 64, elements: !2215)
!2214 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2213, file: !2214, line: 17, baseType: !929, size: 16)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2213, file: !2214, line: 18, baseType: !929, size: 16, offset: 16)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2213, file: !2214, line: 19, baseType: !929, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2213, file: !2214, line: 19, baseType: !929, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2213, file: !2214, line: 19, baseType: !929, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2213, file: !2214, line: 19, baseType: !929, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2213, file: !2214, line: 19, baseType: !929, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2213, file: !2214, line: 20, baseType: !929, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2213, file: !2214, line: 20, baseType: !929, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2213, file: !2214, line: 20, baseType: !929, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2213, file: !2214, line: 20, baseType: !929, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2213, file: !2214, line: 20, baseType: !929, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2213, file: !2214, line: 20, baseType: !929, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2208, file: !2209, line: 491, baseType: !397, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2208, file: !2209, line: 495, baseType: !389, size: 16, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2208, file: !2209, line: 496, baseType: !389, size: 16, offset: 272)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2208, file: !2209, line: 497, baseType: !389, size: 16, offset: 288)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2208, file: !2209, line: 498, baseType: !389, size: 16, offset: 304)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2208, file: !2209, line: 502, baseType: !397, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2208, file: !2209, line: 503, baseType: !397, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2208, file: !2209, line: 514, baseType: !2237, size: 256, offset: 448)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2238, size: 256, elements: !1225)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2209, line: 483, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2208, file: !2209, line: 516, baseType: !397, size: 64, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2208, file: !2209, line: 518, baseType: !397, size: 64, offset: 768)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2208, file: !2209, line: 520, baseType: !397, size: 64, offset: 832)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2208, file: !2209, line: 521, baseType: !397, size: 64, offset: 896)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2208, file: !2209, line: 522, baseType: !397, size: 64, offset: 960)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2208, file: !2209, line: 528, baseType: !2246, size: 64, offset: 1024)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2209, line: 10, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2208, file: !2209, line: 535, baseType: !397, size: 64, offset: 1088)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2208, file: !2209, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2208, file: !2209, line: 540, baseType: !2251, size: 33280, offset: 1536)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2252, line: 317, size: 33280, elements: !2253)
!2252 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2251, file: !2252, line: 330, baseType: !7, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2251, file: !2252, line: 337, baseType: !397, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2251, file: !2252, line: 348, baseType: !2257, size: 32768, offset: 512)
!2257 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2252, line: 304, size: 32768, elements: !2258)
!2258 = !{!2259, !2274, !2313, !2363, !2376}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2257, file: !2252, line: 305, baseType: !2260, size: 896)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2252, line: 12, size: 896, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2273}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2260, file: !2252, line: 13, baseType: !260, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2260, file: !2252, line: 14, baseType: !260, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2260, file: !2252, line: 15, baseType: !260, size: 32, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2260, file: !2252, line: 16, baseType: !260, size: 32, offset: 96)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2260, file: !2252, line: 17, baseType: !260, size: 32, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2260, file: !2252, line: 18, baseType: !260, size: 32, offset: 160)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2260, file: !2252, line: 19, baseType: !260, size: 32, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2260, file: !2252, line: 22, baseType: !2270, size: 640, offset: 224)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 640, elements: !2271)
!2271 = !{!2272}
!2272 = !DISubrange(count: 20)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2260, file: !2252, line: 25, baseType: !260, size: 32, offset: 864)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2257, file: !2252, line: 306, baseType: !2275, size: 4096, align: 128)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2252, line: 34, size: 4096, align: 128, elements: !2276)
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2296, !2297, !2298, !2302, !2304, !2308}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2275, file: !2252, line: 35, baseType: !929, size: 16)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2275, file: !2252, line: 36, baseType: !929, size: 16, offset: 16)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2275, file: !2252, line: 37, baseType: !929, size: 16, offset: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2275, file: !2252, line: 38, baseType: !929, size: 16, offset: 48)
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !2252, line: 39, baseType: !2282, size: 128, offset: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !2252, line: 39, size: 128, elements: !2283)
!2283 = !{!2284, !2289}
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !2252, line: 40, baseType: !2285, size: 128)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !2252, line: 40, size: 128, elements: !2286)
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2285, file: !2252, line: 41, baseType: !490, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2285, file: !2252, line: 42, baseType: !490, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2282, file: !2252, line: 44, baseType: !2290, size: 128)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !2252, line: 44, size: 128, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2290, file: !2252, line: 45, baseType: !260, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2290, file: !2252, line: 46, baseType: !260, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2290, file: !2252, line: 47, baseType: !260, size: 32, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2290, file: !2252, line: 48, baseType: !260, size: 32, offset: 96)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2275, file: !2252, line: 51, baseType: !260, size: 32, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2275, file: !2252, line: 52, baseType: !260, size: 32, offset: 224)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2275, file: !2252, line: 55, baseType: !2299, size: 1024, offset: 256)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 1024, elements: !2300)
!2300 = !{!2301}
!2301 = !DISubrange(count: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2275, file: !2252, line: 58, baseType: !2303, size: 2048, offset: 1280)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !353)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2275, file: !2252, line: 60, baseType: !2305, size: 384, offset: 3328)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !2306)
!2306 = !{!2307}
!2307 = !DISubrange(count: 12)
!2308 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !2252, line: 62, baseType: !2309, size: 384, offset: 3712)
!2309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !2252, line: 62, size: 384, elements: !2310)
!2310 = !{!2311, !2312}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2309, file: !2252, line: 63, baseType: !2305, size: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2309, file: !2252, line: 64, baseType: !2305, size: 384)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2257, file: !2252, line: 307, baseType: !2314, size: 1088)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2252, line: 79, size: 1088, elements: !2315)
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2362}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2314, file: !2252, line: 80, baseType: !260, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2314, file: !2252, line: 81, baseType: !260, size: 32, offset: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2314, file: !2252, line: 82, baseType: !260, size: 32, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2314, file: !2252, line: 83, baseType: !260, size: 32, offset: 96)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2314, file: !2252, line: 84, baseType: !260, size: 32, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2314, file: !2252, line: 85, baseType: !260, size: 32, offset: 160)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2314, file: !2252, line: 86, baseType: !260, size: 32, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2314, file: !2252, line: 88, baseType: !2270, size: 640, offset: 224)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2314, file: !2252, line: 89, baseType: !1422, size: 8, offset: 864)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2314, file: !2252, line: 90, baseType: !1422, size: 8, offset: 872)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2314, file: !2252, line: 91, baseType: !1422, size: 8, offset: 880)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2314, file: !2252, line: 92, baseType: !1422, size: 8, offset: 888)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2314, file: !2252, line: 93, baseType: !1422, size: 8, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2314, file: !2252, line: 94, baseType: !1422, size: 8, offset: 904)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2314, file: !2252, line: 95, baseType: !2331, size: 64, offset: 960)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2333, line: 11, size: 128, elements: !2334)
!2333 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2332, file: !2333, line: 12, baseType: !214, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2332, file: !2333, line: 13, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2339, line: 56, size: 1344, elements: !2340)
!2339 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2338, file: !2339, line: 61, baseType: !397, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2338, file: !2339, line: 62, baseType: !397, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2338, file: !2339, line: 63, baseType: !397, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2338, file: !2339, line: 64, baseType: !397, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2338, file: !2339, line: 65, baseType: !397, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2338, file: !2339, line: 66, baseType: !397, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2338, file: !2339, line: 68, baseType: !397, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2338, file: !2339, line: 69, baseType: !397, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2338, file: !2339, line: 70, baseType: !397, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2338, file: !2339, line: 71, baseType: !397, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2338, file: !2339, line: 72, baseType: !397, size: 64, offset: 640)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2338, file: !2339, line: 73, baseType: !397, size: 64, offset: 704)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2338, file: !2339, line: 74, baseType: !397, size: 64, offset: 768)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2338, file: !2339, line: 75, baseType: !397, size: 64, offset: 832)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2338, file: !2339, line: 76, baseType: !397, size: 64, offset: 896)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2338, file: !2339, line: 81, baseType: !397, size: 64, offset: 960)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2338, file: !2339, line: 83, baseType: !397, size: 64, offset: 1024)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2338, file: !2339, line: 84, baseType: !397, size: 64, offset: 1088)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !2339, line: 85, baseType: !397, size: 64, offset: 1152)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2338, file: !2339, line: 86, baseType: !397, size: 64, offset: 1216)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2338, file: !2339, line: 87, baseType: !397, size: 64, offset: 1280)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2314, file: !2252, line: 96, baseType: !260, size: 32, offset: 1024)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2257, file: !2252, line: 308, baseType: !2364, size: 4608, align: 512)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2252, line: 289, size: 4608, align: 512, elements: !2365)
!2365 = !{!2366, !2367, !2374}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2364, file: !2252, line: 290, baseType: !2275, size: 4096, align: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2364, file: !2252, line: 291, baseType: !2368, size: 512, offset: 4096)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2252, line: 268, size: 512, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2368, file: !2252, line: 269, baseType: !490, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2368, file: !2252, line: 270, baseType: !490, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2368, file: !2252, line: 271, baseType: !2373, size: 384, offset: 128)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 384, elements: !1698)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2364, file: !2252, line: 292, baseType: !2375, offset: 4608)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, elements: !1796)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2257, file: !2252, line: 309, baseType: !2377, size: 32768)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 32768, elements: !2378)
!2378 = !{!2379}
!2379 = !DISubrange(count: 4096)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1283, file: !792, line: 378, baseType: !2381, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1279, file: !792, line: 384, baseType: !1577, size: 192, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1048, file: !792, line: 500, baseType: !307, offset: 6656)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1048, file: !792, line: 501, baseType: !2385, size: 64, offset: 6656)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !792, line: 387, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1048, file: !792, line: 516, baseType: !1786, size: 64, offset: 6720)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1048, file: !792, line: 519, baseType: !425, size: 64, offset: 6784)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1048, file: !792, line: 521, baseType: !2390, size: 64, offset: 6848)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !792, line: 521, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1048, file: !792, line: 545, baseType: !817, size: 32, offset: 6912)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1048, file: !792, line: 548, baseType: !559, size: 8, offset: 6944)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1048, file: !792, line: 550, baseType: !2395, offset: 6952)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2396, line: 142, elements: !321)
!2396 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1048, file: !792, line: 554, baseType: !2028, size: 256, offset: 6976)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1048, file: !792, line: 557, baseType: !260, size: 32, offset: 7232)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1045, file: !792, line: 565, baseType: !2400, offset: 7296)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, elements: !2401)
!2401 = !{!2402}
!2402 = !DISubrange(count: -1)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1041, file: !792, line: 151, baseType: !817, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1034, file: !792, line: 156, baseType: !307, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !792, line: 159, baseType: !2406, size: 128)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !792, line: 159, size: 128, elements: !2407)
!2407 = !{!2408, !2472}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2406, file: !792, line: 161, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2411)
!2411 = !{!2412, !2422, !2443, !2444, !2445, !2446, !2447, !2459, !2460, !2461}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2410, file: !38, line: 111, baseType: !2413, size: 384)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2414)
!2414 = !{!2415, !2417, !2418, !2419, !2420, !2421}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2413, file: !38, line: 20, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2413, file: !38, line: 21, baseType: !2416, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2413, file: !38, line: 22, baseType: !2416, size: 64, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2413, file: !38, line: 23, baseType: !397, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2413, file: !38, line: 24, baseType: !397, size: 64, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2413, file: !38, line: 25, baseType: !397, size: 64, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2410, file: !38, line: 112, baseType: !2423, size: 64, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2425, line: 105, size: 128, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2424, file: !2425, line: 110, baseType: !397, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2424, file: !2425, line: 118, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2425, line: 95, size: 448, elements: !2431)
!2431 = !{!2432, !2433, !2438, !2439, !2440, !2441, !2442}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2430, file: !2425, line: 96, baseType: !841, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2430, file: !2425, line: 97, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2425, line: 60, baseType: !2436)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2423}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2430, file: !2425, line: 98, baseType: !2434, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2430, file: !2425, line: 99, baseType: !559, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2430, file: !2425, line: 100, baseType: !559, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2430, file: !2425, line: 101, baseType: !438, size: 128, align: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2430, file: !2425, line: 102, baseType: !2423, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2410, file: !38, line: 113, baseType: !2424, size: 128, offset: 448)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2410, file: !38, line: 114, baseType: !1577, size: 192, offset: 576)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2410, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2410, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2410, file: !38, line: 117, baseType: !2448, size: 64, offset: 832)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2451)
!2451 = !{!2452, !2453, !2457, !2458}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2450, file: !38, line: 73, baseType: !910, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2450, file: !38, line: 78, baseType: !2454, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !2409}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2450, file: !38, line: 83, baseType: !2454, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2450, file: !38, line: 89, baseType: !1097, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2410, file: !38, line: 118, baseType: !249, size: 64, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2410, file: !38, line: 119, baseType: !128, size: 32, offset: 960)
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2410, file: !38, line: 120, baseType: !2462, size: 128, offset: 1024)
!2462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2410, file: !38, line: 120, size: 128, elements: !2463)
!2463 = !{!2464, !2470}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2462, file: !38, line: 121, baseType: !2465, size: 128)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2466, line: 6, size: 128, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2467 = !{!2468, !2469}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2465, file: !2466, line: 7, baseType: !490, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2465, file: !2466, line: 8, baseType: !490, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2462, file: !38, line: 122, baseType: !2471)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2465, elements: !1796)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2406, file: !792, line: 162, baseType: !249, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !796, file: !792, line: 176, baseType: !438, size: 128, align: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !792, line: 179, baseType: !2475, size: 32, offset: 384)
!2475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !792, line: 179, size: 32, elements: !2476)
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2475, file: !792, line: 184, baseType: !817, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2475, file: !792, line: 192, baseType: !7, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2475, file: !792, line: 194, baseType: !7, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2475, file: !792, line: 195, baseType: !128, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !791, file: !792, line: 199, baseType: !817, size: 32, offset: 416)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !726, file: !51, line: 1964, baseType: !2483, size: 64, offset: 1344)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!214, !668, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2488, line: 12, size: 256, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2489 = !{!2490, !2491, !2492, !2493, !2494}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2487, file: !2488, line: 13, baseType: !813, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2487, file: !2488, line: 16, baseType: !128, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2487, file: !2488, line: 23, baseType: !397, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2487, file: !2488, line: 30, baseType: !397, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2487, file: !2488, line: 33, baseType: !2495, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !792, line: 27, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !726, file: !51, line: 1966, baseType: !2483, size: 64, offset: 1408)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !669, file: !51, line: 1424, baseType: !2499, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2502)
!2502 = !{!2503, !2549, !2553, !2557, !2558, !2559, !2560, !2561, !2566, !2571, !2575}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2501, file: !45, line: 323, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!128, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2534, !2535, !2536}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2508, file: !45, line: 295, baseType: !708, size: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2508, file: !45, line: 296, baseType: !293, size: 128, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2508, file: !45, line: 297, baseType: !293, size: 128, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2508, file: !45, line: 298, baseType: !293, size: 128, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2508, file: !45, line: 299, baseType: !1243, size: 192, offset: 512)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2508, file: !45, line: 300, baseType: !307, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2508, file: !45, line: 301, baseType: !817, size: 32, offset: 704)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2508, file: !45, line: 302, baseType: !668, size: 64, offset: 768)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2508, file: !45, line: 303, baseType: !2519, size: 64, offset: 832)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2520)
!2520 = !{!2521, !2533}
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2519, file: !45, line: 69, baseType: !2522, size: 32)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2519, file: !45, line: 69, size: 32, elements: !2523)
!2523 = !{!2524, !2525, !2526}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2522, file: !45, line: 70, baseType: !504, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2522, file: !45, line: 71, baseType: !512, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2522, file: !45, line: 72, baseType: !2527, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2528, line: 24, baseType: !2529)
!2528 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2528, line: 22, size: 32, elements: !2530)
!2530 = !{!2531}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2529, file: !2528, line: 23, baseType: !2532, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2528, line: 20, baseType: !510)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2519, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2508, file: !45, line: 304, baseType: !600, size: 64, offset: 896)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2508, file: !45, line: 305, baseType: !397, size: 64, offset: 960)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2508, file: !45, line: 306, baseType: !2537, size: 576, offset: 1024)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2538)
!2538 = !{!2539, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2537, file: !45, line: 206, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !602)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2537, file: !45, line: 207, baseType: !2540, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2537, file: !45, line: 208, baseType: !2540, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2537, file: !45, line: 209, baseType: !2540, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2537, file: !45, line: 210, baseType: !2540, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2537, file: !45, line: 211, baseType: !2540, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2537, file: !45, line: 212, baseType: !2540, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2537, file: !45, line: 213, baseType: !608, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2537, file: !45, line: 214, baseType: !608, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2501, file: !45, line: 324, baseType: !2550, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2507, !668, !128}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2501, file: !45, line: 325, baseType: !2554, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{null, !2507}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2501, file: !45, line: 326, baseType: !2504, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2501, file: !45, line: 327, baseType: !2504, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2501, file: !45, line: 328, baseType: !2504, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2501, file: !45, line: 329, baseType: !754, size: 64, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2501, file: !45, line: 332, baseType: !2562, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!2565, !498}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2501, file: !45, line: 333, baseType: !2567, size: 64, offset: 512)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!128, !498, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2501, file: !45, line: 335, baseType: !2572, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!128, !498, !2565}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2501, file: !45, line: 337, baseType: !2576, size: 64, offset: 640)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!128, !668, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !669, file: !51, line: 1425, baseType: !2581, size: 64, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2584)
!2584 = !{!2585, !2589, !2590, !2594, !2595, !2596, !2611, !2634, !2638, !2639, !2662}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2583, file: !45, line: 429, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!128, !668, !128, !128, !618}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2583, file: !45, line: 430, baseType: !754, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2583, file: !45, line: 431, baseType: !2591, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!128, !668, !7}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2583, file: !45, line: 432, baseType: !2591, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2583, file: !45, line: 433, baseType: !754, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2583, file: !45, line: 434, baseType: !2597, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!128, !668, !128, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2601, file: !45, line: 416, baseType: !128, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2601, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2601, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2601, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2601, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2601, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2601, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2601, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2583, file: !45, line: 435, baseType: !2612, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!128, !668, !2519, !2615}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2617)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2616, file: !45, line: 344, baseType: !128, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2616, file: !45, line: 345, baseType: !490, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2616, file: !45, line: 346, baseType: !490, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2616, file: !45, line: 347, baseType: !490, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2616, file: !45, line: 348, baseType: !490, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2616, file: !45, line: 349, baseType: !490, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2616, file: !45, line: 350, baseType: !490, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2616, file: !45, line: 351, baseType: !847, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2616, file: !45, line: 353, baseType: !847, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2616, file: !45, line: 354, baseType: !128, size: 32, offset: 576)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2616, file: !45, line: 355, baseType: !128, size: 32, offset: 608)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2616, file: !45, line: 356, baseType: !490, size: 64, offset: 640)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2616, file: !45, line: 357, baseType: !490, size: 64, offset: 704)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2616, file: !45, line: 358, baseType: !490, size: 64, offset: 768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2616, file: !45, line: 359, baseType: !847, size: 64, offset: 832)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2616, file: !45, line: 360, baseType: !128, size: 32, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2583, file: !45, line: 436, baseType: !2635, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!128, !668, !2579, !2615}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2583, file: !45, line: 438, baseType: !2612, size: 64, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2583, file: !45, line: 439, baseType: !2640, size: 64, offset: 576)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!128, !668, !2643}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2645)
!2645 = !{!2646, !2647}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2644, file: !45, line: 410, baseType: !7, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2644, file: !45, line: 411, baseType: !2648, size: 1344, offset: 64)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2649, size: 1344, elements: !349)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2650)
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2661}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2649, file: !45, line: 396, baseType: !7, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2649, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2649, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2649, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2649, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2649, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2649, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2649, file: !45, line: 404, baseType: !492, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2649, file: !45, line: 405, baseType: !2660, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !294, line: 126, baseType: !490)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2649, file: !45, line: 406, baseType: !2660, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2583, file: !45, line: 440, baseType: !2591, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !669, file: !51, line: 1426, baseType: !2664, size: 64, offset: 576)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !669, file: !51, line: 1427, baseType: !397, size: 64, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !669, file: !51, line: 1428, baseType: !397, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !669, file: !51, line: 1429, baseType: !397, size: 64, offset: 768)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !669, file: !51, line: 1430, baseType: !455, size: 64, offset: 832)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !669, file: !51, line: 1431, baseType: !837, size: 256, offset: 896)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !669, file: !51, line: 1432, baseType: !128, size: 32, offset: 1152)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !669, file: !51, line: 1433, baseType: !817, size: 32, offset: 1184)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !669, file: !51, line: 1437, baseType: !2675, size: 64, offset: 1216)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2678)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !669, file: !51, line: 1449, baseType: !2680, size: 64, offset: 1280)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !471, line: 34, size: 64, elements: !2681)
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2680, file: !471, line: 35, baseType: !474, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !669, file: !51, line: 1450, baseType: !293, size: 128, offset: 1344)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !669, file: !51, line: 1451, baseType: !2685, size: 64, offset: 1472)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !669, file: !51, line: 1452, baseType: !1994, size: 64, offset: 1536)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !669, file: !51, line: 1453, baseType: !2689, size: 64, offset: 1600)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !669, file: !51, line: 1454, baseType: !708, size: 128, offset: 1664)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !669, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !669, file: !51, line: 1456, baseType: !2694, size: 2432, offset: 1856)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2695)
!2695 = !{!2696, !2697, !2698, !2700, !2732}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2694, file: !45, line: 519, baseType: !7, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2694, file: !45, line: 520, baseType: !837, size: 256, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2694, file: !45, line: 521, baseType: !2699, size: 192, offset: 320)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 192, elements: !349)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2694, file: !45, line: 522, baseType: !2701, size: 1728, offset: 512)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 1728, elements: !349)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2703)
!2703 = !{!2704, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2702, file: !45, line: 223, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2707)
!2707 = !{!2708, !2709, !2722, !2723}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2706, file: !45, line: 444, baseType: !128, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2706, file: !45, line: 445, baseType: !2710, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2712, file: !45, line: 311, baseType: !754, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2712, file: !45, line: 312, baseType: !754, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2712, file: !45, line: 313, baseType: !754, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2712, file: !45, line: 314, baseType: !754, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2712, file: !45, line: 315, baseType: !2504, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2712, file: !45, line: 316, baseType: !2504, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2712, file: !45, line: 317, baseType: !2504, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2712, file: !45, line: 318, baseType: !2576, size: 64, offset: 448)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2706, file: !45, line: 446, baseType: !246, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2706, file: !45, line: 447, baseType: !2705, size: 64, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2702, file: !45, line: 224, baseType: !128, size: 32, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2702, file: !45, line: 226, baseType: !293, size: 128, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2702, file: !45, line: 227, baseType: !397, size: 64, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2702, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2702, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2702, file: !45, line: 230, baseType: !2540, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2702, file: !45, line: 231, baseType: !2540, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2702, file: !45, line: 232, baseType: !249, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2694, file: !45, line: 523, baseType: !2733, size: 192, offset: 2240)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2710, size: 192, elements: !349)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !669, file: !51, line: 1458, baseType: !2735, size: 2112, offset: 4288)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2736)
!2736 = !{!2737, !2738, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2735, file: !51, line: 1411, baseType: !128, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2735, file: !51, line: 1412, baseType: !1556, size: 128, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2735, file: !51, line: 1413, baseType: !2740, size: 1920, offset: 192)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2741, size: 1920, elements: !349)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2742, line: 12, size: 640, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2743 = !{!2744, !2752, !2754, !2759, !2760}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2741, file: !2742, line: 13, baseType: !2745, size: 320)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2746, line: 17, size: 320, elements: !2747)
!2746 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2747 = !{!2748, !2749, !2750, !2751}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2745, file: !2746, line: 18, baseType: !128, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2745, file: !2746, line: 19, baseType: !128, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2745, file: !2746, line: 20, baseType: !1556, size: 128, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2745, file: !2746, line: 22, baseType: !438, size: 128, align: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2741, file: !2742, line: 14, baseType: !2753, size: 64, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2741, file: !2742, line: 15, baseType: !2755, size: 64, offset: 384)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2756, line: 16, size: 64, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2755, file: !2756, line: 17, baseType: !1286, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2741, file: !2742, line: 16, baseType: !1556, size: 128, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2741, file: !2742, line: 17, baseType: !817, size: 32, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !669, file: !51, line: 1465, baseType: !249, size: 64, offset: 6400)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !669, file: !51, line: 1468, baseType: !260, size: 32, offset: 6464)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !669, file: !51, line: 1470, baseType: !608, size: 64, offset: 6528)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !669, file: !51, line: 1471, baseType: !608, size: 64, offset: 6592)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !669, file: !51, line: 1473, baseType: !262, size: 32, offset: 6656)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !669, file: !51, line: 1474, baseType: !2767, size: 64, offset: 6720)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !669, file: !51, line: 1477, baseType: !2770, size: 256, offset: 6784)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !2300)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !669, file: !51, line: 1478, baseType: !2772, size: 128, offset: 7040)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2773, line: 18, baseType: !2774)
!2773 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2773, line: 16, size: 128, elements: !2775)
!2775 = !{!2776}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2774, file: !2773, line: 17, baseType: !2777, size: 128)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 128, elements: !257)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !669, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !669, file: !51, line: 1481, baseType: !2780, size: 32, offset: 7200)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !294, line: 150, baseType: !7)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !669, file: !51, line: 1487, baseType: !1243, size: 192, offset: 7232)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !669, file: !51, line: 1493, baseType: !290, size: 64, offset: 7424)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !669, file: !51, line: 1495, baseType: !2784, size: 64, offset: 7488)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !453, line: 135, size: 1024, align: 512, elements: !2787)
!2787 = !{!2788, !2792, !2793, !2800, !2806, !2810, !2814, !2818, !2819, !2823, !2827, !2832, !2836}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2786, file: !453, line: 136, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!128, !455, !7}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2786, file: !453, line: 137, baseType: !2789, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2786, file: !453, line: 138, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!128, !2797, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2786, file: !453, line: 139, baseType: !2801, size: 64, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!128, !2797, !7, !290, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2786, file: !453, line: 141, baseType: !2807, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!128, !2797}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2786, file: !453, line: 142, baseType: !2811, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!128, !455}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2786, file: !453, line: 143, baseType: !2815, size: 64, offset: 384)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !455}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2786, file: !453, line: 144, baseType: !2815, size: 64, offset: 448)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2786, file: !453, line: 145, baseType: !2820, size: 64, offset: 512)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !455, !498}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2786, file: !453, line: 146, baseType: !2824, size: 64, offset: 576)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!348, !455, !348, !128}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2786, file: !453, line: 147, baseType: !2828, size: 64, offset: 640)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!451, !2831}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2786, file: !453, line: 148, baseType: !2833, size: 64, offset: 704)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!128, !618, !559}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2786, file: !453, line: 149, baseType: !2837, size: 64, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!455, !455, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !669, file: !51, line: 1500, baseType: !128, size: 32, offset: 7552)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !669, file: !51, line: 1502, baseType: !2844, size: 448, offset: 7616)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2488, line: 60, size: 448, elements: !2845)
!2845 = !{!2846, !2851, !2852, !2853, !2854, !2855, !2856}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2844, file: !2488, line: 61, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!397, !2850, !2486}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2844, file: !2488, line: 63, baseType: !2847, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2844, file: !2488, line: 66, baseType: !214, size: 64, offset: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2844, file: !2488, line: 67, baseType: !128, size: 32, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2844, file: !2488, line: 68, baseType: !7, size: 32, offset: 224)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2844, file: !2488, line: 71, baseType: !293, size: 128, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2844, file: !2488, line: 77, baseType: !2857, size: 64, offset: 384)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !669, file: !51, line: 1505, baseType: !841, size: 64, offset: 8064)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !669, file: !51, line: 1508, baseType: !841, size: 64, offset: 8128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !669, file: !51, line: 1511, baseType: !128, size: 32, offset: 8192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !669, file: !51, line: 1514, baseType: !979, size: 32, offset: 8224)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !669, file: !51, line: 1517, baseType: !2863, size: 64, offset: 8256)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !213, line: 18, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !669, file: !51, line: 1518, baseType: !704, size: 64, offset: 8320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !669, file: !51, line: 1525, baseType: !1786, size: 64, offset: 8384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !669, file: !51, line: 1532, baseType: !2868, size: 64, offset: 8448)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2869, line: 52, size: 64, elements: !2870)
!2869 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2868, file: !2869, line: 53, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2869, line: 40, size: 256, elements: !2874)
!2874 = !{!2875, !2876, !2881}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2873, file: !2869, line: 42, baseType: !307)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2873, file: !2869, line: 44, baseType: !2877, size: 192)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2869, line: 28, size: 192, elements: !2878)
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2877, file: !2869, line: 29, baseType: !293, size: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2877, file: !2869, line: 31, baseType: !214, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2873, file: !2869, line: 49, baseType: !214, size: 64, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !669, file: !51, line: 1533, baseType: !2868, size: 64, offset: 8512)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !669, file: !51, line: 1534, baseType: !438, size: 128, align: 64, offset: 8576)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !669, file: !51, line: 1535, baseType: !2028, size: 256, offset: 8704)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !669, file: !51, line: 1537, baseType: !1243, size: 192, offset: 8960)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !669, file: !51, line: 1542, baseType: !128, size: 32, offset: 9152)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !669, file: !51, line: 1545, baseType: !307, offset: 9184)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !669, file: !51, line: 1546, baseType: !293, size: 128, offset: 9216)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !669, file: !51, line: 1548, baseType: !307, offset: 9344)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !669, file: !51, line: 1549, baseType: !293, size: 128, offset: 9344)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !499, file: !51, line: 624, baseType: !803, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !499, file: !51, line: 631, baseType: !397, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !51, line: 639, baseType: !2894, size: 32, offset: 384)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !51, line: 639, size: 32, elements: !2895)
!2895 = !{!2896, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2894, file: !51, line: 640, baseType: !2897, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2894, file: !51, line: 641, baseType: !7, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !499, file: !51, line: 643, baseType: !582, size: 32, offset: 416)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !499, file: !51, line: 644, baseType: !600, size: 64, offset: 448)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !499, file: !51, line: 645, baseType: !604, size: 128, offset: 512)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !499, file: !51, line: 646, baseType: !604, size: 128, offset: 640)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !499, file: !51, line: 647, baseType: !604, size: 128, offset: 768)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !499, file: !51, line: 648, baseType: !307, offset: 896)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !499, file: !51, line: 649, baseType: !389, size: 16, offset: 896)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !499, file: !51, line: 650, baseType: !1422, size: 8, offset: 912)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !499, file: !51, line: 651, baseType: !1422, size: 8, offset: 920)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !499, file: !51, line: 652, baseType: !2660, size: 64, offset: 960)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !499, file: !51, line: 659, baseType: !397, size: 64, offset: 1024)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !499, file: !51, line: 660, baseType: !837, size: 256, offset: 1088)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !499, file: !51, line: 662, baseType: !397, size: 64, offset: 1344)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !499, file: !51, line: 663, baseType: !397, size: 64, offset: 1408)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !499, file: !51, line: 665, baseType: !708, size: 128, offset: 1472)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !499, file: !51, line: 666, baseType: !293, size: 128, offset: 1600)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !499, file: !51, line: 675, baseType: !293, size: 128, offset: 1728)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !499, file: !51, line: 676, baseType: !293, size: 128, offset: 1856)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !499, file: !51, line: 677, baseType: !293, size: 128, offset: 1984)
!2918 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !51, line: 678, baseType: !2919, size: 128, offset: 2112)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !51, line: 678, size: 128, elements: !2920)
!2920 = !{!2921, !2922}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2919, file: !51, line: 679, baseType: !704, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2919, file: !51, line: 680, baseType: !438, size: 128, align: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !499, file: !51, line: 682, baseType: !843, size: 64, offset: 2240)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !499, file: !51, line: 683, baseType: !843, size: 64, offset: 2304)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !499, file: !51, line: 684, baseType: !817, size: 32, offset: 2368)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !499, file: !51, line: 685, baseType: !817, size: 32, offset: 2400)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !499, file: !51, line: 686, baseType: !817, size: 32, offset: 2432)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !499, file: !51, line: 688, baseType: !817, size: 32, offset: 2464)
!2929 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !51, line: 690, baseType: !2930, size: 64, offset: 2496)
!2930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !51, line: 690, size: 64, elements: !2931)
!2931 = !{!2932, !3164}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2930, file: !51, line: 691, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2935)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2936)
!2936 = !{!2937, !2938, !2942, !2947, !2951, !2952, !2953, !2957, !2970, !2971, !2988, !2992, !2993, !2997, !2998, !3002, !3007, !3008, !3012, !3016, !3124, !3128, !3129, !3133, !3134, !3138, !3142, !3147, !3151, !3155, !3159, !3163}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2935, file: !51, line: 1823, baseType: !246, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2935, file: !51, line: 1824, baseType: !2939, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!600, !425, !600, !128}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2935, file: !51, line: 1825, baseType: !2943, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!379, !425, !348, !394, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2935, file: !51, line: 1826, baseType: !2948, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!379, !425, !290, !394, !2946}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2935, file: !51, line: 1827, baseType: !914, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2935, file: !51, line: 1828, baseType: !914, size: 64, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2935, file: !51, line: 1829, baseType: !2954, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!128, !917, !559}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2935, file: !51, line: 1830, baseType: !2958, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!128, !425, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2963)
!2963 = !{!2964, !2969}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2962, file: !51, line: 1777, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!128, !2961, !290, !128, !600, !490, !7}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2962, file: !51, line: 1778, baseType: !600, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2935, file: !51, line: 1831, baseType: !2958, size: 64, offset: 512)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2935, file: !51, line: 1832, baseType: !2972, size: 64, offset: 576)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!2975, !425, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2976, line: 52, baseType: !7)
!2976 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2979, line: 43, size: 128, elements: !2980)
!2979 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2980 = !{!2981, !2987}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2978, file: !2979, line: 44, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2979, line: 37, baseType: !2983)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !425, !2986, !2977}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2978, file: !2979, line: 45, baseType: !2975, size: 32, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2935, file: !51, line: 1833, baseType: !2989, size: 64, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!214, !425, !7, !397}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2935, file: !51, line: 1834, baseType: !2989, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2935, file: !51, line: 1835, baseType: !2994, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!128, !425, !1051}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2935, file: !51, line: 1836, baseType: !397, size: 64, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2935, file: !51, line: 1837, baseType: !2999, size: 64, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!128, !498, !425}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2935, file: !51, line: 1838, baseType: !3003, size: 64, offset: 960)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!128, !425, !3006}
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !249)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2935, file: !51, line: 1839, baseType: !2999, size: 64, offset: 1024)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2935, file: !51, line: 1840, baseType: !3009, size: 64, offset: 1088)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!128, !425, !600, !600, !128}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2935, file: !51, line: 1841, baseType: !3013, size: 64, offset: 1152)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!128, !128, !425, !128}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2935, file: !51, line: 1842, baseType: !3017, size: 64, offset: 1216)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!128, !425, !128, !3020}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3054, !3055, !3056, !3069, !3100}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3021, file: !51, line: 1063, baseType: !3020, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3021, file: !51, line: 1064, baseType: !293, size: 128, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3021, file: !51, line: 1065, baseType: !708, size: 128, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3021, file: !51, line: 1066, baseType: !293, size: 128, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3021, file: !51, line: 1069, baseType: !293, size: 128, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3021, file: !51, line: 1072, baseType: !3006, size: 64, offset: 576)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3021, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3021, file: !51, line: 1074, baseType: !496, size: 8, offset: 672)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3021, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3021, file: !51, line: 1076, baseType: !128, size: 32, offset: 736)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3021, file: !51, line: 1077, baseType: !1556, size: 128, offset: 768)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3021, file: !51, line: 1078, baseType: !425, size: 64, offset: 896)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3021, file: !51, line: 1079, baseType: !600, size: 64, offset: 960)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3021, file: !51, line: 1080, baseType: !600, size: 64, offset: 1024)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3021, file: !51, line: 1082, baseType: !3038, size: 64, offset: 1088)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !3040)
!3040 = !{!3041, !3049, !3050, !3051, !3052, !3053}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3039, file: !51, line: 1315, baseType: !3042)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3043, line: 20, baseType: !3044)
!3043 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3043, line: 11, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3044, file: !3043, line: 12, baseType: !3047)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !319, line: 33, baseType: !3048)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 31, elements: !321)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3039, file: !51, line: 1316, baseType: !128, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3039, file: !51, line: 1317, baseType: !128, size: 32, offset: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3039, file: !51, line: 1318, baseType: !3038, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3039, file: !51, line: 1319, baseType: !425, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3039, file: !51, line: 1320, baseType: !438, size: 128, align: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3021, file: !51, line: 1084, baseType: !397, size: 64, offset: 1152)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3021, file: !51, line: 1085, baseType: !397, size: 64, offset: 1216)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3021, file: !51, line: 1087, baseType: !3057, size: 64, offset: 1280)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3059)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !3060)
!3060 = !{!3061, !3065}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3059, file: !51, line: 1012, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{null, !3020, !3020}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3059, file: !51, line: 1013, baseType: !3066, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !3020}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3021, file: !51, line: 1088, baseType: !3070, size: 64, offset: 1344)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3072)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !3073)
!3073 = !{!3074, !3078, !3082, !3083, !3087, !3091, !3095, !3099}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3072, file: !51, line: 1017, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!3006, !3006}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3072, file: !51, line: 1018, baseType: !3079, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !3006}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3072, file: !51, line: 1019, baseType: !3066, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3072, file: !51, line: 1020, baseType: !3084, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!128, !3020, !128}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3072, file: !51, line: 1021, baseType: !3088, size: 64, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!559, !3020}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3072, file: !51, line: 1022, baseType: !3092, size: 64, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!128, !3020, !128, !297}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3072, file: !51, line: 1023, baseType: !3096, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !3020, !891}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3072, file: !51, line: 1024, baseType: !3088, size: 64, offset: 448)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3021, file: !51, line: 1097, baseType: !3101, size: 256, offset: 1408)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3021, file: !51, line: 1089, size: 256, elements: !3102)
!3102 = !{!3103, !3112, !3118}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3101, file: !51, line: 1090, baseType: !3104, size: 256)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3105, line: 10, size: 256, elements: !3106)
!3105 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3106 = !{!3107, !3108, !3111}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3104, file: !3105, line: 11, baseType: !260, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3104, file: !3105, line: 12, baseType: !3109, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3105, line: 5, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3104, file: !3105, line: 13, baseType: !293, size: 128, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3101, file: !51, line: 1091, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3105, line: 17, size: 64, elements: !3114)
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3113, file: !3105, line: 18, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3105, line: 16, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3101, file: !51, line: 1096, baseType: !3119, size: 192)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3101, file: !51, line: 1092, size: 192, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3119, file: !51, line: 1093, baseType: !293, size: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3119, file: !51, line: 1094, baseType: !128, size: 32, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3119, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2935, file: !51, line: 1843, baseType: !3125, size: 64, offset: 1280)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!379, !425, !790, !128, !394, !2946, !128}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2935, file: !51, line: 1844, baseType: !1171, size: 64, offset: 1344)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2935, file: !51, line: 1845, baseType: !3130, size: 64, offset: 1408)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!128, !128}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2935, file: !51, line: 1846, baseType: !3017, size: 64, offset: 1472)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2935, file: !51, line: 1847, baseType: !3135, size: 64, offset: 1536)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!379, !2168, !425, !2946, !394, !7}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2935, file: !51, line: 1848, baseType: !3139, size: 64, offset: 1600)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!379, !425, !2946, !2168, !394, !7}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2935, file: !51, line: 1849, baseType: !3143, size: 64, offset: 1664)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!128, !425, !214, !3146, !891}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2935, file: !51, line: 1850, baseType: !3148, size: 64, offset: 1728)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!214, !425, !128, !600, !600}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2935, file: !51, line: 1852, baseType: !3152, size: 64, offset: 1792)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !780, !425}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2935, file: !51, line: 1856, baseType: !3156, size: 64, offset: 1856)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!379, !425, !600, !425, !600, !394, !7}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2935, file: !51, line: 1858, baseType: !3160, size: 64, offset: 1920)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!600, !425, !600, !425, !600, !600, !7}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2935, file: !51, line: 1861, baseType: !3009, size: 64, offset: 1984)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2930, file: !51, line: 692, baseType: !733, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !499, file: !51, line: 694, baseType: !3166, size: 64, offset: 2560)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3167, file: !51, line: 1101, baseType: !307)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3167, file: !51, line: 1102, baseType: !293, size: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3167, file: !51, line: 1103, baseType: !293, size: 128, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3167, file: !51, line: 1104, baseType: !293, size: 128, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !499, file: !51, line: 695, baseType: !804, size: 1216, align: 64, offset: 2624)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !499, file: !51, line: 696, baseType: !293, size: 128, offset: 3840)
!3175 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !51, line: 697, baseType: !3176, size: 64, offset: 3968)
!3176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !51, line: 697, size: 64, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3191, !3192}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3176, file: !51, line: 698, baseType: !2168, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3176, file: !51, line: 699, baseType: !2685, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3176, file: !51, line: 700, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3183, line: 14, size: 832, elements: !3184)
!3183 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3182, file: !3183, line: 15, baseType: !286, size: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3182, file: !3183, line: 16, baseType: !246, size: 64, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3182, file: !3183, line: 17, baseType: !2933, size: 64, offset: 576)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3182, file: !3183, line: 18, baseType: !293, size: 128, offset: 640)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3182, file: !3183, line: 19, baseType: !582, size: 32, offset: 768)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3182, file: !3183, line: 20, baseType: !7, size: 32, offset: 800)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3176, file: !51, line: 701, baseType: !348, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3176, file: !51, line: 702, baseType: !7, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !499, file: !51, line: 705, baseType: !262, size: 32, offset: 4032)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !499, file: !51, line: 708, baseType: !262, size: 32, offset: 4064)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !499, file: !51, line: 709, baseType: !2767, size: 64, offset: 4096)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !499, file: !51, line: 720, baseType: !249, size: 64, offset: 4160)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !456, file: !453, line: 98, baseType: !3198, size: 256, offset: 448)
!3198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 256, elements: !2300)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !456, file: !453, line: 101, baseType: !3200, size: 32, offset: 704)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3201, line: 25, size: 32, elements: !3202)
!3201 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3202 = !{!3203}
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !3201, line: 26, baseType: !3204, size: 32)
!3204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !3201, line: 26, size: 32, elements: !3205)
!3205 = !{!3206}
!3206 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !3201, line: 30, baseType: !3207, size: 32)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3204, file: !3201, line: 30, size: 32, elements: !3208)
!3208 = !{!3209, !3210}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3207, file: !3201, line: 31, baseType: !307)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3207, file: !3201, line: 32, baseType: !128, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !456, file: !453, line: 102, baseType: !2784, size: 64, offset: 768)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !456, file: !453, line: 103, baseType: !668, size: 64, offset: 832)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !456, file: !453, line: 104, baseType: !397, size: 64, offset: 896)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !456, file: !453, line: 105, baseType: !249, size: 64, offset: 960)
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !453, line: 107, baseType: !3216, size: 128, offset: 1024)
!3216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !453, line: 107, size: 128, elements: !3217)
!3217 = !{!3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3216, file: !453, line: 108, baseType: !293, size: 128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3216, file: !453, line: 109, baseType: !2986, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !456, file: !453, line: 111, baseType: !293, size: 128, offset: 1152)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !456, file: !453, line: 112, baseType: !293, size: 128, offset: 1280)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !456, file: !453, line: 120, baseType: !3223, size: 128, offset: 1408)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !453, line: 116, size: 128, elements: !3224)
!3224 = !{!3225, !3226, !3227}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3223, file: !453, line: 117, baseType: !708, size: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3223, file: !453, line: 118, baseType: !470, size: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3223, file: !453, line: 119, baseType: !438, size: 128, align: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !426, file: !51, line: 922, baseType: !498, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !426, file: !51, line: 923, baseType: !2933, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !426, file: !51, line: 929, baseType: !307, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !426, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !426, file: !51, line: 931, baseType: !841, size: 64, offset: 448)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !426, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !426, file: !51, line: 933, baseType: !2780, size: 32, offset: 544)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !426, file: !51, line: 934, baseType: !1243, size: 192, offset: 576)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !426, file: !51, line: 935, baseType: !600, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !426, file: !51, line: 936, baseType: !3238, size: 192, offset: 832)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3238, file: !51, line: 886, baseType: !3042)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3238, file: !51, line: 887, baseType: !1546, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3238, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3238, file: !51, line: 889, baseType: !504, size: 32, offset: 96)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3238, file: !51, line: 889, baseType: !504, size: 32, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3238, file: !51, line: 890, baseType: !128, size: 32, offset: 160)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !426, file: !51, line: 937, baseType: !1622, size: 64, offset: 1024)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !426, file: !51, line: 938, baseType: !3248, size: 256, offset: 1088)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3248, file: !51, line: 897, baseType: !397, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3248, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3248, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3248, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3248, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3248, file: !51, line: 904, baseType: !600, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !426, file: !51, line: 940, baseType: !490, size: 64, offset: 1344)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !426, file: !51, line: 945, baseType: !249, size: 64, offset: 1408)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !426, file: !51, line: 949, baseType: !293, size: 128, offset: 1472)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !426, file: !51, line: 950, baseType: !293, size: 128, offset: 1600)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !426, file: !51, line: 952, baseType: !803, size: 64, offset: 1728)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !426, file: !51, line: 953, baseType: !979, size: 32, offset: 1792)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !426, file: !51, line: 954, baseType: !979, size: 32, offset: 1824)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !416, file: !373, line: 174, baseType: !422, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !416, file: !373, line: 176, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!128, !425, !300, !415, !1051}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !404, file: !373, line: 90, baseType: !399, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !404, file: !373, line: 91, baseType: !3270, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !363, file: !287, line: 143, baseType: !3272, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!3275, !300}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3278)
!3278 = !{!3279, !3280, !3284, !3288, !3294, !3298}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3277, file: !68, line: 40, baseType: !67, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3277, file: !68, line: 41, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!559}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3277, file: !68, line: 42, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!249}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3277, file: !68, line: 43, baseType: !3289, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!2197, !3292}
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3277, file: !68, line: 44, baseType: !3295, size: 64, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!2197}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3277, file: !68, line: 45, baseType: !537, size: 64, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !363, file: !287, line: 144, baseType: !3300, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!2197, !300}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !363, file: !287, line: 145, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !300, !3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !286, file: !287, line: 70, baseType: !3310, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !688, line: 123, size: 1024, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3441, !3442, !3443, !3444, !3445}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3311, file: !688, line: 124, baseType: !817, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3311, file: !688, line: 125, baseType: !817, size: 32, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3311, file: !688, line: 135, baseType: !3310, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3311, file: !688, line: 136, baseType: !290, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3311, file: !688, line: 138, baseType: !830, size: 192, align: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3311, file: !688, line: 140, baseType: !2197, size: 64, offset: 384)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3311, file: !688, line: 141, baseType: !7, size: 32, offset: 448)
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3311, file: !688, line: 142, baseType: !3321, size: 256, offset: 512)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3311, file: !688, line: 142, size: 256, elements: !3322)
!3322 = !{!3323, !3369, !3373}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3321, file: !688, line: 143, baseType: !3324, size: 192)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !688, line: 91, size: 192, elements: !3325)
!3325 = !{!3326, !3327, !3328}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3324, file: !688, line: 92, baseType: !397, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3324, file: !688, line: 94, baseType: !826, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3324, file: !688, line: 100, baseType: !3329, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !688, line: 180, size: 704, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3341, !3342, !3343, !3367, !3368}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3330, file: !688, line: 182, baseType: !3310, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3330, file: !688, line: 183, baseType: !7, size: 32, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3330, file: !688, line: 186, baseType: !3335, size: 192, offset: 128)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3336, line: 19, size: 192, elements: !3337)
!3336 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3337 = !{!3338, !3339, !3340}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3335, file: !3336, line: 20, baseType: !808, size: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3335, file: !3336, line: 21, baseType: !7, size: 32, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3335, file: !3336, line: 22, baseType: !7, size: 32, offset: 160)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3330, file: !688, line: 187, baseType: !260, size: 32, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3330, file: !688, line: 188, baseType: !260, size: 32, offset: 352)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3330, file: !688, line: 189, baseType: !3344, size: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !688, line: 168, size: 320, elements: !3346)
!3346 = !{!3347, !3351, !3355, !3359, !3363}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3345, file: !688, line: 169, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!128, !780, !3329}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3345, file: !688, line: 171, baseType: !3352, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!128, !3310, !290, !388}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3345, file: !688, line: 173, baseType: !3356, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!128, !3310}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3345, file: !688, line: 174, baseType: !3360, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!128, !3310, !3310, !290}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3345, file: !688, line: 176, baseType: !3364, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!128, !780, !3310, !3329}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3330, file: !688, line: 192, baseType: !293, size: 128, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3330, file: !688, line: 194, baseType: !1556, size: 128, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3321, file: !688, line: 144, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !688, line: 103, size: 64, elements: !3371)
!3371 = !{!3372}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3370, file: !688, line: 104, baseType: !3310, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3321, file: !688, line: 145, baseType: !3374, size: 256)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !688, line: 107, size: 256, elements: !3375)
!3375 = !{!3376, !3436, !3439, !3440}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3374, file: !688, line: 108, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3379)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !688, line: 217, size: 768, elements: !3380)
!3380 = !{!3381, !3401, !3405, !3409, !3413, !3417, !3421, !3425, !3426, !3427, !3428, !3432}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3379, file: !688, line: 222, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!128, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !688, line: 197, size: 1088, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3386, file: !688, line: 199, baseType: !3310, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3386, file: !688, line: 200, baseType: !425, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3386, file: !688, line: 201, baseType: !780, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3386, file: !688, line: 202, baseType: !249, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3386, file: !688, line: 205, baseType: !1243, size: 192, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3386, file: !688, line: 206, baseType: !1243, size: 192, offset: 448)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3386, file: !688, line: 207, baseType: !128, size: 32, offset: 640)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3386, file: !688, line: 208, baseType: !293, size: 128, offset: 704)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3386, file: !688, line: 209, baseType: !348, size: 64, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3386, file: !688, line: 211, baseType: !394, size: 64, offset: 896)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3386, file: !688, line: 212, baseType: !559, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3386, file: !688, line: 213, baseType: !559, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3386, file: !688, line: 214, baseType: !1079, size: 64, offset: 1024)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3379, file: !688, line: 223, baseType: !3402, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !3385}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3379, file: !688, line: 236, baseType: !3406, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!128, !780, !249}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3379, file: !688, line: 238, baseType: !3410, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!249, !780, !2946}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3379, file: !688, line: 239, baseType: !3414, size: 64, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!249, !780, !249, !2946}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3379, file: !688, line: 240, baseType: !3418, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !780, !249}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3379, file: !688, line: 242, baseType: !3422, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!379, !3385, !348, !394, !600}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3379, file: !688, line: 252, baseType: !394, size: 64, offset: 448)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3379, file: !688, line: 259, baseType: !559, size: 8, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3379, file: !688, line: 260, baseType: !3422, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3379, file: !688, line: 263, baseType: !3429, size: 64, offset: 640)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!2975, !3385, !2977}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3379, file: !688, line: 266, baseType: !3433, size: 64, offset: 704)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!128, !3385, !1051}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3374, file: !688, line: 109, baseType: !3437, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !688, line: 31, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3374, file: !688, line: 110, baseType: !600, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3374, file: !688, line: 111, baseType: !3310, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3311, file: !688, line: 148, baseType: !249, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3311, file: !688, line: 154, baseType: !490, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3311, file: !688, line: 156, baseType: !389, size: 16, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3311, file: !688, line: 157, baseType: !388, size: 16, offset: 912)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3311, file: !688, line: 158, baseType: !3446, size: 64, offset: 960)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !688, line: 32, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !286, file: !287, line: 71, baseType: !3449, size: 32, offset: 448)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3450, line: 19, size: 32, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3451 = !{!3452}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3449, file: !3450, line: 20, baseType: !1300, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !286, file: !287, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !286, file: !287, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !286, file: !287, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !286, file: !287, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !286, file: !287, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !80, line: 463, baseType: !282, size: 64, offset: 512)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !283, file: !80, line: 465, baseType: !3460, size: 64, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !283, file: !80, line: 467, baseType: !290, size: 64, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !80, line: 468, baseType: !3464, size: 64, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3474, !3479, !3483}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3466, file: !80, line: 88, baseType: !290, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3466, file: !80, line: 89, baseType: !401, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3466, file: !80, line: 90, baseType: !3471, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!128, !282, !343}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3466, file: !80, line: 91, baseType: !3475, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!348, !282, !3478, !3307, !3308}
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3466, file: !80, line: 93, baseType: !3480, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !282}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3466, file: !80, line: 95, baseType: !3484, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3487)
!3487 = !{!3488, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3486, file: !87, line: 279, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!128, !282}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3486, file: !87, line: 280, baseType: !3480, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3486, file: !87, line: 281, baseType: !3489, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3486, file: !87, line: 282, baseType: !3489, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3486, file: !87, line: 283, baseType: !3489, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3486, file: !87, line: 284, baseType: !3489, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3486, file: !87, line: 285, baseType: !3489, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3486, file: !87, line: 286, baseType: !3489, size: 64, offset: 448)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3486, file: !87, line: 287, baseType: !3489, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3486, file: !87, line: 288, baseType: !3489, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3486, file: !87, line: 289, baseType: !3489, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3486, file: !87, line: 290, baseType: !3489, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3486, file: !87, line: 291, baseType: !3489, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3486, file: !87, line: 292, baseType: !3489, size: 64, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3486, file: !87, line: 293, baseType: !3489, size: 64, offset: 896)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3486, file: !87, line: 294, baseType: !3489, size: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3486, file: !87, line: 295, baseType: !3489, size: 64, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3486, file: !87, line: 296, baseType: !3489, size: 64, offset: 1088)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3486, file: !87, line: 297, baseType: !3489, size: 64, offset: 1152)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3486, file: !87, line: 298, baseType: !3489, size: 64, offset: 1216)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3486, file: !87, line: 299, baseType: !3489, size: 64, offset: 1280)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3486, file: !87, line: 300, baseType: !3489, size: 64, offset: 1344)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3486, file: !87, line: 301, baseType: !3489, size: 64, offset: 1408)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !283, file: !80, line: 470, baseType: !3515, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3517, line: 82, size: 1408, elements: !3518)
!3517 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3600, !3603, !3604}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3516, file: !3517, line: 83, baseType: !290, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3516, file: !3517, line: 84, baseType: !290, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3516, file: !3517, line: 85, baseType: !282, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3516, file: !3517, line: 86, baseType: !401, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3516, file: !3517, line: 87, baseType: !401, size: 64, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3516, file: !3517, line: 88, baseType: !401, size: 64, offset: 320)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3516, file: !3517, line: 90, baseType: !3526, size: 64, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!128, !282, !3529}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538, !3551, !3564, !3565, !3566, !3567, !3568, !3576, !3577, !3578, !3579, !3580, !3581}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3530, file: !74, line: 96, baseType: !290, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3530, file: !74, line: 97, baseType: !3515, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3530, file: !74, line: 99, baseType: !246, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3530, file: !74, line: 100, baseType: !290, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3530, file: !74, line: 102, baseType: !559, size: 8, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3530, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3530, file: !74, line: 105, baseType: !3539, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3542, line: 262, size: 1600, elements: !3543)
!3542 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3543 = !{!3544, !3545, !3546, !3550}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3541, file: !3542, line: 263, baseType: !2770, size: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3541, file: !3542, line: 264, baseType: !2770, size: 256, offset: 256)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3541, file: !3542, line: 265, baseType: !3547, size: 1024, offset: 512)
!3547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 1024, elements: !3548)
!3548 = !{!3549}
!3549 = !DISubrange(count: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3541, file: !3542, line: 266, baseType: !2197, size: 64, offset: 1536)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3530, file: !74, line: 106, baseType: !3552, size: 64, offset: 384)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3554)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3542, line: 210, size: 256, elements: !3555)
!3555 = !{!3556, !3560, !3562, !3563}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3554, file: !3542, line: 211, baseType: !3557, size: 72)
!3557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 72, elements: !3558)
!3558 = !{!3559}
!3559 = !DISubrange(count: 9)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3554, file: !3542, line: 212, baseType: !3561, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3542, line: 14, baseType: !397)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3554, file: !3542, line: 213, baseType: !262, size: 32, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3554, file: !3542, line: 214, baseType: !262, size: 32, offset: 224)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3530, file: !74, line: 108, baseType: !3489, size: 64, offset: 448)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3530, file: !74, line: 109, baseType: !3480, size: 64, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3530, file: !74, line: 110, baseType: !3489, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3530, file: !74, line: 111, baseType: !3480, size: 64, offset: 640)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3530, file: !74, line: 112, baseType: !3569, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!128, !282, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3573)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3574)
!3574 = !{!3575}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3573, file: !87, line: 51, baseType: !128, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3530, file: !74, line: 113, baseType: !3489, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3530, file: !74, line: 114, baseType: !401, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3530, file: !74, line: 115, baseType: !401, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3530, file: !74, line: 117, baseType: !3484, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3530, file: !74, line: 118, baseType: !3480, size: 64, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3530, file: !74, line: 120, baseType: !3582, size: 64, offset: 1088)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3516, file: !3517, line: 91, baseType: !3471, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3516, file: !3517, line: 92, baseType: !3489, size: 64, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3516, file: !3517, line: 93, baseType: !3480, size: 64, offset: 576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3516, file: !3517, line: 94, baseType: !3489, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3516, file: !3517, line: 95, baseType: !3480, size: 64, offset: 704)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3516, file: !3517, line: 97, baseType: !3489, size: 64, offset: 768)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3516, file: !3517, line: 98, baseType: !3489, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3516, file: !3517, line: 100, baseType: !3569, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3516, file: !3517, line: 101, baseType: !3489, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3516, file: !3517, line: 103, baseType: !3489, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3516, file: !3517, line: 105, baseType: !3489, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3516, file: !3517, line: 107, baseType: !3484, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3516, file: !3517, line: 109, baseType: !3597, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3599)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3517, line: 109, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3516, file: !3517, line: 111, baseType: !3601, size: 64, offset: 1280)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3517, line: 111, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3516, file: !3517, line: 112, baseType: !714, offset: 1344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3516, file: !3517, line: 114, baseType: !559, size: 8, offset: 1344)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !283, file: !80, line: 471, baseType: !3529, size: 64, offset: 832)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !283, file: !80, line: 473, baseType: !249, size: 64, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !283, file: !80, line: 475, baseType: !249, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !283, file: !80, line: 480, baseType: !1243, size: 192, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !283, file: !80, line: 484, baseType: !3610, size: 576, offset: 1216)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3610, file: !80, line: 362, baseType: !293, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3610, file: !80, line: 363, baseType: !293, size: 128, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3610, file: !80, line: 364, baseType: !293, size: 128, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3610, file: !80, line: 365, baseType: !293, size: 128, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3610, file: !80, line: 366, baseType: !559, size: 8, offset: 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3610, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !283, file: !80, line: 485, baseType: !3619, size: 2304, offset: 1792)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3716, !3720}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3619, file: !87, line: 566, baseType: !3572, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3619, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3619, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3619, file: !87, line: 569, baseType: !559, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3619, file: !87, line: 570, baseType: !559, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3619, file: !87, line: 571, baseType: !559, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3619, file: !87, line: 572, baseType: !559, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3619, file: !87, line: 573, baseType: !559, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3619, file: !87, line: 574, baseType: !559, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3619, file: !87, line: 575, baseType: !559, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3619, file: !87, line: 576, baseType: !559, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3619, file: !87, line: 577, baseType: !260, size: 32, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3619, file: !87, line: 578, baseType: !307, offset: 96)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3619, file: !87, line: 580, baseType: !293, size: 128, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3619, file: !87, line: 581, baseType: !1577, size: 192, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3619, file: !87, line: 582, baseType: !3637, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3639, line: 43, size: 1472, elements: !3640)
!3639 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3648, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3638, file: !3639, line: 44, baseType: !290, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3638, file: !3639, line: 45, baseType: !128, size: 32, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3638, file: !3639, line: 46, baseType: !293, size: 128, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3638, file: !3639, line: 47, baseType: !307, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3638, file: !3639, line: 48, baseType: !3646, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3638, file: !3639, line: 49, baseType: !3649, size: 320, offset: 320)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3650, line: 11, size: 320, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3651 = !{!3652, !3653, !3654, !3659}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3649, file: !3650, line: 16, baseType: !708, size: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3649, file: !3650, line: 17, baseType: !397, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3649, file: !3650, line: 18, baseType: !3655, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !3658}
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3649, file: !3650, line: 19, baseType: !260, size: 32, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3638, file: !3639, line: 50, baseType: !397, size: 64, offset: 640)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3638, file: !3639, line: 51, baseType: !1370, size: 64, offset: 704)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3638, file: !3639, line: 52, baseType: !1370, size: 64, offset: 768)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3638, file: !3639, line: 53, baseType: !1370, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3638, file: !3639, line: 54, baseType: !1370, size: 64, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3638, file: !3639, line: 55, baseType: !1370, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3638, file: !3639, line: 56, baseType: !397, size: 64, offset: 1024)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3638, file: !3639, line: 57, baseType: !397, size: 64, offset: 1088)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3638, file: !3639, line: 58, baseType: !397, size: 64, offset: 1152)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3638, file: !3639, line: 59, baseType: !397, size: 64, offset: 1216)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3638, file: !3639, line: 60, baseType: !397, size: 64, offset: 1280)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3638, file: !3639, line: 61, baseType: !282, size: 64, offset: 1344)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3638, file: !3639, line: 62, baseType: !559, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3638, file: !3639, line: 63, baseType: !559, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3619, file: !87, line: 583, baseType: !559, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3619, file: !87, line: 584, baseType: !559, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3619, file: !87, line: 585, baseType: !559, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3619, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3619, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3619, file: !87, line: 592, baseType: !1362, size: 512, offset: 576)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3619, file: !87, line: 593, baseType: !490, size: 64, offset: 1088)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3619, file: !87, line: 594, baseType: !2028, size: 256, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3619, file: !87, line: 595, baseType: !1556, size: 128, offset: 1408)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3619, file: !87, line: 596, baseType: !3646, size: 64, offset: 1536)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3619, file: !87, line: 597, baseType: !817, size: 32, offset: 1600)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3619, file: !87, line: 598, baseType: !817, size: 32, offset: 1632)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3619, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3619, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3619, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3619, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3619, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3619, file: !87, line: 604, baseType: !559, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3619, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3619, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3619, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3619, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3619, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3619, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3619, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3619, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3619, file: !87, line: 613, baseType: !128, size: 32, offset: 1792)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3619, file: !87, line: 614, baseType: !128, size: 32, offset: 1824)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3619, file: !87, line: 615, baseType: !490, size: 64, offset: 1856)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3619, file: !87, line: 616, baseType: !490, size: 64, offset: 1920)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3619, file: !87, line: 617, baseType: !490, size: 64, offset: 1984)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3619, file: !87, line: 618, baseType: !490, size: 64, offset: 2048)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3619, file: !87, line: 620, baseType: !3707, size: 64, offset: 2112)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3709)
!3709 = !{!3710, !3711, !3712, !3713}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3708, file: !87, line: 537, baseType: !307)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3708, file: !87, line: 538, baseType: !7, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3708, file: !87, line: 540, baseType: !293, size: 128, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3708, file: !87, line: 543, baseType: !3714, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3619, file: !87, line: 621, baseType: !3717, size: 64, offset: 2176)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !282, !1514}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3619, file: !87, line: 622, baseType: !3721, size: 64, offset: 2240)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !283, file: !80, line: 486, baseType: !3724, size: 64, offset: 4096)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3733, !3734, !3735}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3725, file: !87, line: 643, baseType: !3486, size: 1472)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3725, file: !87, line: 644, baseType: !3489, size: 64, offset: 1472)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3725, file: !87, line: 645, baseType: !3730, size: 64, offset: 1536)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !282, !559}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3725, file: !87, line: 646, baseType: !3489, size: 64, offset: 1600)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3725, file: !87, line: 647, baseType: !3480, size: 64, offset: 1664)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3725, file: !87, line: 648, baseType: !3480, size: 64, offset: 1728)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !283, file: !80, line: 493, baseType: !3737, size: 64, offset: 4160)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !80, line: 493, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !283, file: !80, line: 499, baseType: !293, size: 128, offset: 4224)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !283, file: !80, line: 502, baseType: !3741, size: 64, offset: 4352)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3743)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !283, file: !80, line: 504, baseType: !3745, size: 64, offset: 4416)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !283, file: !80, line: 505, baseType: !490, size: 64, offset: 4480)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !283, file: !80, line: 510, baseType: !490, size: 64, offset: 4544)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !283, file: !80, line: 511, baseType: !3749, size: 64, offset: 4608)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3751)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !283, file: !80, line: 513, baseType: !3753, size: 64, offset: 4672)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3755)
!3755 = !{!3756, !3757}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3754, file: !80, line: 293, baseType: !7, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3754, file: !80, line: 294, baseType: !397, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !283, file: !80, line: 515, baseType: !293, size: 128, offset: 4736)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !283, file: !80, line: 526, baseType: !3760, offset: 4864)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3761, line: 5, elements: !321)
!3761 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !283, file: !80, line: 528, baseType: !3763, size: 64, offset: 4864)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3765, line: 14, flags: DIFlagFwdDecl)
!3765 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !283, file: !80, line: 529, baseType: !3767, size: 64, offset: 4928)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3769, line: 17, size: 192, elements: !3770)
!3769 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3770 = !{!3771, !3772, !3855}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3768, file: !3769, line: 18, baseType: !3767, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3768, file: !3769, line: 19, baseType: !3773, size: 64, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3775)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3769, line: 110, size: 1152, elements: !3776)
!3776 = !{!3777, !3781, !3785, !3791, !3797, !3801, !3805, !3810, !3814, !3815, !3819, !3823, !3827, !3838, !3839, !3840, !3841, !3851}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3775, file: !3769, line: 111, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!3767, !3767}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3775, file: !3769, line: 112, baseType: !3782, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{null, !3767}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3775, file: !3769, line: 113, baseType: !3786, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!559, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3775, file: !3769, line: 114, baseType: !3792, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!2197, !3789, !3795}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3775, file: !3769, line: 116, baseType: !3798, size: 64, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!559, !3789, !290}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3775, file: !3769, line: 118, baseType: !3802, size: 64, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!128, !3789, !290, !7, !249, !394}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3775, file: !3769, line: 123, baseType: !3806, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!128, !3789, !290, !3809, !394}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3775, file: !3769, line: 126, baseType: !3811, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!290, !3789}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3775, file: !3769, line: 127, baseType: !3811, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3775, file: !3769, line: 128, baseType: !3816, size: 64, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!3767, !3789}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3775, file: !3769, line: 130, baseType: !3820, size: 64, offset: 640)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3767, !3789, !3767}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3775, file: !3769, line: 133, baseType: !3824, size: 64, offset: 704)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3767, !3789, !290}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3775, file: !3769, line: 135, baseType: !3828, size: 64, offset: 768)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!128, !3789, !290, !290, !7, !7, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3769, line: 43, size: 640, elements: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3832, file: !3769, line: 44, baseType: !3767, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3832, file: !3769, line: 45, baseType: !7, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3832, file: !3769, line: 46, baseType: !3837, size: 512, offset: 128)
!3837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 512, elements: !1400)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3775, file: !3769, line: 140, baseType: !3820, size: 64, offset: 832)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3775, file: !3769, line: 143, baseType: !3816, size: 64, offset: 896)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3775, file: !3769, line: 145, baseType: !3778, size: 64, offset: 960)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3775, file: !3769, line: 146, baseType: !3842, size: 64, offset: 1024)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!128, !3789, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3769, line: 29, size: 128, elements: !3847)
!3847 = !{!3848, !3849, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3846, file: !3769, line: 30, baseType: !7, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3846, file: !3769, line: 31, baseType: !7, size: 32, offset: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3846, file: !3769, line: 32, baseType: !3789, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3775, file: !3769, line: 148, baseType: !3852, size: 64, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!128, !3789, !282}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3768, file: !3769, line: 20, baseType: !282, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !283, file: !80, line: 534, baseType: !582, size: 32, offset: 4992)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !283, file: !80, line: 535, baseType: !260, size: 32, offset: 5024)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !283, file: !80, line: 537, baseType: !307, offset: 5056)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !283, file: !80, line: 538, baseType: !293, size: 128, offset: 5056)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !283, file: !80, line: 540, baseType: !3861, size: 64, offset: 5184)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3863, line: 54, size: 960, elements: !3864)
!3863 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871, !3875, !3879, !3880, !3881, !3882, !3886, !3890, !3891}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3862, file: !3863, line: 55, baseType: !290, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3862, file: !3863, line: 56, baseType: !246, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3862, file: !3863, line: 58, baseType: !401, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3862, file: !3863, line: 59, baseType: !401, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3862, file: !3863, line: 60, baseType: !300, size: 64, offset: 256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3862, file: !3863, line: 62, baseType: !3471, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3862, file: !3863, line: 63, baseType: !3872, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!348, !282, !3478}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3862, file: !3863, line: 65, baseType: !3876, size: 64, offset: 448)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3861}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3862, file: !3863, line: 66, baseType: !3480, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3862, file: !3863, line: 68, baseType: !3489, size: 64, offset: 576)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3862, file: !3863, line: 70, baseType: !3275, size: 64, offset: 640)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3862, file: !3863, line: 71, baseType: !3883, size: 64, offset: 704)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!2197, !282}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3862, file: !3863, line: 73, baseType: !3887, size: 64, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !282, !3307, !3308}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3862, file: !3863, line: 75, baseType: !3484, size: 64, offset: 832)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3862, file: !3863, line: 77, baseType: !3601, size: 64, offset: 896)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !283, file: !80, line: 541, baseType: !401, size: 64, offset: 5248)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !283, file: !80, line: 543, baseType: !3480, size: 64, offset: 5312)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !283, file: !80, line: 544, baseType: !3895, size: 64, offset: 5376)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !283, file: !80, line: 545, baseType: !3898, size: 64, offset: 5440)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !283, file: !80, line: 547, baseType: !559, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !283, file: !80, line: 548, baseType: !559, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !283, file: !80, line: 549, baseType: !559, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !283, file: !80, line: 550, baseType: !559, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !279, file: !6, line: 426, baseType: !282, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !279, file: !6, line: 427, baseType: !128, size: 32, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !279, file: !6, line: 428, baseType: !290, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !279, file: !6, line: 429, baseType: !1422, size: 8, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !279, file: !6, line: 433, baseType: !1422, size: 8, offset: 264)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !279, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !279, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !279, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !279, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !279, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !279, file: !6, line: 444, baseType: !128, size: 32, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !279, file: !6, line: 446, baseType: !1243, size: 192, offset: 384)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !279, file: !6, line: 448, baseType: !3917, size: 128, offset: 576)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3918)
!3918 = !{!3919}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3917, file: !6, line: 418, baseType: !3920, size: 128)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, elements: !274)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !279, file: !6, line: 449, baseType: !250, size: 64, offset: 704)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !279, file: !6, line: 450, baseType: !278, size: 64, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !279, file: !6, line: 452, baseType: !128, size: 32, offset: 832)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !279, file: !6, line: 459, baseType: !128, size: 32, offset: 864)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !279, file: !6, line: 460, baseType: !128, size: 32, offset: 896)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !279, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !251, file: !6, line: 647, baseType: !3928, size: 640, offset: 640)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3929)
!3929 = !{!3930, !3942, !3950, !3958, !3959, !3960, !3963, !3965, !3966, !3967}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3928, file: !6, line: 68, baseType: !3931, size: 72)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !101, line: 407, size: 72, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3939, !3940, !3941}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3931, file: !101, line: 408, baseType: !1423, size: 8)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3931, file: !101, line: 409, baseType: !1423, size: 8, offset: 8)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3931, file: !101, line: 411, baseType: !1423, size: 8, offset: 16)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3931, file: !101, line: 412, baseType: !1423, size: 8, offset: 24)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3931, file: !101, line: 413, baseType: !3938, size: 16, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2976, line: 29, baseType: !930)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3931, file: !101, line: 414, baseType: !1423, size: 8, offset: 48)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3931, file: !101, line: 418, baseType: !1423, size: 8, offset: 56)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3931, file: !101, line: 419, baseType: !1423, size: 8, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3928, file: !6, line: 69, baseType: !3943, size: 48, offset: 72)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !101, line: 689, size: 48, elements: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3949}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3943, file: !101, line: 690, baseType: !1423, size: 8)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3943, file: !101, line: 691, baseType: !1423, size: 8, offset: 8)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3943, file: !101, line: 693, baseType: !1423, size: 8, offset: 16)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3943, file: !101, line: 694, baseType: !1423, size: 8, offset: 24)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3943, file: !101, line: 695, baseType: !3938, size: 16, offset: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3928, file: !6, line: 70, baseType: !3951, size: 64, offset: 120)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !101, line: 677, size: 64, elements: !3952)
!3952 = !{!3953, !3954, !3955, !3956}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3951, file: !101, line: 678, baseType: !1423, size: 8)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3951, file: !101, line: 679, baseType: !1423, size: 8, offset: 8)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3951, file: !101, line: 680, baseType: !3938, size: 16, offset: 16)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3951, file: !101, line: 681, baseType: !3957, size: 32, offset: 32)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2976, line: 31, baseType: !262)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3928, file: !6, line: 71, baseType: !293, size: 128, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3928, file: !6, line: 72, baseType: !249, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3928, file: !6, line: 73, baseType: !3961, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3928, file: !6, line: 75, baseType: !3964, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3928, file: !6, line: 76, baseType: !128, size: 32, offset: 512)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3928, file: !6, line: 77, baseType: !128, size: 32, offset: 544)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3928, file: !6, line: 78, baseType: !128, size: 32, offset: 576)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !251, file: !6, line: 649, baseType: !283, size: 5568, offset: 1280)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !251, file: !6, line: 651, baseType: !3970, size: 144, offset: 6848)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !101, line: 289, size: 144, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3970, file: !101, line: 290, baseType: !1423, size: 8)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3970, file: !101, line: 291, baseType: !1423, size: 8, offset: 8)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3970, file: !101, line: 293, baseType: !3938, size: 16, offset: 16)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3970, file: !101, line: 294, baseType: !1423, size: 8, offset: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3970, file: !101, line: 295, baseType: !1423, size: 8, offset: 40)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3970, file: !101, line: 296, baseType: !1423, size: 8, offset: 48)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3970, file: !101, line: 297, baseType: !1423, size: 8, offset: 56)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3970, file: !101, line: 298, baseType: !3938, size: 16, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3970, file: !101, line: 299, baseType: !3938, size: 16, offset: 80)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3970, file: !101, line: 300, baseType: !3938, size: 16, offset: 96)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3970, file: !101, line: 301, baseType: !1423, size: 8, offset: 112)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3970, file: !101, line: 302, baseType: !1423, size: 8, offset: 120)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3970, file: !101, line: 303, baseType: !1423, size: 8, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3970, file: !101, line: 304, baseType: !1423, size: 8, offset: 136)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !251, file: !6, line: 652, baseType: !3987, size: 64, offset: 7040)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3989)
!3989 = !{!3990, !3998, !4006, !4018, !4031, !4040}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3988, file: !6, line: 397, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !101, line: 844, size: 40, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3992, file: !101, line: 845, baseType: !1423, size: 8)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3992, file: !101, line: 846, baseType: !1423, size: 8, offset: 8)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3992, file: !101, line: 848, baseType: !3938, size: 16, offset: 16)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3992, file: !101, line: 849, baseType: !1423, size: 8, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3988, file: !6, line: 400, baseType: !3999, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !101, line: 895, size: 56, elements: !4001)
!4001 = !{!4002, !4003, !4004, !4005}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4000, file: !101, line: 896, baseType: !1423, size: 8)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4000, file: !101, line: 897, baseType: !1423, size: 8, offset: 8)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4000, file: !101, line: 898, baseType: !1423, size: 8, offset: 16)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4000, file: !101, line: 899, baseType: !3957, size: 32, offset: 24)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3988, file: !6, line: 401, baseType: !4007, size: 64, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !101, line: 917, size: 80, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4008, file: !101, line: 918, baseType: !1423, size: 8)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4008, file: !101, line: 919, baseType: !1423, size: 8, offset: 8)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4008, file: !101, line: 920, baseType: !1423, size: 8, offset: 16)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4008, file: !101, line: 921, baseType: !1423, size: 8, offset: 24)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4008, file: !101, line: 923, baseType: !3938, size: 16, offset: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4008, file: !101, line: 928, baseType: !1423, size: 8, offset: 48)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4008, file: !101, line: 929, baseType: !1423, size: 8, offset: 56)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4008, file: !101, line: 930, baseType: !3938, size: 16, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3988, file: !6, line: 402, baseType: !4019, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !101, line: 955, size: 128, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4020, file: !101, line: 956, baseType: !1423, size: 8)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4020, file: !101, line: 957, baseType: !1423, size: 8, offset: 8)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4020, file: !101, line: 958, baseType: !1423, size: 8, offset: 16)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4020, file: !101, line: 959, baseType: !1423, size: 8, offset: 24)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4020, file: !101, line: 960, baseType: !3957, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4020, file: !101, line: 963, baseType: !3938, size: 16, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4020, file: !101, line: 967, baseType: !3938, size: 16, offset: 80)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4020, file: !101, line: 968, baseType: !4030, size: 32, offset: 96)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3957, size: 32, elements: !1441)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3988, file: !6, line: 403, baseType: !4032, size: 64, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !101, line: 940, size: 160, elements: !4034)
!4034 = !{!4035, !4036, !4037, !4038, !4039}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4033, file: !101, line: 941, baseType: !1423, size: 8)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4033, file: !101, line: 942, baseType: !1423, size: 8, offset: 8)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4033, file: !101, line: 943, baseType: !1423, size: 8, offset: 16)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4033, file: !101, line: 944, baseType: !1423, size: 8, offset: 24)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4033, file: !101, line: 945, baseType: !2777, size: 128, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3988, file: !6, line: 404, baseType: !4041, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !101, line: 1080, size: 24, elements: !4043)
!4043 = !{!4044, !4045, !4046}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4042, file: !101, line: 1081, baseType: !1423, size: 8)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4042, file: !101, line: 1082, baseType: !1423, size: 8, offset: 8)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4042, file: !101, line: 1083, baseType: !1423, size: 8, offset: 16)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !251, file: !6, line: 653, baseType: !4048, size: 64, offset: 7104)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !4050)
!4050 = !{!4051, !4062, !4063, !4076, !4118, !4127, !4128}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4049, file: !6, line: 375, baseType: !4052, size: 72)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !101, line: 349, size: 72, elements: !4053)
!4053 = !{!4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4052, file: !101, line: 350, baseType: !1423, size: 8)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4052, file: !101, line: 351, baseType: !1423, size: 8, offset: 8)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4052, file: !101, line: 353, baseType: !3938, size: 16, offset: 16)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4052, file: !101, line: 354, baseType: !1423, size: 8, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4052, file: !101, line: 355, baseType: !1423, size: 8, offset: 40)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4052, file: !101, line: 356, baseType: !1423, size: 8, offset: 48)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4052, file: !101, line: 357, baseType: !1423, size: 8, offset: 56)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4052, file: !101, line: 358, baseType: !1423, size: 8, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4049, file: !6, line: 377, baseType: !348, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4049, file: !6, line: 381, baseType: !4064, size: 1024, offset: 192)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4065, size: 1024, elements: !257)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !101, line: 783, size: 64, elements: !4067)
!4067 = !{!4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4066, file: !101, line: 784, baseType: !1423, size: 8)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4066, file: !101, line: 785, baseType: !1423, size: 8, offset: 8)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4066, file: !101, line: 787, baseType: !1423, size: 8, offset: 16)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4066, file: !101, line: 788, baseType: !1423, size: 8, offset: 24)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4066, file: !101, line: 789, baseType: !1423, size: 8, offset: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4066, file: !101, line: 790, baseType: !1423, size: 8, offset: 40)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4066, file: !101, line: 791, baseType: !1423, size: 8, offset: 48)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4066, file: !101, line: 792, baseType: !1423, size: 8, offset: 56)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4049, file: !6, line: 385, baseType: !4077, size: 2048, offset: 1216)
!4077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4078, size: 2048, elements: !2300)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !4080)
!4080 = !{!4081, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4079, file: !6, line: 235, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !4084)
!4084 = !{!4085, !4097, !4098, !4099, !4101}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4083, file: !6, line: 83, baseType: !4086, size: 72)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !101, line: 389, size: 72, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4086, file: !101, line: 390, baseType: !1423, size: 8)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4086, file: !101, line: 391, baseType: !1423, size: 8, offset: 8)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4086, file: !101, line: 393, baseType: !1423, size: 8, offset: 16)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4086, file: !101, line: 394, baseType: !1423, size: 8, offset: 24)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4086, file: !101, line: 395, baseType: !1423, size: 8, offset: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4086, file: !101, line: 396, baseType: !1423, size: 8, offset: 40)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4086, file: !101, line: 397, baseType: !1423, size: 8, offset: 48)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4086, file: !101, line: 398, baseType: !1423, size: 8, offset: 56)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4086, file: !101, line: 399, baseType: !1423, size: 8, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4083, file: !6, line: 85, baseType: !128, size: 32, offset: 96)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4083, file: !6, line: 86, baseType: !3964, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4083, file: !6, line: 91, baseType: !4100, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4083, file: !6, line: 93, baseType: !348, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4079, file: !6, line: 237, baseType: !4082, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4079, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4079, file: !6, line: 243, baseType: !4065, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4079, file: !6, line: 245, baseType: !128, size: 32, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4079, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4079, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4079, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4079, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4079, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4079, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4079, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4079, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4079, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4079, file: !6, line: 257, baseType: !283, size: 5568, offset: 384)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4079, file: !6, line: 258, baseType: !282, size: 64, offset: 5952)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4079, file: !6, line: 259, baseType: !2028, size: 256, offset: 6016)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4049, file: !6, line: 389, baseType: !4119, size: 2048, offset: 3264)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4120, size: 2048, elements: !2300)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4122)
!4122 = !{!4123, !4124, !4125}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4121, file: !6, line: 323, baseType: !7, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4121, file: !6, line: 324, baseType: !3449, size: 32, offset: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4121, file: !6, line: 328, baseType: !4126, offset: 64)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4083, elements: !2401)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4049, file: !6, line: 391, baseType: !3964, size: 64, offset: 5312)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4049, file: !6, line: 392, baseType: !128, size: 32, offset: 5376)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !251, file: !6, line: 655, baseType: !4048, size: 64, offset: 7168)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !251, file: !6, line: 656, baseType: !4131, size: 1024, offset: 7232)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4100, size: 1024, elements: !257)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !251, file: !6, line: 657, baseType: !4131, size: 1024, offset: 8256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !251, file: !6, line: 659, baseType: !4134, size: 64, offset: 9280)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !251, file: !6, line: 661, baseType: !389, size: 16, offset: 9344)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !251, file: !6, line: 662, baseType: !1422, size: 8, offset: 9360)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !251, file: !6, line: 663, baseType: !1422, size: 8, offset: 9368)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !251, file: !6, line: 664, baseType: !1422, size: 8, offset: 9376)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !251, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !251, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !251, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !251, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !251, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !251, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !251, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !251, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !251, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !251, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !251, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !251, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !251, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !251, file: !6, line: 679, baseType: !128, size: 32, offset: 9408)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !251, file: !6, line: 682, baseType: !348, size: 64, offset: 9472)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !251, file: !6, line: 683, baseType: !348, size: 64, offset: 9536)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !251, file: !6, line: 684, baseType: !348, size: 64, offset: 9600)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !251, file: !6, line: 686, baseType: !293, size: 128, offset: 9664)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !251, file: !6, line: 688, baseType: !128, size: 32, offset: 9792)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !251, file: !6, line: 690, baseType: !260, size: 32, offset: 9824)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !251, file: !6, line: 691, baseType: !817, size: 32, offset: 9856)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !251, file: !6, line: 693, baseType: !397, size: 64, offset: 9920)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !251, file: !6, line: 696, baseType: !397, size: 64, offset: 9984)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !251, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !251, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !251, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !251, file: !6, line: 702, baseType: !4166, size: 64, offset: 10112)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !251, file: !6, line: 703, baseType: !128, size: 32, offset: 10176)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !251, file: !6, line: 704, baseType: !121, size: 32, offset: 10208)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !251, file: !6, line: 705, baseType: !4171, size: 64, offset: 10240)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4172)
!4172 = !{!4173, !4174}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4171, file: !6, line: 506, baseType: !7, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4171, file: !6, line: 512, baseType: !128, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !251, file: !6, line: 706, baseType: !4176, size: 128, offset: 10304)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4177)
!4177 = !{!4178, !4179, !4180, !4181}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4176, file: !6, line: 529, baseType: !7, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4176, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4176, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4176, file: !6, line: 551, baseType: !128, size: 32, offset: 96)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !251, file: !6, line: 707, baseType: !4176, size: 128, offset: 10432)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !251, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !251, file: !6, line: 710, baseType: !929, size: 16, offset: 10592)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !251, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smsusb_device_t", file: !3, line: 49, size: 20096, elements: !4188)
!4188 = !{!4189, !4190, !4654, !4735, !4736, !4737, !4738, !4739}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !4187, file: !3, line: 50, baseType: !250, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "coredev", scope: !4187, file: !3, line: 51, baseType: !4191, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smscore_device_t", file: !127, line: 152, size: 5184, elements: !4193)
!4193 = !{!4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4214, !4219, !4224, !4229, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4251, !4252, !4253, !4652, !4653}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4192, file: !127, line: 153, baseType: !293, size: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !4192, file: !127, line: 155, baseType: !293, size: 128, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "subclients", scope: !4192, file: !127, line: 156, baseType: !293, size: 128, offset: 256)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "clientslock", scope: !4192, file: !127, line: 157, baseType: !307, offset: 384)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "buffers", scope: !4192, file: !127, line: 159, baseType: !293, size: 128, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bufferslock", scope: !4192, file: !127, line: 160, baseType: !307, offset: 512)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "num_buffers", scope: !4192, file: !127, line: 161, baseType: !128, size: 32, offset: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "common_buffer", scope: !4192, file: !127, line: 163, baseType: !249, size: 64, offset: 576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "common_buffer_size", scope: !4192, file: !127, line: 164, baseType: !128, size: 32, offset: 640)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "common_buffer_phys", scope: !4192, file: !127, line: 165, baseType: !990, size: 64, offset: 704)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4192, file: !127, line: 167, baseType: !249, size: 64, offset: 768)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4192, file: !127, line: 168, baseType: !282, size: 64, offset: 832)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "usb_device", scope: !4192, file: !127, line: 169, baseType: !250, size: 64, offset: 896)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4192, file: !127, line: 171, baseType: !2770, size: 256, offset: 960)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "device_flags", scope: !4192, file: !127, line: 172, baseType: !397, size: 64, offset: 1216)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "setmode_handler", scope: !4192, file: !127, line: 174, baseType: !4210, size: 64, offset: 1280)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "setmode_t", file: !127, line: 102, baseType: !4211)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!128, !249, !128}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "detectmode_handler", scope: !4192, file: !127, line: 175, baseType: !4215, size: 64, offset: 1344)
!4215 = !DIDerivedType(tag: DW_TAG_typedef, name: "detectmode_t", file: !127, line: 103, baseType: !4216)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !249, !774}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "sendrequest_handler", scope: !4192, file: !127, line: 176, baseType: !4220, size: 64, offset: 1408)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "sendrequest_t", file: !127, line: 104, baseType: !4221)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!128, !249, !249, !394}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "preload_handler", scope: !4192, file: !127, line: 177, baseType: !4225, size: 64, offset: 1472)
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "preload_t", file: !127, line: 106, baseType: !4226)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!128, !249}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "postload_handler", scope: !4192, file: !127, line: 178, baseType: !4230, size: 64, offset: 1536)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "postload_t", file: !127, line: 107, baseType: !4226)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4192, file: !127, line: 180, baseType: !128, size: 32, offset: 1600)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "modes_supported", scope: !4192, file: !127, line: 180, baseType: !128, size: 32, offset: 1632)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_buf_flags", scope: !4192, file: !127, line: 182, baseType: !813, size: 32, offset: 1664)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "version_ex_done", scope: !4192, file: !127, line: 185, baseType: !1577, size: 192, offset: 1728)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "data_download_done", scope: !4192, file: !127, line: 185, baseType: !1577, size: 192, offset: 1920)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_done", scope: !4192, file: !127, line: 185, baseType: !1577, size: 192, offset: 2112)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "data_validity_done", scope: !4192, file: !127, line: 186, baseType: !1577, size: 192, offset: 2304)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "device_ready_done", scope: !4192, file: !127, line: 186, baseType: !1577, size: 192, offset: 2496)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "init_device_done", scope: !4192, file: !127, line: 187, baseType: !1577, size: 192, offset: 2688)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "reload_start_done", scope: !4192, file: !127, line: 187, baseType: !1577, size: 192, offset: 2880)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "resume_done", scope: !4192, file: !127, line: 187, baseType: !1577, size: 192, offset: 3072)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_configuration_done", scope: !4192, file: !127, line: 188, baseType: !1577, size: 192, offset: 3264)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_set_level_done", scope: !4192, file: !127, line: 188, baseType: !1577, size: 192, offset: 3456)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_get_level_done", scope: !4192, file: !127, line: 189, baseType: !1577, size: 192, offset: 3648)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ir_init_done", scope: !4192, file: !127, line: 189, baseType: !1577, size: 192, offset: 3840)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_mng_waitq", scope: !4192, file: !127, line: 192, baseType: !1556, size: 128, offset: 4032)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_get_res", scope: !4192, file: !127, line: 195, baseType: !128, size: 32, offset: 4160)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "board_id", scope: !4192, file: !127, line: 198, baseType: !128, size: 32, offset: 4192)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "fw_buf", scope: !4192, file: !127, line: 201, baseType: !4250, size: 64, offset: 4224)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "fw_buf_size", scope: !4192, file: !127, line: 202, baseType: !260, size: 32, offset: 4288)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "fw_version", scope: !4192, file: !127, line: 203, baseType: !929, size: 16, offset: 4320)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "ir", scope: !4192, file: !127, line: 206, baseType: !4254, size: 768, offset: 4352)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ir_t", file: !4255, line: 22, size: 768, elements: !4256)
!4255 = !DIFile(filename: "./drivers/media/common/siano/smsir.h", directory: "/home/lizy2001/genbc/linux")
!4256 = !{!4257, !4644, !4648, !4649, !4650, !4651}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4254, file: !4255, line: 23, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_dev", file: !197, line: 162, size: 9536, elements: !4260)
!4260 = !{!4261, !4262, !4263, !4267, !4268, !4269, !4277, !4278, !4279, !4295, !4296, !4297, !4300, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4603, !4607, !4611, !4615, !4616, !4617, !4621, !4625, !4629, !4633, !4634, !4639, !4640}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4259, file: !197, line: 163, baseType: !283, size: 5568)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "managed_alloc", scope: !4259, file: !197, line: 164, baseType: !559, size: 8, offset: 5568)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_groups", scope: !4259, file: !197, line: 165, baseType: !4264, size: 320, offset: 5632)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 320, elements: !4265)
!4265 = !{!4266}
!4266 = !DISubrange(count: 5)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4259, file: !197, line: 166, baseType: !290, size: 64, offset: 5952)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "input_phys", scope: !4259, file: !197, line: 167, baseType: !290, size: 64, offset: 6016)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "input_id", scope: !4259, file: !197, line: 168, baseType: !4270, size: 64, offset: 6080)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4271, line: 59, size: 64, elements: !4272)
!4271 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4272 = !{!4273, !4274, !4275, !4276}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4270, file: !4271, line: 60, baseType: !930, size: 16)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4270, file: !4271, line: 61, baseType: !930, size: 16, offset: 16)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4270, file: !4271, line: 62, baseType: !930, size: 16, offset: 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4270, file: !4271, line: 63, baseType: !930, size: 16, offset: 48)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4259, file: !197, line: 169, baseType: !290, size: 64, offset: 6144)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "map_name", scope: !4259, file: !197, line: 170, baseType: !290, size: 64, offset: 6208)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "rc_map", scope: !4259, file: !197, line: 171, baseType: !4280, size: 256, offset: 6272)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map", file: !4281, line: 157, size: 256, elements: !4282)
!4281 = !DIFile(filename: "./include/media/rc-map.h", directory: "/home/lizy2001/genbc/linux")
!4282 = !{!4283, !4289, !4290, !4291, !4292, !4293, !4294}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !4280, file: !4281, line: 158, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_map_table", file: !4281, line: 140, size: 128, elements: !4286)
!4286 = !{!4287, !4288}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4285, file: !4281, line: 141, baseType: !490, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4285, file: !4281, line: 142, baseType: !260, size: 32, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4280, file: !4281, line: 159, baseType: !7, size: 32, offset: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4280, file: !4281, line: 160, baseType: !7, size: 32, offset: 96)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4280, file: !4281, line: 161, baseType: !7, size: 32, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "rc_proto", scope: !4280, file: !4281, line: 162, baseType: !165, size: 32, offset: 160)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4280, file: !4281, line: 163, baseType: !290, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4280, file: !4281, line: 164, baseType: !307, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4259, file: !197, line: 172, baseType: !1243, size: 192, offset: 6528)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4259, file: !197, line: 173, baseType: !7, size: 32, offset: 6720)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4259, file: !197, line: 174, baseType: !4298, size: 64, offset: 6784)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DICompositeType(tag: DW_TAG_structure_type, name: "ir_raw_event_ctrl", file: !197, line: 174, flags: DIFlagFwdDecl)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "input_dev", scope: !4259, file: !197, line: 175, baseType: !4301, size: 64, offset: 6848)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4303, line: 131, size: 10432, elements: !4304)
!4303 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4311, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4338, !4343, !4438, !4441, !4442, !4443, !4445, !4448, !4458, !4459, !4460, !4461, !4462, !4466, !4470, !4474, !4478, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4565, !4566}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4302, file: !4303, line: 132, baseType: !290, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4302, file: !4303, line: 133, baseType: !290, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4302, file: !4303, line: 134, baseType: !290, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4302, file: !4303, line: 135, baseType: !4270, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4302, file: !4303, line: 137, baseType: !1440, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4302, file: !4303, line: 139, baseType: !1440, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4302, file: !4303, line: 140, baseType: !4312, size: 768, offset: 384)
!4312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 768, elements: !2306)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4302, file: !4303, line: 141, baseType: !1440, size: 64, offset: 1152)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4302, file: !4303, line: 142, baseType: !1440, size: 64, offset: 1216)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4302, file: !4303, line: 143, baseType: !1440, size: 64, offset: 1280)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4302, file: !4303, line: 144, baseType: !1440, size: 64, offset: 1344)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4302, file: !4303, line: 145, baseType: !1440, size: 64, offset: 1408)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4302, file: !4303, line: 146, baseType: !3920, size: 128, offset: 1472)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4302, file: !4303, line: 147, baseType: !1440, size: 64, offset: 1600)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4302, file: !4303, line: 149, baseType: !7, size: 32, offset: 1664)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4302, file: !4303, line: 151, baseType: !7, size: 32, offset: 1696)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4302, file: !4303, line: 152, baseType: !7, size: 32, offset: 1728)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4302, file: !4303, line: 153, baseType: !249, size: 64, offset: 1792)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4302, file: !4303, line: 155, baseType: !4325, size: 64, offset: 1856)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!128, !4301, !4328, !2753}
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4271, line: 114, size: 320, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4335, !4336}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4330, file: !4271, line: 116, baseType: !1423, size: 8)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4330, file: !4271, line: 117, baseType: !1423, size: 8, offset: 8)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4330, file: !4271, line: 118, baseType: !930, size: 16, offset: 16)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4330, file: !4271, line: 119, baseType: !262, size: 32, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4330, file: !4271, line: 120, baseType: !4337, size: 256, offset: 64)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 256, elements: !2300)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4302, file: !4303, line: 158, baseType: !4339, size: 64, offset: 1920)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!128, !4301, !4342}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4302, file: !4303, line: 161, baseType: !4344, size: 64, offset: 1984)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4303, line: 534, size: 896, elements: !4346)
!4346 = !{!4347, !4414, !4418, !4422, !4426, !4427, !4431, !4432, !4433, !4434, !4435, !4436}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4345, file: !4303, line: 535, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!128, !4301, !4351, !4351}
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4271, line: 450, size: 384, elements: !4353)
!4353 = !{!4354, !4355, !4356, !4357, !4362, !4367}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4352, file: !4271, line: 451, baseType: !930, size: 16)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4352, file: !4271, line: 452, baseType: !1274, size: 16, offset: 16)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4352, file: !4271, line: 453, baseType: !930, size: 16, offset: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4352, file: !4271, line: 454, baseType: !4358, size: 32, offset: 48)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4271, line: 316, size: 32, elements: !4359)
!4359 = !{!4360, !4361}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4358, file: !4271, line: 317, baseType: !930, size: 16)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4358, file: !4271, line: 318, baseType: !930, size: 16, offset: 16)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4352, file: !4271, line: 455, baseType: !4363, size: 32, offset: 80)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4271, line: 306, size: 32, elements: !4364)
!4364 = !{!4365, !4366}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4363, file: !4271, line: 307, baseType: !930, size: 16)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4363, file: !4271, line: 308, baseType: !930, size: 16, offset: 16)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4352, file: !4271, line: 463, baseType: !4368, size: 256, offset: 128)
!4368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4352, file: !4271, line: 457, size: 256, elements: !4369)
!4369 = !{!4370, !4381, !4387, !4399, !4409}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4368, file: !4271, line: 458, baseType: !4371, size: 80)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4271, line: 345, size: 80, elements: !4372)
!4372 = !{!4373, !4374}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4371, file: !4271, line: 346, baseType: !1274, size: 16)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4371, file: !4271, line: 347, baseType: !4375, size: 64, offset: 16)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4271, line: 333, size: 64, elements: !4376)
!4376 = !{!4377, !4378, !4379, !4380}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4375, file: !4271, line: 334, baseType: !930, size: 16)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4375, file: !4271, line: 335, baseType: !930, size: 16, offset: 16)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4375, file: !4271, line: 336, baseType: !930, size: 16, offset: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4375, file: !4271, line: 337, baseType: !930, size: 16, offset: 48)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4368, file: !4271, line: 459, baseType: !4382, size: 96)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4271, line: 356, size: 96, elements: !4383)
!4383 = !{!4384, !4385, !4386}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4382, file: !4271, line: 357, baseType: !1274, size: 16)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4382, file: !4271, line: 358, baseType: !1274, size: 16, offset: 16)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4382, file: !4271, line: 359, baseType: !4375, size: 64, offset: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4368, file: !4271, line: 460, baseType: !4388, size: 256)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4271, line: 401, size: 256, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4388, file: !4271, line: 402, baseType: !930, size: 16)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4388, file: !4271, line: 403, baseType: !930, size: 16, offset: 16)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4388, file: !4271, line: 404, baseType: !1274, size: 16, offset: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4388, file: !4271, line: 405, baseType: !1274, size: 16, offset: 48)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4388, file: !4271, line: 406, baseType: !930, size: 16, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4388, file: !4271, line: 408, baseType: !4375, size: 64, offset: 80)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4388, file: !4271, line: 410, baseType: !262, size: 32, offset: 160)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4388, file: !4271, line: 411, baseType: !4398, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4368, file: !4271, line: 461, baseType: !4400, size: 192)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4401, size: 192, elements: !274)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4271, line: 372, size: 96, elements: !4402)
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4401, file: !4271, line: 373, baseType: !930, size: 16)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4401, file: !4271, line: 374, baseType: !930, size: 16, offset: 16)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4401, file: !4271, line: 376, baseType: !1274, size: 16, offset: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4401, file: !4271, line: 377, baseType: !1274, size: 16, offset: 48)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4401, file: !4271, line: 379, baseType: !930, size: 16, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4401, file: !4271, line: 380, baseType: !1274, size: 16, offset: 80)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4368, file: !4271, line: 462, baseType: !4410, size: 32)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4271, line: 422, size: 32, elements: !4411)
!4411 = !{!4412, !4413}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4410, file: !4271, line: 423, baseType: !930, size: 16)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4410, file: !4271, line: 424, baseType: !930, size: 16, offset: 16)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4345, file: !4303, line: 537, baseType: !4415, size: 64, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!128, !4301, !128}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4345, file: !4303, line: 539, baseType: !4419, size: 64, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!128, !4301, !128, !128}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4345, file: !4303, line: 540, baseType: !4423, size: 64, offset: 192)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{null, !4301, !929}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4345, file: !4303, line: 541, baseType: !4423, size: 64, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4345, file: !4303, line: 543, baseType: !4428, size: 64, offset: 320)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !4344}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4345, file: !4303, line: 545, baseType: !249, size: 64, offset: 384)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4345, file: !4303, line: 547, baseType: !3920, size: 128, offset: 448)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4345, file: !4303, line: 549, baseType: !1243, size: 192, offset: 576)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4345, file: !4303, line: 551, baseType: !128, size: 32, offset: 768)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4345, file: !4303, line: 552, baseType: !4351, size: 64, offset: 832)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4345, file: !4303, line: 553, baseType: !4437, offset: 896)
!4437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, elements: !2401)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4302, file: !4303, line: 163, baseType: !4439, size: 64, offset: 2048)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4303, line: 24, flags: DIFlagFwdDecl)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4302, file: !4303, line: 165, baseType: !7, size: 32, offset: 2112)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4302, file: !4303, line: 166, baseType: !3649, size: 320, offset: 2176)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4302, file: !4303, line: 168, baseType: !4444, size: 64, offset: 2496)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !274)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4302, file: !4303, line: 170, baseType: !4446, size: 64, offset: 2560)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4303, line: 170, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4302, file: !4303, line: 172, baseType: !4449, size: 64, offset: 2624)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4271, line: 90, size: 192, elements: !4451)
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4450, file: !4271, line: 91, baseType: !1515, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4450, file: !4271, line: 92, baseType: !1515, size: 32, offset: 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4450, file: !4271, line: 93, baseType: !1515, size: 32, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4450, file: !4271, line: 94, baseType: !1515, size: 32, offset: 96)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4450, file: !4271, line: 95, baseType: !1515, size: 32, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4450, file: !4271, line: 96, baseType: !1515, size: 32, offset: 160)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4302, file: !4303, line: 174, baseType: !4312, size: 768, offset: 2688)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4302, file: !4303, line: 175, baseType: !1440, size: 64, offset: 3456)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4302, file: !4303, line: 176, baseType: !1440, size: 64, offset: 3520)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4302, file: !4303, line: 177, baseType: !1440, size: 64, offset: 3584)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4302, file: !4303, line: 179, baseType: !4463, size: 64, offset: 3648)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!128, !4301}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4302, file: !4303, line: 180, baseType: !4467, size: 64, offset: 3712)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !4301}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4302, file: !4303, line: 181, baseType: !4471, size: 64, offset: 3776)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!128, !4301, !425}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4302, file: !4303, line: 182, baseType: !4475, size: 64, offset: 3840)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!128, !4301, !7, !7, !128}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4302, file: !4303, line: 184, baseType: !4479, size: 64, offset: 3904)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4303, line: 337, size: 576, elements: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486, !4552, !4553}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4480, file: !4303, line: 339, baseType: !249, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4480, file: !4303, line: 341, baseType: !128, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4480, file: !4303, line: 342, baseType: !290, size: 64, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4480, file: !4303, line: 344, baseType: !4301, size: 64, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4480, file: !4303, line: 345, baseType: !4487, size: 64, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4303, line: 302, size: 960, elements: !4489)
!4489 = !{!4490, !4491, !4495, !4506, !4510, !4514, !4541, !4545, !4546, !4547, !4548, !4549, !4550, !4551}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4488, file: !4303, line: 304, baseType: !249, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4488, file: !4303, line: 306, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4479, !7, !7, !128}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4488, file: !4303, line: 307, baseType: !4496, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{null, !4479, !4499, !7}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4303, line: 32, size: 64, elements: !4502)
!4502 = !{!4503, !4504, !4505}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4501, file: !4303, line: 33, baseType: !930, size: 16)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4501, file: !4303, line: 34, baseType: !930, size: 16, offset: 16)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4501, file: !4303, line: 35, baseType: !1515, size: 32, offset: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4488, file: !4303, line: 309, baseType: !4507, size: 64, offset: 192)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!559, !4479, !7, !7, !128}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4488, file: !4303, line: 310, baseType: !4511, size: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!559, !4487, !4301}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4488, file: !4303, line: 311, baseType: !4515, size: 64, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!128, !4487, !4301, !4518}
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4520)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3542, line: 342, size: 1600, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527, !4529, !4531, !4532, !4533, !4534, !4535, !4536, !4538, !4539, !4540}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4520, file: !3542, line: 344, baseType: !3561, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4520, file: !3542, line: 346, baseType: !930, size: 16, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4520, file: !3542, line: 347, baseType: !930, size: 16, offset: 80)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4520, file: !3542, line: 348, baseType: !930, size: 16, offset: 96)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4520, file: !3542, line: 349, baseType: !930, size: 16, offset: 112)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4520, file: !3542, line: 351, baseType: !4528, size: 64, offset: 128)
!4528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3561, size: 64, elements: !1441)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4520, file: !3542, line: 352, baseType: !4530, size: 768, offset: 192)
!4530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3561, size: 768, elements: !2306)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4520, file: !3542, line: 353, baseType: !4528, size: 64, offset: 960)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4520, file: !3542, line: 354, baseType: !4528, size: 64, offset: 1024)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4520, file: !3542, line: 355, baseType: !4528, size: 64, offset: 1088)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4520, file: !3542, line: 356, baseType: !4528, size: 64, offset: 1152)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4520, file: !3542, line: 357, baseType: !4528, size: 64, offset: 1216)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4520, file: !3542, line: 358, baseType: !4537, size: 128, offset: 1280)
!4537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3561, size: 128, elements: !274)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4520, file: !3542, line: 359, baseType: !4528, size: 64, offset: 1408)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4520, file: !3542, line: 360, baseType: !4528, size: 64, offset: 1472)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4520, file: !3542, line: 362, baseType: !3561, size: 64, offset: 1536)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4488, file: !4303, line: 312, baseType: !4542, size: 64, offset: 384)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !4479}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4488, file: !4303, line: 313, baseType: !4542, size: 64, offset: 448)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4488, file: !4303, line: 315, baseType: !559, size: 8, offset: 512)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4488, file: !4303, line: 316, baseType: !128, size: 32, offset: 544)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4488, file: !4303, line: 317, baseType: !290, size: 64, offset: 576)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4488, file: !4303, line: 319, baseType: !4518, size: 64, offset: 640)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4488, file: !4303, line: 321, baseType: !293, size: 128, offset: 704)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4488, file: !4303, line: 322, baseType: !293, size: 128, offset: 832)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4480, file: !4303, line: 347, baseType: !293, size: 128, offset: 320)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4480, file: !4303, line: 348, baseType: !293, size: 128, offset: 448)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4302, file: !4303, line: 186, baseType: !307, offset: 3968)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4302, file: !4303, line: 187, baseType: !1243, size: 192, offset: 3968)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4302, file: !4303, line: 189, baseType: !7, size: 32, offset: 4160)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4302, file: !4303, line: 190, baseType: !559, size: 8, offset: 4192)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4302, file: !4303, line: 192, baseType: !283, size: 5568, offset: 4224)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4302, file: !4303, line: 194, baseType: !293, size: 128, offset: 9792)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4302, file: !4303, line: 195, baseType: !293, size: 128, offset: 9920)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4302, file: !4303, line: 197, baseType: !7, size: 32, offset: 10048)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4302, file: !4303, line: 198, baseType: !7, size: 32, offset: 10080)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4302, file: !4303, line: 199, baseType: !4564, size: 64, offset: 10112)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4302, file: !4303, line: 201, baseType: !559, size: 8, offset: 10176)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4302, file: !4303, line: 203, baseType: !4567, size: 192, offset: 10240)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1370, size: 192, elements: !349)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "driver_type", scope: !4259, file: !197, line: 176, baseType: !196, size: 32, offset: 6912)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4259, file: !197, line: 177, baseType: !559, size: 8, offset: 6944)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "encode_wakeup", scope: !4259, file: !197, line: 178, baseType: !559, size: 8, offset: 6952)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_protocols", scope: !4259, file: !197, line: 179, baseType: !490, size: 64, offset: 6976)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_protocols", scope: !4259, file: !197, line: 180, baseType: !490, size: 64, offset: 7040)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_wakeup_protocols", scope: !4259, file: !197, line: 181, baseType: !490, size: 64, offset: 7104)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_protocol", scope: !4259, file: !197, line: 182, baseType: !165, size: 32, offset: 7168)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_filter", scope: !4259, file: !197, line: 183, baseType: !4576, size: 64, offset: 7200)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_scancode_filter", file: !197, line: 38, size: 64, elements: !4577)
!4577 = !{!4578, !4579}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4576, file: !197, line: 39, baseType: !260, size: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4576, file: !197, line: 40, baseType: !260, size: 32, offset: 32)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_wakeup_filter", scope: !4259, file: !197, line: 184, baseType: !4576, size: 64, offset: 7264)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "scancode_mask", scope: !4259, file: !197, line: 185, baseType: !260, size: 32, offset: 7328)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4259, file: !197, line: 186, baseType: !260, size: 32, offset: 7360)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4259, file: !197, line: 187, baseType: !249, size: 64, offset: 7424)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "keylock", scope: !4259, file: !197, line: 188, baseType: !307, offset: 7488)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "keypressed", scope: !4259, file: !197, line: 189, baseType: !559, size: 8, offset: 7488)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "keyup_jiffies", scope: !4259, file: !197, line: 190, baseType: !397, size: 64, offset: 7552)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "timer_keyup", scope: !4259, file: !197, line: 191, baseType: !3649, size: 320, offset: 7616)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "timer_repeat", scope: !4259, file: !197, line: 192, baseType: !3649, size: 320, offset: 7936)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "last_keycode", scope: !4259, file: !197, line: 193, baseType: !260, size: 32, offset: 8256)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "last_protocol", scope: !4259, file: !197, line: 194, baseType: !165, size: 32, offset: 8288)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "last_scancode", scope: !4259, file: !197, line: 195, baseType: !490, size: 64, offset: 8320)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "last_toggle", scope: !4259, file: !197, line: 196, baseType: !1422, size: 8, offset: 8384)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4259, file: !197, line: 197, baseType: !260, size: 32, offset: 8416)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4259, file: !197, line: 198, baseType: !260, size: 32, offset: 8448)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4259, file: !197, line: 199, baseType: !260, size: 32, offset: 8480)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "rx_resolution", scope: !4259, file: !197, line: 200, baseType: !260, size: 32, offset: 8512)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "tx_resolution", scope: !4259, file: !197, line: 201, baseType: !260, size: 32, offset: 8544)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4259, file: !197, line: 211, baseType: !559, size: 8, offset: 8576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "change_protocol", scope: !4259, file: !197, line: 212, baseType: !4600, size: 64, offset: 8640)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!128, !4258, !3745}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4259, file: !197, line: 213, baseType: !4604, size: 64, offset: 8704)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!128, !4258}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4259, file: !197, line: 214, baseType: !4608, size: 64, offset: 8768)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{null, !4258}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_mask", scope: !4259, file: !197, line: 215, baseType: !4612, size: 64, offset: 8832)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!128, !4258, !260}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_carrier", scope: !4259, file: !197, line: 216, baseType: !4612, size: 64, offset: 8896)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "s_tx_duty_cycle", scope: !4259, file: !197, line: 217, baseType: !4612, size: 64, offset: 8960)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "s_rx_carrier_range", scope: !4259, file: !197, line: 218, baseType: !4618, size: 64, offset: 9024)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!128, !4258, !260, !260}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "tx_ir", scope: !4259, file: !197, line: 219, baseType: !4622, size: 64, offset: 9088)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!128, !4258, !2753, !7}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "s_idle", scope: !4259, file: !197, line: 220, baseType: !4626, size: 64, offset: 9152)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !4258, !559}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "s_learning_mode", scope: !4259, file: !197, line: 221, baseType: !4630, size: 64, offset: 9216)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!128, !4258, !128}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "s_carrier_report", scope: !4259, file: !197, line: 222, baseType: !4630, size: 64, offset: 9280)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "s_filter", scope: !4259, file: !197, line: 223, baseType: !4635, size: 64, offset: 9344)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!128, !4258, !4638}
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "s_wakeup_filter", scope: !4259, file: !197, line: 225, baseType: !4635, size: 64, offset: 9408)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "s_timeout", scope: !4259, file: !197, line: 227, baseType: !4641, size: 64, offset: 9472)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!128, !4258, !7}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4254, file: !4255, line: 24, baseType: !4645, size: 320, offset: 64)
!4645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 320, elements: !4646)
!4646 = !{!4647}
!4647 = !DISubrange(count: 40)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4254, file: !4255, line: 25, baseType: !2770, size: 256, offset: 384)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "rc_codes", scope: !4254, file: !4255, line: 27, baseType: !348, size: 64, offset: 640)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4254, file: !4255, line: 29, baseType: !260, size: 32, offset: 704)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !4254, file: !4255, line: 30, baseType: !260, size: 32, offset: 736)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "is_usb_device", scope: !4192, file: !127, line: 212, baseType: !559, size: 8, offset: 5120)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "led_state", scope: !4192, file: !127, line: 214, baseType: !128, size: 32, offset: 5152)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "surbs", scope: !4187, file: !3, line: 53, baseType: !4655, size: 19840, offset: 128)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4656, size: 19840, elements: !4733)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smsusb_urb_t", file: !3, line: 38, size: 1984, elements: !4657)
!4657 = !{!4658, !4659, !4669, !4670, !4732}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4656, file: !3, line: 39, baseType: !293, size: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !4656, file: !3, line: 40, baseType: !4660, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smscore_buffer_t", file: !127, line: 112, size: 384, elements: !4662)
!4662 = !{!4663, !4664, !4665, !4666, !4667, !4668}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4661, file: !127, line: 114, baseType: !293, size: 128)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4661, file: !127, line: 115, baseType: !128, size: 32, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4661, file: !127, line: 116, baseType: !128, size: 32, offset: 160)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4661, file: !127, line: 119, baseType: !249, size: 64, offset: 192)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4661, file: !127, line: 120, baseType: !990, size: 64, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "offset_in_common", scope: !4661, file: !127, line: 121, baseType: !397, size: 64, offset: 320)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4656, file: !3, line: 41, baseType: !4186, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !4656, file: !3, line: 43, baseType: !4671, size: 1472, offset: 256)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4672)
!4672 = !{!4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4724}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4671, file: !6, line: 1563, baseType: !3449, size: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4671, file: !6, line: 1564, baseType: !128, size: 32, offset: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4671, file: !6, line: 1565, baseType: !249, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4671, file: !6, line: 1566, baseType: !817, size: 32, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4671, file: !6, line: 1567, baseType: !817, size: 32, offset: 160)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4671, file: !6, line: 1570, baseType: !293, size: 128, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4671, file: !6, line: 1572, baseType: !293, size: 128, offset: 320)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4671, file: !6, line: 1573, baseType: !4681, size: 64, offset: 448)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4683)
!4683 = !{!4684, !4685, !4686, !4687, !4688}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4682, file: !6, line: 1361, baseType: !293, size: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4682, file: !6, line: 1362, baseType: !1556, size: 128, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4682, file: !6, line: 1363, baseType: !307, offset: 256)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4682, file: !6, line: 1364, baseType: !817, size: 32, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4682, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4671, file: !6, line: 1574, baseType: !250, size: 64, offset: 512)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4671, file: !6, line: 1575, baseType: !4100, size: 64, offset: 576)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4671, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4671, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4671, file: !6, line: 1578, baseType: !128, size: 32, offset: 704)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4671, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4671, file: !6, line: 1580, baseType: !249, size: 64, offset: 768)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4671, file: !6, line: 1581, baseType: !990, size: 64, offset: 832)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4671, file: !6, line: 1582, baseType: !4698, size: 64, offset: 896)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4700, line: 11, size: 256, elements: !4701)
!4700 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4701 = !{!4702, !4703, !4704, !4705, !4706}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4699, file: !4700, line: 12, baseType: !397, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4699, file: !4700, line: 13, baseType: !7, size: 32, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4699, file: !4700, line: 14, baseType: !7, size: 32, offset: 96)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4699, file: !4700, line: 15, baseType: !990, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4699, file: !4700, line: 17, baseType: !7, size: 32, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4671, file: !6, line: 1583, baseType: !128, size: 32, offset: 960)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4671, file: !6, line: 1584, baseType: !128, size: 32, offset: 992)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4671, file: !6, line: 1585, baseType: !260, size: 32, offset: 1024)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4671, file: !6, line: 1586, baseType: !260, size: 32, offset: 1056)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4671, file: !6, line: 1587, baseType: !3964, size: 64, offset: 1088)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4671, file: !6, line: 1588, baseType: !990, size: 64, offset: 1152)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4671, file: !6, line: 1589, baseType: !128, size: 32, offset: 1216)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4671, file: !6, line: 1590, baseType: !128, size: 32, offset: 1248)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4671, file: !6, line: 1591, baseType: !128, size: 32, offset: 1280)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4671, file: !6, line: 1593, baseType: !128, size: 32, offset: 1312)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4671, file: !6, line: 1594, baseType: !249, size: 64, offset: 1344)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4671, file: !6, line: 1595, baseType: !4719, size: 64, offset: 1408)
!4719 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4720)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{null, !4723}
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4671, file: !6, line: 1596, baseType: !4725, offset: 1472)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4726, elements: !2401)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4727)
!4727 = !{!4728, !4729, !4730, !4731}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4726, file: !6, line: 1352, baseType: !7, size: 32)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4726, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4726, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4726, file: !6, line: 1355, baseType: !128, size: 32, offset: 96)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4656, file: !3, line: 46, baseType: !2028, size: 256, offset: 1728)
!4733 = !{!4734}
!4734 = !DISubrange(count: 10)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "response_alignment", scope: !4187, file: !3, line: 55, baseType: !128, size: 32, offset: 19968)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !4187, file: !3, line: 56, baseType: !128, size: 32, offset: 20000)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "in_ep", scope: !4187, file: !3, line: 58, baseType: !496, size: 8, offset: 20032)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "out_ep", scope: !4187, file: !3, line: 59, baseType: !496, size: 8, offset: 20040)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4187, file: !3, line: 60, baseType: !202, size: 32, offset: 20064)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sms_msg_data", file: !127, line: 622, size: 96, elements: !4742)
!4742 = !{!4743, !4751}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "x_msg_header", scope: !4741, file: !127, line: 623, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sms_msg_hdr", file: !127, line: 614, size: 64, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4749, !4750}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "msg_type", scope: !4744, file: !127, line: 615, baseType: !929, size: 16)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "msg_src_id", scope: !4744, file: !127, line: 616, baseType: !1422, size: 8, offset: 16)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "msg_dst_id", scope: !4744, file: !127, line: 617, baseType: !1422, size: 8, offset: 24)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "msg_length", scope: !4744, file: !127, line: 618, baseType: !929, size: 16, offset: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !4744, file: !127, line: 619, baseType: !929, size: 16, offset: 48)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "msg_data", scope: !4741, file: !127, line: 624, baseType: !4752, size: 32, offset: 64)
!4752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 32, elements: !1441)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !297)
!4757 = !{!0, !4758, !4763, !4768, !4773, !4778, !4783, !4844, !4847}
!4758 = !DIGlobalVariableExpression(var: !4759, expr: !DIExpression())
!4759 = distinct !DIGlobalVariable(name: "__exitcall_smsusb_driver_exit", scope: !2, file: !3, line: 727, type: !4760, isLocal: true, isDefinition: true)
!4760 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4761, line: 117, baseType: !4762)
!4761 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!4763 = !DIGlobalVariableExpression(var: !4764, expr: !DIExpression())
!4764 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description246", scope: !2, file: !3, line: 729, type: !4765, isLocal: true, isDefinition: true, align: 8)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 472, elements: !4766)
!4766 = !{!4767}
!4767 = !DISubrange(count: 59)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author247", scope: !2, file: !3, line: 730, type: !4770, isLocal: true, isDefinition: true, align: 8)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 488, elements: !4771)
!4771 = !{!4772}
!4772 = !DISubrange(count: 61)
!4773 = !DIGlobalVariableExpression(var: !4774, expr: !DIExpression())
!4774 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file248", scope: !2, file: !3, line: 731, type: !4775, isLocal: true, isDefinition: true, align: 8)
!4775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 344, elements: !4776)
!4776 = !{!4777}
!4777 = !DISubrange(count: 43)
!4778 = !DIGlobalVariableExpression(var: !4779, expr: !DIExpression())
!4779 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license249", scope: !2, file: !3, line: 731, type: !4780, isLocal: true, isDefinition: true, align: 8)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 152, elements: !4781)
!4781 = !{!4782}
!4782 = !DISubrange(count: 19)
!4783 = !DIGlobalVariableExpression(var: !4784, expr: !DIExpression())
!4784 = distinct !DIGlobalVariable(name: "smsusb_driver", scope: !2, file: !3, line: 717, type: !4785, isLocal: true, isDefinition: true)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4786)
!4786 = !{!4787, !4788, !4809, !4813, !4817, !4821, !4825, !4826, !4827, !4828, !4829, !4830, !4835, !4840, !4841, !4842, !4843}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4785, file: !6, line: 1185, baseType: !290, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4785, file: !6, line: 1187, baseType: !4789, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!128, !4078, !4792}
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4794)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3542, line: 121, size: 256, elements: !4795)
!4795 = !{!4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4794, file: !3542, line: 123, baseType: !930, size: 16)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4794, file: !3542, line: 126, baseType: !930, size: 16, offset: 16)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4794, file: !3542, line: 127, baseType: !930, size: 16, offset: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4794, file: !3542, line: 128, baseType: !930, size: 16, offset: 48)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4794, file: !3542, line: 129, baseType: !930, size: 16, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4794, file: !3542, line: 132, baseType: !1423, size: 8, offset: 80)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4794, file: !3542, line: 133, baseType: !1423, size: 8, offset: 88)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4794, file: !3542, line: 134, baseType: !1423, size: 8, offset: 96)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4794, file: !3542, line: 137, baseType: !1423, size: 8, offset: 104)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4794, file: !3542, line: 138, baseType: !1423, size: 8, offset: 112)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4794, file: !3542, line: 139, baseType: !1423, size: 8, offset: 120)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4794, file: !3542, line: 142, baseType: !1423, size: 8, offset: 128)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4794, file: !3542, line: 145, baseType: !3561, size: 64, align: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4785, file: !6, line: 1190, baseType: !4810, size: 64, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{null, !4078}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4785, file: !6, line: 1192, baseType: !4814, size: 64, offset: 192)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!128, !4078, !7, !249}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4785, file: !6, line: 1195, baseType: !4818, size: 64, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!128, !4078, !3572}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4785, file: !6, line: 1196, baseType: !4822, size: 64, offset: 320)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!128, !4078}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4785, file: !6, line: 1197, baseType: !4822, size: 64, offset: 384)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4785, file: !6, line: 1199, baseType: !4822, size: 64, offset: 448)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4785, file: !6, line: 1200, baseType: !4822, size: 64, offset: 512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4785, file: !6, line: 1202, baseType: !4792, size: 64, offset: 576)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4785, file: !6, line: 1203, baseType: !401, size: 64, offset: 640)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4785, file: !6, line: 1205, baseType: !4831, size: 128, offset: 704)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4832)
!4832 = !{!4833, !4834}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4831, file: !6, line: 1092, baseType: !307)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4831, file: !6, line: 1093, baseType: !293, size: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4785, file: !6, line: 1206, baseType: !4836, size: 1216, offset: 832)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4837)
!4837 = !{!4838, !4839}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4836, file: !6, line: 1114, baseType: !3530, size: 1152)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4836, file: !6, line: 1115, baseType: !128, size: 32, offset: 1152)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4785, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4785, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4785, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4785, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4844 = !DIGlobalVariableExpression(var: !4845, expr: !DIExpression())
!4845 = distinct !DIGlobalVariable(name: "smsusb1_fw_lkup", scope: !2, file: !3, line: 234, type: !4846, isLocal: true, isDefinition: true)
!4846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 320, elements: !4265)
!4847 = !DIGlobalVariableExpression(var: !4848, expr: !DIExpression())
!4848 = distinct !DIGlobalVariable(name: "smsusb_id_table", scope: !2, file: !3, line: 620, type: !4849, isLocal: true, isDefinition: true)
!4849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4793, size: 11520, elements: !4850)
!4850 = !{!4851}
!4851 = !DISubrange(count: 45)
!4852 = !{i32 7, !"Dwarf Version", i32 4}
!4853 = !{i32 2, !"Debug Info Version", i32 3}
!4854 = !{i32 1, !"wchar_size", i32 2}
!4855 = !{i32 1, !"Code Model", i32 2}
!4856 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4857 = distinct !DISubprogram(name: "smsusb_driver_init", scope: !3, file: !3, line: 727, type: !4858, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!128}
!4860 = !DILocation(line: 727, column: 1, scope: !4857)
!4861 = distinct !DISubprogram(name: "smsusb_driver_exit", scope: !3, file: !3, line: 727, type: !1949, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4862 = !DILocation(line: 727, column: 1, scope: !4861)
!4863 = distinct !DISubprogram(name: "smsusb_probe", scope: !3, file: !3, line: 496, type: !4790, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!4864 = !DILocalVariable(name: "intf", arg: 1, scope: !4863, file: !3, line: 496, type: !4078)
!4865 = !DILocation(line: 496, column: 47, scope: !4863)
!4866 = !DILocalVariable(name: "id", arg: 2, scope: !4863, file: !3, line: 497, type: !4792)
!4867 = !DILocation(line: 497, column: 32, scope: !4863)
!4868 = !DILocalVariable(name: "udev", scope: !4863, file: !3, line: 499, type: !250)
!4869 = !DILocation(line: 499, column: 21, scope: !4863)
!4870 = !DILocation(line: 499, column: 48, scope: !4863)
!4871 = !DILocation(line: 499, column: 28, scope: !4863)
!4872 = !DILocalVariable(name: "devpath", scope: !4863, file: !3, line: 500, type: !2770)
!4873 = !DILocation(line: 500, column: 7, scope: !4863)
!4874 = !DILocalVariable(name: "i", scope: !4863, file: !3, line: 501, type: !128)
!4875 = !DILocation(line: 501, column: 6, scope: !4863)
!4876 = !DILocalVariable(name: "rc", scope: !4863, file: !3, line: 501, type: !128)
!4877 = !DILocation(line: 501, column: 9, scope: !4863)
!4878 = !DILocation(line: 503, column: 2, scope: !4863)
!4879 = !DILocation(line: 507, column: 20, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 507, column: 6)
!4881 = !DILocation(line: 507, column: 24, scope: !4880)
!4882 = !DILocation(line: 507, column: 6, scope: !4880)
!4883 = !DILocation(line: 507, column: 38, scope: !4880)
!4884 = !DILocation(line: 508, column: 6, scope: !4880)
!4885 = !DILocation(line: 508, column: 12, scope: !4880)
!4886 = !DILocation(line: 508, column: 28, scope: !4880)
!4887 = !DILocation(line: 508, column: 33, scope: !4880)
!4888 = !DILocation(line: 507, column: 47, scope: !4880)
!4889 = !DILocation(line: 507, column: 6, scope: !4863)
!4890 = !DILocation(line: 509, column: 3, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 509, column: 3)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 509, column: 3)
!4893 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 508, column: 51)
!4894 = !DILocation(line: 509, column: 3, scope: !4892)
!4895 = !DILocation(line: 512, column: 3, scope: !4893)
!4896 = !DILocation(line: 515, column: 6, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 515, column: 6)
!4898 = !DILocation(line: 515, column: 12, scope: !4897)
!4899 = !DILocation(line: 515, column: 27, scope: !4897)
!4900 = !DILocation(line: 515, column: 6, scope: !4863)
!4901 = !DILocation(line: 516, column: 26, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 515, column: 32)
!4903 = !DILocation(line: 517, column: 12, scope: !4902)
!4904 = !DILocation(line: 517, column: 18, scope: !4902)
!4905 = !DILocation(line: 517, column: 34, scope: !4902)
!4906 = !DILocation(line: 517, column: 39, scope: !4902)
!4907 = !DILocation(line: 516, column: 8, scope: !4902)
!4908 = !DILocation(line: 516, column: 6, scope: !4902)
!4909 = !DILocation(line: 519, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 519, column: 7)
!4911 = !DILocation(line: 519, column: 10, scope: !4910)
!4912 = !DILocation(line: 519, column: 7, scope: !4902)
!4913 = !DILocation(line: 520, column: 4, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 519, column: 15)
!4915 = !DILocation(line: 521, column: 11, scope: !4914)
!4916 = !DILocation(line: 521, column: 4, scope: !4914)
!4917 = !DILocation(line: 523, column: 2, scope: !4902)
!4918 = !DILocation(line: 525, column: 2, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 525, column: 2)
!4920 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 525, column: 2)
!4921 = !DILocation(line: 525, column: 2, scope: !4920)
!4922 = !DILocation(line: 527, column: 9, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 527, column: 2)
!4924 = !DILocation(line: 527, column: 7, scope: !4923)
!4925 = !DILocation(line: 527, column: 14, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 527, column: 2)
!4927 = !DILocation(line: 527, column: 18, scope: !4926)
!4928 = !DILocation(line: 527, column: 24, scope: !4926)
!4929 = !DILocation(line: 527, column: 40, scope: !4926)
!4930 = !DILocation(line: 527, column: 45, scope: !4926)
!4931 = !DILocation(line: 527, column: 16, scope: !4926)
!4932 = !DILocation(line: 527, column: 2, scope: !4923)
!4933 = !DILocation(line: 528, column: 3, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 528, column: 3)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 528, column: 3)
!4936 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 527, column: 65)
!4937 = !DILocation(line: 528, column: 3, scope: !4935)
!4938 = !DILocation(line: 532, column: 7, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 532, column: 7)
!4940 = !DILocation(line: 532, column: 13, scope: !4939)
!4941 = !DILocation(line: 532, column: 29, scope: !4939)
!4942 = !DILocation(line: 532, column: 38, scope: !4939)
!4943 = !DILocation(line: 532, column: 41, scope: !4939)
!4944 = !DILocation(line: 532, column: 46, scope: !4939)
!4945 = !DILocation(line: 532, column: 63, scope: !4939)
!4946 = !DILocation(line: 532, column: 7, scope: !4936)
!4947 = !DILocation(line: 534, column: 24, scope: !4939)
!4948 = !DILocation(line: 534, column: 30, scope: !4939)
!4949 = !DILocation(line: 534, column: 9, scope: !4939)
!4950 = !DILocation(line: 534, column: 7, scope: !4939)
!4951 = !DILocation(line: 534, column: 4, scope: !4939)
!4952 = !DILocation(line: 537, column: 24, scope: !4939)
!4953 = !DILocation(line: 537, column: 30, scope: !4939)
!4954 = !DILocation(line: 537, column: 9, scope: !4939)
!4955 = !DILocation(line: 537, column: 7, scope: !4939)
!4956 = !DILocation(line: 539, column: 2, scope: !4936)
!4957 = !DILocation(line: 527, column: 61, scope: !4926)
!4958 = !DILocation(line: 527, column: 2, scope: !4926)
!4959 = distinct !{!4959, !4932, !4960}
!4960 = !DILocation(line: 539, column: 2, scope: !4923)
!4961 = !DILocation(line: 540, column: 7, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 540, column: 6)
!4963 = !DILocation(line: 540, column: 13, scope: !4962)
!4964 = !DILocation(line: 540, column: 24, scope: !4962)
!4965 = !DILocation(line: 540, column: 29, scope: !4962)
!4966 = !DILocation(line: 540, column: 44, scope: !4962)
!4967 = !DILocation(line: 540, column: 50, scope: !4962)
!4968 = !DILocation(line: 541, column: 7, scope: !4962)
!4969 = !DILocation(line: 541, column: 13, scope: !4962)
!4970 = !DILocation(line: 541, column: 29, scope: !4962)
!4971 = !DILocation(line: 541, column: 34, scope: !4962)
!4972 = !DILocation(line: 541, column: 51, scope: !4962)
!4973 = !DILocation(line: 540, column: 6, scope: !4863)
!4974 = !DILocation(line: 542, column: 3, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 542, column: 3)
!4976 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 542, column: 3)
!4977 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 541, column: 58)
!4978 = !DILocation(line: 542, column: 3, scope: !4976)
!4979 = !DILocation(line: 543, column: 3, scope: !4977)
!4980 = !DILocation(line: 546, column: 6, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 546, column: 6)
!4982 = !DILocation(line: 546, column: 10, scope: !4981)
!4983 = !DILocation(line: 546, column: 22, scope: !4981)
!4984 = !DILocation(line: 546, column: 6, scope: !4863)
!4985 = !DILocation(line: 549, column: 12, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 546, column: 58)
!4987 = !DILocation(line: 550, column: 5, scope: !4986)
!4988 = !DILocation(line: 550, column: 11, scope: !4986)
!4989 = !DILocation(line: 550, column: 16, scope: !4986)
!4990 = !DILocation(line: 550, column: 24, scope: !4986)
!4991 = !DILocation(line: 550, column: 30, scope: !4986)
!4992 = !DILocation(line: 549, column: 3, scope: !4986)
!4993 = !DILocation(line: 551, column: 3, scope: !4986)
!4994 = !DILocation(line: 554, column: 5, scope: !4986)
!4995 = !DILocation(line: 554, column: 36, scope: !4986)
!4996 = !DILocation(line: 554, column: 11, scope: !4986)
!4997 = !DILocation(line: 555, column: 5, scope: !4986)
!4998 = !DILocation(line: 555, column: 9, scope: !4986)
!4999 = !DILocation(line: 553, column: 8, scope: !4986)
!5000 = !DILocation(line: 553, column: 6, scope: !4986)
!5001 = !DILocation(line: 558, column: 8, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 558, column: 7)
!5003 = !DILocation(line: 558, column: 7, scope: !4986)
!5004 = !DILocation(line: 559, column: 4, scope: !5002)
!5005 = !DILocation(line: 561, column: 4, scope: !5002)
!5006 = !DILocation(line: 564, column: 10, scope: !4986)
!5007 = !DILocation(line: 564, column: 3, scope: !4986)
!5008 = !DILocation(line: 566, column: 27, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 565, column: 9)
!5010 = !DILocation(line: 566, column: 33, scope: !5009)
!5011 = !DILocation(line: 566, column: 37, scope: !5009)
!5012 = !DILocation(line: 566, column: 8, scope: !5009)
!5013 = !DILocation(line: 566, column: 6, scope: !5009)
!5014 = !DILocation(line: 569, column: 2, scope: !4863)
!5015 = !DILocation(line: 570, column: 25, scope: !4863)
!5016 = !DILocation(line: 570, column: 29, scope: !4863)
!5017 = !DILocation(line: 570, column: 2, scope: !4863)
!5018 = !DILocation(line: 571, column: 9, scope: !4863)
!5019 = !DILocation(line: 571, column: 2, scope: !4863)
!5020 = !DILocation(line: 572, column: 1, scope: !4863)
!5021 = distinct !DISubprogram(name: "smsusb_disconnect", scope: !3, file: !3, line: 574, type: !4811, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5022 = !DILocalVariable(name: "intf", arg: 1, scope: !5021, file: !3, line: 574, type: !4078)
!5023 = !DILocation(line: 574, column: 53, scope: !5021)
!5024 = !DILocation(line: 576, column: 21, scope: !5021)
!5025 = !DILocation(line: 576, column: 2, scope: !5021)
!5026 = !DILocation(line: 577, column: 1, scope: !5021)
!5027 = distinct !DISubprogram(name: "smsusb_suspend", scope: !3, file: !3, line: 579, type: !4819, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5028 = !DILocalVariable(name: "intf", arg: 1, scope: !5027, file: !3, line: 579, type: !4078)
!5029 = !DILocation(line: 579, column: 49, scope: !5027)
!5030 = !DILocalVariable(name: "msg", arg: 2, scope: !5027, file: !3, line: 579, type: !3572)
!5031 = !DILocation(line: 579, column: 68, scope: !5027)
!5032 = !DILocalVariable(name: "dev", scope: !5027, file: !3, line: 581, type: !4186)
!5033 = !DILocation(line: 581, column: 26, scope: !5027)
!5034 = !DILocation(line: 581, column: 49, scope: !5027)
!5035 = !DILocation(line: 581, column: 32, scope: !5027)
!5036 = !DILocation(line: 582, column: 62, scope: !5027)
!5037 = !DILocation(line: 582, column: 2, scope: !5027)
!5038 = !DILocation(line: 583, column: 2, scope: !5027)
!5039 = !DILocation(line: 583, column: 7, scope: !5027)
!5040 = !DILocation(line: 583, column: 13, scope: !5027)
!5041 = !DILocation(line: 585, column: 24, scope: !5027)
!5042 = !DILocation(line: 585, column: 2, scope: !5027)
!5043 = !DILocation(line: 586, column: 2, scope: !5027)
!5044 = distinct !DISubprogram(name: "smsusb_resume", scope: !3, file: !3, line: 589, type: !4823, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5045 = !DILocalVariable(name: "intf", arg: 1, scope: !5044, file: !3, line: 589, type: !4078)
!5046 = !DILocation(line: 589, column: 48, scope: !5044)
!5047 = !DILocalVariable(name: "rc", scope: !5044, file: !3, line: 591, type: !128)
!5048 = !DILocation(line: 591, column: 6, scope: !5044)
!5049 = !DILocalVariable(name: "i", scope: !5044, file: !3, line: 591, type: !128)
!5050 = !DILocation(line: 591, column: 10, scope: !5044)
!5051 = !DILocalVariable(name: "dev", scope: !5044, file: !3, line: 592, type: !4186)
!5052 = !DILocation(line: 592, column: 26, scope: !5044)
!5053 = !DILocation(line: 592, column: 49, scope: !5044)
!5054 = !DILocation(line: 592, column: 32, scope: !5044)
!5055 = !DILocalVariable(name: "udev", scope: !5044, file: !3, line: 593, type: !250)
!5056 = !DILocation(line: 593, column: 21, scope: !5044)
!5057 = !DILocation(line: 593, column: 48, scope: !5044)
!5058 = !DILocation(line: 593, column: 28, scope: !5044)
!5059 = !DILocation(line: 595, column: 2, scope: !5044)
!5060 = !DILocation(line: 596, column: 17, scope: !5044)
!5061 = !DILocation(line: 596, column: 23, scope: !5044)
!5062 = !DILocation(line: 596, column: 2, scope: !5044)
!5063 = !DILocation(line: 597, column: 17, scope: !5044)
!5064 = !DILocation(line: 597, column: 23, scope: !5044)
!5065 = !DILocation(line: 597, column: 2, scope: !5044)
!5066 = !DILocation(line: 599, column: 9, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 599, column: 2)
!5068 = !DILocation(line: 599, column: 7, scope: !5067)
!5069 = !DILocation(line: 599, column: 14, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 599, column: 2)
!5071 = !DILocation(line: 599, column: 18, scope: !5070)
!5072 = !DILocation(line: 599, column: 24, scope: !5070)
!5073 = !DILocation(line: 599, column: 40, scope: !5070)
!5074 = !DILocation(line: 599, column: 45, scope: !5070)
!5075 = !DILocation(line: 599, column: 16, scope: !5070)
!5076 = !DILocation(line: 599, column: 2, scope: !5067)
!5077 = !DILocation(line: 600, column: 50, scope: !5070)
!5078 = !DILocation(line: 601, column: 10, scope: !5070)
!5079 = !DILocation(line: 601, column: 16, scope: !5070)
!5080 = !DILocation(line: 601, column: 32, scope: !5070)
!5081 = !DILocation(line: 601, column: 41, scope: !5070)
!5082 = !DILocation(line: 601, column: 44, scope: !5070)
!5083 = !DILocation(line: 601, column: 49, scope: !5070)
!5084 = !DILocation(line: 602, column: 10, scope: !5070)
!5085 = !DILocation(line: 602, column: 16, scope: !5070)
!5086 = !DILocation(line: 602, column: 32, scope: !5070)
!5087 = !DILocation(line: 602, column: 41, scope: !5070)
!5088 = !DILocation(line: 602, column: 44, scope: !5070)
!5089 = !DILocation(line: 602, column: 49, scope: !5070)
!5090 = !DILocation(line: 603, column: 10, scope: !5070)
!5091 = !DILocation(line: 603, column: 16, scope: !5070)
!5092 = !DILocation(line: 603, column: 32, scope: !5070)
!5093 = !DILocation(line: 603, column: 41, scope: !5070)
!5094 = !DILocation(line: 603, column: 44, scope: !5070)
!5095 = !DILocation(line: 603, column: 49, scope: !5070)
!5096 = !DILocation(line: 600, column: 3, scope: !5070)
!5097 = !DILocation(line: 599, column: 61, scope: !5070)
!5098 = !DILocation(line: 599, column: 2, scope: !5070)
!5099 = distinct !{!5099, !5076, !5100}
!5100 = !DILocation(line: 603, column: 63, scope: !5067)
!5101 = !DILocation(line: 605, column: 6, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 605, column: 6)
!5103 = !DILocation(line: 605, column: 12, scope: !5102)
!5104 = !DILocation(line: 605, column: 27, scope: !5102)
!5105 = !DILocation(line: 605, column: 6, scope: !5044)
!5106 = !DILocation(line: 606, column: 26, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 605, column: 32)
!5108 = !DILocation(line: 607, column: 12, scope: !5107)
!5109 = !DILocation(line: 607, column: 18, scope: !5107)
!5110 = !DILocation(line: 607, column: 34, scope: !5107)
!5111 = !DILocation(line: 608, column: 12, scope: !5107)
!5112 = !DILocation(line: 606, column: 8, scope: !5107)
!5113 = !DILocation(line: 606, column: 6, scope: !5107)
!5114 = !DILocation(line: 609, column: 7, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 609, column: 7)
!5116 = !DILocation(line: 609, column: 10, scope: !5115)
!5117 = !DILocation(line: 609, column: 7, scope: !5107)
!5118 = !DILocation(line: 611, column: 21, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 609, column: 15)
!5120 = !DILocation(line: 610, column: 4, scope: !5119)
!5121 = !DILocation(line: 612, column: 11, scope: !5119)
!5122 = !DILocation(line: 612, column: 4, scope: !5119)
!5123 = !DILocation(line: 614, column: 2, scope: !5107)
!5124 = !DILocation(line: 616, column: 25, scope: !5044)
!5125 = !DILocation(line: 616, column: 2, scope: !5044)
!5126 = !DILocation(line: 617, column: 2, scope: !5044)
!5127 = !DILocation(line: 618, column: 1, scope: !5044)
!5128 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !5129, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!250, !4078}
!5131 = !DILocalVariable(name: "intf", arg: 1, scope: !5128, file: !6, line: 715, type: !4078)
!5132 = !DILocation(line: 715, column: 76, scope: !5128)
!5133 = !DILocalVariable(name: "__mptr", scope: !5134, file: !6, line: 717, type: !249)
!5134 = distinct !DILexicalBlock(scope: !5128, file: !6, line: 717, column: 9)
!5135 = !DILocation(line: 717, column: 9, scope: !5134)
!5136 = !DILocation(line: 717, column: 9, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5134, file: !6, line: 717, column: 9)
!5138 = !DILocation(line: 717, column: 2, scope: !5128)
!5139 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5140, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!7, !250, !7}
!5142 = !DILocalVariable(name: "dev", arg: 1, scope: !5139, file: !6, line: 1945, type: !250)
!5143 = !DILocation(line: 1945, column: 61, scope: !5139)
!5144 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5139, file: !6, line: 1946, type: !7)
!5145 = !DILocation(line: 1946, column: 16, scope: !5139)
!5146 = !DILocation(line: 1948, column: 10, scope: !5139)
!5147 = !DILocation(line: 1948, column: 15, scope: !5139)
!5148 = !DILocation(line: 1948, column: 22, scope: !5139)
!5149 = !DILocation(line: 1948, column: 31, scope: !5139)
!5150 = !DILocation(line: 1948, column: 40, scope: !5139)
!5151 = !DILocation(line: 1948, column: 28, scope: !5139)
!5152 = !DILocation(line: 1948, column: 2, scope: !5139)
!5153 = distinct !DISubprogram(name: "smsusb1_load_firmware", scope: !3, file: !3, line: 248, type: !5154, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!128, !250, !128, !128}
!5156 = !DILocalVariable(name: "s", arg: 1, scope: !5157, file: !145, line: 445, type: !1005)
!5157 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !145, file: !145, line: 445, type: !5158, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!249, !1005, !813, !394}
!5160 = !DILocation(line: 445, column: 72, scope: !5157, inlinedAt: !5161)
!5161 = distinct !DILocation(line: 552, column: 10, scope: !5162, inlinedAt: !5167)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !145, line: 540, column: 34)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !145, line: 540, column: 6)
!5164 = distinct !DISubprogram(name: "kmalloc", scope: !145, file: !145, line: 538, type: !5165, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!249, !394, !813}
!5167 = distinct !DILocation(line: 280, column: 14, scope: !5153)
!5168 = !DILocalVariable(name: "flags", arg: 2, scope: !5157, file: !145, line: 446, type: !813)
!5169 = !DILocation(line: 446, column: 9, scope: !5157, inlinedAt: !5161)
!5170 = !DILocalVariable(name: "size", arg: 3, scope: !5157, file: !145, line: 446, type: !394)
!5171 = !DILocation(line: 446, column: 23, scope: !5157, inlinedAt: !5161)
!5172 = !DILocalVariable(name: "ret", scope: !5157, file: !145, line: 448, type: !249)
!5173 = !DILocation(line: 448, column: 8, scope: !5157, inlinedAt: !5161)
!5174 = !DILocalVariable(name: "flags", arg: 1, scope: !5175, file: !145, line: 318, type: !813)
!5175 = distinct !DISubprogram(name: "kmalloc_type", scope: !145, file: !145, line: 318, type: !5176, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!144, !813}
!5178 = !DILocation(line: 318, column: 67, scope: !5175, inlinedAt: !5179)
!5179 = distinct !DILocation(line: 553, column: 20, scope: !5162, inlinedAt: !5167)
!5180 = !DILocalVariable(name: "size", arg: 1, scope: !5181, file: !145, line: 346, type: !394)
!5181 = distinct !DISubprogram(name: "kmalloc_index", scope: !145, file: !145, line: 346, type: !5182, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!7, !394}
!5184 = !DILocation(line: 346, column: 58, scope: !5181, inlinedAt: !5185)
!5185 = distinct !DILocation(line: 547, column: 11, scope: !5162, inlinedAt: !5167)
!5186 = !DILocalVariable(name: "size", arg: 1, scope: !5187, file: !145, line: 472, type: !394)
!5187 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !145, file: !145, line: 472, type: !5188, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!249, !394, !813, !7}
!5190 = !DILocation(line: 472, column: 28, scope: !5187, inlinedAt: !5191)
!5191 = distinct !DILocation(line: 481, column: 9, scope: !5192, inlinedAt: !5193)
!5192 = distinct !DISubprogram(name: "kmalloc_large", scope: !145, file: !145, line: 478, type: !5165, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5193 = distinct !DILocation(line: 545, column: 11, scope: !5194, inlinedAt: !5167)
!5194 = distinct !DILexicalBlock(scope: !5162, file: !145, line: 544, column: 7)
!5195 = !DILocalVariable(name: "flags", arg: 2, scope: !5187, file: !145, line: 472, type: !813)
!5196 = !DILocation(line: 472, column: 40, scope: !5187, inlinedAt: !5191)
!5197 = !DILocalVariable(name: "order", arg: 3, scope: !5187, file: !145, line: 472, type: !7)
!5198 = !DILocation(line: 472, column: 60, scope: !5187, inlinedAt: !5191)
!5199 = !DILocalVariable(name: "size", arg: 1, scope: !5192, file: !145, line: 478, type: !394)
!5200 = !DILocation(line: 478, column: 51, scope: !5192, inlinedAt: !5193)
!5201 = !DILocalVariable(name: "flags", arg: 2, scope: !5192, file: !145, line: 478, type: !813)
!5202 = !DILocation(line: 478, column: 63, scope: !5192, inlinedAt: !5193)
!5203 = !DILocalVariable(name: "order", scope: !5192, file: !145, line: 480, type: !7)
!5204 = !DILocation(line: 480, column: 15, scope: !5192, inlinedAt: !5193)
!5205 = !DILocalVariable(name: "size", arg: 1, scope: !5164, file: !145, line: 538, type: !394)
!5206 = !DILocation(line: 538, column: 45, scope: !5164, inlinedAt: !5167)
!5207 = !DILocalVariable(name: "flags", arg: 2, scope: !5164, file: !145, line: 538, type: !813)
!5208 = !DILocation(line: 538, column: 57, scope: !5164, inlinedAt: !5167)
!5209 = !DILocalVariable(name: "index", scope: !5162, file: !145, line: 542, type: !7)
!5210 = !DILocation(line: 542, column: 16, scope: !5162, inlinedAt: !5167)
!5211 = !DILocalVariable(name: "udev", arg: 1, scope: !5153, file: !3, line: 248, type: !250)
!5212 = !DILocation(line: 248, column: 53, scope: !5153)
!5213 = !DILocalVariable(name: "id", arg: 2, scope: !5153, file: !3, line: 248, type: !128)
!5214 = !DILocation(line: 248, column: 63, scope: !5153)
!5215 = !DILocalVariable(name: "board_id", arg: 3, scope: !5153, file: !3, line: 248, type: !128)
!5216 = !DILocation(line: 248, column: 71, scope: !5153)
!5217 = !DILocalVariable(name: "fw", scope: !5153, file: !3, line: 250, type: !5218)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5220)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5221, line: 12, size: 192, elements: !5222)
!5221 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!5222 = !{!5223, !5224, !5227}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5220, file: !5221, line: 13, baseType: !394, size: 64)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5220, file: !5221, line: 14, baseType: !5225, size: 64, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5220, file: !5221, line: 17, baseType: !249, size: 64, offset: 128)
!5228 = !DILocation(line: 250, column: 25, scope: !5153)
!5229 = !DILocalVariable(name: "fw_buffer", scope: !5153, file: !3, line: 251, type: !4250)
!5230 = !DILocation(line: 251, column: 6, scope: !5153)
!5231 = !DILocalVariable(name: "rc", scope: !5153, file: !3, line: 252, type: !128)
!5232 = !DILocation(line: 252, column: 6, scope: !5153)
!5233 = !DILocalVariable(name: "dummy", scope: !5153, file: !3, line: 252, type: !128)
!5234 = !DILocation(line: 252, column: 10, scope: !5153)
!5235 = !DILocalVariable(name: "fw_filename", scope: !5153, file: !3, line: 253, type: !348)
!5236 = !DILocation(line: 253, column: 8, scope: !5153)
!5237 = !DILocation(line: 255, column: 6, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 255, column: 6)
!5239 = !DILocation(line: 255, column: 9, scope: !5238)
!5240 = !DILocation(line: 255, column: 6, scope: !5153)
!5241 = !DILocation(line: 256, column: 22, scope: !5238)
!5242 = !DILocation(line: 256, column: 8, scope: !5238)
!5243 = !DILocation(line: 256, column: 33, scope: !5238)
!5244 = !DILocation(line: 256, column: 6, scope: !5238)
!5245 = !DILocation(line: 256, column: 3, scope: !5238)
!5246 = !DILocation(line: 258, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 258, column: 6)
!5248 = !DILocation(line: 258, column: 9, scope: !5247)
!5249 = !DILocation(line: 258, column: 28, scope: !5247)
!5250 = !DILocation(line: 258, column: 31, scope: !5247)
!5251 = !DILocation(line: 258, column: 34, scope: !5247)
!5252 = !DILocation(line: 258, column: 6, scope: !5153)
!5253 = !DILocation(line: 259, column: 3, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 258, column: 58)
!5255 = !DILocation(line: 260, column: 3, scope: !5254)
!5256 = !DILocation(line: 263, column: 32, scope: !5153)
!5257 = !DILocation(line: 263, column: 36, scope: !5153)
!5258 = !DILocation(line: 263, column: 16, scope: !5153)
!5259 = !DILocation(line: 263, column: 14, scope: !5153)
!5260 = !DILocation(line: 265, column: 29, scope: !5153)
!5261 = !DILocation(line: 265, column: 43, scope: !5153)
!5262 = !DILocation(line: 265, column: 49, scope: !5153)
!5263 = !DILocation(line: 265, column: 7, scope: !5153)
!5264 = !DILocation(line: 265, column: 5, scope: !5153)
!5265 = !DILocation(line: 266, column: 6, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 266, column: 6)
!5267 = !DILocation(line: 266, column: 9, scope: !5266)
!5268 = !DILocation(line: 266, column: 6, scope: !5153)
!5269 = !DILocation(line: 267, column: 3, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 266, column: 14)
!5271 = !DILocation(line: 270, column: 33, scope: !5270)
!5272 = !DILocation(line: 270, column: 17, scope: !5270)
!5273 = !DILocation(line: 270, column: 15, scope: !5270)
!5274 = !DILocation(line: 271, column: 30, scope: !5270)
!5275 = !DILocation(line: 271, column: 44, scope: !5270)
!5276 = !DILocation(line: 271, column: 50, scope: !5270)
!5277 = !DILocation(line: 271, column: 8, scope: !5270)
!5278 = !DILocation(line: 271, column: 6, scope: !5270)
!5279 = !DILocation(line: 272, column: 7, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 272, column: 7)
!5281 = !DILocation(line: 272, column: 10, scope: !5280)
!5282 = !DILocation(line: 272, column: 7, scope: !5270)
!5283 = !DILocation(line: 273, column: 4, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 272, column: 15)
!5285 = !DILocation(line: 276, column: 11, scope: !5284)
!5286 = !DILocation(line: 276, column: 4, scope: !5284)
!5287 = !DILocation(line: 278, column: 2, scope: !5270)
!5288 = !DILocation(line: 280, column: 22, scope: !5153)
!5289 = !DILocation(line: 280, column: 26, scope: !5153)
!5290 = !DILocation(line: 540, column: 27, scope: !5163, inlinedAt: !5167)
!5291 = !DILocation(line: 540, column: 6, scope: !5163, inlinedAt: !5167)
!5292 = !DILocation(line: 540, column: 6, scope: !5164, inlinedAt: !5167)
!5293 = !DILocation(line: 544, column: 7, scope: !5194, inlinedAt: !5167)
!5294 = !DILocation(line: 544, column: 12, scope: !5194, inlinedAt: !5167)
!5295 = !DILocation(line: 544, column: 7, scope: !5162, inlinedAt: !5167)
!5296 = !DILocation(line: 545, column: 25, scope: !5194, inlinedAt: !5167)
!5297 = !DILocation(line: 545, column: 31, scope: !5194, inlinedAt: !5167)
!5298 = !DILocation(line: 480, column: 33, scope: !5192, inlinedAt: !5193)
!5299 = !DILocation(line: 480, column: 23, scope: !5192, inlinedAt: !5193)
!5300 = !DILocation(line: 481, column: 29, scope: !5192, inlinedAt: !5193)
!5301 = !DILocation(line: 481, column: 35, scope: !5192, inlinedAt: !5193)
!5302 = !DILocation(line: 481, column: 42, scope: !5192, inlinedAt: !5193)
!5303 = !DILocation(line: 474, column: 23, scope: !5187, inlinedAt: !5191)
!5304 = !DILocation(line: 474, column: 29, scope: !5187, inlinedAt: !5191)
!5305 = !DILocation(line: 474, column: 36, scope: !5187, inlinedAt: !5191)
!5306 = !DILocation(line: 474, column: 9, scope: !5187, inlinedAt: !5191)
!5307 = !DILocation(line: 545, column: 4, scope: !5194, inlinedAt: !5167)
!5308 = !DILocation(line: 547, column: 25, scope: !5162, inlinedAt: !5167)
!5309 = !DILocation(line: 348, column: 7, scope: !5310, inlinedAt: !5185)
!5310 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 348, column: 6)
!5311 = !DILocation(line: 348, column: 6, scope: !5181, inlinedAt: !5185)
!5312 = !DILocation(line: 349, column: 3, scope: !5310, inlinedAt: !5185)
!5313 = !DILocation(line: 351, column: 6, scope: !5314, inlinedAt: !5185)
!5314 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 351, column: 6)
!5315 = !DILocation(line: 351, column: 11, scope: !5314, inlinedAt: !5185)
!5316 = !DILocation(line: 351, column: 6, scope: !5181, inlinedAt: !5185)
!5317 = !DILocation(line: 352, column: 3, scope: !5314, inlinedAt: !5185)
!5318 = !DILocation(line: 354, column: 32, scope: !5319, inlinedAt: !5185)
!5319 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 354, column: 6)
!5320 = !DILocation(line: 354, column: 37, scope: !5319, inlinedAt: !5185)
!5321 = !DILocation(line: 354, column: 42, scope: !5319, inlinedAt: !5185)
!5322 = !DILocation(line: 354, column: 45, scope: !5319, inlinedAt: !5185)
!5323 = !DILocation(line: 354, column: 50, scope: !5319, inlinedAt: !5185)
!5324 = !DILocation(line: 354, column: 6, scope: !5181, inlinedAt: !5185)
!5325 = !DILocation(line: 355, column: 3, scope: !5319, inlinedAt: !5185)
!5326 = !DILocation(line: 356, column: 32, scope: !5327, inlinedAt: !5185)
!5327 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 356, column: 6)
!5328 = !DILocation(line: 356, column: 37, scope: !5327, inlinedAt: !5185)
!5329 = !DILocation(line: 356, column: 43, scope: !5327, inlinedAt: !5185)
!5330 = !DILocation(line: 356, column: 46, scope: !5327, inlinedAt: !5185)
!5331 = !DILocation(line: 356, column: 51, scope: !5327, inlinedAt: !5185)
!5332 = !DILocation(line: 356, column: 6, scope: !5181, inlinedAt: !5185)
!5333 = !DILocation(line: 357, column: 3, scope: !5327, inlinedAt: !5185)
!5334 = !DILocation(line: 358, column: 6, scope: !5335, inlinedAt: !5185)
!5335 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 358, column: 6)
!5336 = !DILocation(line: 358, column: 11, scope: !5335, inlinedAt: !5185)
!5337 = !DILocation(line: 358, column: 6, scope: !5181, inlinedAt: !5185)
!5338 = !DILocation(line: 358, column: 26, scope: !5335, inlinedAt: !5185)
!5339 = !DILocation(line: 359, column: 6, scope: !5340, inlinedAt: !5185)
!5340 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 359, column: 6)
!5341 = !DILocation(line: 359, column: 11, scope: !5340, inlinedAt: !5185)
!5342 = !DILocation(line: 359, column: 6, scope: !5181, inlinedAt: !5185)
!5343 = !DILocation(line: 359, column: 26, scope: !5340, inlinedAt: !5185)
!5344 = !DILocation(line: 360, column: 6, scope: !5345, inlinedAt: !5185)
!5345 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 360, column: 6)
!5346 = !DILocation(line: 360, column: 11, scope: !5345, inlinedAt: !5185)
!5347 = !DILocation(line: 360, column: 6, scope: !5181, inlinedAt: !5185)
!5348 = !DILocation(line: 360, column: 26, scope: !5345, inlinedAt: !5185)
!5349 = !DILocation(line: 361, column: 6, scope: !5350, inlinedAt: !5185)
!5350 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 361, column: 6)
!5351 = !DILocation(line: 361, column: 11, scope: !5350, inlinedAt: !5185)
!5352 = !DILocation(line: 361, column: 6, scope: !5181, inlinedAt: !5185)
!5353 = !DILocation(line: 361, column: 26, scope: !5350, inlinedAt: !5185)
!5354 = !DILocation(line: 362, column: 6, scope: !5355, inlinedAt: !5185)
!5355 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 362, column: 6)
!5356 = !DILocation(line: 362, column: 11, scope: !5355, inlinedAt: !5185)
!5357 = !DILocation(line: 362, column: 6, scope: !5181, inlinedAt: !5185)
!5358 = !DILocation(line: 362, column: 26, scope: !5355, inlinedAt: !5185)
!5359 = !DILocation(line: 363, column: 6, scope: !5360, inlinedAt: !5185)
!5360 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 363, column: 6)
!5361 = !DILocation(line: 363, column: 11, scope: !5360, inlinedAt: !5185)
!5362 = !DILocation(line: 363, column: 6, scope: !5181, inlinedAt: !5185)
!5363 = !DILocation(line: 363, column: 26, scope: !5360, inlinedAt: !5185)
!5364 = !DILocation(line: 364, column: 6, scope: !5365, inlinedAt: !5185)
!5365 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 364, column: 6)
!5366 = !DILocation(line: 364, column: 11, scope: !5365, inlinedAt: !5185)
!5367 = !DILocation(line: 364, column: 6, scope: !5181, inlinedAt: !5185)
!5368 = !DILocation(line: 364, column: 26, scope: !5365, inlinedAt: !5185)
!5369 = !DILocation(line: 365, column: 6, scope: !5370, inlinedAt: !5185)
!5370 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 365, column: 6)
!5371 = !DILocation(line: 365, column: 11, scope: !5370, inlinedAt: !5185)
!5372 = !DILocation(line: 365, column: 6, scope: !5181, inlinedAt: !5185)
!5373 = !DILocation(line: 365, column: 26, scope: !5370, inlinedAt: !5185)
!5374 = !DILocation(line: 366, column: 6, scope: !5375, inlinedAt: !5185)
!5375 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 366, column: 6)
!5376 = !DILocation(line: 366, column: 11, scope: !5375, inlinedAt: !5185)
!5377 = !DILocation(line: 366, column: 6, scope: !5181, inlinedAt: !5185)
!5378 = !DILocation(line: 366, column: 26, scope: !5375, inlinedAt: !5185)
!5379 = !DILocation(line: 367, column: 6, scope: !5380, inlinedAt: !5185)
!5380 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 367, column: 6)
!5381 = !DILocation(line: 367, column: 11, scope: !5380, inlinedAt: !5185)
!5382 = !DILocation(line: 367, column: 6, scope: !5181, inlinedAt: !5185)
!5383 = !DILocation(line: 367, column: 26, scope: !5380, inlinedAt: !5185)
!5384 = !DILocation(line: 368, column: 6, scope: !5385, inlinedAt: !5185)
!5385 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 368, column: 6)
!5386 = !DILocation(line: 368, column: 11, scope: !5385, inlinedAt: !5185)
!5387 = !DILocation(line: 368, column: 6, scope: !5181, inlinedAt: !5185)
!5388 = !DILocation(line: 368, column: 26, scope: !5385, inlinedAt: !5185)
!5389 = !DILocation(line: 369, column: 6, scope: !5390, inlinedAt: !5185)
!5390 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 369, column: 6)
!5391 = !DILocation(line: 369, column: 11, scope: !5390, inlinedAt: !5185)
!5392 = !DILocation(line: 369, column: 6, scope: !5181, inlinedAt: !5185)
!5393 = !DILocation(line: 369, column: 26, scope: !5390, inlinedAt: !5185)
!5394 = !DILocation(line: 370, column: 6, scope: !5395, inlinedAt: !5185)
!5395 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 370, column: 6)
!5396 = !DILocation(line: 370, column: 11, scope: !5395, inlinedAt: !5185)
!5397 = !DILocation(line: 370, column: 6, scope: !5181, inlinedAt: !5185)
!5398 = !DILocation(line: 370, column: 26, scope: !5395, inlinedAt: !5185)
!5399 = !DILocation(line: 371, column: 6, scope: !5400, inlinedAt: !5185)
!5400 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 371, column: 6)
!5401 = !DILocation(line: 371, column: 11, scope: !5400, inlinedAt: !5185)
!5402 = !DILocation(line: 371, column: 6, scope: !5181, inlinedAt: !5185)
!5403 = !DILocation(line: 371, column: 26, scope: !5400, inlinedAt: !5185)
!5404 = !DILocation(line: 372, column: 6, scope: !5405, inlinedAt: !5185)
!5405 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 372, column: 6)
!5406 = !DILocation(line: 372, column: 11, scope: !5405, inlinedAt: !5185)
!5407 = !DILocation(line: 372, column: 6, scope: !5181, inlinedAt: !5185)
!5408 = !DILocation(line: 372, column: 26, scope: !5405, inlinedAt: !5185)
!5409 = !DILocation(line: 373, column: 6, scope: !5410, inlinedAt: !5185)
!5410 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 373, column: 6)
!5411 = !DILocation(line: 373, column: 11, scope: !5410, inlinedAt: !5185)
!5412 = !DILocation(line: 373, column: 6, scope: !5181, inlinedAt: !5185)
!5413 = !DILocation(line: 373, column: 26, scope: !5410, inlinedAt: !5185)
!5414 = !DILocation(line: 374, column: 6, scope: !5415, inlinedAt: !5185)
!5415 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 374, column: 6)
!5416 = !DILocation(line: 374, column: 11, scope: !5415, inlinedAt: !5185)
!5417 = !DILocation(line: 374, column: 6, scope: !5181, inlinedAt: !5185)
!5418 = !DILocation(line: 374, column: 26, scope: !5415, inlinedAt: !5185)
!5419 = !DILocation(line: 375, column: 6, scope: !5420, inlinedAt: !5185)
!5420 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 375, column: 6)
!5421 = !DILocation(line: 375, column: 11, scope: !5420, inlinedAt: !5185)
!5422 = !DILocation(line: 375, column: 6, scope: !5181, inlinedAt: !5185)
!5423 = !DILocation(line: 375, column: 27, scope: !5420, inlinedAt: !5185)
!5424 = !DILocation(line: 376, column: 6, scope: !5425, inlinedAt: !5185)
!5425 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 376, column: 6)
!5426 = !DILocation(line: 376, column: 11, scope: !5425, inlinedAt: !5185)
!5427 = !DILocation(line: 376, column: 6, scope: !5181, inlinedAt: !5185)
!5428 = !DILocation(line: 376, column: 32, scope: !5425, inlinedAt: !5185)
!5429 = !DILocation(line: 377, column: 6, scope: !5430, inlinedAt: !5185)
!5430 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 377, column: 6)
!5431 = !DILocation(line: 377, column: 11, scope: !5430, inlinedAt: !5185)
!5432 = !DILocation(line: 377, column: 6, scope: !5181, inlinedAt: !5185)
!5433 = !DILocation(line: 377, column: 32, scope: !5430, inlinedAt: !5185)
!5434 = !DILocation(line: 378, column: 6, scope: !5435, inlinedAt: !5185)
!5435 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 378, column: 6)
!5436 = !DILocation(line: 378, column: 11, scope: !5435, inlinedAt: !5185)
!5437 = !DILocation(line: 378, column: 6, scope: !5181, inlinedAt: !5185)
!5438 = !DILocation(line: 378, column: 32, scope: !5435, inlinedAt: !5185)
!5439 = !DILocation(line: 379, column: 6, scope: !5440, inlinedAt: !5185)
!5440 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 379, column: 6)
!5441 = !DILocation(line: 379, column: 11, scope: !5440, inlinedAt: !5185)
!5442 = !DILocation(line: 379, column: 6, scope: !5181, inlinedAt: !5185)
!5443 = !DILocation(line: 379, column: 33, scope: !5440, inlinedAt: !5185)
!5444 = !DILocation(line: 380, column: 6, scope: !5445, inlinedAt: !5185)
!5445 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 380, column: 6)
!5446 = !DILocation(line: 380, column: 11, scope: !5445, inlinedAt: !5185)
!5447 = !DILocation(line: 380, column: 6, scope: !5181, inlinedAt: !5185)
!5448 = !DILocation(line: 380, column: 33, scope: !5445, inlinedAt: !5185)
!5449 = !DILocation(line: 381, column: 6, scope: !5450, inlinedAt: !5185)
!5450 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 381, column: 6)
!5451 = !DILocation(line: 381, column: 11, scope: !5450, inlinedAt: !5185)
!5452 = !DILocation(line: 381, column: 6, scope: !5181, inlinedAt: !5185)
!5453 = !DILocation(line: 381, column: 33, scope: !5450, inlinedAt: !5185)
!5454 = !DILocation(line: 382, column: 2, scope: !5455, inlinedAt: !5185)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !145, line: 382, column: 2)
!5456 = distinct !DILexicalBlock(scope: !5181, file: !145, line: 382, column: 2)
!5457 = !{i32 -2141732015, i32 -2141731986, i32 -2141731940, i32 -2141731882, i32 -2141731828, i32 -2141731774, i32 -2141731719, i32 -2141731688}
!5458 = !DILocation(line: 382, column: 2, scope: !5459, inlinedAt: !5185)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !145, line: 382, column: 2)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !145, line: 382, column: 2)
!5461 = !{i32 -2141731245, i32 -2141731238, i32 -2141731184, i32 -2141731153, i32 -2141731123}
!5462 = !DILocation(line: 382, column: 2, scope: !5460, inlinedAt: !5185)
!5463 = !DILocation(line: 386, column: 1, scope: !5181, inlinedAt: !5185)
!5464 = !DILocation(line: 547, column: 9, scope: !5162, inlinedAt: !5167)
!5465 = !DILocation(line: 549, column: 8, scope: !5466, inlinedAt: !5167)
!5466 = distinct !DILexicalBlock(scope: !5162, file: !145, line: 549, column: 7)
!5467 = !DILocation(line: 549, column: 7, scope: !5162, inlinedAt: !5167)
!5468 = !DILocation(line: 550, column: 4, scope: !5466, inlinedAt: !5167)
!5469 = !DILocation(line: 553, column: 33, scope: !5162, inlinedAt: !5167)
!5470 = !DILocation(line: 325, column: 6, scope: !5471, inlinedAt: !5179)
!5471 = distinct !DILexicalBlock(scope: !5175, file: !145, line: 325, column: 6)
!5472 = !DILocation(line: 325, column: 6, scope: !5175, inlinedAt: !5179)
!5473 = !DILocation(line: 326, column: 3, scope: !5471, inlinedAt: !5179)
!5474 = !DILocation(line: 332, column: 9, scope: !5175, inlinedAt: !5179)
!5475 = !DILocation(line: 332, column: 15, scope: !5175, inlinedAt: !5179)
!5476 = !DILocation(line: 332, column: 2, scope: !5175, inlinedAt: !5179)
!5477 = !DILocation(line: 336, column: 1, scope: !5175, inlinedAt: !5179)
!5478 = !DILocation(line: 553, column: 5, scope: !5162, inlinedAt: !5167)
!5479 = !DILocation(line: 553, column: 41, scope: !5162, inlinedAt: !5167)
!5480 = !DILocation(line: 554, column: 5, scope: !5162, inlinedAt: !5167)
!5481 = !DILocation(line: 554, column: 12, scope: !5162, inlinedAt: !5167)
!5482 = !DILocation(line: 448, column: 31, scope: !5157, inlinedAt: !5161)
!5483 = !DILocation(line: 448, column: 34, scope: !5157, inlinedAt: !5161)
!5484 = !DILocation(line: 448, column: 14, scope: !5157, inlinedAt: !5161)
!5485 = !DILocation(line: 450, column: 22, scope: !5157, inlinedAt: !5161)
!5486 = !DILocation(line: 450, column: 25, scope: !5157, inlinedAt: !5161)
!5487 = !DILocation(line: 450, column: 30, scope: !5157, inlinedAt: !5161)
!5488 = !DILocation(line: 450, column: 36, scope: !5157, inlinedAt: !5161)
!5489 = !DILocation(line: 450, column: 8, scope: !5157, inlinedAt: !5161)
!5490 = !DILocation(line: 450, column: 6, scope: !5157, inlinedAt: !5161)
!5491 = !DILocation(line: 451, column: 9, scope: !5157, inlinedAt: !5161)
!5492 = !DILocation(line: 552, column: 3, scope: !5162, inlinedAt: !5167)
!5493 = !DILocation(line: 557, column: 19, scope: !5164, inlinedAt: !5167)
!5494 = !DILocation(line: 557, column: 25, scope: !5164, inlinedAt: !5167)
!5495 = !DILocation(line: 557, column: 9, scope: !5164, inlinedAt: !5167)
!5496 = !DILocation(line: 557, column: 2, scope: !5164, inlinedAt: !5167)
!5497 = !DILocation(line: 558, column: 1, scope: !5164, inlinedAt: !5167)
!5498 = !DILocation(line: 280, column: 12, scope: !5153)
!5499 = !DILocation(line: 281, column: 6, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 281, column: 6)
!5501 = !DILocation(line: 281, column: 6, scope: !5153)
!5502 = !DILocation(line: 282, column: 10, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 281, column: 17)
!5504 = !DILocation(line: 282, column: 21, scope: !5503)
!5505 = !DILocation(line: 282, column: 25, scope: !5503)
!5506 = !DILocation(line: 282, column: 31, scope: !5503)
!5507 = !DILocation(line: 282, column: 35, scope: !5503)
!5508 = !DILocation(line: 282, column: 3, scope: !5503)
!5509 = !DILocation(line: 284, column: 21, scope: !5503)
!5510 = !DILocation(line: 284, column: 27, scope: !5503)
!5511 = !DILocation(line: 285, column: 7, scope: !5503)
!5512 = !DILocation(line: 285, column: 18, scope: !5503)
!5513 = !DILocation(line: 285, column: 22, scope: !5503)
!5514 = !DILocation(line: 284, column: 8, scope: !5503)
!5515 = !DILocation(line: 284, column: 6, scope: !5503)
!5516 = !DILocation(line: 287, column: 3, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 287, column: 3)
!5518 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 287, column: 3)
!5519 = !DILocation(line: 287, column: 3, scope: !5518)
!5520 = !DILocation(line: 289, column: 9, scope: !5503)
!5521 = !DILocation(line: 289, column: 3, scope: !5503)
!5522 = !DILocation(line: 290, column: 2, scope: !5503)
!5523 = !DILocation(line: 291, column: 3, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 290, column: 9)
!5525 = !DILocation(line: 292, column: 6, scope: !5524)
!5526 = !DILocation(line: 294, column: 2, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 294, column: 2)
!5528 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 294, column: 2)
!5529 = !DILocation(line: 294, column: 2, scope: !5528)
!5530 = !DILocation(line: 296, column: 19, scope: !5153)
!5531 = !DILocation(line: 296, column: 2, scope: !5153)
!5532 = !DILocation(line: 298, column: 9, scope: !5153)
!5533 = !DILocation(line: 298, column: 2, scope: !5153)
!5534 = !DILocation(line: 299, column: 1, scope: !5153)
!5535 = distinct !DISubprogram(name: "smsusb_init_device", scope: !3, file: !3, line: 386, type: !5536, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!128, !4078, !128}
!5538 = !DILocalVariable(name: "intf", arg: 1, scope: !5535, file: !3, line: 386, type: !4078)
!5539 = !DILocation(line: 386, column: 53, scope: !5535)
!5540 = !DILocalVariable(name: "board_id", arg: 2, scope: !5535, file: !3, line: 386, type: !128)
!5541 = !DILocation(line: 386, column: 63, scope: !5535)
!5542 = !DILocalVariable(name: "params", scope: !5535, file: !3, line: 388, type: !5543)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smsdevice_params_t", file: !127, line: 124, size: 960, elements: !5544)
!5544 = !{!5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5543, file: !127, line: 125, baseType: !282, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "usb_device", scope: !5543, file: !127, line: 126, baseType: !250, size: 64, offset: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !5543, file: !127, line: 128, baseType: !128, size: 32, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "num_buffers", scope: !5543, file: !127, line: 129, baseType: !128, size: 32, offset: 160)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5543, file: !127, line: 131, baseType: !2770, size: 256, offset: 192)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5543, file: !127, line: 132, baseType: !397, size: 64, offset: 448)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "setmode_handler", scope: !5543, file: !127, line: 134, baseType: !4210, size: 64, offset: 512)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "detectmode_handler", scope: !5543, file: !127, line: 135, baseType: !4215, size: 64, offset: 576)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "sendrequest_handler", scope: !5543, file: !127, line: 136, baseType: !4220, size: 64, offset: 640)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "preload_handler", scope: !5543, file: !127, line: 137, baseType: !4225, size: 64, offset: 704)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "postload_handler", scope: !5543, file: !127, line: 138, baseType: !4230, size: 64, offset: 768)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5543, file: !127, line: 140, baseType: !249, size: 64, offset: 832)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !5543, file: !127, line: 141, baseType: !151, size: 32, offset: 896)
!5558 = !DILocation(line: 388, column: 28, scope: !5535)
!5559 = !DILocalVariable(name: "dev", scope: !5535, file: !3, line: 389, type: !4186)
!5560 = !DILocation(line: 389, column: 26, scope: !5535)
!5561 = !DILocalVariable(name: "mdev", scope: !5535, file: !3, line: 390, type: !249)
!5562 = !DILocation(line: 390, column: 8, scope: !5535)
!5563 = !DILocalVariable(name: "i", scope: !5535, file: !3, line: 391, type: !128)
!5564 = !DILocation(line: 391, column: 6, scope: !5535)
!5565 = !DILocalVariable(name: "rc", scope: !5535, file: !3, line: 391, type: !128)
!5566 = !DILocation(line: 391, column: 9, scope: !5535)
!5567 = !DILocalVariable(name: "align", scope: !5535, file: !3, line: 392, type: !128)
!5568 = !DILocation(line: 392, column: 6, scope: !5535)
!5569 = !DILocation(line: 395, column: 8, scope: !5535)
!5570 = !DILocation(line: 395, column: 6, scope: !5535)
!5571 = !DILocation(line: 396, column: 7, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 396, column: 6)
!5573 = !DILocation(line: 396, column: 6, scope: !5535)
!5574 = !DILocation(line: 397, column: 3, scope: !5572)
!5575 = !DILocation(line: 399, column: 2, scope: !5535)
!5576 = !DILocation(line: 400, column: 19, scope: !5535)
!5577 = !DILocation(line: 400, column: 25, scope: !5535)
!5578 = !DILocation(line: 400, column: 2, scope: !5535)
!5579 = !DILocation(line: 401, column: 34, scope: !5535)
!5580 = !DILocation(line: 401, column: 14, scope: !5535)
!5581 = !DILocation(line: 401, column: 2, scope: !5535)
!5582 = !DILocation(line: 401, column: 7, scope: !5535)
!5583 = !DILocation(line: 401, column: 12, scope: !5535)
!5584 = !DILocation(line: 402, column: 2, scope: !5535)
!5585 = !DILocation(line: 402, column: 7, scope: !5535)
!5586 = !DILocation(line: 402, column: 13, scope: !5535)
!5587 = !DILocation(line: 404, column: 9, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 404, column: 2)
!5589 = !DILocation(line: 404, column: 7, scope: !5588)
!5590 = !DILocation(line: 404, column: 14, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 404, column: 2)
!5592 = !DILocation(line: 404, column: 18, scope: !5591)
!5593 = !DILocation(line: 404, column: 24, scope: !5591)
!5594 = !DILocation(line: 404, column: 40, scope: !5591)
!5595 = !DILocation(line: 404, column: 45, scope: !5591)
!5596 = !DILocation(line: 404, column: 16, scope: !5591)
!5597 = !DILocation(line: 404, column: 2, scope: !5588)
!5598 = !DILocalVariable(name: "desc", scope: !5599, file: !3, line: 405, type: !5600)
!5599 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 404, column: 65)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!5601 = !DILocation(line: 405, column: 35, scope: !5599)
!5602 = !DILocation(line: 406, column: 6, scope: !5599)
!5603 = !DILocation(line: 406, column: 12, scope: !5599)
!5604 = !DILocation(line: 406, column: 28, scope: !5599)
!5605 = !DILocation(line: 406, column: 37, scope: !5599)
!5606 = !DILocation(line: 406, column: 40, scope: !5599)
!5607 = !DILocation(line: 408, column: 7, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 408, column: 7)
!5609 = !DILocation(line: 408, column: 13, scope: !5608)
!5610 = !DILocation(line: 408, column: 30, scope: !5608)
!5611 = !DILocation(line: 408, column: 7, scope: !5599)
!5612 = !DILocation(line: 409, column: 17, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 408, column: 44)
!5614 = !DILocation(line: 409, column: 23, scope: !5613)
!5615 = !DILocation(line: 409, column: 4, scope: !5613)
!5616 = !DILocation(line: 409, column: 9, scope: !5613)
!5617 = !DILocation(line: 409, column: 15, scope: !5613)
!5618 = !DILocation(line: 410, column: 30, scope: !5613)
!5619 = !DILocation(line: 410, column: 12, scope: !5613)
!5620 = !DILocation(line: 410, column: 36, scope: !5613)
!5621 = !DILocation(line: 410, column: 10, scope: !5613)
!5622 = !DILocation(line: 411, column: 3, scope: !5613)
!5623 = !DILocation(line: 412, column: 18, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 411, column: 10)
!5625 = !DILocation(line: 412, column: 24, scope: !5624)
!5626 = !DILocation(line: 412, column: 4, scope: !5624)
!5627 = !DILocation(line: 412, column: 9, scope: !5624)
!5628 = !DILocation(line: 412, column: 16, scope: !5624)
!5629 = !DILocation(line: 414, column: 2, scope: !5599)
!5630 = !DILocation(line: 404, column: 61, scope: !5591)
!5631 = !DILocation(line: 404, column: 2, scope: !5591)
!5632 = distinct !{!5632, !5597, !5633}
!5633 = !DILocation(line: 414, column: 2, scope: !5588)
!5634 = !DILocation(line: 416, column: 2, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 416, column: 2)
!5636 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 416, column: 2)
!5637 = !DILocation(line: 416, column: 2, scope: !5636)
!5638 = !DILocation(line: 417, column: 7, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 417, column: 6)
!5640 = !DILocation(line: 417, column: 12, scope: !5639)
!5641 = !DILocation(line: 417, column: 18, scope: !5639)
!5642 = !DILocation(line: 417, column: 22, scope: !5639)
!5643 = !DILocation(line: 417, column: 27, scope: !5639)
!5644 = !DILocation(line: 417, column: 34, scope: !5639)
!5645 = !DILocation(line: 417, column: 37, scope: !5639)
!5646 = !DILocation(line: 417, column: 43, scope: !5639)
!5647 = !DILocation(line: 417, column: 6, scope: !5535)
!5648 = !DILocation(line: 418, column: 22, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 417, column: 48)
!5650 = !DILocation(line: 418, column: 3, scope: !5649)
!5651 = !DILocation(line: 419, column: 3, scope: !5649)
!5652 = !DILocation(line: 422, column: 37, scope: !5535)
!5653 = !DILocation(line: 422, column: 23, scope: !5535)
!5654 = !DILocation(line: 422, column: 48, scope: !5535)
!5655 = !DILocation(line: 422, column: 9, scope: !5535)
!5656 = !DILocation(line: 422, column: 21, scope: !5535)
!5657 = !DILocation(line: 424, column: 17, scope: !5535)
!5658 = !DILocation(line: 424, column: 2, scope: !5535)
!5659 = !DILocation(line: 426, column: 3, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 424, column: 30)
!5661 = !DILocation(line: 426, column: 8, scope: !5660)
!5662 = !DILocation(line: 426, column: 20, scope: !5660)
!5663 = !DILocation(line: 428, column: 10, scope: !5660)
!5664 = !DILocation(line: 428, column: 26, scope: !5660)
!5665 = !DILocation(line: 429, column: 10, scope: !5660)
!5666 = !DILocation(line: 429, column: 29, scope: !5660)
!5667 = !DILocation(line: 430, column: 3, scope: !5660)
!5668 = !DILocation(line: 432, column: 3, scope: !5660)
!5669 = !DILocation(line: 435, column: 3, scope: !5660)
!5670 = !DILocation(line: 435, column: 8, scope: !5660)
!5671 = !DILocation(line: 435, column: 20, scope: !5660)
!5672 = !DILocation(line: 436, column: 29, scope: !5660)
!5673 = !DILocation(line: 436, column: 3, scope: !5660)
!5674 = !DILocation(line: 436, column: 8, scope: !5660)
!5675 = !DILocation(line: 436, column: 27, scope: !5660)
!5676 = !DILocation(line: 438, column: 10, scope: !5660)
!5677 = !DILocation(line: 438, column: 16, scope: !5660)
!5678 = !DILocation(line: 439, column: 3, scope: !5660)
!5679 = !DILocation(line: 442, column: 19, scope: !5535)
!5680 = !DILocation(line: 442, column: 24, scope: !5535)
!5681 = !DILocation(line: 442, column: 30, scope: !5535)
!5682 = !DILocation(line: 442, column: 9, scope: !5535)
!5683 = !DILocation(line: 442, column: 16, scope: !5535)
!5684 = !DILocation(line: 443, column: 22, scope: !5535)
!5685 = !DILocation(line: 443, column: 27, scope: !5535)
!5686 = !DILocation(line: 443, column: 9, scope: !5535)
!5687 = !DILocation(line: 443, column: 20, scope: !5535)
!5688 = !DILocation(line: 444, column: 23, scope: !5535)
!5689 = !DILocation(line: 444, column: 28, scope: !5535)
!5690 = !DILocation(line: 444, column: 9, scope: !5535)
!5691 = !DILocation(line: 444, column: 21, scope: !5535)
!5692 = !DILocation(line: 445, column: 9, scope: !5535)
!5693 = !DILocation(line: 445, column: 21, scope: !5535)
!5694 = !DILocation(line: 446, column: 9, scope: !5535)
!5695 = !DILocation(line: 446, column: 29, scope: !5535)
!5696 = !DILocation(line: 447, column: 19, scope: !5535)
!5697 = !DILocation(line: 447, column: 9, scope: !5535)
!5698 = !DILocation(line: 447, column: 17, scope: !5535)
!5699 = !DILocation(line: 448, column: 16, scope: !5535)
!5700 = !DILocation(line: 448, column: 21, scope: !5535)
!5701 = !DILocation(line: 448, column: 34, scope: !5535)
!5702 = !DILocation(line: 448, column: 27, scope: !5535)
!5703 = !DILocation(line: 448, column: 2, scope: !5535)
!5704 = !DILocation(line: 450, column: 37, scope: !5535)
!5705 = !DILocation(line: 450, column: 42, scope: !5535)
!5706 = !DILocation(line: 450, column: 9, scope: !5535)
!5707 = !DILocation(line: 450, column: 7, scope: !5535)
!5708 = !DILocation(line: 453, column: 41, scope: !5535)
!5709 = !DILocation(line: 453, column: 46, scope: !5535)
!5710 = !DILocation(line: 453, column: 58, scope: !5535)
!5711 = !DILocation(line: 453, column: 7, scope: !5535)
!5712 = !DILocation(line: 453, column: 5, scope: !5535)
!5713 = !DILocation(line: 454, column: 6, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 454, column: 6)
!5715 = !DILocation(line: 454, column: 9, scope: !5714)
!5716 = !DILocation(line: 454, column: 6, scope: !5535)
!5717 = !DILocation(line: 455, column: 3, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 454, column: 14)
!5719 = !DILocation(line: 456, column: 22, scope: !5718)
!5720 = !DILocation(line: 456, column: 3, scope: !5718)
!5721 = !DILocation(line: 460, column: 9, scope: !5718)
!5722 = !DILocation(line: 460, column: 3, scope: !5718)
!5723 = !DILocation(line: 461, column: 10, scope: !5718)
!5724 = !DILocation(line: 461, column: 3, scope: !5718)
!5725 = !DILocation(line: 464, column: 23, scope: !5535)
!5726 = !DILocation(line: 464, column: 28, scope: !5535)
!5727 = !DILocation(line: 464, column: 37, scope: !5535)
!5728 = !DILocation(line: 464, column: 2, scope: !5535)
!5729 = !DILocation(line: 466, column: 2, scope: !5535)
!5730 = !DILocation(line: 466, column: 7, scope: !5535)
!5731 = !DILocation(line: 466, column: 16, scope: !5535)
!5732 = !DILocation(line: 466, column: 30, scope: !5535)
!5733 = !DILocation(line: 469, column: 9, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 469, column: 2)
!5735 = !DILocation(line: 469, column: 7, scope: !5734)
!5736 = !DILocation(line: 469, column: 14, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 469, column: 2)
!5738 = !DILocation(line: 469, column: 16, scope: !5737)
!5739 = !DILocation(line: 469, column: 2, scope: !5734)
!5740 = !DILocation(line: 470, column: 23, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 469, column: 33)
!5742 = !DILocation(line: 470, column: 3, scope: !5741)
!5743 = !DILocation(line: 470, column: 8, scope: !5741)
!5744 = !DILocation(line: 470, column: 14, scope: !5741)
!5745 = !DILocation(line: 470, column: 17, scope: !5741)
!5746 = !DILocation(line: 470, column: 21, scope: !5741)
!5747 = !DILocation(line: 471, column: 17, scope: !5741)
!5748 = !DILocation(line: 471, column: 22, scope: !5741)
!5749 = !DILocation(line: 471, column: 28, scope: !5741)
!5750 = !DILocation(line: 471, column: 31, scope: !5741)
!5751 = !DILocation(line: 471, column: 3, scope: !5741)
!5752 = !DILocation(line: 472, column: 2, scope: !5741)
!5753 = !DILocation(line: 469, column: 29, scope: !5737)
!5754 = !DILocation(line: 469, column: 2, scope: !5737)
!5755 = distinct !{!5755, !5739, !5756}
!5756 = !DILocation(line: 472, column: 2, scope: !5734)
!5757 = !DILocation(line: 474, column: 2, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 474, column: 2)
!5759 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 474, column: 2)
!5760 = !DILocation(line: 474, column: 2, scope: !5759)
!5761 = !DILocation(line: 475, column: 30, scope: !5535)
!5762 = !DILocation(line: 475, column: 7, scope: !5535)
!5763 = !DILocation(line: 475, column: 5, scope: !5535)
!5764 = !DILocation(line: 476, column: 6, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 476, column: 6)
!5766 = !DILocation(line: 476, column: 9, scope: !5765)
!5767 = !DILocation(line: 476, column: 6, scope: !5535)
!5768 = !DILocation(line: 477, column: 3, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 476, column: 14)
!5770 = !DILocation(line: 478, column: 22, scope: !5769)
!5771 = !DILocation(line: 478, column: 3, scope: !5769)
!5772 = !DILocation(line: 479, column: 10, scope: !5769)
!5773 = !DILocation(line: 479, column: 3, scope: !5769)
!5774 = !DILocation(line: 482, column: 2, scope: !5535)
!5775 = !DILocation(line: 482, column: 7, scope: !5535)
!5776 = !DILocation(line: 482, column: 13, scope: !5535)
!5777 = !DILocation(line: 484, column: 28, scope: !5535)
!5778 = !DILocation(line: 484, column: 33, scope: !5535)
!5779 = !DILocation(line: 484, column: 7, scope: !5535)
!5780 = !DILocation(line: 484, column: 5, scope: !5535)
!5781 = !DILocation(line: 485, column: 6, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 485, column: 6)
!5783 = !DILocation(line: 485, column: 9, scope: !5782)
!5784 = !DILocation(line: 485, column: 6, scope: !5535)
!5785 = !DILocation(line: 486, column: 3, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 485, column: 14)
!5787 = !DILocation(line: 487, column: 22, scope: !5786)
!5788 = !DILocation(line: 487, column: 3, scope: !5786)
!5789 = !DILocation(line: 488, column: 10, scope: !5786)
!5790 = !DILocation(line: 488, column: 3, scope: !5786)
!5791 = !DILocation(line: 491, column: 2, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 491, column: 2)
!5793 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 491, column: 2)
!5794 = !DILocation(line: 491, column: 2, scope: !5793)
!5795 = !DILocation(line: 493, column: 9, scope: !5535)
!5796 = !DILocation(line: 493, column: 2, scope: !5535)
!5797 = !DILocation(line: 494, column: 1, scope: !5535)
!5798 = distinct !DISubprogram(name: "sms_get_fw_name", scope: !3, file: !3, line: 242, type: !5799, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!348, !128, !128}
!5801 = !DILocalVariable(name: "mode", arg: 1, scope: !5798, file: !3, line: 242, type: !128)
!5802 = !DILocation(line: 242, column: 41, scope: !5798)
!5803 = !DILocalVariable(name: "board_id", arg: 2, scope: !5798, file: !3, line: 242, type: !128)
!5804 = !DILocation(line: 242, column: 51, scope: !5798)
!5805 = !DILocalVariable(name: "fw", scope: !5798, file: !3, line: 244, type: !4134)
!5806 = !DILocation(line: 244, column: 9, scope: !5798)
!5807 = !DILocation(line: 244, column: 28, scope: !5798)
!5808 = !DILocation(line: 244, column: 14, scope: !5798)
!5809 = !DILocation(line: 244, column: 39, scope: !5798)
!5810 = !DILocation(line: 245, column: 10, scope: !5798)
!5811 = !DILocation(line: 245, column: 13, scope: !5798)
!5812 = !DILocation(line: 245, column: 16, scope: !5798)
!5813 = !DILocation(line: 245, column: 19, scope: !5798)
!5814 = !DILocation(line: 245, column: 9, scope: !5798)
!5815 = !DILocation(line: 245, column: 28, scope: !5798)
!5816 = !DILocation(line: 245, column: 31, scope: !5798)
!5817 = !DILocation(line: 245, column: 55, scope: !5798)
!5818 = !DILocation(line: 245, column: 39, scope: !5798)
!5819 = !DILocation(line: 245, column: 2, scope: !5798)
!5820 = distinct !DISubprogram(name: "get_order", scope: !5821, file: !5821, line: 29, type: !5822, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5821 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!128, !397}
!5824 = !DILocalVariable(name: "x", arg: 1, scope: !5825, file: !5826, line: 366, type: !491)
!5825 = distinct !DISubprogram(name: "fls64", scope: !5826, file: !5826, line: 366, type: !5827, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5826 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5827 = !DISubroutineType(types: !5828)
!5828 = !{!128, !491}
!5829 = !DILocation(line: 366, column: 40, scope: !5825, inlinedAt: !5830)
!5830 = distinct !DILocation(line: 46, column: 9, scope: !5820)
!5831 = !DILocalVariable(name: "bitpos", scope: !5825, file: !5826, line: 368, type: !128)
!5832 = !DILocation(line: 368, column: 6, scope: !5825, inlinedAt: !5830)
!5833 = !DILocalVariable(name: "size", arg: 1, scope: !5820, file: !5821, line: 29, type: !397)
!5834 = !DILocation(line: 29, column: 63, scope: !5820)
!5835 = !DILocation(line: 31, column: 27, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5820, file: !5821, line: 31, column: 6)
!5837 = !DILocation(line: 31, column: 6, scope: !5836)
!5838 = !DILocation(line: 31, column: 6, scope: !5820)
!5839 = !DILocation(line: 32, column: 8, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5841, file: !5821, line: 32, column: 7)
!5841 = distinct !DILexicalBlock(scope: !5836, file: !5821, line: 31, column: 34)
!5842 = !DILocation(line: 32, column: 7, scope: !5841)
!5843 = !DILocation(line: 33, column: 4, scope: !5840)
!5844 = !DILocation(line: 35, column: 7, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5841, file: !5821, line: 35, column: 7)
!5846 = !DILocation(line: 35, column: 12, scope: !5845)
!5847 = !DILocation(line: 35, column: 7, scope: !5841)
!5848 = !DILocation(line: 36, column: 4, scope: !5845)
!5849 = !DILocation(line: 38, column: 10, scope: !5841)
!5850 = !DILocation(line: 38, column: 28, scope: !5841)
!5851 = !DILocation(line: 38, column: 41, scope: !5841)
!5852 = !DILocation(line: 38, column: 3, scope: !5841)
!5853 = !DILocation(line: 41, column: 6, scope: !5820)
!5854 = !DILocation(line: 42, column: 7, scope: !5820)
!5855 = !DILocation(line: 46, column: 15, scope: !5820)
!5856 = !DILocation(line: 374, column: 2, scope: !5825, inlinedAt: !5830)
!5857 = !DILocation(line: 376, column: 14, scope: !5825, inlinedAt: !5830)
!5858 = !{i32 432322}
!5859 = !DILocation(line: 377, column: 9, scope: !5825, inlinedAt: !5830)
!5860 = !DILocation(line: 377, column: 16, scope: !5825, inlinedAt: !5830)
!5861 = !DILocation(line: 46, column: 2, scope: !5820)
!5862 = !DILocation(line: 48, column: 1, scope: !5820)
!5863 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5864, file: !5864, line: 30, type: !5865, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5864 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5865 = !DISubroutineType(types: !5866)
!5866 = !{!128, !490}
!5867 = !DILocation(line: 366, column: 40, scope: !5825, inlinedAt: !5868)
!5868 = distinct !DILocation(line: 32, column: 9, scope: !5863)
!5869 = !DILocation(line: 368, column: 6, scope: !5825, inlinedAt: !5868)
!5870 = !DILocalVariable(name: "n", arg: 1, scope: !5863, file: !5864, line: 30, type: !490)
!5871 = !DILocation(line: 30, column: 21, scope: !5863)
!5872 = !DILocation(line: 32, column: 15, scope: !5863)
!5873 = !DILocation(line: 374, column: 2, scope: !5825, inlinedAt: !5868)
!5874 = !DILocation(line: 376, column: 14, scope: !5825, inlinedAt: !5868)
!5875 = !DILocation(line: 377, column: 9, scope: !5825, inlinedAt: !5868)
!5876 = !DILocation(line: 377, column: 16, scope: !5825, inlinedAt: !5868)
!5877 = !DILocation(line: 32, column: 18, scope: !5863)
!5878 = !DILocation(line: 32, column: 2, scope: !5863)
!5879 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5880, file: !5880, line: 137, type: !5881, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5880 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!249, !1005, !2197, !394, !813}
!5883 = !DILocalVariable(name: "s", arg: 1, scope: !5879, file: !5880, line: 137, type: !1005)
!5884 = !DILocation(line: 137, column: 54, scope: !5879)
!5885 = !DILocalVariable(name: "object", arg: 2, scope: !5879, file: !5880, line: 137, type: !2197)
!5886 = !DILocation(line: 137, column: 69, scope: !5879)
!5887 = !DILocalVariable(name: "size", arg: 3, scope: !5879, file: !5880, line: 138, type: !394)
!5888 = !DILocation(line: 138, column: 12, scope: !5879)
!5889 = !DILocalVariable(name: "flags", arg: 4, scope: !5879, file: !5880, line: 138, type: !813)
!5890 = !DILocation(line: 138, column: 24, scope: !5879)
!5891 = !DILocation(line: 140, column: 17, scope: !5879)
!5892 = !DILocation(line: 140, column: 2, scope: !5879)
!5893 = distinct !DISubprogram(name: "kzalloc", scope: !145, file: !145, line: 662, type: !5165, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!5894 = !DILocation(line: 445, column: 72, scope: !5157, inlinedAt: !5895)
!5895 = distinct !DILocation(line: 552, column: 10, scope: !5162, inlinedAt: !5896)
!5896 = distinct !DILocation(line: 664, column: 9, scope: !5893)
!5897 = !DILocation(line: 446, column: 9, scope: !5157, inlinedAt: !5895)
!5898 = !DILocation(line: 446, column: 23, scope: !5157, inlinedAt: !5895)
!5899 = !DILocation(line: 448, column: 8, scope: !5157, inlinedAt: !5895)
!5900 = !DILocation(line: 318, column: 67, scope: !5175, inlinedAt: !5901)
!5901 = distinct !DILocation(line: 553, column: 20, scope: !5162, inlinedAt: !5896)
!5902 = !DILocation(line: 346, column: 58, scope: !5181, inlinedAt: !5903)
!5903 = distinct !DILocation(line: 547, column: 11, scope: !5162, inlinedAt: !5896)
!5904 = !DILocation(line: 472, column: 28, scope: !5187, inlinedAt: !5905)
!5905 = distinct !DILocation(line: 481, column: 9, scope: !5192, inlinedAt: !5906)
!5906 = distinct !DILocation(line: 545, column: 11, scope: !5194, inlinedAt: !5896)
!5907 = !DILocation(line: 472, column: 40, scope: !5187, inlinedAt: !5905)
!5908 = !DILocation(line: 472, column: 60, scope: !5187, inlinedAt: !5905)
!5909 = !DILocation(line: 478, column: 51, scope: !5192, inlinedAt: !5906)
!5910 = !DILocation(line: 478, column: 63, scope: !5192, inlinedAt: !5906)
!5911 = !DILocation(line: 480, column: 15, scope: !5192, inlinedAt: !5906)
!5912 = !DILocation(line: 538, column: 45, scope: !5164, inlinedAt: !5896)
!5913 = !DILocation(line: 538, column: 57, scope: !5164, inlinedAt: !5896)
!5914 = !DILocation(line: 542, column: 16, scope: !5162, inlinedAt: !5896)
!5915 = !DILocalVariable(name: "size", arg: 1, scope: !5893, file: !145, line: 662, type: !394)
!5916 = !DILocation(line: 662, column: 36, scope: !5893)
!5917 = !DILocalVariable(name: "flags", arg: 2, scope: !5893, file: !145, line: 662, type: !813)
!5918 = !DILocation(line: 662, column: 48, scope: !5893)
!5919 = !DILocation(line: 664, column: 17, scope: !5893)
!5920 = !DILocation(line: 664, column: 23, scope: !5893)
!5921 = !DILocation(line: 664, column: 29, scope: !5893)
!5922 = !DILocation(line: 540, column: 27, scope: !5163, inlinedAt: !5896)
!5923 = !DILocation(line: 540, column: 6, scope: !5163, inlinedAt: !5896)
!5924 = !DILocation(line: 540, column: 6, scope: !5164, inlinedAt: !5896)
!5925 = !DILocation(line: 544, column: 7, scope: !5194, inlinedAt: !5896)
!5926 = !DILocation(line: 544, column: 12, scope: !5194, inlinedAt: !5896)
!5927 = !DILocation(line: 544, column: 7, scope: !5162, inlinedAt: !5896)
!5928 = !DILocation(line: 545, column: 25, scope: !5194, inlinedAt: !5896)
!5929 = !DILocation(line: 545, column: 31, scope: !5194, inlinedAt: !5896)
!5930 = !DILocation(line: 480, column: 33, scope: !5192, inlinedAt: !5906)
!5931 = !DILocation(line: 480, column: 23, scope: !5192, inlinedAt: !5906)
!5932 = !DILocation(line: 481, column: 29, scope: !5192, inlinedAt: !5906)
!5933 = !DILocation(line: 481, column: 35, scope: !5192, inlinedAt: !5906)
!5934 = !DILocation(line: 481, column: 42, scope: !5192, inlinedAt: !5906)
!5935 = !DILocation(line: 474, column: 23, scope: !5187, inlinedAt: !5905)
!5936 = !DILocation(line: 474, column: 29, scope: !5187, inlinedAt: !5905)
!5937 = !DILocation(line: 474, column: 36, scope: !5187, inlinedAt: !5905)
!5938 = !DILocation(line: 474, column: 9, scope: !5187, inlinedAt: !5905)
!5939 = !DILocation(line: 545, column: 4, scope: !5194, inlinedAt: !5896)
!5940 = !DILocation(line: 547, column: 25, scope: !5162, inlinedAt: !5896)
!5941 = !DILocation(line: 348, column: 7, scope: !5310, inlinedAt: !5903)
!5942 = !DILocation(line: 348, column: 6, scope: !5181, inlinedAt: !5903)
!5943 = !DILocation(line: 349, column: 3, scope: !5310, inlinedAt: !5903)
!5944 = !DILocation(line: 351, column: 6, scope: !5314, inlinedAt: !5903)
!5945 = !DILocation(line: 351, column: 11, scope: !5314, inlinedAt: !5903)
!5946 = !DILocation(line: 351, column: 6, scope: !5181, inlinedAt: !5903)
!5947 = !DILocation(line: 352, column: 3, scope: !5314, inlinedAt: !5903)
!5948 = !DILocation(line: 354, column: 32, scope: !5319, inlinedAt: !5903)
!5949 = !DILocation(line: 354, column: 37, scope: !5319, inlinedAt: !5903)
!5950 = !DILocation(line: 354, column: 42, scope: !5319, inlinedAt: !5903)
!5951 = !DILocation(line: 354, column: 45, scope: !5319, inlinedAt: !5903)
!5952 = !DILocation(line: 354, column: 50, scope: !5319, inlinedAt: !5903)
!5953 = !DILocation(line: 354, column: 6, scope: !5181, inlinedAt: !5903)
!5954 = !DILocation(line: 355, column: 3, scope: !5319, inlinedAt: !5903)
!5955 = !DILocation(line: 356, column: 32, scope: !5327, inlinedAt: !5903)
!5956 = !DILocation(line: 356, column: 37, scope: !5327, inlinedAt: !5903)
!5957 = !DILocation(line: 356, column: 43, scope: !5327, inlinedAt: !5903)
!5958 = !DILocation(line: 356, column: 46, scope: !5327, inlinedAt: !5903)
!5959 = !DILocation(line: 356, column: 51, scope: !5327, inlinedAt: !5903)
!5960 = !DILocation(line: 356, column: 6, scope: !5181, inlinedAt: !5903)
!5961 = !DILocation(line: 357, column: 3, scope: !5327, inlinedAt: !5903)
!5962 = !DILocation(line: 358, column: 6, scope: !5335, inlinedAt: !5903)
!5963 = !DILocation(line: 358, column: 11, scope: !5335, inlinedAt: !5903)
!5964 = !DILocation(line: 358, column: 6, scope: !5181, inlinedAt: !5903)
!5965 = !DILocation(line: 358, column: 26, scope: !5335, inlinedAt: !5903)
!5966 = !DILocation(line: 359, column: 6, scope: !5340, inlinedAt: !5903)
!5967 = !DILocation(line: 359, column: 11, scope: !5340, inlinedAt: !5903)
!5968 = !DILocation(line: 359, column: 6, scope: !5181, inlinedAt: !5903)
!5969 = !DILocation(line: 359, column: 26, scope: !5340, inlinedAt: !5903)
!5970 = !DILocation(line: 360, column: 6, scope: !5345, inlinedAt: !5903)
!5971 = !DILocation(line: 360, column: 11, scope: !5345, inlinedAt: !5903)
!5972 = !DILocation(line: 360, column: 6, scope: !5181, inlinedAt: !5903)
!5973 = !DILocation(line: 360, column: 26, scope: !5345, inlinedAt: !5903)
!5974 = !DILocation(line: 361, column: 6, scope: !5350, inlinedAt: !5903)
!5975 = !DILocation(line: 361, column: 11, scope: !5350, inlinedAt: !5903)
!5976 = !DILocation(line: 361, column: 6, scope: !5181, inlinedAt: !5903)
!5977 = !DILocation(line: 361, column: 26, scope: !5350, inlinedAt: !5903)
!5978 = !DILocation(line: 362, column: 6, scope: !5355, inlinedAt: !5903)
!5979 = !DILocation(line: 362, column: 11, scope: !5355, inlinedAt: !5903)
!5980 = !DILocation(line: 362, column: 6, scope: !5181, inlinedAt: !5903)
!5981 = !DILocation(line: 362, column: 26, scope: !5355, inlinedAt: !5903)
!5982 = !DILocation(line: 363, column: 6, scope: !5360, inlinedAt: !5903)
!5983 = !DILocation(line: 363, column: 11, scope: !5360, inlinedAt: !5903)
!5984 = !DILocation(line: 363, column: 6, scope: !5181, inlinedAt: !5903)
!5985 = !DILocation(line: 363, column: 26, scope: !5360, inlinedAt: !5903)
!5986 = !DILocation(line: 364, column: 6, scope: !5365, inlinedAt: !5903)
!5987 = !DILocation(line: 364, column: 11, scope: !5365, inlinedAt: !5903)
!5988 = !DILocation(line: 364, column: 6, scope: !5181, inlinedAt: !5903)
!5989 = !DILocation(line: 364, column: 26, scope: !5365, inlinedAt: !5903)
!5990 = !DILocation(line: 365, column: 6, scope: !5370, inlinedAt: !5903)
!5991 = !DILocation(line: 365, column: 11, scope: !5370, inlinedAt: !5903)
!5992 = !DILocation(line: 365, column: 6, scope: !5181, inlinedAt: !5903)
!5993 = !DILocation(line: 365, column: 26, scope: !5370, inlinedAt: !5903)
!5994 = !DILocation(line: 366, column: 6, scope: !5375, inlinedAt: !5903)
!5995 = !DILocation(line: 366, column: 11, scope: !5375, inlinedAt: !5903)
!5996 = !DILocation(line: 366, column: 6, scope: !5181, inlinedAt: !5903)
!5997 = !DILocation(line: 366, column: 26, scope: !5375, inlinedAt: !5903)
!5998 = !DILocation(line: 367, column: 6, scope: !5380, inlinedAt: !5903)
!5999 = !DILocation(line: 367, column: 11, scope: !5380, inlinedAt: !5903)
!6000 = !DILocation(line: 367, column: 6, scope: !5181, inlinedAt: !5903)
!6001 = !DILocation(line: 367, column: 26, scope: !5380, inlinedAt: !5903)
!6002 = !DILocation(line: 368, column: 6, scope: !5385, inlinedAt: !5903)
!6003 = !DILocation(line: 368, column: 11, scope: !5385, inlinedAt: !5903)
!6004 = !DILocation(line: 368, column: 6, scope: !5181, inlinedAt: !5903)
!6005 = !DILocation(line: 368, column: 26, scope: !5385, inlinedAt: !5903)
!6006 = !DILocation(line: 369, column: 6, scope: !5390, inlinedAt: !5903)
!6007 = !DILocation(line: 369, column: 11, scope: !5390, inlinedAt: !5903)
!6008 = !DILocation(line: 369, column: 6, scope: !5181, inlinedAt: !5903)
!6009 = !DILocation(line: 369, column: 26, scope: !5390, inlinedAt: !5903)
!6010 = !DILocation(line: 370, column: 6, scope: !5395, inlinedAt: !5903)
!6011 = !DILocation(line: 370, column: 11, scope: !5395, inlinedAt: !5903)
!6012 = !DILocation(line: 370, column: 6, scope: !5181, inlinedAt: !5903)
!6013 = !DILocation(line: 370, column: 26, scope: !5395, inlinedAt: !5903)
!6014 = !DILocation(line: 371, column: 6, scope: !5400, inlinedAt: !5903)
!6015 = !DILocation(line: 371, column: 11, scope: !5400, inlinedAt: !5903)
!6016 = !DILocation(line: 371, column: 6, scope: !5181, inlinedAt: !5903)
!6017 = !DILocation(line: 371, column: 26, scope: !5400, inlinedAt: !5903)
!6018 = !DILocation(line: 372, column: 6, scope: !5405, inlinedAt: !5903)
!6019 = !DILocation(line: 372, column: 11, scope: !5405, inlinedAt: !5903)
!6020 = !DILocation(line: 372, column: 6, scope: !5181, inlinedAt: !5903)
!6021 = !DILocation(line: 372, column: 26, scope: !5405, inlinedAt: !5903)
!6022 = !DILocation(line: 373, column: 6, scope: !5410, inlinedAt: !5903)
!6023 = !DILocation(line: 373, column: 11, scope: !5410, inlinedAt: !5903)
!6024 = !DILocation(line: 373, column: 6, scope: !5181, inlinedAt: !5903)
!6025 = !DILocation(line: 373, column: 26, scope: !5410, inlinedAt: !5903)
!6026 = !DILocation(line: 374, column: 6, scope: !5415, inlinedAt: !5903)
!6027 = !DILocation(line: 374, column: 11, scope: !5415, inlinedAt: !5903)
!6028 = !DILocation(line: 374, column: 6, scope: !5181, inlinedAt: !5903)
!6029 = !DILocation(line: 374, column: 26, scope: !5415, inlinedAt: !5903)
!6030 = !DILocation(line: 375, column: 6, scope: !5420, inlinedAt: !5903)
!6031 = !DILocation(line: 375, column: 11, scope: !5420, inlinedAt: !5903)
!6032 = !DILocation(line: 375, column: 6, scope: !5181, inlinedAt: !5903)
!6033 = !DILocation(line: 375, column: 27, scope: !5420, inlinedAt: !5903)
!6034 = !DILocation(line: 376, column: 6, scope: !5425, inlinedAt: !5903)
!6035 = !DILocation(line: 376, column: 11, scope: !5425, inlinedAt: !5903)
!6036 = !DILocation(line: 376, column: 6, scope: !5181, inlinedAt: !5903)
!6037 = !DILocation(line: 376, column: 32, scope: !5425, inlinedAt: !5903)
!6038 = !DILocation(line: 377, column: 6, scope: !5430, inlinedAt: !5903)
!6039 = !DILocation(line: 377, column: 11, scope: !5430, inlinedAt: !5903)
!6040 = !DILocation(line: 377, column: 6, scope: !5181, inlinedAt: !5903)
!6041 = !DILocation(line: 377, column: 32, scope: !5430, inlinedAt: !5903)
!6042 = !DILocation(line: 378, column: 6, scope: !5435, inlinedAt: !5903)
!6043 = !DILocation(line: 378, column: 11, scope: !5435, inlinedAt: !5903)
!6044 = !DILocation(line: 378, column: 6, scope: !5181, inlinedAt: !5903)
!6045 = !DILocation(line: 378, column: 32, scope: !5435, inlinedAt: !5903)
!6046 = !DILocation(line: 379, column: 6, scope: !5440, inlinedAt: !5903)
!6047 = !DILocation(line: 379, column: 11, scope: !5440, inlinedAt: !5903)
!6048 = !DILocation(line: 379, column: 6, scope: !5181, inlinedAt: !5903)
!6049 = !DILocation(line: 379, column: 33, scope: !5440, inlinedAt: !5903)
!6050 = !DILocation(line: 380, column: 6, scope: !5445, inlinedAt: !5903)
!6051 = !DILocation(line: 380, column: 11, scope: !5445, inlinedAt: !5903)
!6052 = !DILocation(line: 380, column: 6, scope: !5181, inlinedAt: !5903)
!6053 = !DILocation(line: 380, column: 33, scope: !5445, inlinedAt: !5903)
!6054 = !DILocation(line: 381, column: 6, scope: !5450, inlinedAt: !5903)
!6055 = !DILocation(line: 381, column: 11, scope: !5450, inlinedAt: !5903)
!6056 = !DILocation(line: 381, column: 6, scope: !5181, inlinedAt: !5903)
!6057 = !DILocation(line: 381, column: 33, scope: !5450, inlinedAt: !5903)
!6058 = !DILocation(line: 382, column: 2, scope: !5455, inlinedAt: !5903)
!6059 = !DILocation(line: 382, column: 2, scope: !5459, inlinedAt: !5903)
!6060 = !DILocation(line: 382, column: 2, scope: !5460, inlinedAt: !5903)
!6061 = !DILocation(line: 386, column: 1, scope: !5181, inlinedAt: !5903)
!6062 = !DILocation(line: 547, column: 9, scope: !5162, inlinedAt: !5896)
!6063 = !DILocation(line: 549, column: 8, scope: !5466, inlinedAt: !5896)
!6064 = !DILocation(line: 549, column: 7, scope: !5162, inlinedAt: !5896)
!6065 = !DILocation(line: 550, column: 4, scope: !5466, inlinedAt: !5896)
!6066 = !DILocation(line: 553, column: 33, scope: !5162, inlinedAt: !5896)
!6067 = !DILocation(line: 325, column: 6, scope: !5471, inlinedAt: !5901)
!6068 = !DILocation(line: 325, column: 6, scope: !5175, inlinedAt: !5901)
!6069 = !DILocation(line: 326, column: 3, scope: !5471, inlinedAt: !5901)
!6070 = !DILocation(line: 332, column: 9, scope: !5175, inlinedAt: !5901)
!6071 = !DILocation(line: 332, column: 15, scope: !5175, inlinedAt: !5901)
!6072 = !DILocation(line: 332, column: 2, scope: !5175, inlinedAt: !5901)
!6073 = !DILocation(line: 336, column: 1, scope: !5175, inlinedAt: !5901)
!6074 = !DILocation(line: 553, column: 5, scope: !5162, inlinedAt: !5896)
!6075 = !DILocation(line: 553, column: 41, scope: !5162, inlinedAt: !5896)
!6076 = !DILocation(line: 554, column: 5, scope: !5162, inlinedAt: !5896)
!6077 = !DILocation(line: 554, column: 12, scope: !5162, inlinedAt: !5896)
!6078 = !DILocation(line: 448, column: 31, scope: !5157, inlinedAt: !5895)
!6079 = !DILocation(line: 448, column: 34, scope: !5157, inlinedAt: !5895)
!6080 = !DILocation(line: 448, column: 14, scope: !5157, inlinedAt: !5895)
!6081 = !DILocation(line: 450, column: 22, scope: !5157, inlinedAt: !5895)
!6082 = !DILocation(line: 450, column: 25, scope: !5157, inlinedAt: !5895)
!6083 = !DILocation(line: 450, column: 30, scope: !5157, inlinedAt: !5895)
!6084 = !DILocation(line: 450, column: 36, scope: !5157, inlinedAt: !5895)
!6085 = !DILocation(line: 450, column: 8, scope: !5157, inlinedAt: !5895)
!6086 = !DILocation(line: 450, column: 6, scope: !5157, inlinedAt: !5895)
!6087 = !DILocation(line: 451, column: 9, scope: !5157, inlinedAt: !5895)
!6088 = !DILocation(line: 552, column: 3, scope: !5162, inlinedAt: !5896)
!6089 = !DILocation(line: 557, column: 19, scope: !5164, inlinedAt: !5896)
!6090 = !DILocation(line: 557, column: 25, scope: !5164, inlinedAt: !5896)
!6091 = !DILocation(line: 557, column: 9, scope: !5164, inlinedAt: !5896)
!6092 = !DILocation(line: 557, column: 2, scope: !5164, inlinedAt: !5896)
!6093 = !DILocation(line: 558, column: 1, scope: !5164, inlinedAt: !5896)
!6094 = !DILocation(line: 664, column: 2, scope: !5893)
!6095 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !6096, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{null, !4078, !249}
!6098 = !DILocalVariable(name: "intf", arg: 1, scope: !6095, file: !6, line: 268, type: !4078)
!6099 = !DILocation(line: 268, column: 59, scope: !6095)
!6100 = !DILocalVariable(name: "data", arg: 2, scope: !6095, file: !6, line: 268, type: !249)
!6101 = !DILocation(line: 268, column: 71, scope: !6095)
!6102 = !DILocation(line: 270, column: 19, scope: !6095)
!6103 = !DILocation(line: 270, column: 25, scope: !6095)
!6104 = !DILocation(line: 270, column: 30, scope: !6095)
!6105 = !DILocation(line: 270, column: 2, scope: !6095)
!6106 = !DILocation(line: 271, column: 1, scope: !6095)
!6107 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !101, file: !101, line: 647, type: !6108, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{!128, !6110}
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6111, size: 64)
!6111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3931)
!6112 = !DILocalVariable(name: "epd", arg: 1, scope: !6107, file: !101, line: 647, type: !6110)
!6113 = !DILocation(line: 647, column: 75, scope: !6107)
!6114 = !DILocation(line: 649, column: 9, scope: !6107)
!6115 = !DILocation(line: 649, column: 44, scope: !6107)
!6116 = !DILocation(line: 649, column: 2, scope: !6107)
!6117 = distinct !DISubprogram(name: "smsusb_term_device", scope: !3, file: !3, line: 336, type: !4811, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6118 = !DILocalVariable(name: "intf", arg: 1, scope: !6117, file: !3, line: 336, type: !4078)
!6119 = !DILocation(line: 336, column: 54, scope: !6117)
!6120 = !DILocalVariable(name: "dev", scope: !6117, file: !3, line: 338, type: !4186)
!6121 = !DILocation(line: 338, column: 26, scope: !6117)
!6122 = !DILocation(line: 338, column: 49, scope: !6117)
!6123 = !DILocation(line: 338, column: 32, scope: !6117)
!6124 = !DILocation(line: 340, column: 6, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 340, column: 6)
!6126 = !DILocation(line: 340, column: 6, scope: !6117)
!6127 = !DILocation(line: 341, column: 3, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 340, column: 11)
!6129 = !DILocation(line: 341, column: 8, scope: !6128)
!6130 = !DILocation(line: 341, column: 14, scope: !6128)
!6131 = !DILocation(line: 343, column: 25, scope: !6128)
!6132 = !DILocation(line: 343, column: 3, scope: !6128)
!6133 = !DILocation(line: 346, column: 7, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 346, column: 7)
!6135 = !DILocation(line: 346, column: 12, scope: !6134)
!6136 = !DILocation(line: 346, column: 7, scope: !6128)
!6137 = !DILocation(line: 347, column: 30, scope: !6134)
!6138 = !DILocation(line: 347, column: 35, scope: !6134)
!6139 = !DILocation(line: 347, column: 4, scope: !6134)
!6140 = !DILocation(line: 349, column: 3, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 349, column: 3)
!6142 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 349, column: 3)
!6143 = !DILocation(line: 349, column: 3, scope: !6142)
!6144 = !DILocation(line: 350, column: 9, scope: !6128)
!6145 = !DILocation(line: 350, column: 3, scope: !6128)
!6146 = !DILocation(line: 351, column: 2, scope: !6128)
!6147 = !DILocation(line: 353, column: 19, scope: !6117)
!6148 = !DILocation(line: 353, column: 2, scope: !6117)
!6149 = !DILocation(line: 354, column: 1, scope: !6117)
!6150 = distinct !DISubprogram(name: "smsusb1_setmode", scope: !3, file: !3, line: 323, type: !4212, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6151 = !DILocalVariable(name: "context", arg: 1, scope: !6150, file: !3, line: 323, type: !249)
!6152 = !DILocation(line: 323, column: 34, scope: !6150)
!6153 = !DILocalVariable(name: "mode", arg: 2, scope: !6150, file: !3, line: 323, type: !128)
!6154 = !DILocation(line: 323, column: 47, scope: !6150)
!6155 = !DILocalVariable(name: "msg", scope: !6150, file: !3, line: 325, type: !4744)
!6156 = !DILocation(line: 325, column: 21, scope: !6150)
!6157 = !DILocation(line: 328, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 328, column: 6)
!6159 = !DILocation(line: 328, column: 11, scope: !6158)
!6160 = !DILocation(line: 328, column: 30, scope: !6158)
!6161 = !DILocation(line: 328, column: 33, scope: !6158)
!6162 = !DILocation(line: 328, column: 38, scope: !6158)
!6163 = !DILocation(line: 328, column: 6, scope: !6150)
!6164 = !DILocation(line: 329, column: 3, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 328, column: 62)
!6166 = !DILocation(line: 330, column: 3, scope: !6165)
!6167 = !DILocation(line: 333, column: 28, scope: !6150)
!6168 = !DILocation(line: 333, column: 37, scope: !6150)
!6169 = !DILocation(line: 333, column: 9, scope: !6150)
!6170 = !DILocation(line: 333, column: 2, scope: !6150)
!6171 = !DILocation(line: 334, column: 1, scope: !6150)
!6172 = distinct !DISubprogram(name: "smsusb1_detectmode", scope: !3, file: !3, line: 301, type: !4217, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6173 = !DILocalVariable(name: "context", arg: 1, scope: !6172, file: !3, line: 301, type: !249)
!6174 = !DILocation(line: 301, column: 38, scope: !6172)
!6175 = !DILocalVariable(name: "mode", arg: 2, scope: !6172, file: !3, line: 301, type: !774)
!6176 = !DILocation(line: 301, column: 52, scope: !6172)
!6177 = !DILocalVariable(name: "product_string", scope: !6172, file: !3, line: 303, type: !348)
!6178 = !DILocation(line: 303, column: 8, scope: !6172)
!6179 = !DILocation(line: 304, column: 31, scope: !6172)
!6180 = !DILocation(line: 304, column: 4, scope: !6172)
!6181 = !DILocation(line: 304, column: 41, scope: !6172)
!6182 = !DILocation(line: 304, column: 47, scope: !6172)
!6183 = !DILocation(line: 306, column: 3, scope: !6172)
!6184 = !DILocation(line: 306, column: 8, scope: !6172)
!6185 = !DILocation(line: 308, column: 7, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 308, column: 6)
!6187 = !DILocation(line: 308, column: 6, scope: !6172)
!6188 = !DILocation(line: 309, column: 18, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 308, column: 23)
!6190 = !DILocation(line: 310, column: 3, scope: !6189)
!6191 = !DILocation(line: 311, column: 2, scope: !6189)
!6192 = !DILocation(line: 311, column: 20, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 311, column: 13)
!6194 = !DILocation(line: 311, column: 13, scope: !6193)
!6195 = !DILocation(line: 311, column: 13, scope: !6186)
!6196 = !DILocation(line: 312, column: 4, scope: !6193)
!6197 = !DILocation(line: 312, column: 9, scope: !6193)
!6198 = !DILocation(line: 312, column: 3, scope: !6193)
!6199 = !DILocation(line: 313, column: 18, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6193, file: !3, line: 313, column: 11)
!6201 = !DILocation(line: 313, column: 11, scope: !6200)
!6202 = !DILocation(line: 313, column: 11, scope: !6193)
!6203 = !DILocation(line: 314, column: 4, scope: !6200)
!6204 = !DILocation(line: 314, column: 9, scope: !6200)
!6205 = !DILocation(line: 314, column: 3, scope: !6200)
!6206 = !DILocation(line: 315, column: 18, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 315, column: 11)
!6208 = !DILocation(line: 315, column: 11, scope: !6207)
!6209 = !DILocation(line: 315, column: 11, scope: !6200)
!6210 = !DILocation(line: 316, column: 4, scope: !6207)
!6211 = !DILocation(line: 316, column: 9, scope: !6207)
!6212 = !DILocation(line: 316, column: 3, scope: !6207)
!6213 = !DILocation(line: 317, column: 18, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6207, file: !3, line: 317, column: 11)
!6215 = !DILocation(line: 317, column: 11, scope: !6214)
!6216 = !DILocation(line: 317, column: 11, scope: !6207)
!6217 = !DILocation(line: 318, column: 4, scope: !6214)
!6218 = !DILocation(line: 318, column: 9, scope: !6214)
!6219 = !DILocation(line: 318, column: 3, scope: !6214)
!6220 = !DILocation(line: 320, column: 2, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 320, column: 2)
!6222 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 320, column: 2)
!6223 = !DILocation(line: 320, column: 2, scope: !6222)
!6224 = !DILocation(line: 321, column: 1, scope: !6172)
!6225 = distinct !DISubprogram(name: "smsusb_sendrequest", scope: !3, file: !3, line: 206, type: !4222, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6226 = !DILocalVariable(name: "context", arg: 1, scope: !6225, file: !3, line: 206, type: !249)
!6227 = !DILocation(line: 206, column: 37, scope: !6225)
!6228 = !DILocalVariable(name: "buffer", arg: 2, scope: !6225, file: !3, line: 206, type: !249)
!6229 = !DILocation(line: 206, column: 52, scope: !6225)
!6230 = !DILocalVariable(name: "size", arg: 3, scope: !6225, file: !3, line: 206, type: !394)
!6231 = !DILocation(line: 206, column: 67, scope: !6225)
!6232 = !DILocalVariable(name: "dev", scope: !6225, file: !3, line: 208, type: !4186)
!6233 = !DILocation(line: 208, column: 26, scope: !6225)
!6234 = !DILocation(line: 208, column: 59, scope: !6225)
!6235 = !DILocation(line: 208, column: 32, scope: !6225)
!6236 = !DILocalVariable(name: "phdr", scope: !6225, file: !3, line: 209, type: !4753)
!6237 = !DILocation(line: 209, column: 22, scope: !6225)
!6238 = !DILocalVariable(name: "dummy", scope: !6225, file: !3, line: 210, type: !128)
!6239 = !DILocation(line: 210, column: 6, scope: !6225)
!6240 = !DILocalVariable(name: "ret", scope: !6225, file: !3, line: 210, type: !128)
!6241 = !DILocation(line: 210, column: 13, scope: !6225)
!6242 = !DILocation(line: 212, column: 6, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 212, column: 6)
!6244 = !DILocation(line: 212, column: 11, scope: !6243)
!6245 = !DILocation(line: 212, column: 17, scope: !6243)
!6246 = !DILocation(line: 212, column: 6, scope: !6225)
!6247 = !DILocation(line: 213, column: 3, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6249, file: !3, line: 213, column: 3)
!6249 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 213, column: 3)
!6250 = distinct !DILexicalBlock(scope: !6243, file: !3, line: 212, column: 35)
!6251 = !DILocation(line: 213, column: 3, scope: !6249)
!6252 = !DILocation(line: 214, column: 3, scope: !6250)
!6253 = !DILocation(line: 217, column: 17, scope: !6225)
!6254 = !DILocation(line: 217, column: 25, scope: !6225)
!6255 = !DILocation(line: 217, column: 9, scope: !6225)
!6256 = !DILocation(line: 217, column: 7, scope: !6225)
!6257 = !DILocation(line: 218, column: 7, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 218, column: 6)
!6259 = !DILocation(line: 218, column: 6, scope: !6225)
!6260 = !DILocation(line: 219, column: 3, scope: !6258)
!6261 = !DILocation(line: 221, column: 2, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 221, column: 2)
!6263 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 221, column: 2)
!6264 = !DILocation(line: 221, column: 2, scope: !6263)
!6265 = !DILocation(line: 225, column: 54, scope: !6225)
!6266 = !DILocation(line: 225, column: 30, scope: !6225)
!6267 = !DILocation(line: 225, column: 2, scope: !6225)
!6268 = !DILocation(line: 226, column: 56, scope: !6225)
!6269 = !DILocation(line: 226, column: 34, scope: !6225)
!6270 = !DILocation(line: 226, column: 2, scope: !6225)
!6271 = !DILocation(line: 227, column: 21, scope: !6225)
!6272 = !DILocation(line: 227, column: 26, scope: !6225)
!6273 = !DILocation(line: 227, column: 32, scope: !6225)
!6274 = !DILocation(line: 228, column: 8, scope: !6225)
!6275 = !DILocation(line: 228, column: 14, scope: !6225)
!6276 = !DILocation(line: 227, column: 8, scope: !6225)
!6277 = !DILocation(line: 227, column: 6, scope: !6225)
!6278 = !DILocation(line: 230, column: 8, scope: !6225)
!6279 = !DILocation(line: 230, column: 2, scope: !6225)
!6280 = !DILocation(line: 231, column: 9, scope: !6225)
!6281 = !DILocation(line: 231, column: 2, scope: !6225)
!6282 = !DILocation(line: 232, column: 1, scope: !6225)
!6283 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !6284, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{!128, !250, !348, !394}
!6286 = !DILocalVariable(name: "dev", arg: 1, scope: !6283, file: !6, line: 912, type: !250)
!6287 = !DILocation(line: 912, column: 52, scope: !6283)
!6288 = !DILocalVariable(name: "buf", arg: 2, scope: !6283, file: !6, line: 912, type: !348)
!6289 = !DILocation(line: 912, column: 63, scope: !6283)
!6290 = !DILocalVariable(name: "size", arg: 3, scope: !6283, file: !6, line: 912, type: !394)
!6291 = !DILocation(line: 912, column: 75, scope: !6283)
!6292 = !DILocalVariable(name: "actual", scope: !6283, file: !6, line: 914, type: !128)
!6293 = !DILocation(line: 914, column: 6, scope: !6283)
!6294 = !DILocation(line: 915, column: 20, scope: !6283)
!6295 = !DILocation(line: 915, column: 25, scope: !6283)
!6296 = !DILocation(line: 915, column: 44, scope: !6283)
!6297 = !DILocation(line: 915, column: 49, scope: !6283)
!6298 = !DILocation(line: 915, column: 54, scope: !6283)
!6299 = !DILocation(line: 916, column: 6, scope: !6283)
!6300 = !DILocation(line: 916, column: 11, scope: !6283)
!6301 = !DILocation(line: 915, column: 11, scope: !6283)
!6302 = !DILocation(line: 915, column: 9, scope: !6283)
!6303 = !DILocation(line: 917, column: 10, scope: !6283)
!6304 = !DILocation(line: 917, column: 25, scope: !6283)
!6305 = !DILocation(line: 917, column: 20, scope: !6283)
!6306 = !DILocation(line: 917, column: 17, scope: !6283)
!6307 = !DILocation(line: 917, column: 9, scope: !6283)
!6308 = !DILocation(line: 917, column: 38, scope: !6283)
!6309 = !DILocation(line: 917, column: 2, scope: !6283)
!6310 = distinct !DISubprogram(name: "siano_media_device_register", scope: !3, file: !3, line: 356, type: !6311, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6311 = !DISubroutineType(types: !6312)
!6312 = !{!249, !4186, !128}
!6313 = !DILocalVariable(name: "dev", arg: 1, scope: !6310, file: !3, line: 356, type: !4186)
!6314 = !DILocation(line: 356, column: 66, scope: !6310)
!6315 = !DILocalVariable(name: "board_id", arg: 2, scope: !6310, file: !3, line: 357, type: !128)
!6316 = !DILocation(line: 357, column: 10, scope: !6310)
!6317 = !DILocation(line: 382, column: 2, scope: !6310)
!6318 = distinct !DISubprogram(name: "smsusb_start_streaming", scope: !3, file: !3, line: 190, type: !6319, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6319 = !DISubroutineType(types: !6320)
!6320 = !{!128, !4186}
!6321 = !DILocalVariable(name: "dev", arg: 1, scope: !6318, file: !3, line: 190, type: !4186)
!6322 = !DILocation(line: 190, column: 59, scope: !6318)
!6323 = !DILocalVariable(name: "i", scope: !6318, file: !3, line: 192, type: !128)
!6324 = !DILocation(line: 192, column: 6, scope: !6318)
!6325 = !DILocalVariable(name: "rc", scope: !6318, file: !3, line: 192, type: !128)
!6326 = !DILocation(line: 192, column: 9, scope: !6318)
!6327 = !DILocation(line: 194, column: 9, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6318, file: !3, line: 194, column: 2)
!6329 = !DILocation(line: 194, column: 7, scope: !6328)
!6330 = !DILocation(line: 194, column: 14, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 194, column: 2)
!6332 = !DILocation(line: 194, column: 16, scope: !6331)
!6333 = !DILocation(line: 194, column: 2, scope: !6328)
!6334 = !DILocation(line: 195, column: 26, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 194, column: 33)
!6336 = !DILocation(line: 195, column: 32, scope: !6335)
!6337 = !DILocation(line: 195, column: 37, scope: !6335)
!6338 = !DILocation(line: 195, column: 43, scope: !6335)
!6339 = !DILocation(line: 195, column: 8, scope: !6335)
!6340 = !DILocation(line: 195, column: 6, scope: !6335)
!6341 = !DILocation(line: 196, column: 7, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 196, column: 7)
!6343 = !DILocation(line: 196, column: 10, scope: !6342)
!6344 = !DILocation(line: 196, column: 7, scope: !6335)
!6345 = !DILocation(line: 197, column: 4, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 196, column: 15)
!6347 = !DILocation(line: 198, column: 26, scope: !6346)
!6348 = !DILocation(line: 198, column: 4, scope: !6346)
!6349 = !DILocation(line: 199, column: 4, scope: !6346)
!6350 = !DILocation(line: 201, column: 2, scope: !6335)
!6351 = !DILocation(line: 194, column: 29, scope: !6331)
!6352 = !DILocation(line: 194, column: 2, scope: !6331)
!6353 = distinct !{!6353, !6333, !6354}
!6354 = !DILocation(line: 201, column: 2, scope: !6328)
!6355 = !DILocation(line: 203, column: 9, scope: !6318)
!6356 = !DILocation(line: 203, column: 2, scope: !6318)
!6357 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !6358, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6358 = !DISubroutineType(types: !6359)
!6359 = !{null, !282, !249}
!6360 = !DILocalVariable(name: "dev", arg: 1, scope: !6357, file: !80, line: 660, type: !282)
!6361 = !DILocation(line: 660, column: 51, scope: !6357)
!6362 = !DILocalVariable(name: "data", arg: 2, scope: !6357, file: !80, line: 660, type: !249)
!6363 = !DILocation(line: 660, column: 62, scope: !6357)
!6364 = !DILocation(line: 662, column: 21, scope: !6357)
!6365 = !DILocation(line: 662, column: 2, scope: !6357)
!6366 = !DILocation(line: 662, column: 7, scope: !6357)
!6367 = !DILocation(line: 662, column: 19, scope: !6357)
!6368 = !DILocation(line: 663, column: 1, scope: !6357)
!6369 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6370, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!249, !4078}
!6372 = !DILocalVariable(name: "intf", arg: 1, scope: !6369, file: !6, line: 263, type: !4078)
!6373 = !DILocation(line: 263, column: 60, scope: !6369)
!6374 = !DILocation(line: 265, column: 26, scope: !6369)
!6375 = !DILocation(line: 265, column: 32, scope: !6369)
!6376 = !DILocation(line: 265, column: 9, scope: !6369)
!6377 = !DILocation(line: 265, column: 2, scope: !6369)
!6378 = distinct !DISubprogram(name: "smsusb_stop_streaming", scope: !3, file: !3, line: 176, type: !6379, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{null, !4186}
!6381 = !DILocalVariable(name: "dev", arg: 1, scope: !6378, file: !3, line: 176, type: !4186)
!6382 = !DILocation(line: 176, column: 59, scope: !6378)
!6383 = !DILocalVariable(name: "i", scope: !6378, file: !3, line: 178, type: !128)
!6384 = !DILocation(line: 178, column: 6, scope: !6378)
!6385 = !DILocation(line: 180, column: 9, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 180, column: 2)
!6387 = !DILocation(line: 180, column: 7, scope: !6386)
!6388 = !DILocation(line: 180, column: 14, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 180, column: 2)
!6390 = !DILocation(line: 180, column: 16, scope: !6389)
!6391 = !DILocation(line: 180, column: 2, scope: !6386)
!6392 = !DILocation(line: 181, column: 17, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 180, column: 33)
!6394 = !DILocation(line: 181, column: 22, scope: !6393)
!6395 = !DILocation(line: 181, column: 28, scope: !6393)
!6396 = !DILocation(line: 181, column: 31, scope: !6393)
!6397 = !DILocation(line: 181, column: 3, scope: !6393)
!6398 = !DILocation(line: 183, column: 7, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 183, column: 7)
!6400 = !DILocation(line: 183, column: 12, scope: !6399)
!6401 = !DILocation(line: 183, column: 18, scope: !6399)
!6402 = !DILocation(line: 183, column: 21, scope: !6399)
!6403 = !DILocation(line: 183, column: 7, scope: !6393)
!6404 = !DILocation(line: 184, column: 22, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 183, column: 25)
!6406 = !DILocation(line: 184, column: 27, scope: !6405)
!6407 = !DILocation(line: 184, column: 36, scope: !6405)
!6408 = !DILocation(line: 184, column: 41, scope: !6405)
!6409 = !DILocation(line: 184, column: 47, scope: !6405)
!6410 = !DILocation(line: 184, column: 50, scope: !6405)
!6411 = !DILocation(line: 184, column: 4, scope: !6405)
!6412 = !DILocation(line: 185, column: 4, scope: !6405)
!6413 = !DILocation(line: 185, column: 9, scope: !6405)
!6414 = !DILocation(line: 185, column: 15, scope: !6405)
!6415 = !DILocation(line: 185, column: 18, scope: !6405)
!6416 = !DILocation(line: 185, column: 21, scope: !6405)
!6417 = !DILocation(line: 186, column: 3, scope: !6405)
!6418 = !DILocation(line: 187, column: 2, scope: !6393)
!6419 = !DILocation(line: 180, column: 29, scope: !6389)
!6420 = !DILocation(line: 180, column: 2, scope: !6389)
!6421 = distinct !{!6421, !6391, !6422}
!6422 = !DILocation(line: 187, column: 2, scope: !6386)
!6423 = !DILocation(line: 188, column: 1, scope: !6378)
!6424 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !6425, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!249, !3795}
!6427 = !DILocalVariable(name: "dev", arg: 1, scope: !6424, file: !80, line: 655, type: !3795)
!6428 = !DILocation(line: 655, column: 58, scope: !6424)
!6429 = !DILocation(line: 657, column: 9, scope: !6424)
!6430 = !DILocation(line: 657, column: 14, scope: !6424)
!6431 = !DILocation(line: 657, column: 2, scope: !6424)
!6432 = distinct !DISubprogram(name: "smsusb_submit_urb", scope: !3, file: !3, line: 150, type: !6433, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{!128, !4186, !4754}
!6435 = !DILocalVariable(name: "dev", arg: 1, scope: !6432, file: !3, line: 150, type: !4186)
!6436 = !DILocation(line: 150, column: 54, scope: !6432)
!6437 = !DILocalVariable(name: "surb", arg: 2, scope: !6432, file: !3, line: 151, type: !4754)
!6438 = !DILocation(line: 151, column: 30, scope: !6432)
!6439 = !DILocation(line: 153, column: 7, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 153, column: 6)
!6441 = !DILocation(line: 153, column: 13, scope: !6440)
!6442 = !DILocation(line: 153, column: 6, scope: !6432)
!6443 = !DILocation(line: 155, column: 32, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 153, column: 17)
!6445 = !DILocation(line: 155, column: 37, scope: !6444)
!6446 = !DILocation(line: 155, column: 14, scope: !6444)
!6447 = !DILocation(line: 155, column: 3, scope: !6444)
!6448 = !DILocation(line: 155, column: 9, scope: !6444)
!6449 = !DILocation(line: 155, column: 12, scope: !6444)
!6450 = !DILocation(line: 156, column: 8, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 156, column: 7)
!6452 = !DILocation(line: 156, column: 14, scope: !6451)
!6453 = !DILocation(line: 156, column: 7, scope: !6444)
!6454 = !DILocation(line: 157, column: 4, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 156, column: 18)
!6456 = !DILocation(line: 158, column: 4, scope: !6455)
!6457 = !DILocation(line: 160, column: 2, scope: !6444)
!6458 = !DILocation(line: 163, column: 4, scope: !6432)
!6459 = !DILocation(line: 163, column: 10, scope: !6432)
!6460 = !DILocation(line: 164, column: 3, scope: !6432)
!6461 = !DILocation(line: 164, column: 8, scope: !6432)
!6462 = !DILocation(line: 165, column: 3, scope: !6432)
!6463 = !DILocation(line: 166, column: 3, scope: !6432)
!6464 = !DILocation(line: 166, column: 9, scope: !6432)
!6465 = !DILocation(line: 166, column: 13, scope: !6432)
!6466 = !DILocation(line: 167, column: 3, scope: !6432)
!6467 = !DILocation(line: 167, column: 8, scope: !6432)
!6468 = !DILocation(line: 169, column: 3, scope: !6432)
!6469 = !DILocation(line: 162, column: 2, scope: !6432)
!6470 = !DILocation(line: 171, column: 2, scope: !6432)
!6471 = !DILocation(line: 171, column: 8, scope: !6432)
!6472 = !DILocation(line: 171, column: 12, scope: !6432)
!6473 = !DILocation(line: 171, column: 27, scope: !6432)
!6474 = !DILocation(line: 173, column: 25, scope: !6432)
!6475 = !DILocation(line: 173, column: 31, scope: !6432)
!6476 = !DILocation(line: 173, column: 9, scope: !6432)
!6477 = !DILocation(line: 173, column: 2, scope: !6432)
!6478 = !DILocation(line: 174, column: 1, scope: !6432)
!6479 = distinct !DISubprogram(name: "usb_fill_bulk_urb", scope: !6, file: !6, line: 1647, type: !6480, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6480 = !DISubroutineType(types: !6481)
!6481 = !{null, !4723, !250, !7, !249, !128, !4719, !249}
!6482 = !DILocalVariable(name: "urb", arg: 1, scope: !6479, file: !6, line: 1647, type: !4723)
!6483 = !DILocation(line: 1647, column: 50, scope: !6479)
!6484 = !DILocalVariable(name: "dev", arg: 2, scope: !6479, file: !6, line: 1648, type: !250)
!6485 = !DILocation(line: 1648, column: 29, scope: !6479)
!6486 = !DILocalVariable(name: "pipe", arg: 3, scope: !6479, file: !6, line: 1649, type: !7)
!6487 = !DILocation(line: 1649, column: 23, scope: !6479)
!6488 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !6479, file: !6, line: 1650, type: !249)
!6489 = !DILocation(line: 1650, column: 16, scope: !6479)
!6490 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !6479, file: !6, line: 1651, type: !128)
!6491 = !DILocation(line: 1651, column: 14, scope: !6479)
!6492 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !6479, file: !6, line: 1652, type: !4719)
!6493 = !DILocation(line: 1652, column: 25, scope: !6479)
!6494 = !DILocalVariable(name: "context", arg: 7, scope: !6479, file: !6, line: 1653, type: !249)
!6495 = !DILocation(line: 1653, column: 16, scope: !6479)
!6496 = !DILocation(line: 1655, column: 13, scope: !6479)
!6497 = !DILocation(line: 1655, column: 2, scope: !6479)
!6498 = !DILocation(line: 1655, column: 7, scope: !6479)
!6499 = !DILocation(line: 1655, column: 11, scope: !6479)
!6500 = !DILocation(line: 1656, column: 14, scope: !6479)
!6501 = !DILocation(line: 1656, column: 2, scope: !6479)
!6502 = !DILocation(line: 1656, column: 7, scope: !6479)
!6503 = !DILocation(line: 1656, column: 12, scope: !6479)
!6504 = !DILocation(line: 1657, column: 25, scope: !6479)
!6505 = !DILocation(line: 1657, column: 2, scope: !6479)
!6506 = !DILocation(line: 1657, column: 7, scope: !6479)
!6507 = !DILocation(line: 1657, column: 23, scope: !6479)
!6508 = !DILocation(line: 1658, column: 32, scope: !6479)
!6509 = !DILocation(line: 1658, column: 2, scope: !6479)
!6510 = !DILocation(line: 1658, column: 7, scope: !6479)
!6511 = !DILocation(line: 1658, column: 30, scope: !6479)
!6512 = !DILocation(line: 1659, column: 18, scope: !6479)
!6513 = !DILocation(line: 1659, column: 2, scope: !6479)
!6514 = !DILocation(line: 1659, column: 7, scope: !6479)
!6515 = !DILocation(line: 1659, column: 16, scope: !6479)
!6516 = !DILocation(line: 1660, column: 17, scope: !6479)
!6517 = !DILocation(line: 1660, column: 2, scope: !6479)
!6518 = !DILocation(line: 1660, column: 7, scope: !6479)
!6519 = !DILocation(line: 1660, column: 15, scope: !6479)
!6520 = !DILocation(line: 1661, column: 1, scope: !6479)
!6521 = distinct !DISubprogram(name: "smsusb_onresponse", scope: !3, file: !3, line: 86, type: !4721, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6522 = !DILocalVariable(name: "urb", arg: 1, scope: !6521, file: !3, line: 86, type: !4723)
!6523 = !DILocation(line: 86, column: 43, scope: !6521)
!6524 = !DILocalVariable(name: "surb", scope: !6521, file: !3, line: 88, type: !4754)
!6525 = !DILocation(line: 88, column: 23, scope: !6521)
!6526 = !DILocation(line: 88, column: 54, scope: !6521)
!6527 = !DILocation(line: 88, column: 59, scope: !6521)
!6528 = !DILocation(line: 88, column: 30, scope: !6521)
!6529 = !DILocalVariable(name: "dev", scope: !6521, file: !3, line: 89, type: !4186)
!6530 = !DILocation(line: 89, column: 26, scope: !6521)
!6531 = !DILocation(line: 89, column: 32, scope: !6521)
!6532 = !DILocation(line: 89, column: 38, scope: !6521)
!6533 = !DILocation(line: 91, column: 6, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 91, column: 6)
!6535 = !DILocation(line: 91, column: 11, scope: !6534)
!6536 = !DILocation(line: 91, column: 18, scope: !6534)
!6537 = !DILocation(line: 91, column: 6, scope: !6521)
!6538 = !DILocation(line: 92, column: 3, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 91, column: 33)
!6540 = !DILocation(line: 94, column: 3, scope: !6539)
!6541 = !DILocation(line: 97, column: 7, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 97, column: 6)
!6543 = !DILocation(line: 97, column: 12, scope: !6542)
!6544 = !DILocation(line: 97, column: 26, scope: !6542)
!6545 = !DILocation(line: 97, column: 31, scope: !6542)
!6546 = !DILocation(line: 97, column: 35, scope: !6542)
!6547 = !DILocation(line: 97, column: 40, scope: !6542)
!6548 = !DILocation(line: 97, column: 47, scope: !6542)
!6549 = !DILocation(line: 97, column: 6, scope: !6521)
!6550 = !DILocalVariable(name: "phdr", scope: !6551, file: !3, line: 98, type: !4753)
!6551 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 97, column: 54)
!6552 = !DILocation(line: 98, column: 23, scope: !6551)
!6553 = !DILocation(line: 98, column: 52, scope: !6551)
!6554 = !DILocation(line: 98, column: 58, scope: !6551)
!6555 = !DILocation(line: 98, column: 62, scope: !6551)
!6556 = !DILocation(line: 98, column: 30, scope: !6551)
!6557 = !DILocation(line: 100, column: 35, scope: !6551)
!6558 = !DILocation(line: 100, column: 3, scope: !6551)
!6559 = !DILocation(line: 101, column: 7, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 101, column: 7)
!6561 = !DILocation(line: 101, column: 12, scope: !6560)
!6562 = !DILocation(line: 101, column: 29, scope: !6560)
!6563 = !DILocation(line: 101, column: 35, scope: !6560)
!6564 = !DILocation(line: 101, column: 26, scope: !6560)
!6565 = !DILocation(line: 101, column: 7, scope: !6551)
!6566 = !DILocation(line: 102, column: 21, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 101, column: 47)
!6568 = !DILocation(line: 102, column: 27, scope: !6567)
!6569 = !DILocation(line: 102, column: 4, scope: !6567)
!6570 = !DILocation(line: 102, column: 10, scope: !6567)
!6571 = !DILocation(line: 102, column: 14, scope: !6567)
!6572 = !DILocation(line: 102, column: 19, scope: !6567)
!6573 = !DILocation(line: 104, column: 8, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 104, column: 8)
!6575 = !DILocation(line: 104, column: 13, scope: !6574)
!6576 = !DILocation(line: 104, column: 32, scope: !6574)
!6577 = !DILocation(line: 105, column: 9, scope: !6574)
!6578 = !DILocation(line: 105, column: 15, scope: !6574)
!6579 = !DILocation(line: 105, column: 25, scope: !6574)
!6580 = !DILocation(line: 104, column: 8, scope: !6567)
!6581 = !DILocation(line: 108, column: 6, scope: !6582)
!6582 = distinct !DILexicalBlock(scope: !6574, file: !3, line: 105, column: 52)
!6583 = !DILocation(line: 108, column: 11, scope: !6582)
!6584 = !DILocation(line: 109, column: 8, scope: !6582)
!6585 = !DILocation(line: 109, column: 14, scope: !6582)
!6586 = !DILocation(line: 109, column: 24, scope: !6582)
!6587 = !DILocation(line: 109, column: 30, scope: !6582)
!6588 = !DILocation(line: 108, column: 30, scope: !6582)
!6589 = !DILocation(line: 107, column: 5, scope: !6582)
!6590 = !DILocation(line: 107, column: 11, scope: !6582)
!6591 = !DILocation(line: 107, column: 15, scope: !6582)
!6592 = !DILocation(line: 107, column: 22, scope: !6582)
!6593 = !DILocation(line: 112, column: 16, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6582, file: !3, line: 112, column: 9)
!6595 = !DILocation(line: 112, column: 22, scope: !6594)
!6596 = !DILocation(line: 112, column: 10, scope: !6594)
!6597 = !DILocation(line: 113, column: 10, scope: !6594)
!6598 = !DILocation(line: 113, column: 16, scope: !6594)
!6599 = !DILocation(line: 113, column: 20, scope: !6594)
!6600 = !DILocation(line: 112, column: 33, scope: !6594)
!6601 = !DILocation(line: 113, column: 30, scope: !6594)
!6602 = !DILocation(line: 113, column: 35, scope: !6594)
!6603 = !DILocation(line: 113, column: 28, scope: !6594)
!6604 = !DILocation(line: 112, column: 9, scope: !6582)
!6605 = !DILocation(line: 114, column: 6, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6594, file: !3, line: 113, column: 50)
!6607 = !DILocation(line: 118, column: 6, scope: !6606)
!6608 = !DILocation(line: 123, column: 21, scope: !6582)
!6609 = !DILocation(line: 123, column: 12, scope: !6582)
!6610 = !DILocation(line: 123, column: 28, scope: !6582)
!6611 = !DILocation(line: 123, column: 34, scope: !6582)
!6612 = !DILocation(line: 123, column: 38, scope: !6582)
!6613 = !DILocation(line: 123, column: 26, scope: !6582)
!6614 = !DILocation(line: 124, column: 12, scope: !6582)
!6615 = !DILocation(line: 123, column: 5, scope: !6582)
!6616 = !DILocation(line: 125, column: 4, scope: !6582)
!6617 = !DILocation(line: 126, column: 5, scope: !6574)
!6618 = !DILocation(line: 126, column: 11, scope: !6574)
!6619 = !DILocation(line: 126, column: 15, scope: !6574)
!6620 = !DILocation(line: 126, column: 22, scope: !6574)
!6621 = !DILocation(line: 128, column: 4, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 128, column: 4)
!6623 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 128, column: 4)
!6624 = !DILocation(line: 128, column: 4, scope: !6623)
!6625 = !DILocation(line: 132, column: 56, scope: !6567)
!6626 = !DILocation(line: 132, column: 32, scope: !6567)
!6627 = !DILocation(line: 132, column: 4, scope: !6567)
!6628 = !DILocation(line: 134, column: 23, scope: !6567)
!6629 = !DILocation(line: 134, column: 28, scope: !6567)
!6630 = !DILocation(line: 134, column: 37, scope: !6567)
!6631 = !DILocation(line: 134, column: 43, scope: !6567)
!6632 = !DILocation(line: 134, column: 4, scope: !6567)
!6633 = !DILocation(line: 135, column: 4, scope: !6567)
!6634 = !DILocation(line: 135, column: 10, scope: !6567)
!6635 = !DILocation(line: 135, column: 13, scope: !6567)
!6636 = !DILocation(line: 136, column: 3, scope: !6567)
!6637 = !DILocation(line: 137, column: 4, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 136, column: 10)
!6639 = !DILocation(line: 140, column: 2, scope: !6551)
!6640 = !DILocation(line: 141, column: 3, scope: !6542)
!6641 = !DILocation(line: 97, column: 51, scope: !6542)
!6642 = !DILabel(scope: !6521, name: "exit_and_resubmit", file: !3, line: 145)
!6643 = !DILocation(line: 145, column: 1, scope: !6521)
!6644 = !DILocation(line: 146, column: 2, scope: !6521)
!6645 = !DILocation(line: 146, column: 2, scope: !6646)
!6646 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 146, column: 2)
!6647 = !DILocation(line: 147, column: 17, scope: !6521)
!6648 = !DILocation(line: 147, column: 23, scope: !6521)
!6649 = !DILocation(line: 147, column: 2, scope: !6521)
!6650 = !DILocation(line: 148, column: 1, scope: !6521)
!6651 = distinct !DISubprogram(name: "__init_work", scope: !213, file: !213, line: 215, type: !6652, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6652 = !DISubroutineType(types: !6653)
!6653 = !{null, !2037, !128}
!6654 = !DILocalVariable(name: "work", arg: 1, scope: !6651, file: !213, line: 215, type: !2037)
!6655 = !DILocation(line: 215, column: 52, scope: !6651)
!6656 = !DILocalVariable(name: "onstack", arg: 2, scope: !6651, file: !213, line: 215, type: !128)
!6657 = !DILocation(line: 215, column: 62, scope: !6651)
!6658 = !DILocation(line: 215, column: 73, scope: !6651)
!6659 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6660, file: !6660, line: 33, type: !6661, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6660 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6661 = !DISubroutineType(types: !6662)
!6662 = !{null, !297}
!6663 = !DILocalVariable(name: "list", arg: 1, scope: !6659, file: !6660, line: 33, type: !297)
!6664 = !DILocation(line: 33, column: 53, scope: !6659)
!6665 = !DILocation(line: 35, column: 2, scope: !6659)
!6666 = !DILocation(line: 35, column: 2, scope: !6667)
!6667 = distinct !DILexicalBlock(scope: !6659, file: !6660, line: 35, column: 2)
!6668 = !DILocation(line: 35, column: 2, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6667, file: !6660, line: 35, column: 2)
!6670 = !DILocation(line: 35, column: 2, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6667, file: !6660, line: 35, column: 2)
!6672 = !DILocation(line: 36, column: 15, scope: !6659)
!6673 = !DILocation(line: 36, column: 2, scope: !6659)
!6674 = !DILocation(line: 36, column: 8, scope: !6659)
!6675 = !DILocation(line: 36, column: 13, scope: !6659)
!6676 = !DILocation(line: 37, column: 1, scope: !6659)
!6677 = distinct !DISubprogram(name: "do_submit_urb", scope: !3, file: !3, line: 70, type: !2035, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6678 = !DILocalVariable(name: "work", arg: 1, scope: !6677, file: !3, line: 70, type: !2037)
!6679 = !DILocation(line: 70, column: 47, scope: !6677)
!6680 = !DILocalVariable(name: "surb", scope: !6677, file: !3, line: 72, type: !4754)
!6681 = !DILocation(line: 72, column: 23, scope: !6677)
!6682 = !DILocalVariable(name: "__mptr", scope: !6683, file: !3, line: 72, type: !249)
!6683 = distinct !DILexicalBlock(scope: !6677, file: !3, line: 72, column: 30)
!6684 = !DILocation(line: 72, column: 30, scope: !6683)
!6685 = !DILocation(line: 72, column: 30, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6683, file: !3, line: 72, column: 30)
!6687 = !DILocalVariable(name: "dev", scope: !6677, file: !3, line: 73, type: !4186)
!6688 = !DILocation(line: 73, column: 26, scope: !6677)
!6689 = !DILocation(line: 73, column: 32, scope: !6677)
!6690 = !DILocation(line: 73, column: 38, scope: !6677)
!6691 = !DILocation(line: 75, column: 20, scope: !6677)
!6692 = !DILocation(line: 75, column: 25, scope: !6677)
!6693 = !DILocation(line: 75, column: 2, scope: !6677)
!6694 = !DILocation(line: 76, column: 1, scope: !6677)
!6695 = distinct !DISubprogram(name: "schedule_work", scope: !213, file: !213, line: 566, type: !6696, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6696 = !DISubroutineType(types: !6697)
!6697 = !{!559, !2037}
!6698 = !DILocalVariable(name: "work", arg: 1, scope: !6695, file: !213, line: 566, type: !2037)
!6699 = !DILocation(line: 566, column: 54, scope: !6695)
!6700 = !DILocation(line: 568, column: 20, scope: !6695)
!6701 = !DILocation(line: 568, column: 31, scope: !6695)
!6702 = !DILocation(line: 568, column: 9, scope: !6695)
!6703 = !DILocation(line: 568, column: 2, scope: !6695)
!6704 = distinct !DISubprogram(name: "queue_work", scope: !213, file: !213, line: 504, type: !6705, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !321)
!6705 = !DISubroutineType(types: !6706)
!6706 = !{!559, !2863, !2037}
!6707 = !DILocalVariable(name: "wq", arg: 1, scope: !6704, file: !213, line: 504, type: !2863)
!6708 = !DILocation(line: 504, column: 56, scope: !6704)
!6709 = !DILocalVariable(name: "work", arg: 2, scope: !6704, file: !213, line: 505, type: !2037)
!6710 = !DILocation(line: 505, column: 30, scope: !6704)
!6711 = !DILocation(line: 507, column: 41, scope: !6704)
!6712 = !DILocation(line: 507, column: 45, scope: !6704)
!6713 = !DILocation(line: 507, column: 9, scope: !6704)
!6714 = !DILocation(line: 507, column: 2, scope: !6704)
