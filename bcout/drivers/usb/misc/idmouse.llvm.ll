; ModuleID = '../bcout/drivers/usb/misc/idmouse.llvm.bc'
source_filename = "drivers/usb/misc/idmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_idmouse_driver_init6:\09\09\09"
module asm ".long\09idmouse_driver_init - .\09\09\09"
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
%struct.usb_idmouse = type { %struct.usb_device*, %struct.usb_interface*, i8*, i64, i64, i8, i32, i32, %struct.mutex }

@__UNIQUE_ID___addressable_idmouse_driver_init211 = internal global i8* bitcast (i32 ()* @idmouse_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@idmouse_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @idmouse_probe, void (%struct.usb_interface*)* @idmouse_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @idmouse_suspend, i32 (%struct.usb_interface*)* @idmouse_resume, i32 (%struct.usb_interface*)* @idmouse_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([3 x %struct.usb_device_id], [3 x %struct.usb_device_id]* @idmouse_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 8, !dbg !3836
@__exitcall_idmouse_driver_exit = internal global void ()* @idmouse_driver_exit, section ".exitcall.exit", align 8, !dbg !3813
@__UNIQUE_ID_author212 = internal constant [58 x i8] c"idmouse.author=Florian 'Floe' Echtler <echtler@fs.tum.de>\00", section ".modinfo", align 1, !dbg !3818
@__UNIQUE_ID_description213 = internal constant [61 x i8] c"idmouse.description=Siemens ID Mouse FingerTIP Sensor Driver\00", section ".modinfo", align 1, !dbg !3823
@__UNIQUE_ID_file214 = internal constant [38 x i8] c"idmouse.file=drivers/usb/misc/idmouse\00", section ".modinfo", align 1, !dbg !3828
@__UNIQUE_ID_license215 = internal constant [20 x i8] c"idmouse.license=GPL\00", section ".modinfo", align 1, !dbg !3833
@.str = private unnamed_addr constant [8 x i8] c"idmouse\00", align 1
@idmouse_table = internal constant [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1665, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1665, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3910
@idmouse_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3897
@.str.1 = private unnamed_addr constant [11 x i8] c"&dev->lock\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to find bulk-in endpoint.\0A\00", align 1
@idmouse_class = internal global %struct.usb_class_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* (%struct.device*, i16*)* null, %struct.file_operations* @idmouse_fops, i32 132 }, align 8, !dbg !3900
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to allocate minor number.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s now attached\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Siemens ID Mouse FingerTIP Sensor Driver\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"idmouse%d\00", align 1
@idmouse_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @default_llseek, i64 (%struct.file*, i8*, i64, i64*)* @idmouse_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @idmouse_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @idmouse_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3908
@.str.8 = private unnamed_addr constant [16 x i8] c"P5 225 289 255 \00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"disconnected\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_idmouse_driver_init211 to i8*), i8* bitcast (void ()* @idmouse_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_idmouse_driver_exit to i8*), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author212, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description213, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file214, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license215, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @idmouse_driver_init() #0 section ".init.text" !dbg !3918 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @idmouse_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3921
  ret i32 %call, !dbg !3921
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @idmouse_driver_exit() #0 section ".exit.text" !dbg !3922 {
entry:
  call void @usb_deregister(%struct.usb_driver* @idmouse_driver) #9, !dbg !3923
  ret void, !dbg !3923
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @idmouse_probe(%struct.usb_interface* %interface, %struct.usb_device_id* %id) #2 !dbg !3899 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3924, metadata !DIExpression()), !dbg !3928
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3936, metadata !DIExpression()), !dbg !3937
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3938, metadata !DIExpression()), !dbg !3939
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3940, metadata !DIExpression()), !dbg !3941
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3942, metadata !DIExpression()), !dbg !3946
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3948, metadata !DIExpression()), !dbg !3952
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3954, metadata !DIExpression()), !dbg !3958
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3963, metadata !DIExpression()), !dbg !3964
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !3966
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3967, metadata !DIExpression()), !dbg !3968
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3969, metadata !DIExpression()), !dbg !3970
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3971, metadata !DIExpression()), !dbg !3972
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3973, metadata !DIExpression()), !dbg !3974
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3975, metadata !DIExpression()), !dbg !3976
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3977, metadata !DIExpression()), !dbg !3978
  %retval = alloca i32, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %dev = alloca %struct.usb_idmouse*, align 8
  %iface_desc = alloca %struct.usb_host_interface*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %result = alloca i32, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !3979, metadata !DIExpression()), !dbg !3980
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !3983, metadata !DIExpression()), !dbg !3984
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !3985
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !3986
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !3984
  call void @llvm.dbg.declare(metadata %struct.usb_idmouse** %dev, metadata !3987, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %iface_desc, metadata !4001, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4006, metadata !DIExpression()), !dbg !4007
  %1 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4008
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4009
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4009
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4010
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4011
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %3, i32 0, i32 0, !dbg !4013
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 5, !dbg !4014
  %4 = load i8, i8* %bInterfaceClass, align 1, !dbg !4014
  %conv = zext i8 %4 to i32, !dbg !4011
  %cmp = icmp ne i32 %conv, 10, !dbg !4015
  br i1 %cmp, label %if.then, label %if.end, !dbg !4016

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4017
  br label %return, !dbg !4017

if.end:                                           ; preds = %entry
  %5 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4018
  %desc2 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %5, i32 0, i32 0, !dbg !4020
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc2, i32 0, i32 4, !dbg !4021
  %6 = load i8, i8* %bNumEndpoints, align 4, !dbg !4021
  %conv3 = zext i8 %6 to i32, !dbg !4018
  %cmp4 = icmp slt i32 %conv3, 1, !dbg !4022
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4023

if.then6:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4024
  br label %return, !dbg !4024

if.end7:                                          ; preds = %if.end
  %call8 = call i8* @kzalloc(i64 80, i32 3264) #9, !dbg !4025
  %7 = bitcast i8* %call8 to %struct.usb_idmouse*, !dbg !4025
  store %struct.usb_idmouse* %7, %struct.usb_idmouse** %dev, align 8, !dbg !4026
  %8 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4027
  %cmp9 = icmp eq %struct.usb_idmouse* %8, null, !dbg !4029
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4030

if.then11:                                        ; preds = %if.end7
  store i32 -12, i32* %retval, align 4, !dbg !4031
  br label %return, !dbg !4031

if.end12:                                         ; preds = %if.end7
  br label %do.body, !dbg !4032

do.body:                                          ; preds = %if.end12
  %9 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4033
  %lock = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %9, i32 0, i32 8, !dbg !4033
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @idmouse_probe.__key) #9, !dbg !4033
  br label %do.end, !dbg !4033

do.end:                                           ; preds = %do.body
  %10 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4035
  %11 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4036
  %udev13 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %11, i32 0, i32 0, !dbg !4037
  store %struct.usb_device* %10, %struct.usb_device** %udev13, align 8, !dbg !4038
  %12 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4039
  %13 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4040
  %interface14 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %13, i32 0, i32 1, !dbg !4041
  store %struct.usb_interface* %12, %struct.usb_interface** %interface14, align 8, !dbg !4042
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %iface_desc, align 8, !dbg !4043
  %call15 = call i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface* %14, %struct.usb_endpoint_descriptor** %endpoint) #9, !dbg !4044
  store i32 %call15, i32* %result, align 4, !dbg !4045
  %15 = load i32, i32* %result, align 4, !dbg !4046
  %tobool = icmp ne i32 %15, 0, !dbg !4046
  br i1 %tobool, label %if.then16, label %if.end18, !dbg !4048

if.then16:                                        ; preds = %do.end
  %16 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4049
  %dev17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 7, !dbg !4049
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4049
  %17 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4051
  call void @idmouse_delete(%struct.usb_idmouse* %17) #9, !dbg !4052
  %18 = load i32, i32* %result, align 4, !dbg !4053
  store i32 %18, i32* %retval, align 4, !dbg !4054
  br label %return, !dbg !4054

if.end18:                                         ; preds = %do.end
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4055
  %call19 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %19) #9, !dbg !4056
  %conv20 = sext i32 %call19 to i64, !dbg !4056
  %20 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4057
  %orig_bi_size = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %20, i32 0, i32 4, !dbg !4058
  store i64 %conv20, i64* %orig_bi_size, align 8, !dbg !4059
  %21 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4060
  %bulk_in_size = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %21, i32 0, i32 3, !dbg !4061
  store i64 512, i64* %bulk_in_size, align 8, !dbg !4062
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4063
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %22, i32 0, i32 2, !dbg !4064
  %23 = load i8, i8* %bEndpointAddress, align 1, !dbg !4064
  %24 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4065
  %bulk_in_endpointAddr = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %24, i32 0, i32 5, !dbg !4066
  store i8 %23, i8* %bulk_in_endpointAddr, align 8, !dbg !4067
  %25 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4068
  %bulk_in_size21 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %25, i32 0, i32 3, !dbg !4069
  %26 = load i64, i64* %bulk_in_size21, align 8, !dbg !4069
  %add = add i64 65040, %26, !dbg !4070
  store i64 %add, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %27 = load i64, i64* %size.addr.i, align 8, !dbg !4071
  %28 = call i1 @llvm.is.constant.i64(i64 %27) #11, !dbg !4072
  br i1 %28, label %if.then.i, label %if.end9.i, !dbg !4073

if.then.i:                                        ; preds = %if.end18
  %29 = load i64, i64* %size.addr.i, align 8, !dbg !4074
  %cmp.i = icmp ugt i64 %29, 8192, !dbg !4075
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4076

if.then1.i:                                       ; preds = %if.then.i
  %30 = load i64, i64* %size.addr.i, align 8, !dbg !4077
  %31 = load i32, i32* %flags.addr.i, align 4, !dbg !4078
  store i64 %30, i64* %size.addr.i.i, align 8
  store i32 %31, i32* %flags.addr.i.i, align 4
  %32 = load i64, i64* %size.addr.i.i, align 8, !dbg !4079
  %call.i.i = call i32 @get_order(i64 %32) #12, !dbg !4080
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3972
  %33 = load i64, i64* %size.addr.i.i, align 8, !dbg !4081
  %34 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4082
  %35 = load i32, i32* %order.i.i, align 4, !dbg !4083
  store i64 %33, i64* %size.addr.i.i.i, align 8
  store i32 %34, i32* %flags.addr.i.i.i, align 4
  store i32 %35, i32* %order.addr.i.i.i, align 4
  %36 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4084
  %37 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4085
  %38 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4086
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %36, i32 %37, i32 %38) #13, !dbg !4087
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4087
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4087
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4087
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4087
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4088
  br label %kmalloc.exit, !dbg !4088

if.end.i:                                         ; preds = %if.then.i
  %39 = load i64, i64* %size.addr.i, align 8, !dbg !4089
  store i64 %39, i64* %size.addr.i11.i, align 8
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4090
  %tobool.i.i = icmp ne i64 %40, 0, !dbg !4090
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4092

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4093
  br label %kmalloc_index.exit.i, !dbg !4093

if.end.i.i:                                       ; preds = %if.end.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4094
  %cmp.i.i = icmp ule i64 %41, 8, !dbg !4096
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4097

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4098
  br label %kmalloc_index.exit.i, !dbg !4098

if.end2.i.i:                                      ; preds = %if.end.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4099
  %cmp3.i.i = icmp ugt i64 %42, 64, !dbg !4101
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4102

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4103
  %cmp4.i.i = icmp ule i64 %43, 96, !dbg !4104
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4105

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4106
  br label %kmalloc_index.exit.i, !dbg !4106

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4107
  %cmp7.i.i = icmp ugt i64 %44, 128, !dbg !4109
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4110

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4111
  %cmp9.i.i = icmp ule i64 %45, 192, !dbg !4112
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4113

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4114
  br label %kmalloc_index.exit.i, !dbg !4114

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4115
  %cmp12.i.i = icmp ule i64 %46, 8, !dbg !4117
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4118

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4119
  br label %kmalloc_index.exit.i, !dbg !4119

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4120
  %cmp15.i.i = icmp ule i64 %47, 16, !dbg !4122
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4123

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4124
  br label %kmalloc_index.exit.i, !dbg !4124

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4125
  %cmp18.i.i = icmp ule i64 %48, 32, !dbg !4127
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4128

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4129
  br label %kmalloc_index.exit.i, !dbg !4129

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4130
  %cmp21.i.i = icmp ule i64 %49, 64, !dbg !4132
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4133

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4134
  br label %kmalloc_index.exit.i, !dbg !4134

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4135
  %cmp24.i.i = icmp ule i64 %50, 128, !dbg !4137
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4138

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4139
  br label %kmalloc_index.exit.i, !dbg !4139

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4140
  %cmp27.i.i = icmp ule i64 %51, 256, !dbg !4142
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4143

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4144
  br label %kmalloc_index.exit.i, !dbg !4144

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4145
  %cmp30.i.i = icmp ule i64 %52, 512, !dbg !4147
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4148

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4149
  br label %kmalloc_index.exit.i, !dbg !4149

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4150
  %cmp33.i.i = icmp ule i64 %53, 1024, !dbg !4152
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4153

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4154
  br label %kmalloc_index.exit.i, !dbg !4154

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4155
  %cmp36.i.i = icmp ule i64 %54, 2048, !dbg !4157
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4158

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4159
  br label %kmalloc_index.exit.i, !dbg !4159

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4160
  %cmp39.i.i = icmp ule i64 %55, 4096, !dbg !4162
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4163

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4164
  br label %kmalloc_index.exit.i, !dbg !4164

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4165
  %cmp42.i.i = icmp ule i64 %56, 8192, !dbg !4167
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4168

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4169
  br label %kmalloc_index.exit.i, !dbg !4169

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4170
  %cmp45.i.i = icmp ule i64 %57, 16384, !dbg !4172
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4173

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4174
  br label %kmalloc_index.exit.i, !dbg !4174

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4175
  %cmp48.i.i = icmp ule i64 %58, 32768, !dbg !4177
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4178

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4179
  br label %kmalloc_index.exit.i, !dbg !4179

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4180
  %cmp51.i.i = icmp ule i64 %59, 65536, !dbg !4182
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4183

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4184
  br label %kmalloc_index.exit.i, !dbg !4184

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4185
  %cmp54.i.i = icmp ule i64 %60, 131072, !dbg !4187
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4188

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4189
  br label %kmalloc_index.exit.i, !dbg !4189

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4190
  %cmp57.i.i = icmp ule i64 %61, 262144, !dbg !4192
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4193

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4194
  br label %kmalloc_index.exit.i, !dbg !4194

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4195
  %cmp60.i.i = icmp ule i64 %62, 524288, !dbg !4197
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4198

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4199
  br label %kmalloc_index.exit.i, !dbg !4199

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4200
  %cmp63.i.i = icmp ule i64 %63, 1048576, !dbg !4202
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4203

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4204
  br label %kmalloc_index.exit.i, !dbg !4204

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4205
  %cmp66.i.i = icmp ule i64 %64, 2097152, !dbg !4207
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4208

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4209
  br label %kmalloc_index.exit.i, !dbg !4209

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4210
  %cmp69.i.i = icmp ule i64 %65, 4194304, !dbg !4212
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4213

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4214
  br label %kmalloc_index.exit.i, !dbg !4214

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4215
  %cmp72.i.i = icmp ule i64 %66, 8388608, !dbg !4217
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4218

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4219
  br label %kmalloc_index.exit.i, !dbg !4219

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4220
  %cmp75.i.i = icmp ule i64 %67, 16777216, !dbg !4222
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4223

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4224
  br label %kmalloc_index.exit.i, !dbg !4224

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4225
  %cmp78.i.i = icmp ule i64 %68, 33554432, !dbg !4227
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4228

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4229
  br label %kmalloc_index.exit.i, !dbg !4229

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4230
  %cmp81.i.i = icmp ule i64 %69, 67108864, !dbg !4232
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4233

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4234
  br label %kmalloc_index.exit.i, !dbg !4234

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4235, !srcloc !4238
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 159) #11, !dbg !4239, !srcloc !4242
  unreachable, !dbg !4243

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %70 = load i32, i32* %retval.i.i, align 4, !dbg !4244
  store i32 %70, i32* %index.i, align 4, !dbg !4245
  %71 = load i32, i32* %index.i, align 4, !dbg !4246
  %tobool.i = icmp ne i32 %71, 0, !dbg !4246
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4248

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4249
  br label %kmalloc.exit, !dbg !4249

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %72 = load i32, i32* %flags.addr.i, align 4, !dbg !4250
  store i32 %72, i32* %flags.addr.i13.i, align 4
  %73 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4251
  %and.i.i = and i32 %73, 17, !dbg !4251
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4251
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4251
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4251
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4251
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4253

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4254
  br label %kmalloc_type.exit.i, !dbg !4254

if.end.i16.i:                                     ; preds = %if.end4.i
  %74 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4255
  %and2.i.i = and i32 %74, 1, !dbg !4256
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4255
  %75 = zext i1 %tobool3.i.i to i64, !dbg !4255
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4255
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4257
  br label %kmalloc_type.exit.i, !dbg !4257

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %76 = load i32, i32* %retval.i12.i, align 4, !dbg !4258
  %idxprom.i = zext i32 %76 to i64, !dbg !4259
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4259
  %77 = load i32, i32* %index.i, align 4, !dbg !4260
  %idxprom6.i = zext i32 %77 to i64, !dbg !4259
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4259
  %78 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4259
  %79 = load i32, i32* %flags.addr.i, align 4, !dbg !4261
  %80 = load i64, i64* %size.addr.i, align 8, !dbg !4262
  store %struct.kmem_cache* %78, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %79, i32* %flags.addr.i17.i, align 4
  store i64 %80, i64* %size.addr.i18.i, align 8
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4263
  %82 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4264
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %81, i32 %82) #13, !dbg !4265
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4265
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4265
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4265
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4265
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3941
  %83 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4266
  %84 = load i8*, i8** %ret.i.i, align 8, !dbg !4267
  %85 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4268
  %86 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4269
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %83, i8* %84, i64 %85, i32 %86) #13, !dbg !4270
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4271
  %87 = load i8*, i8** %ret.i.i, align 8, !dbg !4272
  store i8* %87, i8** %retval.i, align 8, !dbg !4273
  br label %kmalloc.exit, !dbg !4273

if.end9.i:                                        ; preds = %if.end18
  %88 = load i64, i64* %size.addr.i, align 8, !dbg !4274
  %89 = load i32, i32* %flags.addr.i, align 4, !dbg !4275
  %call10.i = call noalias i8* @__kmalloc(i64 %88, i32 %89) #13, !dbg !4276
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4276
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4276
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4276
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4276
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4277
  br label %kmalloc.exit, !dbg !4277

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %90 = load i8*, i8** %retval.i, align 8, !dbg !4278
  %91 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4279
  %bulk_in_buffer = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %91, i32 0, i32 2, !dbg !4280
  store i8* %90, i8** %bulk_in_buffer, align 8, !dbg !4281
  %92 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4282
  %bulk_in_buffer23 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %92, i32 0, i32 2, !dbg !4284
  %93 = load i8*, i8** %bulk_in_buffer23, align 8, !dbg !4284
  %tobool24 = icmp ne i8* %93, null, !dbg !4282
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4285

if.then25:                                        ; preds = %kmalloc.exit
  %94 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4286
  call void @idmouse_delete(%struct.usb_idmouse* %94) #9, !dbg !4288
  store i32 -12, i32* %retval, align 4, !dbg !4289
  br label %return, !dbg !4289

if.end26:                                         ; preds = %kmalloc.exit
  %95 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4290
  %present = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %95, i32 0, i32 7, !dbg !4291
  store i32 1, i32* %present, align 8, !dbg !4292
  %96 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4293
  %97 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4294
  %98 = bitcast %struct.usb_idmouse* %97 to i8*, !dbg !4294
  call void @usb_set_intfdata(%struct.usb_interface* %96, i8* %98) #9, !dbg !4295
  %99 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4296
  %call27 = call i32 @usb_register_dev(%struct.usb_interface* %99, %struct.usb_class_driver* @idmouse_class) #9, !dbg !4297
  store i32 %call27, i32* %result, align 4, !dbg !4298
  %100 = load i32, i32* %result, align 4, !dbg !4299
  %tobool28 = icmp ne i32 %100, 0, !dbg !4299
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !4301

if.then29:                                        ; preds = %if.end26
  %101 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4302
  %dev30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 7, !dbg !4302
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !4302
  %102 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4304
  call void @idmouse_delete(%struct.usb_idmouse* %102) #9, !dbg !4305
  %103 = load i32, i32* %result, align 4, !dbg !4306
  store i32 %103, i32* %retval, align 4, !dbg !4307
  br label %return, !dbg !4307

if.end31:                                         ; preds = %if.end26
  %104 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4308
  %dev32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %104, i32 0, i32 7, !dbg !4308
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !4308
  store i32 0, i32* %retval, align 4, !dbg !4309
  br label %return, !dbg !4309

return:                                           ; preds = %if.end31, %if.then29, %if.then25, %if.then16, %if.then11, %if.then6, %if.then
  %105 = load i32, i32* %retval, align 4, !dbg !4310
  ret i32 %105, !dbg !4310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @idmouse_disconnect(%struct.usb_interface* %interface) #2 !dbg !4311 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.usb_idmouse*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.declare(metadata %struct.usb_idmouse** %dev, metadata !4314, metadata !DIExpression()), !dbg !4315
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4316
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4317
  %1 = bitcast i8* %call to %struct.usb_idmouse*, !dbg !4317
  store %struct.usb_idmouse* %1, %struct.usb_idmouse** %dev, align 8, !dbg !4315
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4318
  call void @usb_deregister_dev(%struct.usb_interface* %2, %struct.usb_class_driver* @idmouse_class) #9, !dbg !4319
  %3 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4320
  %lock = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %3, i32 0, i32 8, !dbg !4321
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !4322
  %4 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4323
  %present = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %4, i32 0, i32 7, !dbg !4324
  store i32 0, i32* %present, align 8, !dbg !4325
  %5 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4326
  %open = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %5, i32 0, i32 6, !dbg !4328
  %6 = load i32, i32* %open, align 4, !dbg !4328
  %tobool = icmp ne i32 %6, 0, !dbg !4326
  br i1 %tobool, label %if.else, label %if.then, !dbg !4329

if.then:                                          ; preds = %entry
  %7 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4330
  %lock1 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %7, i32 0, i32 8, !dbg !4332
  call void @mutex_unlock(%struct.mutex* %lock1) #9, !dbg !4333
  %8 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4334
  call void @idmouse_delete(%struct.usb_idmouse* %8) #9, !dbg !4335
  br label %if.end, !dbg !4336

if.else:                                          ; preds = %entry
  %9 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4337
  %lock2 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %9, i32 0, i32 8, !dbg !4339
  call void @mutex_unlock(%struct.mutex* %lock2) #9, !dbg !4340
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4341
  %dev3 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 7, !dbg !4341
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !4341
  ret void, !dbg !4342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @idmouse_suspend(%struct.usb_interface* %intf, i32 %message.coerce) #2 !dbg !4343 {
entry:
  %message = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !4346, metadata !DIExpression()), !dbg !4347
  ret i32 0, !dbg !4348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @idmouse_resume(%struct.usb_interface* %intf) #2 !dbg !4349 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  ret i32 0, !dbg !4352
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4353 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4356, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4358, metadata !DIExpression()), !dbg !4360
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4360
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4360
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4360
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4360
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4360
  store i8* %2, i8** %__mptr, align 8, !dbg !4360
  br label %do.body, !dbg !4360

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4361

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4360
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4360
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4360
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4361
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4360
  ret %struct.usb_device* %5, !dbg !4363
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4364 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3924, metadata !DIExpression()), !dbg !4365
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3936, metadata !DIExpression()), !dbg !4368
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3938, metadata !DIExpression()), !dbg !4369
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3940, metadata !DIExpression()), !dbg !4370
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3942, metadata !DIExpression()), !dbg !4371
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3948, metadata !DIExpression()), !dbg !4373
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3954, metadata !DIExpression()), !dbg !4375
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3963, metadata !DIExpression()), !dbg !4378
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !4379
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3967, metadata !DIExpression()), !dbg !4380
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3969, metadata !DIExpression()), !dbg !4381
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3971, metadata !DIExpression()), !dbg !4382
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3973, metadata !DIExpression()), !dbg !4383
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3975, metadata !DIExpression()), !dbg !4384
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3977, metadata !DIExpression()), !dbg !4385
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  %0 = load i64, i64* %size.addr, align 8, !dbg !4390
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4391
  %or = or i32 %1, 256, !dbg !4392
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4393
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4394
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4395

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4396
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4397
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4398

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4399
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4400
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4401
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4402
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4382
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4403
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4404
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4405
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4406
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4407
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4408
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4409
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4409
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4409
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4409
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4409
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4410
  br label %kmalloc.exit, !dbg !4410

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4411
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4412
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4412
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4413

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4414
  br label %kmalloc_index.exit.i, !dbg !4414

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4415
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4416
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4417

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4418
  br label %kmalloc_index.exit.i, !dbg !4418

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4419
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4420
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4421

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4422
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4423
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4424

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4425
  br label %kmalloc_index.exit.i, !dbg !4425

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4426
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4427
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4428

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4429
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4430
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4431

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4432
  br label %kmalloc_index.exit.i, !dbg !4432

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4433
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4434
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4435

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4436
  br label %kmalloc_index.exit.i, !dbg !4436

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4437
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4438
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4439

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4440
  br label %kmalloc_index.exit.i, !dbg !4440

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4441
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4442
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4443

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4444
  br label %kmalloc_index.exit.i, !dbg !4444

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4445
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4446
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4447

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4448
  br label %kmalloc_index.exit.i, !dbg !4448

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4449
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4450
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4451

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4452
  br label %kmalloc_index.exit.i, !dbg !4452

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4453
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4454
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4455

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4456
  br label %kmalloc_index.exit.i, !dbg !4456

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4457
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4458
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4459

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4460
  br label %kmalloc_index.exit.i, !dbg !4460

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4461
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4462
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4463

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4464
  br label %kmalloc_index.exit.i, !dbg !4464

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4465
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4466
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4467

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4468
  br label %kmalloc_index.exit.i, !dbg !4468

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4469
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4470
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4471

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4472
  br label %kmalloc_index.exit.i, !dbg !4472

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4473
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4474
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4475

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4476
  br label %kmalloc_index.exit.i, !dbg !4476

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4477
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4478
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4479

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4480
  br label %kmalloc_index.exit.i, !dbg !4480

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4481
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4482
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4483

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4484
  br label %kmalloc_index.exit.i, !dbg !4484

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4485
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4486
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4487

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4488
  br label %kmalloc_index.exit.i, !dbg !4488

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4489
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4490
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4491

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4492
  br label %kmalloc_index.exit.i, !dbg !4492

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4493
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4494
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4495

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4496
  br label %kmalloc_index.exit.i, !dbg !4496

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4497
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4498
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4499

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4500
  br label %kmalloc_index.exit.i, !dbg !4500

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4501
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4502
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4503

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4504
  br label %kmalloc_index.exit.i, !dbg !4504

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4505
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4506
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4507

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4508
  br label %kmalloc_index.exit.i, !dbg !4508

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4509
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4510
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4511

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4512
  br label %kmalloc_index.exit.i, !dbg !4512

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4513
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4514
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4515

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4516
  br label %kmalloc_index.exit.i, !dbg !4516

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4517
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4518
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4519

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4520
  br label %kmalloc_index.exit.i, !dbg !4520

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4521
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4522
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4523

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4524
  br label %kmalloc_index.exit.i, !dbg !4524

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4525
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4526
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4527

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4528
  br label %kmalloc_index.exit.i, !dbg !4528

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4529, !srcloc !4238
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 159) #11, !dbg !4530, !srcloc !4242
  unreachable, !dbg !4531

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4532
  store i32 %45, i32* %index.i, align 4, !dbg !4533
  %46 = load i32, i32* %index.i, align 4, !dbg !4534
  %tobool.i = icmp ne i32 %46, 0, !dbg !4534
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4535

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4536
  br label %kmalloc.exit, !dbg !4536

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4537
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4538
  %and.i.i = and i32 %48, 17, !dbg !4538
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4538
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4538
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4538
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4538
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4539

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4540
  br label %kmalloc_type.exit.i, !dbg !4540

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4541
  %and2.i.i = and i32 %49, 1, !dbg !4542
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4541
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4541
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4541
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4543
  br label %kmalloc_type.exit.i, !dbg !4543

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4544
  %idxprom.i = zext i32 %51 to i64, !dbg !4545
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4545
  %52 = load i32, i32* %index.i, align 4, !dbg !4546
  %idxprom6.i = zext i32 %52 to i64, !dbg !4545
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4545
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4545
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4547
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4548
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4549
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4550
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4551
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4551
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4551
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4551
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4551
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4370
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4552
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4553
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4554
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4555
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4556
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4557
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4558
  store i8* %62, i8** %retval.i, align 8, !dbg !4559
  br label %kmalloc.exit, !dbg !4559

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4560
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4561
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4562
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4562
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4562
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4562
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4562
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4563
  br label %kmalloc.exit, !dbg !4563

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4564
  ret i8* %65, !dbg !4565
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface* %alt, %struct.usb_endpoint_descriptor** %bulk_in) #2 !dbg !4566 {
entry:
  %alt.addr = alloca %struct.usb_host_interface*, align 8
  %bulk_in.addr = alloca %struct.usb_endpoint_descriptor**, align 8
  store %struct.usb_host_interface* %alt, %struct.usb_host_interface** %alt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %alt.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  store %struct.usb_endpoint_descriptor** %bulk_in, %struct.usb_endpoint_descriptor*** %bulk_in.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor*** %bulk_in.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  %0 = load %struct.usb_host_interface*, %struct.usb_host_interface** %alt.addr, align 8, !dbg !4574
  %1 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %bulk_in.addr, align 8, !dbg !4575
  %call = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %0, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null) #9, !dbg !4576
  ret i32 %call, !dbg !4577
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @idmouse_delete(%struct.usb_idmouse* %dev) #2 !dbg !4578 {
entry:
  %dev.addr = alloca %struct.usb_idmouse*, align 8
  store %struct.usb_idmouse* %dev, %struct.usb_idmouse** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_idmouse** %dev.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  %0 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4583
  %bulk_in_buffer = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %0, i32 0, i32 2, !dbg !4584
  %1 = load i8*, i8** %bulk_in_buffer, align 8, !dbg !4584
  call void @kfree(i8* %1) #9, !dbg !4585
  %2 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4586
  %3 = bitcast %struct.usb_idmouse* %2 to i8*, !dbg !4586
  call void @kfree(i8* %3) #9, !dbg !4587
  ret void, !dbg !4588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4589 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4596
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !4596
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4596
  %conv = zext i16 %1 to i32, !dbg !4596
  %and = and i32 %conv, 2047, !dbg !4597
  ret i32 %and, !dbg !4598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4599 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4606
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4607
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4608
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4609
  ret void, !dbg !4610
}

; Function Attrs: noredzone
declare dso_local i32 @usb_register_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4611 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4615, metadata !DIExpression()), !dbg !4620
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4622, metadata !DIExpression()), !dbg !4623
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load i64, i64* %size.addr, align 8, !dbg !4626
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4628
  br i1 %1, label %if.then, label %if.end447, !dbg !4629

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4630
  %tobool = icmp ne i64 %2, 0, !dbg !4630
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4633

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4634
  br label %return, !dbg !4634

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4635
  %cmp = icmp ult i64 %3, 4096, !dbg !4637
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4638

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4639
  br label %return, !dbg !4639

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub = sub i64 %4, 1, !dbg !4640
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4640
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4640

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub4 = sub i64 %6, 1, !dbg !4640
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4640
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4640

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub6 = sub i64 %8, 1, !dbg !4640
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4640
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4640

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4640

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub9 = sub i64 %9, 1, !dbg !4640
  %and = and i64 %sub9, -9223372036854775808, !dbg !4640
  %tobool10 = icmp ne i64 %and, 0, !dbg !4640
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4640

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4640

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub13 = sub i64 %10, 1, !dbg !4640
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4640
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4640
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4640

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4640

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub18 = sub i64 %11, 1, !dbg !4640
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4640
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4640
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4640

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4640

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub23 = sub i64 %12, 1, !dbg !4640
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4640
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4640
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4640

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4640

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub28 = sub i64 %13, 1, !dbg !4640
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4640
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4640
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4640

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4640

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub33 = sub i64 %14, 1, !dbg !4640
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4640
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4640
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4640

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4640

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub38 = sub i64 %15, 1, !dbg !4640
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4640
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4640
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4640

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4640

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub43 = sub i64 %16, 1, !dbg !4640
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4640
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4640
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4640

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4640

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub48 = sub i64 %17, 1, !dbg !4640
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4640
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4640
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4640

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4640

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub53 = sub i64 %18, 1, !dbg !4640
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4640
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4640
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4640

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4640

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub58 = sub i64 %19, 1, !dbg !4640
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4640
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4640
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4640

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4640

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub63 = sub i64 %20, 1, !dbg !4640
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4640
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4640
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4640

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4640

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub68 = sub i64 %21, 1, !dbg !4640
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4640
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4640
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4640

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4640

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub73 = sub i64 %22, 1, !dbg !4640
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4640
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4640
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4640

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4640

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub78 = sub i64 %23, 1, !dbg !4640
  %and79 = and i64 %sub78, 562949953421312, !dbg !4640
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4640
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4640

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4640

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub83 = sub i64 %24, 1, !dbg !4640
  %and84 = and i64 %sub83, 281474976710656, !dbg !4640
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4640
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4640

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4640

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub88 = sub i64 %25, 1, !dbg !4640
  %and89 = and i64 %sub88, 140737488355328, !dbg !4640
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4640
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4640

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4640

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub93 = sub i64 %26, 1, !dbg !4640
  %and94 = and i64 %sub93, 70368744177664, !dbg !4640
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4640
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4640

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4640

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub98 = sub i64 %27, 1, !dbg !4640
  %and99 = and i64 %sub98, 35184372088832, !dbg !4640
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4640
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4640

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4640

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub103 = sub i64 %28, 1, !dbg !4640
  %and104 = and i64 %sub103, 17592186044416, !dbg !4640
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4640
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4640

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4640

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub108 = sub i64 %29, 1, !dbg !4640
  %and109 = and i64 %sub108, 8796093022208, !dbg !4640
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4640
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4640

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4640

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub113 = sub i64 %30, 1, !dbg !4640
  %and114 = and i64 %sub113, 4398046511104, !dbg !4640
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4640
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4640

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4640

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub118 = sub i64 %31, 1, !dbg !4640
  %and119 = and i64 %sub118, 2199023255552, !dbg !4640
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4640
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4640

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4640

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub123 = sub i64 %32, 1, !dbg !4640
  %and124 = and i64 %sub123, 1099511627776, !dbg !4640
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4640
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4640

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4640

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub128 = sub i64 %33, 1, !dbg !4640
  %and129 = and i64 %sub128, 549755813888, !dbg !4640
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4640
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4640

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4640

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub133 = sub i64 %34, 1, !dbg !4640
  %and134 = and i64 %sub133, 274877906944, !dbg !4640
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4640
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4640

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4640

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub138 = sub i64 %35, 1, !dbg !4640
  %and139 = and i64 %sub138, 137438953472, !dbg !4640
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4640
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4640

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4640

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub143 = sub i64 %36, 1, !dbg !4640
  %and144 = and i64 %sub143, 68719476736, !dbg !4640
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4640
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4640

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4640

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub148 = sub i64 %37, 1, !dbg !4640
  %and149 = and i64 %sub148, 34359738368, !dbg !4640
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4640
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4640

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4640

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub153 = sub i64 %38, 1, !dbg !4640
  %and154 = and i64 %sub153, 17179869184, !dbg !4640
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4640
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4640

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4640

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub158 = sub i64 %39, 1, !dbg !4640
  %and159 = and i64 %sub158, 8589934592, !dbg !4640
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4640
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4640

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4640

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub163 = sub i64 %40, 1, !dbg !4640
  %and164 = and i64 %sub163, 4294967296, !dbg !4640
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4640
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4640

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4640

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub168 = sub i64 %41, 1, !dbg !4640
  %and169 = and i64 %sub168, 2147483648, !dbg !4640
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4640
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4640

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4640

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub173 = sub i64 %42, 1, !dbg !4640
  %and174 = and i64 %sub173, 1073741824, !dbg !4640
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4640
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4640

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4640

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub178 = sub i64 %43, 1, !dbg !4640
  %and179 = and i64 %sub178, 536870912, !dbg !4640
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4640
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4640

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4640

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub183 = sub i64 %44, 1, !dbg !4640
  %and184 = and i64 %sub183, 268435456, !dbg !4640
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4640
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4640

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4640

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub188 = sub i64 %45, 1, !dbg !4640
  %and189 = and i64 %sub188, 134217728, !dbg !4640
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4640
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4640

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4640

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub193 = sub i64 %46, 1, !dbg !4640
  %and194 = and i64 %sub193, 67108864, !dbg !4640
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4640
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4640

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4640

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub198 = sub i64 %47, 1, !dbg !4640
  %and199 = and i64 %sub198, 33554432, !dbg !4640
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4640
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4640

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4640

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub203 = sub i64 %48, 1, !dbg !4640
  %and204 = and i64 %sub203, 16777216, !dbg !4640
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4640
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4640

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4640

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub208 = sub i64 %49, 1, !dbg !4640
  %and209 = and i64 %sub208, 8388608, !dbg !4640
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4640
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4640

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4640

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub213 = sub i64 %50, 1, !dbg !4640
  %and214 = and i64 %sub213, 4194304, !dbg !4640
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4640
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4640

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4640

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub218 = sub i64 %51, 1, !dbg !4640
  %and219 = and i64 %sub218, 2097152, !dbg !4640
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4640
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4640

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4640

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub223 = sub i64 %52, 1, !dbg !4640
  %and224 = and i64 %sub223, 1048576, !dbg !4640
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4640
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4640

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4640

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub228 = sub i64 %53, 1, !dbg !4640
  %and229 = and i64 %sub228, 524288, !dbg !4640
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4640
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4640

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4640

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub233 = sub i64 %54, 1, !dbg !4640
  %and234 = and i64 %sub233, 262144, !dbg !4640
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4640
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4640

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4640

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub238 = sub i64 %55, 1, !dbg !4640
  %and239 = and i64 %sub238, 131072, !dbg !4640
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4640
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4640

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4640

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub243 = sub i64 %56, 1, !dbg !4640
  %and244 = and i64 %sub243, 65536, !dbg !4640
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4640
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4640

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4640

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub248 = sub i64 %57, 1, !dbg !4640
  %and249 = and i64 %sub248, 32768, !dbg !4640
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4640
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4640

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4640

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub253 = sub i64 %58, 1, !dbg !4640
  %and254 = and i64 %sub253, 16384, !dbg !4640
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4640
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4640

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4640

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub258 = sub i64 %59, 1, !dbg !4640
  %and259 = and i64 %sub258, 8192, !dbg !4640
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4640
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4640

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4640

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub263 = sub i64 %60, 1, !dbg !4640
  %and264 = and i64 %sub263, 4096, !dbg !4640
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4640
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4640

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4640

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub268 = sub i64 %61, 1, !dbg !4640
  %and269 = and i64 %sub268, 2048, !dbg !4640
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4640
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4640

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4640

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub273 = sub i64 %62, 1, !dbg !4640
  %and274 = and i64 %sub273, 1024, !dbg !4640
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4640
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4640

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4640

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub278 = sub i64 %63, 1, !dbg !4640
  %and279 = and i64 %sub278, 512, !dbg !4640
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4640
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4640

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4640

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub283 = sub i64 %64, 1, !dbg !4640
  %and284 = and i64 %sub283, 256, !dbg !4640
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4640
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4640

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4640

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub288 = sub i64 %65, 1, !dbg !4640
  %and289 = and i64 %sub288, 128, !dbg !4640
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4640
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4640

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4640

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub293 = sub i64 %66, 1, !dbg !4640
  %and294 = and i64 %sub293, 64, !dbg !4640
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4640
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4640

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4640

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub298 = sub i64 %67, 1, !dbg !4640
  %and299 = and i64 %sub298, 32, !dbg !4640
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4640
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4640

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4640

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub303 = sub i64 %68, 1, !dbg !4640
  %and304 = and i64 %sub303, 16, !dbg !4640
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4640
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4640

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4640

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub308 = sub i64 %69, 1, !dbg !4640
  %and309 = and i64 %sub308, 8, !dbg !4640
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4640
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4640

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4640

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub313 = sub i64 %70, 1, !dbg !4640
  %and314 = and i64 %sub313, 4, !dbg !4640
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4640
  %71 = zext i1 %tobool315 to i64, !dbg !4640
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4640
  br label %cond.end, !dbg !4640

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4640
  br label %cond.end317, !dbg !4640

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4640
  br label %cond.end319, !dbg !4640

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4640
  br label %cond.end321, !dbg !4640

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4640
  br label %cond.end323, !dbg !4640

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4640
  br label %cond.end325, !dbg !4640

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4640
  br label %cond.end327, !dbg !4640

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4640
  br label %cond.end329, !dbg !4640

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4640
  br label %cond.end331, !dbg !4640

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4640
  br label %cond.end333, !dbg !4640

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4640
  br label %cond.end335, !dbg !4640

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4640
  br label %cond.end337, !dbg !4640

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4640
  br label %cond.end339, !dbg !4640

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4640
  br label %cond.end341, !dbg !4640

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4640
  br label %cond.end343, !dbg !4640

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4640
  br label %cond.end345, !dbg !4640

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4640
  br label %cond.end347, !dbg !4640

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4640
  br label %cond.end349, !dbg !4640

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4640
  br label %cond.end351, !dbg !4640

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4640
  br label %cond.end353, !dbg !4640

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4640
  br label %cond.end355, !dbg !4640

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4640
  br label %cond.end357, !dbg !4640

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4640
  br label %cond.end359, !dbg !4640

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4640
  br label %cond.end361, !dbg !4640

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4640
  br label %cond.end363, !dbg !4640

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4640
  br label %cond.end365, !dbg !4640

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4640
  br label %cond.end367, !dbg !4640

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4640
  br label %cond.end369, !dbg !4640

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4640
  br label %cond.end371, !dbg !4640

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4640
  br label %cond.end373, !dbg !4640

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4640
  br label %cond.end375, !dbg !4640

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4640
  br label %cond.end377, !dbg !4640

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4640
  br label %cond.end379, !dbg !4640

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4640
  br label %cond.end381, !dbg !4640

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4640
  br label %cond.end383, !dbg !4640

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4640
  br label %cond.end385, !dbg !4640

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4640
  br label %cond.end387, !dbg !4640

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4640
  br label %cond.end389, !dbg !4640

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4640
  br label %cond.end391, !dbg !4640

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4640
  br label %cond.end393, !dbg !4640

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4640
  br label %cond.end395, !dbg !4640

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4640
  br label %cond.end397, !dbg !4640

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4640
  br label %cond.end399, !dbg !4640

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4640
  br label %cond.end401, !dbg !4640

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4640
  br label %cond.end403, !dbg !4640

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4640
  br label %cond.end405, !dbg !4640

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4640
  br label %cond.end407, !dbg !4640

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4640
  br label %cond.end409, !dbg !4640

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4640
  br label %cond.end411, !dbg !4640

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4640
  br label %cond.end413, !dbg !4640

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4640
  br label %cond.end415, !dbg !4640

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4640
  br label %cond.end417, !dbg !4640

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4640
  br label %cond.end419, !dbg !4640

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4640
  br label %cond.end421, !dbg !4640

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4640
  br label %cond.end423, !dbg !4640

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4640
  br label %cond.end425, !dbg !4640

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4640
  br label %cond.end427, !dbg !4640

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4640
  br label %cond.end429, !dbg !4640

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4640
  br label %cond.end431, !dbg !4640

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4640
  br label %cond.end433, !dbg !4640

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4640
  br label %cond.end435, !dbg !4640

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4640
  br label %cond.end437, !dbg !4640

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4640
  br label %cond.end440, !dbg !4640

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4640

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4640
  br label %cond.end444, !dbg !4640

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4640
  %sub443 = sub i64 %72, 1, !dbg !4640
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4640
  br label %cond.end444, !dbg !4640

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4640
  %sub446 = sub i32 %cond445, 12, !dbg !4641
  %add = add i32 %sub446, 1, !dbg !4642
  store i32 %add, i32* %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4644
  %dec = add i64 %73, -1, !dbg !4644
  store i64 %dec, i64* %size.addr, align 8, !dbg !4644
  %74 = load i64, i64* %size.addr, align 8, !dbg !4645
  %shr = lshr i64 %74, 12, !dbg !4645
  store i64 %shr, i64* %size.addr, align 8, !dbg !4645
  %75 = load i64, i64* %size.addr, align 8, !dbg !4646
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4623
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4647
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4648
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !4647, !srcloc !4649
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4647
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4650
  %add.i = add i32 %79, 1, !dbg !4651
  store i32 %add.i, i32* %retval, align 4, !dbg !4652
  br label %return, !dbg !4652

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4653
  ret i32 %80, !dbg !4653
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4654 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4615, metadata !DIExpression()), !dbg !4658
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4622, metadata !DIExpression()), !dbg !4660
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  %0 = load i64, i64* %n.addr, align 8, !dbg !4663
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4660
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4664
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4665
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !4664, !srcloc !4649
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4664
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4666
  %add.i = add i32 %4, 1, !dbg !4667
  %sub = sub i32 %add.i, 1, !dbg !4668
  ret i32 %sub, !dbg !4669
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4670 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4674, metadata !DIExpression()), !dbg !4675
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4676, metadata !DIExpression()), !dbg !4677
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4682
  ret i8* %0, !dbg !4683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4684 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4691
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4692
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4693
  store i8* %0, i8** %driver_data, align 8, !dbg !4694
  ret void, !dbg !4695
}

; Function Attrs: noredzone
declare dso_local i64 @default_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @idmouse_read(%struct.file* %file, i8* %buffer, i64 %count, i64* %ppos) #2 !dbg !4696 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %dev = alloca %struct.usb_idmouse*, align 8
  %result = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.usb_idmouse** %dev, metadata !4705, metadata !DIExpression()), !dbg !4706
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4707
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4708
  %1 = load i8*, i8** %private_data, align 8, !dbg !4708
  %2 = bitcast i8* %1 to %struct.usb_idmouse*, !dbg !4707
  store %struct.usb_idmouse* %2, %struct.usb_idmouse** %dev, align 8, !dbg !4706
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4709, metadata !DIExpression()), !dbg !4710
  %3 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4711
  %lock = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %3, i32 0, i32 8, !dbg !4712
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !4713
  %4 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4714
  %present = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %4, i32 0, i32 7, !dbg !4716
  %5 = load i32, i32* %present, align 8, !dbg !4716
  %tobool = icmp ne i32 %5, 0, !dbg !4714
  br i1 %tobool, label %if.end, label %if.then, !dbg !4717

if.then:                                          ; preds = %entry
  %6 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4718
  %lock1 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %6, i32 0, i32 8, !dbg !4720
  call void @mutex_unlock(%struct.mutex* %lock1) #9, !dbg !4721
  store i64 -19, i64* %retval, align 8, !dbg !4722
  br label %return, !dbg !4722

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %buffer.addr, align 8, !dbg !4723
  %8 = load i64, i64* %count.addr, align 8, !dbg !4724
  %9 = load i64*, i64** %ppos.addr, align 8, !dbg !4725
  %10 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4726
  %bulk_in_buffer = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %10, i32 0, i32 2, !dbg !4727
  %11 = load i8*, i8** %bulk_in_buffer, align 8, !dbg !4727
  %call = call i64 @simple_read_from_buffer(i8* %7, i64 %8, i64* %9, i8* %11, i64 65040) #9, !dbg !4728
  %conv = trunc i64 %call to i32, !dbg !4728
  store i32 %conv, i32* %result, align 4, !dbg !4729
  %12 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4730
  %lock2 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %12, i32 0, i32 8, !dbg !4731
  call void @mutex_unlock(%struct.mutex* %lock2) #9, !dbg !4732
  %13 = load i32, i32* %result, align 4, !dbg !4733
  %conv3 = sext i32 %13 to i64, !dbg !4733
  store i64 %conv3, i64* %retval, align 8, !dbg !4734
  br label %return, !dbg !4734

return:                                           ; preds = %if.end, %if.then
  %14 = load i64, i64* %retval, align 8, !dbg !4735
  ret i64 %14, !dbg !4735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @idmouse_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !4736 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.usb_idmouse*, align 8
  %interface = alloca %struct.usb_interface*, align 8
  %result = alloca i32, align 4
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.declare(metadata %struct.usb_idmouse** %dev, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface, metadata !4743, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4745, metadata !DIExpression()), !dbg !4746
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4747
  %call = call i32 @iminor(%struct.inode* %0) #9, !dbg !4748
  %call1 = call %struct.usb_interface* @usb_find_interface(%struct.usb_driver* @idmouse_driver, i32 %call) #9, !dbg !4749
  store %struct.usb_interface* %call1, %struct.usb_interface** %interface, align 8, !dbg !4750
  %1 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !4751
  %tobool = icmp ne %struct.usb_interface* %1, null, !dbg !4751
  br i1 %tobool, label %if.end, label %if.then, !dbg !4753

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4754
  br label %return, !dbg !4754

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !4755
  %call2 = call i8* @usb_get_intfdata(%struct.usb_interface* %2) #9, !dbg !4756
  %3 = bitcast i8* %call2 to %struct.usb_idmouse*, !dbg !4756
  store %struct.usb_idmouse* %3, %struct.usb_idmouse** %dev, align 8, !dbg !4757
  %4 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4758
  %tobool3 = icmp ne %struct.usb_idmouse* %4, null, !dbg !4758
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4760

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4761
  br label %return, !dbg !4761

if.end5:                                          ; preds = %if.end
  %5 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4762
  %lock = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %5, i32 0, i32 8, !dbg !4763
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !4764
  %6 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4765
  %open = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %6, i32 0, i32 6, !dbg !4767
  %7 = load i32, i32* %open, align 4, !dbg !4767
  %tobool6 = icmp ne i32 %7, 0, !dbg !4765
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !4768

if.then7:                                         ; preds = %if.end5
  store i32 -16, i32* %result, align 4, !dbg !4769
  br label %if.end17, !dbg !4771

if.else:                                          ; preds = %if.end5
  %8 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !4772
  %call8 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %8) #9, !dbg !4774
  store i32 %call8, i32* %result, align 4, !dbg !4775
  %9 = load i32, i32* %result, align 4, !dbg !4776
  %tobool9 = icmp ne i32 %9, 0, !dbg !4776
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4778

if.then10:                                        ; preds = %if.else
  br label %error, !dbg !4779

if.end11:                                         ; preds = %if.else
  %10 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4780
  %call12 = call i32 @idmouse_create_image(%struct.usb_idmouse* %10) #9, !dbg !4781
  store i32 %call12, i32* %result, align 4, !dbg !4782
  %11 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !4783
  call void @usb_autopm_put_interface(%struct.usb_interface* %11) #9, !dbg !4784
  %12 = load i32, i32* %result, align 4, !dbg !4785
  %tobool13 = icmp ne i32 %12, 0, !dbg !4785
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4787

if.then14:                                        ; preds = %if.end11
  br label %error, !dbg !4788

if.end15:                                         ; preds = %if.end11
  %13 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4789
  %open16 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %13, i32 0, i32 6, !dbg !4790
  %14 = load i32, i32* %open16, align 4, !dbg !4791
  %inc = add i32 %14, 1, !dbg !4791
  store i32 %inc, i32* %open16, align 4, !dbg !4791
  %15 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4792
  %16 = bitcast %struct.usb_idmouse* %15 to i8*, !dbg !4792
  %17 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4793
  %private_data = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 15, !dbg !4794
  store i8* %16, i8** %private_data, align 8, !dbg !4795
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then7
  br label %error, !dbg !4767

error:                                            ; preds = %if.end17, %if.then14, %if.then10
  call void @llvm.dbg.label(metadata !4796), !dbg !4797
  %18 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4798
  %lock18 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %18, i32 0, i32 8, !dbg !4799
  call void @mutex_unlock(%struct.mutex* %lock18) #9, !dbg !4800
  %19 = load i32, i32* %result, align 4, !dbg !4801
  store i32 %19, i32* %retval, align 4, !dbg !4802
  br label %return, !dbg !4802

return:                                           ; preds = %error, %if.then4, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4803
  ret i32 %20, !dbg !4803
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @idmouse_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !4804 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.usb_idmouse*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.declare(metadata %struct.usb_idmouse** %dev, metadata !4809, metadata !DIExpression()), !dbg !4810
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4811
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4812
  %1 = load i8*, i8** %private_data, align 8, !dbg !4812
  %2 = bitcast i8* %1 to %struct.usb_idmouse*, !dbg !4811
  store %struct.usb_idmouse* %2, %struct.usb_idmouse** %dev, align 8, !dbg !4813
  %3 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4814
  %cmp = icmp eq %struct.usb_idmouse* %3, null, !dbg !4816
  br i1 %cmp, label %if.then, label %if.end, !dbg !4817

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4818
  br label %return, !dbg !4818

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4819
  %lock = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %4, i32 0, i32 8, !dbg !4820
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !4821
  %5 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4822
  %open = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %5, i32 0, i32 6, !dbg !4823
  %6 = load i32, i32* %open, align 4, !dbg !4824
  %dec = add i32 %6, -1, !dbg !4824
  store i32 %dec, i32* %open, align 4, !dbg !4824
  %7 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4825
  %present = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %7, i32 0, i32 7, !dbg !4827
  %8 = load i32, i32* %present, align 8, !dbg !4827
  %tobool = icmp ne i32 %8, 0, !dbg !4825
  br i1 %tobool, label %if.else, label %if.then1, !dbg !4828

if.then1:                                         ; preds = %if.end
  %9 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4829
  %lock2 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %9, i32 0, i32 8, !dbg !4831
  call void @mutex_unlock(%struct.mutex* %lock2) #9, !dbg !4832
  %10 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4833
  call void @idmouse_delete(%struct.usb_idmouse* %10) #9, !dbg !4834
  br label %if.end4, !dbg !4835

if.else:                                          ; preds = %if.end
  %11 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev, align 8, !dbg !4836
  %lock3 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %11, i32 0, i32 8, !dbg !4838
  call void @mutex_unlock(%struct.mutex* %lock3) #9, !dbg !4839
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  store i32 0, i32* %retval, align 4, !dbg !4840
  br label %return, !dbg !4840

return:                                           ; preds = %if.end4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4841
  ret i32 %12, !dbg !4841
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i64 @simple_read_from_buffer(i8*, i64, i64*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @usb_find_interface(%struct.usb_driver*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iminor(%struct.inode* %inode) #2 !dbg !4842 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4847
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !4847
  %1 = load i32, i32* %i_rdev, align 4, !dbg !4847
  %and = and i32 %1, 1048575, !dbg !4847
  ret i32 %and, !dbg !4848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !4849 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4852, metadata !DIExpression()), !dbg !4853
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4854
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4855
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !4856
  ret i8* %call, !dbg !4857
}

; Function Attrs: noredzone
declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @idmouse_create_image(%struct.usb_idmouse* %dev) #2 !dbg !4858 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4861, metadata !DIExpression()), !dbg !4867
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4871, metadata !DIExpression()), !dbg !4873
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4874, metadata !DIExpression()), !dbg !4876
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.usb_idmouse*, align 8
  %bytes_read = alloca i32, align 4
  %bulk_read = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.usb_idmouse* %dev, %struct.usb_idmouse** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_idmouse** %dev.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.declare(metadata i32* %bytes_read, metadata !4879, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.declare(metadata i32* %bulk_read, metadata !4881, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4883, metadata !DIExpression()), !dbg !4884
  %0 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4885
  %bulk_in_buffer = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %0, i32 0, i32 2, !dbg !4886
  %1 = load i8*, i8** %bulk_in_buffer, align 8, !dbg !4886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 15, i1 false), !dbg !4887
  store i32 15, i32* %bytes_read, align 4, !dbg !4888
  %2 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4889
  %udev = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %2, i32 0, i32 0, !dbg !4889
  %3 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4889
  %4 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4889
  %udev1 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %4, i32 0, i32 0, !dbg !4889
  %5 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !4889
  %call = call i32 @__create_pipe(%struct.usb_device* %5, i32 0) #9, !dbg !4889
  %or = or i32 -2147483648, %call, !dbg !4889
  %call2 = call i32 @usb_control_msg(%struct.usb_device* %3, i32 %or, i8 zeroext 34, i8 zeroext 66, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !4889
  store i32 %call2, i32* %result, align 4, !dbg !4890
  %6 = load i32, i32* %result, align 4, !dbg !4891
  %cmp = icmp slt i32 %6, 0, !dbg !4893
  br i1 %cmp, label %if.then, label %if.end, !dbg !4894

if.then:                                          ; preds = %entry
  br label %reset, !dbg !4895

if.end:                                           ; preds = %entry
  %7 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4896
  %udev3 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %7, i32 0, i32 0, !dbg !4896
  %8 = load %struct.usb_device*, %struct.usb_device** %udev3, align 8, !dbg !4896
  %9 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4896
  %udev4 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %9, i32 0, i32 0, !dbg !4896
  %10 = load %struct.usb_device*, %struct.usb_device** %udev4, align 8, !dbg !4896
  %call5 = call i32 @__create_pipe(%struct.usb_device* %10, i32 0) #9, !dbg !4896
  %or6 = or i32 -2147483648, %call5, !dbg !4896
  %call7 = call i32 @usb_control_msg(%struct.usb_device* %8, i32 %or6, i8 zeroext 35, i8 zeroext 66, i16 zeroext 1, i16 zeroext 0, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !4896
  store i32 %call7, i32* %result, align 4, !dbg !4897
  %11 = load i32, i32* %result, align 4, !dbg !4898
  %cmp8 = icmp slt i32 %11, 0, !dbg !4900
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4901

if.then9:                                         ; preds = %if.end
  br label %reset, !dbg !4902

if.end10:                                         ; preds = %if.end
  %12 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4903
  %udev11 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %12, i32 0, i32 0, !dbg !4903
  %13 = load %struct.usb_device*, %struct.usb_device** %udev11, align 8, !dbg !4903
  %14 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4903
  %udev12 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %14, i32 0, i32 0, !dbg !4903
  %15 = load %struct.usb_device*, %struct.usb_device** %udev12, align 8, !dbg !4903
  %call13 = call i32 @__create_pipe(%struct.usb_device* %15, i32 0) #9, !dbg !4903
  %or14 = or i32 -2147483648, %call13, !dbg !4903
  %call15 = call i32 @usb_control_msg(%struct.usb_device* %13, i32 %or14, i8 zeroext 33, i8 zeroext 66, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !4903
  store i32 %call15, i32* %result, align 4, !dbg !4904
  %16 = load i32, i32* %result, align 4, !dbg !4905
  %cmp16 = icmp slt i32 %16, 0, !dbg !4907
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !4908

if.then17:                                        ; preds = %if.end10
  br label %reset, !dbg !4909

if.end18:                                         ; preds = %if.end10
  %17 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4910
  %udev19 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %17, i32 0, i32 0, !dbg !4910
  %18 = load %struct.usb_device*, %struct.usb_device** %udev19, align 8, !dbg !4910
  %19 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4910
  %udev20 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %19, i32 0, i32 0, !dbg !4910
  %20 = load %struct.usb_device*, %struct.usb_device** %udev20, align 8, !dbg !4910
  %call21 = call i32 @__create_pipe(%struct.usb_device* %20, i32 0) #9, !dbg !4910
  %or22 = or i32 -2147483648, %call21, !dbg !4910
  %call23 = call i32 @usb_control_msg(%struct.usb_device* %18, i32 %or22, i8 zeroext 33, i8 zeroext 66, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !4910
  store i32 %call23, i32* %result, align 4, !dbg !4911
  %21 = load i32, i32* %result, align 4, !dbg !4912
  %cmp24 = icmp slt i32 %21, 0, !dbg !4914
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4915

if.then25:                                        ; preds = %if.end18
  br label %reset, !dbg !4916

if.end26:                                         ; preds = %if.end18
  %22 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4917
  %udev27 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %22, i32 0, i32 0, !dbg !4917
  %23 = load %struct.usb_device*, %struct.usb_device** %udev27, align 8, !dbg !4917
  %24 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4917
  %udev28 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %24, i32 0, i32 0, !dbg !4917
  %25 = load %struct.usb_device*, %struct.usb_device** %udev28, align 8, !dbg !4917
  %call29 = call i32 @__create_pipe(%struct.usb_device* %25, i32 0) #9, !dbg !4917
  %or30 = or i32 -2147483648, %call29, !dbg !4917
  %call31 = call i32 @usb_control_msg(%struct.usb_device* %23, i32 %or30, i8 zeroext 32, i8 zeroext 66, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !4917
  store i32 %call31, i32* %result, align 4, !dbg !4918
  %26 = load i32, i32* %result, align 4, !dbg !4919
  %cmp32 = icmp slt i32 %26, 0, !dbg !4921
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !4922

if.then33:                                        ; preds = %if.end26
  br label %reset, !dbg !4923

if.end34:                                         ; preds = %if.end26
  %27 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4924
  %udev35 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %27, i32 0, i32 0, !dbg !4924
  %28 = load %struct.usb_device*, %struct.usb_device** %udev35, align 8, !dbg !4924
  %29 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4924
  %udev36 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %29, i32 0, i32 0, !dbg !4924
  %30 = load %struct.usb_device*, %struct.usb_device** %udev36, align 8, !dbg !4924
  %call37 = call i32 @__create_pipe(%struct.usb_device* %30, i32 0) #9, !dbg !4924
  %or38 = or i32 -2147483648, %call37, !dbg !4924
  %call39 = call i32 @usb_control_msg(%struct.usb_device* %28, i32 %or38, i8 zeroext 32, i8 zeroext 66, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !4924
  store i32 %call39, i32* %result, align 4, !dbg !4925
  %31 = load i32, i32* %result, align 4, !dbg !4926
  %cmp40 = icmp slt i32 %31, 0, !dbg !4928
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !4929

if.then41:                                        ; preds = %if.end34
  br label %reset, !dbg !4930

if.end42:                                         ; preds = %if.end34
  br label %while.cond, !dbg !4931

while.cond:                                       ; preds = %if.end68, %if.end42
  %32 = load i32, i32* %bytes_read, align 4, !dbg !4932
  %conv = sext i32 %32 to i64, !dbg !4932
  %cmp43 = icmp ult i64 %conv, 65040, !dbg !4933
  br i1 %cmp43, label %while.body, label %while.end, !dbg !4931

while.body:                                       ; preds = %while.cond
  %33 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4934
  %udev45 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %33, i32 0, i32 0, !dbg !4935
  %34 = load %struct.usb_device*, %struct.usb_device** %udev45, align 8, !dbg !4935
  %35 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4936
  %udev46 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %35, i32 0, i32 0, !dbg !4936
  %36 = load %struct.usb_device*, %struct.usb_device** %udev46, align 8, !dbg !4936
  %37 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4936
  %bulk_in_endpointAddr = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %37, i32 0, i32 5, !dbg !4936
  %38 = load i8, i8* %bulk_in_endpointAddr, align 8, !dbg !4936
  %conv47 = zext i8 %38 to i32, !dbg !4936
  %call48 = call i32 @__create_pipe(%struct.usb_device* %36, i32 %conv47) #9, !dbg !4936
  %or49 = or i32 -1073741824, %call48, !dbg !4936
  %or50 = or i32 %or49, 128, !dbg !4936
  %39 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4937
  %bulk_in_buffer51 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %39, i32 0, i32 2, !dbg !4938
  %40 = load i8*, i8** %bulk_in_buffer51, align 8, !dbg !4938
  %41 = load i32, i32* %bytes_read, align 4, !dbg !4939
  %idx.ext = sext i32 %41 to i64, !dbg !4940
  %add.ptr = getelementptr i8, i8* %40, i64 %idx.ext, !dbg !4940
  %42 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4941
  %bulk_in_size = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %42, i32 0, i32 3, !dbg !4942
  %43 = load i64, i64* %bulk_in_size, align 8, !dbg !4942
  %conv52 = trunc i64 %43 to i32, !dbg !4941
  %call53 = call i32 @usb_bulk_msg(%struct.usb_device* %34, i32 %or50, i8* %add.ptr, i32 %conv52, i32* %bulk_read, i32 5000) #9, !dbg !4943
  store i32 %call53, i32* %result, align 4, !dbg !4944
  %44 = load i32, i32* %result, align 4, !dbg !4945
  %cmp54 = icmp slt i32 %44, 0, !dbg !4947
  br i1 %cmp54, label %if.then56, label %if.end64, !dbg !4948

if.then56:                                        ; preds = %while.body
  %45 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4949
  %bulk_in_size57 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %45, i32 0, i32 3, !dbg !4952
  %46 = load i64, i64* %bulk_in_size57, align 8, !dbg !4952
  %47 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4953
  %orig_bi_size = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %47, i32 0, i32 4, !dbg !4954
  %48 = load i64, i64* %orig_bi_size, align 8, !dbg !4954
  %cmp58 = icmp ne i64 %46, %48, !dbg !4955
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !4956

if.then60:                                        ; preds = %if.then56
  %49 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4957
  %orig_bi_size61 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %49, i32 0, i32 4, !dbg !4959
  %50 = load i64, i64* %orig_bi_size61, align 8, !dbg !4959
  %51 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4960
  %bulk_in_size62 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %51, i32 0, i32 3, !dbg !4961
  store i64 %50, i64* %bulk_in_size62, align 8, !dbg !4962
  store i32 -11, i32* %result, align 4, !dbg !4963
  br label %if.end63, !dbg !4964

if.end63:                                         ; preds = %if.then60, %if.then56
  br label %while.end, !dbg !4965

if.end64:                                         ; preds = %while.body
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4873
  %52 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4873
  %53 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #15, !dbg !4876, !srcloc !4966
  store i64 %53, i64* %pfo_val__.i, align 8, !dbg !4876
  %54 = load i64, i64* %pfo_val__.i, align 8, !dbg !4876
  %55 = inttoptr i64 %54 to %struct.task_struct*, !dbg !4876
  store %struct.task_struct* %55, %struct.task_struct** %tmp.i, align 8, !dbg !4876
  %56 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4876
  store %struct.task_struct* %56, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4867
  %57 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4867
  store %struct.task_struct* %57, %struct.task_struct** %tmp1.i, align 8, !dbg !4867
  %58 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4867
  %call66 = call i32 @signal_pending(%struct.task_struct* %58) #9, !dbg !4967
  %tobool = icmp ne i32 %call66, 0, !dbg !4967
  br i1 %tobool, label %if.then67, label %if.end68, !dbg !4968

if.then67:                                        ; preds = %if.end64
  store i32 -4, i32* %result, align 4, !dbg !4969
  br label %while.end, !dbg !4971

if.end68:                                         ; preds = %if.end64
  %59 = load i32, i32* %bulk_read, align 4, !dbg !4972
  %60 = load i32, i32* %bytes_read, align 4, !dbg !4973
  %add = add i32 %60, %59, !dbg !4973
  store i32 %add, i32* %bytes_read, align 4, !dbg !4973
  br label %while.cond, !dbg !4931, !llvm.loop !4974

while.end:                                        ; preds = %if.then67, %if.end63, %while.cond
  br label %reset, !dbg !4931

reset:                                            ; preds = %while.end, %if.then41, %if.then33, %if.then25, %if.then17, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !4976), !dbg !4977
  %61 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4978
  %udev69 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %61, i32 0, i32 0, !dbg !4978
  %62 = load %struct.usb_device*, %struct.usb_device** %udev69, align 8, !dbg !4978
  %63 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4978
  %udev70 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %63, i32 0, i32 0, !dbg !4978
  %64 = load %struct.usb_device*, %struct.usb_device** %udev70, align 8, !dbg !4978
  %call71 = call i32 @__create_pipe(%struct.usb_device* %64, i32 0) #9, !dbg !4978
  %or72 = or i32 -2147483648, %call71, !dbg !4978
  %call73 = call i32 @usb_control_msg(%struct.usb_device* %62, i32 %or72, i8 zeroext 34, i8 zeroext 66, i16 zeroext 0, i16 zeroext 0, i8* null, i16 zeroext 0, i32 1000) #9, !dbg !4978
  store i32 239, i32* %bytes_read, align 4, !dbg !4979
  br label %for.cond, !dbg !4981

for.cond:                                         ; preds = %for.inc, %reset
  %65 = load i32, i32* %bytes_read, align 4, !dbg !4982
  %conv74 = sext i32 %65 to i64, !dbg !4982
  %cmp75 = icmp ult i64 %conv74, 65040, !dbg !4984
  br i1 %cmp75, label %for.body, label %for.end, !dbg !4985

for.body:                                         ; preds = %for.cond
  %66 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !4986
  %bulk_in_buffer77 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %66, i32 0, i32 2, !dbg !4988
  %67 = load i8*, i8** %bulk_in_buffer77, align 8, !dbg !4988
  %68 = load i32, i32* %bytes_read, align 4, !dbg !4989
  %idxprom = sext i32 %68 to i64, !dbg !4986
  %arrayidx = getelementptr i8, i8* %67, i64 %idxprom, !dbg !4986
  %69 = load i8, i8* %arrayidx, align 1, !dbg !4986
  %conv78 = zext i8 %69 to i32, !dbg !4986
  %cmp79 = icmp ne i32 %conv78, 0, !dbg !4990
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !4991

if.then81:                                        ; preds = %for.body
  store i32 -11, i32* %retval, align 4, !dbg !4992
  br label %return, !dbg !4992

if.end82:                                         ; preds = %for.body
  br label %for.inc, !dbg !4993

for.inc:                                          ; preds = %if.end82
  %70 = load i32, i32* %bytes_read, align 4, !dbg !4994
  %add83 = add i32 %70, 225, !dbg !4994
  store i32 %add83, i32* %bytes_read, align 4, !dbg !4994
  br label %for.cond, !dbg !4995, !llvm.loop !4996

for.end:                                          ; preds = %for.cond
  store i32 64815, i32* %bytes_read, align 4, !dbg !4998
  br label %for.cond84, !dbg !5000

for.cond84:                                       ; preds = %for.inc97, %for.end
  %71 = load i32, i32* %bytes_read, align 4, !dbg !5001
  %conv85 = sext i32 %71 to i64, !dbg !5001
  %cmp86 = icmp ult i64 %conv85, 65039, !dbg !5003
  br i1 %cmp86, label %for.body88, label %for.end98, !dbg !5004

for.body88:                                       ; preds = %for.cond84
  %72 = load %struct.usb_idmouse*, %struct.usb_idmouse** %dev.addr, align 8, !dbg !5005
  %bulk_in_buffer89 = getelementptr inbounds %struct.usb_idmouse, %struct.usb_idmouse* %72, i32 0, i32 2, !dbg !5007
  %73 = load i8*, i8** %bulk_in_buffer89, align 8, !dbg !5007
  %74 = load i32, i32* %bytes_read, align 4, !dbg !5008
  %idxprom90 = sext i32 %74 to i64, !dbg !5005
  %arrayidx91 = getelementptr i8, i8* %73, i64 %idxprom90, !dbg !5005
  %75 = load i8, i8* %arrayidx91, align 1, !dbg !5005
  %conv92 = zext i8 %75 to i32, !dbg !5005
  %cmp93 = icmp ne i32 %conv92, 255, !dbg !5009
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !5010

if.then95:                                        ; preds = %for.body88
  store i32 -11, i32* %retval, align 4, !dbg !5011
  br label %return, !dbg !5011

if.end96:                                         ; preds = %for.body88
  br label %for.inc97, !dbg !5012

for.inc97:                                        ; preds = %if.end96
  %76 = load i32, i32* %bytes_read, align 4, !dbg !5013
  %inc = add i32 %76, 1, !dbg !5013
  store i32 %inc, i32* %bytes_read, align 4, !dbg !5013
  br label %for.cond84, !dbg !5014, !llvm.loop !5015

for.end98:                                        ; preds = %for.cond84
  %77 = load i32, i32* %result, align 4, !dbg !5017
  store i32 %77, i32* %retval, align 4, !dbg !5018
  br label %return, !dbg !5018

return:                                           ; preds = %for.end98, %if.then95, %if.then81
  %78 = load i32, i32* %retval, align 4, !dbg !5019
  ret i32 %78, !dbg !5019
}

; Function Attrs: noredzone
declare dso_local void @usb_autopm_put_interface(%struct.usb_interface*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5020 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5025, metadata !DIExpression()), !dbg !5026
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5027
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5028
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5028
  ret i8* %1, !dbg !5029
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5030 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5037
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5038
  %1 = load i32, i32* %devnum, align 8, !dbg !5038
  %shl = shl i32 %1, 8, !dbg !5039
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5040
  %shl1 = shl i32 %2, 15, !dbg !5041
  %or = or i32 %shl, %shl1, !dbg !5042
  ret i32 %or, !dbg !5043
}

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #2 !dbg !5044 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5049
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #9, !dbg !5049
  %tobool = icmp ne i32 %call, 0, !dbg !5049
  %lnot = xor i1 %tobool, true, !dbg !5049
  %lnot1 = xor i1 %lnot, true, !dbg !5049
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5049
  %conv = sext i32 %lnot.ext to i64, !dbg !5049
  %conv2 = trunc i64 %conv to i32, !dbg !5049
  ret i32 %conv2, !dbg !5050
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #2 !dbg !5051 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !5058
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #9, !dbg !5059
  %1 = load i32, i32* %flag.addr, align 4, !dbg !5060
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #9, !dbg !5061
  ret i32 %call1, !dbg !5062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #2 !dbg !5063 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5072
  %conv = sext i32 %0 to i64, !dbg !5072
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !5073
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !5074
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #9, !dbg !5075
  %conv1 = zext i1 %call to i32, !dbg !5075
  ret i32 %conv1, !dbg !5076
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #2 !dbg !5077 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !5082
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !5083
  ret %struct.thread_info* %thread_info, !dbg !5084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !5085 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5092, metadata !DIExpression()), !dbg !5094
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5096, metadata !DIExpression()), !dbg !5097
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5098, metadata !DIExpression()), !dbg !5099
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5100, metadata !DIExpression()), !dbg !5102
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5104, metadata !DIExpression()), !dbg !5105
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5106, metadata !DIExpression()), !dbg !5114
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5116, metadata !DIExpression()), !dbg !5117
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5122
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5123
  %div = sdiv i64 %1, 64, !dbg !5123
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5124
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5122
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5125
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5126
  %conv.i = trunc i64 %4 to i32, !dbg !5126
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #13, !dbg !5127
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5128
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5128
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #13, !dbg !5128
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5129
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5129
  br i1 %8, label %cond.true, label %cond.false, !dbg !5129

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5129
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5129
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5130
  %and.i = and i64 %11, 63, !dbg !5131
  %shl.i = shl i64 1, %and.i, !dbg !5132
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5133
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5134
  %shr.i = ashr i64 %13, 6, !dbg !5135
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5133
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5133
  %and1.i = and i64 %shl.i, %14, !dbg !5136
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5137
  %conv = zext i1 %cmp.i to i32, !dbg !5129
  br label %cond.end, !dbg !5129

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5129
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5129
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5138
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5139
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #11, !dbg !5140, !srcloc !5141
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5140
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5142
  %tobool.i = trunc i8 %20 to i1, !dbg !5142
  %conv2 = zext i1 %tobool.i to i32, !dbg !5129
  br label %cond.end, !dbg !5129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5129
  %tobool = icmp ne i32 %cond, 0, !dbg !5129
  ret i1 %tobool, !dbg !5143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !5144 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  ret i1 true, !dbg !5152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5153 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5157, metadata !DIExpression()), !dbg !5158
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5159, metadata !DIExpression()), !dbg !5160
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5161, metadata !DIExpression()), !dbg !5162
  ret void, !dbg !5163
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

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
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3913, !3914, !3915, !3916}
!llvm.ident = !{!3917}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idmouse_driver_init211", scope: !2, file: !3, line: 402, type: !131, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !3812, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/misc/idmouse.c", directory: "/home/lizy2001/genbc/linux")
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
!125 = !{!126, !129, !131, !132, !812, !3562, !7, !3810, !3811, !1089, !280}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !128, line: 76, flags: DIFlagFwdDecl)
!128 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !130, line: 148, baseType: !7)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !134)
!134 = !{!135, !137, !142, !147, !148, !149, !150, !151, !154, !155, !159, !160, !3551, !3592, !3593, !3610, !3671, !3753, !3754, !3756, !3757, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3792, !3793, !3794, !3799, !3806, !3807, !3808, !3809}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !133, file: !6, line: 632, baseType: !136, size: 32)
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !133, file: !6, line: 633, baseType: !138, size: 128, offset: 32)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !140)
!139 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !133, file: !6, line: 634, baseType: !143, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !144, line: 21, baseType: !145)
!144 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !146, line: 27, baseType: !7)
!146 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !133, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !133, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !133, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !133, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !133, file: !6, line: 640, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !133, file: !6, line: 641, baseType: !136, size: 32, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !133, file: !6, line: 643, baseType: !156, size: 64, offset: 416)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 2)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !6, line: 645, baseType: !132, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !133, file: !6, line: 646, baseType: !161, size: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !163)
!163 = !{!164, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3545, !3546, !3547, !3548, !3549, !3550}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !162, file: !6, line: 425, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !167)
!167 = !{!168, !3169, !3170, !3173, !3174, !3225, !3316, !3317, !3318, !3319, !3320, !3329, !3434, !3447, !3450, !3451, !3455, !3457, !3458, !3459, !3463, !3469, !3470, !3473, !3477, !3480, !3481, !3482, !3483, !3484, !3516, !3517, !3518, !3521, !3524, !3525, !3526, !3527}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !166, file: !67, line: 462, baseType: !169, size: 512)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !170, line: 64, size: 512, elements: !171)
!170 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !175, !181, !183, !243, !3020, !3159, !3164, !3165, !3166, !3167, !3168}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !170, line: 65, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !169, file: !170, line: 66, baseType: !176, size: 128, offset: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !130, line: 178, size: 128, elements: !177)
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !130, line: 179, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !176, file: !130, line: 179, baseType: !179, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !169, file: !170, line: 67, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !169, file: !170, line: 68, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !170, line: 192, size: 704, elements: !186)
!186 = !{!187, !188, !204, !205}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !170, line: 193, baseType: !176, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !185, file: !170, line: 194, baseType: !189, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !190, line: 83, baseType: !191)
!190 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !190, line: 71, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 72, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 72, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !194, file: !190, line: 73, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !190, line: 20, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !197, file: !190, line: 21, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !201, line: 25, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 25, elements: !203)
!203 = !{}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !185, file: !170, line: 195, baseType: !169, size: 512, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !185, file: !170, line: 196, baseType: !206, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !170, line: 156, size: 192, elements: !209)
!209 = !{!210, !215, !220}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !208, file: !170, line: 157, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!136, !184, !182}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !170, line: 158, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!173, !184, !182}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !208, file: !170, line: 159, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!136, !184, !182, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !170, line: 148, size: 20736, elements: !227)
!227 = !{!228, !233, !237, !238, !242}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !226, file: !170, line: 149, baseType: !229, size: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 192, elements: !231)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!231 = !{!232}
!232 = !DISubrange(count: 3)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !226, file: !170, line: 150, baseType: !234, size: 4096, offset: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 4096, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !226, file: !170, line: 151, baseType: !136, size: 32, offset: 4288)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !226, file: !170, line: 152, baseType: !239, size: 16384, offset: 4320)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16384, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 2048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !226, file: !170, line: 153, baseType: !136, size: 32, offset: 20704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !169, file: !170, line: 69, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !170, line: 138, size: 448, elements: !246)
!246 = !{!247, !251, !281, !283, !2980, !3010, !3014}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !170, line: 139, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !182}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !245, file: !170, line: 140, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !255, line: 230, size: 128, elements: !256)
!255 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!256 = !{!257, !273}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !254, file: !255, line: 231, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !182, !266, !230}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !130, line: 60, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !263, line: 73, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !263, line: 15, baseType: !265)
!265 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !255, line: 30, size: 128, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !255, line: 31, baseType: !173, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !267, file: !255, line: 32, baseType: !271, size: 16, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !130, line: 19, baseType: !272)
!272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !254, file: !255, line: 232, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!261, !182, !266, !173, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 55, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !263, line: 72, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !263, line: 16, baseType: !280)
!280 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !245, file: !170, line: 141, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !245, file: !170, line: 142, baseType: !284, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !255, line: 84, size: 320, elements: !288)
!288 = !{!289, !290, !294, !2977, !2978}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !255, line: 85, baseType: !173, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !287, file: !255, line: 86, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!271, !182, !266, !136}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !287, file: !255, line: 88, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!271, !182, !298, !136}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !255, line: 168, size: 448, elements: !300)
!300 = !{!301, !302, !303, !304, !2972, !2973}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !299, file: !255, line: 169, baseType: !267, size: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !299, file: !255, line: 170, baseType: !277, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !299, file: !255, line: 171, baseType: !131, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !299, file: !255, line: 172, baseType: !305, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!261, !308, !182, !298, !230, !483, !277}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !310)
!310 = !{!311, !329, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2955, !2956, !2965, !2966, !2967, !2968, !2969, !2970, !2971}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !309, file: !38, line: 920, baseType: !312, size: 128)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !38, line: 917, size: 128, elements: !313)
!313 = !{!314, !320}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !312, file: !38, line: 918, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !316, line: 58, size: 64, elements: !317)
!316 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !316, line: 59, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !312, file: !38, line: 919, baseType: !321, size: 128, align: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !130, line: 216, size: 128, align: 64, elements: !322)
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !130, line: 217, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !321, file: !130, line: 218, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !324}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !309, file: !38, line: 921, baseType: !330, size: 128, offset: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !331, line: 8, size: 128, elements: !332)
!331 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333, !337}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !330, file: !331, line: 9, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !336, line: 18, flags: DIFlagFwdDecl)
!336 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !330, file: !331, line: 10, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !336, line: 89, size: 1536, elements: !340)
!340 = !{!341, !342, !352, !360, !361, !380, !2905, !2907, !2919, !2920, !2921, !2922, !2923, !2929, !2930, !2931}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !339, file: !336, line: 91, baseType: !7, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !339, file: !336, line: 92, baseType: !343, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !344, line: 277, baseType: !345)
!344 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !344, line: 277, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !345, file: !344, line: 277, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !344, line: 70, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !344, line: 65, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !349, file: !344, line: 66, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !339, file: !336, line: 93, baseType: !353, size: 128, offset: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !354, line: 38, size: 128, elements: !355)
!354 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !354, line: 39, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !353, file: !354, line: 39, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !339, file: !336, line: 94, baseType: !338, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !339, file: !336, line: 95, baseType: !362, size: 128, offset: 256)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !336, line: 47, size: 128, elements: !363)
!363 = !{!364, !376}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !336, line: 48, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !336, line: 48, size: 64, elements: !366)
!366 = !{!367, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !336, line: 49, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !336, line: 49, size: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !368, file: !336, line: 50, baseType: !143, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !368, file: !336, line: 50, baseType: !143, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !365, file: !336, line: 52, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !144, line: 23, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !146, line: 31, baseType: !375)
!375 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !336, line: 54, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !339, file: !336, line: 96, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !383)
!383 = !{!384, !385, !386, !394, !401, !402, !550, !2616, !2617, !2618, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2881, !2889, !2890, !2891, !2901, !2902, !2903, !2904}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !382, file: !38, line: 611, baseType: !271, size: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !382, file: !38, line: 612, baseType: !272, size: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !382, file: !38, line: 613, baseType: !387, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !388, line: 23, baseType: !389)
!388 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 21, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !388, line: 22, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !130, line: 32, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !263, line: 49, baseType: !7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !382, file: !38, line: 614, baseType: !395, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !388, line: 28, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 26, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !396, file: !388, line: 27, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !130, line: 33, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !263, line: 50, baseType: !7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !382, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !382, file: !38, line: 622, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !406)
!406 = !{!407, !411, !424, !428, !434, !438, !444, !448, !452, !456, !460, !461, !467, !471, !497, !526, !530, !536, !541, !545, !546}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !405, file: !38, line: 1865, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!338, !381, !338, !7}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !405, file: !38, line: 1866, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!173, !338, !381, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !417, line: 10, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !416, file: !417, line: 11, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !131}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !416, file: !417, line: 12, baseType: !131, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !405, file: !38, line: 1867, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!136, !381, !136}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !405, file: !38, line: 1868, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !381, !136}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !405, file: !38, line: 1870, baseType: !435, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!136, !338, !230, !136}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !405, file: !38, line: 1872, baseType: !439, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!136, !381, !338, !271, !442}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 30, baseType: !443)
!443 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !405, file: !38, line: 1873, baseType: !445, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!136, !338, !381, !338}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !405, file: !38, line: 1874, baseType: !449, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!136, !381, !338}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !405, file: !38, line: 1875, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!136, !381, !338, !173}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !405, file: !38, line: 1876, baseType: !457, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!136, !381, !338, !271}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !405, file: !38, line: 1877, baseType: !449, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !405, file: !38, line: 1878, baseType: !462, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!136, !381, !338, !271, !465}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !130, line: 16, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !130, line: 13, baseType: !143)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !405, file: !38, line: 1879, baseType: !468, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!136, !381, !338, !381, !338, !7}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !405, file: !38, line: 1881, baseType: !472, size: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!136, !338, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !486, !494, !495, !496}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !476, file: !38, line: 220, baseType: !7, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !476, file: !38, line: 221, baseType: !271, size: 16, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !476, file: !38, line: 222, baseType: !387, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !476, file: !38, line: 223, baseType: !395, size: 32, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !476, file: !38, line: 224, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !130, line: 46, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !263, line: 88, baseType: !485)
!485 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !476, file: !38, line: 225, baseType: !487, size: 128, offset: 192)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !488, line: 13, size: 128, elements: !489)
!488 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!489 = !{!490, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !487, file: !488, line: 14, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !488, line: 8, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !146, line: 30, baseType: !485)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !487, file: !488, line: 15, baseType: !265, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !476, file: !38, line: 226, baseType: !487, size: 128, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !476, file: !38, line: 227, baseType: !487, size: 128, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !476, file: !38, line: 234, baseType: !308, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !405, file: !38, line: 1882, baseType: !498, size: 64, offset: 896)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!136, !501, !503, !143, !7}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !505, line: 22, size: 1152, elements: !506)
!505 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!506 = !{!507, !508, !509, !510, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !504, file: !505, line: 23, baseType: !143, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !504, file: !505, line: 24, baseType: !271, size: 16, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !504, file: !505, line: 25, baseType: !7, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !504, file: !505, line: 26, baseType: !511, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 104, baseType: !143)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !504, file: !505, line: 27, baseType: !373, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !504, file: !505, line: 28, baseType: !373, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !504, file: !505, line: 37, baseType: !373, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !504, file: !505, line: 38, baseType: !465, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !504, file: !505, line: 39, baseType: !465, size: 32, offset: 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !504, file: !505, line: 40, baseType: !387, size: 32, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !504, file: !505, line: 41, baseType: !395, size: 32, offset: 416)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !505, line: 42, baseType: !483, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !504, file: !505, line: 43, baseType: !487, size: 128, offset: 512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !504, file: !505, line: 44, baseType: !487, size: 128, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !504, file: !505, line: 45, baseType: !487, size: 128, offset: 768)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !504, file: !505, line: 46, baseType: !487, size: 128, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !504, file: !505, line: 47, baseType: !373, size: 64, offset: 1024)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !504, file: !505, line: 48, baseType: !373, size: 64, offset: 1088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !405, file: !38, line: 1883, baseType: !527, size: 64, offset: 960)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!261, !338, !230, !277}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !405, file: !38, line: 1884, baseType: !531, size: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!136, !381, !534, !373, !373}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !405, file: !38, line: 1886, baseType: !537, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!136, !381, !540, !136}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !405, file: !38, line: 1887, baseType: !542, size: 64, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!136, !381, !338, !308, !7, !271}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !405, file: !38, line: 1890, baseType: !457, size: 64, offset: 1216)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !405, file: !38, line: 1891, baseType: !547, size: 64, offset: 1280)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!136, !381, !432, !136}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !382, file: !38, line: 623, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !606, !2223, !2305, !2388, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2404, !2408, !2409, !2412, !2413, !2416, !2417, !2418, !2459, !2486, !2487, !2488, !2489, !2490, !2491, !2494, !2496, !2503, !2504, !2506, !2507, !2508, !2567, !2568, !2583, !2584, !2585, !2586, !2587, !2590, !2591, !2592, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !552, file: !38, line: 1417, baseType: !176, size: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !552, file: !38, line: 1418, baseType: !465, size: 32, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !552, file: !38, line: 1419, baseType: !379, size: 8, offset: 160)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !552, file: !38, line: 1420, baseType: !280, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !552, file: !38, line: 1421, baseType: !483, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !552, file: !38, line: 1422, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !562)
!562 = !{!563, !564, !565, !572, !576, !580, !584, !585, !586, !596, !599, !600, !601, !603, !604, !605}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !561, file: !38, line: 2229, baseType: !173, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !561, file: !38, line: 2230, baseType: !136, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !561, file: !38, line: 2238, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!136, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !571, line: 28, flags: DIFlagFwdDecl)
!571 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!572 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !561, file: !38, line: 2239, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !561, file: !38, line: 2240, baseType: !577, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!338, !560, !136, !173, !131}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !561, file: !38, line: 2242, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !551}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !561, file: !38, line: 2243, baseType: !126, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !38, line: 2244, baseType: !560, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !561, file: !38, line: 2245, baseType: !587, size: 64, offset: 512)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !130, line: 182, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !587, file: !130, line: 183, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !130, line: 186, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !130, line: 187, baseType: !590, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !591, file: !130, line: 187, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !561, file: !38, line: 2247, baseType: !597, offset: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !598, line: 187, elements: !203)
!598 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !561, file: !38, line: 2248, baseType: !597, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !561, file: !38, line: 2249, baseType: !597, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !561, file: !38, line: 2250, baseType: !602, offset: 576)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, elements: !231)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !561, file: !38, line: 2252, baseType: !597, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !561, file: !38, line: 2253, baseType: !597, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !561, file: !38, line: 2254, baseType: !597, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !552, file: !38, line: 1423, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !610)
!610 = !{!611, !615, !619, !620, !624, !630, !634, !635, !636, !640, !644, !645, !646, !647, !653, !658, !659, !666, !667, !668, !669, !2207, !2222}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !609, file: !38, line: 1936, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!381, !551}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !609, file: !38, line: 1937, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !381}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !609, file: !38, line: 1938, baseType: !616, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !609, file: !38, line: 1940, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !381, !136}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !609, file: !38, line: 1941, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!136, !381, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !609, file: !38, line: 1942, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!136, !381}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !609, file: !38, line: 1943, baseType: !616, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !609, file: !38, line: 1944, baseType: !581, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !609, file: !38, line: 1945, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!136, !551, !136}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !609, file: !38, line: 1946, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!136, !551}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !609, file: !38, line: 1947, baseType: !641, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !609, file: !38, line: 1948, baseType: !641, size: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !609, file: !38, line: 1949, baseType: !641, size: 64, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !609, file: !38, line: 1950, baseType: !648, size: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!136, !338, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !609, file: !38, line: 1951, baseType: !654, size: 64, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!136, !551, !657, !230}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !609, file: !38, line: 1952, baseType: !581, size: 64, offset: 960)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !609, file: !38, line: 1954, baseType: !660, size: 64, offset: 1024)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!136, !663, !338}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !665, line: 539, flags: DIFlagFwdDecl)
!665 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !609, file: !38, line: 1955, baseType: !660, size: 64, offset: 1088)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !609, file: !38, line: 1956, baseType: !660, size: 64, offset: 1152)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !609, file: !38, line: 1957, baseType: !660, size: 64, offset: 1216)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !609, file: !38, line: 1963, baseType: !670, size: 64, offset: 1280)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!136, !551, !673, !129}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !675, line: 68, size: 512, align: 128, elements: !676)
!675 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !678, !2199, !2206}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !675, line: 69, baseType: !280, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !675, line: 77, baseType: !679, size: 320, offset: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !675, line: 77, size: 320, elements: !680)
!680 = !{!681, !868, !873, !902, !910, !916, !2191, !2198}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 78, baseType: !682, size: 320)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 78, size: 320, elements: !683)
!683 = !{!684, !685, !866, !867}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !682, file: !675, line: 84, baseType: !176, size: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !682, file: !675, line: 86, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !688)
!688 = !{!689, !690, !697, !698, !703, !718, !734, !735, !736, !737, !859, !860, !863, !864, !865}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !687, file: !38, line: 452, baseType: !381, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !687, file: !38, line: 453, baseType: !691, size: 128, offset: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !692, line: 292, size: 128, elements: !693)
!692 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !691, file: !692, line: 293, baseType: !189)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !691, file: !692, line: 295, baseType: !129, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !691, file: !692, line: 296, baseType: !131, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !687, file: !38, line: 454, baseType: !129, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !687, file: !38, line: 455, baseType: !699, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !130, line: 168, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 166, size: 32, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !700, file: !130, line: 167, baseType: !136, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !687, file: !38, line: 460, baseType: !704, size: 128, offset: 256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !705, line: 125, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !717}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !704, file: !705, line: 126, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !705, line: 31, size: 64, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !708, file: !705, line: 32, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !705, line: 24, size: 192, align: 64, elements: !713)
!713 = !{!714, !715, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !712, file: !705, line: 25, baseType: !280, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !712, file: !705, line: 26, baseType: !711, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !712, file: !705, line: 27, baseType: !711, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !704, file: !705, line: 127, baseType: !711, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !687, file: !38, line: 461, baseType: !719, size: 256, offset: 384)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !720, line: 35, size: 256, elements: !721)
!720 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !730, !731, !733}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 36, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !724, line: 13, baseType: !725)
!724 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !130, line: 175, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 173, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !726, file: !130, line: 174, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !144, line: 22, baseType: !492)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !719, file: !720, line: 42, baseType: !723, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !720, line: 46, baseType: !732, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !190, line: 29, baseType: !197)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !719, file: !720, line: 47, baseType: !176, size: 128, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !687, file: !38, line: 462, baseType: !280, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !687, file: !38, line: 463, baseType: !280, size: 64, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !687, file: !38, line: 464, baseType: !280, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !687, file: !38, line: 465, baseType: !738, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !741)
!741 = !{!742, !746, !750, !754, !758, !762, !768, !774, !778, !783, !787, !791, !795, !823, !827, !833, !834, !835, !839, !844, !848, !855}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !740, file: !38, line: 368, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!136, !673, !628}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !740, file: !38, line: 369, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!136, !308, !673}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !740, file: !38, line: 372, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!136, !686, !628}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !740, file: !38, line: 375, baseType: !755, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!136, !673}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !740, file: !38, line: 381, baseType: !759, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!136, !308, !686, !179, !7}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !740, file: !38, line: 383, baseType: !763, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !740, file: !38, line: 385, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!136, !308, !686, !483, !7, !7, !772, !773}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !740, file: !38, line: 388, baseType: !775, size: 64, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!136, !308, !686, !483, !7, !7, !673, !131}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !740, file: !38, line: 393, baseType: !779, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!782, !686, !782}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !130, line: 125, baseType: !373)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !740, file: !38, line: 394, baseType: !784, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !673, !7, !7}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !740, file: !38, line: 395, baseType: !788, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!136, !673, !129}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !740, file: !38, line: 396, baseType: !792, size: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !673}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !740, file: !38, line: 397, baseType: !796, size: 64, offset: 768)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!261, !799, !821}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !801)
!801 = !{!802, !803, !804, !808, !809, !810, !813, !814}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !800, file: !38, line: 321, baseType: !308, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !800, file: !38, line: 326, baseType: !483, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !800, file: !38, line: 327, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !799, !265, !265}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !800, file: !38, line: 328, baseType: !131, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !800, file: !38, line: 329, baseType: !136, size: 32, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !800, file: !38, line: 330, baseType: !811, size: 16, offset: 288)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !144, line: 19, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !146, line: 24, baseType: !272)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !800, file: !38, line: 331, baseType: !811, size: 16, offset: 304)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !38, line: 332, baseType: !815, size: 64, offset: 320)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !38, line: 332, size: 64, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !815, file: !38, line: 333, baseType: !7, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !815, file: !38, line: 334, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !740, file: !38, line: 402, baseType: !824, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!136, !686, !673, !673, !13}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !740, file: !38, line: 404, baseType: !828, size: 64, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!442, !673, !831}
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !832, line: 305, baseType: !7)
!832 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !740, file: !38, line: 405, baseType: !792, size: 64, offset: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !740, file: !38, line: 406, baseType: !755, size: 64, offset: 1024)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !740, file: !38, line: 407, baseType: !836, size: 64, offset: 1088)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!136, !673, !280, !280}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !740, file: !38, line: 409, baseType: !840, size: 64, offset: 1152)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !673, !843, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !740, file: !38, line: 410, baseType: !845, size: 64, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!136, !686, !673}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !740, file: !38, line: 413, baseType: !849, size: 64, offset: 1280)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!136, !852, !308, !854}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !740, file: !38, line: 415, baseType: !856, size: 64, offset: 1344)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !308}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !38, line: 466, baseType: !280, size: 64, offset: 896)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !687, file: !38, line: 467, baseType: !861, size: 32, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !862, line: 8, baseType: !143)
!862 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!863 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !687, file: !38, line: 468, baseType: !189, offset: 992)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !687, file: !38, line: 469, baseType: !176, size: 128, offset: 1024)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !687, file: !38, line: 470, baseType: !131, size: 64, offset: 1152)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !682, file: !675, line: 87, baseType: !280, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !682, file: !675, line: 94, baseType: !280, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 96, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 96, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !869, file: !675, line: 101, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !130, line: 143, baseType: !373)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 103, baseType: !874, size: 320)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 103, size: 320, elements: !875)
!875 = !{!876, !886, !890, !891}
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !675, line: 104, baseType: !877, size: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !675, line: 104, size: 128, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !877, file: !675, line: 105, baseType: !176, size: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !675, line: 106, baseType: !881, size: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !675, line: 106, size: 128, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !675, line: 107, baseType: !673, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !881, file: !675, line: 109, baseType: !136, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !881, file: !675, line: 110, baseType: !136, size: 32, offset: 96)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !874, file: !675, line: 117, baseType: !887, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !889, line: 323, flags: DIFlagFwdDecl)
!889 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !874, file: !675, line: 119, baseType: !131, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !675, line: 120, baseType: !892, size: 64, offset: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !675, line: 120, size: 64, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !892, file: !675, line: 121, baseType: !131, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !892, file: !675, line: 122, baseType: !280, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !675, line: 123, baseType: !897, size: 32)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !675, line: 123, size: 32, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !897, file: !675, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !897, file: !675, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !897, file: !675, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 130, baseType: !903, size: 192)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 130, size: 192, elements: !904)
!904 = !{!905, !906, !907, !908, !909}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !903, file: !675, line: 131, baseType: !280, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !903, file: !675, line: 134, baseType: !379, size: 8, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !903, file: !675, line: 135, baseType: !379, size: 8, offset: 72)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !903, file: !675, line: 136, baseType: !699, size: 32, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !903, file: !675, line: 137, baseType: !7, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 139, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 139, size: 256, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !911, file: !675, line: 140, baseType: !280, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !911, file: !675, line: 141, baseType: !699, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !911, file: !675, line: 143, baseType: !176, size: 128, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 145, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 145, size: 256, elements: !918)
!918 = !{!919, !920, !922, !923, !2190}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !917, file: !675, line: 146, baseType: !280, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !917, file: !675, line: 147, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !665, line: 509, baseType: !673)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !917, file: !675, line: 148, baseType: !280, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !675, line: 149, baseType: !924, size: 64, offset: 192)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !675, line: 149, size: 64, elements: !925)
!925 = !{!926, !2189}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !924, file: !675, line: 150, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !675, line: 388, size: 7296, elements: !929)
!929 = !{!930, !2185}
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !675, line: 389, baseType: !931, size: 7296)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !675, line: 389, size: 7296, elements: !932)
!932 = !{!933, !971, !972, !973, !977, !978, !979, !980, !981, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1022, !1030, !1033, !1079, !1080, !2169, !2170, !2173, !2174, !2175, !2178, !2179, !2180, !2183, !2184}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !931, file: !675, line: 390, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !675, line: 305, size: 1472, elements: !936)
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944, !951, !952, !957, !958, !961, !965, !966, !967, !968, !969}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !935, file: !675, line: 308, baseType: !280, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !935, file: !675, line: 309, baseType: !280, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !935, file: !675, line: 313, baseType: !934, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !935, file: !675, line: 313, baseType: !934, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !935, file: !675, line: 315, baseType: !712, size: 192, align: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !935, file: !675, line: 323, baseType: !280, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !935, file: !675, line: 327, baseType: !927, size: 64, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !935, file: !675, line: 333, baseType: !945, size: 64, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !665, line: 284, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !665, line: 284, size: 64, elements: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !946, file: !665, line: 284, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !950, line: 19, baseType: !280)
!950 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !935, file: !675, line: 334, baseType: !280, size: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !935, file: !675, line: 343, baseType: !953, size: 256, offset: 704)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !675, line: 340, size: 256, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !953, file: !675, line: 341, baseType: !712, size: 192, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !953, file: !675, line: 342, baseType: !280, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !935, file: !675, line: 351, baseType: !176, size: 128, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !935, file: !675, line: 353, baseType: !959, size: 64, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !675, line: 353, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !935, file: !675, line: 356, baseType: !962, size: 64, offset: 1152)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !675, line: 356, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !935, file: !675, line: 359, baseType: !280, size: 64, offset: 1216)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !935, file: !675, line: 361, baseType: !308, size: 64, offset: 1280)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !935, file: !675, line: 362, baseType: !131, size: 64, offset: 1344)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !935, file: !675, line: 365, baseType: !723, size: 64, offset: 1408)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !935, file: !675, line: 373, baseType: !970, offset: 1472)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !675, line: 296, elements: !203)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !931, file: !675, line: 391, baseType: !708, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !931, file: !675, line: 392, baseType: !373, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !931, file: !675, line: 394, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!280, !308, !280, !280, !280, !280}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !931, file: !675, line: 398, baseType: !280, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !931, file: !675, line: 399, baseType: !280, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !931, file: !675, line: 405, baseType: !280, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !931, file: !675, line: 406, baseType: !280, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !931, file: !675, line: 407, baseType: !982, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !665, line: 286, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !665, line: 286, size: 64, elements: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !984, file: !665, line: 286, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !950, line: 18, baseType: !280)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !931, file: !675, line: 416, baseType: !699, size: 32, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !931, file: !675, line: 428, baseType: !699, size: 32, offset: 608)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !931, file: !675, line: 437, baseType: !699, size: 32, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !931, file: !675, line: 447, baseType: !699, size: 32, offset: 672)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !931, file: !675, line: 450, baseType: !723, size: 64, offset: 704)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !931, file: !675, line: 452, baseType: !136, size: 32, offset: 768)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !931, file: !675, line: 454, baseType: !189, offset: 800)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !931, file: !675, line: 457, baseType: !719, size: 256, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !931, file: !675, line: 459, baseType: !176, size: 128, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !931, file: !675, line: 466, baseType: !280, size: 64, offset: 1216)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !931, file: !675, line: 467, baseType: !280, size: 64, offset: 1280)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !931, file: !675, line: 469, baseType: !280, size: 64, offset: 1344)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !931, file: !675, line: 470, baseType: !280, size: 64, offset: 1408)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !931, file: !675, line: 471, baseType: !725, size: 64, offset: 1472)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !931, file: !675, line: 472, baseType: !280, size: 64, offset: 1536)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !931, file: !675, line: 473, baseType: !280, size: 64, offset: 1600)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !931, file: !675, line: 474, baseType: !280, size: 64, offset: 1664)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !931, file: !675, line: 475, baseType: !280, size: 64, offset: 1728)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !931, file: !675, line: 477, baseType: !189, offset: 1792)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !931, file: !675, line: 478, baseType: !280, size: 64, offset: 1792)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !931, file: !675, line: 478, baseType: !280, size: 64, offset: 1856)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !931, file: !675, line: 478, baseType: !280, size: 64, offset: 1920)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !931, file: !675, line: 478, baseType: !280, size: 64, offset: 1984)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !931, file: !675, line: 479, baseType: !280, size: 64, offset: 2048)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !931, file: !675, line: 479, baseType: !280, size: 64, offset: 2112)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !931, file: !675, line: 479, baseType: !280, size: 64, offset: 2176)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !931, file: !675, line: 480, baseType: !280, size: 64, offset: 2240)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !931, file: !675, line: 480, baseType: !280, size: 64, offset: 2304)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !931, file: !675, line: 480, baseType: !280, size: 64, offset: 2368)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !931, file: !675, line: 480, baseType: !280, size: 64, offset: 2432)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !931, file: !675, line: 482, baseType: !1019, size: 2816, offset: 2496)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 2816, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 44)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !931, file: !675, line: 488, baseType: !1023, size: 256, offset: 5312)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1024, line: 60, size: 256, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1023, file: !1024, line: 61, baseType: !1027, size: 256)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 256, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 4)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !931, file: !675, line: 490, baseType: !1031, size: 64, offset: 5568)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !675, line: 490, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !931, file: !675, line: 493, baseType: !1034, size: 896, offset: 5632)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1035, line: 53, baseType: !1036)
!1035 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1035, line: 13, size: 896, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1044, !1045, !1052, !1053, !1073, !1074, !1075}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1036, file: !1035, line: 18, baseType: !373, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1036, file: !1035, line: 28, baseType: !725, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1036, file: !1035, line: 31, baseType: !719, size: 256, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1036, file: !1035, line: 32, baseType: !1042, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1035, line: 32, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1036, file: !1035, line: 37, baseType: !272, size: 16, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1036, file: !1035, line: 40, baseType: !1046, size: 192, offset: 512)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1047, line: 53, size: 192, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1046, file: !1047, line: 54, baseType: !723, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1046, file: !1047, line: 55, baseType: !189, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1046, file: !1047, line: 59, baseType: !176, size: 128, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1036, file: !1035, line: 41, baseType: !131, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1036, file: !1035, line: 42, baseType: !1054, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1057, line: 13, size: 896, elements: !1058)
!1057 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1056, file: !1057, line: 14, baseType: !131, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1056, file: !1057, line: 15, baseType: !280, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1056, file: !1057, line: 17, baseType: !280, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1056, file: !1057, line: 17, baseType: !280, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1056, file: !1057, line: 19, baseType: !265, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1056, file: !1057, line: 21, baseType: !265, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1056, file: !1057, line: 22, baseType: !265, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1056, file: !1057, line: 23, baseType: !265, size: 64, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1056, file: !1057, line: 24, baseType: !265, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1056, file: !1057, line: 25, baseType: !265, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1056, file: !1057, line: 26, baseType: !265, size: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1056, file: !1057, line: 27, baseType: !265, size: 64, offset: 704)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1056, file: !1057, line: 28, baseType: !265, size: 64, offset: 768)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1056, file: !1057, line: 29, baseType: !265, size: 64, offset: 832)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1036, file: !1035, line: 44, baseType: !699, size: 32, offset: 832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1036, file: !1035, line: 50, baseType: !811, size: 16, offset: 864)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1036, file: !1035, line: 51, baseType: !1076, size: 16, offset: 880)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !144, line: 18, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !146, line: 23, baseType: !1078)
!1078 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !675, line: 495, baseType: !280, size: 64, offset: 6528)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !931, file: !675, line: 497, baseType: !1081, size: 64, offset: 6592)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !675, line: 381, size: 384, elements: !1083)
!1083 = !{!1084, !1085, !2168}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1082, file: !675, line: 382, baseType: !699, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1082, file: !675, line: 383, baseType: !1086, size: 128, offset: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !675, line: 376, size: 128, elements: !1087)
!1087 = !{!1088, !2166}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1086, file: !675, line: 377, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1091, line: 640, size: 48640, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !{!1093, !1099, !1101, !1102, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1119, !1137, !1148, !1233, !1234, !1235, !1246, !1247, !1249, !1250, !1251, !1252, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1331, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1369, !1371, !1372, !1373, !1385, !1386, !1387, !1388, !1389, !1390, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1414, !1419, !1601, !1602, !1603, !1604, !1605, !1608, !1611, !1614, !1617, !1620, !1721, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1767, !1768, !1769, !1770, !1771, !1776, !1777, !1778, !1781, !1782, !1785, !1788, !1791, !1794, !1837, !1840, !1841, !1920, !1921, !1924, !1925, !1928, !1929, !1930, !1934, !1935, !1936, !1949, !1950, !1951, !1961, !1966, !1969, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1090, file: !1091, line: 646, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1095, line: 56, size: 128, elements: !1096)
!1095 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !1095, line: 57, baseType: !280, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1094, file: !1095, line: 58, baseType: !143, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1090, file: !1091, line: 649, baseType: !1100, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !265)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1090, file: !1091, line: 657, baseType: !131, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1090, file: !1091, line: 658, baseType: !1103, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1104, line: 113, baseType: !1105)
!1104 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1104, line: 111, size: 32, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1105, file: !1104, line: 112, baseType: !699, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !1091, line: 660, baseType: !7, size: 32, offset: 288)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1090, file: !1091, line: 661, baseType: !7, size: 32, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1090, file: !1091, line: 684, baseType: !136, size: 32, offset: 352)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1090, file: !1091, line: 686, baseType: !136, size: 32, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1090, file: !1091, line: 687, baseType: !136, size: 32, offset: 416)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1090, file: !1091, line: 688, baseType: !136, size: 32, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1090, file: !1091, line: 689, baseType: !7, size: 32, offset: 480)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1090, file: !1091, line: 691, baseType: !1116, size: 64, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1091, line: 691, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1090, file: !1091, line: 692, baseType: !1120, size: 832, offset: 576)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1091, line: 451, size: 832, elements: !1121)
!1121 = !{!1122, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1120, file: !1091, line: 453, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1091, line: 325, size: 128, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1123, file: !1091, line: 326, baseType: !280, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1123, file: !1091, line: 327, baseType: !143, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1120, file: !1091, line: 454, baseType: !712, size: 192, align: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1120, file: !1091, line: 455, baseType: !176, size: 128, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1120, file: !1091, line: 456, baseType: !7, size: 32, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1120, file: !1091, line: 458, baseType: !373, size: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1120, file: !1091, line: 459, baseType: !373, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1120, file: !1091, line: 460, baseType: !373, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1120, file: !1091, line: 461, baseType: !373, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1120, file: !1091, line: 463, baseType: !373, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1120, file: !1091, line: 465, baseType: !1136, offset: 832)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1091, line: 415, elements: !203)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1090, file: !1091, line: 693, baseType: !1138, size: 384, offset: 1408)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1091, line: 489, size: 384, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1138, file: !1091, line: 490, baseType: !176, size: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1138, file: !1091, line: 491, baseType: !280, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1138, file: !1091, line: 492, baseType: !280, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1138, file: !1091, line: 493, baseType: !7, size: 32, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1138, file: !1091, line: 494, baseType: !272, size: 16, offset: 288)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1138, file: !1091, line: 495, baseType: !272, size: 16, offset: 304)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1138, file: !1091, line: 497, baseType: !1147, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1090, file: !1091, line: 697, baseType: !1149, size: 1792, offset: 1792)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1091, line: 507, size: 1792, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1230, !1231}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1149, file: !1091, line: 508, baseType: !712, size: 192, align: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1149, file: !1091, line: 515, baseType: !373, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1149, file: !1091, line: 516, baseType: !373, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1149, file: !1091, line: 517, baseType: !373, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1149, file: !1091, line: 518, baseType: !373, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1149, file: !1091, line: 519, baseType: !373, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1149, file: !1091, line: 526, baseType: !729, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1149, file: !1091, line: 527, baseType: !373, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !1091, line: 528, baseType: !7, size: 32, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1149, file: !1091, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1149, file: !1091, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1149, file: !1091, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1149, file: !1091, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1149, file: !1091, line: 563, baseType: !1165, size: 512, offset: 704)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1166)
!1166 = !{!1167, !1175, !1176, !1181, !1224, !1227, !1228, !1229}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1165, file: !21, line: 119, baseType: !1168, size: 256)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1169, line: 9, size: 256, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1168, file: !1169, line: 10, baseType: !712, size: 192, align: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1168, file: !1169, line: 11, baseType: !1173, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1174, line: 29, baseType: !729)
!1174 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1165, file: !21, line: 120, baseType: !1173, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1165, file: !21, line: 121, baseType: !1177, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!20, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1165, file: !21, line: 122, baseType: !1182, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1184)
!1184 = !{!1185, !1205, !1206, !1209, !1214, !1215, !1219, !1223}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1183, file: !21, line: 160, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1187, file: !21, line: 215, baseType: !732)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1187, file: !21, line: 216, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1187, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1187, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1187, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1187, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1187, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1187, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1187, file: !21, line: 233, baseType: !1173, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1187, file: !21, line: 234, baseType: !1180, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1187, file: !21, line: 235, baseType: !1173, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1187, file: !21, line: 236, baseType: !1180, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1187, file: !21, line: 237, baseType: !1202, size: 4096, offset: 512)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 4096, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 8)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1183, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1183, file: !21, line: 162, baseType: !1207, size: 32, offset: 96)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !130, line: 27, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !263, line: 96, baseType: !136)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1183, file: !21, line: 163, baseType: !1210, size: 32, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !344, line: 276, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !344, line: 276, size: 32, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1211, file: !344, line: 276, baseType: !348, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1183, file: !21, line: 164, baseType: !1180, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1183, file: !21, line: 165, baseType: !1216, size: 128, offset: 256)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1169, line: 14, size: 128, elements: !1217)
!1217 = !{!1218}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1216, file: !1169, line: 15, baseType: !704, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1183, file: !21, line: 166, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1173}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1183, file: !21, line: 167, baseType: !1173, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1165, file: !21, line: 123, baseType: !1225, size: 8, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !144, line: 17, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !146, line: 21, baseType: !379)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1165, file: !21, line: 124, baseType: !1225, size: 8, offset: 456)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1165, file: !21, line: 125, baseType: !1225, size: 8, offset: 464)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1165, file: !21, line: 126, baseType: !1225, size: 8, offset: 472)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1149, file: !1091, line: 572, baseType: !1165, size: 512, offset: 1216)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1149, file: !1091, line: 580, baseType: !1232, size: 64, offset: 1728)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1090, file: !1091, line: 721, baseType: !7, size: 32, offset: 3584)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1090, file: !1091, line: 722, baseType: !136, size: 32, offset: 3616)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1090, file: !1091, line: 723, baseType: !1236, size: 64, offset: 3648)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1239, line: 17, baseType: !1240)
!1239 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1239, line: 17, size: 64, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1240, file: !1239, line: 17, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 64, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 1)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1090, file: !1091, line: 724, baseType: !1238, size: 64, offset: 3712)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1090, file: !1091, line: 749, baseType: !1248, offset: 3776)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1091, line: 290, elements: !203)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1090, file: !1091, line: 751, baseType: !176, size: 128, offset: 3776)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1090, file: !1091, line: 757, baseType: !927, size: 64, offset: 3904)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1090, file: !1091, line: 758, baseType: !927, size: 64, offset: 3968)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1090, file: !1091, line: 761, baseType: !1253, size: 320, offset: 4032)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1024, line: 34, size: 320, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1253, file: !1024, line: 35, baseType: !373, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1253, file: !1024, line: 36, baseType: !1257, size: 256, offset: 64)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 256, elements: !1028)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1090, file: !1091, line: 766, baseType: !136, size: 32, offset: 4352)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1090, file: !1091, line: 767, baseType: !136, size: 32, offset: 4384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1090, file: !1091, line: 768, baseType: !136, size: 32, offset: 4416)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1090, file: !1091, line: 770, baseType: !136, size: 32, offset: 4448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1090, file: !1091, line: 772, baseType: !280, size: 64, offset: 4480)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1090, file: !1091, line: 775, baseType: !7, size: 32, offset: 4544)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1090, file: !1091, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1090, file: !1091, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1090, file: !1091, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1090, file: !1091, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1090, file: !1091, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1090, file: !1091, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1090, file: !1091, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1090, file: !1091, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1090, file: !1091, line: 831, baseType: !280, size: 64, offset: 4672)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1090, file: !1091, line: 833, baseType: !1274, size: 384, offset: 4736)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1275)
!1275 = !{!1276, !1281}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1274, file: !26, line: 26, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!265, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !26, line: 27, baseType: !1282, size: 320, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !26, line: 27, size: 320, elements: !1283)
!1283 = !{!1284, !1294, !1321}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1282, file: !26, line: 36, baseType: !1285, size: 320)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !26, line: 29, size: 320, elements: !1286)
!1286 = !{!1287, !1289, !1290, !1291, !1292, !1293}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1285, file: !26, line: 30, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1285, file: !26, line: 31, baseType: !143, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !26, line: 32, baseType: !143, size: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1285, file: !26, line: 33, baseType: !143, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1285, file: !26, line: 34, baseType: !373, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1285, file: !26, line: 35, baseType: !1288, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1282, file: !26, line: 46, baseType: !1295, size: 192)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !26, line: 38, size: 192, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1320}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1295, file: !26, line: 39, baseType: !1207, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1295, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !26, line: 41, baseType: !1300, size: 64, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1295, file: !26, line: 41, size: 64, elements: !1301)
!1301 = !{!1302, !1310}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1300, file: !26, line: 42, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1305, line: 7, size: 128, elements: !1306)
!1305 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1306 = !{!1307, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1304, file: !1305, line: 8, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !263, line: 93, baseType: !485)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1304, file: !1305, line: 9, baseType: !485, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1300, file: !26, line: 43, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1313, line: 7, size: 64, elements: !1314)
!1313 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1314 = !{!1315, !1319}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1312, file: !1313, line: 8, baseType: !1316, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1313, line: 5, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !144, line: 20, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !146, line: 26, baseType: !136)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1312, file: !1313, line: 9, baseType: !1317, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1295, file: !26, line: 45, baseType: !373, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1282, file: !26, line: 54, baseType: !1322, size: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !26, line: 48, size: 256, elements: !1323)
!1323 = !{!1324, !1327, !1328, !1329, !1330}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1322, file: !26, line: 49, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1322, file: !26, line: 50, baseType: !136, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1322, file: !26, line: 51, baseType: !136, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1322, file: !26, line: 52, baseType: !280, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1322, file: !26, line: 53, baseType: !280, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1090, file: !1091, line: 835, baseType: !1332, size: 32, offset: 5120)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !130, line: 22, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !263, line: 28, baseType: !136)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1090, file: !1091, line: 836, baseType: !1332, size: 32, offset: 5152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1090, file: !1091, line: 840, baseType: !280, size: 64, offset: 5184)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1090, file: !1091, line: 849, baseType: !1089, size: 64, offset: 5248)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1090, file: !1091, line: 852, baseType: !1089, size: 64, offset: 5312)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1090, file: !1091, line: 857, baseType: !176, size: 128, offset: 5376)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1090, file: !1091, line: 858, baseType: !176, size: 128, offset: 5504)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1090, file: !1091, line: 859, baseType: !1089, size: 64, offset: 5632)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1090, file: !1091, line: 867, baseType: !176, size: 128, offset: 5696)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1090, file: !1091, line: 868, baseType: !176, size: 128, offset: 5824)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1090, file: !1091, line: 871, baseType: !1344, size: 64, offset: 5952)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1352, !1353, !1360, !1361}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1345, file: !47, line: 61, baseType: !1103, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1345, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1345, file: !47, line: 63, baseType: !189, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1345, file: !47, line: 65, baseType: !1351, size: 256, offset: 64)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 256, elements: !1028)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1345, file: !47, line: 66, baseType: !587, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1345, file: !47, line: 68, baseType: !1354, size: 128, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1355, line: 40, baseType: !1356)
!1355 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1355, line: 36, size: 128, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !1355, line: 37, baseType: !189)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1356, file: !1355, line: 38, baseType: !176, size: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1345, file: !47, line: 69, baseType: !321, size: 128, align: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1345, file: !47, line: 70, baseType: !1362, size: 128, offset: 640)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 128, elements: !1244)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1363, file: !47, line: 55, baseType: !136, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1363, file: !47, line: 56, baseType: !1367, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1090, file: !1091, line: 872, baseType: !1370, size: 512, offset: 6016)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 512, elements: !1028)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1090, file: !1091, line: 873, baseType: !176, size: 128, offset: 6528)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1090, file: !1091, line: 874, baseType: !176, size: 128, offset: 6656)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1090, file: !1091, line: 876, baseType: !1374, size: 64, offset: 6784)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1376, line: 26, size: 192, elements: !1377)
!1376 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1375, file: !1376, line: 27, baseType: !7, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1375, file: !1376, line: 28, baseType: !1380, size: 128, offset: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1381, line: 43, size: 128, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1380, file: !1381, line: 44, baseType: !732)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1380, file: !1381, line: 45, baseType: !176, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1090, file: !1091, line: 879, baseType: !657, size: 64, offset: 6848)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1090, file: !1091, line: 882, baseType: !657, size: 64, offset: 6912)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1090, file: !1091, line: 884, baseType: !373, size: 64, offset: 6976)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1090, file: !1091, line: 885, baseType: !373, size: 64, offset: 7040)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1090, file: !1091, line: 890, baseType: !373, size: 64, offset: 7104)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1090, file: !1091, line: 891, baseType: !1391, size: 128, offset: 7168)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1091, line: 242, size: 128, elements: !1392)
!1392 = !{!1393, !1394, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1391, file: !1091, line: 244, baseType: !373, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1391, file: !1091, line: 245, baseType: !373, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !1091, line: 246, baseType: !732, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1090, file: !1091, line: 900, baseType: !280, size: 64, offset: 7296)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1090, file: !1091, line: 901, baseType: !280, size: 64, offset: 7360)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1090, file: !1091, line: 904, baseType: !373, size: 64, offset: 7424)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1090, file: !1091, line: 907, baseType: !373, size: 64, offset: 7488)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1090, file: !1091, line: 910, baseType: !280, size: 64, offset: 7552)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1090, file: !1091, line: 911, baseType: !280, size: 64, offset: 7616)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1090, file: !1091, line: 914, baseType: !1403, size: 640, offset: 7680)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1404, line: 123, size: 640, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1405 = !{!1406, !1412, !1413}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1403, file: !1404, line: 124, baseType: !1407, size: 576)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1408, size: 576, elements: !231)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1404, line: 108, size: 192, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1408, file: !1404, line: 109, baseType: !373, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1408, file: !1404, line: 110, baseType: !1216, size: 128, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1403, file: !1404, line: 125, baseType: !7, size: 32, offset: 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1403, file: !1404, line: 126, baseType: !7, size: 32, offset: 608)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1090, file: !1091, line: 917, baseType: !1415, size: 192, offset: 8320)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1404, line: 134, size: 192, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1415, file: !1404, line: 135, baseType: !321, size: 128, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1415, file: !1404, line: 136, baseType: !7, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1090, file: !1091, line: 923, baseType: !1420, size: 64, offset: 8512)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1423, line: 111, size: 1280, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1442, !1443, !1444, !1445, !1446, !1447, !1554, !1555, !1556, !1557, !1583, !1586, !1596}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1422, file: !1423, line: 112, baseType: !699, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1422, file: !1423, line: 120, baseType: !387, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1422, file: !1423, line: 121, baseType: !395, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1422, file: !1423, line: 122, baseType: !387, size: 32, offset: 96)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1422, file: !1423, line: 123, baseType: !395, size: 32, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1422, file: !1423, line: 124, baseType: !387, size: 32, offset: 160)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1422, file: !1423, line: 125, baseType: !395, size: 32, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1422, file: !1423, line: 126, baseType: !387, size: 32, offset: 224)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1422, file: !1423, line: 127, baseType: !395, size: 32, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1422, file: !1423, line: 128, baseType: !7, size: 32, offset: 288)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1422, file: !1423, line: 129, baseType: !1436, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1437, line: 26, baseType: !1438)
!1437 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1437, line: 24, size: 64, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1438, file: !1437, line: 25, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !157)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1422, file: !1423, line: 130, baseType: !1436, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1422, file: !1423, line: 131, baseType: !1436, size: 64, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1422, file: !1423, line: 132, baseType: !1436, size: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1422, file: !1423, line: 133, baseType: !1436, size: 64, offset: 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1422, file: !1423, line: 135, baseType: !379, size: 8, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1422, file: !1423, line: 137, baseType: !1448, size: 64, offset: 704)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1450, line: 189, size: 1664, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453, !1456, !1461, !1462, !1465, !1466, !1471, !1472, !1473, !1474, !1476, !1477, !1478, !1479, !1480, !1518, !1539}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1449, file: !1450, line: 190, baseType: !1103, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1449, file: !1450, line: 191, baseType: !1454, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1450, line: 28, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !130, line: 98, baseType: !1317)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1450, line: 192, baseType: !1457, size: 192, offset: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1450, line: 192, size: 192, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1457, file: !1450, line: 193, baseType: !176, size: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1457, file: !1450, line: 194, baseType: !712, size: 192, align: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1449, file: !1450, line: 199, baseType: !719, size: 256, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1449, file: !1450, line: 200, baseType: !1463, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1450, line: 200, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1449, file: !1450, line: 201, baseType: !131, size: 64, offset: 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1450, line: 202, baseType: !1467, size: 64, offset: 640)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1450, line: 202, size: 64, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1467, file: !1450, line: 203, baseType: !491, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1467, file: !1450, line: 204, baseType: !491, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1449, file: !1450, line: 206, baseType: !491, size: 64, offset: 704)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1449, file: !1450, line: 207, baseType: !387, size: 32, offset: 768)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1449, file: !1450, line: 208, baseType: !395, size: 32, offset: 800)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1449, file: !1450, line: 209, baseType: !1475, size: 32, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1450, line: 31, baseType: !511)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1449, file: !1450, line: 210, baseType: !272, size: 16, offset: 864)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1449, file: !1450, line: 211, baseType: !272, size: 16, offset: 880)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1449, file: !1450, line: 215, baseType: !1078, size: 16, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1450, line: 222, baseType: !280, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1450, line: 239, baseType: !1481, size: 320, offset: 1024)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1450, line: 239, size: 320, elements: !1482)
!1482 = !{!1483, !1510}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1481, file: !1450, line: 240, baseType: !1484, size: 320)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1450, line: 108, size: 320, elements: !1485)
!1485 = !{!1486, !1487, !1499, !1502, !1509}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1484, file: !1450, line: 110, baseType: !280, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1450, line: 111, baseType: !1488, size: 64, offset: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !1450, line: 111, size: 64, elements: !1489)
!1489 = !{!1490, !1498}
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1450, line: 112, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1488, file: !1450, line: 112, size: 64, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1491, file: !1450, line: 114, baseType: !811, size: 16)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1491, file: !1450, line: 115, baseType: !1495, size: 48, offset: 16)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 48, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 6)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1488, file: !1450, line: 121, baseType: !280, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1484, file: !1450, line: 123, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1450, line: 96, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1484, file: !1450, line: 124, baseType: !1503, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1450, line: 102, size: 192, elements: !1505)
!1505 = !{!1506, !1507, !1508}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1504, file: !1450, line: 103, baseType: !321, size: 128, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1504, file: !1450, line: 104, baseType: !1103, size: 32, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1504, file: !1450, line: 105, baseType: !442, size: 8, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1484, file: !1450, line: 125, baseType: !173, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1450, line: 241, baseType: !1511, size: 320)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !1450, line: 241, size: 320, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1511, file: !1450, line: 242, baseType: !280, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1511, file: !1450, line: 243, baseType: !280, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1511, file: !1450, line: 244, baseType: !1500, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1511, file: !1450, line: 245, baseType: !1503, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1511, file: !1450, line: 246, baseType: !230, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1450, line: 254, baseType: !1519, size: 256, offset: 1344)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1450, line: 254, size: 256, elements: !1520)
!1520 = !{!1521, !1527}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1519, file: !1450, line: 255, baseType: !1522, size: 256)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1450, line: 128, size: 256, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1522, file: !1450, line: 129, baseType: !131, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1522, file: !1450, line: 130, baseType: !1526, size: 256)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !1028)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1450, line: 256, baseType: !1528, size: 256)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !1450, line: 256, size: 256, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1528, file: !1450, line: 258, baseType: !176, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1528, file: !1450, line: 259, baseType: !1532, size: 128, offset: 128)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1533, line: 22, size: 128, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535, !1538}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1532, file: !1533, line: 23, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1533, line: 23, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1532, file: !1533, line: 24, baseType: !280, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1449, file: !1450, line: 274, baseType: !1540, size: 64, offset: 1600)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1450, line: 170, size: 192, elements: !1542)
!1542 = !{!1543, !1552, !1553}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1541, file: !1450, line: 171, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1450, line: 165, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!136, !1448, !1548, !1550, !1448}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1501)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1541, file: !1450, line: 172, baseType: !1448, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1541, file: !1450, line: 173, baseType: !1500, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1422, file: !1423, line: 138, baseType: !1448, size: 64, offset: 768)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1422, file: !1423, line: 139, baseType: !1448, size: 64, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1422, file: !1423, line: 140, baseType: !1448, size: 64, offset: 896)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1422, file: !1423, line: 145, baseType: !1558, size: 64, offset: 960)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1560, line: 13, size: 896, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1559, file: !1560, line: 14, baseType: !1103, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1559, file: !1560, line: 15, baseType: !699, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1559, file: !1560, line: 16, baseType: !699, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1559, file: !1560, line: 21, baseType: !723, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1559, file: !1560, line: 27, baseType: !280, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1559, file: !1560, line: 28, baseType: !280, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1559, file: !1560, line: 29, baseType: !723, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1559, file: !1560, line: 32, baseType: !591, size: 128, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1559, file: !1560, line: 33, baseType: !387, size: 32, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1559, file: !1560, line: 37, baseType: !723, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1559, file: !1560, line: 44, baseType: !1573, size: 256, offset: 640)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1574, line: 15, size: 256, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1573, file: !1574, line: 16, baseType: !732)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1573, file: !1574, line: 18, baseType: !136, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1573, file: !1574, line: 19, baseType: !136, size: 32, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1573, file: !1574, line: 20, baseType: !136, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1573, file: !1574, line: 21, baseType: !136, size: 32, offset: 96)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1573, file: !1574, line: 22, baseType: !280, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1573, file: !1574, line: 23, baseType: !280, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1422, file: !1423, line: 146, baseType: !1584, size: 64, offset: 1024)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !388, line: 18, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1422, file: !1423, line: 147, baseType: !1587, size: 64, offset: 1088)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1423, line: 25, size: 64, elements: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1588, file: !1423, line: 26, baseType: !699, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1588, file: !1423, line: 27, baseType: !136, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1588, file: !1423, line: 28, baseType: !1593, offset: 64)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: 0)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1423, line: 149, baseType: !1597, size: 128, offset: 1152)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !1423, line: 149, size: 128, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1597, file: !1423, line: 150, baseType: !136, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1597, file: !1423, line: 151, baseType: !321, size: 128, align: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1090, file: !1091, line: 926, baseType: !1420, size: 64, offset: 8576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1090, file: !1091, line: 929, baseType: !1420, size: 64, offset: 8640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1090, file: !1091, line: 933, baseType: !1448, size: 64, offset: 8704)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1090, file: !1091, line: 943, baseType: !138, size: 128, offset: 8768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1090, file: !1091, line: 945, baseType: !1606, size: 64, offset: 8896)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1091, line: 49, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1090, file: !1091, line: 956, baseType: !1609, size: 64, offset: 8960)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1091, line: 45, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1090, file: !1091, line: 959, baseType: !1612, size: 64, offset: 9024)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1091, line: 959, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1090, file: !1091, line: 962, baseType: !1615, size: 64, offset: 9088)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1091, line: 66, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1090, file: !1091, line: 966, baseType: !1618, size: 64, offset: 9152)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1091, line: 50, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1090, file: !1091, line: 969, baseType: !1621, size: 64, offset: 9216)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1623, line: 82, size: 7296, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1660, !1669, !1670, !1672, !1673, !1674, !1677, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1707, !1708, !1715, !1716, !1717, !1718, !1719, !1720}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1622, file: !1623, line: 83, baseType: !1103, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1622, file: !1623, line: 84, baseType: !699, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1622, file: !1623, line: 85, baseType: !136, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1622, file: !1623, line: 86, baseType: !176, size: 128, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1622, file: !1623, line: 88, baseType: !1354, size: 128, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1622, file: !1623, line: 91, baseType: !1089, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1622, file: !1623, line: 94, baseType: !1632, size: 192, offset: 448)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1633, line: 30, size: 192, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1632, file: !1633, line: 31, baseType: !176, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1632, file: !1633, line: 32, baseType: !1637, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1638, line: 25, baseType: !1639)
!1638 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1638, line: 23, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1639, file: !1638, line: 24, baseType: !1243, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1622, file: !1623, line: 97, baseType: !587, size: 64, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1622, file: !1623, line: 100, baseType: !136, size: 32, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1622, file: !1623, line: 106, baseType: !136, size: 32, offset: 736)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1622, file: !1623, line: 107, baseType: !1089, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1622, file: !1623, line: 110, baseType: !136, size: 32, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !1623, line: 111, baseType: !7, size: 32, offset: 864)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1622, file: !1623, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1622, file: !1623, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1622, file: !1623, line: 128, baseType: !136, size: 32, offset: 928)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1622, file: !1623, line: 129, baseType: !176, size: 128, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1622, file: !1623, line: 132, baseType: !1165, size: 512, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1622, file: !1623, line: 133, baseType: !1173, size: 64, offset: 1600)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1622, file: !1623, line: 140, baseType: !1655, size: 256, offset: 1664)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1656, size: 256, elements: !157)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1623, line: 38, size: 128, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1656, file: !1623, line: 39, baseType: !373, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1656, file: !1623, line: 40, baseType: !373, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1622, file: !1623, line: 146, baseType: !1661, size: 192, offset: 1920)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1623, line: 66, size: 192, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1661, file: !1623, line: 67, baseType: !1664, size: 192)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1623, line: 47, size: 192, elements: !1665)
!1665 = !{!1666, !1667, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1664, file: !1623, line: 48, baseType: !725, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1664, file: !1623, line: 49, baseType: !725, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1664, file: !1623, line: 50, baseType: !725, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1622, file: !1623, line: 150, baseType: !1403, size: 640, offset: 2112)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1622, file: !1623, line: 153, baseType: !1671, size: 256, offset: 2752)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 256, elements: !1028)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1622, file: !1623, line: 159, baseType: !1344, size: 64, offset: 3008)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1622, file: !1623, line: 162, baseType: !136, size: 32, offset: 3072)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1622, file: !1623, line: 164, baseType: !1675, size: 64, offset: 3136)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1623, line: 164, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1622, file: !1623, line: 175, baseType: !1678, size: 32, offset: 3200)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !344, line: 805, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 798, size: 32, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1679, file: !344, line: 803, baseType: !343, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1679, file: !344, line: 804, baseType: !189, offset: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1622, file: !1623, line: 176, baseType: !373, size: 64, offset: 3264)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1622, file: !1623, line: 176, baseType: !373, size: 64, offset: 3328)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1622, file: !1623, line: 176, baseType: !373, size: 64, offset: 3392)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1622, file: !1623, line: 176, baseType: !373, size: 64, offset: 3456)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1622, file: !1623, line: 177, baseType: !373, size: 64, offset: 3520)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1622, file: !1623, line: 178, baseType: !373, size: 64, offset: 3584)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1622, file: !1623, line: 179, baseType: !1391, size: 128, offset: 3648)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1622, file: !1623, line: 180, baseType: !280, size: 64, offset: 3776)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1622, file: !1623, line: 180, baseType: !280, size: 64, offset: 3840)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1622, file: !1623, line: 180, baseType: !280, size: 64, offset: 3904)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1622, file: !1623, line: 180, baseType: !280, size: 64, offset: 3968)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1622, file: !1623, line: 181, baseType: !280, size: 64, offset: 4032)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1622, file: !1623, line: 181, baseType: !280, size: 64, offset: 4096)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1622, file: !1623, line: 181, baseType: !280, size: 64, offset: 4160)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1622, file: !1623, line: 181, baseType: !280, size: 64, offset: 4224)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1622, file: !1623, line: 182, baseType: !280, size: 64, offset: 4288)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1622, file: !1623, line: 182, baseType: !280, size: 64, offset: 4352)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1622, file: !1623, line: 182, baseType: !280, size: 64, offset: 4416)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1622, file: !1623, line: 182, baseType: !280, size: 64, offset: 4480)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1622, file: !1623, line: 183, baseType: !280, size: 64, offset: 4544)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1622, file: !1623, line: 183, baseType: !280, size: 64, offset: 4608)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1622, file: !1623, line: 184, baseType: !1705, offset: 4672)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1706, line: 12, elements: !203)
!1706 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1622, file: !1623, line: 192, baseType: !375, size: 64, offset: 4672)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1622, file: !1623, line: 203, baseType: !1709, size: 2048, offset: 4736)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1710, size: 2048, elements: !140)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1711, line: 43, size: 128, elements: !1712)
!1711 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1710, file: !1711, line: 44, baseType: !279, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1710, file: !1711, line: 45, baseType: !279, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1622, file: !1623, line: 220, baseType: !442, size: 8, offset: 6784)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1622, file: !1623, line: 221, baseType: !1078, size: 16, offset: 6800)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1622, file: !1623, line: 222, baseType: !1078, size: 16, offset: 6816)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1622, file: !1623, line: 224, baseType: !927, size: 64, offset: 6848)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1622, file: !1623, line: 227, baseType: !1046, size: 192, offset: 6912)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1622, file: !1623, line: 233, baseType: !1046, size: 192, offset: 7104)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1090, file: !1091, line: 970, baseType: !1722, size: 64, offset: 9280)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1623, line: 20, size: 16576, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1723, file: !1623, line: 21, baseType: !189)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1723, file: !1623, line: 22, baseType: !1103, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1723, file: !1623, line: 23, baseType: !1354, size: 128, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1723, file: !1623, line: 24, baseType: !1729, size: 16384, offset: 192)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, size: 16384, elements: !235)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1633, line: 49, size: 256, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1730, file: !1633, line: 50, baseType: !1733, size: 256)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1633, line: 35, size: 256, elements: !1734)
!1734 = !{!1735, !1742, !1743, !1749}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1733, file: !1633, line: 37, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1737, line: 19, baseType: !1738)
!1737 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1737, line: 18, baseType: !1740)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !136}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1733, file: !1633, line: 38, baseType: !280, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1733, file: !1633, line: 44, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1737, line: 22, baseType: !1745)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1737, line: 21, baseType: !1747)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1733, file: !1633, line: 46, baseType: !1637, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1090, file: !1091, line: 971, baseType: !1637, size: 64, offset: 9344)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1090, file: !1091, line: 972, baseType: !1637, size: 64, offset: 9408)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1090, file: !1091, line: 974, baseType: !1637, size: 64, offset: 9472)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1090, file: !1091, line: 975, baseType: !1632, size: 192, offset: 9536)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1090, file: !1091, line: 976, baseType: !280, size: 64, offset: 9728)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1090, file: !1091, line: 977, baseType: !277, size: 64, offset: 9792)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1090, file: !1091, line: 978, baseType: !7, size: 32, offset: 9856)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1090, file: !1091, line: 980, baseType: !324, size: 64, offset: 9920)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1090, file: !1091, line: 989, baseType: !1759, size: 128, offset: 9984)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1760, line: 35, size: 128, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1759, file: !1760, line: 36, baseType: !136, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1759, file: !1760, line: 37, baseType: !699, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1759, file: !1760, line: 38, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1760, line: 23, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1090, file: !1091, line: 992, baseType: !373, size: 64, offset: 10112)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1090, file: !1091, line: 993, baseType: !373, size: 64, offset: 10176)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1090, file: !1091, line: 996, baseType: !189, offset: 10240)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1090, file: !1091, line: 999, baseType: !732, offset: 10240)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1090, file: !1091, line: 1001, baseType: !1772, size: 64, offset: 10240)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1091, line: 636, size: 64, elements: !1773)
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1772, file: !1091, line: 637, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1090, file: !1091, line: 1005, baseType: !704, size: 128, offset: 10304)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1090, file: !1091, line: 1007, baseType: !1089, size: 64, offset: 10432)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1090, file: !1091, line: 1009, baseType: !1779, size: 64, offset: 10496)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1091, line: 1009, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1090, file: !1091, line: 1043, baseType: !131, size: 64, offset: 10560)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1090, file: !1091, line: 1046, baseType: !1783, size: 64, offset: 10624)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1091, line: 41, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1090, file: !1091, line: 1050, baseType: !1786, size: 64, offset: 10688)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1091, line: 42, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1090, file: !1091, line: 1054, baseType: !1789, size: 64, offset: 10752)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1091, line: 55, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1090, file: !1091, line: 1056, baseType: !1792, size: 64, offset: 10816)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1091, line: 40, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1090, file: !1091, line: 1058, baseType: !1795, size: 64, offset: 10880)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1797, line: 99, size: 704, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1824, !1825}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1796, file: !1797, line: 100, baseType: !723, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1796, file: !1797, line: 101, baseType: !699, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1796, file: !1797, line: 102, baseType: !699, size: 32, offset: 96)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1796, file: !1797, line: 105, baseType: !189, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1796, file: !1797, line: 107, baseType: !272, size: 16, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1796, file: !1797, line: 109, baseType: !691, size: 128, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1796, file: !1797, line: 110, baseType: !1806, size: 64, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1797, line: 73, size: 448, elements: !1808)
!1808 = !{!1809, !1812, !1813, !1818, !1823}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1807, file: !1797, line: 74, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1797, line: 74, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1807, file: !1797, line: 75, baseType: !1795, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !1797, line: 83, baseType: !1814, size: 128, offset: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !1797, line: 83, size: 128, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1814, file: !1797, line: 84, baseType: !176, size: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1814, file: !1797, line: 85, baseType: !887, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1807, file: !1797, line: 87, baseType: !1819, size: 128, offset: 256)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1807, file: !1797, line: 87, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1819, file: !1797, line: 88, baseType: !591, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1819, file: !1797, line: 89, baseType: !321, size: 128, align: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1807, file: !1797, line: 92, baseType: !7, size: 32, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1796, file: !1797, line: 111, baseType: !587, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1796, file: !1797, line: 113, baseType: !1826, size: 256, offset: 448)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1827, line: 102, size: 256, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1826, file: !1827, line: 103, baseType: !723, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1826, file: !1827, line: 104, baseType: !176, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1826, file: !1827, line: 105, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1827, line: 21, baseType: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1090, file: !1091, line: 1061, baseType: !1838, size: 64, offset: 10944)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1091, line: 43, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1090, file: !1091, line: 1064, baseType: !280, size: 64, offset: 11008)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1090, file: !1091, line: 1065, baseType: !1842, size: 64, offset: 11072)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1633, line: 14, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1633, line: 12, size: 384, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1633, line: 13, baseType: !1847, size: 384)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !1633, line: 13, size: 384, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1852}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1847, file: !1633, line: 13, baseType: !136, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1847, file: !1633, line: 13, baseType: !136, size: 32, offset: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1847, file: !1633, line: 13, baseType: !136, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1847, file: !1633, line: 13, baseType: !1853, size: 256, offset: 128)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1854, line: 32, size: 256, elements: !1855)
!1854 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1861, !1874, !1880, !1889, !1909, !1914}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1853, file: !1854, line: 37, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1854, line: 34, size: 64, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1857, file: !1854, line: 35, baseType: !1333, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1857, file: !1854, line: 36, baseType: !393, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1853, file: !1854, line: 45, baseType: !1862, size: 192)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1854, line: 40, size: 192, elements: !1863)
!1863 = !{!1864, !1866, !1867, !1873}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1862, file: !1854, line: 41, baseType: !1865, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !263, line: 95, baseType: !136)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1862, file: !1854, line: 42, baseType: !136, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1862, file: !1854, line: 43, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1854, line: 11, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1854, line: 8, size: 64, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1869, file: !1854, line: 9, baseType: !136, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1869, file: !1854, line: 10, baseType: !131, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1862, file: !1854, line: 44, baseType: !136, size: 32, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1853, file: !1854, line: 52, baseType: !1875, size: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1854, line: 48, size: 128, elements: !1876)
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1875, file: !1854, line: 49, baseType: !1333, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1875, file: !1854, line: 50, baseType: !393, size: 32, offset: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1875, file: !1854, line: 51, baseType: !1868, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1853, file: !1854, line: 61, baseType: !1881, size: 256)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1854, line: 55, size: 256, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1888}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1881, file: !1854, line: 56, baseType: !1333, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1881, file: !1854, line: 57, baseType: !393, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1881, file: !1854, line: 58, baseType: !136, size: 32, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1881, file: !1854, line: 59, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !263, line: 94, baseType: !264)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1881, file: !1854, line: 60, baseType: !1887, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1853, file: !1854, line: 95, baseType: !1890, size: 256)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1854, line: 64, size: 256, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1890, file: !1854, line: 65, baseType: !131, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1890, file: !1854, line: 77, baseType: !1894, size: 192, offset: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1890, file: !1854, line: 77, size: 192, elements: !1895)
!1895 = !{!1896, !1897, !1904}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1894, file: !1854, line: 82, baseType: !1078, size: 16)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1894, file: !1854, line: 88, baseType: !1898, size: 192)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1854, line: 84, size: 192, elements: !1899)
!1899 = !{!1900, !1902, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1898, file: !1854, line: 85, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !1203)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1898, file: !1854, line: 86, baseType: !131, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1898, file: !1854, line: 87, baseType: !131, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1894, file: !1854, line: 93, baseType: !1905, size: 96)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1854, line: 90, size: 96, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1905, file: !1854, line: 91, baseType: !1901, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1905, file: !1854, line: 92, baseType: !145, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1853, file: !1854, line: 101, baseType: !1910, size: 128)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1854, line: 98, size: 128, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1910, file: !1854, line: 99, baseType: !265, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1910, file: !1854, line: 100, baseType: !136, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1853, file: !1854, line: 108, baseType: !1915, size: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !1854, line: 104, size: 128, elements: !1916)
!1916 = !{!1917, !1918, !1919}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1915, file: !1854, line: 105, baseType: !131, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1915, file: !1854, line: 106, baseType: !136, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1915, file: !1854, line: 107, baseType: !7, size: 32, offset: 96)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1090, file: !1091, line: 1067, baseType: !1705, offset: 11136)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1090, file: !1091, line: 1099, baseType: !1922, size: 64, offset: 11136)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1091, line: 56, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1090, file: !1091, line: 1103, baseType: !176, size: 128, offset: 11200)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1090, file: !1091, line: 1104, baseType: !1926, size: 64, offset: 11328)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1091, line: 46, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1090, file: !1091, line: 1105, baseType: !1046, size: 192, offset: 11392)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1090, file: !1091, line: 1106, baseType: !7, size: 32, offset: 11584)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1090, file: !1091, line: 1109, baseType: !1931, size: 128, offset: 11648)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1932, size: 128, elements: !157)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1091, line: 51, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1090, file: !1091, line: 1110, baseType: !1046, size: 192, offset: 11776)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1090, file: !1091, line: 1111, baseType: !176, size: 128, offset: 11968)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1090, file: !1091, line: 1173, baseType: !1937, size: 64, offset: 12096)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1939, line: 62, size: 256, align: 256, elements: !1940)
!1939 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !{!1941, !1942, !1943, !1948}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1938, file: !1939, line: 75, baseType: !145, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1938, file: !1939, line: 90, baseType: !145, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1938, file: !1939, line: 124, baseType: !1944, size: 64, offset: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !1939, line: 109, size: 64, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1944, file: !1939, line: 110, baseType: !374, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1944, file: !1939, line: 112, baseType: !374, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1938, file: !1939, line: 144, baseType: !145, size: 32, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1090, file: !1091, line: 1174, baseType: !143, size: 32, offset: 12160)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1090, file: !1091, line: 1179, baseType: !280, size: 64, offset: 12224)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1090, file: !1091, line: 1182, baseType: !1952, size: 128, offset: 12288)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1024, line: 76, size: 128, elements: !1953)
!1953 = !{!1954, !1959, !1960}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1952, file: !1024, line: 85, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1956, line: 7, size: 64, elements: !1957)
!1956 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1955, file: !1956, line: 12, baseType: !1240, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1952, file: !1024, line: 88, baseType: !442, size: 8, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1952, file: !1024, line: 95, baseType: !442, size: 8, offset: 72)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !1091, line: 1184, baseType: !1962, size: 128, offset: 12416)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !1091, line: 1184, size: 128, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1962, file: !1091, line: 1185, baseType: !1103, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1962, file: !1091, line: 1186, baseType: !321, size: 128, align: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1090, file: !1091, line: 1190, baseType: !1967, size: 64, offset: 12544)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1091, line: 53, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1090, file: !1091, line: 1192, baseType: !1970, size: 128, offset: 12608)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1024, line: 64, size: 128, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1970, file: !1024, line: 65, baseType: !673, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1970, file: !1024, line: 67, baseType: !145, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1970, file: !1024, line: 68, baseType: !145, size: 32, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1090, file: !1091, line: 1206, baseType: !136, size: 32, offset: 12736)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1090, file: !1091, line: 1207, baseType: !136, size: 32, offset: 12768)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1090, file: !1091, line: 1209, baseType: !280, size: 64, offset: 12800)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1090, file: !1091, line: 1219, baseType: !373, size: 64, offset: 12864)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1090, file: !1091, line: 1220, baseType: !373, size: 64, offset: 12928)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1090, file: !1091, line: 1317, baseType: !136, size: 32, offset: 12992)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1090, file: !1091, line: 1319, baseType: !1089, size: 64, offset: 13056)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1090, file: !1091, line: 1322, baseType: !1983, size: 64, offset: 13120)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1091, line: 1322, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1090, file: !1091, line: 1326, baseType: !1103, size: 32, offset: 13184)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1090, file: !1091, line: 1342, baseType: !131, size: 64, offset: 13248)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1090, file: !1091, line: 1343, baseType: !374, size: 64, offset: 13312)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1090, file: !1091, line: 1344, baseType: !373, size: 64, offset: 13376)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1090, file: !1091, line: 1345, baseType: !374, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1090, file: !1091, line: 1346, baseType: !374, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1090, file: !1091, line: 1347, baseType: !374, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1090, file: !1091, line: 1348, baseType: !321, size: 128, align: 64, offset: 13504)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1090, file: !1091, line: 1358, baseType: !1994, size: 34816, offset: 13824)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1995, line: 485, size: 34816, elements: !1996)
!1995 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2026, !2027, !2028, !2029, !2030, !2031, !2034, !2035, !2036}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1994, file: !1995, line: 487, baseType: !1998, size: 192)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1999, size: 192, elements: !231)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2000, line: 16, size: 64, elements: !2001)
!2000 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1999, file: !2000, line: 17, baseType: !811, size: 16)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1999, file: !2000, line: 18, baseType: !811, size: 16, offset: 16)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1999, file: !2000, line: 19, baseType: !811, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1999, file: !2000, line: 19, baseType: !811, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1999, file: !2000, line: 19, baseType: !811, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1999, file: !2000, line: 19, baseType: !811, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1999, file: !2000, line: 19, baseType: !811, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1999, file: !2000, line: 20, baseType: !811, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1999, file: !2000, line: 20, baseType: !811, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1999, file: !2000, line: 20, baseType: !811, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1999, file: !2000, line: 20, baseType: !811, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1999, file: !2000, line: 20, baseType: !811, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1999, file: !2000, line: 20, baseType: !811, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1994, file: !1995, line: 491, baseType: !280, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1994, file: !1995, line: 495, baseType: !272, size: 16, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1994, file: !1995, line: 496, baseType: !272, size: 16, offset: 272)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1994, file: !1995, line: 497, baseType: !272, size: 16, offset: 288)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1994, file: !1995, line: 498, baseType: !272, size: 16, offset: 304)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1994, file: !1995, line: 502, baseType: !280, size: 64, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1994, file: !1995, line: 503, baseType: !280, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1994, file: !1995, line: 514, baseType: !2023, size: 256, offset: 448)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 256, elements: !1028)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1995, line: 483, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1994, file: !1995, line: 516, baseType: !280, size: 64, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1994, file: !1995, line: 518, baseType: !280, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1994, file: !1995, line: 520, baseType: !280, size: 64, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1994, file: !1995, line: 521, baseType: !280, size: 64, offset: 896)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1994, file: !1995, line: 522, baseType: !280, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1994, file: !1995, line: 528, baseType: !2032, size: 64, offset: 1024)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1995, line: 10, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1994, file: !1995, line: 535, baseType: !280, size: 64, offset: 1088)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1994, file: !1995, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1994, file: !1995, line: 540, baseType: !2037, size: 33280, offset: 1536)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2038, line: 317, size: 33280, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2037, file: !2038, line: 330, baseType: !7, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2037, file: !2038, line: 337, baseType: !280, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2037, file: !2038, line: 348, baseType: !2043, size: 32768, offset: 512)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2038, line: 304, size: 32768, elements: !2044)
!2044 = !{!2045, !2060, !2099, !2149, !2162}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2043, file: !2038, line: 305, baseType: !2046, size: 896)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2038, line: 12, size: 896, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2059}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2046, file: !2038, line: 13, baseType: !143, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2046, file: !2038, line: 14, baseType: !143, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2046, file: !2038, line: 15, baseType: !143, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2046, file: !2038, line: 16, baseType: !143, size: 32, offset: 96)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2046, file: !2038, line: 17, baseType: !143, size: 32, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2046, file: !2038, line: 18, baseType: !143, size: 32, offset: 160)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2046, file: !2038, line: 19, baseType: !143, size: 32, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2046, file: !2038, line: 22, baseType: !2056, size: 640, offset: 224)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 640, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 20)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2046, file: !2038, line: 25, baseType: !143, size: 32, offset: 864)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2043, file: !2038, line: 306, baseType: !2061, size: 4096, align: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2038, line: 34, size: 4096, align: 128, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2082, !2083, !2084, !2088, !2090, !2094}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2061, file: !2038, line: 35, baseType: !811, size: 16)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2061, file: !2038, line: 36, baseType: !811, size: 16, offset: 16)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2061, file: !2038, line: 37, baseType: !811, size: 16, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2061, file: !2038, line: 38, baseType: !811, size: 16, offset: 48)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2038, line: 39, baseType: !2068, size: 128, offset: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2038, line: 39, size: 128, elements: !2069)
!2069 = !{!2070, !2075}
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2038, line: 40, baseType: !2071, size: 128)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !2038, line: 40, size: 128, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2071, file: !2038, line: 41, baseType: !373, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2071, file: !2038, line: 42, baseType: !373, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2038, line: 44, baseType: !2076, size: 128)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !2038, line: 44, size: 128, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2076, file: !2038, line: 45, baseType: !143, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2076, file: !2038, line: 46, baseType: !143, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2076, file: !2038, line: 47, baseType: !143, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2076, file: !2038, line: 48, baseType: !143, size: 32, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2061, file: !2038, line: 51, baseType: !143, size: 32, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2061, file: !2038, line: 52, baseType: !143, size: 32, offset: 224)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2061, file: !2038, line: 55, baseType: !2085, size: 1024, offset: 256)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2061, file: !2038, line: 58, baseType: !2089, size: 2048, offset: 1280)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2048, elements: !235)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2061, file: !2038, line: 60, baseType: !2091, size: 384, offset: 3328)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 384, elements: !2092)
!2092 = !{!2093}
!2093 = !DISubrange(count: 12)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2038, line: 62, baseType: !2095, size: 384, offset: 3712)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2038, line: 62, size: 384, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2095, file: !2038, line: 63, baseType: !2091, size: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2095, file: !2038, line: 64, baseType: !2091, size: 384)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2043, file: !2038, line: 307, baseType: !2100, size: 1088)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2038, line: 79, size: 1088, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2148}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2100, file: !2038, line: 80, baseType: !143, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2100, file: !2038, line: 81, baseType: !143, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2100, file: !2038, line: 82, baseType: !143, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2100, file: !2038, line: 83, baseType: !143, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2100, file: !2038, line: 84, baseType: !143, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2100, file: !2038, line: 85, baseType: !143, size: 32, offset: 160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2100, file: !2038, line: 86, baseType: !143, size: 32, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2100, file: !2038, line: 88, baseType: !2056, size: 640, offset: 224)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2100, file: !2038, line: 89, baseType: !1225, size: 8, offset: 864)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2100, file: !2038, line: 90, baseType: !1225, size: 8, offset: 872)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2100, file: !2038, line: 91, baseType: !1225, size: 8, offset: 880)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2100, file: !2038, line: 92, baseType: !1225, size: 8, offset: 888)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2100, file: !2038, line: 93, baseType: !1225, size: 8, offset: 896)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2100, file: !2038, line: 94, baseType: !1225, size: 8, offset: 904)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2100, file: !2038, line: 95, baseType: !2117, size: 64, offset: 960)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2119, line: 11, size: 128, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2118, file: !2119, line: 12, baseType: !265, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2118, file: !2119, line: 13, baseType: !2123, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2125, line: 56, size: 1344, elements: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2124, file: !2125, line: 61, baseType: !280, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2124, file: !2125, line: 62, baseType: !280, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2124, file: !2125, line: 63, baseType: !280, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2124, file: !2125, line: 64, baseType: !280, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2124, file: !2125, line: 65, baseType: !280, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2124, file: !2125, line: 66, baseType: !280, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2124, file: !2125, line: 68, baseType: !280, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2124, file: !2125, line: 69, baseType: !280, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2124, file: !2125, line: 70, baseType: !280, size: 64, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2124, file: !2125, line: 71, baseType: !280, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2124, file: !2125, line: 72, baseType: !280, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2124, file: !2125, line: 73, baseType: !280, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2124, file: !2125, line: 74, baseType: !280, size: 64, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2124, file: !2125, line: 75, baseType: !280, size: 64, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2124, file: !2125, line: 76, baseType: !280, size: 64, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2124, file: !2125, line: 81, baseType: !280, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2124, file: !2125, line: 83, baseType: !280, size: 64, offset: 1024)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2124, file: !2125, line: 84, baseType: !280, size: 64, offset: 1088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2124, file: !2125, line: 85, baseType: !280, size: 64, offset: 1152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2124, file: !2125, line: 86, baseType: !280, size: 64, offset: 1216)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2124, file: !2125, line: 87, baseType: !280, size: 64, offset: 1280)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2100, file: !2038, line: 96, baseType: !143, size: 32, offset: 1024)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2043, file: !2038, line: 308, baseType: !2150, size: 4608, align: 512)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2038, line: 289, size: 4608, align: 512, elements: !2151)
!2151 = !{!2152, !2153, !2160}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2150, file: !2038, line: 290, baseType: !2061, size: 4096, align: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2150, file: !2038, line: 291, baseType: !2154, size: 512, offset: 4096)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2038, line: 268, size: 512, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2154, file: !2038, line: 269, baseType: !373, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2154, file: !2038, line: 270, baseType: !373, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2154, file: !2038, line: 271, baseType: !2159, size: 384, offset: 128)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 384, elements: !1496)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2150, file: !2038, line: 292, baseType: !2161, offset: 4608)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, elements: !1594)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2043, file: !2038, line: 309, baseType: !2163, size: 32768)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, size: 32768, elements: !2164)
!2164 = !{!2165}
!2165 = !DISubrange(count: 4096)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1086, file: !675, line: 378, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1082, file: !675, line: 384, baseType: !1375, size: 192, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !931, file: !675, line: 500, baseType: !189, offset: 6656)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !931, file: !675, line: 501, baseType: !2171, size: 64, offset: 6656)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !675, line: 387, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !931, file: !675, line: 516, baseType: !1584, size: 64, offset: 6720)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !931, file: !675, line: 519, baseType: !308, size: 64, offset: 6784)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !931, file: !675, line: 521, baseType: !2176, size: 64, offset: 6848)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !675, line: 521, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !931, file: !675, line: 545, baseType: !699, size: 32, offset: 6912)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !931, file: !675, line: 548, baseType: !442, size: 8, offset: 6944)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !931, file: !675, line: 550, baseType: !2181, offset: 6952)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2182, line: 142, elements: !203)
!2182 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !931, file: !675, line: 554, baseType: !1826, size: 256, offset: 6976)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !931, file: !675, line: 557, baseType: !143, size: 32, offset: 7232)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !928, file: !675, line: 565, baseType: !2186, offset: 7296)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, elements: !2187)
!2187 = !{!2188}
!2188 = !DISubrange(count: -1)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !924, file: !675, line: 151, baseType: !699, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !917, file: !675, line: 156, baseType: !189, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 159, baseType: !2192, size: 128)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 159, size: 128, elements: !2193)
!2193 = !{!2194, !2197}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2192, file: !675, line: 161, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !675, line: 161, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2192, file: !675, line: 162, baseType: !131, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !679, file: !675, line: 176, baseType: !321, size: 128, align: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !675, line: 179, baseType: !2200, size: 32, offset: 384)
!2200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !675, line: 179, size: 32, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2200, file: !675, line: 184, baseType: !699, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2200, file: !675, line: 192, baseType: !7, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2200, file: !675, line: 194, baseType: !7, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2200, file: !675, line: 195, baseType: !136, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !674, file: !675, line: 199, baseType: !699, size: 32, offset: 416)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !609, file: !38, line: 1964, baseType: !2208, size: 64, offset: 1344)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!265, !551, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2213, line: 12, size: 256, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2214 = !{!2215, !2216, !2217, !2218, !2219}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2212, file: !2213, line: 13, baseType: !129, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2212, file: !2213, line: 16, baseType: !136, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2212, file: !2213, line: 23, baseType: !280, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2212, file: !2213, line: 30, baseType: !280, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2212, file: !2213, line: 33, baseType: !2220, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !675, line: 27, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !609, file: !38, line: 1966, baseType: !2208, size: 64, offset: 1408)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !552, file: !38, line: 1424, baseType: !2224, size: 64, offset: 448)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2226)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2227)
!2227 = !{!2228, !2274, !2278, !2282, !2283, !2284, !2285, !2286, !2291, !2296, !2300}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2226, file: !32, line: 323, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!136, !2232}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2259, !2260, !2261}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2233, file: !32, line: 295, baseType: !591, size: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2233, file: !32, line: 296, baseType: !176, size: 128, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2233, file: !32, line: 297, baseType: !176, size: 128, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2233, file: !32, line: 298, baseType: !176, size: 128, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2233, file: !32, line: 299, baseType: !1046, size: 192, offset: 512)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2233, file: !32, line: 300, baseType: !189, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2233, file: !32, line: 301, baseType: !699, size: 32, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2233, file: !32, line: 302, baseType: !551, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2233, file: !32, line: 303, baseType: !2244, size: 64, offset: 832)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2245)
!2245 = !{!2246, !2258}
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !32, line: 69, baseType: !2247, size: 32)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2244, file: !32, line: 69, size: 32, elements: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2247, file: !32, line: 70, baseType: !387, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2247, file: !32, line: 71, baseType: !395, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2247, file: !32, line: 72, baseType: !2252, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2253, line: 24, baseType: !2254)
!2253 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2253, line: 22, size: 32, elements: !2255)
!2255 = !{!2256}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2254, file: !2253, line: 23, baseType: !2257, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2253, line: 20, baseType: !393)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2244, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2233, file: !32, line: 304, baseType: !483, size: 64, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2233, file: !32, line: 305, baseType: !280, size: 64, offset: 960)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2233, file: !32, line: 306, baseType: !2262, size: 576, offset: 1024)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2263)
!2263 = !{!2264, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2262, file: !32, line: 206, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !485)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2262, file: !32, line: 207, baseType: !2265, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2262, file: !32, line: 208, baseType: !2265, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2262, file: !32, line: 209, baseType: !2265, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2262, file: !32, line: 210, baseType: !2265, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2262, file: !32, line: 211, baseType: !2265, size: 64, offset: 320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2262, file: !32, line: 212, baseType: !2265, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2262, file: !32, line: 213, baseType: !491, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2262, file: !32, line: 214, baseType: !491, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2226, file: !32, line: 324, baseType: !2275, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!2232, !551, !136}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2226, file: !32, line: 325, baseType: !2279, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !2232}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2226, file: !32, line: 326, baseType: !2229, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2226, file: !32, line: 327, baseType: !2229, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2226, file: !32, line: 328, baseType: !2229, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2226, file: !32, line: 329, baseType: !637, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2226, file: !32, line: 332, baseType: !2287, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2290, !381}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2226, file: !32, line: 333, baseType: !2292, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!136, !381, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2226, file: !32, line: 335, baseType: !2297, size: 64, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!136, !381, !2290}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2226, file: !32, line: 337, baseType: !2301, size: 64, offset: 640)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!136, !551, !2304}
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !552, file: !38, line: 1425, baseType: !2306, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2308)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2309)
!2309 = !{!2310, !2314, !2315, !2319, !2320, !2321, !2336, !2359, !2363, !2364, !2387}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2308, file: !32, line: 429, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!136, !551, !136, !136, !501}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2308, file: !32, line: 430, baseType: !637, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2308, file: !32, line: 431, baseType: !2316, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!136, !551, !7}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2308, file: !32, line: 432, baseType: !2316, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2308, file: !32, line: 433, baseType: !637, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2308, file: !32, line: 434, baseType: !2322, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!136, !551, !136, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2326, file: !32, line: 416, baseType: !136, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2326, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2326, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2326, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2326, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2326, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2326, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2326, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2308, file: !32, line: 435, baseType: !2337, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!136, !551, !2244, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2342)
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2341, file: !32, line: 344, baseType: !136, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2341, file: !32, line: 345, baseType: !373, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2341, file: !32, line: 346, baseType: !373, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2341, file: !32, line: 347, baseType: !373, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2341, file: !32, line: 348, baseType: !373, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2341, file: !32, line: 349, baseType: !373, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2341, file: !32, line: 350, baseType: !373, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2341, file: !32, line: 351, baseType: !729, size: 64, offset: 448)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2341, file: !32, line: 353, baseType: !729, size: 64, offset: 512)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2341, file: !32, line: 354, baseType: !136, size: 32, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2341, file: !32, line: 355, baseType: !136, size: 32, offset: 608)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2341, file: !32, line: 356, baseType: !373, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2341, file: !32, line: 357, baseType: !373, size: 64, offset: 704)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2341, file: !32, line: 358, baseType: !373, size: 64, offset: 768)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2341, file: !32, line: 359, baseType: !729, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2341, file: !32, line: 360, baseType: !136, size: 32, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2308, file: !32, line: 436, baseType: !2360, size: 64, offset: 448)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!136, !551, !2304, !2340}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2308, file: !32, line: 438, baseType: !2337, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2308, file: !32, line: 439, baseType: !2365, size: 64, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!136, !551, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2370)
!2370 = !{!2371, !2372}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2369, file: !32, line: 410, baseType: !7, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2369, file: !32, line: 411, baseType: !2373, size: 1344, offset: 64)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2374, size: 1344, elements: !231)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2386}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2374, file: !32, line: 396, baseType: !7, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2374, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2374, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2374, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2374, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2374, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2374, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2374, file: !32, line: 404, baseType: !375, size: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2374, file: !32, line: 405, baseType: !2385, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !130, line: 126, baseType: !373)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2374, file: !32, line: 406, baseType: !2385, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2308, file: !32, line: 440, baseType: !2316, size: 64, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !552, file: !38, line: 1426, baseType: !2389, size: 64, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !552, file: !38, line: 1427, baseType: !280, size: 64, offset: 640)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !552, file: !38, line: 1428, baseType: !280, size: 64, offset: 704)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !552, file: !38, line: 1429, baseType: !280, size: 64, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !552, file: !38, line: 1430, baseType: !338, size: 64, offset: 832)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !552, file: !38, line: 1431, baseType: !719, size: 256, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !552, file: !38, line: 1432, baseType: !136, size: 32, offset: 1152)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !552, file: !38, line: 1433, baseType: !699, size: 32, offset: 1184)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !552, file: !38, line: 1437, baseType: !2400, size: 64, offset: 1216)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !552, file: !38, line: 1449, baseType: !2405, size: 64, offset: 1280)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !354, line: 34, size: 64, elements: !2406)
!2406 = !{!2407}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2405, file: !354, line: 35, baseType: !357, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !552, file: !38, line: 1450, baseType: !176, size: 128, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !552, file: !38, line: 1451, baseType: !2410, size: 64, offset: 1472)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !552, file: !38, line: 1452, baseType: !1792, size: 64, offset: 1536)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !552, file: !38, line: 1453, baseType: !2414, size: 64, offset: 1600)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !552, file: !38, line: 1454, baseType: !591, size: 128, offset: 1664)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !552, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !552, file: !38, line: 1456, baseType: !2419, size: 2432, offset: 1856)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2425, !2457}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2419, file: !32, line: 519, baseType: !7, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2419, file: !32, line: 520, baseType: !719, size: 256, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2419, file: !32, line: 521, baseType: !2424, size: 192, offset: 320)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 192, elements: !231)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2419, file: !32, line: 522, baseType: !2426, size: 1728, offset: 512)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2427, size: 1728, elements: !231)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2428)
!2428 = !{!2429, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2427, file: !32, line: 223, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2432)
!2432 = !{!2433, !2434, !2447, !2448}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2431, file: !32, line: 444, baseType: !136, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2431, file: !32, line: 445, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2437)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2437, file: !32, line: 311, baseType: !637, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2437, file: !32, line: 312, baseType: !637, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2437, file: !32, line: 313, baseType: !637, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2437, file: !32, line: 314, baseType: !637, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2437, file: !32, line: 315, baseType: !2229, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2437, file: !32, line: 316, baseType: !2229, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2437, file: !32, line: 317, baseType: !2229, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2437, file: !32, line: 318, baseType: !2301, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2431, file: !32, line: 446, baseType: !126, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2431, file: !32, line: 447, baseType: !2430, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2427, file: !32, line: 224, baseType: !136, size: 32, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2427, file: !32, line: 226, baseType: !176, size: 128, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2427, file: !32, line: 227, baseType: !280, size: 64, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2427, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2427, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2427, file: !32, line: 230, baseType: !2265, size: 64, offset: 384)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2427, file: !32, line: 231, baseType: !2265, size: 64, offset: 448)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2427, file: !32, line: 232, baseType: !131, size: 64, offset: 512)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2419, file: !32, line: 523, baseType: !2458, size: 192, offset: 2240)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 192, elements: !231)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !552, file: !38, line: 1458, baseType: !2460, size: 2112, offset: 4288)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2461)
!2461 = !{!2462, !2463, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2460, file: !38, line: 1411, baseType: !136, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2460, file: !38, line: 1412, baseType: !1354, size: 128, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2460, file: !38, line: 1413, baseType: !2465, size: 1920, offset: 192)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2466, size: 1920, elements: !231)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2467, line: 12, size: 640, elements: !2468)
!2467 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2468 = !{!2469, !2477, !2479, !2484, !2485}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2466, file: !2467, line: 13, baseType: !2470, size: 320)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2471, line: 17, size: 320, elements: !2472)
!2471 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2472 = !{!2473, !2474, !2475, !2476}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2470, file: !2471, line: 18, baseType: !136, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2470, file: !2471, line: 19, baseType: !136, size: 32, offset: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2470, file: !2471, line: 20, baseType: !1354, size: 128, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2470, file: !2471, line: 22, baseType: !321, size: 128, align: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2466, file: !2467, line: 14, baseType: !2478, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2466, file: !2467, line: 15, baseType: !2480, size: 64, offset: 384)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2481, line: 16, size: 64, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !{!2483}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2480, file: !2481, line: 17, baseType: !1089, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2466, file: !2467, line: 16, baseType: !1354, size: 128, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2466, file: !2467, line: 17, baseType: !699, size: 32, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !552, file: !38, line: 1465, baseType: !131, size: 64, offset: 6400)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !552, file: !38, line: 1468, baseType: !143, size: 32, offset: 6464)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !552, file: !38, line: 1470, baseType: !491, size: 64, offset: 6528)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !552, file: !38, line: 1471, baseType: !491, size: 64, offset: 6592)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !552, file: !38, line: 1473, baseType: !145, size: 32, offset: 6656)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !552, file: !38, line: 1474, baseType: !2492, size: 64, offset: 6720)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !552, file: !38, line: 1477, baseType: !2495, size: 256, offset: 6784)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !2086)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !552, file: !38, line: 1478, baseType: !2497, size: 128, offset: 7040)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2498, line: 18, baseType: !2499)
!2498 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2498, line: 16, size: 128, elements: !2500)
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2499, file: !2498, line: 17, baseType: !2502, size: 128)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 128, elements: !140)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !552, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !552, file: !38, line: 1481, baseType: !2505, size: 32, offset: 7200)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !130, line: 150, baseType: !7)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !552, file: !38, line: 1487, baseType: !1046, size: 192, offset: 7232)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !552, file: !38, line: 1493, baseType: !173, size: 64, offset: 7424)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !552, file: !38, line: 1495, baseType: !2509, size: 64, offset: 7488)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2511)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !336, line: 135, size: 1024, align: 512, elements: !2512)
!2512 = !{!2513, !2517, !2518, !2525, !2531, !2535, !2539, !2543, !2544, !2548, !2552, !2557, !2561}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2511, file: !336, line: 136, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!136, !338, !7}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2511, file: !336, line: 137, baseType: !2514, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2511, file: !336, line: 138, baseType: !2519, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!136, !2522, !2524}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2511, file: !336, line: 139, baseType: !2526, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!136, !2522, !7, !173, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2511, file: !336, line: 141, baseType: !2532, size: 64, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!136, !2522}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2511, file: !336, line: 142, baseType: !2536, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!136, !338}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2511, file: !336, line: 143, baseType: !2540, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !338}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2511, file: !336, line: 144, baseType: !2540, size: 64, offset: 448)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2511, file: !336, line: 145, baseType: !2545, size: 64, offset: 512)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !338, !381}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2511, file: !336, line: 146, baseType: !2549, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!230, !338, !230, !136}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2511, file: !336, line: 147, baseType: !2553, size: 64, offset: 640)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!334, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2511, file: !336, line: 148, baseType: !2558, size: 64, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!136, !501, !442}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2511, file: !336, line: 149, baseType: !2562, size: 64, offset: 768)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!338, !338, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !552, file: !38, line: 1500, baseType: !136, size: 32, offset: 7552)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !552, file: !38, line: 1502, baseType: !2569, size: 448, offset: 7616)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2213, line: 60, size: 448, elements: !2570)
!2570 = !{!2571, !2576, !2577, !2578, !2579, !2580, !2581}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2569, file: !2213, line: 61, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!280, !2575, !2211}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2569, file: !2213, line: 63, baseType: !2572, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2569, file: !2213, line: 66, baseType: !265, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2569, file: !2213, line: 67, baseType: !136, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2569, file: !2213, line: 68, baseType: !7, size: 32, offset: 224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2569, file: !2213, line: 71, baseType: !176, size: 128, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2569, file: !2213, line: 77, baseType: !2582, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !552, file: !38, line: 1505, baseType: !723, size: 64, offset: 8064)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !552, file: !38, line: 1508, baseType: !723, size: 64, offset: 8128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !552, file: !38, line: 1511, baseType: !136, size: 32, offset: 8192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !552, file: !38, line: 1514, baseType: !861, size: 32, offset: 8224)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !552, file: !38, line: 1517, baseType: !2588, size: 64, offset: 8256)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1827, line: 18, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !552, file: !38, line: 1518, baseType: !587, size: 64, offset: 8320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !552, file: !38, line: 1525, baseType: !1584, size: 64, offset: 8384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !552, file: !38, line: 1532, baseType: !2593, size: 64, offset: 8448)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2594, line: 52, size: 64, elements: !2595)
!2594 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2595 = !{!2596}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2593, file: !2594, line: 53, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2594, line: 40, size: 256, elements: !2599)
!2599 = !{!2600, !2601, !2606}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2598, file: !2594, line: 42, baseType: !189)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2598, file: !2594, line: 44, baseType: !2602, size: 192)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2594, line: 28, size: 192, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2602, file: !2594, line: 29, baseType: !176, size: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2602, file: !2594, line: 31, baseType: !265, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2598, file: !2594, line: 49, baseType: !265, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !552, file: !38, line: 1533, baseType: !2593, size: 64, offset: 8512)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !552, file: !38, line: 1534, baseType: !321, size: 128, align: 64, offset: 8576)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !552, file: !38, line: 1535, baseType: !1826, size: 256, offset: 8704)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !552, file: !38, line: 1537, baseType: !1046, size: 192, offset: 8960)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !552, file: !38, line: 1542, baseType: !136, size: 32, offset: 9152)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !552, file: !38, line: 1545, baseType: !189, offset: 9184)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !552, file: !38, line: 1546, baseType: !176, size: 128, offset: 9216)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !552, file: !38, line: 1548, baseType: !189, offset: 9344)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !552, file: !38, line: 1549, baseType: !176, size: 128, offset: 9344)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !382, file: !38, line: 624, baseType: !686, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !382, file: !38, line: 631, baseType: !280, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !38, line: 639, baseType: !2619, size: 32, offset: 384)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !38, line: 639, size: 32, elements: !2620)
!2620 = !{!2621, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2619, file: !38, line: 640, baseType: !2622, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2619, file: !38, line: 641, baseType: !7, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !382, file: !38, line: 643, baseType: !465, size: 32, offset: 416)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !382, file: !38, line: 644, baseType: !483, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !382, file: !38, line: 645, baseType: !487, size: 128, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !382, file: !38, line: 646, baseType: !487, size: 128, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !382, file: !38, line: 647, baseType: !487, size: 128, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !382, file: !38, line: 648, baseType: !189, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !382, file: !38, line: 649, baseType: !272, size: 16, offset: 896)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !382, file: !38, line: 650, baseType: !1225, size: 8, offset: 912)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !382, file: !38, line: 651, baseType: !1225, size: 8, offset: 920)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !382, file: !38, line: 652, baseType: !2385, size: 64, offset: 960)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !382, file: !38, line: 659, baseType: !280, size: 64, offset: 1024)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !382, file: !38, line: 660, baseType: !719, size: 256, offset: 1088)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !382, file: !38, line: 662, baseType: !280, size: 64, offset: 1344)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !382, file: !38, line: 663, baseType: !280, size: 64, offset: 1408)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !382, file: !38, line: 665, baseType: !591, size: 128, offset: 1472)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !382, file: !38, line: 666, baseType: !176, size: 128, offset: 1600)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !382, file: !38, line: 675, baseType: !176, size: 128, offset: 1728)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !382, file: !38, line: 676, baseType: !176, size: 128, offset: 1856)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !382, file: !38, line: 677, baseType: !176, size: 128, offset: 1984)
!2643 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !38, line: 678, baseType: !2644, size: 128, offset: 2112)
!2644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !38, line: 678, size: 128, elements: !2645)
!2645 = !{!2646, !2647}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2644, file: !38, line: 679, baseType: !587, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2644, file: !38, line: 680, baseType: !321, size: 128, align: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !382, file: !38, line: 682, baseType: !725, size: 64, offset: 2240)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !382, file: !38, line: 683, baseType: !725, size: 64, offset: 2304)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !382, file: !38, line: 684, baseType: !699, size: 32, offset: 2368)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !382, file: !38, line: 685, baseType: !699, size: 32, offset: 2400)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !382, file: !38, line: 686, baseType: !699, size: 32, offset: 2432)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !382, file: !38, line: 688, baseType: !699, size: 32, offset: 2464)
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !38, line: 690, baseType: !2655, size: 64, offset: 2496)
!2655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !38, line: 690, size: 64, elements: !2656)
!2656 = !{!2657, !2880}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2655, file: !38, line: 691, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2660)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2661)
!2661 = !{!2662, !2663, !2667, !2672, !2676, !2677, !2678, !2682, !2695, !2696, !2704, !2708, !2709, !2713, !2714, !2718, !2723, !2724, !2728, !2732, !2840, !2844, !2845, !2849, !2850, !2854, !2858, !2863, !2867, !2871, !2875, !2879}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2660, file: !38, line: 1823, baseType: !126, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2660, file: !38, line: 1824, baseType: !2664, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!483, !308, !483, !136}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2660, file: !38, line: 1825, baseType: !2668, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!261, !308, !230, !277, !2671}
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2660, file: !38, line: 1826, baseType: !2673, size: 64, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!261, !308, !173, !277, !2671}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2660, file: !38, line: 1827, baseType: !796, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2660, file: !38, line: 1828, baseType: !796, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2660, file: !38, line: 1829, baseType: !2679, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!136, !799, !442}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2660, file: !38, line: 1830, baseType: !2683, size: 64, offset: 448)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!136, !308, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2688)
!2688 = !{!2689, !2694}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2687, file: !38, line: 1777, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2691)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!136, !2686, !173, !136, !483, !373, !7}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2687, file: !38, line: 1778, baseType: !483, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2660, file: !38, line: 1831, baseType: !2683, size: 64, offset: 512)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2660, file: !38, line: 1832, baseType: !2697, size: 64, offset: 576)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!2700, !308, !2702}
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2701, line: 52, baseType: !7)
!2701 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !571, line: 27, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2660, file: !38, line: 1833, baseType: !2705, size: 64, offset: 640)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!265, !308, !7, !280}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2660, file: !38, line: 1834, baseType: !2705, size: 64, offset: 704)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2660, file: !38, line: 1835, baseType: !2710, size: 64, offset: 768)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!136, !308, !934}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2660, file: !38, line: 1836, baseType: !280, size: 64, offset: 832)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2660, file: !38, line: 1837, baseType: !2715, size: 64, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!136, !381, !308}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2660, file: !38, line: 1838, baseType: !2719, size: 64, offset: 960)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!136, !308, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !131)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2660, file: !38, line: 1839, baseType: !2715, size: 64, offset: 1024)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2660, file: !38, line: 1840, baseType: !2725, size: 64, offset: 1088)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!136, !308, !483, !483, !136}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2660, file: !38, line: 1841, baseType: !2729, size: 64, offset: 1152)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!136, !136, !308, !136}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2660, file: !38, line: 1842, baseType: !2733, size: 64, offset: 1216)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!136, !308, !136, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2770, !2771, !2772, !2785, !2816}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2737, file: !38, line: 1063, baseType: !2736, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2737, file: !38, line: 1064, baseType: !176, size: 128, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2737, file: !38, line: 1065, baseType: !591, size: 128, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2737, file: !38, line: 1066, baseType: !176, size: 128, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2737, file: !38, line: 1069, baseType: !176, size: 128, offset: 448)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2737, file: !38, line: 1072, baseType: !2722, size: 64, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2737, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2737, file: !38, line: 1074, baseType: !379, size: 8, offset: 672)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2737, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2737, file: !38, line: 1076, baseType: !136, size: 32, offset: 736)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2737, file: !38, line: 1077, baseType: !1354, size: 128, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2737, file: !38, line: 1078, baseType: !308, size: 64, offset: 896)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2737, file: !38, line: 1079, baseType: !483, size: 64, offset: 960)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2737, file: !38, line: 1080, baseType: !483, size: 64, offset: 1024)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2737, file: !38, line: 1082, baseType: !2754, size: 64, offset: 1088)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2756)
!2756 = !{!2757, !2765, !2766, !2767, !2768, !2769}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2755, file: !38, line: 1315, baseType: !2758)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2759, line: 20, baseType: !2760)
!2759 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2759, line: 11, elements: !2761)
!2761 = !{!2762}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2760, file: !2759, line: 12, baseType: !2763)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !201, line: 33, baseType: !2764)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 31, elements: !203)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2755, file: !38, line: 1316, baseType: !136, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2755, file: !38, line: 1317, baseType: !136, size: 32, offset: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2755, file: !38, line: 1318, baseType: !2754, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2755, file: !38, line: 1319, baseType: !308, size: 64, offset: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2755, file: !38, line: 1320, baseType: !321, size: 128, align: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2737, file: !38, line: 1084, baseType: !280, size: 64, offset: 1152)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2737, file: !38, line: 1085, baseType: !280, size: 64, offset: 1216)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2737, file: !38, line: 1087, baseType: !2773, size: 64, offset: 1280)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2775)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2776)
!2776 = !{!2777, !2781}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2775, file: !38, line: 1012, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2736, !2736}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2775, file: !38, line: 1013, baseType: !2782, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !2736}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2737, file: !38, line: 1088, baseType: !2786, size: 64, offset: 1344)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2789)
!2789 = !{!2790, !2794, !2798, !2799, !2803, !2807, !2811, !2815}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2788, file: !38, line: 1017, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!2722, !2722}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2788, file: !38, line: 1018, baseType: !2795, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !2722}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2788, file: !38, line: 1019, baseType: !2782, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2788, file: !38, line: 1020, baseType: !2800, size: 64, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!136, !2736, !136}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2788, file: !38, line: 1021, baseType: !2804, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!442, !2736}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2788, file: !38, line: 1022, baseType: !2808, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!136, !2736, !136, !179}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2788, file: !38, line: 1023, baseType: !2812, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2736, !773}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2788, file: !38, line: 1024, baseType: !2804, size: 64, offset: 448)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2737, file: !38, line: 1097, baseType: !2817, size: 256, offset: 1408)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2737, file: !38, line: 1089, size: 256, elements: !2818)
!2818 = !{!2819, !2828, !2834}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2817, file: !38, line: 1090, baseType: !2820, size: 256)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2821, line: 10, size: 256, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2822 = !{!2823, !2824, !2827}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2820, file: !2821, line: 11, baseType: !143, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2820, file: !2821, line: 12, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2821, line: 5, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2820, file: !2821, line: 13, baseType: !176, size: 128, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2817, file: !38, line: 1091, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2821, line: 17, size: 64, elements: !2830)
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2829, file: !2821, line: 18, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2821, line: 16, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2817, file: !38, line: 1096, baseType: !2835, size: 192)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2817, file: !38, line: 1092, size: 192, elements: !2836)
!2836 = !{!2837, !2838, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2835, file: !38, line: 1093, baseType: !176, size: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2835, file: !38, line: 1094, baseType: !136, size: 32, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2835, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2660, file: !38, line: 1843, baseType: !2841, size: 64, offset: 1280)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!261, !308, !673, !136, !277, !2671, !136}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2660, file: !38, line: 1844, baseType: !974, size: 64, offset: 1344)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2660, file: !38, line: 1845, baseType: !2846, size: 64, offset: 1408)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!136, !136}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2660, file: !38, line: 1846, baseType: !2733, size: 64, offset: 1472)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2660, file: !38, line: 1847, baseType: !2851, size: 64, offset: 1536)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!261, !1967, !308, !2671, !277, !7}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2660, file: !38, line: 1848, baseType: !2855, size: 64, offset: 1600)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!261, !308, !2671, !1967, !277, !7}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2660, file: !38, line: 1849, baseType: !2859, size: 64, offset: 1664)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!136, !308, !265, !2862, !773}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2660, file: !38, line: 1850, baseType: !2864, size: 64, offset: 1728)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!265, !308, !136, !483, !483}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2660, file: !38, line: 1852, baseType: !2868, size: 64, offset: 1792)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !663, !308}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2660, file: !38, line: 1856, baseType: !2872, size: 64, offset: 1856)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!261, !308, !483, !308, !483, !277, !7}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2660, file: !38, line: 1858, baseType: !2876, size: 64, offset: 1920)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!483, !308, !483, !308, !483, !483, !7}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2660, file: !38, line: 1861, baseType: !2725, size: 64, offset: 1984)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2655, file: !38, line: 692, baseType: !616, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !382, file: !38, line: 694, baseType: !2882, size: 64, offset: 2560)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2884)
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2883, file: !38, line: 1101, baseType: !189)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2883, file: !38, line: 1102, baseType: !176, size: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2883, file: !38, line: 1103, baseType: !176, size: 128, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2883, file: !38, line: 1104, baseType: !176, size: 128, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !382, file: !38, line: 695, baseType: !687, size: 1216, align: 64, offset: 2624)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !382, file: !38, line: 696, baseType: !176, size: 128, offset: 3840)
!2891 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !38, line: 697, baseType: !2892, size: 64, offset: 3968)
!2892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !38, line: 697, size: 64, elements: !2893)
!2893 = !{!2894, !2895, !2896, !2899, !2900}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2892, file: !38, line: 698, baseType: !1967, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2892, file: !38, line: 699, baseType: !2410, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2892, file: !38, line: 700, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2892, file: !38, line: 701, baseType: !230, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2892, file: !38, line: 702, baseType: !7, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !382, file: !38, line: 705, baseType: !145, size: 32, offset: 4032)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !382, file: !38, line: 708, baseType: !145, size: 32, offset: 4064)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !382, file: !38, line: 709, baseType: !2492, size: 64, offset: 4096)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !382, file: !38, line: 720, baseType: !131, size: 64, offset: 4160)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !339, file: !336, line: 98, baseType: !2906, size: 256, offset: 448)
!2906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !2086)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !339, file: !336, line: 101, baseType: !2908, size: 32, offset: 704)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2909, line: 25, size: 32, elements: !2910)
!2909 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2910 = !{!2911}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2908, file: !2909, line: 26, baseType: !2912, size: 32)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2908, file: !2909, line: 26, size: 32, elements: !2913)
!2913 = !{!2914}
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !2912, file: !2909, line: 30, baseType: !2915, size: 32)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !2909, line: 30, size: 32, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2915, file: !2909, line: 31, baseType: !189)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2915, file: !2909, line: 32, baseType: !136, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !339, file: !336, line: 102, baseType: !2509, size: 64, offset: 768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !339, file: !336, line: 103, baseType: !551, size: 64, offset: 832)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !339, file: !336, line: 104, baseType: !280, size: 64, offset: 896)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !339, file: !336, line: 105, baseType: !131, size: 64, offset: 960)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !336, line: 107, baseType: !2924, size: 128, offset: 1024)
!2924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !336, line: 107, size: 128, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2924, file: !336, line: 108, baseType: !176, size: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2924, file: !336, line: 109, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !339, file: !336, line: 111, baseType: !176, size: 128, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !339, file: !336, line: 112, baseType: !176, size: 128, offset: 1280)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !339, file: !336, line: 120, baseType: !2932, size: 128, offset: 1408)
!2932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !336, line: 116, size: 128, elements: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2932, file: !336, line: 117, baseType: !591, size: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2932, file: !336, line: 118, baseType: !353, size: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2932, file: !336, line: 119, baseType: !321, size: 128, align: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !309, file: !38, line: 922, baseType: !381, size: 64, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !309, file: !38, line: 923, baseType: !2658, size: 64, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !309, file: !38, line: 929, baseType: !189, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !309, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !309, file: !38, line: 931, baseType: !723, size: 64, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !309, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !309, file: !38, line: 933, baseType: !2505, size: 32, offset: 544)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !309, file: !38, line: 934, baseType: !1046, size: 192, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !309, file: !38, line: 935, baseType: !483, size: 64, offset: 768)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !309, file: !38, line: 936, baseType: !2947, size: 192, offset: 832)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2948)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2947, file: !38, line: 886, baseType: !2758)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2947, file: !38, line: 887, baseType: !1344, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2947, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2947, file: !38, line: 889, baseType: !387, size: 32, offset: 96)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2947, file: !38, line: 889, baseType: !387, size: 32, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2947, file: !38, line: 890, baseType: !136, size: 32, offset: 160)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !309, file: !38, line: 937, baseType: !1420, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !309, file: !38, line: 938, baseType: !2957, size: 256, offset: 1088)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2957, file: !38, line: 897, baseType: !280, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2957, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2957, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2957, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2957, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2957, file: !38, line: 904, baseType: !483, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !309, file: !38, line: 940, baseType: !373, size: 64, offset: 1344)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !309, file: !38, line: 945, baseType: !131, size: 64, offset: 1408)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !309, file: !38, line: 949, baseType: !176, size: 128, offset: 1472)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !309, file: !38, line: 950, baseType: !176, size: 128, offset: 1600)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !309, file: !38, line: 952, baseType: !686, size: 64, offset: 1728)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !309, file: !38, line: 953, baseType: !861, size: 32, offset: 1792)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !309, file: !38, line: 954, baseType: !861, size: 32, offset: 1824)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !299, file: !255, line: 174, baseType: !305, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !299, file: !255, line: 176, baseType: !2974, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!136, !308, !182, !298, !934}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !287, file: !255, line: 90, baseType: !282, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !287, file: !255, line: 91, baseType: !2979, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !245, file: !170, line: 143, baseType: !2981, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!2984, !182}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2987)
!2987 = !{!2988, !2989, !2993, !2997, !3005, !3009}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2986, file: !55, line: 40, baseType: !54, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2986, file: !55, line: 41, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!442}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2986, file: !55, line: 42, baseType: !2994, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!131}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2986, file: !55, line: 43, baseType: !2998, size: 64, offset: 192)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!3001, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2986, file: !55, line: 44, baseType: !3006, size: 64, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!3001}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2986, file: !55, line: 45, baseType: !420, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !245, file: !170, line: 144, baseType: !3011, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!3001, !182}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !245, file: !170, line: 145, baseType: !3015, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !182, !3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !169, file: !170, line: 70, baseType: !3021, size: 64, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !571, line: 123, size: 1024, elements: !3023)
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3152, !3153, !3154, !3155, !3156}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3022, file: !571, line: 124, baseType: !699, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3022, file: !571, line: 125, baseType: !699, size: 32, offset: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3022, file: !571, line: 135, baseType: !3021, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3022, file: !571, line: 136, baseType: !173, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3022, file: !571, line: 138, baseType: !712, size: 192, align: 64, offset: 192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3022, file: !571, line: 140, baseType: !3001, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3022, file: !571, line: 141, baseType: !7, size: 32, offset: 448)
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !571, line: 142, baseType: !3032, size: 256, offset: 512)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3022, file: !571, line: 142, size: 256, elements: !3033)
!3033 = !{!3034, !3080, !3084}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3032, file: !571, line: 143, baseType: !3035, size: 192)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !571, line: 91, size: 192, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3035, file: !571, line: 92, baseType: !280, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3035, file: !571, line: 94, baseType: !708, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3035, file: !571, line: 100, baseType: !3040, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !571, line: 180, size: 704, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3052, !3053, !3054, !3078, !3079}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3041, file: !571, line: 182, baseType: !3021, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3041, file: !571, line: 183, baseType: !7, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3041, file: !571, line: 186, baseType: !3046, size: 192, offset: 128)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3047, line: 19, size: 192, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3046, file: !3047, line: 20, baseType: !691, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3046, file: !3047, line: 21, baseType: !7, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3046, file: !3047, line: 22, baseType: !7, size: 32, offset: 160)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3041, file: !571, line: 187, baseType: !143, size: 32, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3041, file: !571, line: 188, baseType: !143, size: 32, offset: 352)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3041, file: !571, line: 189, baseType: !3055, size: 64, offset: 384)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !571, line: 168, size: 320, elements: !3057)
!3057 = !{!3058, !3062, !3066, !3070, !3074}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3056, file: !571, line: 169, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!136, !663, !3040}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3056, file: !571, line: 171, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!136, !3021, !173, !271}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3056, file: !571, line: 173, baseType: !3067, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!136, !3021}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3056, file: !571, line: 174, baseType: !3071, size: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!136, !3021, !3021, !173}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3056, file: !571, line: 176, baseType: !3075, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!136, !663, !3021, !3040}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3041, file: !571, line: 192, baseType: !176, size: 128, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3041, file: !571, line: 194, baseType: !1354, size: 128, offset: 576)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3032, file: !571, line: 144, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !571, line: 103, size: 64, elements: !3082)
!3082 = !{!3083}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3081, file: !571, line: 104, baseType: !3021, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3032, file: !571, line: 145, baseType: !3085, size: 256)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !571, line: 107, size: 256, elements: !3086)
!3086 = !{!3087, !3147, !3150, !3151}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3085, file: !571, line: 108, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !571, line: 217, size: 768, elements: !3091)
!3091 = !{!3092, !3112, !3116, !3120, !3124, !3128, !3132, !3136, !3137, !3138, !3139, !3143}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3090, file: !571, line: 222, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!136, !3096}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !571, line: 197, size: 1088, elements: !3098)
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3097, file: !571, line: 199, baseType: !3021, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3097, file: !571, line: 200, baseType: !308, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3097, file: !571, line: 201, baseType: !663, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3097, file: !571, line: 202, baseType: !131, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3097, file: !571, line: 205, baseType: !1046, size: 192, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3097, file: !571, line: 206, baseType: !1046, size: 192, offset: 448)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3097, file: !571, line: 207, baseType: !136, size: 32, offset: 640)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3097, file: !571, line: 208, baseType: !176, size: 128, offset: 704)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3097, file: !571, line: 209, baseType: !230, size: 64, offset: 832)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3097, file: !571, line: 211, baseType: !277, size: 64, offset: 896)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3097, file: !571, line: 212, baseType: !442, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3097, file: !571, line: 213, baseType: !442, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3097, file: !571, line: 214, baseType: !962, size: 64, offset: 1024)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3090, file: !571, line: 223, baseType: !3113, size: 64, offset: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !3096}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3090, file: !571, line: 236, baseType: !3117, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!136, !663, !131}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3090, file: !571, line: 238, baseType: !3121, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!131, !663, !2671}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3090, file: !571, line: 239, baseType: !3125, size: 64, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!131, !663, !131, !2671}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3090, file: !571, line: 240, baseType: !3129, size: 64, offset: 320)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !663, !131}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3090, file: !571, line: 242, baseType: !3133, size: 64, offset: 384)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!261, !3096, !230, !277, !483}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3090, file: !571, line: 252, baseType: !277, size: 64, offset: 448)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3090, file: !571, line: 259, baseType: !442, size: 8, offset: 512)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3090, file: !571, line: 260, baseType: !3133, size: 64, offset: 576)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3090, file: !571, line: 263, baseType: !3140, size: 64, offset: 640)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!2700, !3096, !2702}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3090, file: !571, line: 266, baseType: !3144, size: 64, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!136, !3096, !934}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3085, file: !571, line: 109, baseType: !3148, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !571, line: 31, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3085, file: !571, line: 110, baseType: !483, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3085, file: !571, line: 111, baseType: !3021, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3022, file: !571, line: 148, baseType: !131, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3022, file: !571, line: 154, baseType: !373, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3022, file: !571, line: 156, baseType: !272, size: 16, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3022, file: !571, line: 157, baseType: !271, size: 16, offset: 912)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3022, file: !571, line: 158, baseType: !3157, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !571, line: 32, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !169, file: !170, line: 71, baseType: !3160, size: 32, offset: 448)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3161, line: 19, size: 32, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3160, file: !3161, line: 20, baseType: !1103, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !169, file: !170, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !169, file: !170, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !169, file: !170, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !169, file: !170, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !169, file: !170, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !166, file: !67, line: 463, baseType: !165, size: 64, offset: 512)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !166, file: !67, line: 465, baseType: !3171, size: 64, offset: 576)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !166, file: !67, line: 467, baseType: !173, size: 64, offset: 640)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !67, line: 468, baseType: !3175, size: 64, offset: 704)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3185, !3190, !3194}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3177, file: !67, line: 88, baseType: !173, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3177, file: !67, line: 89, baseType: !284, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3177, file: !67, line: 90, baseType: !3182, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!136, !165, !225}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3177, file: !67, line: 91, baseType: !3186, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!230, !165, !3189, !3018, !3019}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3177, file: !67, line: 93, baseType: !3191, size: 64, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !165}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3177, file: !67, line: 95, baseType: !3195, size: 64, offset: 320)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3198)
!3198 = !{!3199, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3197, file: !74, line: 279, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!136, !165}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3197, file: !74, line: 280, baseType: !3191, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3197, file: !74, line: 281, baseType: !3200, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3197, file: !74, line: 282, baseType: !3200, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3197, file: !74, line: 283, baseType: !3200, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3197, file: !74, line: 284, baseType: !3200, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3197, file: !74, line: 285, baseType: !3200, size: 64, offset: 384)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3197, file: !74, line: 286, baseType: !3200, size: 64, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3197, file: !74, line: 287, baseType: !3200, size: 64, offset: 512)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3197, file: !74, line: 288, baseType: !3200, size: 64, offset: 576)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3197, file: !74, line: 289, baseType: !3200, size: 64, offset: 640)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3197, file: !74, line: 290, baseType: !3200, size: 64, offset: 704)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3197, file: !74, line: 291, baseType: !3200, size: 64, offset: 768)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3197, file: !74, line: 292, baseType: !3200, size: 64, offset: 832)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3197, file: !74, line: 293, baseType: !3200, size: 64, offset: 896)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3197, file: !74, line: 294, baseType: !3200, size: 64, offset: 960)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3197, file: !74, line: 295, baseType: !3200, size: 64, offset: 1024)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3197, file: !74, line: 296, baseType: !3200, size: 64, offset: 1088)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3197, file: !74, line: 297, baseType: !3200, size: 64, offset: 1152)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3197, file: !74, line: 298, baseType: !3200, size: 64, offset: 1216)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3197, file: !74, line: 299, baseType: !3200, size: 64, offset: 1280)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3197, file: !74, line: 300, baseType: !3200, size: 64, offset: 1344)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3197, file: !74, line: 301, baseType: !3200, size: 64, offset: 1408)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !166, file: !67, line: 470, baseType: !3226, size: 64, offset: 768)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3228, line: 82, size: 1408, elements: !3229)
!3228 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3311, !3314, !3315}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3227, file: !3228, line: 83, baseType: !173, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3227, file: !3228, line: 84, baseType: !173, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3227, file: !3228, line: 85, baseType: !165, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3227, file: !3228, line: 86, baseType: !284, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3227, file: !3228, line: 87, baseType: !284, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3227, file: !3228, line: 88, baseType: !284, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3227, file: !3228, line: 90, baseType: !3237, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!136, !165, !3240}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248, !3249, !3262, !3275, !3276, !3277, !3278, !3279, !3287, !3288, !3289, !3290, !3291, !3292}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3241, file: !61, line: 96, baseType: !173, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3241, file: !61, line: 97, baseType: !3226, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3241, file: !61, line: 99, baseType: !126, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3241, file: !61, line: 100, baseType: !173, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3241, file: !61, line: 102, baseType: !442, size: 8, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3241, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3241, file: !61, line: 105, baseType: !3250, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3253, line: 262, size: 1600, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3254 = !{!3255, !3256, !3257, !3261}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3252, file: !3253, line: 263, baseType: !2495, size: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3252, file: !3253, line: 264, baseType: !2495, size: 256, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3252, file: !3253, line: 265, baseType: !3258, size: 1024, offset: 512)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !3259)
!3259 = !{!3260}
!3260 = !DISubrange(count: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3252, file: !3253, line: 266, baseType: !3001, size: 64, offset: 1536)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3241, file: !61, line: 106, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3253, line: 210, size: 256, elements: !3266)
!3266 = !{!3267, !3271, !3273, !3274}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3265, file: !3253, line: 211, baseType: !3268, size: 72)
!3268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 72, elements: !3269)
!3269 = !{!3270}
!3270 = !DISubrange(count: 9)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3265, file: !3253, line: 212, baseType: !3272, size: 64, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3253, line: 14, baseType: !280)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3265, file: !3253, line: 213, baseType: !145, size: 32, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3265, file: !3253, line: 214, baseType: !145, size: 32, offset: 224)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3241, file: !61, line: 108, baseType: !3200, size: 64, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3241, file: !61, line: 109, baseType: !3191, size: 64, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3241, file: !61, line: 110, baseType: !3200, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3241, file: !61, line: 111, baseType: !3191, size: 64, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3241, file: !61, line: 112, baseType: !3280, size: 64, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!136, !165, !3283}
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3284)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3285)
!3285 = !{!3286}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3284, file: !74, line: 51, baseType: !136, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3241, file: !61, line: 113, baseType: !3200, size: 64, offset: 768)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3241, file: !61, line: 114, baseType: !284, size: 64, offset: 832)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3241, file: !61, line: 115, baseType: !284, size: 64, offset: 896)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3241, file: !61, line: 117, baseType: !3195, size: 64, offset: 960)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3241, file: !61, line: 118, baseType: !3191, size: 64, offset: 1024)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3241, file: !61, line: 120, baseType: !3293, size: 64, offset: 1088)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3227, file: !3228, line: 91, baseType: !3182, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3227, file: !3228, line: 92, baseType: !3200, size: 64, offset: 512)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3227, file: !3228, line: 93, baseType: !3191, size: 64, offset: 576)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3227, file: !3228, line: 94, baseType: !3200, size: 64, offset: 640)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3227, file: !3228, line: 95, baseType: !3191, size: 64, offset: 704)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3227, file: !3228, line: 97, baseType: !3200, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3227, file: !3228, line: 98, baseType: !3200, size: 64, offset: 832)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3227, file: !3228, line: 100, baseType: !3280, size: 64, offset: 896)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3227, file: !3228, line: 101, baseType: !3200, size: 64, offset: 960)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3227, file: !3228, line: 103, baseType: !3200, size: 64, offset: 1024)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3227, file: !3228, line: 105, baseType: !3200, size: 64, offset: 1088)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3227, file: !3228, line: 107, baseType: !3195, size: 64, offset: 1152)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3227, file: !3228, line: 109, baseType: !3308, size: 64, offset: 1216)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3310)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3228, line: 109, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3227, file: !3228, line: 111, baseType: !3312, size: 64, offset: 1280)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3228, line: 111, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3227, file: !3228, line: 112, baseType: !597, offset: 1344)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3227, file: !3228, line: 114, baseType: !442, size: 8, offset: 1344)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !67, line: 471, baseType: !3240, size: 64, offset: 832)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !166, file: !67, line: 473, baseType: !131, size: 64, offset: 896)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !166, file: !67, line: 475, baseType: !131, size: 64, offset: 960)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !67, line: 480, baseType: !1046, size: 192, offset: 1024)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !166, file: !67, line: 484, baseType: !3321, size: 576, offset: 1216)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3321, file: !67, line: 362, baseType: !176, size: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3321, file: !67, line: 363, baseType: !176, size: 128, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3321, file: !67, line: 364, baseType: !176, size: 128, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3321, file: !67, line: 365, baseType: !176, size: 128, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3321, file: !67, line: 366, baseType: !442, size: 8, offset: 512)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3321, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !166, file: !67, line: 485, baseType: !3330, size: 2304, offset: 1792)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3427, !3431}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3330, file: !74, line: 566, baseType: !3283, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3330, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3330, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3330, file: !74, line: 569, baseType: !442, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3330, file: !74, line: 570, baseType: !442, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3330, file: !74, line: 571, baseType: !442, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3330, file: !74, line: 572, baseType: !442, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3330, file: !74, line: 573, baseType: !442, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3330, file: !74, line: 574, baseType: !442, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3330, file: !74, line: 575, baseType: !442, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3330, file: !74, line: 576, baseType: !442, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3330, file: !74, line: 577, baseType: !143, size: 32, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3330, file: !74, line: 578, baseType: !189, offset: 96)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3330, file: !74, line: 580, baseType: !176, size: 128, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3330, file: !74, line: 581, baseType: !1375, size: 192, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3330, file: !74, line: 582, baseType: !3348, size: 64, offset: 448)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3350, line: 43, size: 1472, elements: !3351)
!3350 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3359, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3349, file: !3350, line: 44, baseType: !173, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3349, file: !3350, line: 45, baseType: !136, size: 32, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3349, file: !3350, line: 46, baseType: !176, size: 128, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3349, file: !3350, line: 47, baseType: !189, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3349, file: !3350, line: 48, baseType: !3357, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3349, file: !3350, line: 49, baseType: !3360, size: 320, offset: 320)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3361, line: 11, size: 320, elements: !3362)
!3361 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3362 = !{!3363, !3364, !3365, !3370}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3360, file: !3361, line: 16, baseType: !591, size: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3360, file: !3361, line: 17, baseType: !280, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3360, file: !3361, line: 18, baseType: !3366, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{null, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3360, file: !3361, line: 19, baseType: !143, size: 32, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3349, file: !3350, line: 50, baseType: !280, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3349, file: !3350, line: 51, baseType: !1173, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3349, file: !3350, line: 52, baseType: !1173, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3349, file: !3350, line: 53, baseType: !1173, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3349, file: !3350, line: 54, baseType: !1173, size: 64, offset: 896)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3349, file: !3350, line: 55, baseType: !1173, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3349, file: !3350, line: 56, baseType: !280, size: 64, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3349, file: !3350, line: 57, baseType: !280, size: 64, offset: 1088)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3349, file: !3350, line: 58, baseType: !280, size: 64, offset: 1152)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3349, file: !3350, line: 59, baseType: !280, size: 64, offset: 1216)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3349, file: !3350, line: 60, baseType: !280, size: 64, offset: 1280)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3349, file: !3350, line: 61, baseType: !165, size: 64, offset: 1344)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3349, file: !3350, line: 62, baseType: !442, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3349, file: !3350, line: 63, baseType: !442, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3330, file: !74, line: 583, baseType: !442, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3330, file: !74, line: 584, baseType: !442, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3330, file: !74, line: 585, baseType: !442, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3330, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3330, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3330, file: !74, line: 592, baseType: !1165, size: 512, offset: 576)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3330, file: !74, line: 593, baseType: !373, size: 64, offset: 1088)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3330, file: !74, line: 594, baseType: !1826, size: 256, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3330, file: !74, line: 595, baseType: !1354, size: 128, offset: 1408)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3330, file: !74, line: 596, baseType: !3357, size: 64, offset: 1536)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3330, file: !74, line: 597, baseType: !699, size: 32, offset: 1600)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3330, file: !74, line: 598, baseType: !699, size: 32, offset: 1632)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3330, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3330, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3330, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3330, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3330, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3330, file: !74, line: 604, baseType: !442, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3330, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3330, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3330, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3330, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3330, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3330, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3330, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3330, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3330, file: !74, line: 613, baseType: !136, size: 32, offset: 1792)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3330, file: !74, line: 614, baseType: !136, size: 32, offset: 1824)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3330, file: !74, line: 615, baseType: !373, size: 64, offset: 1856)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3330, file: !74, line: 616, baseType: !373, size: 64, offset: 1920)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3330, file: !74, line: 617, baseType: !373, size: 64, offset: 1984)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3330, file: !74, line: 618, baseType: !373, size: 64, offset: 2048)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3330, file: !74, line: 620, baseType: !3418, size: 64, offset: 2112)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3419, file: !74, line: 537, baseType: !189)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3419, file: !74, line: 538, baseType: !7, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3419, file: !74, line: 540, baseType: !176, size: 128, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3419, file: !74, line: 543, baseType: !3425, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3330, file: !74, line: 621, baseType: !3428, size: 64, offset: 2176)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !165, !1317}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3330, file: !74, line: 622, baseType: !3432, size: 64, offset: 2240)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !166, file: !67, line: 486, baseType: !3435, size: 64, offset: 4096)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3444, !3445, !3446}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3436, file: !74, line: 643, baseType: !3197, size: 1472)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3436, file: !74, line: 644, baseType: !3200, size: 64, offset: 1472)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3436, file: !74, line: 645, baseType: !3441, size: 64, offset: 1536)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !165, !442}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3436, file: !74, line: 646, baseType: !3200, size: 64, offset: 1600)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3436, file: !74, line: 647, baseType: !3191, size: 64, offset: 1664)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3436, file: !74, line: 648, baseType: !3191, size: 64, offset: 1728)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !166, file: !67, line: 493, baseType: !3448, size: 64, offset: 4160)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !166, file: !67, line: 499, baseType: !176, size: 128, offset: 4224)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !166, file: !67, line: 502, baseType: !3452, size: 64, offset: 4352)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3454)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !166, file: !67, line: 504, baseType: !3456, size: 64, offset: 4416)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !166, file: !67, line: 505, baseType: !373, size: 64, offset: 4480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !166, file: !67, line: 510, baseType: !373, size: 64, offset: 4544)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !166, file: !67, line: 511, baseType: !3460, size: 64, offset: 4608)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !166, file: !67, line: 513, baseType: !3464, size: 64, offset: 4672)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3466)
!3466 = !{!3467, !3468}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3465, file: !67, line: 293, baseType: !7, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3465, file: !67, line: 294, baseType: !280, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !166, file: !67, line: 515, baseType: !176, size: 128, offset: 4736)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !166, file: !67, line: 526, baseType: !3471, offset: 4864)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3472, line: 5, elements: !203)
!3472 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !166, file: !67, line: 528, baseType: !3474, size: 64, offset: 4864)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3476, line: 14, flags: DIFlagFwdDecl)
!3476 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !166, file: !67, line: 529, baseType: !3478, size: 64, offset: 4928)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3228, line: 22, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !166, file: !67, line: 534, baseType: !465, size: 32, offset: 4992)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !166, file: !67, line: 535, baseType: !143, size: 32, offset: 5024)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !166, file: !67, line: 537, baseType: !189, offset: 5056)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !166, file: !67, line: 538, baseType: !176, size: 128, offset: 5056)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !166, file: !67, line: 540, baseType: !3485, size: 64, offset: 5184)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3487, line: 54, size: 960, elements: !3488)
!3487 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3499, !3503, !3504, !3505, !3506, !3510, !3514, !3515}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3486, file: !3487, line: 55, baseType: !173, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3486, file: !3487, line: 56, baseType: !126, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3486, file: !3487, line: 58, baseType: !284, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3486, file: !3487, line: 59, baseType: !284, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3486, file: !3487, line: 60, baseType: !182, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3486, file: !3487, line: 62, baseType: !3182, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3486, file: !3487, line: 63, baseType: !3496, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!230, !165, !3189}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3486, file: !3487, line: 65, baseType: !3500, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !3485}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3486, file: !3487, line: 66, baseType: !3191, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3486, file: !3487, line: 68, baseType: !3200, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3486, file: !3487, line: 70, baseType: !2984, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3486, file: !3487, line: 71, baseType: !3507, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!3001, !165}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3486, file: !3487, line: 73, baseType: !3511, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{null, !165, !3018, !3019}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3486, file: !3487, line: 75, baseType: !3195, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3486, file: !3487, line: 77, baseType: !3312, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !166, file: !67, line: 541, baseType: !284, size: 64, offset: 5248)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !166, file: !67, line: 543, baseType: !3191, size: 64, offset: 5312)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !166, file: !67, line: 544, baseType: !3519, size: 64, offset: 5376)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !166, file: !67, line: 545, baseType: !3522, size: 64, offset: 5440)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !166, file: !67, line: 547, baseType: !442, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !166, file: !67, line: 548, baseType: !442, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !166, file: !67, line: 549, baseType: !442, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !166, file: !67, line: 550, baseType: !442, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !162, file: !6, line: 426, baseType: !165, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !162, file: !6, line: 427, baseType: !136, size: 32, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !162, file: !6, line: 428, baseType: !173, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !162, file: !6, line: 429, baseType: !1225, size: 8, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !162, file: !6, line: 433, baseType: !1225, size: 8, offset: 264)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !162, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !162, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !162, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !162, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !162, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !162, file: !6, line: 444, baseType: !136, size: 32, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !162, file: !6, line: 446, baseType: !1046, size: 192, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !162, file: !6, line: 448, baseType: !3541, size: 128, offset: 576)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3542)
!3542 = !{!3543}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3541, file: !6, line: 418, baseType: !3544, size: 128)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 128, elements: !157)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !162, file: !6, line: 449, baseType: !132, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !162, file: !6, line: 450, baseType: !161, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !162, file: !6, line: 452, baseType: !136, size: 32, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !162, file: !6, line: 459, baseType: !136, size: 32, offset: 864)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !162, file: !6, line: 460, baseType: !136, size: 32, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !162, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !133, file: !6, line: 647, baseType: !3552, size: 640, offset: 640)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3553)
!3553 = !{!3554, !3566, !3574, !3582, !3583, !3584, !3587, !3589, !3590, !3591}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3552, file: !6, line: 68, baseType: !3555, size: 72)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3556)
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3563, !3564, !3565}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3555, file: !88, line: 408, baseType: !1226, size: 8)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3555, file: !88, line: 409, baseType: !1226, size: 8, offset: 8)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3555, file: !88, line: 411, baseType: !1226, size: 8, offset: 16)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3555, file: !88, line: 412, baseType: !1226, size: 8, offset: 24)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3555, file: !88, line: 413, baseType: !3562, size: 16, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2701, line: 29, baseType: !812)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3555, file: !88, line: 414, baseType: !1226, size: 8, offset: 48)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3555, file: !88, line: 418, baseType: !1226, size: 8, offset: 56)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3555, file: !88, line: 419, baseType: !1226, size: 8, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3552, file: !6, line: 69, baseType: !3567, size: 48, offset: 72)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3567, file: !88, line: 690, baseType: !1226, size: 8)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3567, file: !88, line: 691, baseType: !1226, size: 8, offset: 8)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3567, file: !88, line: 693, baseType: !1226, size: 8, offset: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3567, file: !88, line: 694, baseType: !1226, size: 8, offset: 24)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3567, file: !88, line: 695, baseType: !3562, size: 16, offset: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3552, file: !6, line: 70, baseType: !3575, size: 64, offset: 120)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3580}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3575, file: !88, line: 678, baseType: !1226, size: 8)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3575, file: !88, line: 679, baseType: !1226, size: 8, offset: 8)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3575, file: !88, line: 680, baseType: !3562, size: 16, offset: 16)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3575, file: !88, line: 681, baseType: !3581, size: 32, offset: 32)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2701, line: 31, baseType: !145)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3552, file: !6, line: 71, baseType: !176, size: 128, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3552, file: !6, line: 72, baseType: !131, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3552, file: !6, line: 73, baseType: !3585, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3552, file: !6, line: 75, baseType: !3588, size: 64, offset: 448)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3552, file: !6, line: 76, baseType: !136, size: 32, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3552, file: !6, line: 77, baseType: !136, size: 32, offset: 544)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3552, file: !6, line: 78, baseType: !136, size: 32, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !133, file: !6, line: 649, baseType: !166, size: 5568, offset: 1280)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !133, file: !6, line: 651, baseType: !3594, size: 144, offset: 6848)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3594, file: !88, line: 290, baseType: !1226, size: 8)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3594, file: !88, line: 291, baseType: !1226, size: 8, offset: 8)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3594, file: !88, line: 293, baseType: !3562, size: 16, offset: 16)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3594, file: !88, line: 294, baseType: !1226, size: 8, offset: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3594, file: !88, line: 295, baseType: !1226, size: 8, offset: 40)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3594, file: !88, line: 296, baseType: !1226, size: 8, offset: 48)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3594, file: !88, line: 297, baseType: !1226, size: 8, offset: 56)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3594, file: !88, line: 298, baseType: !3562, size: 16, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3594, file: !88, line: 299, baseType: !3562, size: 16, offset: 80)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3594, file: !88, line: 300, baseType: !3562, size: 16, offset: 96)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3594, file: !88, line: 301, baseType: !1226, size: 8, offset: 112)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3594, file: !88, line: 302, baseType: !1226, size: 8, offset: 120)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3594, file: !88, line: 303, baseType: !1226, size: 8, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3594, file: !88, line: 304, baseType: !1226, size: 8, offset: 136)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !133, file: !6, line: 652, baseType: !3611, size: 64, offset: 7040)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3613)
!3613 = !{!3614, !3622, !3630, !3642, !3655, !3664}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3612, file: !6, line: 397, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3616, file: !88, line: 845, baseType: !1226, size: 8)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3616, file: !88, line: 846, baseType: !1226, size: 8, offset: 8)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3616, file: !88, line: 848, baseType: !3562, size: 16, offset: 16)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3616, file: !88, line: 849, baseType: !1226, size: 8, offset: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3612, file: !6, line: 400, baseType: !3623, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3624, file: !88, line: 896, baseType: !1226, size: 8)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3624, file: !88, line: 897, baseType: !1226, size: 8, offset: 8)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3624, file: !88, line: 898, baseType: !1226, size: 8, offset: 16)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3624, file: !88, line: 899, baseType: !3581, size: 32, offset: 24)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3612, file: !6, line: 401, baseType: !3631, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3632, file: !88, line: 918, baseType: !1226, size: 8)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3632, file: !88, line: 919, baseType: !1226, size: 8, offset: 8)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3632, file: !88, line: 920, baseType: !1226, size: 8, offset: 16)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3632, file: !88, line: 921, baseType: !1226, size: 8, offset: 24)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3632, file: !88, line: 923, baseType: !3562, size: 16, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3632, file: !88, line: 928, baseType: !1226, size: 8, offset: 48)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3632, file: !88, line: 929, baseType: !1226, size: 8, offset: 56)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3632, file: !88, line: 930, baseType: !3562, size: 16, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3612, file: !6, line: 402, baseType: !3643, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3644, file: !88, line: 956, baseType: !1226, size: 8)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3644, file: !88, line: 957, baseType: !1226, size: 8, offset: 8)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3644, file: !88, line: 958, baseType: !1226, size: 8, offset: 16)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3644, file: !88, line: 959, baseType: !1226, size: 8, offset: 24)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3644, file: !88, line: 960, baseType: !3581, size: 32, offset: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3644, file: !88, line: 963, baseType: !3562, size: 16, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3644, file: !88, line: 967, baseType: !3562, size: 16, offset: 80)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3644, file: !88, line: 968, baseType: !3654, size: 32, offset: 96)
!3654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3581, size: 32, elements: !1244)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3612, file: !6, line: 403, baseType: !3656, size: 64, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3657, file: !88, line: 941, baseType: !1226, size: 8)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3657, file: !88, line: 942, baseType: !1226, size: 8, offset: 8)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3657, file: !88, line: 943, baseType: !1226, size: 8, offset: 16)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3657, file: !88, line: 944, baseType: !1226, size: 8, offset: 24)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3657, file: !88, line: 945, baseType: !2502, size: 128, offset: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3612, file: !6, line: 404, baseType: !3665, size: 64, offset: 320)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3666, file: !88, line: 1081, baseType: !1226, size: 8)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3666, file: !88, line: 1082, baseType: !1226, size: 8, offset: 8)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3666, file: !88, line: 1083, baseType: !1226, size: 8, offset: 16)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !133, file: !6, line: 653, baseType: !3672, size: 64, offset: 7104)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3674)
!3674 = !{!3675, !3686, !3687, !3700, !3742, !3751, !3752}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3673, file: !6, line: 375, baseType: !3676, size: 72)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3676, file: !88, line: 350, baseType: !1226, size: 8)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3676, file: !88, line: 351, baseType: !1226, size: 8, offset: 8)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3676, file: !88, line: 353, baseType: !3562, size: 16, offset: 16)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3676, file: !88, line: 354, baseType: !1226, size: 8, offset: 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3676, file: !88, line: 355, baseType: !1226, size: 8, offset: 40)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3676, file: !88, line: 356, baseType: !1226, size: 8, offset: 48)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3676, file: !88, line: 357, baseType: !1226, size: 8, offset: 56)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3676, file: !88, line: 358, baseType: !1226, size: 8, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3673, file: !6, line: 377, baseType: !230, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3673, file: !6, line: 381, baseType: !3688, size: 1024, offset: 192)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3689, size: 1024, elements: !140)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3691)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3690, file: !88, line: 784, baseType: !1226, size: 8)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3690, file: !88, line: 785, baseType: !1226, size: 8, offset: 8)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3690, file: !88, line: 787, baseType: !1226, size: 8, offset: 16)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3690, file: !88, line: 788, baseType: !1226, size: 8, offset: 24)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3690, file: !88, line: 789, baseType: !1226, size: 8, offset: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3690, file: !88, line: 790, baseType: !1226, size: 8, offset: 40)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3690, file: !88, line: 791, baseType: !1226, size: 8, offset: 48)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3690, file: !88, line: 792, baseType: !1226, size: 8, offset: 56)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3673, file: !6, line: 385, baseType: !3701, size: 2048, offset: 1216)
!3701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3702, size: 2048, elements: !2086)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3704)
!3704 = !{!3705, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3703, file: !6, line: 235, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3708)
!3708 = !{!3709, !3721, !3722, !3723, !3725}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3707, file: !6, line: 83, baseType: !3710, size: 72)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3710, file: !88, line: 390, baseType: !1226, size: 8)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3710, file: !88, line: 391, baseType: !1226, size: 8, offset: 8)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3710, file: !88, line: 393, baseType: !1226, size: 8, offset: 16)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3710, file: !88, line: 394, baseType: !1226, size: 8, offset: 24)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3710, file: !88, line: 395, baseType: !1226, size: 8, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3710, file: !88, line: 396, baseType: !1226, size: 8, offset: 40)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3710, file: !88, line: 397, baseType: !1226, size: 8, offset: 48)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3710, file: !88, line: 398, baseType: !1226, size: 8, offset: 56)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3710, file: !88, line: 399, baseType: !1226, size: 8, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3707, file: !6, line: 85, baseType: !136, size: 32, offset: 96)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3707, file: !6, line: 86, baseType: !3588, size: 64, offset: 128)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3707, file: !6, line: 91, baseType: !3724, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3707, file: !6, line: 93, baseType: !230, size: 64, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3703, file: !6, line: 237, baseType: !3706, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3703, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3703, file: !6, line: 243, baseType: !3689, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3703, file: !6, line: 245, baseType: !136, size: 32, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3703, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3703, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3703, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3703, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3703, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3703, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3703, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3703, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3703, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3703, file: !6, line: 257, baseType: !166, size: 5568, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3703, file: !6, line: 258, baseType: !165, size: 64, offset: 5952)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3703, file: !6, line: 259, baseType: !1826, size: 256, offset: 6016)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3673, file: !6, line: 389, baseType: !3743, size: 2048, offset: 3264)
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3744, size: 2048, elements: !2086)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3746)
!3746 = !{!3747, !3748, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3745, file: !6, line: 323, baseType: !7, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3745, file: !6, line: 324, baseType: !3160, size: 32, offset: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3745, file: !6, line: 328, baseType: !3750, offset: 64)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3707, elements: !2187)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3673, file: !6, line: 391, baseType: !3588, size: 64, offset: 5312)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3673, file: !6, line: 392, baseType: !136, size: 32, offset: 5376)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !133, file: !6, line: 655, baseType: !3672, size: 64, offset: 7168)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !133, file: !6, line: 656, baseType: !3755, size: 1024, offset: 7232)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3724, size: 1024, elements: !140)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !133, file: !6, line: 657, baseType: !3755, size: 1024, offset: 8256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !133, file: !6, line: 659, baseType: !3758, size: 64, offset: 9280)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !133, file: !6, line: 661, baseType: !272, size: 16, offset: 9344)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !133, file: !6, line: 662, baseType: !1225, size: 8, offset: 9360)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !133, file: !6, line: 663, baseType: !1225, size: 8, offset: 9368)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !133, file: !6, line: 664, baseType: !1225, size: 8, offset: 9376)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !133, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !133, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !133, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !133, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !133, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !133, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !133, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !133, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !133, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !133, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !133, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !133, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !133, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !133, file: !6, line: 679, baseType: !136, size: 32, offset: 9408)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !133, file: !6, line: 682, baseType: !230, size: 64, offset: 9472)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !133, file: !6, line: 683, baseType: !230, size: 64, offset: 9536)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !133, file: !6, line: 684, baseType: !230, size: 64, offset: 9600)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !133, file: !6, line: 686, baseType: !176, size: 128, offset: 9664)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !133, file: !6, line: 688, baseType: !136, size: 32, offset: 9792)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !133, file: !6, line: 690, baseType: !143, size: 32, offset: 9824)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !133, file: !6, line: 691, baseType: !699, size: 32, offset: 9856)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !133, file: !6, line: 693, baseType: !280, size: 64, offset: 9920)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !133, file: !6, line: 696, baseType: !280, size: 64, offset: 9984)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !133, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !133, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !133, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !133, file: !6, line: 702, baseType: !3790, size: 64, offset: 10112)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !133, file: !6, line: 703, baseType: !136, size: 32, offset: 10176)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !133, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !133, file: !6, line: 705, baseType: !3795, size: 64, offset: 10240)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3796)
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3795, file: !6, line: 506, baseType: !7, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3795, file: !6, line: 512, baseType: !136, size: 32, offset: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !133, file: !6, line: 706, baseType: !3800, size: 128, offset: 10304)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3805}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3800, file: !6, line: 529, baseType: !7, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3800, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3800, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3800, file: !6, line: 551, baseType: !136, size: 32, offset: 96)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !133, file: !6, line: 707, baseType: !3800, size: 128, offset: 10432)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !133, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !133, file: !6, line: 710, baseType: !811, size: 16, offset: 10592)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !133, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!3812 = !{!0, !3813, !3818, !3823, !3828, !3833, !3836, !3897, !3900, !3908, !3910}
!3813 = !DIGlobalVariableExpression(var: !3814, expr: !DIExpression())
!3814 = distinct !DIGlobalVariable(name: "__exitcall_idmouse_driver_exit", scope: !2, file: !3, line: 402, type: !3815, isLocal: true, isDefinition: true)
!3815 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3816, line: 117, baseType: !3817)
!3816 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!3818 = !DIGlobalVariableExpression(var: !3819, expr: !DIExpression())
!3819 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author212", scope: !2, file: !3, line: 404, type: !3820, isLocal: true, isDefinition: true, align: 8)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 464, elements: !3821)
!3821 = !{!3822}
!3822 = !DISubrange(count: 58)
!3823 = !DIGlobalVariableExpression(var: !3824, expr: !DIExpression())
!3824 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description213", scope: !2, file: !3, line: 405, type: !3825, isLocal: true, isDefinition: true, align: 8)
!3825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 488, elements: !3826)
!3826 = !{!3827}
!3827 = !DISubrange(count: 61)
!3828 = !DIGlobalVariableExpression(var: !3829, expr: !DIExpression())
!3829 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file214", scope: !2, file: !3, line: 406, type: !3830, isLocal: true, isDefinition: true, align: 8)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 304, elements: !3831)
!3831 = !{!3832}
!3832 = !DISubrange(count: 38)
!3833 = !DIGlobalVariableExpression(var: !3834, expr: !DIExpression())
!3834 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license215", scope: !2, file: !3, line: 406, type: !3835, isLocal: true, isDefinition: true, align: 8)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 160, elements: !2057)
!3836 = !DIGlobalVariableExpression(var: !3837, expr: !DIExpression())
!3837 = distinct !DIGlobalVariable(name: "idmouse_driver", scope: !2, file: !3, line: 112, type: !3838, isLocal: true, isDefinition: true)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3839)
!3839 = !{!3840, !3841, !3862, !3866, !3870, !3874, !3878, !3879, !3880, !3881, !3882, !3883, !3888, !3893, !3894, !3895, !3896}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3838, file: !6, line: 1185, baseType: !173, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3838, file: !6, line: 1187, baseType: !3842, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!136, !3702, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3253, line: 121, size: 256, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3847, file: !3253, line: 123, baseType: !812, size: 16)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3847, file: !3253, line: 126, baseType: !812, size: 16, offset: 16)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3847, file: !3253, line: 127, baseType: !812, size: 16, offset: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3847, file: !3253, line: 128, baseType: !812, size: 16, offset: 48)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3847, file: !3253, line: 129, baseType: !812, size: 16, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3847, file: !3253, line: 132, baseType: !1226, size: 8, offset: 80)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3847, file: !3253, line: 133, baseType: !1226, size: 8, offset: 88)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3847, file: !3253, line: 134, baseType: !1226, size: 8, offset: 96)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3847, file: !3253, line: 137, baseType: !1226, size: 8, offset: 104)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3847, file: !3253, line: 138, baseType: !1226, size: 8, offset: 112)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3847, file: !3253, line: 139, baseType: !1226, size: 8, offset: 120)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3847, file: !3253, line: 142, baseType: !1226, size: 8, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3847, file: !3253, line: 145, baseType: !3272, size: 64, align: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3838, file: !6, line: 1190, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3702}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3838, file: !6, line: 1192, baseType: !3867, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!136, !3702, !7, !131}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3838, file: !6, line: 1195, baseType: !3871, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!136, !3702, !3283}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3838, file: !6, line: 1196, baseType: !3875, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!136, !3702}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3838, file: !6, line: 1197, baseType: !3875, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3838, file: !6, line: 1199, baseType: !3875, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3838, file: !6, line: 1200, baseType: !3875, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3838, file: !6, line: 1202, baseType: !3845, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3838, file: !6, line: 1203, baseType: !284, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3838, file: !6, line: 1205, baseType: !3884, size: 128, offset: 704)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3884, file: !6, line: 1092, baseType: !189)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3884, file: !6, line: 1093, baseType: !176, size: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3838, file: !6, line: 1206, baseType: !3889, size: 1216, offset: 832)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3889, file: !6, line: 1114, baseType: !3241, size: 1152)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3889, file: !6, line: 1115, baseType: !136, size: 32, offset: 1152)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3838, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3838, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3838, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3838, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3897 = !DIGlobalVariableExpression(var: !3898, expr: !DIExpression())
!3898 = distinct !DIGlobalVariable(name: "__key", scope: !3899, file: !3, line: 337, type: !597, isLocal: true, isDefinition: true)
!3899 = distinct !DISubprogram(name: "idmouse_probe", scope: !3, file: !3, line: 315, type: !3843, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3900 = !DIGlobalVariableExpression(var: !3901, expr: !DIExpression())
!3901 = distinct !DIGlobalVariable(name: "idmouse_class", scope: !2, file: !3, line: 105, type: !3902, isLocal: true, isDefinition: true)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_class_driver", file: !6, line: 1274, size: 256, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3907}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3902, file: !6, line: 1275, baseType: !230, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3902, file: !6, line: 1276, baseType: !3496, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3902, file: !6, line: 1277, baseType: !2658, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "minor_base", scope: !3902, file: !6, line: 1278, baseType: !136, size: 32, offset: 192)
!3908 = !DIGlobalVariableExpression(var: !3909, expr: !DIExpression())
!3909 = distinct !DIGlobalVariable(name: "idmouse_fops", scope: !2, file: !3, line: 96, type: !2659, isLocal: true, isDefinition: true)
!3910 = !DIGlobalVariableExpression(var: !3911, expr: !DIExpression())
!3911 = distinct !DIGlobalVariable(name: "idmouse_table", scope: !2, file: !3, line: 45, type: !3912, isLocal: true, isDefinition: true)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3846, size: 768, elements: !231)
!3913 = !{i32 7, !"Dwarf Version", i32 4}
!3914 = !{i32 2, !"Debug Info Version", i32 3}
!3915 = !{i32 1, !"wchar_size", i32 2}
!3916 = !{i32 1, !"Code Model", i32 2}
!3917 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3918 = distinct !DISubprogram(name: "idmouse_driver_init", scope: !3, file: !3, line: 402, type: !3919, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!136}
!3921 = !DILocation(line: 402, column: 1, scope: !3918)
!3922 = distinct !DISubprogram(name: "idmouse_driver_exit", scope: !3, file: !3, line: 402, type: !1747, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3923 = !DILocation(line: 402, column: 1, scope: !3922)
!3924 = !DILocalVariable(name: "s", arg: 1, scope: !3925, file: !114, line: 445, type: !887)
!3925 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !3926, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!131, !887, !129, !277}
!3928 = !DILocation(line: 445, column: 72, scope: !3925, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 552, column: 10, scope: !3930, inlinedAt: !3935)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !114, line: 540, column: 34)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !114, line: 540, column: 6)
!3932 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !3933, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!131, !277, !129}
!3935 = distinct !DILocation(line: 352, column: 24, scope: !3899)
!3936 = !DILocalVariable(name: "flags", arg: 2, scope: !3925, file: !114, line: 446, type: !129)
!3937 = !DILocation(line: 446, column: 9, scope: !3925, inlinedAt: !3929)
!3938 = !DILocalVariable(name: "size", arg: 3, scope: !3925, file: !114, line: 446, type: !277)
!3939 = !DILocation(line: 446, column: 23, scope: !3925, inlinedAt: !3929)
!3940 = !DILocalVariable(name: "ret", scope: !3925, file: !114, line: 448, type: !131)
!3941 = !DILocation(line: 448, column: 8, scope: !3925, inlinedAt: !3929)
!3942 = !DILocalVariable(name: "flags", arg: 1, scope: !3943, file: !114, line: 318, type: !129)
!3943 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !3944, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!113, !129}
!3946 = !DILocation(line: 318, column: 67, scope: !3943, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 553, column: 20, scope: !3930, inlinedAt: !3935)
!3948 = !DILocalVariable(name: "size", arg: 1, scope: !3949, file: !114, line: 346, type: !277)
!3949 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !3950, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!7, !277}
!3952 = !DILocation(line: 346, column: 58, scope: !3949, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 547, column: 11, scope: !3930, inlinedAt: !3935)
!3954 = !DILocalVariable(name: "size", arg: 1, scope: !3955, file: !114, line: 472, type: !277)
!3955 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !3956, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!131, !277, !129, !7}
!3958 = !DILocation(line: 472, column: 28, scope: !3955, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 481, column: 9, scope: !3960, inlinedAt: !3961)
!3960 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !3933, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3961 = distinct !DILocation(line: 545, column: 11, scope: !3962, inlinedAt: !3935)
!3962 = distinct !DILexicalBlock(scope: !3930, file: !114, line: 544, column: 7)
!3963 = !DILocalVariable(name: "flags", arg: 2, scope: !3955, file: !114, line: 472, type: !129)
!3964 = !DILocation(line: 472, column: 40, scope: !3955, inlinedAt: !3959)
!3965 = !DILocalVariable(name: "order", arg: 3, scope: !3955, file: !114, line: 472, type: !7)
!3966 = !DILocation(line: 472, column: 60, scope: !3955, inlinedAt: !3959)
!3967 = !DILocalVariable(name: "size", arg: 1, scope: !3960, file: !114, line: 478, type: !277)
!3968 = !DILocation(line: 478, column: 51, scope: !3960, inlinedAt: !3961)
!3969 = !DILocalVariable(name: "flags", arg: 2, scope: !3960, file: !114, line: 478, type: !129)
!3970 = !DILocation(line: 478, column: 63, scope: !3960, inlinedAt: !3961)
!3971 = !DILocalVariable(name: "order", scope: !3960, file: !114, line: 480, type: !7)
!3972 = !DILocation(line: 480, column: 15, scope: !3960, inlinedAt: !3961)
!3973 = !DILocalVariable(name: "size", arg: 1, scope: !3932, file: !114, line: 538, type: !277)
!3974 = !DILocation(line: 538, column: 45, scope: !3932, inlinedAt: !3935)
!3975 = !DILocalVariable(name: "flags", arg: 2, scope: !3932, file: !114, line: 538, type: !129)
!3976 = !DILocation(line: 538, column: 57, scope: !3932, inlinedAt: !3935)
!3977 = !DILocalVariable(name: "index", scope: !3930, file: !114, line: 542, type: !7)
!3978 = !DILocation(line: 542, column: 16, scope: !3930, inlinedAt: !3935)
!3979 = !DILocalVariable(name: "interface", arg: 1, scope: !3899, file: !3, line: 315, type: !3702)
!3980 = !DILocation(line: 315, column: 48, scope: !3899)
!3981 = !DILocalVariable(name: "id", arg: 2, scope: !3899, file: !3, line: 316, type: !3845)
!3982 = !DILocation(line: 316, column: 33, scope: !3899)
!3983 = !DILocalVariable(name: "udev", scope: !3899, file: !3, line: 318, type: !132)
!3984 = !DILocation(line: 318, column: 21, scope: !3899)
!3985 = !DILocation(line: 318, column: 48, scope: !3899)
!3986 = !DILocation(line: 318, column: 28, scope: !3899)
!3987 = !DILocalVariable(name: "dev", scope: !3899, file: !3, line: 319, type: !3988)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_idmouse", file: !3, line: 65, size: 640, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3989, file: !3, line: 67, baseType: !132, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3989, file: !3, line: 68, baseType: !3702, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_buffer", scope: !3989, file: !3, line: 70, baseType: !3588, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_size", scope: !3989, file: !3, line: 71, baseType: !277, size: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "orig_bi_size", scope: !3989, file: !3, line: 72, baseType: !277, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_endpointAddr", scope: !3989, file: !3, line: 73, baseType: !1226, size: 8, offset: 320)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3989, file: !3, line: 75, baseType: !136, size: 32, offset: 352)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3989, file: !3, line: 76, baseType: !136, size: 32, offset: 384)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3989, file: !3, line: 77, baseType: !1046, size: 192, offset: 448)
!4000 = !DILocation(line: 319, column: 22, scope: !3899)
!4001 = !DILocalVariable(name: "iface_desc", scope: !3899, file: !3, line: 320, type: !3706)
!4002 = !DILocation(line: 320, column: 29, scope: !3899)
!4003 = !DILocalVariable(name: "endpoint", scope: !3899, file: !3, line: 321, type: !4004)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!4005 = !DILocation(line: 321, column: 34, scope: !3899)
!4006 = !DILocalVariable(name: "result", scope: !3899, file: !3, line: 322, type: !136)
!4007 = !DILocation(line: 322, column: 6, scope: !3899)
!4008 = !DILocation(line: 325, column: 15, scope: !3899)
!4009 = !DILocation(line: 325, column: 26, scope: !3899)
!4010 = !DILocation(line: 325, column: 13, scope: !3899)
!4011 = !DILocation(line: 326, column: 6, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 326, column: 6)
!4013 = !DILocation(line: 326, column: 18, scope: !4012)
!4014 = !DILocation(line: 326, column: 23, scope: !4012)
!4015 = !DILocation(line: 326, column: 39, scope: !4012)
!4016 = !DILocation(line: 326, column: 6, scope: !3899)
!4017 = !DILocation(line: 327, column: 3, scope: !4012)
!4018 = !DILocation(line: 329, column: 6, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 329, column: 6)
!4020 = !DILocation(line: 329, column: 18, scope: !4019)
!4021 = !DILocation(line: 329, column: 23, scope: !4019)
!4022 = !DILocation(line: 329, column: 37, scope: !4019)
!4023 = !DILocation(line: 329, column: 6, scope: !3899)
!4024 = !DILocation(line: 330, column: 3, scope: !4019)
!4025 = !DILocation(line: 333, column: 8, scope: !3899)
!4026 = !DILocation(line: 333, column: 6, scope: !3899)
!4027 = !DILocation(line: 334, column: 6, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 334, column: 6)
!4029 = !DILocation(line: 334, column: 10, scope: !4028)
!4030 = !DILocation(line: 334, column: 6, scope: !3899)
!4031 = !DILocation(line: 335, column: 3, scope: !4028)
!4032 = !DILocation(line: 337, column: 2, scope: !3899)
!4033 = !DILocation(line: 337, column: 2, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 337, column: 2)
!4035 = !DILocation(line: 338, column: 14, scope: !3899)
!4036 = !DILocation(line: 338, column: 2, scope: !3899)
!4037 = !DILocation(line: 338, column: 7, scope: !3899)
!4038 = !DILocation(line: 338, column: 12, scope: !3899)
!4039 = !DILocation(line: 339, column: 19, scope: !3899)
!4040 = !DILocation(line: 339, column: 2, scope: !3899)
!4041 = !DILocation(line: 339, column: 7, scope: !3899)
!4042 = !DILocation(line: 339, column: 17, scope: !3899)
!4043 = !DILocation(line: 342, column: 37, scope: !3899)
!4044 = !DILocation(line: 342, column: 11, scope: !3899)
!4045 = !DILocation(line: 342, column: 9, scope: !3899)
!4046 = !DILocation(line: 343, column: 6, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 343, column: 6)
!4048 = !DILocation(line: 343, column: 6, scope: !3899)
!4049 = !DILocation(line: 344, column: 3, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 343, column: 14)
!4051 = !DILocation(line: 345, column: 18, scope: !4050)
!4052 = !DILocation(line: 345, column: 3, scope: !4050)
!4053 = !DILocation(line: 346, column: 10, scope: !4050)
!4054 = !DILocation(line: 346, column: 3, scope: !4050)
!4055 = !DILocation(line: 349, column: 40, scope: !3899)
!4056 = !DILocation(line: 349, column: 22, scope: !3899)
!4057 = !DILocation(line: 349, column: 2, scope: !3899)
!4058 = !DILocation(line: 349, column: 7, scope: !3899)
!4059 = !DILocation(line: 349, column: 20, scope: !3899)
!4060 = !DILocation(line: 350, column: 2, scope: !3899)
!4061 = !DILocation(line: 350, column: 7, scope: !3899)
!4062 = !DILocation(line: 350, column: 20, scope: !3899)
!4063 = !DILocation(line: 351, column: 30, scope: !3899)
!4064 = !DILocation(line: 351, column: 40, scope: !3899)
!4065 = !DILocation(line: 351, column: 2, scope: !3899)
!4066 = !DILocation(line: 351, column: 7, scope: !3899)
!4067 = !DILocation(line: 351, column: 28, scope: !3899)
!4068 = !DILocation(line: 352, column: 42, scope: !3899)
!4069 = !DILocation(line: 352, column: 47, scope: !3899)
!4070 = !DILocation(line: 352, column: 40, scope: !3899)
!4071 = !DILocation(line: 540, column: 27, scope: !3931, inlinedAt: !3935)
!4072 = !DILocation(line: 540, column: 6, scope: !3931, inlinedAt: !3935)
!4073 = !DILocation(line: 540, column: 6, scope: !3932, inlinedAt: !3935)
!4074 = !DILocation(line: 544, column: 7, scope: !3962, inlinedAt: !3935)
!4075 = !DILocation(line: 544, column: 12, scope: !3962, inlinedAt: !3935)
!4076 = !DILocation(line: 544, column: 7, scope: !3930, inlinedAt: !3935)
!4077 = !DILocation(line: 545, column: 25, scope: !3962, inlinedAt: !3935)
!4078 = !DILocation(line: 545, column: 31, scope: !3962, inlinedAt: !3935)
!4079 = !DILocation(line: 480, column: 33, scope: !3960, inlinedAt: !3961)
!4080 = !DILocation(line: 480, column: 23, scope: !3960, inlinedAt: !3961)
!4081 = !DILocation(line: 481, column: 29, scope: !3960, inlinedAt: !3961)
!4082 = !DILocation(line: 481, column: 35, scope: !3960, inlinedAt: !3961)
!4083 = !DILocation(line: 481, column: 42, scope: !3960, inlinedAt: !3961)
!4084 = !DILocation(line: 474, column: 23, scope: !3955, inlinedAt: !3959)
!4085 = !DILocation(line: 474, column: 29, scope: !3955, inlinedAt: !3959)
!4086 = !DILocation(line: 474, column: 36, scope: !3955, inlinedAt: !3959)
!4087 = !DILocation(line: 474, column: 9, scope: !3955, inlinedAt: !3959)
!4088 = !DILocation(line: 545, column: 4, scope: !3962, inlinedAt: !3935)
!4089 = !DILocation(line: 547, column: 25, scope: !3930, inlinedAt: !3935)
!4090 = !DILocation(line: 348, column: 7, scope: !4091, inlinedAt: !3953)
!4091 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 348, column: 6)
!4092 = !DILocation(line: 348, column: 6, scope: !3949, inlinedAt: !3953)
!4093 = !DILocation(line: 349, column: 3, scope: !4091, inlinedAt: !3953)
!4094 = !DILocation(line: 351, column: 6, scope: !4095, inlinedAt: !3953)
!4095 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 351, column: 6)
!4096 = !DILocation(line: 351, column: 11, scope: !4095, inlinedAt: !3953)
!4097 = !DILocation(line: 351, column: 6, scope: !3949, inlinedAt: !3953)
!4098 = !DILocation(line: 352, column: 3, scope: !4095, inlinedAt: !3953)
!4099 = !DILocation(line: 354, column: 32, scope: !4100, inlinedAt: !3953)
!4100 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 354, column: 6)
!4101 = !DILocation(line: 354, column: 37, scope: !4100, inlinedAt: !3953)
!4102 = !DILocation(line: 354, column: 42, scope: !4100, inlinedAt: !3953)
!4103 = !DILocation(line: 354, column: 45, scope: !4100, inlinedAt: !3953)
!4104 = !DILocation(line: 354, column: 50, scope: !4100, inlinedAt: !3953)
!4105 = !DILocation(line: 354, column: 6, scope: !3949, inlinedAt: !3953)
!4106 = !DILocation(line: 355, column: 3, scope: !4100, inlinedAt: !3953)
!4107 = !DILocation(line: 356, column: 32, scope: !4108, inlinedAt: !3953)
!4108 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 356, column: 6)
!4109 = !DILocation(line: 356, column: 37, scope: !4108, inlinedAt: !3953)
!4110 = !DILocation(line: 356, column: 43, scope: !4108, inlinedAt: !3953)
!4111 = !DILocation(line: 356, column: 46, scope: !4108, inlinedAt: !3953)
!4112 = !DILocation(line: 356, column: 51, scope: !4108, inlinedAt: !3953)
!4113 = !DILocation(line: 356, column: 6, scope: !3949, inlinedAt: !3953)
!4114 = !DILocation(line: 357, column: 3, scope: !4108, inlinedAt: !3953)
!4115 = !DILocation(line: 358, column: 6, scope: !4116, inlinedAt: !3953)
!4116 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 358, column: 6)
!4117 = !DILocation(line: 358, column: 11, scope: !4116, inlinedAt: !3953)
!4118 = !DILocation(line: 358, column: 6, scope: !3949, inlinedAt: !3953)
!4119 = !DILocation(line: 358, column: 26, scope: !4116, inlinedAt: !3953)
!4120 = !DILocation(line: 359, column: 6, scope: !4121, inlinedAt: !3953)
!4121 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 359, column: 6)
!4122 = !DILocation(line: 359, column: 11, scope: !4121, inlinedAt: !3953)
!4123 = !DILocation(line: 359, column: 6, scope: !3949, inlinedAt: !3953)
!4124 = !DILocation(line: 359, column: 26, scope: !4121, inlinedAt: !3953)
!4125 = !DILocation(line: 360, column: 6, scope: !4126, inlinedAt: !3953)
!4126 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 360, column: 6)
!4127 = !DILocation(line: 360, column: 11, scope: !4126, inlinedAt: !3953)
!4128 = !DILocation(line: 360, column: 6, scope: !3949, inlinedAt: !3953)
!4129 = !DILocation(line: 360, column: 26, scope: !4126, inlinedAt: !3953)
!4130 = !DILocation(line: 361, column: 6, scope: !4131, inlinedAt: !3953)
!4131 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 361, column: 6)
!4132 = !DILocation(line: 361, column: 11, scope: !4131, inlinedAt: !3953)
!4133 = !DILocation(line: 361, column: 6, scope: !3949, inlinedAt: !3953)
!4134 = !DILocation(line: 361, column: 26, scope: !4131, inlinedAt: !3953)
!4135 = !DILocation(line: 362, column: 6, scope: !4136, inlinedAt: !3953)
!4136 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 362, column: 6)
!4137 = !DILocation(line: 362, column: 11, scope: !4136, inlinedAt: !3953)
!4138 = !DILocation(line: 362, column: 6, scope: !3949, inlinedAt: !3953)
!4139 = !DILocation(line: 362, column: 26, scope: !4136, inlinedAt: !3953)
!4140 = !DILocation(line: 363, column: 6, scope: !4141, inlinedAt: !3953)
!4141 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 363, column: 6)
!4142 = !DILocation(line: 363, column: 11, scope: !4141, inlinedAt: !3953)
!4143 = !DILocation(line: 363, column: 6, scope: !3949, inlinedAt: !3953)
!4144 = !DILocation(line: 363, column: 26, scope: !4141, inlinedAt: !3953)
!4145 = !DILocation(line: 364, column: 6, scope: !4146, inlinedAt: !3953)
!4146 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 364, column: 6)
!4147 = !DILocation(line: 364, column: 11, scope: !4146, inlinedAt: !3953)
!4148 = !DILocation(line: 364, column: 6, scope: !3949, inlinedAt: !3953)
!4149 = !DILocation(line: 364, column: 26, scope: !4146, inlinedAt: !3953)
!4150 = !DILocation(line: 365, column: 6, scope: !4151, inlinedAt: !3953)
!4151 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 365, column: 6)
!4152 = !DILocation(line: 365, column: 11, scope: !4151, inlinedAt: !3953)
!4153 = !DILocation(line: 365, column: 6, scope: !3949, inlinedAt: !3953)
!4154 = !DILocation(line: 365, column: 26, scope: !4151, inlinedAt: !3953)
!4155 = !DILocation(line: 366, column: 6, scope: !4156, inlinedAt: !3953)
!4156 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 366, column: 6)
!4157 = !DILocation(line: 366, column: 11, scope: !4156, inlinedAt: !3953)
!4158 = !DILocation(line: 366, column: 6, scope: !3949, inlinedAt: !3953)
!4159 = !DILocation(line: 366, column: 26, scope: !4156, inlinedAt: !3953)
!4160 = !DILocation(line: 367, column: 6, scope: !4161, inlinedAt: !3953)
!4161 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 367, column: 6)
!4162 = !DILocation(line: 367, column: 11, scope: !4161, inlinedAt: !3953)
!4163 = !DILocation(line: 367, column: 6, scope: !3949, inlinedAt: !3953)
!4164 = !DILocation(line: 367, column: 26, scope: !4161, inlinedAt: !3953)
!4165 = !DILocation(line: 368, column: 6, scope: !4166, inlinedAt: !3953)
!4166 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 368, column: 6)
!4167 = !DILocation(line: 368, column: 11, scope: !4166, inlinedAt: !3953)
!4168 = !DILocation(line: 368, column: 6, scope: !3949, inlinedAt: !3953)
!4169 = !DILocation(line: 368, column: 26, scope: !4166, inlinedAt: !3953)
!4170 = !DILocation(line: 369, column: 6, scope: !4171, inlinedAt: !3953)
!4171 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 369, column: 6)
!4172 = !DILocation(line: 369, column: 11, scope: !4171, inlinedAt: !3953)
!4173 = !DILocation(line: 369, column: 6, scope: !3949, inlinedAt: !3953)
!4174 = !DILocation(line: 369, column: 26, scope: !4171, inlinedAt: !3953)
!4175 = !DILocation(line: 370, column: 6, scope: !4176, inlinedAt: !3953)
!4176 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 370, column: 6)
!4177 = !DILocation(line: 370, column: 11, scope: !4176, inlinedAt: !3953)
!4178 = !DILocation(line: 370, column: 6, scope: !3949, inlinedAt: !3953)
!4179 = !DILocation(line: 370, column: 26, scope: !4176, inlinedAt: !3953)
!4180 = !DILocation(line: 371, column: 6, scope: !4181, inlinedAt: !3953)
!4181 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 371, column: 6)
!4182 = !DILocation(line: 371, column: 11, scope: !4181, inlinedAt: !3953)
!4183 = !DILocation(line: 371, column: 6, scope: !3949, inlinedAt: !3953)
!4184 = !DILocation(line: 371, column: 26, scope: !4181, inlinedAt: !3953)
!4185 = !DILocation(line: 372, column: 6, scope: !4186, inlinedAt: !3953)
!4186 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 372, column: 6)
!4187 = !DILocation(line: 372, column: 11, scope: !4186, inlinedAt: !3953)
!4188 = !DILocation(line: 372, column: 6, scope: !3949, inlinedAt: !3953)
!4189 = !DILocation(line: 372, column: 26, scope: !4186, inlinedAt: !3953)
!4190 = !DILocation(line: 373, column: 6, scope: !4191, inlinedAt: !3953)
!4191 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 373, column: 6)
!4192 = !DILocation(line: 373, column: 11, scope: !4191, inlinedAt: !3953)
!4193 = !DILocation(line: 373, column: 6, scope: !3949, inlinedAt: !3953)
!4194 = !DILocation(line: 373, column: 26, scope: !4191, inlinedAt: !3953)
!4195 = !DILocation(line: 374, column: 6, scope: !4196, inlinedAt: !3953)
!4196 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 374, column: 6)
!4197 = !DILocation(line: 374, column: 11, scope: !4196, inlinedAt: !3953)
!4198 = !DILocation(line: 374, column: 6, scope: !3949, inlinedAt: !3953)
!4199 = !DILocation(line: 374, column: 26, scope: !4196, inlinedAt: !3953)
!4200 = !DILocation(line: 375, column: 6, scope: !4201, inlinedAt: !3953)
!4201 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 375, column: 6)
!4202 = !DILocation(line: 375, column: 11, scope: !4201, inlinedAt: !3953)
!4203 = !DILocation(line: 375, column: 6, scope: !3949, inlinedAt: !3953)
!4204 = !DILocation(line: 375, column: 27, scope: !4201, inlinedAt: !3953)
!4205 = !DILocation(line: 376, column: 6, scope: !4206, inlinedAt: !3953)
!4206 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 376, column: 6)
!4207 = !DILocation(line: 376, column: 11, scope: !4206, inlinedAt: !3953)
!4208 = !DILocation(line: 376, column: 6, scope: !3949, inlinedAt: !3953)
!4209 = !DILocation(line: 376, column: 32, scope: !4206, inlinedAt: !3953)
!4210 = !DILocation(line: 377, column: 6, scope: !4211, inlinedAt: !3953)
!4211 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 377, column: 6)
!4212 = !DILocation(line: 377, column: 11, scope: !4211, inlinedAt: !3953)
!4213 = !DILocation(line: 377, column: 6, scope: !3949, inlinedAt: !3953)
!4214 = !DILocation(line: 377, column: 32, scope: !4211, inlinedAt: !3953)
!4215 = !DILocation(line: 378, column: 6, scope: !4216, inlinedAt: !3953)
!4216 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 378, column: 6)
!4217 = !DILocation(line: 378, column: 11, scope: !4216, inlinedAt: !3953)
!4218 = !DILocation(line: 378, column: 6, scope: !3949, inlinedAt: !3953)
!4219 = !DILocation(line: 378, column: 32, scope: !4216, inlinedAt: !3953)
!4220 = !DILocation(line: 379, column: 6, scope: !4221, inlinedAt: !3953)
!4221 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 379, column: 6)
!4222 = !DILocation(line: 379, column: 11, scope: !4221, inlinedAt: !3953)
!4223 = !DILocation(line: 379, column: 6, scope: !3949, inlinedAt: !3953)
!4224 = !DILocation(line: 379, column: 33, scope: !4221, inlinedAt: !3953)
!4225 = !DILocation(line: 380, column: 6, scope: !4226, inlinedAt: !3953)
!4226 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 380, column: 6)
!4227 = !DILocation(line: 380, column: 11, scope: !4226, inlinedAt: !3953)
!4228 = !DILocation(line: 380, column: 6, scope: !3949, inlinedAt: !3953)
!4229 = !DILocation(line: 380, column: 33, scope: !4226, inlinedAt: !3953)
!4230 = !DILocation(line: 381, column: 6, scope: !4231, inlinedAt: !3953)
!4231 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 381, column: 6)
!4232 = !DILocation(line: 381, column: 11, scope: !4231, inlinedAt: !3953)
!4233 = !DILocation(line: 381, column: 6, scope: !3949, inlinedAt: !3953)
!4234 = !DILocation(line: 381, column: 33, scope: !4231, inlinedAt: !3953)
!4235 = !DILocation(line: 382, column: 2, scope: !4236, inlinedAt: !3953)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !114, line: 382, column: 2)
!4237 = distinct !DILexicalBlock(scope: !3949, file: !114, line: 382, column: 2)
!4238 = !{i32 -2143854182, i32 -2143854153, i32 -2143854107, i32 -2143854049, i32 -2143853995, i32 -2143853941, i32 -2143853886, i32 -2143853855}
!4239 = !DILocation(line: 382, column: 2, scope: !4240, inlinedAt: !3953)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !114, line: 382, column: 2)
!4241 = distinct !DILexicalBlock(scope: !4237, file: !114, line: 382, column: 2)
!4242 = !{i32 -2143853412, i32 -2143853405, i32 -2143853351, i32 -2143853320, i32 -2143853290}
!4243 = !DILocation(line: 382, column: 2, scope: !4241, inlinedAt: !3953)
!4244 = !DILocation(line: 386, column: 1, scope: !3949, inlinedAt: !3953)
!4245 = !DILocation(line: 547, column: 9, scope: !3930, inlinedAt: !3935)
!4246 = !DILocation(line: 549, column: 8, scope: !4247, inlinedAt: !3935)
!4247 = distinct !DILexicalBlock(scope: !3930, file: !114, line: 549, column: 7)
!4248 = !DILocation(line: 549, column: 7, scope: !3930, inlinedAt: !3935)
!4249 = !DILocation(line: 550, column: 4, scope: !4247, inlinedAt: !3935)
!4250 = !DILocation(line: 553, column: 33, scope: !3930, inlinedAt: !3935)
!4251 = !DILocation(line: 325, column: 6, scope: !4252, inlinedAt: !3947)
!4252 = distinct !DILexicalBlock(scope: !3943, file: !114, line: 325, column: 6)
!4253 = !DILocation(line: 325, column: 6, scope: !3943, inlinedAt: !3947)
!4254 = !DILocation(line: 326, column: 3, scope: !4252, inlinedAt: !3947)
!4255 = !DILocation(line: 332, column: 9, scope: !3943, inlinedAt: !3947)
!4256 = !DILocation(line: 332, column: 15, scope: !3943, inlinedAt: !3947)
!4257 = !DILocation(line: 332, column: 2, scope: !3943, inlinedAt: !3947)
!4258 = !DILocation(line: 336, column: 1, scope: !3943, inlinedAt: !3947)
!4259 = !DILocation(line: 553, column: 5, scope: !3930, inlinedAt: !3935)
!4260 = !DILocation(line: 553, column: 41, scope: !3930, inlinedAt: !3935)
!4261 = !DILocation(line: 554, column: 5, scope: !3930, inlinedAt: !3935)
!4262 = !DILocation(line: 554, column: 12, scope: !3930, inlinedAt: !3935)
!4263 = !DILocation(line: 448, column: 31, scope: !3925, inlinedAt: !3929)
!4264 = !DILocation(line: 448, column: 34, scope: !3925, inlinedAt: !3929)
!4265 = !DILocation(line: 448, column: 14, scope: !3925, inlinedAt: !3929)
!4266 = !DILocation(line: 450, column: 22, scope: !3925, inlinedAt: !3929)
!4267 = !DILocation(line: 450, column: 25, scope: !3925, inlinedAt: !3929)
!4268 = !DILocation(line: 450, column: 30, scope: !3925, inlinedAt: !3929)
!4269 = !DILocation(line: 450, column: 36, scope: !3925, inlinedAt: !3929)
!4270 = !DILocation(line: 450, column: 8, scope: !3925, inlinedAt: !3929)
!4271 = !DILocation(line: 450, column: 6, scope: !3925, inlinedAt: !3929)
!4272 = !DILocation(line: 451, column: 9, scope: !3925, inlinedAt: !3929)
!4273 = !DILocation(line: 552, column: 3, scope: !3930, inlinedAt: !3935)
!4274 = !DILocation(line: 557, column: 19, scope: !3932, inlinedAt: !3935)
!4275 = !DILocation(line: 557, column: 25, scope: !3932, inlinedAt: !3935)
!4276 = !DILocation(line: 557, column: 9, scope: !3932, inlinedAt: !3935)
!4277 = !DILocation(line: 557, column: 2, scope: !3932, inlinedAt: !3935)
!4278 = !DILocation(line: 558, column: 1, scope: !3932, inlinedAt: !3935)
!4279 = !DILocation(line: 352, column: 2, scope: !3899)
!4280 = !DILocation(line: 352, column: 7, scope: !3899)
!4281 = !DILocation(line: 352, column: 22, scope: !3899)
!4282 = !DILocation(line: 353, column: 7, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 353, column: 6)
!4284 = !DILocation(line: 353, column: 12, scope: !4283)
!4285 = !DILocation(line: 353, column: 6, scope: !3899)
!4286 = !DILocation(line: 354, column: 18, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 353, column: 28)
!4288 = !DILocation(line: 354, column: 3, scope: !4287)
!4289 = !DILocation(line: 355, column: 3, scope: !4287)
!4290 = !DILocation(line: 359, column: 2, scope: !3899)
!4291 = !DILocation(line: 359, column: 7, scope: !3899)
!4292 = !DILocation(line: 359, column: 15, scope: !3899)
!4293 = !DILocation(line: 362, column: 19, scope: !3899)
!4294 = !DILocation(line: 362, column: 30, scope: !3899)
!4295 = !DILocation(line: 362, column: 2, scope: !3899)
!4296 = !DILocation(line: 363, column: 28, scope: !3899)
!4297 = !DILocation(line: 363, column: 11, scope: !3899)
!4298 = !DILocation(line: 363, column: 9, scope: !3899)
!4299 = !DILocation(line: 364, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 364, column: 6)
!4301 = !DILocation(line: 364, column: 6, scope: !3899)
!4302 = !DILocation(line: 366, column: 3, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 364, column: 14)
!4304 = !DILocation(line: 367, column: 18, scope: !4303)
!4305 = !DILocation(line: 367, column: 3, scope: !4303)
!4306 = !DILocation(line: 368, column: 10, scope: !4303)
!4307 = !DILocation(line: 368, column: 3, scope: !4303)
!4308 = !DILocation(line: 372, column: 2, scope: !3899)
!4309 = !DILocation(line: 374, column: 2, scope: !3899)
!4310 = !DILocation(line: 375, column: 1, scope: !3899)
!4311 = distinct !DISubprogram(name: "idmouse_disconnect", scope: !3, file: !3, line: 377, type: !3864, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4312 = !DILocalVariable(name: "interface", arg: 1, scope: !4311, file: !3, line: 377, type: !3702)
!4313 = !DILocation(line: 377, column: 54, scope: !4311)
!4314 = !DILocalVariable(name: "dev", scope: !4311, file: !3, line: 379, type: !3988)
!4315 = !DILocation(line: 379, column: 22, scope: !4311)
!4316 = !DILocation(line: 379, column: 45, scope: !4311)
!4317 = !DILocation(line: 379, column: 28, scope: !4311)
!4318 = !DILocation(line: 382, column: 21, scope: !4311)
!4319 = !DILocation(line: 382, column: 2, scope: !4311)
!4320 = !DILocation(line: 385, column: 14, scope: !4311)
!4321 = !DILocation(line: 385, column: 19, scope: !4311)
!4322 = !DILocation(line: 385, column: 2, scope: !4311)
!4323 = !DILocation(line: 388, column: 2, scope: !4311)
!4324 = !DILocation(line: 388, column: 7, scope: !4311)
!4325 = !DILocation(line: 388, column: 15, scope: !4311)
!4326 = !DILocation(line: 391, column: 7, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 391, column: 6)
!4328 = !DILocation(line: 391, column: 12, scope: !4327)
!4329 = !DILocation(line: 391, column: 6, scope: !4311)
!4330 = !DILocation(line: 392, column: 17, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 391, column: 18)
!4332 = !DILocation(line: 392, column: 22, scope: !4331)
!4333 = !DILocation(line: 392, column: 3, scope: !4331)
!4334 = !DILocation(line: 393, column: 18, scope: !4331)
!4335 = !DILocation(line: 393, column: 3, scope: !4331)
!4336 = !DILocation(line: 394, column: 2, scope: !4331)
!4337 = !DILocation(line: 396, column: 17, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 394, column: 9)
!4339 = !DILocation(line: 396, column: 22, scope: !4338)
!4340 = !DILocation(line: 396, column: 3, scope: !4338)
!4341 = !DILocation(line: 399, column: 2, scope: !4311)
!4342 = !DILocation(line: 400, column: 1, scope: !4311)
!4343 = distinct !DISubprogram(name: "idmouse_suspend", scope: !3, file: !3, line: 202, type: !3872, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4344 = !DILocalVariable(name: "intf", arg: 1, scope: !4343, file: !3, line: 202, type: !3702)
!4345 = !DILocation(line: 202, column: 50, scope: !4343)
!4346 = !DILocalVariable(name: "message", arg: 2, scope: !4343, file: !3, line: 202, type: !3283)
!4347 = !DILocation(line: 202, column: 69, scope: !4343)
!4348 = !DILocation(line: 204, column: 2, scope: !4343)
!4349 = distinct !DISubprogram(name: "idmouse_resume", scope: !3, file: !3, line: 207, type: !3876, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4350 = !DILocalVariable(name: "intf", arg: 1, scope: !4349, file: !3, line: 207, type: !3702)
!4351 = !DILocation(line: 207, column: 49, scope: !4349)
!4352 = !DILocation(line: 209, column: 2, scope: !4349)
!4353 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4354, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!132, !3702}
!4356 = !DILocalVariable(name: "intf", arg: 1, scope: !4353, file: !6, line: 715, type: !3702)
!4357 = !DILocation(line: 715, column: 76, scope: !4353)
!4358 = !DILocalVariable(name: "__mptr", scope: !4359, file: !6, line: 717, type: !131)
!4359 = distinct !DILexicalBlock(scope: !4353, file: !6, line: 717, column: 9)
!4360 = !DILocation(line: 717, column: 9, scope: !4359)
!4361 = !DILocation(line: 717, column: 9, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4359, file: !6, line: 717, column: 9)
!4363 = !DILocation(line: 717, column: 2, scope: !4353)
!4364 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !3933, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4365 = !DILocation(line: 445, column: 72, scope: !3925, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 552, column: 10, scope: !3930, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 664, column: 9, scope: !4364)
!4368 = !DILocation(line: 446, column: 9, scope: !3925, inlinedAt: !4366)
!4369 = !DILocation(line: 446, column: 23, scope: !3925, inlinedAt: !4366)
!4370 = !DILocation(line: 448, column: 8, scope: !3925, inlinedAt: !4366)
!4371 = !DILocation(line: 318, column: 67, scope: !3943, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 553, column: 20, scope: !3930, inlinedAt: !4367)
!4373 = !DILocation(line: 346, column: 58, scope: !3949, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 547, column: 11, scope: !3930, inlinedAt: !4367)
!4375 = !DILocation(line: 472, column: 28, scope: !3955, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 481, column: 9, scope: !3960, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 545, column: 11, scope: !3962, inlinedAt: !4367)
!4378 = !DILocation(line: 472, column: 40, scope: !3955, inlinedAt: !4376)
!4379 = !DILocation(line: 472, column: 60, scope: !3955, inlinedAt: !4376)
!4380 = !DILocation(line: 478, column: 51, scope: !3960, inlinedAt: !4377)
!4381 = !DILocation(line: 478, column: 63, scope: !3960, inlinedAt: !4377)
!4382 = !DILocation(line: 480, column: 15, scope: !3960, inlinedAt: !4377)
!4383 = !DILocation(line: 538, column: 45, scope: !3932, inlinedAt: !4367)
!4384 = !DILocation(line: 538, column: 57, scope: !3932, inlinedAt: !4367)
!4385 = !DILocation(line: 542, column: 16, scope: !3930, inlinedAt: !4367)
!4386 = !DILocalVariable(name: "size", arg: 1, scope: !4364, file: !114, line: 662, type: !277)
!4387 = !DILocation(line: 662, column: 36, scope: !4364)
!4388 = !DILocalVariable(name: "flags", arg: 2, scope: !4364, file: !114, line: 662, type: !129)
!4389 = !DILocation(line: 662, column: 48, scope: !4364)
!4390 = !DILocation(line: 664, column: 17, scope: !4364)
!4391 = !DILocation(line: 664, column: 23, scope: !4364)
!4392 = !DILocation(line: 664, column: 29, scope: !4364)
!4393 = !DILocation(line: 540, column: 27, scope: !3931, inlinedAt: !4367)
!4394 = !DILocation(line: 540, column: 6, scope: !3931, inlinedAt: !4367)
!4395 = !DILocation(line: 540, column: 6, scope: !3932, inlinedAt: !4367)
!4396 = !DILocation(line: 544, column: 7, scope: !3962, inlinedAt: !4367)
!4397 = !DILocation(line: 544, column: 12, scope: !3962, inlinedAt: !4367)
!4398 = !DILocation(line: 544, column: 7, scope: !3930, inlinedAt: !4367)
!4399 = !DILocation(line: 545, column: 25, scope: !3962, inlinedAt: !4367)
!4400 = !DILocation(line: 545, column: 31, scope: !3962, inlinedAt: !4367)
!4401 = !DILocation(line: 480, column: 33, scope: !3960, inlinedAt: !4377)
!4402 = !DILocation(line: 480, column: 23, scope: !3960, inlinedAt: !4377)
!4403 = !DILocation(line: 481, column: 29, scope: !3960, inlinedAt: !4377)
!4404 = !DILocation(line: 481, column: 35, scope: !3960, inlinedAt: !4377)
!4405 = !DILocation(line: 481, column: 42, scope: !3960, inlinedAt: !4377)
!4406 = !DILocation(line: 474, column: 23, scope: !3955, inlinedAt: !4376)
!4407 = !DILocation(line: 474, column: 29, scope: !3955, inlinedAt: !4376)
!4408 = !DILocation(line: 474, column: 36, scope: !3955, inlinedAt: !4376)
!4409 = !DILocation(line: 474, column: 9, scope: !3955, inlinedAt: !4376)
!4410 = !DILocation(line: 545, column: 4, scope: !3962, inlinedAt: !4367)
!4411 = !DILocation(line: 547, column: 25, scope: !3930, inlinedAt: !4367)
!4412 = !DILocation(line: 348, column: 7, scope: !4091, inlinedAt: !4374)
!4413 = !DILocation(line: 348, column: 6, scope: !3949, inlinedAt: !4374)
!4414 = !DILocation(line: 349, column: 3, scope: !4091, inlinedAt: !4374)
!4415 = !DILocation(line: 351, column: 6, scope: !4095, inlinedAt: !4374)
!4416 = !DILocation(line: 351, column: 11, scope: !4095, inlinedAt: !4374)
!4417 = !DILocation(line: 351, column: 6, scope: !3949, inlinedAt: !4374)
!4418 = !DILocation(line: 352, column: 3, scope: !4095, inlinedAt: !4374)
!4419 = !DILocation(line: 354, column: 32, scope: !4100, inlinedAt: !4374)
!4420 = !DILocation(line: 354, column: 37, scope: !4100, inlinedAt: !4374)
!4421 = !DILocation(line: 354, column: 42, scope: !4100, inlinedAt: !4374)
!4422 = !DILocation(line: 354, column: 45, scope: !4100, inlinedAt: !4374)
!4423 = !DILocation(line: 354, column: 50, scope: !4100, inlinedAt: !4374)
!4424 = !DILocation(line: 354, column: 6, scope: !3949, inlinedAt: !4374)
!4425 = !DILocation(line: 355, column: 3, scope: !4100, inlinedAt: !4374)
!4426 = !DILocation(line: 356, column: 32, scope: !4108, inlinedAt: !4374)
!4427 = !DILocation(line: 356, column: 37, scope: !4108, inlinedAt: !4374)
!4428 = !DILocation(line: 356, column: 43, scope: !4108, inlinedAt: !4374)
!4429 = !DILocation(line: 356, column: 46, scope: !4108, inlinedAt: !4374)
!4430 = !DILocation(line: 356, column: 51, scope: !4108, inlinedAt: !4374)
!4431 = !DILocation(line: 356, column: 6, scope: !3949, inlinedAt: !4374)
!4432 = !DILocation(line: 357, column: 3, scope: !4108, inlinedAt: !4374)
!4433 = !DILocation(line: 358, column: 6, scope: !4116, inlinedAt: !4374)
!4434 = !DILocation(line: 358, column: 11, scope: !4116, inlinedAt: !4374)
!4435 = !DILocation(line: 358, column: 6, scope: !3949, inlinedAt: !4374)
!4436 = !DILocation(line: 358, column: 26, scope: !4116, inlinedAt: !4374)
!4437 = !DILocation(line: 359, column: 6, scope: !4121, inlinedAt: !4374)
!4438 = !DILocation(line: 359, column: 11, scope: !4121, inlinedAt: !4374)
!4439 = !DILocation(line: 359, column: 6, scope: !3949, inlinedAt: !4374)
!4440 = !DILocation(line: 359, column: 26, scope: !4121, inlinedAt: !4374)
!4441 = !DILocation(line: 360, column: 6, scope: !4126, inlinedAt: !4374)
!4442 = !DILocation(line: 360, column: 11, scope: !4126, inlinedAt: !4374)
!4443 = !DILocation(line: 360, column: 6, scope: !3949, inlinedAt: !4374)
!4444 = !DILocation(line: 360, column: 26, scope: !4126, inlinedAt: !4374)
!4445 = !DILocation(line: 361, column: 6, scope: !4131, inlinedAt: !4374)
!4446 = !DILocation(line: 361, column: 11, scope: !4131, inlinedAt: !4374)
!4447 = !DILocation(line: 361, column: 6, scope: !3949, inlinedAt: !4374)
!4448 = !DILocation(line: 361, column: 26, scope: !4131, inlinedAt: !4374)
!4449 = !DILocation(line: 362, column: 6, scope: !4136, inlinedAt: !4374)
!4450 = !DILocation(line: 362, column: 11, scope: !4136, inlinedAt: !4374)
!4451 = !DILocation(line: 362, column: 6, scope: !3949, inlinedAt: !4374)
!4452 = !DILocation(line: 362, column: 26, scope: !4136, inlinedAt: !4374)
!4453 = !DILocation(line: 363, column: 6, scope: !4141, inlinedAt: !4374)
!4454 = !DILocation(line: 363, column: 11, scope: !4141, inlinedAt: !4374)
!4455 = !DILocation(line: 363, column: 6, scope: !3949, inlinedAt: !4374)
!4456 = !DILocation(line: 363, column: 26, scope: !4141, inlinedAt: !4374)
!4457 = !DILocation(line: 364, column: 6, scope: !4146, inlinedAt: !4374)
!4458 = !DILocation(line: 364, column: 11, scope: !4146, inlinedAt: !4374)
!4459 = !DILocation(line: 364, column: 6, scope: !3949, inlinedAt: !4374)
!4460 = !DILocation(line: 364, column: 26, scope: !4146, inlinedAt: !4374)
!4461 = !DILocation(line: 365, column: 6, scope: !4151, inlinedAt: !4374)
!4462 = !DILocation(line: 365, column: 11, scope: !4151, inlinedAt: !4374)
!4463 = !DILocation(line: 365, column: 6, scope: !3949, inlinedAt: !4374)
!4464 = !DILocation(line: 365, column: 26, scope: !4151, inlinedAt: !4374)
!4465 = !DILocation(line: 366, column: 6, scope: !4156, inlinedAt: !4374)
!4466 = !DILocation(line: 366, column: 11, scope: !4156, inlinedAt: !4374)
!4467 = !DILocation(line: 366, column: 6, scope: !3949, inlinedAt: !4374)
!4468 = !DILocation(line: 366, column: 26, scope: !4156, inlinedAt: !4374)
!4469 = !DILocation(line: 367, column: 6, scope: !4161, inlinedAt: !4374)
!4470 = !DILocation(line: 367, column: 11, scope: !4161, inlinedAt: !4374)
!4471 = !DILocation(line: 367, column: 6, scope: !3949, inlinedAt: !4374)
!4472 = !DILocation(line: 367, column: 26, scope: !4161, inlinedAt: !4374)
!4473 = !DILocation(line: 368, column: 6, scope: !4166, inlinedAt: !4374)
!4474 = !DILocation(line: 368, column: 11, scope: !4166, inlinedAt: !4374)
!4475 = !DILocation(line: 368, column: 6, scope: !3949, inlinedAt: !4374)
!4476 = !DILocation(line: 368, column: 26, scope: !4166, inlinedAt: !4374)
!4477 = !DILocation(line: 369, column: 6, scope: !4171, inlinedAt: !4374)
!4478 = !DILocation(line: 369, column: 11, scope: !4171, inlinedAt: !4374)
!4479 = !DILocation(line: 369, column: 6, scope: !3949, inlinedAt: !4374)
!4480 = !DILocation(line: 369, column: 26, scope: !4171, inlinedAt: !4374)
!4481 = !DILocation(line: 370, column: 6, scope: !4176, inlinedAt: !4374)
!4482 = !DILocation(line: 370, column: 11, scope: !4176, inlinedAt: !4374)
!4483 = !DILocation(line: 370, column: 6, scope: !3949, inlinedAt: !4374)
!4484 = !DILocation(line: 370, column: 26, scope: !4176, inlinedAt: !4374)
!4485 = !DILocation(line: 371, column: 6, scope: !4181, inlinedAt: !4374)
!4486 = !DILocation(line: 371, column: 11, scope: !4181, inlinedAt: !4374)
!4487 = !DILocation(line: 371, column: 6, scope: !3949, inlinedAt: !4374)
!4488 = !DILocation(line: 371, column: 26, scope: !4181, inlinedAt: !4374)
!4489 = !DILocation(line: 372, column: 6, scope: !4186, inlinedAt: !4374)
!4490 = !DILocation(line: 372, column: 11, scope: !4186, inlinedAt: !4374)
!4491 = !DILocation(line: 372, column: 6, scope: !3949, inlinedAt: !4374)
!4492 = !DILocation(line: 372, column: 26, scope: !4186, inlinedAt: !4374)
!4493 = !DILocation(line: 373, column: 6, scope: !4191, inlinedAt: !4374)
!4494 = !DILocation(line: 373, column: 11, scope: !4191, inlinedAt: !4374)
!4495 = !DILocation(line: 373, column: 6, scope: !3949, inlinedAt: !4374)
!4496 = !DILocation(line: 373, column: 26, scope: !4191, inlinedAt: !4374)
!4497 = !DILocation(line: 374, column: 6, scope: !4196, inlinedAt: !4374)
!4498 = !DILocation(line: 374, column: 11, scope: !4196, inlinedAt: !4374)
!4499 = !DILocation(line: 374, column: 6, scope: !3949, inlinedAt: !4374)
!4500 = !DILocation(line: 374, column: 26, scope: !4196, inlinedAt: !4374)
!4501 = !DILocation(line: 375, column: 6, scope: !4201, inlinedAt: !4374)
!4502 = !DILocation(line: 375, column: 11, scope: !4201, inlinedAt: !4374)
!4503 = !DILocation(line: 375, column: 6, scope: !3949, inlinedAt: !4374)
!4504 = !DILocation(line: 375, column: 27, scope: !4201, inlinedAt: !4374)
!4505 = !DILocation(line: 376, column: 6, scope: !4206, inlinedAt: !4374)
!4506 = !DILocation(line: 376, column: 11, scope: !4206, inlinedAt: !4374)
!4507 = !DILocation(line: 376, column: 6, scope: !3949, inlinedAt: !4374)
!4508 = !DILocation(line: 376, column: 32, scope: !4206, inlinedAt: !4374)
!4509 = !DILocation(line: 377, column: 6, scope: !4211, inlinedAt: !4374)
!4510 = !DILocation(line: 377, column: 11, scope: !4211, inlinedAt: !4374)
!4511 = !DILocation(line: 377, column: 6, scope: !3949, inlinedAt: !4374)
!4512 = !DILocation(line: 377, column: 32, scope: !4211, inlinedAt: !4374)
!4513 = !DILocation(line: 378, column: 6, scope: !4216, inlinedAt: !4374)
!4514 = !DILocation(line: 378, column: 11, scope: !4216, inlinedAt: !4374)
!4515 = !DILocation(line: 378, column: 6, scope: !3949, inlinedAt: !4374)
!4516 = !DILocation(line: 378, column: 32, scope: !4216, inlinedAt: !4374)
!4517 = !DILocation(line: 379, column: 6, scope: !4221, inlinedAt: !4374)
!4518 = !DILocation(line: 379, column: 11, scope: !4221, inlinedAt: !4374)
!4519 = !DILocation(line: 379, column: 6, scope: !3949, inlinedAt: !4374)
!4520 = !DILocation(line: 379, column: 33, scope: !4221, inlinedAt: !4374)
!4521 = !DILocation(line: 380, column: 6, scope: !4226, inlinedAt: !4374)
!4522 = !DILocation(line: 380, column: 11, scope: !4226, inlinedAt: !4374)
!4523 = !DILocation(line: 380, column: 6, scope: !3949, inlinedAt: !4374)
!4524 = !DILocation(line: 380, column: 33, scope: !4226, inlinedAt: !4374)
!4525 = !DILocation(line: 381, column: 6, scope: !4231, inlinedAt: !4374)
!4526 = !DILocation(line: 381, column: 11, scope: !4231, inlinedAt: !4374)
!4527 = !DILocation(line: 381, column: 6, scope: !3949, inlinedAt: !4374)
!4528 = !DILocation(line: 381, column: 33, scope: !4231, inlinedAt: !4374)
!4529 = !DILocation(line: 382, column: 2, scope: !4236, inlinedAt: !4374)
!4530 = !DILocation(line: 382, column: 2, scope: !4240, inlinedAt: !4374)
!4531 = !DILocation(line: 382, column: 2, scope: !4241, inlinedAt: !4374)
!4532 = !DILocation(line: 386, column: 1, scope: !3949, inlinedAt: !4374)
!4533 = !DILocation(line: 547, column: 9, scope: !3930, inlinedAt: !4367)
!4534 = !DILocation(line: 549, column: 8, scope: !4247, inlinedAt: !4367)
!4535 = !DILocation(line: 549, column: 7, scope: !3930, inlinedAt: !4367)
!4536 = !DILocation(line: 550, column: 4, scope: !4247, inlinedAt: !4367)
!4537 = !DILocation(line: 553, column: 33, scope: !3930, inlinedAt: !4367)
!4538 = !DILocation(line: 325, column: 6, scope: !4252, inlinedAt: !4372)
!4539 = !DILocation(line: 325, column: 6, scope: !3943, inlinedAt: !4372)
!4540 = !DILocation(line: 326, column: 3, scope: !4252, inlinedAt: !4372)
!4541 = !DILocation(line: 332, column: 9, scope: !3943, inlinedAt: !4372)
!4542 = !DILocation(line: 332, column: 15, scope: !3943, inlinedAt: !4372)
!4543 = !DILocation(line: 332, column: 2, scope: !3943, inlinedAt: !4372)
!4544 = !DILocation(line: 336, column: 1, scope: !3943, inlinedAt: !4372)
!4545 = !DILocation(line: 553, column: 5, scope: !3930, inlinedAt: !4367)
!4546 = !DILocation(line: 553, column: 41, scope: !3930, inlinedAt: !4367)
!4547 = !DILocation(line: 554, column: 5, scope: !3930, inlinedAt: !4367)
!4548 = !DILocation(line: 554, column: 12, scope: !3930, inlinedAt: !4367)
!4549 = !DILocation(line: 448, column: 31, scope: !3925, inlinedAt: !4366)
!4550 = !DILocation(line: 448, column: 34, scope: !3925, inlinedAt: !4366)
!4551 = !DILocation(line: 448, column: 14, scope: !3925, inlinedAt: !4366)
!4552 = !DILocation(line: 450, column: 22, scope: !3925, inlinedAt: !4366)
!4553 = !DILocation(line: 450, column: 25, scope: !3925, inlinedAt: !4366)
!4554 = !DILocation(line: 450, column: 30, scope: !3925, inlinedAt: !4366)
!4555 = !DILocation(line: 450, column: 36, scope: !3925, inlinedAt: !4366)
!4556 = !DILocation(line: 450, column: 8, scope: !3925, inlinedAt: !4366)
!4557 = !DILocation(line: 450, column: 6, scope: !3925, inlinedAt: !4366)
!4558 = !DILocation(line: 451, column: 9, scope: !3925, inlinedAt: !4366)
!4559 = !DILocation(line: 552, column: 3, scope: !3930, inlinedAt: !4367)
!4560 = !DILocation(line: 557, column: 19, scope: !3932, inlinedAt: !4367)
!4561 = !DILocation(line: 557, column: 25, scope: !3932, inlinedAt: !4367)
!4562 = !DILocation(line: 557, column: 9, scope: !3932, inlinedAt: !4367)
!4563 = !DILocation(line: 557, column: 2, scope: !3932, inlinedAt: !4367)
!4564 = !DILocation(line: 558, column: 1, scope: !3932, inlinedAt: !4367)
!4565 = !DILocation(line: 664, column: 2, scope: !4364)
!4566 = distinct !DISubprogram(name: "usb_find_bulk_in_endpoint", scope: !6, file: !6, line: 118, type: !4567, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!136, !3706, !4569}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4570 = !DILocalVariable(name: "alt", arg: 1, scope: !4566, file: !6, line: 118, type: !3706)
!4571 = !DILocation(line: 118, column: 54, scope: !4566)
!4572 = !DILocalVariable(name: "bulk_in", arg: 2, scope: !4566, file: !6, line: 119, type: !4569)
!4573 = !DILocation(line: 119, column: 36, scope: !4566)
!4574 = !DILocation(line: 121, column: 35, scope: !4566)
!4575 = !DILocation(line: 121, column: 40, scope: !4566)
!4576 = !DILocation(line: 121, column: 9, scope: !4566)
!4577 = !DILocation(line: 121, column: 2, scope: !4566)
!4578 = distinct !DISubprogram(name: "idmouse_delete", scope: !3, file: !3, line: 212, type: !4579, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null, !3988}
!4581 = !DILocalVariable(name: "dev", arg: 1, scope: !4578, file: !3, line: 212, type: !3988)
!4582 = !DILocation(line: 212, column: 55, scope: !4578)
!4583 = !DILocation(line: 214, column: 8, scope: !4578)
!4584 = !DILocation(line: 214, column: 13, scope: !4578)
!4585 = !DILocation(line: 214, column: 2, scope: !4578)
!4586 = !DILocation(line: 215, column: 8, scope: !4578)
!4587 = !DILocation(line: 215, column: 2, scope: !4578)
!4588 = !DILocation(line: 216, column: 1, scope: !4578)
!4589 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !88, file: !88, line: 647, type: !4590, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!136, !4592}
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3555)
!4594 = !DILocalVariable(name: "epd", arg: 1, scope: !4589, file: !88, line: 647, type: !4592)
!4595 = !DILocation(line: 647, column: 75, scope: !4589)
!4596 = !DILocation(line: 649, column: 9, scope: !4589)
!4597 = !DILocation(line: 649, column: 44, scope: !4589)
!4598 = !DILocation(line: 649, column: 2, scope: !4589)
!4599 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !4600, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{null, !3702, !131}
!4602 = !DILocalVariable(name: "intf", arg: 1, scope: !4599, file: !6, line: 268, type: !3702)
!4603 = !DILocation(line: 268, column: 59, scope: !4599)
!4604 = !DILocalVariable(name: "data", arg: 2, scope: !4599, file: !6, line: 268, type: !131)
!4605 = !DILocation(line: 268, column: 71, scope: !4599)
!4606 = !DILocation(line: 270, column: 19, scope: !4599)
!4607 = !DILocation(line: 270, column: 25, scope: !4599)
!4608 = !DILocation(line: 270, column: 30, scope: !4599)
!4609 = !DILocation(line: 270, column: 2, scope: !4599)
!4610 = !DILocation(line: 271, column: 1, scope: !4599)
!4611 = distinct !DISubprogram(name: "get_order", scope: !4612, file: !4612, line: 29, type: !4613, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4612 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!136, !280}
!4615 = !DILocalVariable(name: "x", arg: 1, scope: !4616, file: !4617, line: 366, type: !374)
!4616 = distinct !DISubprogram(name: "fls64", scope: !4617, file: !4617, line: 366, type: !4618, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4617 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!136, !374}
!4620 = !DILocation(line: 366, column: 40, scope: !4616, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 46, column: 9, scope: !4611)
!4622 = !DILocalVariable(name: "bitpos", scope: !4616, file: !4617, line: 368, type: !136)
!4623 = !DILocation(line: 368, column: 6, scope: !4616, inlinedAt: !4621)
!4624 = !DILocalVariable(name: "size", arg: 1, scope: !4611, file: !4612, line: 29, type: !280)
!4625 = !DILocation(line: 29, column: 63, scope: !4611)
!4626 = !DILocation(line: 31, column: 27, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4611, file: !4612, line: 31, column: 6)
!4628 = !DILocation(line: 31, column: 6, scope: !4627)
!4629 = !DILocation(line: 31, column: 6, scope: !4611)
!4630 = !DILocation(line: 32, column: 8, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !4612, line: 32, column: 7)
!4632 = distinct !DILexicalBlock(scope: !4627, file: !4612, line: 31, column: 34)
!4633 = !DILocation(line: 32, column: 7, scope: !4632)
!4634 = !DILocation(line: 33, column: 4, scope: !4631)
!4635 = !DILocation(line: 35, column: 7, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !4612, line: 35, column: 7)
!4637 = !DILocation(line: 35, column: 12, scope: !4636)
!4638 = !DILocation(line: 35, column: 7, scope: !4632)
!4639 = !DILocation(line: 36, column: 4, scope: !4636)
!4640 = !DILocation(line: 38, column: 10, scope: !4632)
!4641 = !DILocation(line: 38, column: 28, scope: !4632)
!4642 = !DILocation(line: 38, column: 41, scope: !4632)
!4643 = !DILocation(line: 38, column: 3, scope: !4632)
!4644 = !DILocation(line: 41, column: 6, scope: !4611)
!4645 = !DILocation(line: 42, column: 7, scope: !4611)
!4646 = !DILocation(line: 46, column: 15, scope: !4611)
!4647 = !DILocation(line: 374, column: 2, scope: !4616, inlinedAt: !4621)
!4648 = !DILocation(line: 376, column: 14, scope: !4616, inlinedAt: !4621)
!4649 = !{i32 249839}
!4650 = !DILocation(line: 377, column: 9, scope: !4616, inlinedAt: !4621)
!4651 = !DILocation(line: 377, column: 16, scope: !4616, inlinedAt: !4621)
!4652 = !DILocation(line: 46, column: 2, scope: !4611)
!4653 = !DILocation(line: 48, column: 1, scope: !4611)
!4654 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4655, file: !4655, line: 30, type: !4656, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4655 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!136, !373}
!4658 = !DILocation(line: 366, column: 40, scope: !4616, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 32, column: 9, scope: !4654)
!4660 = !DILocation(line: 368, column: 6, scope: !4616, inlinedAt: !4659)
!4661 = !DILocalVariable(name: "n", arg: 1, scope: !4654, file: !4655, line: 30, type: !373)
!4662 = !DILocation(line: 30, column: 21, scope: !4654)
!4663 = !DILocation(line: 32, column: 15, scope: !4654)
!4664 = !DILocation(line: 374, column: 2, scope: !4616, inlinedAt: !4659)
!4665 = !DILocation(line: 376, column: 14, scope: !4616, inlinedAt: !4659)
!4666 = !DILocation(line: 377, column: 9, scope: !4616, inlinedAt: !4659)
!4667 = !DILocation(line: 377, column: 16, scope: !4616, inlinedAt: !4659)
!4668 = !DILocation(line: 32, column: 18, scope: !4654)
!4669 = !DILocation(line: 32, column: 2, scope: !4654)
!4670 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4671, file: !4671, line: 137, type: !4672, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4671 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!131, !887, !3001, !277, !129}
!4674 = !DILocalVariable(name: "s", arg: 1, scope: !4670, file: !4671, line: 137, type: !887)
!4675 = !DILocation(line: 137, column: 54, scope: !4670)
!4676 = !DILocalVariable(name: "object", arg: 2, scope: !4670, file: !4671, line: 137, type: !3001)
!4677 = !DILocation(line: 137, column: 69, scope: !4670)
!4678 = !DILocalVariable(name: "size", arg: 3, scope: !4670, file: !4671, line: 138, type: !277)
!4679 = !DILocation(line: 138, column: 12, scope: !4670)
!4680 = !DILocalVariable(name: "flags", arg: 4, scope: !4670, file: !4671, line: 138, type: !129)
!4681 = !DILocation(line: 138, column: 24, scope: !4670)
!4682 = !DILocation(line: 140, column: 17, scope: !4670)
!4683 = !DILocation(line: 140, column: 2, scope: !4670)
!4684 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !4685, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !165, !131}
!4687 = !DILocalVariable(name: "dev", arg: 1, scope: !4684, file: !67, line: 660, type: !165)
!4688 = !DILocation(line: 660, column: 51, scope: !4684)
!4689 = !DILocalVariable(name: "data", arg: 2, scope: !4684, file: !67, line: 660, type: !131)
!4690 = !DILocation(line: 660, column: 62, scope: !4684)
!4691 = !DILocation(line: 662, column: 21, scope: !4684)
!4692 = !DILocation(line: 662, column: 2, scope: !4684)
!4693 = !DILocation(line: 662, column: 7, scope: !4684)
!4694 = !DILocation(line: 662, column: 19, scope: !4684)
!4695 = !DILocation(line: 663, column: 1, scope: !4684)
!4696 = distinct !DISubprogram(name: "idmouse_read", scope: !3, file: !3, line: 293, type: !2669, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4697 = !DILocalVariable(name: "file", arg: 1, scope: !4696, file: !3, line: 293, type: !308)
!4698 = !DILocation(line: 293, column: 42, scope: !4696)
!4699 = !DILocalVariable(name: "buffer", arg: 2, scope: !4696, file: !3, line: 293, type: !230)
!4700 = !DILocation(line: 293, column: 61, scope: !4696)
!4701 = !DILocalVariable(name: "count", arg: 3, scope: !4696, file: !3, line: 293, type: !277)
!4702 = !DILocation(line: 293, column: 76, scope: !4696)
!4703 = !DILocalVariable(name: "ppos", arg: 4, scope: !4696, file: !3, line: 294, type: !2671)
!4704 = !DILocation(line: 294, column: 14, scope: !4696)
!4705 = !DILocalVariable(name: "dev", scope: !4696, file: !3, line: 296, type: !3988)
!4706 = !DILocation(line: 296, column: 22, scope: !4696)
!4707 = !DILocation(line: 296, column: 28, scope: !4696)
!4708 = !DILocation(line: 296, column: 34, scope: !4696)
!4709 = !DILocalVariable(name: "result", scope: !4696, file: !3, line: 297, type: !136)
!4710 = !DILocation(line: 297, column: 6, scope: !4696)
!4711 = !DILocation(line: 300, column: 14, scope: !4696)
!4712 = !DILocation(line: 300, column: 19, scope: !4696)
!4713 = !DILocation(line: 300, column: 2, scope: !4696)
!4714 = !DILocation(line: 303, column: 7, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 303, column: 6)
!4716 = !DILocation(line: 303, column: 12, scope: !4715)
!4717 = !DILocation(line: 303, column: 6, scope: !4696)
!4718 = !DILocation(line: 304, column: 17, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 303, column: 21)
!4720 = !DILocation(line: 304, column: 22, scope: !4719)
!4721 = !DILocation(line: 304, column: 3, scope: !4719)
!4722 = !DILocation(line: 305, column: 3, scope: !4719)
!4723 = !DILocation(line: 308, column: 35, scope: !4696)
!4724 = !DILocation(line: 308, column: 43, scope: !4696)
!4725 = !DILocation(line: 308, column: 50, scope: !4696)
!4726 = !DILocation(line: 309, column: 6, scope: !4696)
!4727 = !DILocation(line: 309, column: 11, scope: !4696)
!4728 = !DILocation(line: 308, column: 11, scope: !4696)
!4729 = !DILocation(line: 308, column: 9, scope: !4696)
!4730 = !DILocation(line: 311, column: 16, scope: !4696)
!4731 = !DILocation(line: 311, column: 21, scope: !4696)
!4732 = !DILocation(line: 311, column: 2, scope: !4696)
!4733 = !DILocation(line: 312, column: 9, scope: !4696)
!4734 = !DILocation(line: 312, column: 2, scope: !4696)
!4735 = !DILocation(line: 313, column: 1, scope: !4696)
!4736 = distinct !DISubprogram(name: "idmouse_open", scope: !3, file: !3, line: 218, type: !2716, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4737 = !DILocalVariable(name: "inode", arg: 1, scope: !4736, file: !3, line: 218, type: !381)
!4738 = !DILocation(line: 218, column: 39, scope: !4736)
!4739 = !DILocalVariable(name: "file", arg: 2, scope: !4736, file: !3, line: 218, type: !308)
!4740 = !DILocation(line: 218, column: 59, scope: !4736)
!4741 = !DILocalVariable(name: "dev", scope: !4736, file: !3, line: 220, type: !3988)
!4742 = !DILocation(line: 220, column: 22, scope: !4736)
!4743 = !DILocalVariable(name: "interface", scope: !4736, file: !3, line: 221, type: !3702)
!4744 = !DILocation(line: 221, column: 24, scope: !4736)
!4745 = !DILocalVariable(name: "result", scope: !4736, file: !3, line: 222, type: !136)
!4746 = !DILocation(line: 222, column: 6, scope: !4736)
!4747 = !DILocation(line: 225, column: 57, scope: !4736)
!4748 = !DILocation(line: 225, column: 50, scope: !4736)
!4749 = !DILocation(line: 225, column: 14, scope: !4736)
!4750 = !DILocation(line: 225, column: 12, scope: !4736)
!4751 = !DILocation(line: 226, column: 7, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 226, column: 6)
!4753 = !DILocation(line: 226, column: 6, scope: !4736)
!4754 = !DILocation(line: 227, column: 3, scope: !4752)
!4755 = !DILocation(line: 230, column: 25, scope: !4736)
!4756 = !DILocation(line: 230, column: 8, scope: !4736)
!4757 = !DILocation(line: 230, column: 6, scope: !4736)
!4758 = !DILocation(line: 231, column: 7, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 231, column: 6)
!4760 = !DILocation(line: 231, column: 6, scope: !4736)
!4761 = !DILocation(line: 232, column: 3, scope: !4759)
!4762 = !DILocation(line: 235, column: 14, scope: !4736)
!4763 = !DILocation(line: 235, column: 19, scope: !4736)
!4764 = !DILocation(line: 235, column: 2, scope: !4736)
!4765 = !DILocation(line: 238, column: 6, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 238, column: 6)
!4767 = !DILocation(line: 238, column: 11, scope: !4766)
!4768 = !DILocation(line: 238, column: 6, scope: !4736)
!4769 = !DILocation(line: 241, column: 10, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 238, column: 17)
!4771 = !DILocation(line: 243, column: 2, scope: !4770)
!4772 = !DILocation(line: 246, column: 37, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 243, column: 9)
!4774 = !DILocation(line: 246, column: 12, scope: !4773)
!4775 = !DILocation(line: 246, column: 10, scope: !4773)
!4776 = !DILocation(line: 247, column: 7, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 247, column: 7)
!4778 = !DILocation(line: 247, column: 7, scope: !4773)
!4779 = !DILocation(line: 248, column: 4, scope: !4777)
!4780 = !DILocation(line: 249, column: 33, scope: !4773)
!4781 = !DILocation(line: 249, column: 12, scope: !4773)
!4782 = !DILocation(line: 249, column: 10, scope: !4773)
!4783 = !DILocation(line: 250, column: 28, scope: !4773)
!4784 = !DILocation(line: 250, column: 3, scope: !4773)
!4785 = !DILocation(line: 251, column: 7, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 251, column: 7)
!4787 = !DILocation(line: 251, column: 7, scope: !4773)
!4788 = !DILocation(line: 252, column: 4, scope: !4786)
!4789 = !DILocation(line: 255, column: 5, scope: !4773)
!4790 = !DILocation(line: 255, column: 10, scope: !4773)
!4791 = !DILocation(line: 255, column: 3, scope: !4773)
!4792 = !DILocation(line: 258, column: 24, scope: !4773)
!4793 = !DILocation(line: 258, column: 3, scope: !4773)
!4794 = !DILocation(line: 258, column: 9, scope: !4773)
!4795 = !DILocation(line: 258, column: 22, scope: !4773)
!4796 = !DILabel(scope: !4736, name: "error", file: !3, line: 262)
!4797 = !DILocation(line: 262, column: 1, scope: !4736)
!4798 = !DILocation(line: 265, column: 16, scope: !4736)
!4799 = !DILocation(line: 265, column: 21, scope: !4736)
!4800 = !DILocation(line: 265, column: 2, scope: !4736)
!4801 = !DILocation(line: 266, column: 9, scope: !4736)
!4802 = !DILocation(line: 266, column: 2, scope: !4736)
!4803 = !DILocation(line: 267, column: 1, scope: !4736)
!4804 = distinct !DISubprogram(name: "idmouse_release", scope: !3, file: !3, line: 269, type: !2716, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4805 = !DILocalVariable(name: "inode", arg: 1, scope: !4804, file: !3, line: 269, type: !381)
!4806 = !DILocation(line: 269, column: 42, scope: !4804)
!4807 = !DILocalVariable(name: "file", arg: 2, scope: !4804, file: !3, line: 269, type: !308)
!4808 = !DILocation(line: 269, column: 62, scope: !4804)
!4809 = !DILocalVariable(name: "dev", scope: !4804, file: !3, line: 271, type: !3988)
!4810 = !DILocation(line: 271, column: 22, scope: !4804)
!4811 = !DILocation(line: 273, column: 8, scope: !4804)
!4812 = !DILocation(line: 273, column: 14, scope: !4804)
!4813 = !DILocation(line: 273, column: 6, scope: !4804)
!4814 = !DILocation(line: 275, column: 6, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 275, column: 6)
!4816 = !DILocation(line: 275, column: 10, scope: !4815)
!4817 = !DILocation(line: 275, column: 6, scope: !4804)
!4818 = !DILocation(line: 276, column: 3, scope: !4815)
!4819 = !DILocation(line: 279, column: 14, scope: !4804)
!4820 = !DILocation(line: 279, column: 19, scope: !4804)
!4821 = !DILocation(line: 279, column: 2, scope: !4804)
!4822 = !DILocation(line: 281, column: 4, scope: !4804)
!4823 = !DILocation(line: 281, column: 9, scope: !4804)
!4824 = !DILocation(line: 281, column: 2, scope: !4804)
!4825 = !DILocation(line: 283, column: 7, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 283, column: 6)
!4827 = !DILocation(line: 283, column: 12, scope: !4826)
!4828 = !DILocation(line: 283, column: 6, scope: !4804)
!4829 = !DILocation(line: 285, column: 17, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 283, column: 21)
!4831 = !DILocation(line: 285, column: 22, scope: !4830)
!4832 = !DILocation(line: 285, column: 3, scope: !4830)
!4833 = !DILocation(line: 286, column: 18, scope: !4830)
!4834 = !DILocation(line: 286, column: 3, scope: !4830)
!4835 = !DILocation(line: 287, column: 2, scope: !4830)
!4836 = !DILocation(line: 288, column: 17, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 287, column: 9)
!4838 = !DILocation(line: 288, column: 22, scope: !4837)
!4839 = !DILocation(line: 288, column: 3, scope: !4837)
!4840 = !DILocation(line: 290, column: 2, scope: !4804)
!4841 = !DILocation(line: 291, column: 1, scope: !4804)
!4842 = distinct !DISubprogram(name: "iminor", scope: !38, file: !38, line: 875, type: !4843, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!7, !2565}
!4845 = !DILocalVariable(name: "inode", arg: 1, scope: !4842, file: !38, line: 875, type: !2565)
!4846 = !DILocation(line: 875, column: 51, scope: !4842)
!4847 = !DILocation(line: 877, column: 9, scope: !4842)
!4848 = !DILocation(line: 877, column: 2, scope: !4842)
!4849 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !4850, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!131, !3702}
!4852 = !DILocalVariable(name: "intf", arg: 1, scope: !4849, file: !6, line: 263, type: !3702)
!4853 = !DILocation(line: 263, column: 60, scope: !4849)
!4854 = !DILocation(line: 265, column: 26, scope: !4849)
!4855 = !DILocation(line: 265, column: 32, scope: !4849)
!4856 = !DILocation(line: 265, column: 9, scope: !4849)
!4857 = !DILocation(line: 265, column: 2, scope: !4849)
!4858 = distinct !DISubprogram(name: "idmouse_create_image", scope: !3, file: !3, line: 123, type: !4859, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!136, !3988}
!4861 = !DILocalVariable(name: "pscr_ret__", scope: !4862, file: !4863, line: 15, type: !1089)
!4862 = distinct !DILexicalBlock(scope: !4864, file: !4863, line: 15, column: 9)
!4863 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!4864 = distinct !DISubprogram(name: "get_current", scope: !4863, file: !4863, line: 13, type: !4865, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!1089}
!4867 = !DILocation(line: 15, column: 9, scope: !4862, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 173, column: 22, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 173, column: 7)
!4870 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 159, column: 31)
!4871 = !DILocalVariable(name: "__vpp_verify", scope: !4872, file: !4863, line: 15, type: !3001)
!4872 = distinct !DILexicalBlock(scope: !4862, file: !4863, line: 15, column: 9)
!4873 = !DILocation(line: 15, column: 9, scope: !4872, inlinedAt: !4868)
!4874 = !DILocalVariable(name: "pfo_val__", scope: !4875, file: !4863, line: 15, type: !373)
!4875 = distinct !DILexicalBlock(scope: !4862, file: !4863, line: 15, column: 9)
!4876 = !DILocation(line: 15, column: 9, scope: !4875, inlinedAt: !4868)
!4877 = !DILocalVariable(name: "dev", arg: 1, scope: !4858, file: !3, line: 123, type: !3988)
!4878 = !DILocation(line: 123, column: 53, scope: !4858)
!4879 = !DILocalVariable(name: "bytes_read", scope: !4858, file: !3, line: 125, type: !136)
!4880 = !DILocation(line: 125, column: 6, scope: !4858)
!4881 = !DILocalVariable(name: "bulk_read", scope: !4858, file: !3, line: 126, type: !136)
!4882 = !DILocation(line: 126, column: 6, scope: !4858)
!4883 = !DILocalVariable(name: "result", scope: !4858, file: !3, line: 127, type: !136)
!4884 = !DILocation(line: 127, column: 6, scope: !4858)
!4885 = !DILocation(line: 129, column: 9, scope: !4858)
!4886 = !DILocation(line: 129, column: 14, scope: !4858)
!4887 = !DILocation(line: 129, column: 2, scope: !4858)
!4888 = !DILocation(line: 130, column: 13, scope: !4858)
!4889 = !DILocation(line: 133, column: 11, scope: !4858)
!4890 = !DILocation(line: 133, column: 9, scope: !4858)
!4891 = !DILocation(line: 134, column: 6, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 134, column: 6)
!4893 = !DILocation(line: 134, column: 13, scope: !4892)
!4894 = !DILocation(line: 134, column: 6, scope: !4858)
!4895 = !DILocation(line: 135, column: 3, scope: !4892)
!4896 = !DILocation(line: 136, column: 11, scope: !4858)
!4897 = !DILocation(line: 136, column: 9, scope: !4858)
!4898 = !DILocation(line: 137, column: 6, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 137, column: 6)
!4900 = !DILocation(line: 137, column: 13, scope: !4899)
!4901 = !DILocation(line: 137, column: 6, scope: !4858)
!4902 = !DILocation(line: 138, column: 3, scope: !4899)
!4903 = !DILocation(line: 142, column: 11, scope: !4858)
!4904 = !DILocation(line: 142, column: 9, scope: !4858)
!4905 = !DILocation(line: 143, column: 6, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 143, column: 6)
!4907 = !DILocation(line: 143, column: 13, scope: !4906)
!4908 = !DILocation(line: 143, column: 6, scope: !4858)
!4909 = !DILocation(line: 144, column: 3, scope: !4906)
!4910 = !DILocation(line: 145, column: 11, scope: !4858)
!4911 = !DILocation(line: 145, column: 9, scope: !4858)
!4912 = !DILocation(line: 146, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 146, column: 6)
!4914 = !DILocation(line: 146, column: 13, scope: !4913)
!4915 = !DILocation(line: 146, column: 6, scope: !4858)
!4916 = !DILocation(line: 147, column: 3, scope: !4913)
!4917 = !DILocation(line: 151, column: 11, scope: !4858)
!4918 = !DILocation(line: 151, column: 9, scope: !4858)
!4919 = !DILocation(line: 152, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 152, column: 6)
!4921 = !DILocation(line: 152, column: 13, scope: !4920)
!4922 = !DILocation(line: 152, column: 6, scope: !4858)
!4923 = !DILocation(line: 153, column: 3, scope: !4920)
!4924 = !DILocation(line: 154, column: 11, scope: !4858)
!4925 = !DILocation(line: 154, column: 9, scope: !4858)
!4926 = !DILocation(line: 155, column: 6, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 155, column: 6)
!4928 = !DILocation(line: 155, column: 13, scope: !4927)
!4929 = !DILocation(line: 155, column: 6, scope: !4858)
!4930 = !DILocation(line: 156, column: 3, scope: !4927)
!4931 = !DILocation(line: 159, column: 2, scope: !4858)
!4932 = !DILocation(line: 159, column: 9, scope: !4858)
!4933 = !DILocation(line: 159, column: 20, scope: !4858)
!4934 = !DILocation(line: 160, column: 25, scope: !4870)
!4935 = !DILocation(line: 160, column: 30, scope: !4870)
!4936 = !DILocation(line: 161, column: 5, scope: !4870)
!4937 = !DILocation(line: 162, column: 5, scope: !4870)
!4938 = !DILocation(line: 162, column: 10, scope: !4870)
!4939 = !DILocation(line: 162, column: 27, scope: !4870)
!4940 = !DILocation(line: 162, column: 25, scope: !4870)
!4941 = !DILocation(line: 163, column: 5, scope: !4870)
!4942 = !DILocation(line: 163, column: 10, scope: !4870)
!4943 = !DILocation(line: 160, column: 12, scope: !4870)
!4944 = !DILocation(line: 160, column: 10, scope: !4870)
!4945 = !DILocation(line: 164, column: 7, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 164, column: 7)
!4947 = !DILocation(line: 164, column: 14, scope: !4946)
!4948 = !DILocation(line: 164, column: 7, scope: !4870)
!4949 = !DILocation(line: 167, column: 8, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 167, column: 8)
!4951 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 164, column: 19)
!4952 = !DILocation(line: 167, column: 13, scope: !4950)
!4953 = !DILocation(line: 167, column: 29, scope: !4950)
!4954 = !DILocation(line: 167, column: 34, scope: !4950)
!4955 = !DILocation(line: 167, column: 26, scope: !4950)
!4956 = !DILocation(line: 167, column: 8, scope: !4951)
!4957 = !DILocation(line: 168, column: 25, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 167, column: 48)
!4959 = !DILocation(line: 168, column: 30, scope: !4958)
!4960 = !DILocation(line: 168, column: 5, scope: !4958)
!4961 = !DILocation(line: 168, column: 10, scope: !4958)
!4962 = !DILocation(line: 168, column: 23, scope: !4958)
!4963 = !DILocation(line: 169, column: 12, scope: !4958)
!4964 = !DILocation(line: 170, column: 4, scope: !4958)
!4965 = !DILocation(line: 171, column: 4, scope: !4951)
!4966 = !{i32 -2145806197}
!4967 = !DILocation(line: 173, column: 7, scope: !4869)
!4968 = !DILocation(line: 173, column: 7, scope: !4870)
!4969 = !DILocation(line: 174, column: 11, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 173, column: 32)
!4971 = !DILocation(line: 175, column: 4, scope: !4970)
!4972 = !DILocation(line: 177, column: 17, scope: !4870)
!4973 = !DILocation(line: 177, column: 14, scope: !4870)
!4974 = distinct !{!4974, !4931, !4975}
!4975 = !DILocation(line: 178, column: 2, scope: !4858)
!4976 = !DILabel(scope: !4858, name: "reset", file: !3, line: 181)
!4977 = !DILocation(line: 181, column: 1, scope: !4858)
!4978 = !DILocation(line: 182, column: 2, scope: !4858)
!4979 = !DILocation(line: 186, column: 18, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 186, column: 2)
!4981 = !DILocation(line: 186, column: 7, scope: !4980)
!4982 = !DILocation(line: 186, column: 48, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 186, column: 2)
!4984 = !DILocation(line: 186, column: 59, scope: !4983)
!4985 = !DILocation(line: 186, column: 2, scope: !4980)
!4986 = !DILocation(line: 187, column: 7, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 187, column: 7)
!4988 = !DILocation(line: 187, column: 12, scope: !4987)
!4989 = !DILocation(line: 187, column: 27, scope: !4987)
!4990 = !DILocation(line: 187, column: 39, scope: !4987)
!4991 = !DILocation(line: 187, column: 7, scope: !4983)
!4992 = !DILocation(line: 188, column: 4, scope: !4987)
!4993 = !DILocation(line: 187, column: 42, scope: !4987)
!4994 = !DILocation(line: 186, column: 81, scope: !4983)
!4995 = !DILocation(line: 186, column: 2, scope: !4983)
!4996 = distinct !{!4996, !4985, !4997}
!4997 = !DILocation(line: 188, column: 12, scope: !4980)
!4998 = !DILocation(line: 191, column: 18, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 191, column: 2)
!5000 = !DILocation(line: 191, column: 7, scope: !4999)
!5001 = !DILocation(line: 191, column: 35, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 191, column: 2)
!5003 = !DILocation(line: 191, column: 46, scope: !5002)
!5004 = !DILocation(line: 191, column: 2, scope: !4999)
!5005 = !DILocation(line: 192, column: 7, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 192, column: 7)
!5007 = !DILocation(line: 192, column: 12, scope: !5006)
!5008 = !DILocation(line: 192, column: 27, scope: !5006)
!5009 = !DILocation(line: 192, column: 39, scope: !5006)
!5010 = !DILocation(line: 192, column: 7, scope: !5002)
!5011 = !DILocation(line: 193, column: 4, scope: !5006)
!5012 = !DILocation(line: 192, column: 42, scope: !5006)
!5013 = !DILocation(line: 191, column: 69, scope: !5002)
!5014 = !DILocation(line: 191, column: 2, scope: !5002)
!5015 = distinct !{!5015, !5004, !5016}
!5016 = !DILocation(line: 193, column: 12, scope: !4999)
!5017 = !DILocation(line: 198, column: 9, scope: !4858)
!5018 = !DILocation(line: 198, column: 2, scope: !4858)
!5019 = !DILocation(line: 199, column: 1, scope: !4858)
!5020 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5021, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!131, !5023}
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!5025 = !DILocalVariable(name: "dev", arg: 1, scope: !5020, file: !67, line: 655, type: !5023)
!5026 = !DILocation(line: 655, column: 58, scope: !5020)
!5027 = !DILocation(line: 657, column: 9, scope: !5020)
!5028 = !DILocation(line: 657, column: 14, scope: !5020)
!5029 = !DILocation(line: 657, column: 2, scope: !5020)
!5030 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5031, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!7, !132, !7}
!5033 = !DILocalVariable(name: "dev", arg: 1, scope: !5030, file: !6, line: 1945, type: !132)
!5034 = !DILocation(line: 1945, column: 61, scope: !5030)
!5035 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5030, file: !6, line: 1946, type: !7)
!5036 = !DILocation(line: 1946, column: 16, scope: !5030)
!5037 = !DILocation(line: 1948, column: 10, scope: !5030)
!5038 = !DILocation(line: 1948, column: 15, scope: !5030)
!5039 = !DILocation(line: 1948, column: 22, scope: !5030)
!5040 = !DILocation(line: 1948, column: 31, scope: !5030)
!5041 = !DILocation(line: 1948, column: 40, scope: !5030)
!5042 = !DILocation(line: 1948, column: 28, scope: !5030)
!5043 = !DILocation(line: 1948, column: 2, scope: !5030)
!5044 = distinct !DISubprogram(name: "signal_pending", scope: !1623, file: !1623, line: 356, type: !5045, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!136, !1089}
!5047 = !DILocalVariable(name: "p", arg: 1, scope: !5044, file: !1623, line: 356, type: !1089)
!5048 = !DILocation(line: 356, column: 54, scope: !5044)
!5049 = !DILocation(line: 358, column: 9, scope: !5044)
!5050 = !DILocation(line: 358, column: 2, scope: !5044)
!5051 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !1091, file: !1091, line: 1828, type: !5052, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!136, !1089, !136}
!5054 = !DILocalVariable(name: "tsk", arg: 1, scope: !5051, file: !1091, line: 1828, type: !1089)
!5055 = !DILocation(line: 1828, column: 60, scope: !5051)
!5056 = !DILocalVariable(name: "flag", arg: 2, scope: !5051, file: !1091, line: 1828, type: !136)
!5057 = !DILocation(line: 1828, column: 69, scope: !5051)
!5058 = !DILocation(line: 1830, column: 46, scope: !5051)
!5059 = !DILocation(line: 1830, column: 29, scope: !5051)
!5060 = !DILocation(line: 1830, column: 52, scope: !5051)
!5061 = !DILocation(line: 1830, column: 9, scope: !5051)
!5062 = !DILocation(line: 1830, column: 2, scope: !5051)
!5063 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5064, file: !5064, line: 82, type: !5065, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5064 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!136, !5067, !136}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!5068 = !DILocalVariable(name: "ti", arg: 1, scope: !5063, file: !5064, line: 82, type: !5067)
!5069 = !DILocation(line: 82, column: 59, scope: !5063)
!5070 = !DILocalVariable(name: "flag", arg: 2, scope: !5063, file: !5064, line: 82, type: !136)
!5071 = !DILocation(line: 82, column: 67, scope: !5063)
!5072 = !DILocation(line: 84, column: 18, scope: !5063)
!5073 = !DILocation(line: 84, column: 42, scope: !5063)
!5074 = !DILocation(line: 84, column: 46, scope: !5063)
!5075 = !DILocation(line: 84, column: 9, scope: !5063)
!5076 = !DILocation(line: 84, column: 2, scope: !5063)
!5077 = distinct !DISubprogram(name: "task_thread_info", scope: !1091, file: !1091, line: 1729, type: !5078, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!5067, !1089}
!5080 = !DILocalVariable(name: "task", arg: 1, scope: !5077, file: !1091, line: 1729, type: !1089)
!5081 = !DILocation(line: 1729, column: 72, scope: !5077)
!5082 = !DILocation(line: 1731, column: 10, scope: !5077)
!5083 = !DILocation(line: 1731, column: 16, scope: !5077)
!5084 = !DILocation(line: 1731, column: 2, scope: !5077)
!5085 = distinct !DISubprogram(name: "test_bit", scope: !5086, file: !5086, line: 132, type: !5087, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5086 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!442, !265, !5089}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5091)
!5091 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !280)
!5092 = !DILocalVariable(name: "nr", arg: 1, scope: !5093, file: !4617, line: 210, type: !265)
!5093 = distinct !DISubprogram(name: "variable_test_bit", scope: !4617, file: !4617, line: 210, type: !5087, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5094 = !DILocation(line: 210, column: 52, scope: !5093, inlinedAt: !5095)
!5095 = distinct !DILocation(line: 135, column: 9, scope: !5085)
!5096 = !DILocalVariable(name: "addr", arg: 2, scope: !5093, file: !4617, line: 210, type: !5089)
!5097 = !DILocation(line: 210, column: 86, scope: !5093, inlinedAt: !5095)
!5098 = !DILocalVariable(name: "oldbit", scope: !5093, file: !4617, line: 212, type: !442)
!5099 = !DILocation(line: 212, column: 7, scope: !5093, inlinedAt: !5095)
!5100 = !DILocalVariable(name: "nr", arg: 1, scope: !5101, file: !4617, line: 204, type: !265)
!5101 = distinct !DISubprogram(name: "constant_test_bit", scope: !4617, file: !4617, line: 204, type: !5087, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5102 = !DILocation(line: 204, column: 52, scope: !5101, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 135, column: 9, scope: !5085)
!5104 = !DILocalVariable(name: "addr", arg: 2, scope: !5101, file: !4617, line: 204, type: !5089)
!5105 = !DILocation(line: 204, column: 86, scope: !5101, inlinedAt: !5103)
!5106 = !DILocalVariable(name: "v", arg: 1, scope: !5107, file: !5108, line: 69, type: !5111)
!5107 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5108, file: !5108, line: 69, type: !5109, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5108 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5109 = !DISubroutineType(types: !5110)
!5110 = !{null, !5111, !277}
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5113)
!5113 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5114 = !DILocation(line: 69, column: 73, scope: !5107, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 134, column: 2, scope: !5085)
!5116 = !DILocalVariable(name: "size", arg: 2, scope: !5107, file: !5108, line: 69, type: !277)
!5117 = !DILocation(line: 69, column: 83, scope: !5107, inlinedAt: !5115)
!5118 = !DILocalVariable(name: "nr", arg: 1, scope: !5085, file: !5086, line: 132, type: !265)
!5119 = !DILocation(line: 132, column: 34, scope: !5085)
!5120 = !DILocalVariable(name: "addr", arg: 2, scope: !5085, file: !5086, line: 132, type: !5089)
!5121 = !DILocation(line: 132, column: 68, scope: !5085)
!5122 = !DILocation(line: 134, column: 25, scope: !5085)
!5123 = !DILocation(line: 134, column: 32, scope: !5085)
!5124 = !DILocation(line: 134, column: 30, scope: !5085)
!5125 = !DILocation(line: 71, column: 19, scope: !5107, inlinedAt: !5115)
!5126 = !DILocation(line: 71, column: 22, scope: !5107, inlinedAt: !5115)
!5127 = !DILocation(line: 71, column: 2, scope: !5107, inlinedAt: !5115)
!5128 = !DILocation(line: 72, column: 2, scope: !5107, inlinedAt: !5115)
!5129 = !DILocation(line: 135, column: 9, scope: !5085)
!5130 = !DILocation(line: 206, column: 19, scope: !5101, inlinedAt: !5103)
!5131 = !DILocation(line: 206, column: 22, scope: !5101, inlinedAt: !5103)
!5132 = !DILocation(line: 206, column: 15, scope: !5101, inlinedAt: !5103)
!5133 = !DILocation(line: 207, column: 4, scope: !5101, inlinedAt: !5103)
!5134 = !DILocation(line: 207, column: 9, scope: !5101, inlinedAt: !5103)
!5135 = !DILocation(line: 207, column: 12, scope: !5101, inlinedAt: !5103)
!5136 = !DILocation(line: 206, column: 44, scope: !5101, inlinedAt: !5103)
!5137 = !DILocation(line: 207, column: 37, scope: !5101, inlinedAt: !5103)
!5138 = !DILocation(line: 217, column: 33, scope: !5093, inlinedAt: !5095)
!5139 = !DILocation(line: 217, column: 46, scope: !5093, inlinedAt: !5095)
!5140 = !DILocation(line: 214, column: 2, scope: !5093, inlinedAt: !5095)
!5141 = !{i32 -2147193134, i32 -2147193074}
!5142 = !DILocation(line: 219, column: 9, scope: !5093, inlinedAt: !5095)
!5143 = !DILocation(line: 135, column: 2, scope: !5085)
!5144 = distinct !DISubprogram(name: "kasan_check_read", scope: !5145, file: !5145, line: 34, type: !5146, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5145 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!442, !5111, !7}
!5148 = !DILocalVariable(name: "p", arg: 1, scope: !5144, file: !5145, line: 34, type: !5111)
!5149 = !DILocation(line: 34, column: 58, scope: !5144)
!5150 = !DILocalVariable(name: "size", arg: 2, scope: !5144, file: !5145, line: 34, type: !7)
!5151 = !DILocation(line: 34, column: 74, scope: !5144)
!5152 = !DILocation(line: 36, column: 2, scope: !5144)
!5153 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5154, file: !5154, line: 178, type: !5155, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5154 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5155 = !DISubroutineType(types: !5156)
!5156 = !{null, !5111, !277, !136}
!5157 = !DILocalVariable(name: "ptr", arg: 1, scope: !5153, file: !5154, line: 178, type: !5111)
!5158 = !DILocation(line: 178, column: 60, scope: !5153)
!5159 = !DILocalVariable(name: "size", arg: 2, scope: !5153, file: !5154, line: 178, type: !277)
!5160 = !DILocation(line: 178, column: 72, scope: !5153)
!5161 = !DILocalVariable(name: "type", arg: 3, scope: !5153, file: !5154, line: 179, type: !136)
!5162 = !DILocation(line: 179, column: 15, scope: !5153)
!5163 = !DILocation(line: 179, column: 23, scope: !5153)
