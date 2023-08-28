; ModuleID = '../bcout/drivers/usb/misc/usblcd.llvm.bc'
source_filename = "drivers/usb/misc/usblcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_lcd_driver_init6:\09\09\09"
module asm ".long\09lcd_driver_init - .\09\09\09"
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
%struct.usb_lcd = type { %struct.usb_device*, %struct.usb_interface*, i8*, i64, i8, i8, %struct.kref, %struct.semaphore, %struct.usb_anchor, %struct.rw_semaphore, i8 }
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
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_lcd_driver_init214 = internal global i8* bitcast (i32 ()* @lcd_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@lcd_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @lcd_probe, void (%struct.usb_interface*)* @lcd_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @lcd_suspend, i32 (%struct.usb_interface*)* @lcd_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @id_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 8, !dbg !3875
@__exitcall_lcd_driver_exit = internal global void ()* @lcd_driver_exit, section ".exitcall.exit", align 8, !dbg !3850
@__UNIQUE_ID_author215 = internal constant [45 x i8] c"usblcd.author=Georges Toth <g.toth@e-biz.lu>\00", section ".modinfo", align 1, !dbg !3855
@__UNIQUE_ID_description216 = internal constant [46 x i8] c"usblcd.description=USBLCD Driver Version 1.05\00", section ".modinfo", align 1, !dbg !3860
@__UNIQUE_ID_file217 = internal constant [36 x i8] c"usblcd.file=drivers/usb/misc/usblcd\00", section ".modinfo", align 1, !dbg !3865
@__UNIQUE_ID_license218 = internal constant [19 x i8] c"usblcd.license=GPL\00", section ".modinfo", align 1, !dbg !3870
@.str = private unnamed_addr constant [7 x i8] c"usblcd\00", align 1
@id_table = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 1, i16 4306, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3961
@lcd_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3936
@.str.1 = private unnamed_addr constant [15 x i8] c"&dev->io_rwsem\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"USBLCD model not supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Could not find both bulk-in and bulk-out endpoints\0A\00", align 1
@lcd_class = internal global %struct.usb_class_driver { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* (%struct.device*, i16*)* null, %struct.file_operations* @lcd_fops, i32 144 }, align 8, !dbg !3951
@.str.4 = private unnamed_addr constant [42 x i8] c"Not able to get a minor for this device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"USBLCD Version %1d%1d.%1d%1d found at address %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"USB LCD device now attached to USBLCD-%d\0A\00", align 1
@sema_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3939
@.str.7 = private unnamed_addr constant [16 x i8] c"semaphore->lock\00", align 1
@init_usb_anchor.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3945
@.str.8 = private unnamed_addr constant [14 x i8] c"&anchor->wait\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"lcd%d\00", align 1
@lcd_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* @lcd_read, i64 (%struct.file*, i8*, i64, i64*)* @lcd_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @lcd_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @lcd_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @lcd_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3959
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"%s - failed submitting write urb, error %d\0A\00", align 1
@__func__.lcd_write = private unnamed_addr constant [10 x i8] c"lcd_write\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"%1d%1d.%1d%1d\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"USBLCD Driver Version 1.05\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"\013USBLCD: %s - error, can't find device for minor %d\0A\00", align 1
@__func__.lcd_open = private unnamed_addr constant [9 x i8] c"lcd_open\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"USB LCD #%d now disconnected\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_lcd_driver_init214 to i8*), i8* bitcast (void ()* @lcd_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_lcd_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author215, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_description216, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_file217, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license218, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @lcd_driver_init() #0 section ".init.text" !dbg !3969 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @lcd_driver, %struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3972
  ret i32 %call, !dbg !3972
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @lcd_driver_exit() #0 section ".exit.text" !dbg !3973 {
entry:
  call void @usb_deregister(%struct.usb_driver* @lcd_driver) #9, !dbg !3974
  ret void, !dbg !3974
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lcd_probe(%struct.usb_interface* %interface, %struct.usb_device_id* %id) #2 !dbg !3938 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3975, metadata !DIExpression()), !dbg !3979
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3987, metadata !DIExpression()), !dbg !3988
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3989, metadata !DIExpression()), !dbg !3990
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3991, metadata !DIExpression()), !dbg !3992
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3993, metadata !DIExpression()), !dbg !3997
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3999, metadata !DIExpression()), !dbg !4003
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4005, metadata !DIExpression()), !dbg !4009
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4014, metadata !DIExpression()), !dbg !4015
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4016, metadata !DIExpression()), !dbg !4017
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4018, metadata !DIExpression()), !dbg !4019
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4020, metadata !DIExpression()), !dbg !4021
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4022, metadata !DIExpression()), !dbg !4023
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4024, metadata !DIExpression()), !dbg !4025
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4026, metadata !DIExpression()), !dbg !4027
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4028, metadata !DIExpression()), !dbg !4029
  %retval = alloca i32, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %bulk_in = alloca %struct.usb_endpoint_descriptor*, align 8
  %bulk_out = alloca %struct.usb_endpoint_descriptor*, align 8
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4030, metadata !DIExpression()), !dbg !4031
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4032, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !4034, metadata !DIExpression()), !dbg !4035
  store %struct.usb_lcd* null, %struct.usb_lcd** %dev, align 8, !dbg !4035
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %bulk_in, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %bulk_out, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4043, metadata !DIExpression()), !dbg !4044
  %call = call i8* @kzalloc(i64 144, i32 3264) #9, !dbg !4045
  %0 = bitcast i8* %call to %struct.usb_lcd*, !dbg !4045
  store %struct.usb_lcd* %0, %struct.usb_lcd** %dev, align 8, !dbg !4046
  %1 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4047
  %tobool = icmp ne %struct.usb_lcd* %1, null, !dbg !4047
  br i1 %tobool, label %if.end, label %if.then, !dbg !4049

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4050
  br label %return, !dbg !4050

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4051
  %kref = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %2, i32 0, i32 6, !dbg !4052
  call void @kref_init(%struct.kref* %kref) #9, !dbg !4053
  %3 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4054
  %limit_sem = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %3, i32 0, i32 7, !dbg !4055
  call void @sema_init(%struct.semaphore* %limit_sem, i32 5) #9, !dbg !4056
  br label %do.body, !dbg !4057

do.body:                                          ; preds = %if.end
  %4 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4058
  %io_rwsem = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %4, i32 0, i32 9, !dbg !4058
  call void @__init_rwsem(%struct.rw_semaphore* %io_rwsem, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @lcd_probe.__key) #9, !dbg !4058
  br label %do.end, !dbg !4058

do.end:                                           ; preds = %do.body
  %5 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4060
  %submitted = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %5, i32 0, i32 8, !dbg !4061
  call void @init_usb_anchor(%struct.usb_anchor* %submitted) #9, !dbg !4062
  %6 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4063
  %call2 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %6) #9, !dbg !4064
  %call3 = call %struct.usb_device* @usb_get_dev(%struct.usb_device* %call2) #9, !dbg !4065
  %7 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4066
  %udev = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %7, i32 0, i32 0, !dbg !4067
  store %struct.usb_device* %call3, %struct.usb_device** %udev, align 8, !dbg !4068
  %8 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4069
  %9 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4070
  %interface4 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %9, i32 0, i32 1, !dbg !4071
  store %struct.usb_interface* %8, %struct.usb_interface** %interface4, align 8, !dbg !4072
  %10 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4073
  %udev5 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %10, i32 0, i32 0, !dbg !4073
  %11 = load %struct.usb_device*, %struct.usb_device** %udev5, align 8, !dbg !4073
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 15, !dbg !4073
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 8, !dbg !4073
  %12 = load i16, i16* %idProduct, align 2, !dbg !4073
  %conv = zext i16 %12 to i32, !dbg !4073
  %cmp = icmp ne i32 %conv, 1, !dbg !4075
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !4076

if.then7:                                         ; preds = %do.end
  %13 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4077
  %dev8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 7, !dbg !4077
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4077
  store i32 -19, i32* %retval1, align 4, !dbg !4079
  br label %error, !dbg !4080

if.end9:                                          ; preds = %do.end
  %14 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4081
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 1, !dbg !4082
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4082
  %call10 = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %15, %struct.usb_endpoint_descriptor** %bulk_in, %struct.usb_endpoint_descriptor** %bulk_out, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null) #9, !dbg !4083
  store i32 %call10, i32* %retval1, align 4, !dbg !4084
  %16 = load i32, i32* %retval1, align 4, !dbg !4085
  %tobool11 = icmp ne i32 %16, 0, !dbg !4085
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4087

if.then12:                                        ; preds = %if.end9
  %17 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4088
  %dev13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 7, !dbg !4088
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !4088
  br label %error, !dbg !4090

if.end14:                                         ; preds = %if.end9
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %bulk_in, align 8, !dbg !4091
  %call15 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %18) #9, !dbg !4092
  %conv16 = sext i32 %call15 to i64, !dbg !4092
  %19 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4093
  %bulk_in_size = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %19, i32 0, i32 3, !dbg !4094
  store i64 %conv16, i64* %bulk_in_size, align 8, !dbg !4095
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %bulk_in, align 8, !dbg !4096
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %20, i32 0, i32 2, !dbg !4097
  %21 = load i8, i8* %bEndpointAddress, align 1, !dbg !4097
  %22 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4098
  %bulk_in_endpointAddr = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %22, i32 0, i32 4, !dbg !4099
  store i8 %21, i8* %bulk_in_endpointAddr, align 8, !dbg !4100
  %23 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4101
  %bulk_in_size17 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %23, i32 0, i32 3, !dbg !4102
  %24 = load i64, i64* %bulk_in_size17, align 8, !dbg !4102
  store i64 %24, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !4103
  %26 = call i1 @llvm.is.constant.i64(i64 %25) #11, !dbg !4104
  br i1 %26, label %if.then.i, label %if.end9.i, !dbg !4105

if.then.i:                                        ; preds = %if.end14
  %27 = load i64, i64* %size.addr.i, align 8, !dbg !4106
  %cmp.i = icmp ugt i64 %27, 8192, !dbg !4107
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4108

if.then1.i:                                       ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4109
  %29 = load i32, i32* %flags.addr.i, align 4, !dbg !4110
  store i64 %28, i64* %size.addr.i.i, align 8
  store i32 %29, i32* %flags.addr.i.i, align 4
  %30 = load i64, i64* %size.addr.i.i, align 8, !dbg !4111
  %call.i.i = call i32 @get_order(i64 %30) #12, !dbg !4112
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4023
  %31 = load i64, i64* %size.addr.i.i, align 8, !dbg !4113
  %32 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4114
  %33 = load i32, i32* %order.i.i, align 4, !dbg !4115
  store i64 %31, i64* %size.addr.i.i.i, align 8
  store i32 %32, i32* %flags.addr.i.i.i, align 4
  store i32 %33, i32* %order.addr.i.i.i, align 4
  %34 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4116
  %35 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4117
  %36 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4118
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %34, i32 %35, i32 %36) #13, !dbg !4119
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4119
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4119
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4119
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4119
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4120
  br label %kmalloc.exit, !dbg !4120

if.end.i:                                         ; preds = %if.then.i
  %37 = load i64, i64* %size.addr.i, align 8, !dbg !4121
  store i64 %37, i64* %size.addr.i11.i, align 8
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4122
  %tobool.i.i = icmp ne i64 %38, 0, !dbg !4122
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4124

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4125
  br label %kmalloc_index.exit.i, !dbg !4125

if.end.i.i:                                       ; preds = %if.end.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4126
  %cmp.i.i = icmp ule i64 %39, 8, !dbg !4128
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4129

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4130
  br label %kmalloc_index.exit.i, !dbg !4130

if.end2.i.i:                                      ; preds = %if.end.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4131
  %cmp3.i.i = icmp ugt i64 %40, 64, !dbg !4133
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4134

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4135
  %cmp4.i.i = icmp ule i64 %41, 96, !dbg !4136
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4137

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4138
  br label %kmalloc_index.exit.i, !dbg !4138

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4139
  %cmp7.i.i = icmp ugt i64 %42, 128, !dbg !4141
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4142

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4143
  %cmp9.i.i = icmp ule i64 %43, 192, !dbg !4144
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4145

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4146
  br label %kmalloc_index.exit.i, !dbg !4146

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4147
  %cmp12.i.i = icmp ule i64 %44, 8, !dbg !4149
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4150

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4151
  br label %kmalloc_index.exit.i, !dbg !4151

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4152
  %cmp15.i.i = icmp ule i64 %45, 16, !dbg !4154
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4155

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4156
  br label %kmalloc_index.exit.i, !dbg !4156

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4157
  %cmp18.i.i = icmp ule i64 %46, 32, !dbg !4159
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4160

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4161
  br label %kmalloc_index.exit.i, !dbg !4161

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4162
  %cmp21.i.i = icmp ule i64 %47, 64, !dbg !4164
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4165

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4166
  br label %kmalloc_index.exit.i, !dbg !4166

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4167
  %cmp24.i.i = icmp ule i64 %48, 128, !dbg !4169
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4170

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4171
  br label %kmalloc_index.exit.i, !dbg !4171

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4172
  %cmp27.i.i = icmp ule i64 %49, 256, !dbg !4174
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4175

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4176
  br label %kmalloc_index.exit.i, !dbg !4176

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4177
  %cmp30.i.i = icmp ule i64 %50, 512, !dbg !4179
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4180

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4181
  br label %kmalloc_index.exit.i, !dbg !4181

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4182
  %cmp33.i.i = icmp ule i64 %51, 1024, !dbg !4184
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4185

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4186
  br label %kmalloc_index.exit.i, !dbg !4186

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4187
  %cmp36.i.i = icmp ule i64 %52, 2048, !dbg !4189
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4190

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4191
  br label %kmalloc_index.exit.i, !dbg !4191

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4192
  %cmp39.i.i = icmp ule i64 %53, 4096, !dbg !4194
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4195

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4196
  br label %kmalloc_index.exit.i, !dbg !4196

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4197
  %cmp42.i.i = icmp ule i64 %54, 8192, !dbg !4199
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4200

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4201
  br label %kmalloc_index.exit.i, !dbg !4201

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4202
  %cmp45.i.i = icmp ule i64 %55, 16384, !dbg !4204
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4205

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4206
  br label %kmalloc_index.exit.i, !dbg !4206

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4207
  %cmp48.i.i = icmp ule i64 %56, 32768, !dbg !4209
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4210

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4211
  br label %kmalloc_index.exit.i, !dbg !4211

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4212
  %cmp51.i.i = icmp ule i64 %57, 65536, !dbg !4214
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4215

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4216
  br label %kmalloc_index.exit.i, !dbg !4216

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4217
  %cmp54.i.i = icmp ule i64 %58, 131072, !dbg !4219
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4220

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4221
  br label %kmalloc_index.exit.i, !dbg !4221

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4222
  %cmp57.i.i = icmp ule i64 %59, 262144, !dbg !4224
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4225

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4226
  br label %kmalloc_index.exit.i, !dbg !4226

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4227
  %cmp60.i.i = icmp ule i64 %60, 524288, !dbg !4229
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4230

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4231
  br label %kmalloc_index.exit.i, !dbg !4231

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4232
  %cmp63.i.i = icmp ule i64 %61, 1048576, !dbg !4234
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4235

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4236
  br label %kmalloc_index.exit.i, !dbg !4236

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4237
  %cmp66.i.i = icmp ule i64 %62, 2097152, !dbg !4239
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4240

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4241
  br label %kmalloc_index.exit.i, !dbg !4241

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4242
  %cmp69.i.i = icmp ule i64 %63, 4194304, !dbg !4244
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4245

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4246
  br label %kmalloc_index.exit.i, !dbg !4246

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4247
  %cmp72.i.i = icmp ule i64 %64, 8388608, !dbg !4249
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4250

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4251
  br label %kmalloc_index.exit.i, !dbg !4251

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4252
  %cmp75.i.i = icmp ule i64 %65, 16777216, !dbg !4254
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4255

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4256
  br label %kmalloc_index.exit.i, !dbg !4256

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4257
  %cmp78.i.i = icmp ule i64 %66, 33554432, !dbg !4259
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4260

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4261
  br label %kmalloc_index.exit.i, !dbg !4261

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4262
  %cmp81.i.i = icmp ule i64 %67, 67108864, !dbg !4264
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4265

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4266
  br label %kmalloc_index.exit.i, !dbg !4266

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4267, !srcloc !4270
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !4271, !srcloc !4274
  unreachable, !dbg !4275

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %68 = load i32, i32* %retval.i.i, align 4, !dbg !4276
  store i32 %68, i32* %index.i, align 4, !dbg !4277
  %69 = load i32, i32* %index.i, align 4, !dbg !4278
  %tobool.i = icmp ne i32 %69, 0, !dbg !4278
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4280

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4281
  br label %kmalloc.exit, !dbg !4281

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %70 = load i32, i32* %flags.addr.i, align 4, !dbg !4282
  store i32 %70, i32* %flags.addr.i13.i, align 4
  %71 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4283
  %and.i.i = and i32 %71, 17, !dbg !4283
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4283
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4283
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4283
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4283
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4285

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4286
  br label %kmalloc_type.exit.i, !dbg !4286

if.end.i16.i:                                     ; preds = %if.end4.i
  %72 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4287
  %and2.i.i = and i32 %72, 1, !dbg !4288
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4287
  %73 = zext i1 %tobool3.i.i to i64, !dbg !4287
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4287
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4289
  br label %kmalloc_type.exit.i, !dbg !4289

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %74 = load i32, i32* %retval.i12.i, align 4, !dbg !4290
  %idxprom.i = zext i32 %74 to i64, !dbg !4291
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4291
  %75 = load i32, i32* %index.i, align 4, !dbg !4292
  %idxprom6.i = zext i32 %75 to i64, !dbg !4291
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4291
  %76 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4291
  %77 = load i32, i32* %flags.addr.i, align 4, !dbg !4293
  %78 = load i64, i64* %size.addr.i, align 8, !dbg !4294
  store %struct.kmem_cache* %76, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %77, i32* %flags.addr.i17.i, align 4
  store i64 %78, i64* %size.addr.i18.i, align 8
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4295
  %80 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4296
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %79, i32 %80) #13, !dbg !4297
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4297
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4297
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4297
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4297
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3992
  %81 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4298
  %82 = load i8*, i8** %ret.i.i, align 8, !dbg !4299
  %83 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4300
  %84 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4301
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %81, i8* %82, i64 %83, i32 %84) #13, !dbg !4302
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4303
  %85 = load i8*, i8** %ret.i.i, align 8, !dbg !4304
  store i8* %85, i8** %retval.i, align 8, !dbg !4305
  br label %kmalloc.exit, !dbg !4305

if.end9.i:                                        ; preds = %if.end14
  %86 = load i64, i64* %size.addr.i, align 8, !dbg !4306
  %87 = load i32, i32* %flags.addr.i, align 4, !dbg !4307
  %call10.i = call noalias i8* @__kmalloc(i64 %86, i32 %87) #13, !dbg !4308
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4308
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4308
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4308
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4308
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4309
  br label %kmalloc.exit, !dbg !4309

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %88 = load i8*, i8** %retval.i, align 8, !dbg !4310
  %89 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4311
  %bulk_in_buffer = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %89, i32 0, i32 2, !dbg !4312
  store i8* %88, i8** %bulk_in_buffer, align 8, !dbg !4313
  %90 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4314
  %bulk_in_buffer19 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %90, i32 0, i32 2, !dbg !4316
  %91 = load i8*, i8** %bulk_in_buffer19, align 8, !dbg !4316
  %tobool20 = icmp ne i8* %91, null, !dbg !4314
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4317

if.then21:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %retval1, align 4, !dbg !4318
  br label %error, !dbg !4320

if.end22:                                         ; preds = %kmalloc.exit
  %92 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %bulk_out, align 8, !dbg !4321
  %bEndpointAddress23 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %92, i32 0, i32 2, !dbg !4322
  %93 = load i8, i8* %bEndpointAddress23, align 1, !dbg !4322
  %94 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4323
  %bulk_out_endpointAddr = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %94, i32 0, i32 5, !dbg !4324
  store i8 %93, i8* %bulk_out_endpointAddr, align 1, !dbg !4325
  %95 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4326
  %96 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4327
  %97 = bitcast %struct.usb_lcd* %96 to i8*, !dbg !4327
  call void @usb_set_intfdata(%struct.usb_interface* %95, i8* %97) #9, !dbg !4328
  %98 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4329
  %call24 = call i32 @usb_register_dev(%struct.usb_interface* %98, %struct.usb_class_driver* @lcd_class) #9, !dbg !4330
  store i32 %call24, i32* %retval1, align 4, !dbg !4331
  %99 = load i32, i32* %retval1, align 4, !dbg !4332
  %tobool25 = icmp ne i32 %99, 0, !dbg !4332
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !4334

if.then26:                                        ; preds = %if.end22
  %100 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4335
  %dev27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %100, i32 0, i32 7, !dbg !4335
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !4335
  br label %error, !dbg !4337

if.end28:                                         ; preds = %if.end22
  %101 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4338
  %udev29 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %101, i32 0, i32 0, !dbg !4338
  %102 = load %struct.usb_device*, %struct.usb_device** %udev29, align 8, !dbg !4338
  %descriptor30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %102, i32 0, i32 15, !dbg !4338
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor30, i32 0, i32 9, !dbg !4338
  %103 = load i16, i16* %bcdDevice, align 4, !dbg !4338
  %conv31 = zext i16 %103 to i32, !dbg !4338
  store i32 %conv31, i32* %i, align 4, !dbg !4339
  %104 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4340
  %dev32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %104, i32 0, i32 7, !dbg !4340
  %105 = load i32, i32* %i, align 4, !dbg !4340
  %and = and i32 %105, 61440, !dbg !4340
  %shr = ashr i32 %and, 12, !dbg !4340
  %106 = load i32, i32* %i, align 4, !dbg !4340
  %and33 = and i32 %106, 3840, !dbg !4340
  %shr34 = ashr i32 %and33, 8, !dbg !4340
  %107 = load i32, i32* %i, align 4, !dbg !4340
  %and35 = and i32 %107, 240, !dbg !4340
  %shr36 = ashr i32 %and35, 4, !dbg !4340
  %108 = load i32, i32* %i, align 4, !dbg !4340
  %and37 = and i32 %108, 15, !dbg !4340
  %109 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4340
  %udev38 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %109, i32 0, i32 0, !dbg !4340
  %110 = load %struct.usb_device*, %struct.usb_device** %udev38, align 8, !dbg !4340
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %110, i32 0, i32 0, !dbg !4340
  %111 = load i32, i32* %devnum, align 8, !dbg !4340
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %shr, i32 %shr34, i32 %shr36, i32 %and37, i32 %111) #10, !dbg !4340
  %112 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4341
  %dev39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %112, i32 0, i32 7, !dbg !4341
  %113 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4341
  %minor = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 4, !dbg !4341
  %114 = load i32, i32* %minor, align 8, !dbg !4341
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %114) #10, !dbg !4341
  store i32 0, i32* %retval, align 4, !dbg !4342
  br label %return, !dbg !4342

error:                                            ; preds = %if.then26, %if.then21, %if.then12, %if.then7
  call void @llvm.dbg.label(metadata !4343), !dbg !4344
  %115 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4345
  %kref40 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %115, i32 0, i32 6, !dbg !4346
  %call41 = call i32 @kref_put(%struct.kref* %kref40, void (%struct.kref*)* @lcd_delete) #9, !dbg !4347
  %116 = load i32, i32* %retval1, align 4, !dbg !4348
  store i32 %116, i32* %retval, align 4, !dbg !4349
  br label %return, !dbg !4349

return:                                           ; preds = %error, %if.end28, %if.then
  %117 = load i32, i32* %retval, align 4, !dbg !4350
  ret i32 %117, !dbg !4350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lcd_disconnect(%struct.usb_interface* %interface) #2 !dbg !4351 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %minor = alloca i32, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !4354, metadata !DIExpression()), !dbg !4355
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4356
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4357
  %1 = bitcast i8* %call to %struct.usb_lcd*, !dbg !4357
  store %struct.usb_lcd* %1, %struct.usb_lcd** %dev, align 8, !dbg !4355
  call void @llvm.dbg.declare(metadata i32* %minor, metadata !4358, metadata !DIExpression()), !dbg !4359
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4360
  %minor1 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %2, i32 0, i32 4, !dbg !4361
  %3 = load i32, i32* %minor1, align 8, !dbg !4361
  store i32 %3, i32* %minor, align 4, !dbg !4359
  %4 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4362
  call void @usb_deregister_dev(%struct.usb_interface* %4, %struct.usb_class_driver* @lcd_class) #9, !dbg !4363
  %5 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4364
  %io_rwsem = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %5, i32 0, i32 9, !dbg !4365
  call void @down_write(%struct.rw_semaphore* %io_rwsem) #9, !dbg !4366
  %6 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4367
  %disconnected = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %6, i32 0, i32 10, !dbg !4368
  %bf.load = load i8, i8* %disconnected, align 8, !dbg !4369
  %bf.clear = and i8 %bf.load, -2, !dbg !4369
  %bf.set = or i8 %bf.clear, 1, !dbg !4369
  store i8 %bf.set, i8* %disconnected, align 8, !dbg !4369
  %7 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4370
  %io_rwsem2 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %7, i32 0, i32 9, !dbg !4371
  call void @up_write(%struct.rw_semaphore* %io_rwsem2) #9, !dbg !4372
  %8 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4373
  %submitted = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %8, i32 0, i32 8, !dbg !4374
  call void @usb_kill_anchored_urbs(%struct.usb_anchor* %submitted) #9, !dbg !4375
  %9 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4376
  %kref = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %9, i32 0, i32 6, !dbg !4377
  %call3 = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @lcd_delete) #9, !dbg !4378
  %10 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4379
  %dev4 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 7, !dbg !4379
  %11 = load i32, i32* %minor, align 4, !dbg !4379
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %11) #10, !dbg !4379
  ret void, !dbg !4380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lcd_suspend(%struct.usb_interface* %intf, i32 %message.coerce) #2 !dbg !4381 {
entry:
  %retval = alloca i32, align 4
  %message = alloca %struct.pm_message, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !4384, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !4386, metadata !DIExpression()), !dbg !4387
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4388
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4389
  %1 = bitcast i8* %call to %struct.usb_lcd*, !dbg !4389
  store %struct.usb_lcd* %1, %struct.usb_lcd** %dev, align 8, !dbg !4387
  %2 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4390
  %tobool = icmp ne %struct.usb_lcd* %2, null, !dbg !4390
  br i1 %tobool, label %if.end, label %if.then, !dbg !4392

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4393
  br label %return, !dbg !4393

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4394
  call void @lcd_draw_down(%struct.usb_lcd* %3) #9, !dbg !4395
  store i32 0, i32* %retval, align 4, !dbg !4396
  br label %return, !dbg !4396

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4397
  ret i32 %4, !dbg !4397
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lcd_resume(%struct.usb_interface* %intf) #2 !dbg !4398 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  ret i32 0, !dbg !4401
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4402 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3975, metadata !DIExpression()), !dbg !4403
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3987, metadata !DIExpression()), !dbg !4406
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3989, metadata !DIExpression()), !dbg !4407
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3991, metadata !DIExpression()), !dbg !4408
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3993, metadata !DIExpression()), !dbg !4409
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3999, metadata !DIExpression()), !dbg !4411
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4005, metadata !DIExpression()), !dbg !4413
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4014, metadata !DIExpression()), !dbg !4416
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4016, metadata !DIExpression()), !dbg !4417
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4018, metadata !DIExpression()), !dbg !4418
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4020, metadata !DIExpression()), !dbg !4419
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4022, metadata !DIExpression()), !dbg !4420
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4024, metadata !DIExpression()), !dbg !4421
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4026, metadata !DIExpression()), !dbg !4422
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4028, metadata !DIExpression()), !dbg !4423
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4426, metadata !DIExpression()), !dbg !4427
  %0 = load i64, i64* %size.addr, align 8, !dbg !4428
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4429
  %or = or i32 %1, 256, !dbg !4430
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4431
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4432
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4433

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4434
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4435
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4436

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4437
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4438
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4439
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4440
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4420
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4441
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4442
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4443
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4444
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4445
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4446
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4447
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4447
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4447
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4447
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4447
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4448
  br label %kmalloc.exit, !dbg !4448

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4449
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4450
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4450
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4451

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4452
  br label %kmalloc_index.exit.i, !dbg !4452

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4453
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4454
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4455

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4456
  br label %kmalloc_index.exit.i, !dbg !4456

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4457
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4458
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4459

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4460
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4461
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4462

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4463
  br label %kmalloc_index.exit.i, !dbg !4463

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4464
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4465
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4466

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4467
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4468
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4469

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4470
  br label %kmalloc_index.exit.i, !dbg !4470

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4471
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4472
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4473

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4474
  br label %kmalloc_index.exit.i, !dbg !4474

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4475
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4476
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4477

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4478
  br label %kmalloc_index.exit.i, !dbg !4478

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4479
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4480
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4481

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4482
  br label %kmalloc_index.exit.i, !dbg !4482

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4483
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4484
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4485

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4486
  br label %kmalloc_index.exit.i, !dbg !4486

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4487
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4488
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4489

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4490
  br label %kmalloc_index.exit.i, !dbg !4490

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4491
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4492
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4493

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4494
  br label %kmalloc_index.exit.i, !dbg !4494

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4495
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4496
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4497

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4498
  br label %kmalloc_index.exit.i, !dbg !4498

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4499
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4500
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4501

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4502
  br label %kmalloc_index.exit.i, !dbg !4502

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4503
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4504
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4505

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4506
  br label %kmalloc_index.exit.i, !dbg !4506

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4507
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4508
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4509

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4510
  br label %kmalloc_index.exit.i, !dbg !4510

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4511
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4512
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4513

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4514
  br label %kmalloc_index.exit.i, !dbg !4514

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4515
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4516
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4517

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4518
  br label %kmalloc_index.exit.i, !dbg !4518

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4519
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4520
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4521

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4522
  br label %kmalloc_index.exit.i, !dbg !4522

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4523
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4524
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4525

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4526
  br label %kmalloc_index.exit.i, !dbg !4526

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4527
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4528
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4529

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4530
  br label %kmalloc_index.exit.i, !dbg !4530

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4531
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4532
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4533

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4534
  br label %kmalloc_index.exit.i, !dbg !4534

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4535
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4536
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4537

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4538
  br label %kmalloc_index.exit.i, !dbg !4538

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4539
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4540
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4541

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4542
  br label %kmalloc_index.exit.i, !dbg !4542

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4543
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4544
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4545

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4546
  br label %kmalloc_index.exit.i, !dbg !4546

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4547
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4548
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4549

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4550
  br label %kmalloc_index.exit.i, !dbg !4550

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4551
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4552
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4553

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4554
  br label %kmalloc_index.exit.i, !dbg !4554

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4555
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4556
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4557

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4558
  br label %kmalloc_index.exit.i, !dbg !4558

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4559
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4560
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4561

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4562
  br label %kmalloc_index.exit.i, !dbg !4562

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4563
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4564
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4565

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4566
  br label %kmalloc_index.exit.i, !dbg !4566

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4567, !srcloc !4270
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !4568, !srcloc !4274
  unreachable, !dbg !4569

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4570
  store i32 %45, i32* %index.i, align 4, !dbg !4571
  %46 = load i32, i32* %index.i, align 4, !dbg !4572
  %tobool.i = icmp ne i32 %46, 0, !dbg !4572
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4573

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4574
  br label %kmalloc.exit, !dbg !4574

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4575
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4576
  %and.i.i = and i32 %48, 17, !dbg !4576
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4576
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4576
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4576
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4576
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4577

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4578
  br label %kmalloc_type.exit.i, !dbg !4578

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4579
  %and2.i.i = and i32 %49, 1, !dbg !4580
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4579
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4579
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4579
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4581
  br label %kmalloc_type.exit.i, !dbg !4581

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4582
  %idxprom.i = zext i32 %51 to i64, !dbg !4583
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4583
  %52 = load i32, i32* %index.i, align 4, !dbg !4584
  %idxprom6.i = zext i32 %52 to i64, !dbg !4583
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4583
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4583
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4585
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4586
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4587
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4588
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4589
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4589
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4589
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4589
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4589
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4408
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4590
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4591
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4592
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4593
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4594
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4595
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4596
  store i8* %62, i8** %retval.i, align 8, !dbg !4597
  br label %kmalloc.exit, !dbg !4597

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4598
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4599
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4600
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4600
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4600
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4600
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4600
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4601
  br label %kmalloc.exit, !dbg !4601

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4602
  ret i8* %65, !dbg !4603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #2 !dbg !4604 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4608, metadata !DIExpression()), !dbg !4609
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4610
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4611
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #9, !dbg !4612
  ret void, !dbg !4613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sema_init(%struct.semaphore* %sem, i32 %val) #2 !dbg !3941 {
entry:
  %sem.addr = alloca %struct.semaphore*, align 8
  %val.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.semaphore, align 8
  store %struct.semaphore* %sem, %struct.semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.semaphore** %sem.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4616, metadata !DIExpression()), !dbg !4617
  %0 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !4618
  %count = getelementptr inbounds %struct.semaphore, %struct.semaphore* %.compoundliteral, i32 0, i32 1, !dbg !4619
  %1 = load i32, i32* %val.addr, align 4, !dbg !4619
  store i32 %1, i32* %count, align 8, !dbg !4619
  %wait_list = getelementptr inbounds %struct.semaphore, %struct.semaphore* %.compoundliteral, i32 0, i32 2, !dbg !4619
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %wait_list, i32 0, i32 0, !dbg !4619
  %2 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !4619
  %wait_list1 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %2, i32 0, i32 2, !dbg !4619
  store %struct.list_head* %wait_list1, %struct.list_head** %next, align 8, !dbg !4619
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %wait_list, i32 0, i32 1, !dbg !4619
  %3 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !4619
  %wait_list2 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %3, i32 0, i32 2, !dbg !4619
  store %struct.list_head* %wait_list2, %struct.list_head** %prev, align 8, !dbg !4619
  %4 = bitcast %struct.semaphore* %0 to i8*, !dbg !4620
  %5 = bitcast %struct.semaphore* %.compoundliteral to i8*, !dbg !4620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false), !dbg !4620
  br label %do.body, !dbg !4621

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4622

do.end:                                           ; preds = %do.body
  ret void, !dbg !4624
}

; Function Attrs: noredzone
declare dso_local void @__init_rwsem(%struct.rw_semaphore*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @init_usb_anchor(%struct.usb_anchor* %anchor) #2 !dbg !3947 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4625, metadata !DIExpression()), !dbg !4632
  %anchor.addr = alloca %struct.usb_anchor*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.usb_anchor* %anchor, %struct.usb_anchor** %anchor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_anchor** %anchor.addr, metadata !4635, metadata !DIExpression()), !dbg !4636
  %0 = load %struct.usb_anchor*, %struct.usb_anchor** %anchor.addr, align 8, !dbg !4637
  %1 = bitcast %struct.usb_anchor* %0 to i8*, !dbg !4638
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 40, i1 false), !dbg !4638
  %2 = load %struct.usb_anchor*, %struct.usb_anchor** %anchor.addr, align 8, !dbg !4639
  %urb_list = getelementptr inbounds %struct.usb_anchor, %struct.usb_anchor* %2, i32 0, i32 0, !dbg !4640
  call void @INIT_LIST_HEAD(%struct.list_head* %urb_list) #9, !dbg !4641
  br label %do.body, !dbg !4642

do.body:                                          ; preds = %entry
  %3 = load %struct.usb_anchor*, %struct.usb_anchor** %anchor.addr, align 8, !dbg !4643
  %wait = getelementptr inbounds %struct.usb_anchor, %struct.usb_anchor* %3, i32 0, i32 1, !dbg !4643
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), %struct.lock_class_key* @init_usb_anchor.__key) #9, !dbg !4643
  br label %do.end, !dbg !4643

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4645

do.body1:                                         ; preds = %do.end
  %4 = load %struct.usb_anchor*, %struct.usb_anchor** %anchor.addr, align 8, !dbg !4646
  %lock = getelementptr inbounds %struct.usb_anchor, %struct.usb_anchor* %4, i32 0, i32 2, !dbg !4646
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4647
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !4648
  %rlock.i = bitcast %union.anon.3* %6 to %struct.raw_spinlock*, !dbg !4648
  %7 = load %struct.usb_anchor*, %struct.usb_anchor** %anchor.addr, align 8, !dbg !4646
  %lock2 = getelementptr inbounds %struct.usb_anchor, %struct.usb_anchor* %7, i32 0, i32 2, !dbg !4646
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4646
  %rlock = bitcast %union.anon.3* %8 to %struct.raw_spinlock*, !dbg !4646
  %9 = bitcast %struct.spinlock* %lock2 to i8*, !dbg !4646
  %10 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 1 %10, i64 0, i1 false), !dbg !4646
  br label %do.end3, !dbg !4646

do.end3:                                          ; preds = %do.body1
  ret void, !dbg !4649
}

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @usb_get_dev(%struct.usb_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4650 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4653, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4655, metadata !DIExpression()), !dbg !4657
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4657
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4657
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4657
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4657
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4657
  store i8* %2, i8** %__mptr, align 8, !dbg !4657
  br label %do.body, !dbg !4657

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4658

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4657
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4657
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4657
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4658
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4657
  ret %struct.usb_device* %5, !dbg !4660
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4661 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4666, metadata !DIExpression()), !dbg !4667
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4668
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !4668
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4668
  %conv = zext i16 %1 to i32, !dbg !4668
  %and = and i32 %conv, 2047, !dbg !4669
  ret i32 %and, !dbg !4670
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4671 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4674, metadata !DIExpression()), !dbg !4675
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4676, metadata !DIExpression()), !dbg !4677
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4678
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4679
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4680
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4681
  ret void, !dbg !4682
}

; Function Attrs: noredzone
declare dso_local i32 @usb_register_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #2 !dbg !4683 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4691
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4693
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #9, !dbg !4694
  br i1 %call, label %if.then, label %if.end, !dbg !4695

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !4696
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4698
  call void %1(%struct.kref* %2) #9, !dbg !4696
  store i32 1, i32* %retval, align 4, !dbg !4699
  br label %return, !dbg !4699

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4700
  br label %return, !dbg !4700

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4701
  ret i32 %3, !dbg !4701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lcd_delete(%struct.kref* %kref) #2 !dbg !4702 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_lcd*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4707, metadata !DIExpression()), !dbg !4709
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4709
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !4709
  store i8* %1, i8** %__mptr, align 8, !dbg !4709
  br label %do.body, !dbg !4709

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4710

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4709
  %add.ptr = getelementptr i8, i8* %2, i64 -36, !dbg !4709
  %3 = bitcast i8* %add.ptr to %struct.usb_lcd*, !dbg !4709
  store %struct.usb_lcd* %3, %struct.usb_lcd** %tmp, align 8, !dbg !4710
  %4 = load %struct.usb_lcd*, %struct.usb_lcd** %tmp, align 8, !dbg !4709
  store %struct.usb_lcd* %4, %struct.usb_lcd** %dev, align 8, !dbg !4706
  %5 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4712
  %udev = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %5, i32 0, i32 0, !dbg !4713
  %6 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4713
  call void @usb_put_dev(%struct.usb_device* %6) #9, !dbg !4714
  %7 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4715
  %bulk_in_buffer = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %7, i32 0, i32 2, !dbg !4716
  %8 = load i8*, i8** %bulk_in_buffer, align 8, !dbg !4716
  call void @kfree(i8* %8) #9, !dbg !4717
  %9 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4718
  %10 = bitcast %struct.usb_lcd* %9 to i8*, !dbg !4718
  call void @kfree(i8* %10) #9, !dbg !4719
  ret void, !dbg !4720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #2 !dbg !4721 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4725, metadata !DIExpression()), !dbg !4731
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4736, metadata !DIExpression()), !dbg !4737
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4738, metadata !DIExpression()), !dbg !4746
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4748, metadata !DIExpression()), !dbg !4749
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4750, metadata !DIExpression()), !dbg !4751
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4752, metadata !DIExpression()), !dbg !4753
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4758
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !4759
  %1 = load i32, i32* %n.addr, align 4, !dbg !4760
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4761
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4761
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4762
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4763
  %conv.i.i = trunc i64 %5 to i32, !dbg !4763
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #13, !dbg !4764
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4765
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4765
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #13, !dbg !4765
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4766
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !4767
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4768
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4768
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !4768
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !4768
  ret void, !dbg !4770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !4771 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  ret i1 true, !dbg !4779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !4780 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4786, metadata !DIExpression()), !dbg !4787
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4788, metadata !DIExpression()), !dbg !4789
  ret void, !dbg !4790
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !4791 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  br label %do.body, !dbg !4797

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4798

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4800

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4798

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4802
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4802
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4802
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4802
  br label %do.end3, !dbg !4802

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4798

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4804
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4805
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4806
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4807
  ret void, !dbg !4808
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !4809 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4813, metadata !DIExpression()), !dbg !4818
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4820, metadata !DIExpression()), !dbg !4821
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  %0 = load i64, i64* %size.addr, align 8, !dbg !4824
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4826
  br i1 %1, label %if.then, label %if.end447, !dbg !4827

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4828
  %tobool = icmp ne i64 %2, 0, !dbg !4828
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4831

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4832
  br label %return, !dbg !4832

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4833
  %cmp = icmp ult i64 %3, 4096, !dbg !4835
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4836

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4837
  br label %return, !dbg !4837

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub = sub i64 %4, 1, !dbg !4838
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4838
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4838

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub4 = sub i64 %6, 1, !dbg !4838
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4838
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4838

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub6 = sub i64 %8, 1, !dbg !4838
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4838
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4838

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4838

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub9 = sub i64 %9, 1, !dbg !4838
  %and = and i64 %sub9, -9223372036854775808, !dbg !4838
  %tobool10 = icmp ne i64 %and, 0, !dbg !4838
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4838

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4838

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub13 = sub i64 %10, 1, !dbg !4838
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4838
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4838
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4838

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4838

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub18 = sub i64 %11, 1, !dbg !4838
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4838
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4838
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4838

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4838

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub23 = sub i64 %12, 1, !dbg !4838
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4838
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4838
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4838

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4838

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub28 = sub i64 %13, 1, !dbg !4838
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4838
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4838
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4838

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4838

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub33 = sub i64 %14, 1, !dbg !4838
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4838
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4838
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4838

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4838

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub38 = sub i64 %15, 1, !dbg !4838
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4838
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4838
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4838

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4838

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub43 = sub i64 %16, 1, !dbg !4838
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4838
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4838
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4838

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4838

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub48 = sub i64 %17, 1, !dbg !4838
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4838
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4838
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4838

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4838

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub53 = sub i64 %18, 1, !dbg !4838
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4838
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4838
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4838

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4838

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub58 = sub i64 %19, 1, !dbg !4838
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4838
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4838
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4838

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4838

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub63 = sub i64 %20, 1, !dbg !4838
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4838
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4838
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4838

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4838

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub68 = sub i64 %21, 1, !dbg !4838
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4838
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4838
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4838

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4838

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub73 = sub i64 %22, 1, !dbg !4838
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4838
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4838
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4838

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4838

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub78 = sub i64 %23, 1, !dbg !4838
  %and79 = and i64 %sub78, 562949953421312, !dbg !4838
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4838
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4838

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4838

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub83 = sub i64 %24, 1, !dbg !4838
  %and84 = and i64 %sub83, 281474976710656, !dbg !4838
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4838
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4838

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4838

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub88 = sub i64 %25, 1, !dbg !4838
  %and89 = and i64 %sub88, 140737488355328, !dbg !4838
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4838
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4838

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4838

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub93 = sub i64 %26, 1, !dbg !4838
  %and94 = and i64 %sub93, 70368744177664, !dbg !4838
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4838
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4838

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4838

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub98 = sub i64 %27, 1, !dbg !4838
  %and99 = and i64 %sub98, 35184372088832, !dbg !4838
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4838
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4838

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4838

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub103 = sub i64 %28, 1, !dbg !4838
  %and104 = and i64 %sub103, 17592186044416, !dbg !4838
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4838
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4838

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4838

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub108 = sub i64 %29, 1, !dbg !4838
  %and109 = and i64 %sub108, 8796093022208, !dbg !4838
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4838
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4838

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4838

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub113 = sub i64 %30, 1, !dbg !4838
  %and114 = and i64 %sub113, 4398046511104, !dbg !4838
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4838
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4838

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4838

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub118 = sub i64 %31, 1, !dbg !4838
  %and119 = and i64 %sub118, 2199023255552, !dbg !4838
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4838
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4838

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4838

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub123 = sub i64 %32, 1, !dbg !4838
  %and124 = and i64 %sub123, 1099511627776, !dbg !4838
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4838
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4838

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4838

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub128 = sub i64 %33, 1, !dbg !4838
  %and129 = and i64 %sub128, 549755813888, !dbg !4838
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4838
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4838

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4838

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub133 = sub i64 %34, 1, !dbg !4838
  %and134 = and i64 %sub133, 274877906944, !dbg !4838
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4838
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4838

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4838

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub138 = sub i64 %35, 1, !dbg !4838
  %and139 = and i64 %sub138, 137438953472, !dbg !4838
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4838
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4838

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4838

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub143 = sub i64 %36, 1, !dbg !4838
  %and144 = and i64 %sub143, 68719476736, !dbg !4838
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4838
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4838

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4838

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub148 = sub i64 %37, 1, !dbg !4838
  %and149 = and i64 %sub148, 34359738368, !dbg !4838
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4838
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4838

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4838

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub153 = sub i64 %38, 1, !dbg !4838
  %and154 = and i64 %sub153, 17179869184, !dbg !4838
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4838
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4838

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4838

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub158 = sub i64 %39, 1, !dbg !4838
  %and159 = and i64 %sub158, 8589934592, !dbg !4838
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4838
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4838

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4838

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub163 = sub i64 %40, 1, !dbg !4838
  %and164 = and i64 %sub163, 4294967296, !dbg !4838
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4838
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4838

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4838

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub168 = sub i64 %41, 1, !dbg !4838
  %and169 = and i64 %sub168, 2147483648, !dbg !4838
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4838
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4838

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4838

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub173 = sub i64 %42, 1, !dbg !4838
  %and174 = and i64 %sub173, 1073741824, !dbg !4838
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4838
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4838

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4838

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub178 = sub i64 %43, 1, !dbg !4838
  %and179 = and i64 %sub178, 536870912, !dbg !4838
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4838
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4838

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4838

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub183 = sub i64 %44, 1, !dbg !4838
  %and184 = and i64 %sub183, 268435456, !dbg !4838
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4838
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4838

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4838

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub188 = sub i64 %45, 1, !dbg !4838
  %and189 = and i64 %sub188, 134217728, !dbg !4838
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4838
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4838

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4838

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub193 = sub i64 %46, 1, !dbg !4838
  %and194 = and i64 %sub193, 67108864, !dbg !4838
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4838
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4838

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4838

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub198 = sub i64 %47, 1, !dbg !4838
  %and199 = and i64 %sub198, 33554432, !dbg !4838
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4838
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4838

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4838

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub203 = sub i64 %48, 1, !dbg !4838
  %and204 = and i64 %sub203, 16777216, !dbg !4838
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4838
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4838

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4838

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub208 = sub i64 %49, 1, !dbg !4838
  %and209 = and i64 %sub208, 8388608, !dbg !4838
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4838
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4838

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4838

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub213 = sub i64 %50, 1, !dbg !4838
  %and214 = and i64 %sub213, 4194304, !dbg !4838
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4838
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4838

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4838

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub218 = sub i64 %51, 1, !dbg !4838
  %and219 = and i64 %sub218, 2097152, !dbg !4838
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4838
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4838

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4838

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub223 = sub i64 %52, 1, !dbg !4838
  %and224 = and i64 %sub223, 1048576, !dbg !4838
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4838
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4838

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4838

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub228 = sub i64 %53, 1, !dbg !4838
  %and229 = and i64 %sub228, 524288, !dbg !4838
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4838
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4838

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4838

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub233 = sub i64 %54, 1, !dbg !4838
  %and234 = and i64 %sub233, 262144, !dbg !4838
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4838
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4838

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4838

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub238 = sub i64 %55, 1, !dbg !4838
  %and239 = and i64 %sub238, 131072, !dbg !4838
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4838
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4838

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4838

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub243 = sub i64 %56, 1, !dbg !4838
  %and244 = and i64 %sub243, 65536, !dbg !4838
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4838
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4838

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4838

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub248 = sub i64 %57, 1, !dbg !4838
  %and249 = and i64 %sub248, 32768, !dbg !4838
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4838
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4838

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4838

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub253 = sub i64 %58, 1, !dbg !4838
  %and254 = and i64 %sub253, 16384, !dbg !4838
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4838
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4838

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4838

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub258 = sub i64 %59, 1, !dbg !4838
  %and259 = and i64 %sub258, 8192, !dbg !4838
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4838
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4838

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4838

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub263 = sub i64 %60, 1, !dbg !4838
  %and264 = and i64 %sub263, 4096, !dbg !4838
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4838
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4838

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4838

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub268 = sub i64 %61, 1, !dbg !4838
  %and269 = and i64 %sub268, 2048, !dbg !4838
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4838
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4838

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4838

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub273 = sub i64 %62, 1, !dbg !4838
  %and274 = and i64 %sub273, 1024, !dbg !4838
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4838
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4838

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4838

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub278 = sub i64 %63, 1, !dbg !4838
  %and279 = and i64 %sub278, 512, !dbg !4838
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4838
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4838

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4838

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub283 = sub i64 %64, 1, !dbg !4838
  %and284 = and i64 %sub283, 256, !dbg !4838
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4838
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4838

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4838

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub288 = sub i64 %65, 1, !dbg !4838
  %and289 = and i64 %sub288, 128, !dbg !4838
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4838
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4838

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4838

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub293 = sub i64 %66, 1, !dbg !4838
  %and294 = and i64 %sub293, 64, !dbg !4838
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4838
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4838

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4838

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub298 = sub i64 %67, 1, !dbg !4838
  %and299 = and i64 %sub298, 32, !dbg !4838
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4838
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4838

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4838

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub303 = sub i64 %68, 1, !dbg !4838
  %and304 = and i64 %sub303, 16, !dbg !4838
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4838
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4838

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4838

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub308 = sub i64 %69, 1, !dbg !4838
  %and309 = and i64 %sub308, 8, !dbg !4838
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4838
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4838

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4838

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub313 = sub i64 %70, 1, !dbg !4838
  %and314 = and i64 %sub313, 4, !dbg !4838
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4838
  %71 = zext i1 %tobool315 to i64, !dbg !4838
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4838
  br label %cond.end, !dbg !4838

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4838
  br label %cond.end317, !dbg !4838

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4838
  br label %cond.end319, !dbg !4838

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4838
  br label %cond.end321, !dbg !4838

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4838
  br label %cond.end323, !dbg !4838

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4838
  br label %cond.end325, !dbg !4838

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4838
  br label %cond.end327, !dbg !4838

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4838
  br label %cond.end329, !dbg !4838

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4838
  br label %cond.end331, !dbg !4838

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4838
  br label %cond.end333, !dbg !4838

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4838
  br label %cond.end335, !dbg !4838

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4838
  br label %cond.end337, !dbg !4838

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4838
  br label %cond.end339, !dbg !4838

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4838
  br label %cond.end341, !dbg !4838

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4838
  br label %cond.end343, !dbg !4838

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4838
  br label %cond.end345, !dbg !4838

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4838
  br label %cond.end347, !dbg !4838

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4838
  br label %cond.end349, !dbg !4838

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4838
  br label %cond.end351, !dbg !4838

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4838
  br label %cond.end353, !dbg !4838

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4838
  br label %cond.end355, !dbg !4838

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4838
  br label %cond.end357, !dbg !4838

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4838
  br label %cond.end359, !dbg !4838

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4838
  br label %cond.end361, !dbg !4838

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4838
  br label %cond.end363, !dbg !4838

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4838
  br label %cond.end365, !dbg !4838

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4838
  br label %cond.end367, !dbg !4838

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4838
  br label %cond.end369, !dbg !4838

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4838
  br label %cond.end371, !dbg !4838

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4838
  br label %cond.end373, !dbg !4838

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4838
  br label %cond.end375, !dbg !4838

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4838
  br label %cond.end377, !dbg !4838

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4838
  br label %cond.end379, !dbg !4838

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4838
  br label %cond.end381, !dbg !4838

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4838
  br label %cond.end383, !dbg !4838

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4838
  br label %cond.end385, !dbg !4838

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4838
  br label %cond.end387, !dbg !4838

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4838
  br label %cond.end389, !dbg !4838

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4838
  br label %cond.end391, !dbg !4838

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4838
  br label %cond.end393, !dbg !4838

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4838
  br label %cond.end395, !dbg !4838

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4838
  br label %cond.end397, !dbg !4838

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4838
  br label %cond.end399, !dbg !4838

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4838
  br label %cond.end401, !dbg !4838

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4838
  br label %cond.end403, !dbg !4838

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4838
  br label %cond.end405, !dbg !4838

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4838
  br label %cond.end407, !dbg !4838

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4838
  br label %cond.end409, !dbg !4838

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4838
  br label %cond.end411, !dbg !4838

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4838
  br label %cond.end413, !dbg !4838

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4838
  br label %cond.end415, !dbg !4838

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4838
  br label %cond.end417, !dbg !4838

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4838
  br label %cond.end419, !dbg !4838

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4838
  br label %cond.end421, !dbg !4838

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4838
  br label %cond.end423, !dbg !4838

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4838
  br label %cond.end425, !dbg !4838

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4838
  br label %cond.end427, !dbg !4838

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4838
  br label %cond.end429, !dbg !4838

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4838
  br label %cond.end431, !dbg !4838

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4838
  br label %cond.end433, !dbg !4838

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4838
  br label %cond.end435, !dbg !4838

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4838
  br label %cond.end437, !dbg !4838

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4838
  br label %cond.end440, !dbg !4838

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4838

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4838
  br label %cond.end444, !dbg !4838

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4838
  %sub443 = sub i64 %72, 1, !dbg !4838
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4838
  br label %cond.end444, !dbg !4838

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4838
  %sub446 = sub i32 %cond445, 12, !dbg !4839
  %add = add i32 %sub446, 1, !dbg !4840
  store i32 %add, i32* %retval, align 4, !dbg !4841
  br label %return, !dbg !4841

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4842
  %dec = add i64 %73, -1, !dbg !4842
  store i64 %dec, i64* %size.addr, align 8, !dbg !4842
  %74 = load i64, i64* %size.addr, align 8, !dbg !4843
  %shr = lshr i64 %74, 12, !dbg !4843
  store i64 %shr, i64* %size.addr, align 8, !dbg !4843
  %75 = load i64, i64* %size.addr, align 8, !dbg !4844
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4821
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4845
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4846
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !4845, !srcloc !4847
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4845
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4848
  %add.i = add i32 %79, 1, !dbg !4849
  store i32 %add.i, i32* %retval, align 4, !dbg !4850
  br label %return, !dbg !4850

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4851
  ret i32 %80, !dbg !4851
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !4852 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4813, metadata !DIExpression()), !dbg !4856
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4820, metadata !DIExpression()), !dbg !4858
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4859, metadata !DIExpression()), !dbg !4860
  %0 = load i64, i64* %n.addr, align 8, !dbg !4861
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4858
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4862
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4863
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !4862, !srcloc !4847
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4862
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4864
  %add.i = add i32 %4, 1, !dbg !4865
  %sub = sub i32 %add.i, 1, !dbg !4866
  ret i32 %sub, !dbg !4867
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !4868 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4873, metadata !DIExpression()), !dbg !4874
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4875, metadata !DIExpression()), !dbg !4876
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4879
  ret i8* %0, !dbg !4880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4881 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4884, metadata !DIExpression()), !dbg !4885
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4888
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4889
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4890
  store i8* %0, i8** %driver_data, align 8, !dbg !4891
  ret void, !dbg !4892
}

; Function Attrs: noredzone
declare dso_local i64 @noop_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @lcd_read(%struct.file* %file, i8* %buffer, i64 %count, i64* %ppos) #2 !dbg !4893 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4894, metadata !DIExpression()), !dbg !4899
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4910, metadata !DIExpression()), !dbg !4911
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4912, metadata !DIExpression()), !dbg !4913
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4914, metadata !DIExpression()), !dbg !4915
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4916, metadata !DIExpression()), !dbg !4919
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4920, metadata !DIExpression()), !dbg !4921
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4922, metadata !DIExpression()), !dbg !4923
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4924, metadata !DIExpression()), !dbg !4925
  %file.addr = alloca %struct.file*, align 8
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %retval1 = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  %__UNIQUE_ID___x212 = alloca i64, align 8
  %__UNIQUE_ID___y213 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !4934, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4936, metadata !DIExpression()), !dbg !4937
  store i32 0, i32* %retval1, align 4, !dbg !4937
  call void @llvm.dbg.declare(metadata i32* %bytes_read, metadata !4938, metadata !DIExpression()), !dbg !4939
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4940
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4941
  %1 = load i8*, i8** %private_data, align 8, !dbg !4941
  %2 = bitcast i8* %1 to %struct.usb_lcd*, !dbg !4940
  store %struct.usb_lcd* %2, %struct.usb_lcd** %dev, align 8, !dbg !4942
  %3 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4943
  %io_rwsem = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %3, i32 0, i32 9, !dbg !4944
  call void @down_read(%struct.rw_semaphore* %io_rwsem) #9, !dbg !4945
  %4 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4946
  %disconnected = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %4, i32 0, i32 10, !dbg !4948
  %bf.load = load i8, i8* %disconnected, align 8, !dbg !4948
  %bf.clear = and i8 %bf.load, 1, !dbg !4948
  %bf.cast = zext i8 %bf.clear to i64, !dbg !4948
  %tobool = icmp ne i64 %bf.cast, 0, !dbg !4946
  br i1 %tobool, label %if.then, label %if.end, !dbg !4949

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval1, align 4, !dbg !4950
  br label %out_up_io, !dbg !4952

if.end:                                           ; preds = %entry
  %5 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4953
  %udev = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %5, i32 0, i32 0, !dbg !4954
  %6 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4954
  %7 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4955
  %udev2 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %7, i32 0, i32 0, !dbg !4955
  %8 = load %struct.usb_device*, %struct.usb_device** %udev2, align 8, !dbg !4955
  %9 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4955
  %bulk_in_endpointAddr = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %9, i32 0, i32 4, !dbg !4955
  %10 = load i8, i8* %bulk_in_endpointAddr, align 8, !dbg !4955
  %conv = zext i8 %10 to i32, !dbg !4955
  %call = call i32 @__create_pipe(%struct.usb_device* %8, i32 %conv) #9, !dbg !4955
  %or = or i32 -1073741824, %call, !dbg !4955
  %or3 = or i32 %or, 128, !dbg !4955
  %11 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4956
  %bulk_in_buffer = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %11, i32 0, i32 2, !dbg !4957
  %12 = load i8*, i8** %bulk_in_buffer, align 8, !dbg !4957
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x212, metadata !4958, metadata !DIExpression()), !dbg !4960
  %13 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4960
  %bulk_in_size = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %13, i32 0, i32 3, !dbg !4960
  %14 = load i64, i64* %bulk_in_size, align 8, !dbg !4960
  store i64 %14, i64* %__UNIQUE_ID___x212, align 8, !dbg !4960
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y213, metadata !4961, metadata !DIExpression()), !dbg !4960
  %15 = load i64, i64* %count.addr, align 8, !dbg !4960
  store i64 %15, i64* %__UNIQUE_ID___y213, align 8, !dbg !4960
  %16 = load i64, i64* %__UNIQUE_ID___x212, align 8, !dbg !4960
  %17 = load i64, i64* %__UNIQUE_ID___y213, align 8, !dbg !4960
  %cmp = icmp ult i64 %16, %17, !dbg !4960
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4960

cond.true:                                        ; preds = %if.end
  %18 = load i64, i64* %__UNIQUE_ID___x212, align 8, !dbg !4960
  br label %cond.end, !dbg !4960

cond.false:                                       ; preds = %if.end
  %19 = load i64, i64* %__UNIQUE_ID___y213, align 8, !dbg !4960
  br label %cond.end, !dbg !4960

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !4960
  store i64 %cond, i64* %tmp, align 8, !dbg !4960
  %20 = load i64, i64* %tmp, align 8, !dbg !4960
  %conv5 = trunc i64 %20 to i32, !dbg !4962
  %call6 = call i32 @usb_bulk_msg(%struct.usb_device* %6, i32 %or3, i8* %12, i32 %conv5, i32* %bytes_read, i32 10000) #9, !dbg !4963
  store i32 %call6, i32* %retval1, align 4, !dbg !4964
  %21 = load i32, i32* %retval1, align 4, !dbg !4965
  %tobool7 = icmp ne i32 %21, 0, !dbg !4965
  br i1 %tobool7, label %if.end15, label %if.then8, !dbg !4966

if.then8:                                         ; preds = %cond.end
  %22 = load i8*, i8** %buffer.addr, align 8, !dbg !4967
  %23 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !4968
  %bulk_in_buffer9 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %23, i32 0, i32 2, !dbg !4969
  %24 = load i8*, i8** %bulk_in_buffer9, align 8, !dbg !4969
  %25 = load i32, i32* %bytes_read, align 4, !dbg !4970
  %conv10 = sext i32 %25 to i64, !dbg !4970
  store i8* %22, i8** %to.addr.i, align 8
  store i8* %24, i8** %from.addr.i, align 8
  store i64 %conv10, i64* %n.addr.i, align 8
  %26 = load i8*, i8** %from.addr.i, align 8, !dbg !4971
  %27 = load i64, i64* %n.addr.i, align 8, !dbg !4971
  store i8* %26, i8** %addr.addr.i.i, align 8
  store i64 %27, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4915
  %28 = load i32, i32* %sz.i.i, align 4, !dbg !4972
  %cmp.i.i = icmp sge i32 %28, 0, !dbg !4972
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4972

land.rhs.i.i:                                     ; preds = %if.then8
  %29 = load i32, i32* %sz.i.i, align 4, !dbg !4972
  %conv.i.i = sext i32 %29 to i64, !dbg !4972
  %30 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4972
  %cmp1.i.i = icmp ult i64 %conv.i.i, %30, !dbg !4972
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.then8
  %31 = phi i1 [ false, %if.then8 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4974
  %lnot.i.i = xor i1 %31, true, !dbg !4972
  %lnot.ext.i.i = zext i1 %31 to i32, !dbg !4972
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4972
  br i1 %31, label %if.then.i.i, label %if.end10.i.i, !dbg !4975

if.then.i.i:                                      ; preds = %land.end.i.i
  %32 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4976
  %33 = call i1 @llvm.is.constant.i64(i64 %32) #11, !dbg !4979
  br i1 %33, label %if.else.i.i, label %if.then5.i.i, !dbg !4980

if.then5.i.i:                                     ; preds = %if.then.i.i
  %34 = load i32, i32* %sz.i.i, align 4, !dbg !4981
  %35 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4982
  call void @copy_overflow(i32 %34, i64 %35) #13, !dbg !4983
  br label %if.end9.i.i, !dbg !4983

if.else.i.i:                                      ; preds = %if.then.i.i
  %36 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4984
  %tobool6.i.i = trunc i8 %36 to i1, !dbg !4984
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4986

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !4987
  br label %if.end.i.i, !dbg !4987

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !4988
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4989
  br label %check_copy_size.exit.i, !dbg !4989

if.end10.i.i:                                     ; preds = %land.end.i.i
  %37 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4919
  %cmp11.i.i = icmp ugt i64 %37, 2147483647, !dbg !4919
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4919
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4919
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4919
  %38 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4990
  %tobool17.i.i = icmp ne i32 %38, 0, !dbg !4990
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4990
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4990
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4990
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4919

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 150, i32 2307, i64 12) #11, !dbg !4992, !srcloc !4995
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #11, !dbg !4996, !srcloc !4998
  br label %if.end31.i.i, !dbg !4999

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %39 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4919
  %tobool32.i.i = icmp ne i32 %39, 0, !dbg !4919
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4919
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4919
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4919
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4990
  %40 = load i64, i64* %tmp.i.i, align 8, !dbg !4919
  %tobool38.i.i = icmp ne i64 %40, 0, !dbg !5000
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5001

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5002
  br label %check_copy_size.exit.i, !dbg !5002

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %41 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5003
  %42 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5004
  %43 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5005
  %tobool41.i.i = trunc i8 %43 to i1, !dbg !5005
  call void @check_object_size(i8* %41, i64 %42, i1 zeroext %tobool41.i.i) #13, !dbg !5006
  store i1 true, i1* %retval.i.i, align 1, !dbg !5007
  br label %check_copy_size.exit.i, !dbg !5007

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %44 = load i1, i1* %retval.i.i, align 1, !dbg !5008
  %lnot.i = xor i1 %44, true, !dbg !4971
  %lnot.ext.i = zext i1 %44 to i32, !dbg !4971
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4971
  br i1 %44, label %if.then.i, label %copy_to_user.exit, !dbg !5009

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %45 = load i8*, i8** %to.addr.i, align 8, !dbg !5010
  %46 = load i8*, i8** %from.addr.i, align 8, !dbg !5011
  %47 = load i64, i64* %n.addr.i, align 8, !dbg !5012
  %call2.i = call i64 @_copy_to_user(i8* %45, i8* %46, i64 %47) #13, !dbg !5013
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5014
  br label %copy_to_user.exit, !dbg !5015

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %48 = load i64, i64* %n.addr.i, align 8, !dbg !5016
  %tobool12 = icmp ne i64 %48, 0, !dbg !5017
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !5018

if.then13:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %retval1, align 4, !dbg !5019
  br label %if.end14, !dbg !5020

if.else:                                          ; preds = %copy_to_user.exit
  %49 = load i32, i32* %bytes_read, align 4, !dbg !5021
  store i32 %49, i32* %retval1, align 4, !dbg !5022
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  br label %if.end15, !dbg !5023

if.end15:                                         ; preds = %if.end14, %cond.end
  br label %out_up_io, !dbg !4965

out_up_io:                                        ; preds = %if.end15, %if.then
  call void @llvm.dbg.label(metadata !5024), !dbg !5025
  %50 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5026
  %io_rwsem16 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %50, i32 0, i32 9, !dbg !5027
  call void @up_read(%struct.rw_semaphore* %io_rwsem16) #9, !dbg !5028
  %51 = load i32, i32* %retval1, align 4, !dbg !5029
  %conv17 = sext i32 %51 to i64, !dbg !5029
  ret i64 %conv17, !dbg !5030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @lcd_write(%struct.file* %file, i8* %user_buffer, i64 %count, i64* %ppos) #2 !dbg !5031 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4894, metadata !DIExpression()), !dbg !5032
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4910, metadata !DIExpression()), !dbg !5038
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4912, metadata !DIExpression()), !dbg !5039
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4914, metadata !DIExpression()), !dbg !5040
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4916, metadata !DIExpression()), !dbg !5041
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5042, metadata !DIExpression()), !dbg !5043
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5044, metadata !DIExpression()), !dbg !5045
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5046, metadata !DIExpression()), !dbg !5047
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %user_buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %retval1 = alloca i32, align 4
  %r = alloca i32, align 4
  %urb = alloca %struct.urb*, align 8
  %buf = alloca i8*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  store i8* %user_buffer, i8** %user_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %user_buffer.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i32 0, i32* %retval1, align 4, !dbg !5059
  call void @llvm.dbg.declare(metadata i32* %r, metadata !5060, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.declare(metadata %struct.urb** %urb, metadata !5062, metadata !DIExpression()), !dbg !5109
  store %struct.urb* null, %struct.urb** %urb, align 8, !dbg !5109
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5110, metadata !DIExpression()), !dbg !5111
  store i8* null, i8** %buf, align 8, !dbg !5111
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5112
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5113
  %1 = load i8*, i8** %private_data, align 8, !dbg !5113
  %2 = bitcast i8* %1 to %struct.usb_lcd*, !dbg !5112
  store %struct.usb_lcd* %2, %struct.usb_lcd** %dev, align 8, !dbg !5114
  %3 = load i64, i64* %count.addr, align 8, !dbg !5115
  %cmp = icmp eq i64 %3, 0, !dbg !5117
  br i1 %cmp, label %if.then, label %if.end, !dbg !5118

if.then:                                          ; preds = %entry
  br label %exit, !dbg !5119

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5120
  %limit_sem = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %4, i32 0, i32 7, !dbg !5121
  %call = call i32 @down_interruptible(%struct.semaphore* %limit_sem) #9, !dbg !5122
  store i32 %call, i32* %r, align 4, !dbg !5123
  %5 = load i32, i32* %r, align 4, !dbg !5124
  %cmp2 = icmp slt i32 %5, 0, !dbg !5126
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5127

if.then3:                                         ; preds = %if.end
  store i64 -4, i64* %retval, align 8, !dbg !5128
  br label %return, !dbg !5128

if.end4:                                          ; preds = %if.end
  %6 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5129
  %io_rwsem = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %6, i32 0, i32 9, !dbg !5130
  call void @down_read(%struct.rw_semaphore* %io_rwsem) #9, !dbg !5131
  %7 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5132
  %disconnected = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %7, i32 0, i32 10, !dbg !5134
  %bf.load = load i8, i8* %disconnected, align 8, !dbg !5134
  %bf.clear = and i8 %bf.load, 1, !dbg !5134
  %bf.cast = zext i8 %bf.clear to i64, !dbg !5134
  %tobool = icmp ne i64 %bf.cast, 0, !dbg !5132
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5135

if.then5:                                         ; preds = %if.end4
  store i32 -19, i32* %retval1, align 4, !dbg !5136
  br label %err_up_io, !dbg !5138

if.end6:                                          ; preds = %if.end4
  %call7 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !5139
  store %struct.urb* %call7, %struct.urb** %urb, align 8, !dbg !5140
  %8 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5141
  %tobool8 = icmp ne %struct.urb* %8, null, !dbg !5141
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5143

if.then9:                                         ; preds = %if.end6
  store i32 -12, i32* %retval1, align 4, !dbg !5144
  br label %err_up_io, !dbg !5146

if.end10:                                         ; preds = %if.end6
  %9 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5147
  %udev = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %9, i32 0, i32 0, !dbg !5148
  %10 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5148
  %11 = load i64, i64* %count.addr, align 8, !dbg !5149
  %12 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5150
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 15, !dbg !5151
  %call11 = call i8* @usb_alloc_coherent(%struct.usb_device* %10, i64 %11, i32 3264, i64* %transfer_dma) #9, !dbg !5152
  store i8* %call11, i8** %buf, align 8, !dbg !5153
  %13 = load i8*, i8** %buf, align 8, !dbg !5154
  %tobool12 = icmp ne i8* %13, null, !dbg !5154
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5156

if.then13:                                        ; preds = %if.end10
  store i32 -12, i32* %retval1, align 4, !dbg !5157
  br label %error, !dbg !5159

if.end14:                                         ; preds = %if.end10
  %14 = load i8*, i8** %buf, align 8, !dbg !5160
  %15 = load i8*, i8** %user_buffer.addr, align 8, !dbg !5161
  %16 = load i64, i64* %count.addr, align 8, !dbg !5162
  store i8* %14, i8** %to.addr.i, align 8
  store i8* %15, i8** %from.addr.i, align 8
  store i64 %16, i64* %n.addr.i, align 8
  %17 = load i8*, i8** %to.addr.i, align 8, !dbg !5163
  %18 = load i64, i64* %n.addr.i, align 8, !dbg !5163
  store i8* %17, i8** %addr.addr.i.i, align 8
  store i64 %18, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5040
  %19 = load i32, i32* %sz.i.i, align 4, !dbg !5164
  %cmp.i.i = icmp sge i32 %19, 0, !dbg !5164
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5164

land.rhs.i.i:                                     ; preds = %if.end14
  %20 = load i32, i32* %sz.i.i, align 4, !dbg !5164
  %conv.i.i = sext i32 %20 to i64, !dbg !5164
  %21 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5164
  %cmp1.i.i = icmp ult i64 %conv.i.i, %21, !dbg !5164
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end14
  %22 = phi i1 [ false, %if.end14 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5165
  %lnot.i.i = xor i1 %22, true, !dbg !5164
  %lnot.ext.i.i = zext i1 %22 to i32, !dbg !5164
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5164
  br i1 %22, label %if.then.i.i, label %if.end10.i.i, !dbg !5166

if.then.i.i:                                      ; preds = %land.end.i.i
  %23 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5167
  %24 = call i1 @llvm.is.constant.i64(i64 %23) #11, !dbg !5168
  br i1 %24, label %if.else.i.i, label %if.then5.i.i, !dbg !5169

if.then5.i.i:                                     ; preds = %if.then.i.i
  %25 = load i32, i32* %sz.i.i, align 4, !dbg !5170
  %26 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5171
  call void @copy_overflow(i32 %25, i64 %26) #13, !dbg !5172
  br label %if.end9.i.i, !dbg !5172

if.else.i.i:                                      ; preds = %if.then.i.i
  %27 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5173
  %tobool6.i.i = trunc i8 %27 to i1, !dbg !5173
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5174

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5175
  br label %if.end.i.i, !dbg !5175

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5176
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5177
  br label %check_copy_size.exit.i, !dbg !5177

if.end10.i.i:                                     ; preds = %land.end.i.i
  %28 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5041
  %cmp11.i.i = icmp ugt i64 %28, 2147483647, !dbg !5041
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5041
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5041
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5041
  %29 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5178
  %tobool17.i.i = icmp ne i32 %29, 0, !dbg !5178
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5178
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5178
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5178
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5041

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 150, i32 2307, i64 12) #11, !dbg !5179, !srcloc !4995
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #11, !dbg !5180, !srcloc !4998
  br label %if.end31.i.i, !dbg !5181

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %30 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5041
  %tobool32.i.i = icmp ne i32 %30, 0, !dbg !5041
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5041
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5041
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5041
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5178
  %31 = load i64, i64* %tmp.i.i, align 8, !dbg !5041
  %tobool38.i.i = icmp ne i64 %31, 0, !dbg !5182
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5183

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5184
  br label %check_copy_size.exit.i, !dbg !5184

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %32 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5185
  %33 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5186
  %34 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5187
  %tobool41.i.i = trunc i8 %34 to i1, !dbg !5187
  call void @check_object_size(i8* %32, i64 %33, i1 zeroext %tobool41.i.i) #13, !dbg !5188
  store i1 true, i1* %retval.i.i, align 1, !dbg !5189
  br label %check_copy_size.exit.i, !dbg !5189

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %35 = load i1, i1* %retval.i.i, align 1, !dbg !5190
  %lnot.i = xor i1 %35, true, !dbg !5163
  %lnot.ext.i = zext i1 %35 to i32, !dbg !5163
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5163
  br i1 %35, label %if.then.i, label %copy_from_user.exit, !dbg !5191

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %36 = load i8*, i8** %to.addr.i, align 8, !dbg !5192
  %37 = load i8*, i8** %from.addr.i, align 8, !dbg !5193
  %38 = load i64, i64* %n.addr.i, align 8, !dbg !5194
  %call2.i = call i64 @_copy_from_user(i8* %36, i8* %37, i64 %38) #13, !dbg !5195
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5196
  br label %copy_from_user.exit, !dbg !5197

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %39 = load i64, i64* %n.addr.i, align 8, !dbg !5198
  %tobool16 = icmp ne i64 %39, 0, !dbg !5199
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5200

if.then17:                                        ; preds = %copy_from_user.exit
  store i32 -14, i32* %retval1, align 4, !dbg !5201
  br label %error, !dbg !5203

if.end18:                                         ; preds = %copy_from_user.exit
  %40 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5204
  %41 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5205
  %udev19 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %41, i32 0, i32 0, !dbg !5206
  %42 = load %struct.usb_device*, %struct.usb_device** %udev19, align 8, !dbg !5206
  %43 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5207
  %udev20 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %43, i32 0, i32 0, !dbg !5207
  %44 = load %struct.usb_device*, %struct.usb_device** %udev20, align 8, !dbg !5207
  %45 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5207
  %bulk_out_endpointAddr = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %45, i32 0, i32 5, !dbg !5207
  %46 = load i8, i8* %bulk_out_endpointAddr, align 1, !dbg !5207
  %conv = zext i8 %46 to i32, !dbg !5207
  %call21 = call i32 @__create_pipe(%struct.usb_device* %44, i32 %conv) #9, !dbg !5207
  %or = or i32 -1073741824, %call21, !dbg !5207
  %47 = load i8*, i8** %buf, align 8, !dbg !5208
  %48 = load i64, i64* %count.addr, align 8, !dbg !5209
  %conv22 = trunc i64 %48 to i32, !dbg !5209
  %49 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5210
  %50 = bitcast %struct.usb_lcd* %49 to i8*, !dbg !5210
  call void @usb_fill_bulk_urb(%struct.urb* %40, %struct.usb_device* %42, i32 %or, i8* %47, i32 %conv22, void (%struct.urb*)* @lcd_write_bulk_callback, i8* %50) #9, !dbg !5211
  %51 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5212
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 13, !dbg !5213
  %52 = load i32, i32* %transfer_flags, align 4, !dbg !5214
  %or23 = or i32 %52, 4, !dbg !5214
  store i32 %or23, i32* %transfer_flags, align 4, !dbg !5214
  %53 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5215
  %54 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5216
  %submitted = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %54, i32 0, i32 8, !dbg !5217
  call void @usb_anchor_urb(%struct.urb* %53, %struct.usb_anchor* %submitted) #9, !dbg !5218
  %55 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5219
  %call24 = call i32 @usb_submit_urb(%struct.urb* %55, i32 3264) #9, !dbg !5220
  store i32 %call24, i32* %retval1, align 4, !dbg !5221
  %56 = load i32, i32* %retval1, align 4, !dbg !5222
  %tobool25 = icmp ne i32 %56, 0, !dbg !5222
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !5224

if.then26:                                        ; preds = %if.end18
  %57 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5225
  %udev27 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %57, i32 0, i32 0, !dbg !5225
  %58 = load %struct.usb_device*, %struct.usb_device** %udev27, align 8, !dbg !5225
  %dev28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 14, !dbg !5225
  %59 = load i32, i32* %retval1, align 4, !dbg !5225
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.lcd_write, i64 0, i64 0), i32 %59) #10, !dbg !5225
  br label %error_unanchor, !dbg !5227

if.end29:                                         ; preds = %if.end18
  %60 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5228
  call void @usb_free_urb(%struct.urb* %60) #9, !dbg !5229
  %61 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5230
  %io_rwsem30 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %61, i32 0, i32 9, !dbg !5231
  call void @up_read(%struct.rw_semaphore* %io_rwsem30) #9, !dbg !5232
  br label %exit, !dbg !5232

exit:                                             ; preds = %if.end29, %if.then
  call void @llvm.dbg.label(metadata !5233), !dbg !5234
  %62 = load i64, i64* %count.addr, align 8, !dbg !5235
  store i64 %62, i64* %retval, align 8, !dbg !5236
  br label %return, !dbg !5236

error_unanchor:                                   ; preds = %if.then26
  call void @llvm.dbg.label(metadata !5237), !dbg !5238
  %63 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5239
  call void @usb_unanchor_urb(%struct.urb* %63) #9, !dbg !5240
  br label %error, !dbg !5240

error:                                            ; preds = %error_unanchor, %if.then17, %if.then13
  call void @llvm.dbg.label(metadata !5241), !dbg !5242
  %64 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5243
  %udev31 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %64, i32 0, i32 0, !dbg !5244
  %65 = load %struct.usb_device*, %struct.usb_device** %udev31, align 8, !dbg !5244
  %66 = load i64, i64* %count.addr, align 8, !dbg !5245
  %67 = load i8*, i8** %buf, align 8, !dbg !5246
  %68 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5247
  %transfer_dma32 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 15, !dbg !5248
  %69 = load i64, i64* %transfer_dma32, align 8, !dbg !5248
  call void @usb_free_coherent(%struct.usb_device* %65, i64 %66, i8* %67, i64 %69) #9, !dbg !5249
  %70 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5250
  call void @usb_free_urb(%struct.urb* %70) #9, !dbg !5251
  br label %err_up_io, !dbg !5251

err_up_io:                                        ; preds = %error, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !5252), !dbg !5253
  %71 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5254
  %io_rwsem33 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %71, i32 0, i32 9, !dbg !5255
  call void @up_read(%struct.rw_semaphore* %io_rwsem33) #9, !dbg !5256
  %72 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5257
  %limit_sem34 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %72, i32 0, i32 7, !dbg !5258
  call void @up(%struct.semaphore* %limit_sem34) #9, !dbg !5259
  %73 = load i32, i32* %retval1, align 4, !dbg !5260
  %conv35 = sext i32 %73 to i64, !dbg !5260
  store i64 %conv35, i64* %retval, align 8, !dbg !5261
  br label %return, !dbg !5261

return:                                           ; preds = %err_up_io, %exit, %if.then3
  %74 = load i64, i64* %retval, align 8, !dbg !5262
  ret i64 %74, !dbg !5262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @lcd_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #2 !dbg !5263 {
entry:
  %retval.i.i29 = alloca i1, align 1
  %addr.addr.i.i30 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i30, metadata !4894, metadata !DIExpression()), !dbg !5264
  %bytes.addr.i.i31 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i31, metadata !4910, metadata !DIExpression()), !dbg !5269
  %is_source.addr.i.i32 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i32, metadata !4912, metadata !DIExpression()), !dbg !5270
  %sz.i.i33 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i33, metadata !4914, metadata !DIExpression()), !dbg !5271
  %__ret_warn_on.i.i34 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i34, metadata !4916, metadata !DIExpression()), !dbg !5272
  %tmp.i.i35 = alloca i64, align 8
  %to.addr.i36 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i36, metadata !4920, metadata !DIExpression()), !dbg !5273
  %from.addr.i37 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i37, metadata !4922, metadata !DIExpression()), !dbg !5274
  %n.addr.i38 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i38, metadata !4924, metadata !DIExpression()), !dbg !5275
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4894, metadata !DIExpression()), !dbg !5276
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4910, metadata !DIExpression()), !dbg !5280
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4912, metadata !DIExpression()), !dbg !5281
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4914, metadata !DIExpression()), !dbg !5282
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4916, metadata !DIExpression()), !dbg !5283
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4920, metadata !DIExpression()), !dbg !5284
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4922, metadata !DIExpression()), !dbg !5285
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4924, metadata !DIExpression()), !dbg !5286
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %bcdDevice = alloca i16, align 2
  %buf = alloca [30 x i8], align 16
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5287, metadata !DIExpression()), !dbg !5288
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5289, metadata !DIExpression()), !dbg !5290
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !5293, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.declare(metadata i16* %bcdDevice, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata [30 x i8]* %buf, metadata !5297, metadata !DIExpression()), !dbg !5301
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5302
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5303
  %1 = load i8*, i8** %private_data, align 8, !dbg !5303
  %2 = bitcast i8* %1 to %struct.usb_lcd*, !dbg !5302
  store %struct.usb_lcd* %2, %struct.usb_lcd** %dev, align 8, !dbg !5304
  %3 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5305
  %cmp = icmp eq %struct.usb_lcd* %3, null, !dbg !5307
  br i1 %cmp, label %if.then, label %if.end, !dbg !5308

if.then:                                          ; preds = %entry
  store i64 -19, i64* %retval, align 8, !dbg !5309
  br label %return, !dbg !5309

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %cmd.addr, align 4, !dbg !5310
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
  ], !dbg !5311

sw.bb:                                            ; preds = %if.end
  %5 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5312
  %udev = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %5, i32 0, i32 0, !dbg !5312
  %6 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5312
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 15, !dbg !5312
  %bcdDevice1 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 9, !dbg !5312
  %7 = load i16, i16* %bcdDevice1, align 4, !dbg !5312
  store i16 %7, i16* %bcdDevice, align 2, !dbg !5313
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i64 0, i64 0, !dbg !5314
  %8 = load i16, i16* %bcdDevice, align 2, !dbg !5315
  %conv = zext i16 %8 to i32, !dbg !5315
  %and = and i32 %conv, 61440, !dbg !5316
  %shr = ashr i32 %and, 12, !dbg !5317
  %9 = load i16, i16* %bcdDevice, align 2, !dbg !5318
  %conv2 = zext i16 %9 to i32, !dbg !5318
  %and3 = and i32 %conv2, 3840, !dbg !5319
  %shr4 = ashr i32 %and3, 8, !dbg !5320
  %10 = load i16, i16* %bcdDevice, align 2, !dbg !5321
  %conv5 = zext i16 %10 to i32, !dbg !5321
  %and6 = and i32 %conv5, 240, !dbg !5322
  %shr7 = ashr i32 %and6, 4, !dbg !5323
  %11 = load i16, i16* %bcdDevice, align 2, !dbg !5324
  %conv8 = zext i16 %11 to i32, !dbg !5324
  %and9 = and i32 %conv8, 15, !dbg !5325
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %shr, i32 %shr4, i32 %shr7, i32 %and9) #9, !dbg !5326
  %12 = load i64, i64* %arg.addr, align 8, !dbg !5327
  %13 = inttoptr i64 %12 to i8*, !dbg !5328
  %arraydecay10 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i64 0, i64 0, !dbg !5329
  %arraydecay11 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i64 0, i64 0, !dbg !5330
  %call12 = call i64 @strlen(i8* %arraydecay11) #9, !dbg !5331
  store i8* %13, i8** %to.addr.i, align 8
  store i8* %arraydecay10, i8** %from.addr.i, align 8
  store i64 %call12, i64* %n.addr.i, align 8
  %14 = load i8*, i8** %from.addr.i, align 8, !dbg !5332
  %15 = load i64, i64* %n.addr.i, align 8, !dbg !5332
  store i8* %14, i8** %addr.addr.i.i, align 8
  store i64 %15, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5282
  %16 = load i32, i32* %sz.i.i, align 4, !dbg !5333
  %cmp.i.i = icmp sge i32 %16, 0, !dbg !5333
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5333

land.rhs.i.i:                                     ; preds = %sw.bb
  %17 = load i32, i32* %sz.i.i, align 4, !dbg !5333
  %conv.i.i = sext i32 %17 to i64, !dbg !5333
  %18 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5333
  %cmp1.i.i = icmp ult i64 %conv.i.i, %18, !dbg !5333
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb
  %19 = phi i1 [ false, %sw.bb ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5334
  %lnot.i.i = xor i1 %19, true, !dbg !5333
  %lnot.ext.i.i = zext i1 %19 to i32, !dbg !5333
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5333
  br i1 %19, label %if.then.i.i, label %if.end10.i.i, !dbg !5335

if.then.i.i:                                      ; preds = %land.end.i.i
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5336
  %21 = call i1 @llvm.is.constant.i64(i64 %20) #11, !dbg !5337
  br i1 %21, label %if.else.i.i, label %if.then5.i.i, !dbg !5338

if.then5.i.i:                                     ; preds = %if.then.i.i
  %22 = load i32, i32* %sz.i.i, align 4, !dbg !5339
  %23 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5340
  call void @copy_overflow(i32 %22, i64 %23) #13, !dbg !5341
  br label %if.end9.i.i, !dbg !5341

if.else.i.i:                                      ; preds = %if.then.i.i
  %24 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5342
  %tobool6.i.i = trunc i8 %24 to i1, !dbg !5342
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5343

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5344
  br label %if.end.i.i, !dbg !5344

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5345
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5346
  br label %check_copy_size.exit.i, !dbg !5346

if.end10.i.i:                                     ; preds = %land.end.i.i
  %25 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5283
  %cmp11.i.i = icmp ugt i64 %25, 2147483647, !dbg !5283
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5283
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5283
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5283
  %26 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5347
  %tobool17.i.i = icmp ne i32 %26, 0, !dbg !5347
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5347
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5347
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5347
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5283

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 150, i32 2307, i64 12) #11, !dbg !5348, !srcloc !4995
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #11, !dbg !5349, !srcloc !4998
  br label %if.end31.i.i, !dbg !5350

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %27 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5283
  %tobool32.i.i = icmp ne i32 %27, 0, !dbg !5283
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5283
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5283
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5283
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5347
  %28 = load i64, i64* %tmp.i.i, align 8, !dbg !5283
  %tobool38.i.i = icmp ne i64 %28, 0, !dbg !5351
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5352

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5353
  br label %check_copy_size.exit.i, !dbg !5353

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %29 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5354
  %30 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5355
  %31 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5356
  %tobool41.i.i = trunc i8 %31 to i1, !dbg !5356
  call void @check_object_size(i8* %29, i64 %30, i1 zeroext %tobool41.i.i) #13, !dbg !5357
  store i1 true, i1* %retval.i.i, align 1, !dbg !5358
  br label %check_copy_size.exit.i, !dbg !5358

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %32 = load i1, i1* %retval.i.i, align 1, !dbg !5359
  %lnot.i = xor i1 %32, true, !dbg !5332
  %lnot.ext.i = zext i1 %32 to i32, !dbg !5332
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5332
  br i1 %32, label %if.then.i, label %copy_to_user.exit, !dbg !5360

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %33 = load i8*, i8** %to.addr.i, align 8, !dbg !5361
  %34 = load i8*, i8** %from.addr.i, align 8, !dbg !5362
  %35 = load i64, i64* %n.addr.i, align 8, !dbg !5363
  %call2.i = call i64 @_copy_to_user(i8* %33, i8* %34, i64 %35) #13, !dbg !5364
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5365
  br label %copy_to_user.exit, !dbg !5366

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %36 = load i64, i64* %n.addr.i, align 8, !dbg !5367
  %cmp14 = icmp ne i64 %36, 0, !dbg !5368
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5369

if.then16:                                        ; preds = %copy_to_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !5370
  br label %return, !dbg !5370

if.end17:                                         ; preds = %copy_to_user.exit
  br label %sw.epilog, !dbg !5371

sw.bb18:                                          ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i64 0, i64 0, !dbg !5372
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !5373
  %37 = load i64, i64* %arg.addr, align 8, !dbg !5374
  %38 = inttoptr i64 %37 to i8*, !dbg !5375
  %arraydecay21 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i64 0, i64 0, !dbg !5376
  %arraydecay22 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i64 0, i64 0, !dbg !5377
  %call23 = call i64 @strlen(i8* %arraydecay22) #9, !dbg !5378
  store i8* %38, i8** %to.addr.i36, align 8
  store i8* %arraydecay21, i8** %from.addr.i37, align 8
  store i64 %call23, i64* %n.addr.i38, align 8
  %39 = load i8*, i8** %from.addr.i37, align 8, !dbg !5379
  %40 = load i64, i64* %n.addr.i38, align 8, !dbg !5379
  store i8* %39, i8** %addr.addr.i.i30, align 8
  store i64 %40, i64* %bytes.addr.i.i31, align 8
  store i8 1, i8* %is_source.addr.i.i32, align 1
  store i32 -1, i32* %sz.i.i33, align 4, !dbg !5271
  %41 = load i32, i32* %sz.i.i33, align 4, !dbg !5380
  %cmp.i.i39 = icmp sge i32 %41, 0, !dbg !5380
  br i1 %cmp.i.i39, label %land.rhs.i.i42, label %land.end.i.i46, !dbg !5380

land.rhs.i.i42:                                   ; preds = %sw.bb18
  %42 = load i32, i32* %sz.i.i33, align 4, !dbg !5380
  %conv.i.i40 = sext i32 %42 to i64, !dbg !5380
  %43 = load i64, i64* %bytes.addr.i.i31, align 8, !dbg !5380
  %cmp1.i.i41 = icmp ult i64 %conv.i.i40, %43, !dbg !5380
  br label %land.end.i.i46

land.end.i.i46:                                   ; preds = %land.rhs.i.i42, %sw.bb18
  %44 = phi i1 [ false, %sw.bb18 ], [ %cmp1.i.i41, %land.rhs.i.i42 ], !dbg !5381
  %lnot.i.i43 = xor i1 %44, true, !dbg !5380
  %lnot.ext.i.i44 = zext i1 %44 to i32, !dbg !5380
  %conv4.i.i45 = sext i32 %lnot.ext.i.i44 to i64, !dbg !5380
  br i1 %44, label %if.then.i.i47, label %if.end10.i.i62, !dbg !5382

if.then.i.i47:                                    ; preds = %land.end.i.i46
  %45 = load i64, i64* %bytes.addr.i.i31, align 8, !dbg !5383
  %46 = call i1 @llvm.is.constant.i64(i64 %45) #11, !dbg !5384
  br i1 %46, label %if.else.i.i50, label %if.then5.i.i48, !dbg !5385

if.then5.i.i48:                                   ; preds = %if.then.i.i47
  %47 = load i32, i32* %sz.i.i33, align 4, !dbg !5386
  %48 = load i64, i64* %bytes.addr.i.i31, align 8, !dbg !5387
  call void @copy_overflow(i32 %47, i64 %48) #13, !dbg !5388
  br label %if.end9.i.i54, !dbg !5388

if.else.i.i50:                                    ; preds = %if.then.i.i47
  %49 = load i8, i8* %is_source.addr.i.i32, align 1, !dbg !5389
  %tobool6.i.i49 = trunc i8 %49 to i1, !dbg !5389
  br i1 %tobool6.i.i49, label %if.then7.i.i51, label %if.else8.i.i52, !dbg !5390

if.then7.i.i51:                                   ; preds = %if.else.i.i50
  call void @__bad_copy_from() #13, !dbg !5391
  br label %if.end.i.i53, !dbg !5391

if.else8.i.i52:                                   ; preds = %if.else.i.i50
  call void @__bad_copy_to() #13, !dbg !5392
  br label %if.end.i.i53

if.end.i.i53:                                     ; preds = %if.else8.i.i52, %if.then7.i.i51
  br label %if.end9.i.i54

if.end9.i.i54:                                    ; preds = %if.end.i.i53, %if.then5.i.i48
  store i1 false, i1* %retval.i.i29, align 1, !dbg !5393
  br label %check_copy_size.exit.i76, !dbg !5393

if.end10.i.i62:                                   ; preds = %land.end.i.i46
  %50 = load i64, i64* %bytes.addr.i.i31, align 8, !dbg !5272
  %cmp11.i.i55 = icmp ugt i64 %50, 2147483647, !dbg !5272
  %lnot13.i.i56 = xor i1 %cmp11.i.i55, true, !dbg !5272
  %lnot.ext16.i.i57 = zext i1 %cmp11.i.i55 to i32, !dbg !5272
  store i32 %lnot.ext16.i.i57, i32* %__ret_warn_on.i.i34, align 4, !dbg !5272
  %51 = load i32, i32* %__ret_warn_on.i.i34, align 4, !dbg !5394
  %tobool17.i.i58 = icmp ne i32 %51, 0, !dbg !5394
  %lnot18.i.i59 = xor i1 %tobool17.i.i58, true, !dbg !5394
  %lnot.ext21.i.i60 = zext i1 %tobool17.i.i58 to i32, !dbg !5394
  %conv22.i.i61 = sext i32 %lnot.ext21.i.i60 to i64, !dbg !5394
  br i1 %tobool17.i.i58, label %if.then24.i.i63, label %if.end31.i.i69, !dbg !5272

if.then24.i.i63:                                  ; preds = %if.end10.i.i62
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 150, i32 2307, i64 12) #11, !dbg !5395, !srcloc !4995
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #11, !dbg !5396, !srcloc !4998
  br label %if.end31.i.i69, !dbg !5397

if.end31.i.i69:                                   ; preds = %if.then24.i.i63, %if.end10.i.i62
  %52 = load i32, i32* %__ret_warn_on.i.i34, align 4, !dbg !5272
  %tobool32.i.i64 = icmp ne i32 %52, 0, !dbg !5272
  %lnot33.i.i65 = xor i1 %tobool32.i.i64, true, !dbg !5272
  %lnot.ext36.i.i66 = zext i1 %tobool32.i.i64 to i32, !dbg !5272
  %conv37.i.i67 = sext i32 %lnot.ext36.i.i66 to i64, !dbg !5272
  store i64 %conv37.i.i67, i64* %tmp.i.i35, align 8, !dbg !5394
  %53 = load i64, i64* %tmp.i.i35, align 8, !dbg !5272
  %tobool38.i.i68 = icmp ne i64 %53, 0, !dbg !5398
  br i1 %tobool38.i.i68, label %if.then39.i.i70, label %if.end40.i.i72, !dbg !5399

if.then39.i.i70:                                  ; preds = %if.end31.i.i69
  store i1 false, i1* %retval.i.i29, align 1, !dbg !5400
  br label %check_copy_size.exit.i76, !dbg !5400

if.end40.i.i72:                                   ; preds = %if.end31.i.i69
  %54 = load i8*, i8** %addr.addr.i.i30, align 8, !dbg !5401
  %55 = load i64, i64* %bytes.addr.i.i31, align 8, !dbg !5402
  %56 = load i8, i8* %is_source.addr.i.i32, align 1, !dbg !5403
  %tobool41.i.i71 = trunc i8 %56 to i1, !dbg !5403
  call void @check_object_size(i8* %54, i64 %55, i1 zeroext %tobool41.i.i71) #13, !dbg !5404
  store i1 true, i1* %retval.i.i29, align 1, !dbg !5405
  br label %check_copy_size.exit.i76, !dbg !5405

check_copy_size.exit.i76:                         ; preds = %if.end40.i.i72, %if.then39.i.i70, %if.end9.i.i54
  %57 = load i1, i1* %retval.i.i29, align 1, !dbg !5406
  %lnot.i73 = xor i1 %57, true, !dbg !5379
  %lnot.ext.i74 = zext i1 %57 to i32, !dbg !5379
  %conv.i75 = sext i32 %lnot.ext.i74 to i64, !dbg !5379
  br i1 %57, label %if.then.i78, label %copy_to_user.exit79, !dbg !5407

if.then.i78:                                      ; preds = %check_copy_size.exit.i76
  %58 = load i8*, i8** %to.addr.i36, align 8, !dbg !5408
  %59 = load i8*, i8** %from.addr.i37, align 8, !dbg !5409
  %60 = load i64, i64* %n.addr.i38, align 8, !dbg !5410
  %call2.i77 = call i64 @_copy_to_user(i8* %58, i8* %59, i64 %60) #13, !dbg !5411
  store i64 %call2.i77, i64* %n.addr.i38, align 8, !dbg !5412
  br label %copy_to_user.exit79, !dbg !5413

copy_to_user.exit79:                              ; preds = %check_copy_size.exit.i76, %if.then.i78
  %61 = load i64, i64* %n.addr.i38, align 8, !dbg !5414
  %cmp25 = icmp ne i64 %61, 0, !dbg !5415
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5416

if.then27:                                        ; preds = %copy_to_user.exit79
  store i64 -14, i64* %retval, align 8, !dbg !5417
  br label %return, !dbg !5417

if.end28:                                         ; preds = %copy_to_user.exit79
  br label %sw.epilog, !dbg !5418

sw.default:                                       ; preds = %if.end
  store i64 -25, i64* %retval, align 8, !dbg !5419
  br label %return, !dbg !5419

sw.epilog:                                        ; preds = %if.end28, %if.end17
  store i64 0, i64* %retval, align 8, !dbg !5420
  br label %return, !dbg !5420

return:                                           ; preds = %sw.epilog, %sw.default, %if.then27, %if.then16, %if.then
  %62 = load i64, i64* %retval, align 8, !dbg !5421
  ret i64 %62, !dbg !5421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lcd_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5422 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %interface = alloca %struct.usb_interface*, align 8
  %subminor = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !5427, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface, metadata !5429, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.declare(metadata i32* %subminor, metadata !5431, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata i32* %r, metadata !5433, metadata !DIExpression()), !dbg !5434
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5435
  %call = call i32 @iminor(%struct.inode* %0) #9, !dbg !5436
  store i32 %call, i32* %subminor, align 4, !dbg !5437
  %1 = load i32, i32* %subminor, align 4, !dbg !5438
  %call1 = call %struct.usb_interface* @usb_find_interface(%struct.usb_driver* @lcd_driver, i32 %1) #9, !dbg !5439
  store %struct.usb_interface* %call1, %struct.usb_interface** %interface, align 8, !dbg !5440
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5441
  %tobool = icmp ne %struct.usb_interface* %2, null, !dbg !5441
  br i1 %tobool, label %if.end, label %if.then, !dbg !5443

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %subminor, align 4, !dbg !5444
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.lcd_open, i64 0, i64 0), i32 %3) #10, !dbg !5444
  store i32 -19, i32* %retval, align 4, !dbg !5446
  br label %return, !dbg !5446

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5447
  %call3 = call i8* @usb_get_intfdata(%struct.usb_interface* %4) #9, !dbg !5448
  %5 = bitcast i8* %call3 to %struct.usb_lcd*, !dbg !5448
  store %struct.usb_lcd* %5, %struct.usb_lcd** %dev, align 8, !dbg !5449
  %6 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5450
  %kref = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %6, i32 0, i32 6, !dbg !5451
  call void @kref_get(%struct.kref* %kref) #9, !dbg !5452
  %7 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5453
  %call4 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %7) #9, !dbg !5454
  store i32 %call4, i32* %r, align 4, !dbg !5455
  %8 = load i32, i32* %r, align 4, !dbg !5456
  %cmp = icmp slt i32 %8, 0, !dbg !5458
  br i1 %cmp, label %if.then5, label %if.end8, !dbg !5459

if.then5:                                         ; preds = %if.end
  %9 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5460
  %kref6 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %9, i32 0, i32 6, !dbg !5462
  %call7 = call i32 @kref_put(%struct.kref* %kref6, void (%struct.kref*)* @lcd_delete) #9, !dbg !5463
  %10 = load i32, i32* %r, align 4, !dbg !5464
  store i32 %10, i32* %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

if.end8:                                          ; preds = %if.end
  %11 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5466
  %12 = bitcast %struct.usb_lcd* %11 to i8*, !dbg !5466
  %13 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5467
  %private_data = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 15, !dbg !5468
  store i8* %12, i8** %private_data, align 8, !dbg !5469
  store i32 0, i32* %retval, align 4, !dbg !5470
  br label %return, !dbg !5470

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5471
  ret i32 %14, !dbg !5471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lcd_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5472 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5473, metadata !DIExpression()), !dbg !5474
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !5477, metadata !DIExpression()), !dbg !5478
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5479
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5480
  %1 = load i8*, i8** %private_data, align 8, !dbg !5480
  %2 = bitcast i8* %1 to %struct.usb_lcd*, !dbg !5479
  store %struct.usb_lcd* %2, %struct.usb_lcd** %dev, align 8, !dbg !5481
  %3 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5482
  %cmp = icmp eq %struct.usb_lcd* %3, null, !dbg !5484
  br i1 %cmp, label %if.then, label %if.end, !dbg !5485

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5486
  br label %return, !dbg !5486

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5487
  %interface = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %4, i32 0, i32 1, !dbg !5488
  %5 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5488
  call void @usb_autopm_put_interface(%struct.usb_interface* %5) #9, !dbg !5489
  %6 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5490
  %kref = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %6, i32 0, i32 6, !dbg !5491
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @lcd_delete) #9, !dbg !5492
  store i32 0, i32* %retval, align 4, !dbg !5493
  br label %return, !dbg !5493

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5494
  ret i32 %7, !dbg !5494
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5495 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5502
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5503
  %1 = load i32, i32* %devnum, align 8, !dbg !5503
  %shl = shl i32 %1, 8, !dbg !5504
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5505
  %shl1 = shl i32 %2, 15, !dbg !5506
  %or = or i32 %shl, %shl1, !dbg !5507
  ret i32 %or, !dbg !5508
}

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #1

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !5509 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5516, metadata !DIExpression()), !dbg !5518
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5518
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5519
  %tobool = icmp ne i32 %0, 0, !dbg !5519
  %lnot = xor i1 %tobool, true, !dbg !5519
  %lnot1 = xor i1 %lnot, true, !dbg !5519
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5519
  %conv = sext i32 %lnot.ext to i64, !dbg !5519
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5519
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5518

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5519

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5521

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5523

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5521
  %2 = load i64, i64* %count.addr, align 8, !dbg !5521
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %1, i64 %2) #9, !dbg !5521
  br label %do.body4, !dbg !5521

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5525

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5527

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5525

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 134, i32 2313, i64 12) #11, !dbg !5529, !srcloc !5531
  br label %do.end8, !dbg !5529

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #11, !dbg !5532, !srcloc !5534
  br label %do.body9, !dbg !5525

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5535

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5525

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5521

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5537

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5521

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5521

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5518
  %tobool15 = icmp ne i32 %3, 0, !dbg !5518
  %lnot16 = xor i1 %tobool15, true, !dbg !5518
  %lnot18 = xor i1 %lnot16, true, !dbg !5518
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5518
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5518
  store i64 %conv20, i64* %tmp, align 8, !dbg !5519
  %4 = load i64, i64* %tmp, align 8, !dbg !5518
  ret void, !dbg !5539
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !5540 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  ret void, !dbg !5549
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @down_interruptible(%struct.semaphore*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !5550 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5553, metadata !DIExpression()), !dbg !5554
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5555, metadata !DIExpression()), !dbg !5556
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5561, metadata !DIExpression()), !dbg !5562
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5563, metadata !DIExpression()), !dbg !5564
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5567
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5568
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5569
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5570
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5571
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5572
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5573
  store i32 %2, i32* %pipe2, align 8, !dbg !5574
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5575
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5576
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5577
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5578
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5579
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5580
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5581
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5582
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5583
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5584
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5585
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5586
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5587
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5588
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5589
  store i8* %10, i8** %context4, align 8, !dbg !5590
  ret void, !dbg !5591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lcd_write_bulk_callback(%struct.urb* %urb) #2 !dbg !5592 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.usb_lcd*, align 8
  %status = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev, metadata !5595, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5599
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 12, !dbg !5600
  %1 = load i32, i32* %status1, align 8, !dbg !5600
  store i32 %1, i32* %status, align 4, !dbg !5598
  %2 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5601
  %context = getelementptr inbounds %struct.urb, %struct.urb* %2, i32 0, i32 27, !dbg !5602
  %3 = load i8*, i8** %context, align 8, !dbg !5602
  %4 = bitcast i8* %3 to %struct.usb_lcd*, !dbg !5601
  store %struct.usb_lcd* %4, %struct.usb_lcd** %dev, align 8, !dbg !5603
  %5 = load i32, i32* %status, align 4, !dbg !5604
  %tobool = icmp ne i32 %5, 0, !dbg !5604
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5606

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %status, align 4, !dbg !5607
  %cmp = icmp eq i32 %6, -2, !dbg !5608
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !5609

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i32, i32* %status, align 4, !dbg !5610
  %cmp2 = icmp eq i32 %7, -104, !dbg !5611
  br i1 %cmp2, label %if.end, label %lor.lhs.false3, !dbg !5612

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %status, align 4, !dbg !5613
  %cmp4 = icmp eq i32 %8, -108, !dbg !5614
  br i1 %cmp4, label %if.end, label %if.then, !dbg !5615

if.then:                                          ; preds = %lor.lhs.false3
  br label %if.end, !dbg !5616

if.end:                                           ; preds = %if.then, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true, %entry
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5618
  %dev5 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 8, !dbg !5619
  %10 = load %struct.usb_device*, %struct.usb_device** %dev5, align 8, !dbg !5619
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5620
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 19, !dbg !5621
  %12 = load i32, i32* %transfer_buffer_length, align 8, !dbg !5621
  %conv = zext i32 %12 to i64, !dbg !5620
  %13 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5622
  %transfer_buffer = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 14, !dbg !5623
  %14 = load i8*, i8** %transfer_buffer, align 8, !dbg !5623
  %15 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5624
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 15, !dbg !5625
  %16 = load i64, i64* %transfer_dma, align 8, !dbg !5625
  call void @usb_free_coherent(%struct.usb_device* %10, i64 %conv, i8* %14, i64 %16) #9, !dbg !5626
  %17 = load %struct.usb_lcd*, %struct.usb_lcd** %dev, align 8, !dbg !5627
  %limit_sem = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %17, i32 0, i32 7, !dbg !5628
  call void @up(%struct.semaphore* %limit_sem) #9, !dbg !5629
  ret void, !dbg !5630
}

; Function Attrs: noredzone
declare dso_local void @usb_anchor_urb(%struct.urb*, %struct.usb_anchor*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_unanchor_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @up(%struct.semaphore*) #1

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iminor(%struct.inode* %inode) #2 !dbg !5631 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5636
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !5636
  %1 = load i32, i32* %i_rdev, align 4, !dbg !5636
  %and = and i32 %1, 1048575, !dbg !5636
  ret i32 %and, !dbg !5637
}

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @usb_find_interface(%struct.usb_driver*, i32) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !5638 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5643
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5644
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !5645
  ret i8* %call, !dbg !5646
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #2 !dbg !5647 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5650
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5651
  call void @refcount_inc(%struct.refcount_struct* %refcount) #9, !dbg !5652
  ret void, !dbg !5653
}

; Function Attrs: noredzone
declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5654 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5661
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5662
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5662
  ret i8* %1, !dbg !5663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #2 !dbg !5664 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5669
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5670
  ret void, !dbg !5671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5672 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5679
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5680
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5681
  ret void, !dbg !5682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5683 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5686, metadata !DIExpression()), !dbg !5690
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5694, metadata !DIExpression()), !dbg !5695
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5696, metadata !DIExpression()), !dbg !5698
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5699, metadata !DIExpression()), !dbg !5701
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5703, metadata !DIExpression()), !dbg !5704
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5705, metadata !DIExpression()), !dbg !5706
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5707, metadata !DIExpression()), !dbg !5708
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5713, metadata !DIExpression()), !dbg !5714
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5715, metadata !DIExpression()), !dbg !5716
  %0 = load i32, i32* %i.addr, align 4, !dbg !5717
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5718
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5719
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5720
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5720
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5721
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5722
  %conv.i.i = trunc i64 %5 to i32, !dbg !5722
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #13, !dbg !5723
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5724
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5724
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #13, !dbg !5724
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5725
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5726
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5698
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5698
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5698
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5698
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5698
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #11, !dbg !5698, !srcloc !5727
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5698
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5698
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5698
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5698
  store i32 %15, i32* %old, align 4, !dbg !5716
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5728
  %tobool = icmp ne i32* %16, null, !dbg !5728
  br i1 %tobool, label %if.then, label %if.end, !dbg !5730

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5731
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5732
  store i32 %17, i32* %18, align 4, !dbg !5733
  br label %if.end, !dbg !5734

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5735
  %tobool1 = icmp ne i32 %19, 0, !dbg !5735
  %lnot = xor i1 %tobool1, true, !dbg !5735
  %lnot2 = xor i1 %lnot, true, !dbg !5735
  %lnot3 = xor i1 %lnot2, true, !dbg !5735
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5735
  %conv = sext i32 %lnot.ext to i64, !dbg !5735
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5735
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5737

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5738
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !5739
  br label %if.end17, !dbg !5739

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5740
  %cmp = icmp slt i32 %21, 0, !dbg !5740
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5740

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5740
  %23 = load i32, i32* %i.addr, align 4, !dbg !5740
  %add = add i32 %22, %23, !dbg !5740
  %cmp7 = icmp slt i32 %add, 0, !dbg !5740
  br label %lor.end, !dbg !5740

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5740
  %lnot11 = xor i1 %lnot9, true, !dbg !5740
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5740
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5740
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5740
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5742

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5743
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !5744
  br label %if.end16, !dbg !5744

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5745
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #1

; Function Attrs: noredzone
declare dso_local void @usb_autopm_put_interface(%struct.usb_interface*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #2 !dbg !5746 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5749, metadata !DIExpression()), !dbg !5750
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5751
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !5752
  ret i1 %call, !dbg !5753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5754 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5759, metadata !DIExpression()), !dbg !5760
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5761
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5762
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5763
  ret i1 %call, !dbg !5764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5765 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5768, metadata !DIExpression()), !dbg !5770
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5774, metadata !DIExpression()), !dbg !5775
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5776, metadata !DIExpression()), !dbg !5778
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5699, metadata !DIExpression()), !dbg !5779
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5703, metadata !DIExpression()), !dbg !5781
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5782, metadata !DIExpression()), !dbg !5783
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5784, metadata !DIExpression()), !dbg !5785
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5790, metadata !DIExpression()), !dbg !5791
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5792, metadata !DIExpression()), !dbg !5793
  %0 = load i32, i32* %i.addr, align 4, !dbg !5794
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5795
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5796
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5797
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5797
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5798
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5799
  %conv.i.i = trunc i64 %5 to i32, !dbg !5799
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #13, !dbg !5800
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5801
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5801
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #13, !dbg !5801
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5802
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5803
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5778
  %sub.i.i = sub i32 0, %10, !dbg !5778
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5778
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5778
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5778
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5778
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #11, !dbg !5778, !srcloc !5804
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5778
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5778
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5778
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5778
  store i32 %15, i32* %old, align 4, !dbg !5793
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5805
  %tobool = icmp ne i32* %16, null, !dbg !5805
  br i1 %tobool, label %if.then, label %if.end, !dbg !5807

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5808
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5809
  store i32 %17, i32* %18, align 4, !dbg !5810
  br label %if.end, !dbg !5811

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5812
  %20 = load i32, i32* %i.addr, align 4, !dbg !5814
  %cmp = icmp eq i32 %19, %20, !dbg !5815
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5816

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !5817, !srcloc !5819
  store i1 true, i1* %retval, align 1, !dbg !5820
  br label %return, !dbg !5820

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5821
  %cmp3 = icmp slt i32 %21, 0, !dbg !5821
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5821

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5821
  %23 = load i32, i32* %i.addr, align 4, !dbg !5821
  %sub = sub i32 %22, %23, !dbg !5821
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5821
  br label %lor.end, !dbg !5821

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5821
  %lnot5 = xor i1 %lnot, true, !dbg !5821
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5821
  %conv = sext i32 %lnot.ext to i64, !dbg !5821
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5821
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5823

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5824
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !5825
  br label %if.end8, !dbg !5825

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5826
  br label %return, !dbg !5826

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5827
  ret i1 %26, !dbg !5827
}

; Function Attrs: noredzone
declare dso_local void @usb_put_dev(%struct.usb_device*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @usb_deregister_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #1

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #1

; Function Attrs: noredzone
declare dso_local void @usb_kill_anchored_urbs(%struct.usb_anchor*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lcd_draw_down(%struct.usb_lcd* %dev) #2 !dbg !5828 {
entry:
  %dev.addr = alloca %struct.usb_lcd*, align 8
  %time = alloca i32, align 4
  store %struct.usb_lcd* %dev, %struct.usb_lcd** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_lcd** %dev.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  call void @llvm.dbg.declare(metadata i32* %time, metadata !5833, metadata !DIExpression()), !dbg !5834
  %0 = load %struct.usb_lcd*, %struct.usb_lcd** %dev.addr, align 8, !dbg !5835
  %submitted = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %0, i32 0, i32 8, !dbg !5836
  %call = call i32 @usb_wait_anchor_empty_timeout(%struct.usb_anchor* %submitted, i32 1000) #9, !dbg !5837
  store i32 %call, i32* %time, align 4, !dbg !5838
  %1 = load i32, i32* %time, align 4, !dbg !5839
  %tobool = icmp ne i32 %1, 0, !dbg !5839
  br i1 %tobool, label %if.end, label %if.then, !dbg !5841

if.then:                                          ; preds = %entry
  %2 = load %struct.usb_lcd*, %struct.usb_lcd** %dev.addr, align 8, !dbg !5842
  %submitted1 = getelementptr inbounds %struct.usb_lcd, %struct.usb_lcd* %2, i32 0, i32 8, !dbg !5843
  call void @usb_kill_anchored_urbs(%struct.usb_anchor* %submitted1) #9, !dbg !5844
  br label %if.end, !dbg !5844

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5845
}

; Function Attrs: noredzone
declare dso_local i32 @usb_wait_anchor_empty_timeout(%struct.usb_anchor*, i32) #1

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
!llvm.module.flags = !{!3964, !3965, !3966, !3967}
!llvm.ident = !{!3968}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lcd_driver_init214", scope: !2, file: !3, line: 446, type: !154, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !3849, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/misc/usblcd.c", directory: "/home/lizy2001/genbc/linux")
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
!133 = !{!134, !137, !139, !142, !144, !147, !154, !155, !146, !7, !3822}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !136, line: 76, flags: DIFlagFwdDecl)
!136 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !138, line: 148, baseType: !7)
!138 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !140, line: 24, baseType: !141)
!140 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !143, line: 29, baseType: !139)
!143 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !146)
!146 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !138, line: 178, size: 128, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !138, line: 179, baseType: !149, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !138, line: 179, baseType: !149, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !157)
!157 = !{!158, !159, !164, !168, !169, !170, !171, !172, !175, !176, !180, !181, !3564, !3604, !3605, !3622, !3683, !3765, !3766, !3768, !3769, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3804, !3805, !3806, !3811, !3818, !3819, !3820, !3821}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !156, file: !6, line: 632, baseType: !146, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !156, file: !6, line: 633, baseType: !160, size: 128, offset: 32)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !162)
!161 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!162 = !{!163}
!163 = !DISubrange(count: 16)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !156, file: !6, line: 634, baseType: !165, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !166, line: 21, baseType: !167)
!166 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !140, line: 27, baseType: !7)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !156, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !156, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !156, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !156, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !156, file: !6, line: 640, baseType: !173, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !156, file: !6, line: 641, baseType: !146, size: 32, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !156, file: !6, line: 643, baseType: !177, size: 64, offset: 416)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 2)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !6, line: 645, baseType: !155, size: 64, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !156, file: !6, line: 646, baseType: !182, size: 64, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !184)
!184 = !{!185, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3558, !3559, !3560, !3561, !3562, !3563}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !183, file: !6, line: 425, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !188)
!188 = !{!189, !3182, !3183, !3186, !3187, !3238, !3329, !3330, !3331, !3332, !3333, !3342, !3447, !3460, !3463, !3464, !3468, !3470, !3471, !3472, !3476, !3482, !3483, !3486, !3490, !3493, !3494, !3495, !3496, !3497, !3529, !3530, !3531, !3534, !3537, !3538, !3539, !3540}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !67, line: 462, baseType: !190, size: 512)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !191, line: 64, size: 512, elements: !192)
!191 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !196, !197, !199, !259, !3033, !3172, !3177, !3178, !3179, !3180, !3181}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 65, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !190, file: !191, line: 66, baseType: !150, size: 128, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !191, line: 67, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !190, file: !191, line: 68, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !191, line: 192, size: 704, elements: !202)
!202 = !{!203, !204, !220, !221}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !201, file: !191, line: 193, baseType: !150, size: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !201, file: !191, line: 194, baseType: !205, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !206, line: 83, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !206, line: 71, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !206, line: 72, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !206, line: 72, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !210, file: !206, line: 73, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !206, line: 20, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !213, file: !206, line: 21, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !217, line: 25, baseType: !218)
!217 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 25, elements: !219)
!219 = !{}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !201, file: !191, line: 195, baseType: !190, size: 512, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !201, file: !191, line: 196, baseType: !222, size: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !191, line: 156, size: 192, elements: !225)
!225 = !{!226, !231, !236}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !224, file: !191, line: 157, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!146, !200, !198}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !191, line: 158, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!194, !200, !198}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !224, file: !191, line: 159, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!146, !200, !198, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !191, line: 148, size: 20736, elements: !243)
!243 = !{!244, !249, !253, !254, !258}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !242, file: !191, line: 149, baseType: !245, size: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 192, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!247 = !{!248}
!248 = !DISubrange(count: 3)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !242, file: !191, line: 150, baseType: !250, size: 4096, offset: 192)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 4096, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !242, file: !191, line: 151, baseType: !146, size: 32, offset: 4288)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !191, line: 152, baseType: !255, size: 16384, offset: 4320)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 16384, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 2048)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !242, file: !191, line: 153, baseType: !146, size: 32, offset: 20704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !190, file: !191, line: 69, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !191, line: 138, size: 448, elements: !262)
!262 = !{!263, !267, !296, !298, !2993, !3023, !3027}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !261, file: !191, line: 139, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !198}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !261, file: !191, line: 140, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !271, line: 230, size: 128, elements: !272)
!271 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!272 = !{!273, !288}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !270, file: !271, line: 231, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !198, !282, !246}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !138, line: 60, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !279, line: 73, baseType: !280)
!279 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !279, line: 15, baseType: !281)
!281 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !271, line: 30, size: 128, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !271, line: 31, baseType: !194, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !283, file: !271, line: 32, baseType: !287, size: 16, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !138, line: 19, baseType: !141)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !270, file: !271, line: 232, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!277, !198, !282, !194, !292}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 55, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !279, line: 72, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !279, line: 16, baseType: !295)
!295 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !261, file: !191, line: 141, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !261, file: !191, line: 142, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !271, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !2990, !2991}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !271, line: 85, baseType: !194, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !271, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!287, !198, !282, !146}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !271, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!287, !198, !313, !146}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !271, line: 168, size: 448, elements: !315)
!315 = !{!316, !317, !318, !319, !2985, !2986}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !271, line: 169, baseType: !283, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !271, line: 170, baseType: !292, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !271, line: 171, baseType: !154, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !271, line: 172, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!277, !323, !198, !313, !246, !498, !292}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !325)
!325 = !{!326, !344, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2968, !2969, !2978, !2979, !2980, !2981, !2982, !2983, !2984}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !324, file: !38, line: 920, baseType: !327, size: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !38, line: 917, size: 128, elements: !328)
!328 = !{!329, !335}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !327, file: !38, line: 918, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !331, line: 58, size: 64, elements: !332)
!331 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !331, line: 59, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !327, file: !38, line: 919, baseType: !336, size: 128, align: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !138, line: 216, size: 128, align: 64, elements: !337)
!337 = !{!338, !340}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !138, line: 217, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !336, file: !138, line: 218, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !339}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !324, file: !38, line: 921, baseType: !345, size: 128, offset: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !346, line: 8, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !345, file: !346, line: 9, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !351, line: 18, flags: DIFlagFwdDecl)
!351 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !345, file: !346, line: 10, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !351, line: 89, size: 1536, elements: !355)
!355 = !{!356, !357, !367, !375, !376, !395, !2918, !2920, !2932, !2933, !2934, !2935, !2936, !2942, !2943, !2944}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !354, file: !351, line: 91, baseType: !7, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !354, file: !351, line: 92, baseType: !358, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !359, line: 277, baseType: !360)
!359 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !359, line: 277, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !360, file: !359, line: 277, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !359, line: 70, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !359, line: 65, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !364, file: !359, line: 66, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !354, file: !351, line: 93, baseType: !368, size: 128, offset: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !369, line: 38, size: 128, elements: !370)
!369 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !369, line: 39, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !368, file: !369, line: 39, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !354, file: !351, line: 94, baseType: !353, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !354, file: !351, line: 95, baseType: !377, size: 128, offset: 256)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !351, line: 47, size: 128, elements: !378)
!378 = !{!379, !391}
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !351, line: 48, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !351, line: 48, size: 64, elements: !381)
!381 = !{!382, !387}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !351, line: 49, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !351, line: 49, size: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !383, file: !351, line: 50, baseType: !165, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !383, file: !351, line: 50, baseType: !165, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !380, file: !351, line: 52, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !166, line: 23, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !140, line: 31, baseType: !390)
!390 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !351, line: 54, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !354, file: !351, line: 96, baseType: !396, size: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !398)
!398 = !{!399, !400, !401, !409, !416, !417, !565, !2630, !2631, !2632, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2894, !2902, !2903, !2904, !2914, !2915, !2916, !2917}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !397, file: !38, line: 611, baseType: !287, size: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !397, file: !38, line: 612, baseType: !141, size: 16, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !397, file: !38, line: 613, baseType: !402, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !403, line: 23, baseType: !404)
!403 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 21, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !404, file: !403, line: 22, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !138, line: 32, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !279, line: 49, baseType: !7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !397, file: !38, line: 614, baseType: !410, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !403, line: 28, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 26, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !403, line: 27, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !138, line: 33, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !279, line: 50, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !397, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !397, file: !38, line: 622, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !421)
!421 = !{!422, !426, !439, !443, !449, !453, !459, !463, !467, !471, !475, !476, !482, !486, !512, !541, !545, !551, !556, !560, !561}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !420, file: !38, line: 1865, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!353, !396, !353, !7}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !420, file: !38, line: 1866, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!194, !353, !396, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !432, line: 10, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !431, file: !432, line: 11, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !154}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !431, file: !432, line: 12, baseType: !154, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !420, file: !38, line: 1867, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!146, !396, !146}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !420, file: !38, line: 1868, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !396, !146}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !420, file: !38, line: 1870, baseType: !450, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!146, !353, !246, !146}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !420, file: !38, line: 1872, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!146, !396, !353, !287, !457}
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !138, line: 30, baseType: !458)
!458 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !420, file: !38, line: 1873, baseType: !460, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!146, !353, !396, !353}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !420, file: !38, line: 1874, baseType: !464, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!146, !396, !353}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !420, file: !38, line: 1875, baseType: !468, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!146, !396, !353, !194}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !420, file: !38, line: 1876, baseType: !472, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!146, !396, !353, !287}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !420, file: !38, line: 1877, baseType: !464, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !420, file: !38, line: 1878, baseType: !477, size: 64, offset: 704)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!146, !396, !353, !287, !480}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !138, line: 16, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !138, line: 13, baseType: !165)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !420, file: !38, line: 1879, baseType: !483, size: 64, offset: 768)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!146, !396, !353, !396, !353, !7}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !420, file: !38, line: 1881, baseType: !487, size: 64, offset: 832)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!146, !353, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !501, !509, !510, !511}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !491, file: !38, line: 220, baseType: !7, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !491, file: !38, line: 221, baseType: !287, size: 16, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !491, file: !38, line: 222, baseType: !402, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !491, file: !38, line: 223, baseType: !410, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !491, file: !38, line: 224, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !138, line: 46, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !279, line: 88, baseType: !500)
!500 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !491, file: !38, line: 225, baseType: !502, size: 128, offset: 192)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !503, line: 13, size: 128, elements: !504)
!503 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !502, file: !503, line: 14, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !503, line: 8, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !140, line: 30, baseType: !500)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !502, file: !503, line: 15, baseType: !281, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !491, file: !38, line: 226, baseType: !502, size: 128, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !491, file: !38, line: 227, baseType: !502, size: 128, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !491, file: !38, line: 234, baseType: !323, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !420, file: !38, line: 1882, baseType: !513, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!146, !516, !518, !165, !7}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !520, line: 22, size: 1152, elements: !521)
!520 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !523, !524, !525, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !519, file: !520, line: 23, baseType: !165, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !519, file: !520, line: 24, baseType: !287, size: 16, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !519, file: !520, line: 25, baseType: !7, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !519, file: !520, line: 26, baseType: !526, size: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 104, baseType: !165)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !519, file: !520, line: 27, baseType: !388, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !519, file: !520, line: 28, baseType: !388, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !519, file: !520, line: 37, baseType: !388, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !519, file: !520, line: 38, baseType: !480, size: 32, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !519, file: !520, line: 39, baseType: !480, size: 32, offset: 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !519, file: !520, line: 40, baseType: !402, size: 32, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !519, file: !520, line: 41, baseType: !410, size: 32, offset: 416)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !519, file: !520, line: 42, baseType: !498, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !519, file: !520, line: 43, baseType: !502, size: 128, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !519, file: !520, line: 44, baseType: !502, size: 128, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !519, file: !520, line: 45, baseType: !502, size: 128, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !519, file: !520, line: 46, baseType: !502, size: 128, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !519, file: !520, line: 47, baseType: !388, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !519, file: !520, line: 48, baseType: !388, size: 64, offset: 1088)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !420, file: !38, line: 1883, baseType: !542, size: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!277, !353, !246, !292}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !420, file: !38, line: 1884, baseType: !546, size: 64, offset: 1024)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!146, !396, !549, !388, !388}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !420, file: !38, line: 1886, baseType: !552, size: 64, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!146, !396, !555, !146}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !420, file: !38, line: 1887, baseType: !557, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!146, !396, !353, !323, !7, !287}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !420, file: !38, line: 1890, baseType: !472, size: 64, offset: 1216)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !420, file: !38, line: 1891, baseType: !562, size: 64, offset: 1280)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!146, !396, !447, !146}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !397, file: !38, line: 623, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !621, !2237, !2319, !2402, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2418, !2422, !2423, !2426, !2427, !2430, !2431, !2432, !2473, !2500, !2501, !2502, !2503, !2504, !2505, !2508, !2510, !2517, !2518, !2520, !2521, !2522, !2581, !2582, !2597, !2598, !2599, !2600, !2601, !2604, !2605, !2606, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !567, file: !38, line: 1417, baseType: !150, size: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !567, file: !38, line: 1418, baseType: !480, size: 32, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !567, file: !38, line: 1419, baseType: !394, size: 8, offset: 160)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !567, file: !38, line: 1420, baseType: !295, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !567, file: !38, line: 1421, baseType: !498, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !567, file: !38, line: 1422, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !577)
!577 = !{!578, !579, !580, !587, !591, !595, !599, !600, !601, !611, !614, !615, !616, !618, !619, !620}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !38, line: 2229, baseType: !194, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !576, file: !38, line: 2230, baseType: !146, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !576, file: !38, line: 2238, baseType: !581, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!146, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !586, line: 28, flags: DIFlagFwdDecl)
!586 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!587 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !576, file: !38, line: 2239, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !576, file: !38, line: 2240, baseType: !592, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!353, !575, !146, !194, !154}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !576, file: !38, line: 2242, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !566}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !576, file: !38, line: 2243, baseType: !134, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !38, line: 2244, baseType: !575, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !576, file: !38, line: 2245, baseType: !602, size: 64, offset: 512)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !138, line: 182, size: 64, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !602, file: !138, line: 183, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !138, line: 186, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !138, line: 187, baseType: !605, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !606, file: !138, line: 187, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !576, file: !38, line: 2247, baseType: !612, offset: 576)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !613, line: 187, elements: !219)
!613 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !576, file: !38, line: 2248, baseType: !612, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !576, file: !38, line: 2249, baseType: !612, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !576, file: !38, line: 2250, baseType: !617, offset: 576)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, elements: !247)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !576, file: !38, line: 2252, baseType: !612, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !576, file: !38, line: 2253, baseType: !612, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !576, file: !38, line: 2254, baseType: !612, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !567, file: !38, line: 1423, baseType: !622, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !625)
!625 = !{!626, !630, !634, !635, !639, !645, !649, !650, !651, !655, !659, !660, !661, !662, !668, !673, !674, !681, !682, !683, !684, !2221, !2236}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !624, file: !38, line: 1936, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!396, !566}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !624, file: !38, line: 1937, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !396}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !624, file: !38, line: 1938, baseType: !631, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !624, file: !38, line: 1940, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !396, !146}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !624, file: !38, line: 1941, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!146, !396, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !624, file: !38, line: 1942, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!146, !396}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !624, file: !38, line: 1943, baseType: !631, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !624, file: !38, line: 1944, baseType: !596, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !624, file: !38, line: 1945, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!146, !566, !146}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !624, file: !38, line: 1946, baseType: !656, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!146, !566}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !624, file: !38, line: 1947, baseType: !656, size: 64, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !624, file: !38, line: 1948, baseType: !656, size: 64, offset: 704)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !624, file: !38, line: 1949, baseType: !656, size: 64, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !624, file: !38, line: 1950, baseType: !663, size: 64, offset: 832)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!146, !353, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !624, file: !38, line: 1951, baseType: !669, size: 64, offset: 896)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!146, !566, !672, !246}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !624, file: !38, line: 1952, baseType: !596, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !624, file: !38, line: 1954, baseType: !675, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!146, !678, !353}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !680, line: 539, flags: DIFlagFwdDecl)
!680 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!681 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !624, file: !38, line: 1955, baseType: !675, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !624, file: !38, line: 1956, baseType: !675, size: 64, offset: 1152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !624, file: !38, line: 1957, baseType: !675, size: 64, offset: 1216)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !624, file: !38, line: 1963, baseType: !685, size: 64, offset: 1280)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!146, !566, !688, !137}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !690, line: 68, size: 512, align: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !693, !2213, !2220}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !690, line: 69, baseType: !295, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 77, baseType: !694, size: 320, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 77, size: 320, elements: !695)
!695 = !{!696, !882, !887, !915, !923, !929, !2205, !2212}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 78, baseType: !697, size: 320)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 78, size: 320, elements: !698)
!698 = !{!699, !700, !880, !881}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !697, file: !690, line: 84, baseType: !150, size: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !697, file: !690, line: 86, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !703)
!703 = !{!704, !705, !712, !713, !718, !733, !749, !750, !751, !752, !873, !874, !877, !878, !879}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !702, file: !38, line: 452, baseType: !396, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !702, file: !38, line: 453, baseType: !706, size: 128, offset: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !707, line: 292, size: 128, elements: !708)
!707 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!708 = !{!709, !710, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !706, file: !707, line: 293, baseType: !205)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !706, file: !707, line: 295, baseType: !137, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !706, file: !707, line: 296, baseType: !154, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !702, file: !38, line: 454, baseType: !137, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !702, file: !38, line: 455, baseType: !714, size: 32, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !138, line: 168, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 166, size: 32, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !715, file: !138, line: 167, baseType: !146, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !702, file: !38, line: 460, baseType: !719, size: 128, offset: 256)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !720, line: 125, size: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !732}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !719, file: !720, line: 126, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !720, line: 31, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !723, file: !720, line: 32, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !720, line: 24, size: 192, align: 64, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !727, file: !720, line: 25, baseType: !295, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !727, file: !720, line: 26, baseType: !726, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !727, file: !720, line: 27, baseType: !726, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !719, file: !720, line: 127, baseType: !726, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !702, file: !38, line: 461, baseType: !734, size: 256, offset: 384)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !735, line: 35, size: 256, elements: !736)
!735 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !745, !746, !748}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !734, file: !735, line: 36, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !739, line: 13, baseType: !740)
!739 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !138, line: 175, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 173, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !741, file: !138, line: 174, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !166, line: 22, baseType: !507)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !734, file: !735, line: 42, baseType: !738, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !734, file: !735, line: 46, baseType: !747, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !206, line: 29, baseType: !213)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !734, file: !735, line: 47, baseType: !150, size: 128, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !702, file: !38, line: 462, baseType: !295, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !702, file: !38, line: 463, baseType: !295, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !702, file: !38, line: 464, baseType: !295, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !702, file: !38, line: 465, baseType: !753, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !756)
!756 = !{!757, !761, !765, !769, !773, !777, !783, !789, !793, !798, !802, !806, !810, !837, !841, !847, !848, !849, !853, !858, !862, !869}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !755, file: !38, line: 368, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!146, !688, !643}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !755, file: !38, line: 369, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!146, !323, !688}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !755, file: !38, line: 372, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!146, !701, !643}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !755, file: !38, line: 375, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!146, !688}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !755, file: !38, line: 381, baseType: !774, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!146, !323, !701, !149, !7}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !755, file: !38, line: 383, baseType: !778, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !755, file: !38, line: 385, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!146, !323, !701, !498, !7, !7, !787, !788}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !755, file: !38, line: 388, baseType: !790, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!146, !323, !701, !498, !7, !7, !688, !154}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !755, file: !38, line: 393, baseType: !794, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!797, !701, !797}
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !138, line: 125, baseType: !388)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !755, file: !38, line: 394, baseType: !799, size: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !688, !7, !7}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !755, file: !38, line: 395, baseType: !803, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!146, !688, !137}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !755, file: !38, line: 396, baseType: !807, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !688}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !755, file: !38, line: 397, baseType: !811, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!277, !814, !835}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !816)
!816 = !{!817, !818, !819, !823, !824, !825, !827, !828}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !815, file: !38, line: 321, baseType: !323, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !815, file: !38, line: 326, baseType: !498, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !815, file: !38, line: 327, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !814, !281, !281}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !815, file: !38, line: 328, baseType: !154, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !815, file: !38, line: 329, baseType: !146, size: 32, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !815, file: !38, line: 330, baseType: !826, size: 16, offset: 288)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !166, line: 19, baseType: !139)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !815, file: !38, line: 331, baseType: !826, size: 16, offset: 304)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !38, line: 332, baseType: !829, size: 64, offset: 320)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !38, line: 332, size: 64, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !829, file: !38, line: 333, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !829, file: !38, line: 334, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !755, file: !38, line: 402, baseType: !838, size: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!146, !701, !688, !688, !13}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !755, file: !38, line: 404, baseType: !842, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!457, !688, !845}
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !846, line: 305, baseType: !7)
!846 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!847 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !755, file: !38, line: 405, baseType: !807, size: 64, offset: 960)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !755, file: !38, line: 406, baseType: !770, size: 64, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !755, file: !38, line: 407, baseType: !850, size: 64, offset: 1088)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!146, !688, !295, !295}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !755, file: !38, line: 409, baseType: !854, size: 64, offset: 1152)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !688, !857, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !755, file: !38, line: 410, baseType: !859, size: 64, offset: 1216)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!146, !701, !688}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !755, file: !38, line: 413, baseType: !863, size: 64, offset: 1280)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!146, !866, !323, !868}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !755, file: !38, line: 415, baseType: !870, size: 64, offset: 1344)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !323}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !38, line: 466, baseType: !295, size: 64, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !702, file: !38, line: 467, baseType: !875, size: 32, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !876, line: 8, baseType: !165)
!876 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!877 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !702, file: !38, line: 468, baseType: !205, offset: 992)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !702, file: !38, line: 469, baseType: !150, size: 128, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !702, file: !38, line: 470, baseType: !154, size: 64, offset: 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !697, file: !690, line: 87, baseType: !295, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !697, file: !690, line: 94, baseType: !295, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 96, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 96, size: 64, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !883, file: !690, line: 101, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !138, line: 143, baseType: !388)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 103, baseType: !888, size: 320)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 103, size: 320, elements: !889)
!889 = !{!890, !900, !903, !904}
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !690, line: 104, baseType: !891, size: 128)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !888, file: !690, line: 104, size: 128, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !891, file: !690, line: 105, baseType: !150, size: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !690, line: 106, baseType: !895, size: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !690, line: 106, size: 128, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !895, file: !690, line: 107, baseType: !688, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !895, file: !690, line: 109, baseType: !146, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !895, file: !690, line: 110, baseType: !146, size: 32, offset: 96)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !888, file: !690, line: 117, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !690, line: 117, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !888, file: !690, line: 119, baseType: !154, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !690, line: 120, baseType: !905, size: 64, offset: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !888, file: !690, line: 120, size: 64, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !905, file: !690, line: 121, baseType: !154, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !905, file: !690, line: 122, baseType: !295, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !905, file: !690, line: 123, baseType: !910, size: 32)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !905, file: !690, line: 123, size: 32, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !910, file: !690, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !910, file: !690, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !910, file: !690, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 130, baseType: !916, size: 192)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 130, size: 192, elements: !917)
!917 = !{!918, !919, !920, !921, !922}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !916, file: !690, line: 131, baseType: !295, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !916, file: !690, line: 134, baseType: !394, size: 8, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !916, file: !690, line: 135, baseType: !394, size: 8, offset: 72)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !916, file: !690, line: 136, baseType: !714, size: 32, offset: 96)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !916, file: !690, line: 137, baseType: !7, size: 32, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 139, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 139, size: 256, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !924, file: !690, line: 140, baseType: !295, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !924, file: !690, line: 141, baseType: !714, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !924, file: !690, line: 143, baseType: !150, size: 128, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 145, baseType: !930, size: 256)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 145, size: 256, elements: !931)
!931 = !{!932, !933, !935, !936, !2204}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !930, file: !690, line: 146, baseType: !295, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !930, file: !690, line: 147, baseType: !934, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !680, line: 509, baseType: !688)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !930, file: !690, line: 148, baseType: !295, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !690, line: 149, baseType: !937, size: 64, offset: 192)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !690, line: 149, size: 64, elements: !938)
!938 = !{!939, !2203}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !937, file: !690, line: 150, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !690, line: 388, size: 7296, elements: !942)
!942 = !{!943, !2199}
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !690, line: 389, baseType: !944, size: 7296)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !690, line: 389, size: 7296, elements: !945)
!945 = !{!946, !984, !985, !986, !990, !991, !992, !993, !994, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1035, !1043, !1046, !1092, !1093, !2183, !2184, !2187, !2188, !2189, !2192, !2193, !2194, !2197, !2198}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !944, file: !690, line: 390, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !690, line: 305, size: 1472, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957, !964, !965, !970, !971, !974, !978, !979, !980, !981, !982}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !948, file: !690, line: 308, baseType: !295, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !948, file: !690, line: 309, baseType: !295, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !948, file: !690, line: 313, baseType: !947, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !948, file: !690, line: 313, baseType: !947, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !948, file: !690, line: 315, baseType: !727, size: 192, align: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !948, file: !690, line: 323, baseType: !295, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !948, file: !690, line: 327, baseType: !940, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !948, file: !690, line: 333, baseType: !958, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !680, line: 284, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !680, line: 284, size: 64, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !959, file: !680, line: 284, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !963, line: 19, baseType: !295)
!963 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !948, file: !690, line: 334, baseType: !295, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !948, file: !690, line: 343, baseType: !966, size: 256, offset: 704)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !690, line: 340, size: 256, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !966, file: !690, line: 341, baseType: !727, size: 192, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !966, file: !690, line: 342, baseType: !295, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !948, file: !690, line: 351, baseType: !150, size: 128, offset: 960)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !948, file: !690, line: 353, baseType: !972, size: 64, offset: 1088)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !690, line: 353, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !948, file: !690, line: 356, baseType: !975, size: 64, offset: 1152)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !690, line: 356, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !948, file: !690, line: 359, baseType: !295, size: 64, offset: 1216)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !948, file: !690, line: 361, baseType: !323, size: 64, offset: 1280)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !948, file: !690, line: 362, baseType: !154, size: 64, offset: 1344)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !948, file: !690, line: 365, baseType: !738, size: 64, offset: 1408)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !948, file: !690, line: 373, baseType: !983, offset: 1472)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !690, line: 296, elements: !219)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !944, file: !690, line: 391, baseType: !723, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !944, file: !690, line: 392, baseType: !388, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !944, file: !690, line: 394, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!295, !323, !295, !295, !295, !295}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !944, file: !690, line: 398, baseType: !295, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !944, file: !690, line: 399, baseType: !295, size: 64, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !944, file: !690, line: 405, baseType: !295, size: 64, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !944, file: !690, line: 406, baseType: !295, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !944, file: !690, line: 407, baseType: !995, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !680, line: 286, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 286, size: 64, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !997, file: !680, line: 286, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !963, line: 18, baseType: !295)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !944, file: !690, line: 416, baseType: !714, size: 32, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !944, file: !690, line: 428, baseType: !714, size: 32, offset: 608)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !944, file: !690, line: 437, baseType: !714, size: 32, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !944, file: !690, line: 447, baseType: !714, size: 32, offset: 672)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !944, file: !690, line: 450, baseType: !738, size: 64, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !944, file: !690, line: 452, baseType: !146, size: 32, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !944, file: !690, line: 454, baseType: !205, offset: 800)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !944, file: !690, line: 457, baseType: !734, size: 256, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !944, file: !690, line: 459, baseType: !150, size: 128, offset: 1088)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !944, file: !690, line: 466, baseType: !295, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !944, file: !690, line: 467, baseType: !295, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !944, file: !690, line: 469, baseType: !295, size: 64, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !944, file: !690, line: 470, baseType: !295, size: 64, offset: 1408)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !944, file: !690, line: 471, baseType: !740, size: 64, offset: 1472)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !944, file: !690, line: 472, baseType: !295, size: 64, offset: 1536)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !944, file: !690, line: 473, baseType: !295, size: 64, offset: 1600)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !944, file: !690, line: 474, baseType: !295, size: 64, offset: 1664)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !944, file: !690, line: 475, baseType: !295, size: 64, offset: 1728)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !944, file: !690, line: 477, baseType: !205, offset: 1792)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !944, file: !690, line: 478, baseType: !295, size: 64, offset: 1792)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !944, file: !690, line: 478, baseType: !295, size: 64, offset: 1856)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !944, file: !690, line: 478, baseType: !295, size: 64, offset: 1920)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !944, file: !690, line: 478, baseType: !295, size: 64, offset: 1984)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !944, file: !690, line: 479, baseType: !295, size: 64, offset: 2048)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !944, file: !690, line: 479, baseType: !295, size: 64, offset: 2112)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !944, file: !690, line: 479, baseType: !295, size: 64, offset: 2176)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !944, file: !690, line: 480, baseType: !295, size: 64, offset: 2240)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !944, file: !690, line: 480, baseType: !295, size: 64, offset: 2304)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !944, file: !690, line: 480, baseType: !295, size: 64, offset: 2368)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !944, file: !690, line: 480, baseType: !295, size: 64, offset: 2432)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !944, file: !690, line: 482, baseType: !1032, size: 2816, offset: 2496)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 2816, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 44)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !944, file: !690, line: 488, baseType: !1036, size: 256, offset: 5312)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1037, line: 60, size: 256, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1036, file: !1037, line: 61, baseType: !1040, size: 256)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 256, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 4)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !944, file: !690, line: 490, baseType: !1044, size: 64, offset: 5568)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !690, line: 490, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !944, file: !690, line: 493, baseType: !1047, size: 896, offset: 5632)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1048, line: 53, baseType: !1049)
!1048 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1048, line: 13, size: 896, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1057, !1058, !1065, !1066, !1086, !1087, !1088}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1049, file: !1048, line: 18, baseType: !388, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1049, file: !1048, line: 28, baseType: !740, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1049, file: !1048, line: 31, baseType: !734, size: 256, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1049, file: !1048, line: 32, baseType: !1055, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1048, line: 32, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1049, file: !1048, line: 37, baseType: !141, size: 16, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1049, file: !1048, line: 40, baseType: !1059, size: 192, offset: 512)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1060, line: 53, size: 192, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1059, file: !1060, line: 54, baseType: !738, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1059, file: !1060, line: 55, baseType: !205, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1059, file: !1060, line: 59, baseType: !150, size: 128, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1049, file: !1048, line: 41, baseType: !154, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1049, file: !1048, line: 42, baseType: !1067, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1070, line: 13, size: 896, elements: !1071)
!1070 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1069, file: !1070, line: 14, baseType: !154, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1069, file: !1070, line: 15, baseType: !295, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1069, file: !1070, line: 17, baseType: !295, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1069, file: !1070, line: 17, baseType: !295, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1069, file: !1070, line: 19, baseType: !281, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1069, file: !1070, line: 21, baseType: !281, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1069, file: !1070, line: 22, baseType: !281, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1069, file: !1070, line: 23, baseType: !281, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1069, file: !1070, line: 24, baseType: !281, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1069, file: !1070, line: 25, baseType: !281, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1069, file: !1070, line: 26, baseType: !281, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1069, file: !1070, line: 27, baseType: !281, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1069, file: !1070, line: 28, baseType: !281, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1069, file: !1070, line: 29, baseType: !281, size: 64, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1049, file: !1048, line: 44, baseType: !714, size: 32, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1049, file: !1048, line: 50, baseType: !826, size: 16, offset: 864)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1049, file: !1048, line: 51, baseType: !1089, size: 16, offset: 880)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !166, line: 18, baseType: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !140, line: 23, baseType: !1091)
!1091 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !690, line: 495, baseType: !295, size: 64, offset: 6528)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !944, file: !690, line: 497, baseType: !1094, size: 64, offset: 6592)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !690, line: 381, size: 384, elements: !1096)
!1096 = !{!1097, !1098, !2182}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1095, file: !690, line: 382, baseType: !714, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1095, file: !690, line: 383, baseType: !1099, size: 128, offset: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !690, line: 376, size: 128, elements: !1100)
!1100 = !{!1101, !2180}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1099, file: !690, line: 377, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1104, line: 640, size: 48640, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1105 = !{!1106, !1112, !1114, !1115, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1131, !1149, !1160, !1245, !1246, !1247, !1258, !1259, !1261, !1262, !1263, !1264, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1343, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1381, !1383, !1384, !1385, !1397, !1398, !1399, !1400, !1401, !1402, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1426, !1431, !1613, !1614, !1615, !1616, !1617, !1620, !1623, !1626, !1629, !1633, !1734, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1780, !1781, !1782, !1783, !1784, !1789, !1790, !1791, !1794, !1795, !1798, !1801, !1804, !1807, !1850, !1853, !1854, !1933, !1934, !1937, !1938, !1941, !1942, !1943, !1947, !1948, !1949, !1962, !1963, !1964, !1974, !1979, !1982, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1103, file: !1104, line: 646, baseType: !1107, size: 128)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1108, line: 56, size: 128, elements: !1109)
!1108 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !1108, line: 57, baseType: !295, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1107, file: !1108, line: 58, baseType: !165, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1103, file: !1104, line: 649, baseType: !1113, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !281)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1103, file: !1104, line: 657, baseType: !154, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1103, file: !1104, line: 658, baseType: !1116, size: 32, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !126, line: 113, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !126, line: 111, size: 32, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1117, file: !126, line: 112, baseType: !714, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1103, file: !1104, line: 660, baseType: !7, size: 32, offset: 288)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1103, file: !1104, line: 661, baseType: !7, size: 32, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1103, file: !1104, line: 684, baseType: !146, size: 32, offset: 352)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1103, file: !1104, line: 686, baseType: !146, size: 32, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1103, file: !1104, line: 687, baseType: !146, size: 32, offset: 416)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1103, file: !1104, line: 688, baseType: !146, size: 32, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1103, file: !1104, line: 689, baseType: !7, size: 32, offset: 480)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1103, file: !1104, line: 691, baseType: !1128, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1104, line: 691, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1103, file: !1104, line: 692, baseType: !1132, size: 832, offset: 576)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1104, line: 451, size: 832, elements: !1133)
!1133 = !{!1134, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1132, file: !1104, line: 453, baseType: !1135, size: 128)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1104, line: 325, size: 128, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1135, file: !1104, line: 326, baseType: !295, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1135, file: !1104, line: 327, baseType: !165, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1132, file: !1104, line: 454, baseType: !727, size: 192, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1132, file: !1104, line: 455, baseType: !150, size: 128, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1132, file: !1104, line: 456, baseType: !7, size: 32, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1132, file: !1104, line: 458, baseType: !388, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1132, file: !1104, line: 459, baseType: !388, size: 64, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1132, file: !1104, line: 460, baseType: !388, size: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1132, file: !1104, line: 461, baseType: !388, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1132, file: !1104, line: 463, baseType: !388, size: 64, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1132, file: !1104, line: 465, baseType: !1148, offset: 832)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1104, line: 415, elements: !219)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1103, file: !1104, line: 693, baseType: !1150, size: 384, offset: 1408)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1104, line: 489, size: 384, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1150, file: !1104, line: 490, baseType: !150, size: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1150, file: !1104, line: 491, baseType: !295, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1150, file: !1104, line: 492, baseType: !295, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1150, file: !1104, line: 493, baseType: !7, size: 32, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1150, file: !1104, line: 494, baseType: !141, size: 16, offset: 288)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1150, file: !1104, line: 495, baseType: !141, size: 16, offset: 304)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1150, file: !1104, line: 497, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1103, file: !1104, line: 697, baseType: !1161, size: 1792, offset: 1792)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1104, line: 507, size: 1792, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1242, !1243}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1161, file: !1104, line: 508, baseType: !727, size: 192, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1161, file: !1104, line: 515, baseType: !388, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1161, file: !1104, line: 516, baseType: !388, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1161, file: !1104, line: 517, baseType: !388, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1161, file: !1104, line: 518, baseType: !388, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1161, file: !1104, line: 519, baseType: !388, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1161, file: !1104, line: 526, baseType: !744, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1161, file: !1104, line: 527, baseType: !388, size: 64, offset: 576)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !1104, line: 528, baseType: !7, size: 32, offset: 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1161, file: !1104, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1161, file: !1104, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1161, file: !1104, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1161, file: !1104, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1161, file: !1104, line: 563, baseType: !1177, size: 512, offset: 704)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1178)
!1178 = !{!1179, !1187, !1188, !1193, !1236, !1239, !1240, !1241}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1177, file: !21, line: 119, baseType: !1180, size: 256)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1181, line: 9, size: 256, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1180, file: !1181, line: 10, baseType: !727, size: 192, align: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1180, file: !1181, line: 11, baseType: !1185, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1186, line: 29, baseType: !744)
!1186 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1177, file: !21, line: 120, baseType: !1185, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1177, file: !21, line: 121, baseType: !1189, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!20, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1177, file: !21, line: 122, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1196)
!1196 = !{!1197, !1217, !1218, !1221, !1226, !1227, !1231, !1235}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1195, file: !21, line: 160, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1199, file: !21, line: 215, baseType: !747)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1199, file: !21, line: 216, baseType: !7, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1199, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1199, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1199, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1199, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1199, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1199, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1199, file: !21, line: 233, baseType: !1185, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1199, file: !21, line: 234, baseType: !1192, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1199, file: !21, line: 235, baseType: !1185, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1199, file: !21, line: 236, baseType: !1192, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1199, file: !21, line: 237, baseType: !1214, size: 4096, offset: 512)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 4096, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 8)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1195, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1195, file: !21, line: 162, baseType: !1219, size: 32, offset: 96)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !138, line: 27, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !279, line: 96, baseType: !146)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1195, file: !21, line: 163, baseType: !1222, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !359, line: 276, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !359, line: 276, size: 32, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1223, file: !359, line: 276, baseType: !363, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1195, file: !21, line: 164, baseType: !1192, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1195, file: !21, line: 165, baseType: !1228, size: 128, offset: 256)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1181, line: 14, size: 128, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1228, file: !1181, line: 15, baseType: !719, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1195, file: !21, line: 166, baseType: !1232, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1185}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1195, file: !21, line: 167, baseType: !1185, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1177, file: !21, line: 123, baseType: !1237, size: 8, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !166, line: 17, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !140, line: 21, baseType: !394)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1177, file: !21, line: 124, baseType: !1237, size: 8, offset: 456)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1177, file: !21, line: 125, baseType: !1237, size: 8, offset: 464)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1177, file: !21, line: 126, baseType: !1237, size: 8, offset: 472)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1161, file: !1104, line: 572, baseType: !1177, size: 512, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1161, file: !1104, line: 580, baseType: !1244, size: 64, offset: 1728)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1103, file: !1104, line: 721, baseType: !7, size: 32, offset: 3584)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1103, file: !1104, line: 722, baseType: !146, size: 32, offset: 3616)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1103, file: !1104, line: 723, baseType: !1248, size: 64, offset: 3648)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1251, line: 17, baseType: !1252)
!1251 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1251, line: 17, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1252, file: !1251, line: 17, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 1)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1103, file: !1104, line: 724, baseType: !1250, size: 64, offset: 3712)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1103, file: !1104, line: 749, baseType: !1260, offset: 3776)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1104, line: 290, elements: !219)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1103, file: !1104, line: 751, baseType: !150, size: 128, offset: 3776)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1103, file: !1104, line: 757, baseType: !940, size: 64, offset: 3904)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1103, file: !1104, line: 758, baseType: !940, size: 64, offset: 3968)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1103, file: !1104, line: 761, baseType: !1265, size: 320, offset: 4032)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1037, line: 34, size: 320, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1265, file: !1037, line: 35, baseType: !388, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1265, file: !1037, line: 36, baseType: !1269, size: 256, offset: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 256, elements: !1041)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1103, file: !1104, line: 766, baseType: !146, size: 32, offset: 4352)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1103, file: !1104, line: 767, baseType: !146, size: 32, offset: 4384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1103, file: !1104, line: 768, baseType: !146, size: 32, offset: 4416)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1103, file: !1104, line: 770, baseType: !146, size: 32, offset: 4448)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1103, file: !1104, line: 772, baseType: !295, size: 64, offset: 4480)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1103, file: !1104, line: 775, baseType: !7, size: 32, offset: 4544)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1103, file: !1104, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1103, file: !1104, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1103, file: !1104, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1103, file: !1104, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1103, file: !1104, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1103, file: !1104, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1103, file: !1104, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1103, file: !1104, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1103, file: !1104, line: 831, baseType: !295, size: 64, offset: 4672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1103, file: !1104, line: 833, baseType: !1286, size: 384, offset: 4736)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1287)
!1287 = !{!1288, !1293}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1286, file: !26, line: 26, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!281, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !26, line: 27, baseType: !1294, size: 320, offset: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1286, file: !26, line: 27, size: 320, elements: !1295)
!1295 = !{!1296, !1306, !1333}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1294, file: !26, line: 36, baseType: !1297, size: 320)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !26, line: 29, size: 320, elements: !1298)
!1298 = !{!1299, !1301, !1302, !1303, !1304, !1305}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1297, file: !26, line: 30, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1297, file: !26, line: 31, baseType: !165, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1297, file: !26, line: 32, baseType: !165, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1297, file: !26, line: 33, baseType: !165, size: 32, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1297, file: !26, line: 34, baseType: !388, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1297, file: !26, line: 35, baseType: !1300, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1294, file: !26, line: 46, baseType: !1307, size: 192)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !26, line: 38, size: 192, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1332}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1307, file: !26, line: 39, baseType: !1219, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1307, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !26, line: 41, baseType: !1312, size: 64, offset: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !26, line: 41, size: 64, elements: !1313)
!1313 = !{!1314, !1322}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1312, file: !26, line: 42, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1317, line: 7, size: 128, elements: !1318)
!1317 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1316, file: !1317, line: 8, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !279, line: 93, baseType: !500)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1316, file: !1317, line: 9, baseType: !500, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1312, file: !26, line: 43, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1325, line: 7, size: 64, elements: !1326)
!1325 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1326 = !{!1327, !1331}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1324, file: !1325, line: 8, baseType: !1328, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1325, line: 5, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !166, line: 20, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !140, line: 26, baseType: !146)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1324, file: !1325, line: 9, baseType: !1329, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1307, file: !26, line: 45, baseType: !388, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1294, file: !26, line: 54, baseType: !1334, size: 256)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !26, line: 48, size: 256, elements: !1335)
!1335 = !{!1336, !1339, !1340, !1341, !1342}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1334, file: !26, line: 49, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1334, file: !26, line: 50, baseType: !146, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1334, file: !26, line: 51, baseType: !146, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1334, file: !26, line: 52, baseType: !295, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1334, file: !26, line: 53, baseType: !295, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1103, file: !1104, line: 835, baseType: !1344, size: 32, offset: 5120)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !138, line: 22, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !279, line: 28, baseType: !146)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1103, file: !1104, line: 836, baseType: !1344, size: 32, offset: 5152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1103, file: !1104, line: 840, baseType: !295, size: 64, offset: 5184)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1103, file: !1104, line: 849, baseType: !1102, size: 64, offset: 5248)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1103, file: !1104, line: 852, baseType: !1102, size: 64, offset: 5312)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1103, file: !1104, line: 857, baseType: !150, size: 128, offset: 5376)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1103, file: !1104, line: 858, baseType: !150, size: 128, offset: 5504)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1103, file: !1104, line: 859, baseType: !1102, size: 64, offset: 5632)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1103, file: !1104, line: 867, baseType: !150, size: 128, offset: 5696)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1103, file: !1104, line: 868, baseType: !150, size: 128, offset: 5824)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1103, file: !1104, line: 871, baseType: !1356, size: 64, offset: 5952)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1364, !1365, !1372, !1373}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1357, file: !47, line: 61, baseType: !1116, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1357, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !47, line: 63, baseType: !205, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1357, file: !47, line: 65, baseType: !1363, size: 256, offset: 64)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 256, elements: !1041)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1357, file: !47, line: 66, baseType: !602, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1357, file: !47, line: 68, baseType: !1366, size: 128, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1367, line: 40, baseType: !1368)
!1367 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1367, line: 36, size: 128, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1368, file: !1367, line: 37, baseType: !205)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1368, file: !1367, line: 38, baseType: !150, size: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1357, file: !47, line: 69, baseType: !336, size: 128, align: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1357, file: !47, line: 70, baseType: !1374, size: 128, offset: 640)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 128, elements: !1256)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1375, file: !47, line: 55, baseType: !146, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1375, file: !47, line: 56, baseType: !1379, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1103, file: !1104, line: 872, baseType: !1382, size: 512, offset: 6016)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 512, elements: !1041)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1103, file: !1104, line: 873, baseType: !150, size: 128, offset: 6528)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1103, file: !1104, line: 874, baseType: !150, size: 128, offset: 6656)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1103, file: !1104, line: 876, baseType: !1386, size: 64, offset: 6784)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1388, line: 26, size: 192, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1387, file: !1388, line: 27, baseType: !7, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1387, file: !1388, line: 28, baseType: !1392, size: 128, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1393, line: 43, size: 128, elements: !1394)
!1393 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !1393, line: 44, baseType: !747)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1392, file: !1393, line: 45, baseType: !150, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1103, file: !1104, line: 879, baseType: !672, size: 64, offset: 6848)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1103, file: !1104, line: 882, baseType: !672, size: 64, offset: 6912)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1103, file: !1104, line: 884, baseType: !388, size: 64, offset: 6976)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1103, file: !1104, line: 885, baseType: !388, size: 64, offset: 7040)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1103, file: !1104, line: 890, baseType: !388, size: 64, offset: 7104)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1103, file: !1104, line: 891, baseType: !1403, size: 128, offset: 7168)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1104, line: 242, size: 128, elements: !1404)
!1404 = !{!1405, !1406, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1403, file: !1104, line: 244, baseType: !388, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1403, file: !1104, line: 245, baseType: !388, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1403, file: !1104, line: 246, baseType: !747, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1103, file: !1104, line: 900, baseType: !295, size: 64, offset: 7296)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1103, file: !1104, line: 901, baseType: !295, size: 64, offset: 7360)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1103, file: !1104, line: 904, baseType: !388, size: 64, offset: 7424)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1103, file: !1104, line: 907, baseType: !388, size: 64, offset: 7488)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1103, file: !1104, line: 910, baseType: !295, size: 64, offset: 7552)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1103, file: !1104, line: 911, baseType: !295, size: 64, offset: 7616)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1103, file: !1104, line: 914, baseType: !1415, size: 640, offset: 7680)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1416, line: 123, size: 640, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1424, !1425}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1415, file: !1416, line: 124, baseType: !1419, size: 576)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 576, elements: !247)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1416, line: 108, size: 192, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1420, file: !1416, line: 109, baseType: !388, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1420, file: !1416, line: 110, baseType: !1228, size: 128, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1415, file: !1416, line: 125, baseType: !7, size: 32, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1415, file: !1416, line: 126, baseType: !7, size: 32, offset: 608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1103, file: !1104, line: 917, baseType: !1427, size: 192, offset: 8320)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1416, line: 134, size: 192, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1427, file: !1416, line: 135, baseType: !336, size: 128, align: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1427, file: !1416, line: 136, baseType: !7, size: 32, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1103, file: !1104, line: 923, baseType: !1432, size: 64, offset: 8512)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1435, line: 111, size: 1280, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1454, !1455, !1456, !1457, !1458, !1459, !1566, !1567, !1568, !1569, !1595, !1598, !1608}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1434, file: !1435, line: 112, baseType: !714, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1434, file: !1435, line: 120, baseType: !402, size: 32, offset: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1434, file: !1435, line: 121, baseType: !410, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1434, file: !1435, line: 122, baseType: !402, size: 32, offset: 96)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1434, file: !1435, line: 123, baseType: !410, size: 32, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1434, file: !1435, line: 124, baseType: !402, size: 32, offset: 160)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1434, file: !1435, line: 125, baseType: !410, size: 32, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1434, file: !1435, line: 126, baseType: !402, size: 32, offset: 224)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1434, file: !1435, line: 127, baseType: !410, size: 32, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1434, file: !1435, line: 128, baseType: !7, size: 32, offset: 288)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1434, file: !1435, line: 129, baseType: !1448, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1449, line: 26, baseType: !1450)
!1449 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1449, line: 24, size: 64, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1450, file: !1449, line: 25, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !178)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1434, file: !1435, line: 130, baseType: !1448, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1434, file: !1435, line: 131, baseType: !1448, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1434, file: !1435, line: 132, baseType: !1448, size: 64, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1434, file: !1435, line: 133, baseType: !1448, size: 64, offset: 576)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1434, file: !1435, line: 135, baseType: !394, size: 8, offset: 640)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1434, file: !1435, line: 137, baseType: !1460, size: 64, offset: 704)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1462, line: 189, size: 1664, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1463 = !{!1464, !1465, !1468, !1473, !1474, !1477, !1478, !1483, !1484, !1485, !1486, !1488, !1489, !1490, !1491, !1492, !1530, !1551}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1461, file: !1462, line: 190, baseType: !1116, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1461, file: !1462, line: 191, baseType: !1466, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1462, line: 28, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 98, baseType: !1329)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1462, line: 192, baseType: !1469, size: 192, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1462, line: 192, size: 192, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1469, file: !1462, line: 193, baseType: !150, size: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1469, file: !1462, line: 194, baseType: !727, size: 192, align: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1461, file: !1462, line: 199, baseType: !734, size: 256, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1461, file: !1462, line: 200, baseType: !1475, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1462, line: 200, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1461, file: !1462, line: 201, baseType: !154, size: 64, offset: 576)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1462, line: 202, baseType: !1479, size: 64, offset: 640)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1462, line: 202, size: 64, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1479, file: !1462, line: 203, baseType: !506, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1479, file: !1462, line: 204, baseType: !506, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1461, file: !1462, line: 206, baseType: !506, size: 64, offset: 704)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1461, file: !1462, line: 207, baseType: !402, size: 32, offset: 768)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1461, file: !1462, line: 208, baseType: !410, size: 32, offset: 800)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1461, file: !1462, line: 209, baseType: !1487, size: 32, offset: 832)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1462, line: 31, baseType: !526)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1461, file: !1462, line: 210, baseType: !141, size: 16, offset: 864)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1461, file: !1462, line: 211, baseType: !141, size: 16, offset: 880)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1461, file: !1462, line: 215, baseType: !1091, size: 16, offset: 896)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !1462, line: 222, baseType: !295, size: 64, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1462, line: 239, baseType: !1493, size: 320, offset: 1024)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1462, line: 239, size: 320, elements: !1494)
!1494 = !{!1495, !1522}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1493, file: !1462, line: 240, baseType: !1496, size: 320)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1462, line: 108, size: 320, elements: !1497)
!1497 = !{!1498, !1499, !1511, !1514, !1521}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1496, file: !1462, line: 110, baseType: !295, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1462, line: 111, baseType: !1500, size: 64, offset: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1462, line: 111, size: 64, elements: !1501)
!1501 = !{!1502, !1510}
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !1462, line: 112, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1500, file: !1462, line: 112, size: 64, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1503, file: !1462, line: 114, baseType: !826, size: 16)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1503, file: !1462, line: 115, baseType: !1507, size: 48, offset: 16)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 48, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 6)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1500, file: !1462, line: 121, baseType: !295, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1496, file: !1462, line: 123, baseType: !1512, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1462, line: 96, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1496, file: !1462, line: 124, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1462, line: 102, size: 192, elements: !1517)
!1517 = !{!1518, !1519, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1516, file: !1462, line: 103, baseType: !336, size: 128, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1516, file: !1462, line: 104, baseType: !1116, size: 32, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1516, file: !1462, line: 105, baseType: !457, size: 8, offset: 160)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1496, file: !1462, line: 125, baseType: !194, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1462, line: 241, baseType: !1523, size: 320)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !1462, line: 241, size: 320, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1523, file: !1462, line: 242, baseType: !295, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1523, file: !1462, line: 243, baseType: !295, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1523, file: !1462, line: 244, baseType: !1512, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1523, file: !1462, line: 245, baseType: !1515, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1523, file: !1462, line: 246, baseType: !246, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1461, file: !1462, line: 254, baseType: !1531, size: 256, offset: 1344)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1461, file: !1462, line: 254, size: 256, elements: !1532)
!1532 = !{!1533, !1539}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1531, file: !1462, line: 255, baseType: !1534, size: 256)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1462, line: 128, size: 256, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1534, file: !1462, line: 129, baseType: !154, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1534, file: !1462, line: 130, baseType: !1538, size: 256)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !1041)
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1531, file: !1462, line: 256, baseType: !1540, size: 256)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1531, file: !1462, line: 256, size: 256, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1540, file: !1462, line: 258, baseType: !150, size: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1540, file: !1462, line: 259, baseType: !1544, size: 128, offset: 128)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1545, line: 22, size: 128, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1550}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1544, file: !1545, line: 23, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1545, line: 23, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1544, file: !1545, line: 24, baseType: !295, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1461, file: !1462, line: 274, baseType: !1552, size: 64, offset: 1600)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1462, line: 170, size: 192, elements: !1554)
!1554 = !{!1555, !1564, !1565}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1553, file: !1462, line: 171, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1462, line: 165, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!146, !1460, !1560, !1562, !1460}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1534)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1553, file: !1462, line: 172, baseType: !1460, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1553, file: !1462, line: 173, baseType: !1512, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1434, file: !1435, line: 138, baseType: !1460, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1434, file: !1435, line: 139, baseType: !1460, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1434, file: !1435, line: 140, baseType: !1460, size: 64, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1434, file: !1435, line: 145, baseType: !1570, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1572, line: 13, size: 896, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1571, file: !1572, line: 14, baseType: !1116, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1571, file: !1572, line: 15, baseType: !714, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1571, file: !1572, line: 16, baseType: !714, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1571, file: !1572, line: 21, baseType: !738, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1571, file: !1572, line: 27, baseType: !295, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1571, file: !1572, line: 28, baseType: !295, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1571, file: !1572, line: 29, baseType: !738, size: 64, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1571, file: !1572, line: 32, baseType: !606, size: 128, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1571, file: !1572, line: 33, baseType: !402, size: 32, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1571, file: !1572, line: 37, baseType: !738, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1571, file: !1572, line: 44, baseType: !1585, size: 256, offset: 640)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1586, line: 15, size: 256, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1585, file: !1586, line: 16, baseType: !747)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1585, file: !1586, line: 18, baseType: !146, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1585, file: !1586, line: 19, baseType: !146, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1585, file: !1586, line: 20, baseType: !146, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1585, file: !1586, line: 21, baseType: !146, size: 32, offset: 96)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1585, file: !1586, line: 22, baseType: !295, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1586, line: 23, baseType: !295, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1434, file: !1435, line: 146, baseType: !1596, size: 64, offset: 1024)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !403, line: 18, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1434, file: !1435, line: 147, baseType: !1599, size: 64, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1435, line: 25, size: 64, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1600, file: !1435, line: 26, baseType: !714, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1600, file: !1435, line: 27, baseType: !146, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1600, file: !1435, line: 28, baseType: !1605, offset: 64)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: 0)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1435, line: 149, baseType: !1609, size: 128, offset: 1152)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1434, file: !1435, line: 149, size: 128, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1609, file: !1435, line: 150, baseType: !146, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1609, file: !1435, line: 151, baseType: !336, size: 128, align: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1103, file: !1104, line: 926, baseType: !1432, size: 64, offset: 8576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1103, file: !1104, line: 929, baseType: !1432, size: 64, offset: 8640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1103, file: !1104, line: 933, baseType: !1460, size: 64, offset: 8704)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1103, file: !1104, line: 943, baseType: !160, size: 128, offset: 8768)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1103, file: !1104, line: 945, baseType: !1618, size: 64, offset: 8896)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1104, line: 49, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1103, file: !1104, line: 956, baseType: !1621, size: 64, offset: 8960)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1104, line: 45, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1103, file: !1104, line: 959, baseType: !1624, size: 64, offset: 9024)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1104, line: 959, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1103, file: !1104, line: 962, baseType: !1627, size: 64, offset: 9088)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1104, line: 66, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1103, file: !1104, line: 966, baseType: !1630, size: 64, offset: 9152)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1632, line: 35, flags: DIFlagFwdDecl)
!1632 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1103, file: !1104, line: 969, baseType: !1634, size: 64, offset: 9216)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1636, line: 82, size: 7296, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1673, !1682, !1683, !1685, !1686, !1687, !1690, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1720, !1721, !1728, !1729, !1730, !1731, !1732, !1733}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1635, file: !1636, line: 83, baseType: !1116, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1635, file: !1636, line: 84, baseType: !714, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1635, file: !1636, line: 85, baseType: !146, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1635, file: !1636, line: 86, baseType: !150, size: 128, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1635, file: !1636, line: 88, baseType: !1366, size: 128, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1635, file: !1636, line: 91, baseType: !1102, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1635, file: !1636, line: 94, baseType: !1645, size: 192, offset: 448)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1646, line: 30, size: 192, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1645, file: !1646, line: 31, baseType: !150, size: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1645, file: !1646, line: 32, baseType: !1650, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1651, line: 25, baseType: !1652)
!1651 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1651, line: 23, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1652, file: !1651, line: 24, baseType: !1255, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1635, file: !1636, line: 97, baseType: !602, size: 64, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1635, file: !1636, line: 100, baseType: !146, size: 32, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1635, file: !1636, line: 106, baseType: !146, size: 32, offset: 736)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1635, file: !1636, line: 107, baseType: !1102, size: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1635, file: !1636, line: 110, baseType: !146, size: 32, offset: 832)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1636, line: 111, baseType: !7, size: 32, offset: 864)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1635, file: !1636, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1635, file: !1636, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1635, file: !1636, line: 128, baseType: !146, size: 32, offset: 928)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1635, file: !1636, line: 129, baseType: !150, size: 128, offset: 960)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1635, file: !1636, line: 132, baseType: !1177, size: 512, offset: 1088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1635, file: !1636, line: 133, baseType: !1185, size: 64, offset: 1600)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1635, file: !1636, line: 140, baseType: !1668, size: 256, offset: 1664)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1669, size: 256, elements: !178)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1636, line: 38, size: 128, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1669, file: !1636, line: 39, baseType: !388, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1669, file: !1636, line: 40, baseType: !388, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1635, file: !1636, line: 146, baseType: !1674, size: 192, offset: 1920)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1636, line: 66, size: 192, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1674, file: !1636, line: 67, baseType: !1677, size: 192)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1636, line: 47, size: 192, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1677, file: !1636, line: 48, baseType: !740, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1677, file: !1636, line: 49, baseType: !740, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1677, file: !1636, line: 50, baseType: !740, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1635, file: !1636, line: 150, baseType: !1415, size: 640, offset: 2112)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1635, file: !1636, line: 153, baseType: !1684, size: 256, offset: 2752)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 256, elements: !1041)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1635, file: !1636, line: 159, baseType: !1356, size: 64, offset: 3008)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1635, file: !1636, line: 162, baseType: !146, size: 32, offset: 3072)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1635, file: !1636, line: 164, baseType: !1688, size: 64, offset: 3136)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1636, line: 164, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1635, file: !1636, line: 175, baseType: !1691, size: 32, offset: 3200)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !359, line: 805, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 798, size: 32, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1692, file: !359, line: 803, baseType: !358, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1692, file: !359, line: 804, baseType: !205, offset: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1635, file: !1636, line: 176, baseType: !388, size: 64, offset: 3264)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1635, file: !1636, line: 176, baseType: !388, size: 64, offset: 3328)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1635, file: !1636, line: 176, baseType: !388, size: 64, offset: 3392)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1635, file: !1636, line: 176, baseType: !388, size: 64, offset: 3456)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1635, file: !1636, line: 177, baseType: !388, size: 64, offset: 3520)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1635, file: !1636, line: 178, baseType: !388, size: 64, offset: 3584)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1635, file: !1636, line: 179, baseType: !1403, size: 128, offset: 3648)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1635, file: !1636, line: 180, baseType: !295, size: 64, offset: 3776)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1635, file: !1636, line: 180, baseType: !295, size: 64, offset: 3840)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1635, file: !1636, line: 180, baseType: !295, size: 64, offset: 3904)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1635, file: !1636, line: 180, baseType: !295, size: 64, offset: 3968)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1635, file: !1636, line: 181, baseType: !295, size: 64, offset: 4032)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1635, file: !1636, line: 181, baseType: !295, size: 64, offset: 4096)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1635, file: !1636, line: 181, baseType: !295, size: 64, offset: 4160)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1635, file: !1636, line: 181, baseType: !295, size: 64, offset: 4224)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1635, file: !1636, line: 182, baseType: !295, size: 64, offset: 4288)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1635, file: !1636, line: 182, baseType: !295, size: 64, offset: 4352)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1635, file: !1636, line: 182, baseType: !295, size: 64, offset: 4416)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1635, file: !1636, line: 182, baseType: !295, size: 64, offset: 4480)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1635, file: !1636, line: 183, baseType: !295, size: 64, offset: 4544)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1635, file: !1636, line: 183, baseType: !295, size: 64, offset: 4608)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1635, file: !1636, line: 184, baseType: !1718, offset: 4672)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1719, line: 12, elements: !219)
!1719 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1635, file: !1636, line: 192, baseType: !390, size: 64, offset: 4672)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1635, file: !1636, line: 203, baseType: !1722, size: 2048, offset: 4736)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1723, size: 2048, elements: !162)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1724, line: 43, size: 128, elements: !1725)
!1724 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1723, file: !1724, line: 44, baseType: !294, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1723, file: !1724, line: 45, baseType: !294, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1635, file: !1636, line: 220, baseType: !457, size: 8, offset: 6784)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1635, file: !1636, line: 221, baseType: !1091, size: 16, offset: 6800)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1635, file: !1636, line: 222, baseType: !1091, size: 16, offset: 6816)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1635, file: !1636, line: 224, baseType: !940, size: 64, offset: 6848)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1635, file: !1636, line: 227, baseType: !1059, size: 192, offset: 6912)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1635, file: !1636, line: 233, baseType: !1059, size: 192, offset: 7104)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1103, file: !1104, line: 970, baseType: !1735, size: 64, offset: 9280)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1636, line: 20, size: 16576, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1741}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1736, file: !1636, line: 21, baseType: !205)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1736, file: !1636, line: 22, baseType: !1116, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1736, file: !1636, line: 23, baseType: !1366, size: 128, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1736, file: !1636, line: 24, baseType: !1742, size: 16384, offset: 192)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1743, size: 16384, elements: !251)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1646, line: 49, size: 256, elements: !1744)
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1743, file: !1646, line: 50, baseType: !1746, size: 256)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1646, line: 35, size: 256, elements: !1747)
!1747 = !{!1748, !1755, !1756, !1762}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1746, file: !1646, line: 37, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1750, line: 19, baseType: !1751)
!1750 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1750, line: 18, baseType: !1753)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !146}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1746, file: !1646, line: 38, baseType: !295, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1746, file: !1646, line: 44, baseType: !1757, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1750, line: 22, baseType: !1758)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1750, line: 21, baseType: !1760)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1746, file: !1646, line: 46, baseType: !1650, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1103, file: !1104, line: 971, baseType: !1650, size: 64, offset: 9344)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1103, file: !1104, line: 972, baseType: !1650, size: 64, offset: 9408)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1103, file: !1104, line: 974, baseType: !1650, size: 64, offset: 9472)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1103, file: !1104, line: 975, baseType: !1645, size: 192, offset: 9536)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1103, file: !1104, line: 976, baseType: !295, size: 64, offset: 9728)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1103, file: !1104, line: 977, baseType: !292, size: 64, offset: 9792)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1103, file: !1104, line: 978, baseType: !7, size: 32, offset: 9856)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1103, file: !1104, line: 980, baseType: !339, size: 64, offset: 9920)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1103, file: !1104, line: 989, baseType: !1772, size: 128, offset: 9984)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1773, line: 35, size: 128, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1772, file: !1773, line: 36, baseType: !146, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1772, file: !1773, line: 37, baseType: !714, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1772, file: !1773, line: 38, baseType: !1778, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1773, line: 23, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1103, file: !1104, line: 992, baseType: !388, size: 64, offset: 10112)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1103, file: !1104, line: 993, baseType: !388, size: 64, offset: 10176)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1103, file: !1104, line: 996, baseType: !205, offset: 10240)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1103, file: !1104, line: 999, baseType: !747, offset: 10240)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1103, file: !1104, line: 1001, baseType: !1785, size: 64, offset: 10240)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1104, line: 636, size: 64, elements: !1786)
!1786 = !{!1787}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1785, file: !1104, line: 637, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1103, file: !1104, line: 1005, baseType: !719, size: 128, offset: 10304)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1103, file: !1104, line: 1007, baseType: !1102, size: 64, offset: 10432)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1103, file: !1104, line: 1009, baseType: !1792, size: 64, offset: 10496)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1104, line: 1009, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1103, file: !1104, line: 1043, baseType: !154, size: 64, offset: 10560)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1103, file: !1104, line: 1046, baseType: !1796, size: 64, offset: 10624)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1104, line: 41, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1103, file: !1104, line: 1050, baseType: !1799, size: 64, offset: 10688)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1104, line: 42, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1103, file: !1104, line: 1054, baseType: !1802, size: 64, offset: 10752)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1104, line: 55, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1103, file: !1104, line: 1056, baseType: !1805, size: 64, offset: 10816)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1104, line: 40, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1103, file: !1104, line: 1058, baseType: !1808, size: 64, offset: 10880)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1810, line: 99, size: 704, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818, !1837, !1838}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1809, file: !1810, line: 100, baseType: !738, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1809, file: !1810, line: 101, baseType: !714, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1809, file: !1810, line: 102, baseType: !714, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !1810, line: 105, baseType: !205, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1809, file: !1810, line: 107, baseType: !141, size: 16, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1809, file: !1810, line: 109, baseType: !706, size: 128, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1809, file: !1810, line: 110, baseType: !1819, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1810, line: 73, size: 448, elements: !1821)
!1821 = !{!1822, !1825, !1826, !1831, !1836}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1820, file: !1810, line: 74, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1810, line: 74, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1820, file: !1810, line: 75, baseType: !1808, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1810, line: 83, baseType: !1827, size: 128, offset: 128)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1810, line: 83, size: 128, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1827, file: !1810, line: 84, baseType: !150, size: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1827, file: !1810, line: 85, baseType: !901, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !1810, line: 87, baseType: !1832, size: 128, offset: 256)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !1810, line: 87, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1832, file: !1810, line: 88, baseType: !606, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1832, file: !1810, line: 89, baseType: !336, size: 128, align: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !1810, line: 92, baseType: !7, size: 32, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1809, file: !1810, line: 111, baseType: !602, size: 64, offset: 384)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1809, file: !1810, line: 113, baseType: !1839, size: 256, offset: 448)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1840, line: 102, size: 256, elements: !1841)
!1840 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !{!1842, !1843, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1839, file: !1840, line: 103, baseType: !738, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1839, file: !1840, line: 104, baseType: !150, size: 128, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1839, file: !1840, line: 105, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1840, line: 21, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1103, file: !1104, line: 1061, baseType: !1851, size: 64, offset: 10944)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1104, line: 43, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1103, file: !1104, line: 1064, baseType: !295, size: 64, offset: 11008)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1103, file: !1104, line: 1065, baseType: !1855, size: 64, offset: 11072)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1646, line: 14, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1646, line: 12, size: 384, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1646, line: 13, baseType: !1860, size: 384)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1857, file: !1646, line: 13, size: 384, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1865}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1860, file: !1646, line: 13, baseType: !146, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1860, file: !1646, line: 13, baseType: !146, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1860, file: !1646, line: 13, baseType: !146, size: 32, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1860, file: !1646, line: 13, baseType: !1866, size: 256, offset: 128)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1867, line: 32, size: 256, elements: !1868)
!1867 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !{!1869, !1874, !1887, !1893, !1902, !1922, !1927}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1866, file: !1867, line: 37, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1867, line: 34, size: 64, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1870, file: !1867, line: 35, baseType: !1345, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1870, file: !1867, line: 36, baseType: !408, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1866, file: !1867, line: 45, baseType: !1875, size: 192)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1867, line: 40, size: 192, elements: !1876)
!1876 = !{!1877, !1879, !1880, !1886}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1875, file: !1867, line: 41, baseType: !1878, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !279, line: 95, baseType: !146)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1875, file: !1867, line: 42, baseType: !146, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1875, file: !1867, line: 43, baseType: !1881, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1867, line: 11, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1867, line: 8, size: 64, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1882, file: !1867, line: 9, baseType: !146, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1882, file: !1867, line: 10, baseType: !154, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1875, file: !1867, line: 44, baseType: !146, size: 32, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1866, file: !1867, line: 52, baseType: !1888, size: 128)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1867, line: 48, size: 128, elements: !1889)
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1888, file: !1867, line: 49, baseType: !1345, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1888, file: !1867, line: 50, baseType: !408, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1888, file: !1867, line: 51, baseType: !1881, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1866, file: !1867, line: 61, baseType: !1894, size: 256)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1867, line: 55, size: 256, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1901}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1894, file: !1867, line: 56, baseType: !1345, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1894, file: !1867, line: 57, baseType: !408, size: 32, offset: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1894, file: !1867, line: 58, baseType: !146, size: 32, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1894, file: !1867, line: 59, baseType: !1900, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !279, line: 94, baseType: !280)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1894, file: !1867, line: 60, baseType: !1900, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1866, file: !1867, line: 95, baseType: !1903, size: 256)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1867, line: 64, size: 256, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1903, file: !1867, line: 65, baseType: !154, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !1867, line: 77, baseType: !1907, size: 192, offset: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1903, file: !1867, line: 77, size: 192, elements: !1908)
!1908 = !{!1909, !1910, !1917}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1907, file: !1867, line: 82, baseType: !1091, size: 16)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1907, file: !1867, line: 88, baseType: !1911, size: 192)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !1867, line: 84, size: 192, elements: !1912)
!1912 = !{!1913, !1915, !1916}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1911, file: !1867, line: 85, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 64, elements: !1215)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1911, file: !1867, line: 86, baseType: !154, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1911, file: !1867, line: 87, baseType: !154, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1907, file: !1867, line: 93, baseType: !1918, size: 96)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !1867, line: 90, size: 96, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1918, file: !1867, line: 91, baseType: !1914, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1918, file: !1867, line: 92, baseType: !167, size: 32, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1866, file: !1867, line: 101, baseType: !1923, size: 128)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1867, line: 98, size: 128, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1923, file: !1867, line: 99, baseType: !281, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1923, file: !1867, line: 100, baseType: !146, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1866, file: !1867, line: 108, baseType: !1928, size: 128)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1866, file: !1867, line: 104, size: 128, elements: !1929)
!1929 = !{!1930, !1931, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1928, file: !1867, line: 105, baseType: !154, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1928, file: !1867, line: 106, baseType: !146, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1928, file: !1867, line: 107, baseType: !7, size: 32, offset: 96)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1103, file: !1104, line: 1067, baseType: !1718, offset: 11136)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1103, file: !1104, line: 1099, baseType: !1935, size: 64, offset: 11136)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1104, line: 56, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1103, file: !1104, line: 1103, baseType: !150, size: 128, offset: 11200)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1103, file: !1104, line: 1104, baseType: !1939, size: 64, offset: 11328)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1104, line: 46, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1103, file: !1104, line: 1105, baseType: !1059, size: 192, offset: 11392)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1103, file: !1104, line: 1106, baseType: !7, size: 32, offset: 11584)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1103, file: !1104, line: 1109, baseType: !1944, size: 128, offset: 11648)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1945, size: 128, elements: !178)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1104, line: 51, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1103, file: !1104, line: 1110, baseType: !1059, size: 192, offset: 11776)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1103, file: !1104, line: 1111, baseType: !150, size: 128, offset: 11968)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1103, file: !1104, line: 1173, baseType: !1950, size: 64, offset: 12096)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1952, line: 62, size: 256, align: 256, elements: !1953)
!1952 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1953 = !{!1954, !1955, !1956, !1961}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1951, file: !1952, line: 75, baseType: !167, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1951, file: !1952, line: 90, baseType: !167, size: 32, offset: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1951, file: !1952, line: 124, baseType: !1957, size: 64, offset: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1951, file: !1952, line: 109, size: 64, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1957, file: !1952, line: 110, baseType: !389, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1957, file: !1952, line: 112, baseType: !389, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1951, file: !1952, line: 144, baseType: !167, size: 32, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1103, file: !1104, line: 1174, baseType: !165, size: 32, offset: 12160)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1103, file: !1104, line: 1179, baseType: !295, size: 64, offset: 12224)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1103, file: !1104, line: 1182, baseType: !1965, size: 128, offset: 12288)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1037, line: 76, size: 128, elements: !1966)
!1966 = !{!1967, !1972, !1973}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1965, file: !1037, line: 85, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1969, line: 7, size: 64, elements: !1970)
!1969 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1968, file: !1969, line: 12, baseType: !1252, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1965, file: !1037, line: 88, baseType: !457, size: 8, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1965, file: !1037, line: 95, baseType: !457, size: 8, offset: 72)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !1104, line: 1184, baseType: !1975, size: 128, offset: 12416)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !1104, line: 1184, size: 128, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1975, file: !1104, line: 1185, baseType: !1116, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1975, file: !1104, line: 1186, baseType: !336, size: 128, align: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1103, file: !1104, line: 1190, baseType: !1980, size: 64, offset: 12544)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1104, line: 53, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1103, file: !1104, line: 1192, baseType: !1983, size: 128, offset: 12608)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1037, line: 64, size: 128, elements: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1983, file: !1037, line: 65, baseType: !688, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1983, file: !1037, line: 67, baseType: !167, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1983, file: !1037, line: 68, baseType: !167, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1103, file: !1104, line: 1206, baseType: !146, size: 32, offset: 12736)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1103, file: !1104, line: 1207, baseType: !146, size: 32, offset: 12768)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1103, file: !1104, line: 1209, baseType: !295, size: 64, offset: 12800)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1103, file: !1104, line: 1219, baseType: !388, size: 64, offset: 12864)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1103, file: !1104, line: 1220, baseType: !388, size: 64, offset: 12928)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1103, file: !1104, line: 1317, baseType: !146, size: 32, offset: 12992)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1103, file: !1104, line: 1319, baseType: !1102, size: 64, offset: 13056)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1103, file: !1104, line: 1322, baseType: !1996, size: 64, offset: 13120)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1998, line: 9, flags: DIFlagFwdDecl)
!1998 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1103, file: !1104, line: 1326, baseType: !1116, size: 32, offset: 13184)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1103, file: !1104, line: 1342, baseType: !154, size: 64, offset: 13248)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1103, file: !1104, line: 1343, baseType: !389, size: 64, offset: 13312)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1103, file: !1104, line: 1344, baseType: !388, size: 64, offset: 13376)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1103, file: !1104, line: 1345, baseType: !389, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1103, file: !1104, line: 1346, baseType: !389, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1103, file: !1104, line: 1347, baseType: !389, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1103, file: !1104, line: 1348, baseType: !336, size: 128, align: 64, offset: 13504)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1103, file: !1104, line: 1358, baseType: !2008, size: 34816, offset: 13824)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2009, line: 485, size: 34816, elements: !2010)
!2009 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2010 = !{!2011, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2040, !2041, !2042, !2043, !2044, !2045, !2048, !2049, !2050}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2008, file: !2009, line: 487, baseType: !2012, size: 192)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2013, size: 192, elements: !247)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2014, line: 16, size: 64, elements: !2015)
!2014 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2013, file: !2014, line: 17, baseType: !826, size: 16)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2013, file: !2014, line: 18, baseType: !826, size: 16, offset: 16)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2013, file: !2014, line: 19, baseType: !826, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2013, file: !2014, line: 19, baseType: !826, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2013, file: !2014, line: 19, baseType: !826, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2013, file: !2014, line: 19, baseType: !826, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2013, file: !2014, line: 19, baseType: !826, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2013, file: !2014, line: 20, baseType: !826, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2013, file: !2014, line: 20, baseType: !826, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2013, file: !2014, line: 20, baseType: !826, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2013, file: !2014, line: 20, baseType: !826, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2013, file: !2014, line: 20, baseType: !826, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2013, file: !2014, line: 20, baseType: !826, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2008, file: !2009, line: 491, baseType: !295, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2008, file: !2009, line: 495, baseType: !141, size: 16, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2008, file: !2009, line: 496, baseType: !141, size: 16, offset: 272)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2008, file: !2009, line: 497, baseType: !141, size: 16, offset: 288)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2008, file: !2009, line: 498, baseType: !141, size: 16, offset: 304)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2008, file: !2009, line: 502, baseType: !295, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2008, file: !2009, line: 503, baseType: !295, size: 64, offset: 384)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2008, file: !2009, line: 514, baseType: !2037, size: 256, offset: 448)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 256, elements: !1041)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2009, line: 483, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2008, file: !2009, line: 516, baseType: !295, size: 64, offset: 704)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2008, file: !2009, line: 518, baseType: !295, size: 64, offset: 768)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2008, file: !2009, line: 520, baseType: !295, size: 64, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2008, file: !2009, line: 521, baseType: !295, size: 64, offset: 896)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2008, file: !2009, line: 522, baseType: !295, size: 64, offset: 960)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2008, file: !2009, line: 528, baseType: !2046, size: 64, offset: 1024)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2009, line: 10, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2008, file: !2009, line: 535, baseType: !295, size: 64, offset: 1088)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2008, file: !2009, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2008, file: !2009, line: 540, baseType: !2051, size: 33280, offset: 1536)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2052, line: 317, size: 33280, elements: !2053)
!2052 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !{!2054, !2055, !2056}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2051, file: !2052, line: 330, baseType: !7, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2051, file: !2052, line: 337, baseType: !295, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2051, file: !2052, line: 348, baseType: !2057, size: 32768, offset: 512)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2052, line: 304, size: 32768, elements: !2058)
!2058 = !{!2059, !2074, !2113, !2163, !2176}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2057, file: !2052, line: 305, baseType: !2060, size: 896)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2052, line: 12, size: 896, elements: !2061)
!2061 = !{!2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2073}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2060, file: !2052, line: 13, baseType: !165, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2060, file: !2052, line: 14, baseType: !165, size: 32, offset: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2060, file: !2052, line: 15, baseType: !165, size: 32, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2060, file: !2052, line: 16, baseType: !165, size: 32, offset: 96)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2060, file: !2052, line: 17, baseType: !165, size: 32, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2060, file: !2052, line: 18, baseType: !165, size: 32, offset: 160)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2060, file: !2052, line: 19, baseType: !165, size: 32, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2060, file: !2052, line: 22, baseType: !2070, size: 640, offset: 224)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 640, elements: !2071)
!2071 = !{!2072}
!2072 = !DISubrange(count: 20)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2060, file: !2052, line: 25, baseType: !165, size: 32, offset: 864)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2057, file: !2052, line: 306, baseType: !2075, size: 4096, align: 128)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2052, line: 34, size: 4096, align: 128, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2096, !2097, !2098, !2102, !2104, !2108}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2075, file: !2052, line: 35, baseType: !826, size: 16)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2075, file: !2052, line: 36, baseType: !826, size: 16, offset: 16)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2075, file: !2052, line: 37, baseType: !826, size: 16, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2075, file: !2052, line: 38, baseType: !826, size: 16, offset: 48)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2075, file: !2052, line: 39, baseType: !2082, size: 128, offset: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2075, file: !2052, line: 39, size: 128, elements: !2083)
!2083 = !{!2084, !2089}
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !2052, line: 40, baseType: !2085, size: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2082, file: !2052, line: 40, size: 128, elements: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2085, file: !2052, line: 41, baseType: !388, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2085, file: !2052, line: 42, baseType: !388, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !2052, line: 44, baseType: !2090, size: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2082, file: !2052, line: 44, size: 128, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2090, file: !2052, line: 45, baseType: !165, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2090, file: !2052, line: 46, baseType: !165, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2090, file: !2052, line: 47, baseType: !165, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2090, file: !2052, line: 48, baseType: !165, size: 32, offset: 96)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2075, file: !2052, line: 51, baseType: !165, size: 32, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2075, file: !2052, line: 52, baseType: !165, size: 32, offset: 224)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2075, file: !2052, line: 55, baseType: !2099, size: 1024, offset: 256)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 1024, elements: !2100)
!2100 = !{!2101}
!2101 = !DISubrange(count: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2075, file: !2052, line: 58, baseType: !2103, size: 2048, offset: 1280)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 2048, elements: !251)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2075, file: !2052, line: 60, baseType: !2105, size: 384, offset: 3328)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 12)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2075, file: !2052, line: 62, baseType: !2109, size: 384, offset: 3712)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2075, file: !2052, line: 62, size: 384, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2109, file: !2052, line: 63, baseType: !2105, size: 384)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2109, file: !2052, line: 64, baseType: !2105, size: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2057, file: !2052, line: 307, baseType: !2114, size: 1088)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2052, line: 79, size: 1088, elements: !2115)
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2162}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2114, file: !2052, line: 80, baseType: !165, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2114, file: !2052, line: 81, baseType: !165, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2114, file: !2052, line: 82, baseType: !165, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2114, file: !2052, line: 83, baseType: !165, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2114, file: !2052, line: 84, baseType: !165, size: 32, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2114, file: !2052, line: 85, baseType: !165, size: 32, offset: 160)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2114, file: !2052, line: 86, baseType: !165, size: 32, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2114, file: !2052, line: 88, baseType: !2070, size: 640, offset: 224)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2114, file: !2052, line: 89, baseType: !1237, size: 8, offset: 864)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2114, file: !2052, line: 90, baseType: !1237, size: 8, offset: 872)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2114, file: !2052, line: 91, baseType: !1237, size: 8, offset: 880)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2114, file: !2052, line: 92, baseType: !1237, size: 8, offset: 888)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2114, file: !2052, line: 93, baseType: !1237, size: 8, offset: 896)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2114, file: !2052, line: 94, baseType: !1237, size: 8, offset: 904)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2114, file: !2052, line: 95, baseType: !2131, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2133, line: 11, size: 128, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2132, file: !2133, line: 12, baseType: !281, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2132, file: !2133, line: 13, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2139, line: 56, size: 1344, elements: !2140)
!2139 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2138, file: !2139, line: 61, baseType: !295, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2138, file: !2139, line: 62, baseType: !295, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2138, file: !2139, line: 63, baseType: !295, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2138, file: !2139, line: 64, baseType: !295, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2138, file: !2139, line: 65, baseType: !295, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2138, file: !2139, line: 66, baseType: !295, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2138, file: !2139, line: 68, baseType: !295, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2138, file: !2139, line: 69, baseType: !295, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2138, file: !2139, line: 70, baseType: !295, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2138, file: !2139, line: 71, baseType: !295, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2138, file: !2139, line: 72, baseType: !295, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2138, file: !2139, line: 73, baseType: !295, size: 64, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2138, file: !2139, line: 74, baseType: !295, size: 64, offset: 768)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2138, file: !2139, line: 75, baseType: !295, size: 64, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2138, file: !2139, line: 76, baseType: !295, size: 64, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2138, file: !2139, line: 81, baseType: !295, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2138, file: !2139, line: 83, baseType: !295, size: 64, offset: 1024)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2138, file: !2139, line: 84, baseType: !295, size: 64, offset: 1088)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2138, file: !2139, line: 85, baseType: !295, size: 64, offset: 1152)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2138, file: !2139, line: 86, baseType: !295, size: 64, offset: 1216)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2138, file: !2139, line: 87, baseType: !295, size: 64, offset: 1280)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2114, file: !2052, line: 96, baseType: !165, size: 32, offset: 1024)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2057, file: !2052, line: 308, baseType: !2164, size: 4608, align: 512)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2052, line: 289, size: 4608, align: 512, elements: !2165)
!2165 = !{!2166, !2167, !2174}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2164, file: !2052, line: 290, baseType: !2075, size: 4096, align: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2164, file: !2052, line: 291, baseType: !2168, size: 512, offset: 4096)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2052, line: 268, size: 512, elements: !2169)
!2169 = !{!2170, !2171, !2172}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2168, file: !2052, line: 269, baseType: !388, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2168, file: !2052, line: 270, baseType: !388, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2168, file: !2052, line: 271, baseType: !2173, size: 384, offset: 128)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 384, elements: !1508)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2164, file: !2052, line: 292, baseType: !2175, offset: 4608)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, elements: !1606)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2057, file: !2052, line: 309, baseType: !2177, size: 32768)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 32768, elements: !2178)
!2178 = !{!2179}
!2179 = !DISubrange(count: 4096)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1099, file: !690, line: 378, baseType: !2181, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1095, file: !690, line: 384, baseType: !1387, size: 192, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !944, file: !690, line: 500, baseType: !205, offset: 6656)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !944, file: !690, line: 501, baseType: !2185, size: 64, offset: 6656)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !690, line: 387, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !944, file: !690, line: 516, baseType: !1596, size: 64, offset: 6720)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !944, file: !690, line: 519, baseType: !323, size: 64, offset: 6784)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !944, file: !690, line: 521, baseType: !2190, size: 64, offset: 6848)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !690, line: 521, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !944, file: !690, line: 545, baseType: !714, size: 32, offset: 6912)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !944, file: !690, line: 548, baseType: !457, size: 8, offset: 6944)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !944, file: !690, line: 550, baseType: !2195, offset: 6952)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2196, line: 142, elements: !219)
!2196 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !944, file: !690, line: 554, baseType: !1839, size: 256, offset: 6976)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !944, file: !690, line: 557, baseType: !165, size: 32, offset: 7232)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !941, file: !690, line: 565, baseType: !2200, offset: 7296)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !2201)
!2201 = !{!2202}
!2202 = !DISubrange(count: -1)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !937, file: !690, line: 151, baseType: !714, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !930, file: !690, line: 156, baseType: !205, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 159, baseType: !2206, size: 128)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 159, size: 128, elements: !2207)
!2207 = !{!2208, !2211}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2206, file: !690, line: 161, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !690, line: 161, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2206, file: !690, line: 162, baseType: !154, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !694, file: !690, line: 176, baseType: !336, size: 128, align: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 179, baseType: !2214, size: 32, offset: 384)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 179, size: 32, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2214, file: !690, line: 184, baseType: !714, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2214, file: !690, line: 192, baseType: !7, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2214, file: !690, line: 194, baseType: !7, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2214, file: !690, line: 195, baseType: !146, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !689, file: !690, line: 199, baseType: !714, size: 32, offset: 416)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !624, file: !38, line: 1964, baseType: !2222, size: 64, offset: 1344)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!281, !566, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2227, line: 12, size: 256, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2230, !2231, !2232, !2233}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2226, file: !2227, line: 13, baseType: !137, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2226, file: !2227, line: 16, baseType: !146, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2226, file: !2227, line: 23, baseType: !295, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2226, file: !2227, line: 30, baseType: !295, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2226, file: !2227, line: 33, baseType: !2234, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !690, line: 27, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !624, file: !38, line: 1966, baseType: !2222, size: 64, offset: 1408)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !567, file: !38, line: 1424, baseType: !2238, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2241)
!2241 = !{!2242, !2288, !2292, !2296, !2297, !2298, !2299, !2300, !2305, !2310, !2314}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2240, file: !32, line: 323, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!146, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2273, !2274, !2275}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2247, file: !32, line: 295, baseType: !606, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2247, file: !32, line: 296, baseType: !150, size: 128, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2247, file: !32, line: 297, baseType: !150, size: 128, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2247, file: !32, line: 298, baseType: !150, size: 128, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2247, file: !32, line: 299, baseType: !1059, size: 192, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2247, file: !32, line: 300, baseType: !205, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2247, file: !32, line: 301, baseType: !714, size: 32, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2247, file: !32, line: 302, baseType: !566, size: 64, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2247, file: !32, line: 303, baseType: !2258, size: 64, offset: 832)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2259)
!2259 = !{!2260, !2272}
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !32, line: 69, baseType: !2261, size: 32)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2258, file: !32, line: 69, size: 32, elements: !2262)
!2262 = !{!2263, !2264, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2261, file: !32, line: 70, baseType: !402, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2261, file: !32, line: 71, baseType: !410, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2261, file: !32, line: 72, baseType: !2266, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2267, line: 24, baseType: !2268)
!2267 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 22, size: 32, elements: !2269)
!2269 = !{!2270}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2268, file: !2267, line: 23, baseType: !2271, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2267, line: 20, baseType: !408)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2258, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2247, file: !32, line: 304, baseType: !498, size: 64, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2247, file: !32, line: 305, baseType: !295, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2247, file: !32, line: 306, baseType: !2276, size: 576, offset: 1024)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2277)
!2277 = !{!2278, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2276, file: !32, line: 206, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !500)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2276, file: !32, line: 207, baseType: !2279, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2276, file: !32, line: 208, baseType: !2279, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2276, file: !32, line: 209, baseType: !2279, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2276, file: !32, line: 210, baseType: !2279, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2276, file: !32, line: 211, baseType: !2279, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2276, file: !32, line: 212, baseType: !2279, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2276, file: !32, line: 213, baseType: !506, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2276, file: !32, line: 214, baseType: !506, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2240, file: !32, line: 324, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!2246, !566, !146}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2240, file: !32, line: 325, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !2246}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2240, file: !32, line: 326, baseType: !2243, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2240, file: !32, line: 327, baseType: !2243, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2240, file: !32, line: 328, baseType: !2243, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2240, file: !32, line: 329, baseType: !652, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2240, file: !32, line: 332, baseType: !2301, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!2304, !396}
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2240, file: !32, line: 333, baseType: !2306, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!146, !396, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2240, file: !32, line: 335, baseType: !2311, size: 64, offset: 576)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!146, !396, !2304}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2240, file: !32, line: 337, baseType: !2315, size: 64, offset: 640)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!146, !566, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !567, file: !38, line: 1425, baseType: !2320, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2323)
!2323 = !{!2324, !2328, !2329, !2333, !2334, !2335, !2350, !2373, !2377, !2378, !2401}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2322, file: !32, line: 429, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!146, !566, !146, !146, !516}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2322, file: !32, line: 430, baseType: !652, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2322, file: !32, line: 431, baseType: !2330, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!146, !566, !7}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2322, file: !32, line: 432, baseType: !2330, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2322, file: !32, line: 433, baseType: !652, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2322, file: !32, line: 434, baseType: !2336, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!146, !566, !146, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2340, file: !32, line: 416, baseType: !146, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2340, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2340, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2340, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2340, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2340, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2340, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2340, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2322, file: !32, line: 435, baseType: !2351, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!146, !566, !2258, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2355, file: !32, line: 344, baseType: !146, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2355, file: !32, line: 345, baseType: !388, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2355, file: !32, line: 346, baseType: !388, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2355, file: !32, line: 347, baseType: !388, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2355, file: !32, line: 348, baseType: !388, size: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2355, file: !32, line: 349, baseType: !388, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2355, file: !32, line: 350, baseType: !388, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2355, file: !32, line: 351, baseType: !744, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2355, file: !32, line: 353, baseType: !744, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2355, file: !32, line: 354, baseType: !146, size: 32, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2355, file: !32, line: 355, baseType: !146, size: 32, offset: 608)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2355, file: !32, line: 356, baseType: !388, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2355, file: !32, line: 357, baseType: !388, size: 64, offset: 704)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2355, file: !32, line: 358, baseType: !388, size: 64, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2355, file: !32, line: 359, baseType: !744, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2355, file: !32, line: 360, baseType: !146, size: 32, offset: 896)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2322, file: !32, line: 436, baseType: !2374, size: 64, offset: 448)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!146, !566, !2318, !2354}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2322, file: !32, line: 438, baseType: !2351, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2322, file: !32, line: 439, baseType: !2379, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!146, !566, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2384)
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2383, file: !32, line: 410, baseType: !7, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2383, file: !32, line: 411, baseType: !2387, size: 1344, offset: 64)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2388, size: 1344, elements: !247)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2400}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2388, file: !32, line: 396, baseType: !7, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2388, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2388, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2388, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2388, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2388, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2388, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2388, file: !32, line: 404, baseType: !390, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2388, file: !32, line: 405, baseType: !2399, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !138, line: 126, baseType: !388)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2388, file: !32, line: 406, baseType: !2399, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2322, file: !32, line: 440, baseType: !2330, size: 64, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !567, file: !38, line: 1426, baseType: !2403, size: 64, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !567, file: !38, line: 1427, baseType: !295, size: 64, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !567, file: !38, line: 1428, baseType: !295, size: 64, offset: 704)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !567, file: !38, line: 1429, baseType: !295, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !567, file: !38, line: 1430, baseType: !353, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !567, file: !38, line: 1431, baseType: !734, size: 256, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !567, file: !38, line: 1432, baseType: !146, size: 32, offset: 1152)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !567, file: !38, line: 1433, baseType: !714, size: 32, offset: 1184)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !567, file: !38, line: 1437, baseType: !2414, size: 64, offset: 1216)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2417)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !567, file: !38, line: 1449, baseType: !2419, size: 64, offset: 1280)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !369, line: 34, size: 64, elements: !2420)
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2419, file: !369, line: 35, baseType: !372, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !567, file: !38, line: 1450, baseType: !150, size: 128, offset: 1344)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !567, file: !38, line: 1451, baseType: !2424, size: 64, offset: 1472)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !567, file: !38, line: 1452, baseType: !1805, size: 64, offset: 1536)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !567, file: !38, line: 1453, baseType: !2428, size: 64, offset: 1600)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !567, file: !38, line: 1454, baseType: !606, size: 128, offset: 1664)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !567, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !567, file: !38, line: 1456, baseType: !2433, size: 2432, offset: 1856)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2439, !2471}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !32, line: 519, baseType: !7, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2433, file: !32, line: 520, baseType: !734, size: 256, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2433, file: !32, line: 521, baseType: !2438, size: 192, offset: 320)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 192, elements: !247)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2433, file: !32, line: 522, baseType: !2440, size: 1728, offset: 512)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, size: 1728, elements: !247)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2442)
!2442 = !{!2443, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2441, file: !32, line: 223, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2446)
!2446 = !{!2447, !2448, !2461, !2462}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2445, file: !32, line: 444, baseType: !146, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2445, file: !32, line: 445, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2451, file: !32, line: 311, baseType: !652, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2451, file: !32, line: 312, baseType: !652, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2451, file: !32, line: 313, baseType: !652, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2451, file: !32, line: 314, baseType: !652, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2451, file: !32, line: 315, baseType: !2243, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2451, file: !32, line: 316, baseType: !2243, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2451, file: !32, line: 317, baseType: !2243, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2451, file: !32, line: 318, baseType: !2315, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2445, file: !32, line: 446, baseType: !134, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2445, file: !32, line: 447, baseType: !2444, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2441, file: !32, line: 224, baseType: !146, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2441, file: !32, line: 226, baseType: !150, size: 128, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2441, file: !32, line: 227, baseType: !295, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2441, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2441, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2441, file: !32, line: 230, baseType: !2279, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2441, file: !32, line: 231, baseType: !2279, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2441, file: !32, line: 232, baseType: !154, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2433, file: !32, line: 523, baseType: !2472, size: 192, offset: 2240)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 192, elements: !247)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !567, file: !38, line: 1458, baseType: !2474, size: 2112, offset: 4288)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2475)
!2475 = !{!2476, !2477, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2474, file: !38, line: 1411, baseType: !146, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2474, file: !38, line: 1412, baseType: !1366, size: 128, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2474, file: !38, line: 1413, baseType: !2479, size: 1920, offset: 192)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2480, size: 1920, elements: !247)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2481, line: 12, size: 640, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !{!2483, !2491, !2493, !2498, !2499}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2480, file: !2481, line: 13, baseType: !2484, size: 320)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2485, line: 17, size: 320, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2484, file: !2485, line: 18, baseType: !146, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2484, file: !2485, line: 19, baseType: !146, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2484, file: !2485, line: 20, baseType: !1366, size: 128, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2484, file: !2485, line: 22, baseType: !336, size: 128, align: 64, offset: 192)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2480, file: !2481, line: 14, baseType: !2492, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2480, file: !2481, line: 15, baseType: !2494, size: 64, offset: 384)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2495, line: 16, size: 64, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2496 = !{!2497}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2494, file: !2495, line: 17, baseType: !1102, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2480, file: !2481, line: 16, baseType: !1366, size: 128, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2480, file: !2481, line: 17, baseType: !714, size: 32, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !567, file: !38, line: 1465, baseType: !154, size: 64, offset: 6400)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !567, file: !38, line: 1468, baseType: !165, size: 32, offset: 6464)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !567, file: !38, line: 1470, baseType: !506, size: 64, offset: 6528)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !567, file: !38, line: 1471, baseType: !506, size: 64, offset: 6592)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !567, file: !38, line: 1473, baseType: !167, size: 32, offset: 6656)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !567, file: !38, line: 1474, baseType: !2506, size: 64, offset: 6720)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !567, file: !38, line: 1477, baseType: !2509, size: 256, offset: 6784)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !2100)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !567, file: !38, line: 1478, baseType: !2511, size: 128, offset: 7040)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2512, line: 18, baseType: !2513)
!2512 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2512, line: 16, size: 128, elements: !2514)
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2513, file: !2512, line: 17, baseType: !2516, size: 128)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 128, elements: !162)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !567, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !567, file: !38, line: 1481, baseType: !2519, size: 32, offset: 7200)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !138, line: 150, baseType: !7)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !567, file: !38, line: 1487, baseType: !1059, size: 192, offset: 7232)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !567, file: !38, line: 1493, baseType: !194, size: 64, offset: 7424)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !567, file: !38, line: 1495, baseType: !2523, size: 64, offset: 7488)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !351, line: 135, size: 1024, align: 512, elements: !2526)
!2526 = !{!2527, !2531, !2532, !2539, !2545, !2549, !2553, !2557, !2558, !2562, !2566, !2571, !2575}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2525, file: !351, line: 136, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!146, !353, !7}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2525, file: !351, line: 137, baseType: !2528, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2525, file: !351, line: 138, baseType: !2533, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!146, !2536, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2525, file: !351, line: 139, baseType: !2540, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!146, !2536, !7, !194, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2525, file: !351, line: 141, baseType: !2546, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!146, !2536}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2525, file: !351, line: 142, baseType: !2550, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!146, !353}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2525, file: !351, line: 143, baseType: !2554, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{null, !353}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2525, file: !351, line: 144, baseType: !2554, size: 64, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2525, file: !351, line: 145, baseType: !2559, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !353, !396}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2525, file: !351, line: 146, baseType: !2563, size: 64, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!246, !353, !246, !146}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2525, file: !351, line: 147, baseType: !2567, size: 64, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!349, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2525, file: !351, line: 148, baseType: !2572, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!146, !516, !457}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2525, file: !351, line: 149, baseType: !2576, size: 64, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!353, !353, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !567, file: !38, line: 1500, baseType: !146, size: 32, offset: 7552)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !567, file: !38, line: 1502, baseType: !2583, size: 448, offset: 7616)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2227, line: 60, size: 448, elements: !2584)
!2584 = !{!2585, !2590, !2591, !2592, !2593, !2594, !2595}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2583, file: !2227, line: 61, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!295, !2589, !2225}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2583, file: !2227, line: 63, baseType: !2586, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2583, file: !2227, line: 66, baseType: !281, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2583, file: !2227, line: 67, baseType: !146, size: 32, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !2227, line: 68, baseType: !7, size: 32, offset: 224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2583, file: !2227, line: 71, baseType: !150, size: 128, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2583, file: !2227, line: 77, baseType: !2596, size: 64, offset: 384)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !567, file: !38, line: 1505, baseType: !738, size: 64, offset: 8064)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !567, file: !38, line: 1508, baseType: !738, size: 64, offset: 8128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !567, file: !38, line: 1511, baseType: !146, size: 32, offset: 8192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !567, file: !38, line: 1514, baseType: !875, size: 32, offset: 8224)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !567, file: !38, line: 1517, baseType: !2602, size: 64, offset: 8256)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1840, line: 18, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !567, file: !38, line: 1518, baseType: !602, size: 64, offset: 8320)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !567, file: !38, line: 1525, baseType: !1596, size: 64, offset: 8384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !567, file: !38, line: 1532, baseType: !2607, size: 64, offset: 8448)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2608, line: 52, size: 64, elements: !2609)
!2608 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2607, file: !2608, line: 53, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2608, line: 40, size: 256, elements: !2613)
!2613 = !{!2614, !2615, !2620}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2612, file: !2608, line: 42, baseType: !205)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2612, file: !2608, line: 44, baseType: !2616, size: 192)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2608, line: 28, size: 192, elements: !2617)
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2616, file: !2608, line: 29, baseType: !150, size: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2616, file: !2608, line: 31, baseType: !281, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2612, file: !2608, line: 49, baseType: !281, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !567, file: !38, line: 1533, baseType: !2607, size: 64, offset: 8512)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !567, file: !38, line: 1534, baseType: !336, size: 128, align: 64, offset: 8576)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !567, file: !38, line: 1535, baseType: !1839, size: 256, offset: 8704)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !567, file: !38, line: 1537, baseType: !1059, size: 192, offset: 8960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !567, file: !38, line: 1542, baseType: !146, size: 32, offset: 9152)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !567, file: !38, line: 1545, baseType: !205, offset: 9184)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !567, file: !38, line: 1546, baseType: !150, size: 128, offset: 9216)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !567, file: !38, line: 1548, baseType: !205, offset: 9344)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !567, file: !38, line: 1549, baseType: !150, size: 128, offset: 9344)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !397, file: !38, line: 624, baseType: !701, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !397, file: !38, line: 631, baseType: !295, size: 64, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !38, line: 639, baseType: !2633, size: 32, offset: 384)
!2633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !38, line: 639, size: 32, elements: !2634)
!2634 = !{!2635, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2633, file: !38, line: 640, baseType: !2636, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2633, file: !38, line: 641, baseType: !7, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !397, file: !38, line: 643, baseType: !480, size: 32, offset: 416)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !397, file: !38, line: 644, baseType: !498, size: 64, offset: 448)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !397, file: !38, line: 645, baseType: !502, size: 128, offset: 512)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !397, file: !38, line: 646, baseType: !502, size: 128, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !397, file: !38, line: 647, baseType: !502, size: 128, offset: 768)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !397, file: !38, line: 648, baseType: !205, offset: 896)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !397, file: !38, line: 649, baseType: !141, size: 16, offset: 896)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !397, file: !38, line: 650, baseType: !1237, size: 8, offset: 912)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !397, file: !38, line: 651, baseType: !1237, size: 8, offset: 920)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !397, file: !38, line: 652, baseType: !2399, size: 64, offset: 960)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !397, file: !38, line: 659, baseType: !295, size: 64, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !397, file: !38, line: 660, baseType: !734, size: 256, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !397, file: !38, line: 662, baseType: !295, size: 64, offset: 1344)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !397, file: !38, line: 663, baseType: !295, size: 64, offset: 1408)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !397, file: !38, line: 665, baseType: !606, size: 128, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !397, file: !38, line: 666, baseType: !150, size: 128, offset: 1600)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !397, file: !38, line: 675, baseType: !150, size: 128, offset: 1728)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !397, file: !38, line: 676, baseType: !150, size: 128, offset: 1856)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !397, file: !38, line: 677, baseType: !150, size: 128, offset: 1984)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !38, line: 678, baseType: !2658, size: 128, offset: 2112)
!2658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !38, line: 678, size: 128, elements: !2659)
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2658, file: !38, line: 679, baseType: !602, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2658, file: !38, line: 680, baseType: !336, size: 128, align: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !397, file: !38, line: 682, baseType: !740, size: 64, offset: 2240)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !397, file: !38, line: 683, baseType: !740, size: 64, offset: 2304)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !397, file: !38, line: 684, baseType: !714, size: 32, offset: 2368)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !397, file: !38, line: 685, baseType: !714, size: 32, offset: 2400)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !397, file: !38, line: 686, baseType: !714, size: 32, offset: 2432)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !397, file: !38, line: 688, baseType: !714, size: 32, offset: 2464)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !38, line: 690, baseType: !2669, size: 64, offset: 2496)
!2669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !38, line: 690, size: 64, elements: !2670)
!2670 = !{!2671, !2893}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2669, file: !38, line: 691, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2674)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2675)
!2675 = !{!2676, !2677, !2681, !2686, !2690, !2691, !2692, !2696, !2709, !2710, !2717, !2721, !2722, !2726, !2727, !2731, !2736, !2737, !2741, !2745, !2853, !2857, !2858, !2862, !2863, !2867, !2871, !2876, !2880, !2884, !2888, !2892}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2674, file: !38, line: 1823, baseType: !134, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2674, file: !38, line: 1824, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!498, !323, !498, !146}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2674, file: !38, line: 1825, baseType: !2682, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!277, !323, !246, !292, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2674, file: !38, line: 1826, baseType: !2687, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!277, !323, !194, !292, !2685}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2674, file: !38, line: 1827, baseType: !811, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2674, file: !38, line: 1828, baseType: !811, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2674, file: !38, line: 1829, baseType: !2693, size: 64, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!146, !814, !457}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2674, file: !38, line: 1830, baseType: !2697, size: 64, offset: 448)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!146, !323, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2702)
!2702 = !{!2703, !2708}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2701, file: !38, line: 1777, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2705)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!146, !2700, !194, !146, !498, !388, !7}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2701, file: !38, line: 1778, baseType: !498, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2674, file: !38, line: 1831, baseType: !2697, size: 64, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2674, file: !38, line: 1832, baseType: !2711, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!2714, !323, !2715}
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !143, line: 52, baseType: !7)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !586, line: 27, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2674, file: !38, line: 1833, baseType: !2718, size: 64, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!281, !323, !7, !295}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2674, file: !38, line: 1834, baseType: !2718, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2674, file: !38, line: 1835, baseType: !2723, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!146, !323, !947}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2674, file: !38, line: 1836, baseType: !295, size: 64, offset: 832)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2674, file: !38, line: 1837, baseType: !2728, size: 64, offset: 896)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!146, !396, !323}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2674, file: !38, line: 1838, baseType: !2732, size: 64, offset: 960)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!146, !323, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !154)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2674, file: !38, line: 1839, baseType: !2728, size: 64, offset: 1024)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2674, file: !38, line: 1840, baseType: !2738, size: 64, offset: 1088)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!146, !323, !498, !498, !146}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2674, file: !38, line: 1841, baseType: !2742, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!146, !146, !323, !146}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2674, file: !38, line: 1842, baseType: !2746, size: 64, offset: 1216)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!146, !323, !146, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2783, !2784, !2785, !2798, !2829}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2750, file: !38, line: 1063, baseType: !2749, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2750, file: !38, line: 1064, baseType: !150, size: 128, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2750, file: !38, line: 1065, baseType: !606, size: 128, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2750, file: !38, line: 1066, baseType: !150, size: 128, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2750, file: !38, line: 1069, baseType: !150, size: 128, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2750, file: !38, line: 1072, baseType: !2735, size: 64, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2750, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2750, file: !38, line: 1074, baseType: !394, size: 8, offset: 672)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2750, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2750, file: !38, line: 1076, baseType: !146, size: 32, offset: 736)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2750, file: !38, line: 1077, baseType: !1366, size: 128, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2750, file: !38, line: 1078, baseType: !323, size: 64, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2750, file: !38, line: 1079, baseType: !498, size: 64, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2750, file: !38, line: 1080, baseType: !498, size: 64, offset: 1024)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2750, file: !38, line: 1082, baseType: !2767, size: 64, offset: 1088)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2769)
!2769 = !{!2770, !2778, !2779, !2780, !2781, !2782}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2768, file: !38, line: 1315, baseType: !2771)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2772, line: 20, baseType: !2773)
!2772 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2772, line: 11, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2773, file: !2772, line: 12, baseType: !2776)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !217, line: 33, baseType: !2777)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 31, elements: !219)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2768, file: !38, line: 1316, baseType: !146, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2768, file: !38, line: 1317, baseType: !146, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2768, file: !38, line: 1318, baseType: !2767, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2768, file: !38, line: 1319, baseType: !323, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2768, file: !38, line: 1320, baseType: !336, size: 128, align: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2750, file: !38, line: 1084, baseType: !295, size: 64, offset: 1152)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2750, file: !38, line: 1085, baseType: !295, size: 64, offset: 1216)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2750, file: !38, line: 1087, baseType: !2786, size: 64, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2789)
!2789 = !{!2790, !2794}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2788, file: !38, line: 1012, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2749, !2749}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2788, file: !38, line: 1013, baseType: !2795, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !2749}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2750, file: !38, line: 1088, baseType: !2799, size: 64, offset: 1344)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2802)
!2802 = !{!2803, !2807, !2811, !2812, !2816, !2820, !2824, !2828}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2801, file: !38, line: 1017, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!2735, !2735}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2801, file: !38, line: 1018, baseType: !2808, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2735}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2801, file: !38, line: 1019, baseType: !2795, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2801, file: !38, line: 1020, baseType: !2813, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!146, !2749, !146}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2801, file: !38, line: 1021, baseType: !2817, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!457, !2749}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2801, file: !38, line: 1022, baseType: !2821, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!146, !2749, !146, !149}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2801, file: !38, line: 1023, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2749, !788}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2801, file: !38, line: 1024, baseType: !2817, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2750, file: !38, line: 1097, baseType: !2830, size: 256, offset: 1408)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2750, file: !38, line: 1089, size: 256, elements: !2831)
!2831 = !{!2832, !2841, !2847}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2830, file: !38, line: 1090, baseType: !2833, size: 256)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2834, line: 10, size: 256, elements: !2835)
!2834 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2835 = !{!2836, !2837, !2840}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2833, file: !2834, line: 11, baseType: !165, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2833, file: !2834, line: 12, baseType: !2838, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2834, line: 5, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2833, file: !2834, line: 13, baseType: !150, size: 128, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2830, file: !38, line: 1091, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2834, line: 17, size: 64, elements: !2843)
!2843 = !{!2844}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2842, file: !2834, line: 18, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2834, line: 16, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2830, file: !38, line: 1096, baseType: !2848, size: 192)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2830, file: !38, line: 1092, size: 192, elements: !2849)
!2849 = !{!2850, !2851, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2848, file: !38, line: 1093, baseType: !150, size: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2848, file: !38, line: 1094, baseType: !146, size: 32, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2848, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2674, file: !38, line: 1843, baseType: !2854, size: 64, offset: 1280)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!277, !323, !688, !146, !292, !2685, !146}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2674, file: !38, line: 1844, baseType: !987, size: 64, offset: 1344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2674, file: !38, line: 1845, baseType: !2859, size: 64, offset: 1408)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!146, !146}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2674, file: !38, line: 1846, baseType: !2746, size: 64, offset: 1472)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2674, file: !38, line: 1847, baseType: !2864, size: 64, offset: 1536)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!277, !1980, !323, !2685, !292, !7}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2674, file: !38, line: 1848, baseType: !2868, size: 64, offset: 1600)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!277, !323, !2685, !1980, !292, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2674, file: !38, line: 1849, baseType: !2872, size: 64, offset: 1664)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!146, !323, !281, !2875, !788}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2674, file: !38, line: 1850, baseType: !2877, size: 64, offset: 1728)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!281, !323, !146, !498, !498}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2674, file: !38, line: 1852, baseType: !2881, size: 64, offset: 1792)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !678, !323}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2674, file: !38, line: 1856, baseType: !2885, size: 64, offset: 1856)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!277, !323, !498, !323, !498, !292, !7}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2674, file: !38, line: 1858, baseType: !2889, size: 64, offset: 1920)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!498, !323, !498, !323, !498, !498, !7}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2674, file: !38, line: 1861, baseType: !2738, size: 64, offset: 1984)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2669, file: !38, line: 692, baseType: !631, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !397, file: !38, line: 694, baseType: !2895, size: 64, offset: 2560)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2896, file: !38, line: 1101, baseType: !205)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2896, file: !38, line: 1102, baseType: !150, size: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2896, file: !38, line: 1103, baseType: !150, size: 128, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2896, file: !38, line: 1104, baseType: !150, size: 128, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !397, file: !38, line: 695, baseType: !702, size: 1216, align: 64, offset: 2624)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !397, file: !38, line: 696, baseType: !150, size: 128, offset: 3840)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !38, line: 697, baseType: !2905, size: 64, offset: 3968)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !38, line: 697, size: 64, elements: !2906)
!2906 = !{!2907, !2908, !2909, !2912, !2913}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2905, file: !38, line: 698, baseType: !1980, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2905, file: !38, line: 699, baseType: !2424, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2905, file: !38, line: 700, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2905, file: !38, line: 701, baseType: !246, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2905, file: !38, line: 702, baseType: !7, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !397, file: !38, line: 705, baseType: !167, size: 32, offset: 4032)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !397, file: !38, line: 708, baseType: !167, size: 32, offset: 4064)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !397, file: !38, line: 709, baseType: !2506, size: 64, offset: 4096)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !397, file: !38, line: 720, baseType: !154, size: 64, offset: 4160)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !354, file: !351, line: 98, baseType: !2919, size: 256, offset: 448)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 256, elements: !2100)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !354, file: !351, line: 101, baseType: !2921, size: 32, offset: 704)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2922, line: 25, size: 32, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, scope: !2921, file: !2922, line: 26, baseType: !2925, size: 32)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2921, file: !2922, line: 26, size: 32, elements: !2926)
!2926 = !{!2927}
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2922, line: 30, baseType: !2928, size: 32)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2925, file: !2922, line: 30, size: 32, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2928, file: !2922, line: 31, baseType: !205)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2928, file: !2922, line: 32, baseType: !146, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !354, file: !351, line: 102, baseType: !2523, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !354, file: !351, line: 103, baseType: !566, size: 64, offset: 832)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !354, file: !351, line: 104, baseType: !295, size: 64, offset: 896)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !354, file: !351, line: 105, baseType: !154, size: 64, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !351, line: 107, baseType: !2937, size: 128, offset: 1024)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !351, line: 107, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2937, file: !351, line: 108, baseType: !150, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2937, file: !351, line: 109, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !354, file: !351, line: 111, baseType: !150, size: 128, offset: 1152)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !354, file: !351, line: 112, baseType: !150, size: 128, offset: 1280)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !354, file: !351, line: 120, baseType: !2945, size: 128, offset: 1408)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !351, line: 116, size: 128, elements: !2946)
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2945, file: !351, line: 117, baseType: !606, size: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2945, file: !351, line: 118, baseType: !368, size: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2945, file: !351, line: 119, baseType: !336, size: 128, align: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !324, file: !38, line: 922, baseType: !396, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !324, file: !38, line: 923, baseType: !2672, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !324, file: !38, line: 929, baseType: !205, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !324, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !324, file: !38, line: 931, baseType: !738, size: 64, offset: 448)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !324, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !324, file: !38, line: 933, baseType: !2519, size: 32, offset: 544)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !324, file: !38, line: 934, baseType: !1059, size: 192, offset: 576)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !324, file: !38, line: 935, baseType: !498, size: 64, offset: 768)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !324, file: !38, line: 936, baseType: !2960, size: 192, offset: 832)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2960, file: !38, line: 886, baseType: !2771)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2960, file: !38, line: 887, baseType: !1356, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2960, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2960, file: !38, line: 889, baseType: !402, size: 32, offset: 96)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2960, file: !38, line: 889, baseType: !402, size: 32, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2960, file: !38, line: 890, baseType: !146, size: 32, offset: 160)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !324, file: !38, line: 937, baseType: !1432, size: 64, offset: 1024)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !324, file: !38, line: 938, baseType: !2970, size: 256, offset: 1088)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2970, file: !38, line: 897, baseType: !295, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2970, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2970, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2970, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2970, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2970, file: !38, line: 904, baseType: !498, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !324, file: !38, line: 940, baseType: !388, size: 64, offset: 1344)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !324, file: !38, line: 945, baseType: !154, size: 64, offset: 1408)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !324, file: !38, line: 949, baseType: !150, size: 128, offset: 1472)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !324, file: !38, line: 950, baseType: !150, size: 128, offset: 1600)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !324, file: !38, line: 952, baseType: !701, size: 64, offset: 1728)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !324, file: !38, line: 953, baseType: !875, size: 32, offset: 1792)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !324, file: !38, line: 954, baseType: !875, size: 32, offset: 1824)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !271, line: 174, baseType: !320, size: 64, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !271, line: 176, baseType: !2987, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!146, !323, !198, !313, !947}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !271, line: 90, baseType: !297, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !271, line: 91, baseType: !2992, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !261, file: !191, line: 143, baseType: !2994, size: 64, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2997, !198}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !3000)
!3000 = !{!3001, !3002, !3006, !3010, !3018, !3022}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2999, file: !55, line: 40, baseType: !54, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2999, file: !55, line: 41, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!457}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2999, file: !55, line: 42, baseType: !3007, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!154}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2999, file: !55, line: 43, baseType: !3011, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!3014, !3016}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2999, file: !55, line: 44, baseType: !3019, size: 64, offset: 256)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!3014}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2999, file: !55, line: 45, baseType: !435, size: 64, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !261, file: !191, line: 144, baseType: !3024, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!3014, !198}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !261, file: !191, line: 145, baseType: !3028, size: 64, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !198, !3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !190, file: !191, line: 70, baseType: !3034, size: 64, offset: 384)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !586, line: 123, size: 1024, elements: !3036)
!3036 = !{!3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3165, !3166, !3167, !3168, !3169}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3035, file: !586, line: 124, baseType: !714, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3035, file: !586, line: 125, baseType: !714, size: 32, offset: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3035, file: !586, line: 135, baseType: !3034, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3035, file: !586, line: 136, baseType: !194, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3035, file: !586, line: 138, baseType: !727, size: 192, align: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3035, file: !586, line: 140, baseType: !3014, size: 64, offset: 384)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3035, file: !586, line: 141, baseType: !7, size: 32, offset: 448)
!3044 = !DIDerivedType(tag: DW_TAG_member, scope: !3035, file: !586, line: 142, baseType: !3045, size: 256, offset: 512)
!3045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3035, file: !586, line: 142, size: 256, elements: !3046)
!3046 = !{!3047, !3093, !3097}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3045, file: !586, line: 143, baseType: !3048, size: 192)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !586, line: 91, size: 192, elements: !3049)
!3049 = !{!3050, !3051, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3048, file: !586, line: 92, baseType: !295, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3048, file: !586, line: 94, baseType: !723, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3048, file: !586, line: 100, baseType: !3053, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !586, line: 180, size: 704, elements: !3055)
!3055 = !{!3056, !3057, !3058, !3065, !3066, !3067, !3091, !3092}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3054, file: !586, line: 182, baseType: !3034, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3054, file: !586, line: 183, baseType: !7, size: 32, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3054, file: !586, line: 186, baseType: !3059, size: 192, offset: 128)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3060, line: 19, size: 192, elements: !3061)
!3060 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3061 = !{!3062, !3063, !3064}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3059, file: !3060, line: 20, baseType: !706, size: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3059, file: !3060, line: 21, baseType: !7, size: 32, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3059, file: !3060, line: 22, baseType: !7, size: 32, offset: 160)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3054, file: !586, line: 187, baseType: !165, size: 32, offset: 320)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3054, file: !586, line: 188, baseType: !165, size: 32, offset: 352)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3054, file: !586, line: 189, baseType: !3068, size: 64, offset: 384)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !586, line: 168, size: 320, elements: !3070)
!3070 = !{!3071, !3075, !3079, !3083, !3087}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3069, file: !586, line: 169, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!146, !678, !3053}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3069, file: !586, line: 171, baseType: !3076, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!146, !3034, !194, !287}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3069, file: !586, line: 173, baseType: !3080, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!146, !3034}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3069, file: !586, line: 174, baseType: !3084, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!146, !3034, !3034, !194}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3069, file: !586, line: 176, baseType: !3088, size: 64, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!146, !678, !3034, !3053}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3054, file: !586, line: 192, baseType: !150, size: 128, offset: 448)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3054, file: !586, line: 194, baseType: !1366, size: 128, offset: 576)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3045, file: !586, line: 144, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !586, line: 103, size: 64, elements: !3095)
!3095 = !{!3096}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3094, file: !586, line: 104, baseType: !3034, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3045, file: !586, line: 145, baseType: !3098, size: 256)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !586, line: 107, size: 256, elements: !3099)
!3099 = !{!3100, !3160, !3163, !3164}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3098, file: !586, line: 108, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !586, line: 217, size: 768, elements: !3104)
!3104 = !{!3105, !3125, !3129, !3133, !3137, !3141, !3145, !3149, !3150, !3151, !3152, !3156}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3103, file: !586, line: 222, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!146, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !586, line: 197, size: 1088, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3110, file: !586, line: 199, baseType: !3034, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3110, file: !586, line: 200, baseType: !323, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3110, file: !586, line: 201, baseType: !678, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3110, file: !586, line: 202, baseType: !154, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3110, file: !586, line: 205, baseType: !1059, size: 192, offset: 256)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3110, file: !586, line: 206, baseType: !1059, size: 192, offset: 448)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3110, file: !586, line: 207, baseType: !146, size: 32, offset: 640)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3110, file: !586, line: 208, baseType: !150, size: 128, offset: 704)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3110, file: !586, line: 209, baseType: !246, size: 64, offset: 832)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3110, file: !586, line: 211, baseType: !292, size: 64, offset: 896)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3110, file: !586, line: 212, baseType: !457, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3110, file: !586, line: 213, baseType: !457, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3110, file: !586, line: 214, baseType: !975, size: 64, offset: 1024)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3103, file: !586, line: 223, baseType: !3126, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !3109}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3103, file: !586, line: 236, baseType: !3130, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!146, !678, !154}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3103, file: !586, line: 238, baseType: !3134, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!154, !678, !2685}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3103, file: !586, line: 239, baseType: !3138, size: 64, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!154, !678, !154, !2685}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3103, file: !586, line: 240, baseType: !3142, size: 64, offset: 320)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !678, !154}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3103, file: !586, line: 242, baseType: !3146, size: 64, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!277, !3109, !246, !292, !498}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3103, file: !586, line: 252, baseType: !292, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3103, file: !586, line: 259, baseType: !457, size: 8, offset: 512)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3103, file: !586, line: 260, baseType: !3146, size: 64, offset: 576)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3103, file: !586, line: 263, baseType: !3153, size: 64, offset: 640)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!2714, !3109, !2715}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3103, file: !586, line: 266, baseType: !3157, size: 64, offset: 704)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!146, !3109, !947}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3098, file: !586, line: 109, baseType: !3161, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !586, line: 31, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3098, file: !586, line: 110, baseType: !498, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3098, file: !586, line: 111, baseType: !3034, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3035, file: !586, line: 148, baseType: !154, size: 64, offset: 768)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3035, file: !586, line: 154, baseType: !388, size: 64, offset: 832)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3035, file: !586, line: 156, baseType: !141, size: 16, offset: 896)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3035, file: !586, line: 157, baseType: !287, size: 16, offset: 912)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3035, file: !586, line: 158, baseType: !3170, size: 64, offset: 960)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !586, line: 32, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !190, file: !191, line: 71, baseType: !3173, size: 32, offset: 448)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3174, line: 19, size: 32, elements: !3175)
!3174 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3175 = !{!3176}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3173, file: !3174, line: 20, baseType: !1116, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !190, file: !191, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !190, file: !191, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !190, file: !191, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !190, file: !191, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !190, file: !191, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !67, line: 463, baseType: !186, size: 64, offset: 512)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !187, file: !67, line: 465, baseType: !3184, size: 64, offset: 576)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !187, file: !67, line: 467, baseType: !194, size: 64, offset: 640)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !67, line: 468, baseType: !3188, size: 64, offset: 704)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3190)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3198, !3203, !3207}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3190, file: !67, line: 88, baseType: !194, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3190, file: !67, line: 89, baseType: !299, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3190, file: !67, line: 90, baseType: !3195, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!146, !186, !241}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3190, file: !67, line: 91, baseType: !3199, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!246, !186, !3202, !3031, !3032}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3190, file: !67, line: 93, baseType: !3204, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !186}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3190, file: !67, line: 95, baseType: !3208, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3211)
!3211 = !{!3212, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3210, file: !74, line: 279, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!146, !186}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3210, file: !74, line: 280, baseType: !3204, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3210, file: !74, line: 281, baseType: !3213, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3210, file: !74, line: 282, baseType: !3213, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3210, file: !74, line: 283, baseType: !3213, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3210, file: !74, line: 284, baseType: !3213, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3210, file: !74, line: 285, baseType: !3213, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3210, file: !74, line: 286, baseType: !3213, size: 64, offset: 448)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3210, file: !74, line: 287, baseType: !3213, size: 64, offset: 512)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3210, file: !74, line: 288, baseType: !3213, size: 64, offset: 576)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3210, file: !74, line: 289, baseType: !3213, size: 64, offset: 640)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3210, file: !74, line: 290, baseType: !3213, size: 64, offset: 704)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3210, file: !74, line: 291, baseType: !3213, size: 64, offset: 768)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3210, file: !74, line: 292, baseType: !3213, size: 64, offset: 832)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3210, file: !74, line: 293, baseType: !3213, size: 64, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3210, file: !74, line: 294, baseType: !3213, size: 64, offset: 960)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3210, file: !74, line: 295, baseType: !3213, size: 64, offset: 1024)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3210, file: !74, line: 296, baseType: !3213, size: 64, offset: 1088)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3210, file: !74, line: 297, baseType: !3213, size: 64, offset: 1152)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3210, file: !74, line: 298, baseType: !3213, size: 64, offset: 1216)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3210, file: !74, line: 299, baseType: !3213, size: 64, offset: 1280)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3210, file: !74, line: 300, baseType: !3213, size: 64, offset: 1344)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3210, file: !74, line: 301, baseType: !3213, size: 64, offset: 1408)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !187, file: !67, line: 470, baseType: !3239, size: 64, offset: 768)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3241, line: 82, size: 1408, elements: !3242)
!3241 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248, !3249, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3324, !3327, !3328}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3240, file: !3241, line: 83, baseType: !194, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3240, file: !3241, line: 84, baseType: !194, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3240, file: !3241, line: 85, baseType: !186, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3240, file: !3241, line: 86, baseType: !299, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3240, file: !3241, line: 87, baseType: !299, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3240, file: !3241, line: 88, baseType: !299, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3240, file: !3241, line: 90, baseType: !3250, size: 64, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!146, !186, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261, !3262, !3275, !3288, !3289, !3290, !3291, !3292, !3300, !3301, !3302, !3303, !3304, !3305}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3254, file: !61, line: 96, baseType: !194, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3254, file: !61, line: 97, baseType: !3239, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3254, file: !61, line: 99, baseType: !134, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3254, file: !61, line: 100, baseType: !194, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3254, file: !61, line: 102, baseType: !457, size: 8, offset: 256)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3254, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3254, file: !61, line: 105, baseType: !3263, size: 64, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3266, line: 262, size: 1600, elements: !3267)
!3266 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3267 = !{!3268, !3269, !3270, !3274}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3265, file: !3266, line: 263, baseType: !2509, size: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3265, file: !3266, line: 264, baseType: !2509, size: 256, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3265, file: !3266, line: 265, baseType: !3271, size: 1024, offset: 512)
!3271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !3272)
!3272 = !{!3273}
!3273 = !DISubrange(count: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3265, file: !3266, line: 266, baseType: !3014, size: 64, offset: 1536)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3254, file: !61, line: 106, baseType: !3276, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3278)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3266, line: 210, size: 256, elements: !3279)
!3279 = !{!3280, !3284, !3286, !3287}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3278, file: !3266, line: 211, baseType: !3281, size: 72)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 72, elements: !3282)
!3282 = !{!3283}
!3283 = !DISubrange(count: 9)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3278, file: !3266, line: 212, baseType: !3285, size: 64, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3266, line: 14, baseType: !295)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3278, file: !3266, line: 213, baseType: !167, size: 32, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3278, file: !3266, line: 214, baseType: !167, size: 32, offset: 224)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3254, file: !61, line: 108, baseType: !3213, size: 64, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3254, file: !61, line: 109, baseType: !3204, size: 64, offset: 512)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3254, file: !61, line: 110, baseType: !3213, size: 64, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3254, file: !61, line: 111, baseType: !3204, size: 64, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3254, file: !61, line: 112, baseType: !3293, size: 64, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!146, !186, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3297, file: !74, line: 51, baseType: !146, size: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3254, file: !61, line: 113, baseType: !3213, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3254, file: !61, line: 114, baseType: !299, size: 64, offset: 832)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3254, file: !61, line: 115, baseType: !299, size: 64, offset: 896)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3254, file: !61, line: 117, baseType: !3208, size: 64, offset: 960)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3254, file: !61, line: 118, baseType: !3204, size: 64, offset: 1024)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3254, file: !61, line: 120, baseType: !3306, size: 64, offset: 1088)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3240, file: !3241, line: 91, baseType: !3195, size: 64, offset: 448)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3240, file: !3241, line: 92, baseType: !3213, size: 64, offset: 512)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3240, file: !3241, line: 93, baseType: !3204, size: 64, offset: 576)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3240, file: !3241, line: 94, baseType: !3213, size: 64, offset: 640)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3240, file: !3241, line: 95, baseType: !3204, size: 64, offset: 704)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3240, file: !3241, line: 97, baseType: !3213, size: 64, offset: 768)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3240, file: !3241, line: 98, baseType: !3213, size: 64, offset: 832)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3240, file: !3241, line: 100, baseType: !3293, size: 64, offset: 896)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3240, file: !3241, line: 101, baseType: !3213, size: 64, offset: 960)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3240, file: !3241, line: 103, baseType: !3213, size: 64, offset: 1024)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3240, file: !3241, line: 105, baseType: !3213, size: 64, offset: 1088)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3240, file: !3241, line: 107, baseType: !3208, size: 64, offset: 1152)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3240, file: !3241, line: 109, baseType: !3321, size: 64, offset: 1216)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3323)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3241, line: 109, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3240, file: !3241, line: 111, baseType: !3325, size: 64, offset: 1280)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3241, line: 111, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3240, file: !3241, line: 112, baseType: !612, offset: 1344)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3240, file: !3241, line: 114, baseType: !457, size: 8, offset: 1344)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !187, file: !67, line: 471, baseType: !3253, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !187, file: !67, line: 473, baseType: !154, size: 64, offset: 896)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !187, file: !67, line: 475, baseType: !154, size: 64, offset: 960)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !187, file: !67, line: 480, baseType: !1059, size: 192, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !187, file: !67, line: 484, baseType: !3334, size: 576, offset: 1216)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3334, file: !67, line: 362, baseType: !150, size: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3334, file: !67, line: 363, baseType: !150, size: 128, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3334, file: !67, line: 364, baseType: !150, size: 128, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3334, file: !67, line: 365, baseType: !150, size: 128, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3334, file: !67, line: 366, baseType: !457, size: 8, offset: 512)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3334, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !187, file: !67, line: 485, baseType: !3343, size: 2304, offset: 1792)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3440, !3444}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3343, file: !74, line: 566, baseType: !3296, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3343, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3343, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3343, file: !74, line: 569, baseType: !457, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3343, file: !74, line: 570, baseType: !457, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3343, file: !74, line: 571, baseType: !457, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3343, file: !74, line: 572, baseType: !457, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3343, file: !74, line: 573, baseType: !457, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3343, file: !74, line: 574, baseType: !457, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3343, file: !74, line: 575, baseType: !457, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3343, file: !74, line: 576, baseType: !457, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3343, file: !74, line: 577, baseType: !165, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3343, file: !74, line: 578, baseType: !205, offset: 96)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3343, file: !74, line: 580, baseType: !150, size: 128, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3343, file: !74, line: 581, baseType: !1387, size: 192, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3343, file: !74, line: 582, baseType: !3361, size: 64, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3363, line: 43, size: 1472, elements: !3364)
!3363 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3372, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3362, file: !3363, line: 44, baseType: !194, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3362, file: !3363, line: 45, baseType: !146, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3362, file: !3363, line: 46, baseType: !150, size: 128, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3362, file: !3363, line: 47, baseType: !205, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3362, file: !3363, line: 48, baseType: !3370, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3362, file: !3363, line: 49, baseType: !3373, size: 320, offset: 320)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3374, line: 11, size: 320, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3375 = !{!3376, !3377, !3378, !3383}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3373, file: !3374, line: 16, baseType: !606, size: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3373, file: !3374, line: 17, baseType: !295, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3373, file: !3374, line: 18, baseType: !3379, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !3382}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3373, file: !3374, line: 19, baseType: !165, size: 32, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3362, file: !3363, line: 50, baseType: !295, size: 64, offset: 640)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3362, file: !3363, line: 51, baseType: !1185, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3362, file: !3363, line: 52, baseType: !1185, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3362, file: !3363, line: 53, baseType: !1185, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3362, file: !3363, line: 54, baseType: !1185, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3362, file: !3363, line: 55, baseType: !1185, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3362, file: !3363, line: 56, baseType: !295, size: 64, offset: 1024)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3362, file: !3363, line: 57, baseType: !295, size: 64, offset: 1088)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3362, file: !3363, line: 58, baseType: !295, size: 64, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3362, file: !3363, line: 59, baseType: !295, size: 64, offset: 1216)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3362, file: !3363, line: 60, baseType: !295, size: 64, offset: 1280)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3362, file: !3363, line: 61, baseType: !186, size: 64, offset: 1344)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3362, file: !3363, line: 62, baseType: !457, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3362, file: !3363, line: 63, baseType: !457, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3343, file: !74, line: 583, baseType: !457, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3343, file: !74, line: 584, baseType: !457, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3343, file: !74, line: 585, baseType: !457, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3343, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3343, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3343, file: !74, line: 592, baseType: !1177, size: 512, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3343, file: !74, line: 593, baseType: !388, size: 64, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3343, file: !74, line: 594, baseType: !1839, size: 256, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3343, file: !74, line: 595, baseType: !1366, size: 128, offset: 1408)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3343, file: !74, line: 596, baseType: !3370, size: 64, offset: 1536)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3343, file: !74, line: 597, baseType: !714, size: 32, offset: 1600)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3343, file: !74, line: 598, baseType: !714, size: 32, offset: 1632)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3343, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3343, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3343, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3343, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3343, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3343, file: !74, line: 604, baseType: !457, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3343, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3343, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3343, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3343, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3343, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3343, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3343, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3343, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3343, file: !74, line: 613, baseType: !146, size: 32, offset: 1792)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3343, file: !74, line: 614, baseType: !146, size: 32, offset: 1824)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3343, file: !74, line: 615, baseType: !388, size: 64, offset: 1856)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3343, file: !74, line: 616, baseType: !388, size: 64, offset: 1920)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3343, file: !74, line: 617, baseType: !388, size: 64, offset: 1984)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3343, file: !74, line: 618, baseType: !388, size: 64, offset: 2048)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3343, file: !74, line: 620, baseType: !3431, size: 64, offset: 2112)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3432, file: !74, line: 537, baseType: !205)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3432, file: !74, line: 538, baseType: !7, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3432, file: !74, line: 540, baseType: !150, size: 128, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3432, file: !74, line: 543, baseType: !3438, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3343, file: !74, line: 621, baseType: !3441, size: 64, offset: 2176)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !186, !1329}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3343, file: !74, line: 622, baseType: !3445, size: 64, offset: 2240)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !187, file: !67, line: 486, baseType: !3448, size: 64, offset: 4096)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3457, !3458, !3459}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3449, file: !74, line: 643, baseType: !3210, size: 1472)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3449, file: !74, line: 644, baseType: !3213, size: 64, offset: 1472)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3449, file: !74, line: 645, baseType: !3454, size: 64, offset: 1536)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !186, !457}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3449, file: !74, line: 646, baseType: !3213, size: 64, offset: 1600)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3449, file: !74, line: 647, baseType: !3204, size: 64, offset: 1664)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3449, file: !74, line: 648, baseType: !3204, size: 64, offset: 1728)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !187, file: !67, line: 493, baseType: !3461, size: 64, offset: 4160)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !187, file: !67, line: 499, baseType: !150, size: 128, offset: 4224)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !187, file: !67, line: 502, baseType: !3465, size: 64, offset: 4352)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3467)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !187, file: !67, line: 504, baseType: !3469, size: 64, offset: 4416)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !187, file: !67, line: 505, baseType: !388, size: 64, offset: 4480)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !187, file: !67, line: 510, baseType: !388, size: 64, offset: 4544)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !187, file: !67, line: 511, baseType: !3473, size: 64, offset: 4608)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !187, file: !67, line: 513, baseType: !3477, size: 64, offset: 4672)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3479)
!3479 = !{!3480, !3481}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3478, file: !67, line: 293, baseType: !7, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3478, file: !67, line: 294, baseType: !295, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !187, file: !67, line: 515, baseType: !150, size: 128, offset: 4736)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !187, file: !67, line: 526, baseType: !3484, offset: 4864)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3485, line: 5, elements: !219)
!3485 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !187, file: !67, line: 528, baseType: !3487, size: 64, offset: 4864)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3489, line: 14, flags: DIFlagFwdDecl)
!3489 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !187, file: !67, line: 529, baseType: !3491, size: 64, offset: 4928)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3241, line: 22, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !187, file: !67, line: 534, baseType: !480, size: 32, offset: 4992)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !187, file: !67, line: 535, baseType: !165, size: 32, offset: 5024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !187, file: !67, line: 537, baseType: !205, offset: 5056)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !187, file: !67, line: 538, baseType: !150, size: 128, offset: 5056)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !187, file: !67, line: 540, baseType: !3498, size: 64, offset: 5184)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3500, line: 54, size: 960, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3512, !3516, !3517, !3518, !3519, !3523, !3527, !3528}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3499, file: !3500, line: 55, baseType: !194, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3499, file: !3500, line: 56, baseType: !134, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3499, file: !3500, line: 58, baseType: !299, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3499, file: !3500, line: 59, baseType: !299, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3499, file: !3500, line: 60, baseType: !198, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3499, file: !3500, line: 62, baseType: !3195, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3499, file: !3500, line: 63, baseType: !3509, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!246, !186, !3202}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3499, file: !3500, line: 65, baseType: !3513, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3498}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3499, file: !3500, line: 66, baseType: !3204, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3499, file: !3500, line: 68, baseType: !3213, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3499, file: !3500, line: 70, baseType: !2997, size: 64, offset: 640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3499, file: !3500, line: 71, baseType: !3520, size: 64, offset: 704)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!3014, !186}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3499, file: !3500, line: 73, baseType: !3524, size: 64, offset: 768)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !186, !3031, !3032}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3499, file: !3500, line: 75, baseType: !3208, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3499, file: !3500, line: 77, baseType: !3325, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !187, file: !67, line: 541, baseType: !299, size: 64, offset: 5248)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !187, file: !67, line: 543, baseType: !3204, size: 64, offset: 5312)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !187, file: !67, line: 544, baseType: !3532, size: 64, offset: 5376)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !187, file: !67, line: 545, baseType: !3535, size: 64, offset: 5440)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !187, file: !67, line: 547, baseType: !457, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !187, file: !67, line: 548, baseType: !457, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !187, file: !67, line: 549, baseType: !457, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !187, file: !67, line: 550, baseType: !457, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !183, file: !6, line: 426, baseType: !186, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !183, file: !6, line: 427, baseType: !146, size: 32, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !183, file: !6, line: 428, baseType: !194, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !183, file: !6, line: 429, baseType: !1237, size: 8, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !183, file: !6, line: 433, baseType: !1237, size: 8, offset: 264)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !183, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !183, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !183, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !183, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !183, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !183, file: !6, line: 444, baseType: !146, size: 32, offset: 320)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !183, file: !6, line: 446, baseType: !1059, size: 192, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !183, file: !6, line: 448, baseType: !3554, size: 128, offset: 576)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3555)
!3555 = !{!3556}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3554, file: !6, line: 418, baseType: !3557, size: 128)
!3557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 128, elements: !178)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !183, file: !6, line: 449, baseType: !155, size: 64, offset: 704)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !183, file: !6, line: 450, baseType: !182, size: 64, offset: 768)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !183, file: !6, line: 452, baseType: !146, size: 32, offset: 832)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !183, file: !6, line: 459, baseType: !146, size: 32, offset: 864)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !183, file: !6, line: 460, baseType: !146, size: 32, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !183, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !156, file: !6, line: 647, baseType: !3565, size: 640, offset: 640)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3566)
!3566 = !{!3567, !3578, !3586, !3594, !3595, !3596, !3599, !3601, !3602, !3603}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3565, file: !6, line: 68, baseType: !3568, size: 72)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3568, file: !88, line: 408, baseType: !1238, size: 8)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3568, file: !88, line: 409, baseType: !1238, size: 8, offset: 8)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3568, file: !88, line: 411, baseType: !1238, size: 8, offset: 16)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3568, file: !88, line: 412, baseType: !1238, size: 8, offset: 24)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3568, file: !88, line: 413, baseType: !142, size: 16, offset: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3568, file: !88, line: 414, baseType: !1238, size: 8, offset: 48)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3568, file: !88, line: 418, baseType: !1238, size: 8, offset: 56)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3568, file: !88, line: 419, baseType: !1238, size: 8, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3565, file: !6, line: 69, baseType: !3579, size: 48, offset: 72)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3579, file: !88, line: 690, baseType: !1238, size: 8)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3579, file: !88, line: 691, baseType: !1238, size: 8, offset: 8)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3579, file: !88, line: 693, baseType: !1238, size: 8, offset: 16)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3579, file: !88, line: 694, baseType: !1238, size: 8, offset: 24)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3579, file: !88, line: 695, baseType: !142, size: 16, offset: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3565, file: !6, line: 70, baseType: !3587, size: 64, offset: 120)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3592}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3587, file: !88, line: 678, baseType: !1238, size: 8)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3587, file: !88, line: 679, baseType: !1238, size: 8, offset: 8)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3587, file: !88, line: 680, baseType: !142, size: 16, offset: 16)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3587, file: !88, line: 681, baseType: !3593, size: 32, offset: 32)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !143, line: 31, baseType: !167)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3565, file: !6, line: 71, baseType: !150, size: 128, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3565, file: !6, line: 72, baseType: !154, size: 64, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3565, file: !6, line: 73, baseType: !3597, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3565, file: !6, line: 75, baseType: !3600, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3565, file: !6, line: 76, baseType: !146, size: 32, offset: 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3565, file: !6, line: 77, baseType: !146, size: 32, offset: 544)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3565, file: !6, line: 78, baseType: !146, size: 32, offset: 576)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !156, file: !6, line: 649, baseType: !187, size: 5568, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !156, file: !6, line: 651, baseType: !3606, size: 144, offset: 6848)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3606, file: !88, line: 290, baseType: !1238, size: 8)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3606, file: !88, line: 291, baseType: !1238, size: 8, offset: 8)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3606, file: !88, line: 293, baseType: !142, size: 16, offset: 16)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3606, file: !88, line: 294, baseType: !1238, size: 8, offset: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3606, file: !88, line: 295, baseType: !1238, size: 8, offset: 40)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3606, file: !88, line: 296, baseType: !1238, size: 8, offset: 48)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3606, file: !88, line: 297, baseType: !1238, size: 8, offset: 56)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3606, file: !88, line: 298, baseType: !142, size: 16, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3606, file: !88, line: 299, baseType: !142, size: 16, offset: 80)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3606, file: !88, line: 300, baseType: !142, size: 16, offset: 96)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3606, file: !88, line: 301, baseType: !1238, size: 8, offset: 112)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3606, file: !88, line: 302, baseType: !1238, size: 8, offset: 120)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3606, file: !88, line: 303, baseType: !1238, size: 8, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3606, file: !88, line: 304, baseType: !1238, size: 8, offset: 136)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !156, file: !6, line: 652, baseType: !3623, size: 64, offset: 7040)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3625)
!3625 = !{!3626, !3634, !3642, !3654, !3667, !3676}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3624, file: !6, line: 397, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3628, file: !88, line: 845, baseType: !1238, size: 8)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3628, file: !88, line: 846, baseType: !1238, size: 8, offset: 8)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3628, file: !88, line: 848, baseType: !142, size: 16, offset: 16)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3628, file: !88, line: 849, baseType: !1238, size: 8, offset: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3624, file: !6, line: 400, baseType: !3635, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3641}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3636, file: !88, line: 896, baseType: !1238, size: 8)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3636, file: !88, line: 897, baseType: !1238, size: 8, offset: 8)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3636, file: !88, line: 898, baseType: !1238, size: 8, offset: 16)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3636, file: !88, line: 899, baseType: !3593, size: 32, offset: 24)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3624, file: !6, line: 401, baseType: !3643, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3644, file: !88, line: 918, baseType: !1238, size: 8)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3644, file: !88, line: 919, baseType: !1238, size: 8, offset: 8)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3644, file: !88, line: 920, baseType: !1238, size: 8, offset: 16)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3644, file: !88, line: 921, baseType: !1238, size: 8, offset: 24)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3644, file: !88, line: 923, baseType: !142, size: 16, offset: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3644, file: !88, line: 928, baseType: !1238, size: 8, offset: 48)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3644, file: !88, line: 929, baseType: !1238, size: 8, offset: 56)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3644, file: !88, line: 930, baseType: !142, size: 16, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3624, file: !6, line: 402, baseType: !3655, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3657)
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3656, file: !88, line: 956, baseType: !1238, size: 8)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3656, file: !88, line: 957, baseType: !1238, size: 8, offset: 8)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3656, file: !88, line: 958, baseType: !1238, size: 8, offset: 16)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3656, file: !88, line: 959, baseType: !1238, size: 8, offset: 24)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3656, file: !88, line: 960, baseType: !3593, size: 32, offset: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3656, file: !88, line: 963, baseType: !142, size: 16, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3656, file: !88, line: 967, baseType: !142, size: 16, offset: 80)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3656, file: !88, line: 968, baseType: !3666, size: 32, offset: 96)
!3666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3593, size: 32, elements: !1256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3624, file: !6, line: 403, baseType: !3668, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3670)
!3670 = !{!3671, !3672, !3673, !3674, !3675}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3669, file: !88, line: 941, baseType: !1238, size: 8)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3669, file: !88, line: 942, baseType: !1238, size: 8, offset: 8)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3669, file: !88, line: 943, baseType: !1238, size: 8, offset: 16)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3669, file: !88, line: 944, baseType: !1238, size: 8, offset: 24)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3669, file: !88, line: 945, baseType: !2516, size: 128, offset: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3624, file: !6, line: 404, baseType: !3677, size: 64, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3679)
!3679 = !{!3680, !3681, !3682}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3678, file: !88, line: 1081, baseType: !1238, size: 8)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3678, file: !88, line: 1082, baseType: !1238, size: 8, offset: 8)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3678, file: !88, line: 1083, baseType: !1238, size: 8, offset: 16)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !156, file: !6, line: 653, baseType: !3684, size: 64, offset: 7104)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3686)
!3686 = !{!3687, !3698, !3699, !3712, !3754, !3763, !3764}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3685, file: !6, line: 375, baseType: !3688, size: 72)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3688, file: !88, line: 350, baseType: !1238, size: 8)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3688, file: !88, line: 351, baseType: !1238, size: 8, offset: 8)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3688, file: !88, line: 353, baseType: !142, size: 16, offset: 16)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3688, file: !88, line: 354, baseType: !1238, size: 8, offset: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3688, file: !88, line: 355, baseType: !1238, size: 8, offset: 40)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3688, file: !88, line: 356, baseType: !1238, size: 8, offset: 48)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3688, file: !88, line: 357, baseType: !1238, size: 8, offset: 56)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3688, file: !88, line: 358, baseType: !1238, size: 8, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3685, file: !6, line: 377, baseType: !246, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3685, file: !6, line: 381, baseType: !3700, size: 1024, offset: 192)
!3700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3701, size: 1024, elements: !162)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3702, file: !88, line: 784, baseType: !1238, size: 8)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3702, file: !88, line: 785, baseType: !1238, size: 8, offset: 8)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3702, file: !88, line: 787, baseType: !1238, size: 8, offset: 16)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3702, file: !88, line: 788, baseType: !1238, size: 8, offset: 24)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3702, file: !88, line: 789, baseType: !1238, size: 8, offset: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3702, file: !88, line: 790, baseType: !1238, size: 8, offset: 40)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3702, file: !88, line: 791, baseType: !1238, size: 8, offset: 48)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3702, file: !88, line: 792, baseType: !1238, size: 8, offset: 56)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3685, file: !6, line: 385, baseType: !3713, size: 2048, offset: 1216)
!3713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3714, size: 2048, elements: !2100)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3716)
!3716 = !{!3717, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3715, file: !6, line: 235, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3720)
!3720 = !{!3721, !3733, !3734, !3735, !3737}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3719, file: !6, line: 83, baseType: !3722, size: 72)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3722, file: !88, line: 390, baseType: !1238, size: 8)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3722, file: !88, line: 391, baseType: !1238, size: 8, offset: 8)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3722, file: !88, line: 393, baseType: !1238, size: 8, offset: 16)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3722, file: !88, line: 394, baseType: !1238, size: 8, offset: 24)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3722, file: !88, line: 395, baseType: !1238, size: 8, offset: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3722, file: !88, line: 396, baseType: !1238, size: 8, offset: 40)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3722, file: !88, line: 397, baseType: !1238, size: 8, offset: 48)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3722, file: !88, line: 398, baseType: !1238, size: 8, offset: 56)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3722, file: !88, line: 399, baseType: !1238, size: 8, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3719, file: !6, line: 85, baseType: !146, size: 32, offset: 96)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3719, file: !6, line: 86, baseType: !3600, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3719, file: !6, line: 91, baseType: !3736, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3719, file: !6, line: 93, baseType: !246, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3715, file: !6, line: 237, baseType: !3718, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3715, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3715, file: !6, line: 243, baseType: !3701, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3715, file: !6, line: 245, baseType: !146, size: 32, offset: 256)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3715, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3715, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3715, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3715, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3715, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3715, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3715, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3715, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3715, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3715, file: !6, line: 257, baseType: !187, size: 5568, offset: 384)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3715, file: !6, line: 258, baseType: !186, size: 64, offset: 5952)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3715, file: !6, line: 259, baseType: !1839, size: 256, offset: 6016)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3685, file: !6, line: 389, baseType: !3755, size: 2048, offset: 3264)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3756, size: 2048, elements: !2100)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3757, file: !6, line: 323, baseType: !7, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3757, file: !6, line: 324, baseType: !3173, size: 32, offset: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3757, file: !6, line: 328, baseType: !3762, offset: 64)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3719, elements: !2201)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3685, file: !6, line: 391, baseType: !3600, size: 64, offset: 5312)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3685, file: !6, line: 392, baseType: !146, size: 32, offset: 5376)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !156, file: !6, line: 655, baseType: !3684, size: 64, offset: 7168)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !156, file: !6, line: 656, baseType: !3767, size: 1024, offset: 7232)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3736, size: 1024, elements: !162)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !156, file: !6, line: 657, baseType: !3767, size: 1024, offset: 8256)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !156, file: !6, line: 659, baseType: !3770, size: 64, offset: 9280)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !156, file: !6, line: 661, baseType: !141, size: 16, offset: 9344)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !156, file: !6, line: 662, baseType: !1237, size: 8, offset: 9360)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !156, file: !6, line: 663, baseType: !1237, size: 8, offset: 9368)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !156, file: !6, line: 664, baseType: !1237, size: 8, offset: 9376)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !156, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !156, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !156, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !156, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !156, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !156, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !156, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !156, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !156, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !156, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !156, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !156, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !156, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !156, file: !6, line: 679, baseType: !146, size: 32, offset: 9408)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !156, file: !6, line: 682, baseType: !246, size: 64, offset: 9472)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !156, file: !6, line: 683, baseType: !246, size: 64, offset: 9536)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !156, file: !6, line: 684, baseType: !246, size: 64, offset: 9600)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !156, file: !6, line: 686, baseType: !150, size: 128, offset: 9664)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !156, file: !6, line: 688, baseType: !146, size: 32, offset: 9792)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !156, file: !6, line: 690, baseType: !165, size: 32, offset: 9824)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !156, file: !6, line: 691, baseType: !714, size: 32, offset: 9856)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !156, file: !6, line: 693, baseType: !295, size: 64, offset: 9920)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !156, file: !6, line: 696, baseType: !295, size: 64, offset: 9984)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !156, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !156, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !156, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !156, file: !6, line: 702, baseType: !3802, size: 64, offset: 10112)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !156, file: !6, line: 703, baseType: !146, size: 32, offset: 10176)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !156, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !156, file: !6, line: 705, baseType: !3807, size: 64, offset: 10240)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3808)
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3807, file: !6, line: 506, baseType: !7, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3807, file: !6, line: 512, baseType: !146, size: 32, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !156, file: !6, line: 706, baseType: !3812, size: 128, offset: 10304)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3812, file: !6, line: 529, baseType: !7, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3812, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3812, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3812, file: !6, line: 551, baseType: !146, size: 32, offset: 96)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !156, file: !6, line: 707, baseType: !3812, size: 128, offset: 10432)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !156, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !156, file: !6, line: 710, baseType: !826, size: 16, offset: 10592)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !156, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_lcd", file: !3, line: 39, size: 1152, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3839, !3847, !3848}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !3823, file: !3, line: 40, baseType: !155, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3823, file: !3, line: 41, baseType: !3714, size: 64, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_buffer", scope: !3823, file: !3, line: 43, baseType: !3600, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_size", scope: !3823, file: !3, line: 45, baseType: !292, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_in_endpointAddr", scope: !3823, file: !3, line: 47, baseType: !1238, size: 8, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_out_endpointAddr", scope: !3823, file: !3, line: 49, baseType: !1238, size: 8, offset: 264)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3823, file: !3, line: 51, baseType: !3173, size: 32, offset: 288)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "limit_sem", scope: !3823, file: !3, line: 52, baseType: !3833, size: 192, offset: 320)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !3834, line: 15, size: 192, elements: !3835)
!3834 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!3835 = !{!3836, !3837, !3838}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3833, file: !3834, line: 16, baseType: !747)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3833, file: !3834, line: 17, baseType: !7, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !3833, file: !3834, line: 18, baseType: !150, size: 128, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "submitted", scope: !3823, file: !3, line: 55, baseType: !3840, size: 320, offset: 512)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3840, file: !6, line: 1361, baseType: !150, size: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3840, file: !6, line: 1362, baseType: !1366, size: 128, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3840, file: !6, line: 1363, baseType: !205, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3840, file: !6, line: 1364, baseType: !714, size: 32, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3840, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "io_rwsem", scope: !3823, file: !3, line: 57, baseType: !734, size: 256, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3823, file: !3, line: 58, baseType: !295, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3849 = !{!0, !3850, !3855, !3860, !3865, !3870, !3875, !3936, !3939, !3945, !3951, !3959, !3961}
!3850 = !DIGlobalVariableExpression(var: !3851, expr: !DIExpression())
!3851 = distinct !DIGlobalVariable(name: "__exitcall_lcd_driver_exit", scope: !2, file: !3, line: 446, type: !3852, isLocal: true, isDefinition: true)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3853, line: 117, baseType: !3854)
!3853 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!3855 = !DIGlobalVariableExpression(var: !3856, expr: !DIExpression())
!3856 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author215", scope: !2, file: !3, line: 448, type: !3857, isLocal: true, isDefinition: true, align: 8)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 360, elements: !3858)
!3858 = !{!3859}
!3859 = !DISubrange(count: 45)
!3860 = !DIGlobalVariableExpression(var: !3861, expr: !DIExpression())
!3861 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description216", scope: !2, file: !3, line: 449, type: !3862, isLocal: true, isDefinition: true, align: 8)
!3862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 368, elements: !3863)
!3863 = !{!3864}
!3864 = !DISubrange(count: 46)
!3865 = !DIGlobalVariableExpression(var: !3866, expr: !DIExpression())
!3866 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file217", scope: !2, file: !3, line: 450, type: !3867, isLocal: true, isDefinition: true, align: 8)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 288, elements: !3868)
!3868 = !{!3869}
!3869 = !DISubrange(count: 36)
!3870 = !DIGlobalVariableExpression(var: !3871, expr: !DIExpression())
!3871 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license218", scope: !2, file: !3, line: 450, type: !3872, isLocal: true, isDefinition: true, align: 8)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 152, elements: !3873)
!3873 = !{!3874}
!3874 = !DISubrange(count: 19)
!3875 = !DIGlobalVariableExpression(var: !3876, expr: !DIExpression())
!3876 = distinct !DIGlobalVariable(name: "lcd_driver", scope: !2, file: !3, line: 436, type: !3877, isLocal: true, isDefinition: true)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3878)
!3878 = !{!3879, !3880, !3901, !3905, !3909, !3913, !3917, !3918, !3919, !3920, !3921, !3922, !3927, !3932, !3933, !3934, !3935}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3877, file: !6, line: 1185, baseType: !194, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3877, file: !6, line: 1187, baseType: !3881, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!146, !3714, !3884}
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3266, line: 121, size: 256, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3886, file: !3266, line: 123, baseType: !139, size: 16)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3886, file: !3266, line: 126, baseType: !139, size: 16, offset: 16)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3886, file: !3266, line: 127, baseType: !139, size: 16, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3886, file: !3266, line: 128, baseType: !139, size: 16, offset: 48)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3886, file: !3266, line: 129, baseType: !139, size: 16, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3886, file: !3266, line: 132, baseType: !1238, size: 8, offset: 80)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3886, file: !3266, line: 133, baseType: !1238, size: 8, offset: 88)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3886, file: !3266, line: 134, baseType: !1238, size: 8, offset: 96)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3886, file: !3266, line: 137, baseType: !1238, size: 8, offset: 104)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3886, file: !3266, line: 138, baseType: !1238, size: 8, offset: 112)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3886, file: !3266, line: 139, baseType: !1238, size: 8, offset: 120)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3886, file: !3266, line: 142, baseType: !1238, size: 8, offset: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3886, file: !3266, line: 145, baseType: !3285, size: 64, align: 64, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3877, file: !6, line: 1190, baseType: !3902, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3714}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3877, file: !6, line: 1192, baseType: !3906, size: 64, offset: 192)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!146, !3714, !7, !154}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3877, file: !6, line: 1195, baseType: !3910, size: 64, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!146, !3714, !3296}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3877, file: !6, line: 1196, baseType: !3914, size: 64, offset: 320)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!146, !3714}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3877, file: !6, line: 1197, baseType: !3914, size: 64, offset: 384)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3877, file: !6, line: 1199, baseType: !3914, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3877, file: !6, line: 1200, baseType: !3914, size: 64, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3877, file: !6, line: 1202, baseType: !3884, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3877, file: !6, line: 1203, baseType: !299, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3877, file: !6, line: 1205, baseType: !3923, size: 128, offset: 704)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3923, file: !6, line: 1092, baseType: !205)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3923, file: !6, line: 1093, baseType: !150, size: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3877, file: !6, line: 1206, baseType: !3928, size: 1216, offset: 832)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3929)
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3928, file: !6, line: 1114, baseType: !3254, size: 1152)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3928, file: !6, line: 1115, baseType: !146, size: 32, offset: 1152)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3877, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3877, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3877, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3877, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3936 = !DIGlobalVariableExpression(var: !3937, expr: !DIExpression())
!3937 = distinct !DIGlobalVariable(name: "__key", scope: !3938, file: !3, line: 332, type: !612, isLocal: true, isDefinition: true)
!3938 = distinct !DISubprogram(name: "lcd_probe", scope: !3, file: !3, line: 317, type: !3882, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3939 = !DIGlobalVariableExpression(var: !3940, expr: !DIExpression())
!3940 = distinct !DIGlobalVariable(name: "__key", scope: !3941, file: !3834, line: 33, type: !612, isLocal: true, isDefinition: true)
!3941 = distinct !DISubprogram(name: "sema_init", scope: !3834, file: !3834, line: 31, type: !3942, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{null, !3944, !146}
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3945 = !DIGlobalVariableExpression(var: !3946, expr: !DIExpression())
!3946 = distinct !DIGlobalVariable(name: "__key", scope: !3947, file: !6, line: 1372, type: !612, isLocal: true, isDefinition: true)
!3947 = distinct !DISubprogram(name: "init_usb_anchor", scope: !6, file: !6, line: 1368, type: !3948, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3951 = !DIGlobalVariableExpression(var: !3952, expr: !DIExpression())
!3952 = distinct !DIGlobalVariable(name: "lcd_class", scope: !2, file: !3, line: 311, type: !3953, isLocal: true, isDefinition: true)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_class_driver", file: !6, line: 1274, size: 256, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3953, file: !6, line: 1275, baseType: !246, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3953, file: !6, line: 1276, baseType: !3509, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3953, file: !6, line: 1277, baseType: !2672, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "minor_base", scope: !3953, file: !6, line: 1278, baseType: !146, size: 32, offset: 192)
!3959 = !DIGlobalVariableExpression(var: !3960, expr: !DIExpression())
!3960 = distinct !DIGlobalVariable(name: "lcd_fops", scope: !2, file: !3, line: 297, type: !2673, isLocal: true, isDefinition: true)
!3961 = !DIGlobalVariableExpression(var: !3962, expr: !DIExpression())
!3962 = distinct !DIGlobalVariable(name: "id_table", scope: !2, file: !3, line: 33, type: !3963, isLocal: true, isDefinition: true)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3885, size: 512, elements: !178)
!3964 = !{i32 7, !"Dwarf Version", i32 4}
!3965 = !{i32 2, !"Debug Info Version", i32 3}
!3966 = !{i32 1, !"wchar_size", i32 2}
!3967 = !{i32 1, !"Code Model", i32 2}
!3968 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3969 = distinct !DISubprogram(name: "lcd_driver_init", scope: !3, file: !3, line: 446, type: !3970, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!146}
!3972 = !DILocation(line: 446, column: 1, scope: !3969)
!3973 = distinct !DISubprogram(name: "lcd_driver_exit", scope: !3, file: !3, line: 446, type: !1760, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3974 = !DILocation(line: 446, column: 1, scope: !3973)
!3975 = !DILocalVariable(name: "s", arg: 1, scope: !3976, file: !119, line: 445, type: !901)
!3976 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !119, file: !119, line: 445, type: !3977, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!154, !901, !137, !292}
!3979 = !DILocation(line: 445, column: 72, scope: !3976, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 552, column: 10, scope: !3981, inlinedAt: !3986)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !119, line: 540, column: 34)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !119, line: 540, column: 6)
!3983 = distinct !DISubprogram(name: "kmalloc", scope: !119, file: !119, line: 538, type: !3984, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!154, !292, !137}
!3986 = distinct !DILocation(line: 356, column: 24, scope: !3938)
!3987 = !DILocalVariable(name: "flags", arg: 2, scope: !3976, file: !119, line: 446, type: !137)
!3988 = !DILocation(line: 446, column: 9, scope: !3976, inlinedAt: !3980)
!3989 = !DILocalVariable(name: "size", arg: 3, scope: !3976, file: !119, line: 446, type: !292)
!3990 = !DILocation(line: 446, column: 23, scope: !3976, inlinedAt: !3980)
!3991 = !DILocalVariable(name: "ret", scope: !3976, file: !119, line: 448, type: !154)
!3992 = !DILocation(line: 448, column: 8, scope: !3976, inlinedAt: !3980)
!3993 = !DILocalVariable(name: "flags", arg: 1, scope: !3994, file: !119, line: 318, type: !137)
!3994 = distinct !DISubprogram(name: "kmalloc_type", scope: !119, file: !119, line: 318, type: !3995, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!118, !137}
!3997 = !DILocation(line: 318, column: 67, scope: !3994, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 553, column: 20, scope: !3981, inlinedAt: !3986)
!3999 = !DILocalVariable(name: "size", arg: 1, scope: !4000, file: !119, line: 346, type: !292)
!4000 = distinct !DISubprogram(name: "kmalloc_index", scope: !119, file: !119, line: 346, type: !4001, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!7, !292}
!4003 = !DILocation(line: 346, column: 58, scope: !4000, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 547, column: 11, scope: !3981, inlinedAt: !3986)
!4005 = !DILocalVariable(name: "size", arg: 1, scope: !4006, file: !119, line: 472, type: !292)
!4006 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !119, file: !119, line: 472, type: !4007, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!154, !292, !137, !7}
!4009 = !DILocation(line: 472, column: 28, scope: !4006, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 481, column: 9, scope: !4011, inlinedAt: !4012)
!4011 = distinct !DISubprogram(name: "kmalloc_large", scope: !119, file: !119, line: 478, type: !3984, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4012 = distinct !DILocation(line: 545, column: 11, scope: !4013, inlinedAt: !3986)
!4013 = distinct !DILexicalBlock(scope: !3981, file: !119, line: 544, column: 7)
!4014 = !DILocalVariable(name: "flags", arg: 2, scope: !4006, file: !119, line: 472, type: !137)
!4015 = !DILocation(line: 472, column: 40, scope: !4006, inlinedAt: !4010)
!4016 = !DILocalVariable(name: "order", arg: 3, scope: !4006, file: !119, line: 472, type: !7)
!4017 = !DILocation(line: 472, column: 60, scope: !4006, inlinedAt: !4010)
!4018 = !DILocalVariable(name: "size", arg: 1, scope: !4011, file: !119, line: 478, type: !292)
!4019 = !DILocation(line: 478, column: 51, scope: !4011, inlinedAt: !4012)
!4020 = !DILocalVariable(name: "flags", arg: 2, scope: !4011, file: !119, line: 478, type: !137)
!4021 = !DILocation(line: 478, column: 63, scope: !4011, inlinedAt: !4012)
!4022 = !DILocalVariable(name: "order", scope: !4011, file: !119, line: 480, type: !7)
!4023 = !DILocation(line: 480, column: 15, scope: !4011, inlinedAt: !4012)
!4024 = !DILocalVariable(name: "size", arg: 1, scope: !3983, file: !119, line: 538, type: !292)
!4025 = !DILocation(line: 538, column: 45, scope: !3983, inlinedAt: !3986)
!4026 = !DILocalVariable(name: "flags", arg: 2, scope: !3983, file: !119, line: 538, type: !137)
!4027 = !DILocation(line: 538, column: 57, scope: !3983, inlinedAt: !3986)
!4028 = !DILocalVariable(name: "index", scope: !3981, file: !119, line: 542, type: !7)
!4029 = !DILocation(line: 542, column: 16, scope: !3981, inlinedAt: !3986)
!4030 = !DILocalVariable(name: "interface", arg: 1, scope: !3938, file: !3, line: 317, type: !3714)
!4031 = !DILocation(line: 317, column: 44, scope: !3938)
!4032 = !DILocalVariable(name: "id", arg: 2, scope: !3938, file: !3, line: 318, type: !3884)
!4033 = !DILocation(line: 318, column: 36, scope: !3938)
!4034 = !DILocalVariable(name: "dev", scope: !3938, file: !3, line: 320, type: !3822)
!4035 = !DILocation(line: 320, column: 18, scope: !3938)
!4036 = !DILocalVariable(name: "bulk_in", scope: !3938, file: !3, line: 321, type: !4037)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!4038 = !DILocation(line: 321, column: 34, scope: !3938)
!4039 = !DILocalVariable(name: "bulk_out", scope: !3938, file: !3, line: 321, type: !4037)
!4040 = !DILocation(line: 321, column: 44, scope: !3938)
!4041 = !DILocalVariable(name: "i", scope: !3938, file: !3, line: 322, type: !146)
!4042 = !DILocation(line: 322, column: 6, scope: !3938)
!4043 = !DILocalVariable(name: "retval", scope: !3938, file: !3, line: 323, type: !146)
!4044 = !DILocation(line: 323, column: 6, scope: !3938)
!4045 = !DILocation(line: 326, column: 8, scope: !3938)
!4046 = !DILocation(line: 326, column: 6, scope: !3938)
!4047 = !DILocation(line: 327, column: 7, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 327, column: 6)
!4049 = !DILocation(line: 327, column: 6, scope: !3938)
!4050 = !DILocation(line: 328, column: 3, scope: !4048)
!4051 = !DILocation(line: 330, column: 13, scope: !3938)
!4052 = !DILocation(line: 330, column: 18, scope: !3938)
!4053 = !DILocation(line: 330, column: 2, scope: !3938)
!4054 = !DILocation(line: 331, column: 13, scope: !3938)
!4055 = !DILocation(line: 331, column: 18, scope: !3938)
!4056 = !DILocation(line: 331, column: 2, scope: !3938)
!4057 = !DILocation(line: 332, column: 2, scope: !3938)
!4058 = !DILocation(line: 332, column: 2, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 332, column: 2)
!4060 = !DILocation(line: 333, column: 19, scope: !3938)
!4061 = !DILocation(line: 333, column: 24, scope: !3938)
!4062 = !DILocation(line: 333, column: 2, scope: !3938)
!4063 = !DILocation(line: 335, column: 46, scope: !3938)
!4064 = !DILocation(line: 335, column: 26, scope: !3938)
!4065 = !DILocation(line: 335, column: 14, scope: !3938)
!4066 = !DILocation(line: 335, column: 2, scope: !3938)
!4067 = !DILocation(line: 335, column: 7, scope: !3938)
!4068 = !DILocation(line: 335, column: 12, scope: !3938)
!4069 = !DILocation(line: 336, column: 19, scope: !3938)
!4070 = !DILocation(line: 336, column: 2, scope: !3938)
!4071 = !DILocation(line: 336, column: 7, scope: !3938)
!4072 = !DILocation(line: 336, column: 17, scope: !3938)
!4073 = !DILocation(line: 338, column: 6, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 338, column: 6)
!4075 = !DILocation(line: 338, column: 51, scope: !4074)
!4076 = !DILocation(line: 338, column: 6, scope: !3938)
!4077 = !DILocation(line: 339, column: 3, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 338, column: 62)
!4079 = !DILocation(line: 340, column: 10, scope: !4078)
!4080 = !DILocation(line: 341, column: 3, scope: !4078)
!4081 = !DILocation(line: 346, column: 37, scope: !3938)
!4082 = !DILocation(line: 346, column: 48, scope: !3938)
!4083 = !DILocation(line: 346, column: 11, scope: !3938)
!4084 = !DILocation(line: 346, column: 9, scope: !3938)
!4085 = !DILocation(line: 348, column: 6, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 348, column: 6)
!4087 = !DILocation(line: 348, column: 6, scope: !3938)
!4088 = !DILocation(line: 349, column: 3, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 348, column: 14)
!4090 = !DILocation(line: 351, column: 3, scope: !4089)
!4091 = !DILocation(line: 354, column: 40, scope: !3938)
!4092 = !DILocation(line: 354, column: 22, scope: !3938)
!4093 = !DILocation(line: 354, column: 2, scope: !3938)
!4094 = !DILocation(line: 354, column: 7, scope: !3938)
!4095 = !DILocation(line: 354, column: 20, scope: !3938)
!4096 = !DILocation(line: 355, column: 30, scope: !3938)
!4097 = !DILocation(line: 355, column: 39, scope: !3938)
!4098 = !DILocation(line: 355, column: 2, scope: !3938)
!4099 = !DILocation(line: 355, column: 7, scope: !3938)
!4100 = !DILocation(line: 355, column: 28, scope: !3938)
!4101 = !DILocation(line: 356, column: 32, scope: !3938)
!4102 = !DILocation(line: 356, column: 37, scope: !3938)
!4103 = !DILocation(line: 540, column: 27, scope: !3982, inlinedAt: !3986)
!4104 = !DILocation(line: 540, column: 6, scope: !3982, inlinedAt: !3986)
!4105 = !DILocation(line: 540, column: 6, scope: !3983, inlinedAt: !3986)
!4106 = !DILocation(line: 544, column: 7, scope: !4013, inlinedAt: !3986)
!4107 = !DILocation(line: 544, column: 12, scope: !4013, inlinedAt: !3986)
!4108 = !DILocation(line: 544, column: 7, scope: !3981, inlinedAt: !3986)
!4109 = !DILocation(line: 545, column: 25, scope: !4013, inlinedAt: !3986)
!4110 = !DILocation(line: 545, column: 31, scope: !4013, inlinedAt: !3986)
!4111 = !DILocation(line: 480, column: 33, scope: !4011, inlinedAt: !4012)
!4112 = !DILocation(line: 480, column: 23, scope: !4011, inlinedAt: !4012)
!4113 = !DILocation(line: 481, column: 29, scope: !4011, inlinedAt: !4012)
!4114 = !DILocation(line: 481, column: 35, scope: !4011, inlinedAt: !4012)
!4115 = !DILocation(line: 481, column: 42, scope: !4011, inlinedAt: !4012)
!4116 = !DILocation(line: 474, column: 23, scope: !4006, inlinedAt: !4010)
!4117 = !DILocation(line: 474, column: 29, scope: !4006, inlinedAt: !4010)
!4118 = !DILocation(line: 474, column: 36, scope: !4006, inlinedAt: !4010)
!4119 = !DILocation(line: 474, column: 9, scope: !4006, inlinedAt: !4010)
!4120 = !DILocation(line: 545, column: 4, scope: !4013, inlinedAt: !3986)
!4121 = !DILocation(line: 547, column: 25, scope: !3981, inlinedAt: !3986)
!4122 = !DILocation(line: 348, column: 7, scope: !4123, inlinedAt: !4004)
!4123 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 348, column: 6)
!4124 = !DILocation(line: 348, column: 6, scope: !4000, inlinedAt: !4004)
!4125 = !DILocation(line: 349, column: 3, scope: !4123, inlinedAt: !4004)
!4126 = !DILocation(line: 351, column: 6, scope: !4127, inlinedAt: !4004)
!4127 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 351, column: 6)
!4128 = !DILocation(line: 351, column: 11, scope: !4127, inlinedAt: !4004)
!4129 = !DILocation(line: 351, column: 6, scope: !4000, inlinedAt: !4004)
!4130 = !DILocation(line: 352, column: 3, scope: !4127, inlinedAt: !4004)
!4131 = !DILocation(line: 354, column: 32, scope: !4132, inlinedAt: !4004)
!4132 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 354, column: 6)
!4133 = !DILocation(line: 354, column: 37, scope: !4132, inlinedAt: !4004)
!4134 = !DILocation(line: 354, column: 42, scope: !4132, inlinedAt: !4004)
!4135 = !DILocation(line: 354, column: 45, scope: !4132, inlinedAt: !4004)
!4136 = !DILocation(line: 354, column: 50, scope: !4132, inlinedAt: !4004)
!4137 = !DILocation(line: 354, column: 6, scope: !4000, inlinedAt: !4004)
!4138 = !DILocation(line: 355, column: 3, scope: !4132, inlinedAt: !4004)
!4139 = !DILocation(line: 356, column: 32, scope: !4140, inlinedAt: !4004)
!4140 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 356, column: 6)
!4141 = !DILocation(line: 356, column: 37, scope: !4140, inlinedAt: !4004)
!4142 = !DILocation(line: 356, column: 43, scope: !4140, inlinedAt: !4004)
!4143 = !DILocation(line: 356, column: 46, scope: !4140, inlinedAt: !4004)
!4144 = !DILocation(line: 356, column: 51, scope: !4140, inlinedAt: !4004)
!4145 = !DILocation(line: 356, column: 6, scope: !4000, inlinedAt: !4004)
!4146 = !DILocation(line: 357, column: 3, scope: !4140, inlinedAt: !4004)
!4147 = !DILocation(line: 358, column: 6, scope: !4148, inlinedAt: !4004)
!4148 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 358, column: 6)
!4149 = !DILocation(line: 358, column: 11, scope: !4148, inlinedAt: !4004)
!4150 = !DILocation(line: 358, column: 6, scope: !4000, inlinedAt: !4004)
!4151 = !DILocation(line: 358, column: 26, scope: !4148, inlinedAt: !4004)
!4152 = !DILocation(line: 359, column: 6, scope: !4153, inlinedAt: !4004)
!4153 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 359, column: 6)
!4154 = !DILocation(line: 359, column: 11, scope: !4153, inlinedAt: !4004)
!4155 = !DILocation(line: 359, column: 6, scope: !4000, inlinedAt: !4004)
!4156 = !DILocation(line: 359, column: 26, scope: !4153, inlinedAt: !4004)
!4157 = !DILocation(line: 360, column: 6, scope: !4158, inlinedAt: !4004)
!4158 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 360, column: 6)
!4159 = !DILocation(line: 360, column: 11, scope: !4158, inlinedAt: !4004)
!4160 = !DILocation(line: 360, column: 6, scope: !4000, inlinedAt: !4004)
!4161 = !DILocation(line: 360, column: 26, scope: !4158, inlinedAt: !4004)
!4162 = !DILocation(line: 361, column: 6, scope: !4163, inlinedAt: !4004)
!4163 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 361, column: 6)
!4164 = !DILocation(line: 361, column: 11, scope: !4163, inlinedAt: !4004)
!4165 = !DILocation(line: 361, column: 6, scope: !4000, inlinedAt: !4004)
!4166 = !DILocation(line: 361, column: 26, scope: !4163, inlinedAt: !4004)
!4167 = !DILocation(line: 362, column: 6, scope: !4168, inlinedAt: !4004)
!4168 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 362, column: 6)
!4169 = !DILocation(line: 362, column: 11, scope: !4168, inlinedAt: !4004)
!4170 = !DILocation(line: 362, column: 6, scope: !4000, inlinedAt: !4004)
!4171 = !DILocation(line: 362, column: 26, scope: !4168, inlinedAt: !4004)
!4172 = !DILocation(line: 363, column: 6, scope: !4173, inlinedAt: !4004)
!4173 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 363, column: 6)
!4174 = !DILocation(line: 363, column: 11, scope: !4173, inlinedAt: !4004)
!4175 = !DILocation(line: 363, column: 6, scope: !4000, inlinedAt: !4004)
!4176 = !DILocation(line: 363, column: 26, scope: !4173, inlinedAt: !4004)
!4177 = !DILocation(line: 364, column: 6, scope: !4178, inlinedAt: !4004)
!4178 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 364, column: 6)
!4179 = !DILocation(line: 364, column: 11, scope: !4178, inlinedAt: !4004)
!4180 = !DILocation(line: 364, column: 6, scope: !4000, inlinedAt: !4004)
!4181 = !DILocation(line: 364, column: 26, scope: !4178, inlinedAt: !4004)
!4182 = !DILocation(line: 365, column: 6, scope: !4183, inlinedAt: !4004)
!4183 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 365, column: 6)
!4184 = !DILocation(line: 365, column: 11, scope: !4183, inlinedAt: !4004)
!4185 = !DILocation(line: 365, column: 6, scope: !4000, inlinedAt: !4004)
!4186 = !DILocation(line: 365, column: 26, scope: !4183, inlinedAt: !4004)
!4187 = !DILocation(line: 366, column: 6, scope: !4188, inlinedAt: !4004)
!4188 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 366, column: 6)
!4189 = !DILocation(line: 366, column: 11, scope: !4188, inlinedAt: !4004)
!4190 = !DILocation(line: 366, column: 6, scope: !4000, inlinedAt: !4004)
!4191 = !DILocation(line: 366, column: 26, scope: !4188, inlinedAt: !4004)
!4192 = !DILocation(line: 367, column: 6, scope: !4193, inlinedAt: !4004)
!4193 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 367, column: 6)
!4194 = !DILocation(line: 367, column: 11, scope: !4193, inlinedAt: !4004)
!4195 = !DILocation(line: 367, column: 6, scope: !4000, inlinedAt: !4004)
!4196 = !DILocation(line: 367, column: 26, scope: !4193, inlinedAt: !4004)
!4197 = !DILocation(line: 368, column: 6, scope: !4198, inlinedAt: !4004)
!4198 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 368, column: 6)
!4199 = !DILocation(line: 368, column: 11, scope: !4198, inlinedAt: !4004)
!4200 = !DILocation(line: 368, column: 6, scope: !4000, inlinedAt: !4004)
!4201 = !DILocation(line: 368, column: 26, scope: !4198, inlinedAt: !4004)
!4202 = !DILocation(line: 369, column: 6, scope: !4203, inlinedAt: !4004)
!4203 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 369, column: 6)
!4204 = !DILocation(line: 369, column: 11, scope: !4203, inlinedAt: !4004)
!4205 = !DILocation(line: 369, column: 6, scope: !4000, inlinedAt: !4004)
!4206 = !DILocation(line: 369, column: 26, scope: !4203, inlinedAt: !4004)
!4207 = !DILocation(line: 370, column: 6, scope: !4208, inlinedAt: !4004)
!4208 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 370, column: 6)
!4209 = !DILocation(line: 370, column: 11, scope: !4208, inlinedAt: !4004)
!4210 = !DILocation(line: 370, column: 6, scope: !4000, inlinedAt: !4004)
!4211 = !DILocation(line: 370, column: 26, scope: !4208, inlinedAt: !4004)
!4212 = !DILocation(line: 371, column: 6, scope: !4213, inlinedAt: !4004)
!4213 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 371, column: 6)
!4214 = !DILocation(line: 371, column: 11, scope: !4213, inlinedAt: !4004)
!4215 = !DILocation(line: 371, column: 6, scope: !4000, inlinedAt: !4004)
!4216 = !DILocation(line: 371, column: 26, scope: !4213, inlinedAt: !4004)
!4217 = !DILocation(line: 372, column: 6, scope: !4218, inlinedAt: !4004)
!4218 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 372, column: 6)
!4219 = !DILocation(line: 372, column: 11, scope: !4218, inlinedAt: !4004)
!4220 = !DILocation(line: 372, column: 6, scope: !4000, inlinedAt: !4004)
!4221 = !DILocation(line: 372, column: 26, scope: !4218, inlinedAt: !4004)
!4222 = !DILocation(line: 373, column: 6, scope: !4223, inlinedAt: !4004)
!4223 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 373, column: 6)
!4224 = !DILocation(line: 373, column: 11, scope: !4223, inlinedAt: !4004)
!4225 = !DILocation(line: 373, column: 6, scope: !4000, inlinedAt: !4004)
!4226 = !DILocation(line: 373, column: 26, scope: !4223, inlinedAt: !4004)
!4227 = !DILocation(line: 374, column: 6, scope: !4228, inlinedAt: !4004)
!4228 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 374, column: 6)
!4229 = !DILocation(line: 374, column: 11, scope: !4228, inlinedAt: !4004)
!4230 = !DILocation(line: 374, column: 6, scope: !4000, inlinedAt: !4004)
!4231 = !DILocation(line: 374, column: 26, scope: !4228, inlinedAt: !4004)
!4232 = !DILocation(line: 375, column: 6, scope: !4233, inlinedAt: !4004)
!4233 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 375, column: 6)
!4234 = !DILocation(line: 375, column: 11, scope: !4233, inlinedAt: !4004)
!4235 = !DILocation(line: 375, column: 6, scope: !4000, inlinedAt: !4004)
!4236 = !DILocation(line: 375, column: 27, scope: !4233, inlinedAt: !4004)
!4237 = !DILocation(line: 376, column: 6, scope: !4238, inlinedAt: !4004)
!4238 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 376, column: 6)
!4239 = !DILocation(line: 376, column: 11, scope: !4238, inlinedAt: !4004)
!4240 = !DILocation(line: 376, column: 6, scope: !4000, inlinedAt: !4004)
!4241 = !DILocation(line: 376, column: 32, scope: !4238, inlinedAt: !4004)
!4242 = !DILocation(line: 377, column: 6, scope: !4243, inlinedAt: !4004)
!4243 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 377, column: 6)
!4244 = !DILocation(line: 377, column: 11, scope: !4243, inlinedAt: !4004)
!4245 = !DILocation(line: 377, column: 6, scope: !4000, inlinedAt: !4004)
!4246 = !DILocation(line: 377, column: 32, scope: !4243, inlinedAt: !4004)
!4247 = !DILocation(line: 378, column: 6, scope: !4248, inlinedAt: !4004)
!4248 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 378, column: 6)
!4249 = !DILocation(line: 378, column: 11, scope: !4248, inlinedAt: !4004)
!4250 = !DILocation(line: 378, column: 6, scope: !4000, inlinedAt: !4004)
!4251 = !DILocation(line: 378, column: 32, scope: !4248, inlinedAt: !4004)
!4252 = !DILocation(line: 379, column: 6, scope: !4253, inlinedAt: !4004)
!4253 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 379, column: 6)
!4254 = !DILocation(line: 379, column: 11, scope: !4253, inlinedAt: !4004)
!4255 = !DILocation(line: 379, column: 6, scope: !4000, inlinedAt: !4004)
!4256 = !DILocation(line: 379, column: 33, scope: !4253, inlinedAt: !4004)
!4257 = !DILocation(line: 380, column: 6, scope: !4258, inlinedAt: !4004)
!4258 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 380, column: 6)
!4259 = !DILocation(line: 380, column: 11, scope: !4258, inlinedAt: !4004)
!4260 = !DILocation(line: 380, column: 6, scope: !4000, inlinedAt: !4004)
!4261 = !DILocation(line: 380, column: 33, scope: !4258, inlinedAt: !4004)
!4262 = !DILocation(line: 381, column: 6, scope: !4263, inlinedAt: !4004)
!4263 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 381, column: 6)
!4264 = !DILocation(line: 381, column: 11, scope: !4263, inlinedAt: !4004)
!4265 = !DILocation(line: 381, column: 6, scope: !4000, inlinedAt: !4004)
!4266 = !DILocation(line: 381, column: 33, scope: !4263, inlinedAt: !4004)
!4267 = !DILocation(line: 382, column: 2, scope: !4268, inlinedAt: !4004)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !119, line: 382, column: 2)
!4269 = distinct !DILexicalBlock(scope: !4000, file: !119, line: 382, column: 2)
!4270 = !{i32 -2144236334, i32 -2144236305, i32 -2144236259, i32 -2144236201, i32 -2144236147, i32 -2144236093, i32 -2144236038, i32 -2144236007}
!4271 = !DILocation(line: 382, column: 2, scope: !4272, inlinedAt: !4004)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !119, line: 382, column: 2)
!4273 = distinct !DILexicalBlock(scope: !4269, file: !119, line: 382, column: 2)
!4274 = !{i32 -2144235564, i32 -2144235557, i32 -2144235503, i32 -2144235472, i32 -2144235442}
!4275 = !DILocation(line: 382, column: 2, scope: !4273, inlinedAt: !4004)
!4276 = !DILocation(line: 386, column: 1, scope: !4000, inlinedAt: !4004)
!4277 = !DILocation(line: 547, column: 9, scope: !3981, inlinedAt: !3986)
!4278 = !DILocation(line: 549, column: 8, scope: !4279, inlinedAt: !3986)
!4279 = distinct !DILexicalBlock(scope: !3981, file: !119, line: 549, column: 7)
!4280 = !DILocation(line: 549, column: 7, scope: !3981, inlinedAt: !3986)
!4281 = !DILocation(line: 550, column: 4, scope: !4279, inlinedAt: !3986)
!4282 = !DILocation(line: 553, column: 33, scope: !3981, inlinedAt: !3986)
!4283 = !DILocation(line: 325, column: 6, scope: !4284, inlinedAt: !3998)
!4284 = distinct !DILexicalBlock(scope: !3994, file: !119, line: 325, column: 6)
!4285 = !DILocation(line: 325, column: 6, scope: !3994, inlinedAt: !3998)
!4286 = !DILocation(line: 326, column: 3, scope: !4284, inlinedAt: !3998)
!4287 = !DILocation(line: 332, column: 9, scope: !3994, inlinedAt: !3998)
!4288 = !DILocation(line: 332, column: 15, scope: !3994, inlinedAt: !3998)
!4289 = !DILocation(line: 332, column: 2, scope: !3994, inlinedAt: !3998)
!4290 = !DILocation(line: 336, column: 1, scope: !3994, inlinedAt: !3998)
!4291 = !DILocation(line: 553, column: 5, scope: !3981, inlinedAt: !3986)
!4292 = !DILocation(line: 553, column: 41, scope: !3981, inlinedAt: !3986)
!4293 = !DILocation(line: 554, column: 5, scope: !3981, inlinedAt: !3986)
!4294 = !DILocation(line: 554, column: 12, scope: !3981, inlinedAt: !3986)
!4295 = !DILocation(line: 448, column: 31, scope: !3976, inlinedAt: !3980)
!4296 = !DILocation(line: 448, column: 34, scope: !3976, inlinedAt: !3980)
!4297 = !DILocation(line: 448, column: 14, scope: !3976, inlinedAt: !3980)
!4298 = !DILocation(line: 450, column: 22, scope: !3976, inlinedAt: !3980)
!4299 = !DILocation(line: 450, column: 25, scope: !3976, inlinedAt: !3980)
!4300 = !DILocation(line: 450, column: 30, scope: !3976, inlinedAt: !3980)
!4301 = !DILocation(line: 450, column: 36, scope: !3976, inlinedAt: !3980)
!4302 = !DILocation(line: 450, column: 8, scope: !3976, inlinedAt: !3980)
!4303 = !DILocation(line: 450, column: 6, scope: !3976, inlinedAt: !3980)
!4304 = !DILocation(line: 451, column: 9, scope: !3976, inlinedAt: !3980)
!4305 = !DILocation(line: 552, column: 3, scope: !3981, inlinedAt: !3986)
!4306 = !DILocation(line: 557, column: 19, scope: !3983, inlinedAt: !3986)
!4307 = !DILocation(line: 557, column: 25, scope: !3983, inlinedAt: !3986)
!4308 = !DILocation(line: 557, column: 9, scope: !3983, inlinedAt: !3986)
!4309 = !DILocation(line: 557, column: 2, scope: !3983, inlinedAt: !3986)
!4310 = !DILocation(line: 558, column: 1, scope: !3983, inlinedAt: !3986)
!4311 = !DILocation(line: 356, column: 2, scope: !3938)
!4312 = !DILocation(line: 356, column: 7, scope: !3938)
!4313 = !DILocation(line: 356, column: 22, scope: !3938)
!4314 = !DILocation(line: 357, column: 7, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 357, column: 6)
!4316 = !DILocation(line: 357, column: 12, scope: !4315)
!4317 = !DILocation(line: 357, column: 6, scope: !3938)
!4318 = !DILocation(line: 358, column: 10, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 357, column: 28)
!4320 = !DILocation(line: 359, column: 3, scope: !4319)
!4321 = !DILocation(line: 362, column: 31, scope: !3938)
!4322 = !DILocation(line: 362, column: 41, scope: !3938)
!4323 = !DILocation(line: 362, column: 2, scope: !3938)
!4324 = !DILocation(line: 362, column: 7, scope: !3938)
!4325 = !DILocation(line: 362, column: 29, scope: !3938)
!4326 = !DILocation(line: 365, column: 19, scope: !3938)
!4327 = !DILocation(line: 365, column: 30, scope: !3938)
!4328 = !DILocation(line: 365, column: 2, scope: !3938)
!4329 = !DILocation(line: 368, column: 28, scope: !3938)
!4330 = !DILocation(line: 368, column: 11, scope: !3938)
!4331 = !DILocation(line: 368, column: 9, scope: !3938)
!4332 = !DILocation(line: 369, column: 6, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 369, column: 6)
!4334 = !DILocation(line: 369, column: 6, scope: !3938)
!4335 = !DILocation(line: 371, column: 3, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 369, column: 14)
!4337 = !DILocation(line: 373, column: 3, scope: !4336)
!4338 = !DILocation(line: 376, column: 6, scope: !3938)
!4339 = !DILocation(line: 376, column: 4, scope: !3938)
!4340 = !DILocation(line: 378, column: 2, scope: !3938)
!4341 = !DILocation(line: 383, column: 2, scope: !3938)
!4342 = !DILocation(line: 385, column: 2, scope: !3938)
!4343 = !DILabel(scope: !3938, name: "error", file: !3, line: 387)
!4344 = !DILocation(line: 387, column: 1, scope: !3938)
!4345 = !DILocation(line: 388, column: 12, scope: !3938)
!4346 = !DILocation(line: 388, column: 17, scope: !3938)
!4347 = !DILocation(line: 388, column: 2, scope: !3938)
!4348 = !DILocation(line: 389, column: 9, scope: !3938)
!4349 = !DILocation(line: 389, column: 2, scope: !3938)
!4350 = !DILocation(line: 390, column: 1, scope: !3938)
!4351 = distinct !DISubprogram(name: "lcd_disconnect", scope: !3, file: !3, line: 416, type: !3903, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4352 = !DILocalVariable(name: "interface", arg: 1, scope: !4351, file: !3, line: 416, type: !3714)
!4353 = !DILocation(line: 416, column: 50, scope: !4351)
!4354 = !DILocalVariable(name: "dev", scope: !4351, file: !3, line: 418, type: !3822)
!4355 = !DILocation(line: 418, column: 18, scope: !4351)
!4356 = !DILocation(line: 418, column: 41, scope: !4351)
!4357 = !DILocation(line: 418, column: 24, scope: !4351)
!4358 = !DILocalVariable(name: "minor", scope: !4351, file: !3, line: 419, type: !146)
!4359 = !DILocation(line: 419, column: 6, scope: !4351)
!4360 = !DILocation(line: 419, column: 14, scope: !4351)
!4361 = !DILocation(line: 419, column: 25, scope: !4351)
!4362 = !DILocation(line: 422, column: 21, scope: !4351)
!4363 = !DILocation(line: 422, column: 2, scope: !4351)
!4364 = !DILocation(line: 424, column: 14, scope: !4351)
!4365 = !DILocation(line: 424, column: 19, scope: !4351)
!4366 = !DILocation(line: 424, column: 2, scope: !4351)
!4367 = !DILocation(line: 425, column: 2, scope: !4351)
!4368 = !DILocation(line: 425, column: 7, scope: !4351)
!4369 = !DILocation(line: 425, column: 20, scope: !4351)
!4370 = !DILocation(line: 426, column: 12, scope: !4351)
!4371 = !DILocation(line: 426, column: 17, scope: !4351)
!4372 = !DILocation(line: 426, column: 2, scope: !4351)
!4373 = !DILocation(line: 428, column: 26, scope: !4351)
!4374 = !DILocation(line: 428, column: 31, scope: !4351)
!4375 = !DILocation(line: 428, column: 2, scope: !4351)
!4376 = !DILocation(line: 431, column: 12, scope: !4351)
!4377 = !DILocation(line: 431, column: 17, scope: !4351)
!4378 = !DILocation(line: 431, column: 2, scope: !4351)
!4379 = !DILocation(line: 433, column: 2, scope: !4351)
!4380 = !DILocation(line: 434, column: 1, scope: !4351)
!4381 = distinct !DISubprogram(name: "lcd_suspend", scope: !3, file: !3, line: 401, type: !3911, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4382 = !DILocalVariable(name: "intf", arg: 1, scope: !4381, file: !3, line: 401, type: !3714)
!4383 = !DILocation(line: 401, column: 46, scope: !4381)
!4384 = !DILocalVariable(name: "message", arg: 2, scope: !4381, file: !3, line: 401, type: !3296)
!4385 = !DILocation(line: 401, column: 65, scope: !4381)
!4386 = !DILocalVariable(name: "dev", scope: !4381, file: !3, line: 403, type: !3822)
!4387 = !DILocation(line: 403, column: 18, scope: !4381)
!4388 = !DILocation(line: 403, column: 41, scope: !4381)
!4389 = !DILocation(line: 403, column: 24, scope: !4381)
!4390 = !DILocation(line: 405, column: 7, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 405, column: 6)
!4392 = !DILocation(line: 405, column: 6, scope: !4381)
!4393 = !DILocation(line: 406, column: 3, scope: !4391)
!4394 = !DILocation(line: 407, column: 16, scope: !4381)
!4395 = !DILocation(line: 407, column: 2, scope: !4381)
!4396 = !DILocation(line: 408, column: 2, scope: !4381)
!4397 = !DILocation(line: 409, column: 1, scope: !4381)
!4398 = distinct !DISubprogram(name: "lcd_resume", scope: !3, file: !3, line: 411, type: !3915, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4399 = !DILocalVariable(name: "intf", arg: 1, scope: !4398, file: !3, line: 411, type: !3714)
!4400 = !DILocation(line: 411, column: 45, scope: !4398)
!4401 = !DILocation(line: 413, column: 2, scope: !4398)
!4402 = distinct !DISubprogram(name: "kzalloc", scope: !119, file: !119, line: 662, type: !3984, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4403 = !DILocation(line: 445, column: 72, scope: !3976, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 552, column: 10, scope: !3981, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 664, column: 9, scope: !4402)
!4406 = !DILocation(line: 446, column: 9, scope: !3976, inlinedAt: !4404)
!4407 = !DILocation(line: 446, column: 23, scope: !3976, inlinedAt: !4404)
!4408 = !DILocation(line: 448, column: 8, scope: !3976, inlinedAt: !4404)
!4409 = !DILocation(line: 318, column: 67, scope: !3994, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 553, column: 20, scope: !3981, inlinedAt: !4405)
!4411 = !DILocation(line: 346, column: 58, scope: !4000, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 547, column: 11, scope: !3981, inlinedAt: !4405)
!4413 = !DILocation(line: 472, column: 28, scope: !4006, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 481, column: 9, scope: !4011, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 545, column: 11, scope: !4013, inlinedAt: !4405)
!4416 = !DILocation(line: 472, column: 40, scope: !4006, inlinedAt: !4414)
!4417 = !DILocation(line: 472, column: 60, scope: !4006, inlinedAt: !4414)
!4418 = !DILocation(line: 478, column: 51, scope: !4011, inlinedAt: !4415)
!4419 = !DILocation(line: 478, column: 63, scope: !4011, inlinedAt: !4415)
!4420 = !DILocation(line: 480, column: 15, scope: !4011, inlinedAt: !4415)
!4421 = !DILocation(line: 538, column: 45, scope: !3983, inlinedAt: !4405)
!4422 = !DILocation(line: 538, column: 57, scope: !3983, inlinedAt: !4405)
!4423 = !DILocation(line: 542, column: 16, scope: !3981, inlinedAt: !4405)
!4424 = !DILocalVariable(name: "size", arg: 1, scope: !4402, file: !119, line: 662, type: !292)
!4425 = !DILocation(line: 662, column: 36, scope: !4402)
!4426 = !DILocalVariable(name: "flags", arg: 2, scope: !4402, file: !119, line: 662, type: !137)
!4427 = !DILocation(line: 662, column: 48, scope: !4402)
!4428 = !DILocation(line: 664, column: 17, scope: !4402)
!4429 = !DILocation(line: 664, column: 23, scope: !4402)
!4430 = !DILocation(line: 664, column: 29, scope: !4402)
!4431 = !DILocation(line: 540, column: 27, scope: !3982, inlinedAt: !4405)
!4432 = !DILocation(line: 540, column: 6, scope: !3982, inlinedAt: !4405)
!4433 = !DILocation(line: 540, column: 6, scope: !3983, inlinedAt: !4405)
!4434 = !DILocation(line: 544, column: 7, scope: !4013, inlinedAt: !4405)
!4435 = !DILocation(line: 544, column: 12, scope: !4013, inlinedAt: !4405)
!4436 = !DILocation(line: 544, column: 7, scope: !3981, inlinedAt: !4405)
!4437 = !DILocation(line: 545, column: 25, scope: !4013, inlinedAt: !4405)
!4438 = !DILocation(line: 545, column: 31, scope: !4013, inlinedAt: !4405)
!4439 = !DILocation(line: 480, column: 33, scope: !4011, inlinedAt: !4415)
!4440 = !DILocation(line: 480, column: 23, scope: !4011, inlinedAt: !4415)
!4441 = !DILocation(line: 481, column: 29, scope: !4011, inlinedAt: !4415)
!4442 = !DILocation(line: 481, column: 35, scope: !4011, inlinedAt: !4415)
!4443 = !DILocation(line: 481, column: 42, scope: !4011, inlinedAt: !4415)
!4444 = !DILocation(line: 474, column: 23, scope: !4006, inlinedAt: !4414)
!4445 = !DILocation(line: 474, column: 29, scope: !4006, inlinedAt: !4414)
!4446 = !DILocation(line: 474, column: 36, scope: !4006, inlinedAt: !4414)
!4447 = !DILocation(line: 474, column: 9, scope: !4006, inlinedAt: !4414)
!4448 = !DILocation(line: 545, column: 4, scope: !4013, inlinedAt: !4405)
!4449 = !DILocation(line: 547, column: 25, scope: !3981, inlinedAt: !4405)
!4450 = !DILocation(line: 348, column: 7, scope: !4123, inlinedAt: !4412)
!4451 = !DILocation(line: 348, column: 6, scope: !4000, inlinedAt: !4412)
!4452 = !DILocation(line: 349, column: 3, scope: !4123, inlinedAt: !4412)
!4453 = !DILocation(line: 351, column: 6, scope: !4127, inlinedAt: !4412)
!4454 = !DILocation(line: 351, column: 11, scope: !4127, inlinedAt: !4412)
!4455 = !DILocation(line: 351, column: 6, scope: !4000, inlinedAt: !4412)
!4456 = !DILocation(line: 352, column: 3, scope: !4127, inlinedAt: !4412)
!4457 = !DILocation(line: 354, column: 32, scope: !4132, inlinedAt: !4412)
!4458 = !DILocation(line: 354, column: 37, scope: !4132, inlinedAt: !4412)
!4459 = !DILocation(line: 354, column: 42, scope: !4132, inlinedAt: !4412)
!4460 = !DILocation(line: 354, column: 45, scope: !4132, inlinedAt: !4412)
!4461 = !DILocation(line: 354, column: 50, scope: !4132, inlinedAt: !4412)
!4462 = !DILocation(line: 354, column: 6, scope: !4000, inlinedAt: !4412)
!4463 = !DILocation(line: 355, column: 3, scope: !4132, inlinedAt: !4412)
!4464 = !DILocation(line: 356, column: 32, scope: !4140, inlinedAt: !4412)
!4465 = !DILocation(line: 356, column: 37, scope: !4140, inlinedAt: !4412)
!4466 = !DILocation(line: 356, column: 43, scope: !4140, inlinedAt: !4412)
!4467 = !DILocation(line: 356, column: 46, scope: !4140, inlinedAt: !4412)
!4468 = !DILocation(line: 356, column: 51, scope: !4140, inlinedAt: !4412)
!4469 = !DILocation(line: 356, column: 6, scope: !4000, inlinedAt: !4412)
!4470 = !DILocation(line: 357, column: 3, scope: !4140, inlinedAt: !4412)
!4471 = !DILocation(line: 358, column: 6, scope: !4148, inlinedAt: !4412)
!4472 = !DILocation(line: 358, column: 11, scope: !4148, inlinedAt: !4412)
!4473 = !DILocation(line: 358, column: 6, scope: !4000, inlinedAt: !4412)
!4474 = !DILocation(line: 358, column: 26, scope: !4148, inlinedAt: !4412)
!4475 = !DILocation(line: 359, column: 6, scope: !4153, inlinedAt: !4412)
!4476 = !DILocation(line: 359, column: 11, scope: !4153, inlinedAt: !4412)
!4477 = !DILocation(line: 359, column: 6, scope: !4000, inlinedAt: !4412)
!4478 = !DILocation(line: 359, column: 26, scope: !4153, inlinedAt: !4412)
!4479 = !DILocation(line: 360, column: 6, scope: !4158, inlinedAt: !4412)
!4480 = !DILocation(line: 360, column: 11, scope: !4158, inlinedAt: !4412)
!4481 = !DILocation(line: 360, column: 6, scope: !4000, inlinedAt: !4412)
!4482 = !DILocation(line: 360, column: 26, scope: !4158, inlinedAt: !4412)
!4483 = !DILocation(line: 361, column: 6, scope: !4163, inlinedAt: !4412)
!4484 = !DILocation(line: 361, column: 11, scope: !4163, inlinedAt: !4412)
!4485 = !DILocation(line: 361, column: 6, scope: !4000, inlinedAt: !4412)
!4486 = !DILocation(line: 361, column: 26, scope: !4163, inlinedAt: !4412)
!4487 = !DILocation(line: 362, column: 6, scope: !4168, inlinedAt: !4412)
!4488 = !DILocation(line: 362, column: 11, scope: !4168, inlinedAt: !4412)
!4489 = !DILocation(line: 362, column: 6, scope: !4000, inlinedAt: !4412)
!4490 = !DILocation(line: 362, column: 26, scope: !4168, inlinedAt: !4412)
!4491 = !DILocation(line: 363, column: 6, scope: !4173, inlinedAt: !4412)
!4492 = !DILocation(line: 363, column: 11, scope: !4173, inlinedAt: !4412)
!4493 = !DILocation(line: 363, column: 6, scope: !4000, inlinedAt: !4412)
!4494 = !DILocation(line: 363, column: 26, scope: !4173, inlinedAt: !4412)
!4495 = !DILocation(line: 364, column: 6, scope: !4178, inlinedAt: !4412)
!4496 = !DILocation(line: 364, column: 11, scope: !4178, inlinedAt: !4412)
!4497 = !DILocation(line: 364, column: 6, scope: !4000, inlinedAt: !4412)
!4498 = !DILocation(line: 364, column: 26, scope: !4178, inlinedAt: !4412)
!4499 = !DILocation(line: 365, column: 6, scope: !4183, inlinedAt: !4412)
!4500 = !DILocation(line: 365, column: 11, scope: !4183, inlinedAt: !4412)
!4501 = !DILocation(line: 365, column: 6, scope: !4000, inlinedAt: !4412)
!4502 = !DILocation(line: 365, column: 26, scope: !4183, inlinedAt: !4412)
!4503 = !DILocation(line: 366, column: 6, scope: !4188, inlinedAt: !4412)
!4504 = !DILocation(line: 366, column: 11, scope: !4188, inlinedAt: !4412)
!4505 = !DILocation(line: 366, column: 6, scope: !4000, inlinedAt: !4412)
!4506 = !DILocation(line: 366, column: 26, scope: !4188, inlinedAt: !4412)
!4507 = !DILocation(line: 367, column: 6, scope: !4193, inlinedAt: !4412)
!4508 = !DILocation(line: 367, column: 11, scope: !4193, inlinedAt: !4412)
!4509 = !DILocation(line: 367, column: 6, scope: !4000, inlinedAt: !4412)
!4510 = !DILocation(line: 367, column: 26, scope: !4193, inlinedAt: !4412)
!4511 = !DILocation(line: 368, column: 6, scope: !4198, inlinedAt: !4412)
!4512 = !DILocation(line: 368, column: 11, scope: !4198, inlinedAt: !4412)
!4513 = !DILocation(line: 368, column: 6, scope: !4000, inlinedAt: !4412)
!4514 = !DILocation(line: 368, column: 26, scope: !4198, inlinedAt: !4412)
!4515 = !DILocation(line: 369, column: 6, scope: !4203, inlinedAt: !4412)
!4516 = !DILocation(line: 369, column: 11, scope: !4203, inlinedAt: !4412)
!4517 = !DILocation(line: 369, column: 6, scope: !4000, inlinedAt: !4412)
!4518 = !DILocation(line: 369, column: 26, scope: !4203, inlinedAt: !4412)
!4519 = !DILocation(line: 370, column: 6, scope: !4208, inlinedAt: !4412)
!4520 = !DILocation(line: 370, column: 11, scope: !4208, inlinedAt: !4412)
!4521 = !DILocation(line: 370, column: 6, scope: !4000, inlinedAt: !4412)
!4522 = !DILocation(line: 370, column: 26, scope: !4208, inlinedAt: !4412)
!4523 = !DILocation(line: 371, column: 6, scope: !4213, inlinedAt: !4412)
!4524 = !DILocation(line: 371, column: 11, scope: !4213, inlinedAt: !4412)
!4525 = !DILocation(line: 371, column: 6, scope: !4000, inlinedAt: !4412)
!4526 = !DILocation(line: 371, column: 26, scope: !4213, inlinedAt: !4412)
!4527 = !DILocation(line: 372, column: 6, scope: !4218, inlinedAt: !4412)
!4528 = !DILocation(line: 372, column: 11, scope: !4218, inlinedAt: !4412)
!4529 = !DILocation(line: 372, column: 6, scope: !4000, inlinedAt: !4412)
!4530 = !DILocation(line: 372, column: 26, scope: !4218, inlinedAt: !4412)
!4531 = !DILocation(line: 373, column: 6, scope: !4223, inlinedAt: !4412)
!4532 = !DILocation(line: 373, column: 11, scope: !4223, inlinedAt: !4412)
!4533 = !DILocation(line: 373, column: 6, scope: !4000, inlinedAt: !4412)
!4534 = !DILocation(line: 373, column: 26, scope: !4223, inlinedAt: !4412)
!4535 = !DILocation(line: 374, column: 6, scope: !4228, inlinedAt: !4412)
!4536 = !DILocation(line: 374, column: 11, scope: !4228, inlinedAt: !4412)
!4537 = !DILocation(line: 374, column: 6, scope: !4000, inlinedAt: !4412)
!4538 = !DILocation(line: 374, column: 26, scope: !4228, inlinedAt: !4412)
!4539 = !DILocation(line: 375, column: 6, scope: !4233, inlinedAt: !4412)
!4540 = !DILocation(line: 375, column: 11, scope: !4233, inlinedAt: !4412)
!4541 = !DILocation(line: 375, column: 6, scope: !4000, inlinedAt: !4412)
!4542 = !DILocation(line: 375, column: 27, scope: !4233, inlinedAt: !4412)
!4543 = !DILocation(line: 376, column: 6, scope: !4238, inlinedAt: !4412)
!4544 = !DILocation(line: 376, column: 11, scope: !4238, inlinedAt: !4412)
!4545 = !DILocation(line: 376, column: 6, scope: !4000, inlinedAt: !4412)
!4546 = !DILocation(line: 376, column: 32, scope: !4238, inlinedAt: !4412)
!4547 = !DILocation(line: 377, column: 6, scope: !4243, inlinedAt: !4412)
!4548 = !DILocation(line: 377, column: 11, scope: !4243, inlinedAt: !4412)
!4549 = !DILocation(line: 377, column: 6, scope: !4000, inlinedAt: !4412)
!4550 = !DILocation(line: 377, column: 32, scope: !4243, inlinedAt: !4412)
!4551 = !DILocation(line: 378, column: 6, scope: !4248, inlinedAt: !4412)
!4552 = !DILocation(line: 378, column: 11, scope: !4248, inlinedAt: !4412)
!4553 = !DILocation(line: 378, column: 6, scope: !4000, inlinedAt: !4412)
!4554 = !DILocation(line: 378, column: 32, scope: !4248, inlinedAt: !4412)
!4555 = !DILocation(line: 379, column: 6, scope: !4253, inlinedAt: !4412)
!4556 = !DILocation(line: 379, column: 11, scope: !4253, inlinedAt: !4412)
!4557 = !DILocation(line: 379, column: 6, scope: !4000, inlinedAt: !4412)
!4558 = !DILocation(line: 379, column: 33, scope: !4253, inlinedAt: !4412)
!4559 = !DILocation(line: 380, column: 6, scope: !4258, inlinedAt: !4412)
!4560 = !DILocation(line: 380, column: 11, scope: !4258, inlinedAt: !4412)
!4561 = !DILocation(line: 380, column: 6, scope: !4000, inlinedAt: !4412)
!4562 = !DILocation(line: 380, column: 33, scope: !4258, inlinedAt: !4412)
!4563 = !DILocation(line: 381, column: 6, scope: !4263, inlinedAt: !4412)
!4564 = !DILocation(line: 381, column: 11, scope: !4263, inlinedAt: !4412)
!4565 = !DILocation(line: 381, column: 6, scope: !4000, inlinedAt: !4412)
!4566 = !DILocation(line: 381, column: 33, scope: !4263, inlinedAt: !4412)
!4567 = !DILocation(line: 382, column: 2, scope: !4268, inlinedAt: !4412)
!4568 = !DILocation(line: 382, column: 2, scope: !4272, inlinedAt: !4412)
!4569 = !DILocation(line: 382, column: 2, scope: !4273, inlinedAt: !4412)
!4570 = !DILocation(line: 386, column: 1, scope: !4000, inlinedAt: !4412)
!4571 = !DILocation(line: 547, column: 9, scope: !3981, inlinedAt: !4405)
!4572 = !DILocation(line: 549, column: 8, scope: !4279, inlinedAt: !4405)
!4573 = !DILocation(line: 549, column: 7, scope: !3981, inlinedAt: !4405)
!4574 = !DILocation(line: 550, column: 4, scope: !4279, inlinedAt: !4405)
!4575 = !DILocation(line: 553, column: 33, scope: !3981, inlinedAt: !4405)
!4576 = !DILocation(line: 325, column: 6, scope: !4284, inlinedAt: !4410)
!4577 = !DILocation(line: 325, column: 6, scope: !3994, inlinedAt: !4410)
!4578 = !DILocation(line: 326, column: 3, scope: !4284, inlinedAt: !4410)
!4579 = !DILocation(line: 332, column: 9, scope: !3994, inlinedAt: !4410)
!4580 = !DILocation(line: 332, column: 15, scope: !3994, inlinedAt: !4410)
!4581 = !DILocation(line: 332, column: 2, scope: !3994, inlinedAt: !4410)
!4582 = !DILocation(line: 336, column: 1, scope: !3994, inlinedAt: !4410)
!4583 = !DILocation(line: 553, column: 5, scope: !3981, inlinedAt: !4405)
!4584 = !DILocation(line: 553, column: 41, scope: !3981, inlinedAt: !4405)
!4585 = !DILocation(line: 554, column: 5, scope: !3981, inlinedAt: !4405)
!4586 = !DILocation(line: 554, column: 12, scope: !3981, inlinedAt: !4405)
!4587 = !DILocation(line: 448, column: 31, scope: !3976, inlinedAt: !4404)
!4588 = !DILocation(line: 448, column: 34, scope: !3976, inlinedAt: !4404)
!4589 = !DILocation(line: 448, column: 14, scope: !3976, inlinedAt: !4404)
!4590 = !DILocation(line: 450, column: 22, scope: !3976, inlinedAt: !4404)
!4591 = !DILocation(line: 450, column: 25, scope: !3976, inlinedAt: !4404)
!4592 = !DILocation(line: 450, column: 30, scope: !3976, inlinedAt: !4404)
!4593 = !DILocation(line: 450, column: 36, scope: !3976, inlinedAt: !4404)
!4594 = !DILocation(line: 450, column: 8, scope: !3976, inlinedAt: !4404)
!4595 = !DILocation(line: 450, column: 6, scope: !3976, inlinedAt: !4404)
!4596 = !DILocation(line: 451, column: 9, scope: !3976, inlinedAt: !4404)
!4597 = !DILocation(line: 552, column: 3, scope: !3981, inlinedAt: !4405)
!4598 = !DILocation(line: 557, column: 19, scope: !3983, inlinedAt: !4405)
!4599 = !DILocation(line: 557, column: 25, scope: !3983, inlinedAt: !4405)
!4600 = !DILocation(line: 557, column: 9, scope: !3983, inlinedAt: !4405)
!4601 = !DILocation(line: 557, column: 2, scope: !3983, inlinedAt: !4405)
!4602 = !DILocation(line: 558, column: 1, scope: !3983, inlinedAt: !4405)
!4603 = !DILocation(line: 664, column: 2, scope: !4402)
!4604 = distinct !DISubprogram(name: "kref_init", scope: !3174, file: !3174, line: 29, type: !4605, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !4607}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!4608 = !DILocalVariable(name: "kref", arg: 1, scope: !4604, file: !3174, line: 29, type: !4607)
!4609 = !DILocation(line: 29, column: 43, scope: !4604)
!4610 = !DILocation(line: 31, column: 16, scope: !4604)
!4611 = !DILocation(line: 31, column: 22, scope: !4604)
!4612 = !DILocation(line: 31, column: 2, scope: !4604)
!4613 = !DILocation(line: 32, column: 1, scope: !4604)
!4614 = !DILocalVariable(name: "sem", arg: 1, scope: !3941, file: !3834, line: 31, type: !3944)
!4615 = !DILocation(line: 31, column: 48, scope: !3941)
!4616 = !DILocalVariable(name: "val", arg: 2, scope: !3941, file: !3834, line: 31, type: !146)
!4617 = !DILocation(line: 31, column: 57, scope: !3941)
!4618 = !DILocation(line: 34, column: 3, scope: !3941)
!4619 = !DILocation(line: 34, column: 28, scope: !3941)
!4620 = !DILocation(line: 34, column: 9, scope: !3941)
!4621 = !DILocation(line: 35, column: 2, scope: !3941)
!4622 = !DILocation(line: 35, column: 2, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !3941, file: !3834, line: 35, column: 2)
!4624 = !DILocation(line: 36, column: 1, scope: !3941)
!4625 = !DILocalVariable(name: "lock", arg: 1, scope: !4626, file: !4627, line: 327, type: !4631)
!4626 = distinct !DISubprogram(name: "spinlock_check", scope: !4627, file: !4627, line: 327, type: !4628, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4627 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!4630, !4631}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!4632 = !DILocation(line: 327, column: 67, scope: !4626, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 1373, column: 2, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !3947, file: !6, line: 1373, column: 2)
!4635 = !DILocalVariable(name: "anchor", arg: 1, scope: !3947, file: !6, line: 1368, type: !3950)
!4636 = !DILocation(line: 1368, column: 55, scope: !3947)
!4637 = !DILocation(line: 1370, column: 9, scope: !3947)
!4638 = !DILocation(line: 1370, column: 2, scope: !3947)
!4639 = !DILocation(line: 1371, column: 18, scope: !3947)
!4640 = !DILocation(line: 1371, column: 26, scope: !3947)
!4641 = !DILocation(line: 1371, column: 2, scope: !3947)
!4642 = !DILocation(line: 1372, column: 2, scope: !3947)
!4643 = !DILocation(line: 1372, column: 2, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !3947, file: !6, line: 1372, column: 2)
!4645 = !DILocation(line: 1373, column: 2, scope: !3947)
!4646 = !DILocation(line: 1373, column: 2, scope: !4634)
!4647 = !DILocation(line: 329, column: 10, scope: !4626, inlinedAt: !4633)
!4648 = !DILocation(line: 329, column: 16, scope: !4626, inlinedAt: !4633)
!4649 = !DILocation(line: 1374, column: 1, scope: !3947)
!4650 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4651, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!155, !3714}
!4653 = !DILocalVariable(name: "intf", arg: 1, scope: !4650, file: !6, line: 715, type: !3714)
!4654 = !DILocation(line: 715, column: 76, scope: !4650)
!4655 = !DILocalVariable(name: "__mptr", scope: !4656, file: !6, line: 717, type: !154)
!4656 = distinct !DILexicalBlock(scope: !4650, file: !6, line: 717, column: 9)
!4657 = !DILocation(line: 717, column: 9, scope: !4656)
!4658 = !DILocation(line: 717, column: 9, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4656, file: !6, line: 717, column: 9)
!4660 = !DILocation(line: 717, column: 2, scope: !4650)
!4661 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !88, file: !88, line: 647, type: !4662, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!146, !4664}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!4666 = !DILocalVariable(name: "epd", arg: 1, scope: !4661, file: !88, line: 647, type: !4664)
!4667 = !DILocation(line: 647, column: 75, scope: !4661)
!4668 = !DILocation(line: 649, column: 9, scope: !4661)
!4669 = !DILocation(line: 649, column: 44, scope: !4661)
!4670 = !DILocation(line: 649, column: 2, scope: !4661)
!4671 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !4672, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !3714, !154}
!4674 = !DILocalVariable(name: "intf", arg: 1, scope: !4671, file: !6, line: 268, type: !3714)
!4675 = !DILocation(line: 268, column: 59, scope: !4671)
!4676 = !DILocalVariable(name: "data", arg: 2, scope: !4671, file: !6, line: 268, type: !154)
!4677 = !DILocation(line: 268, column: 71, scope: !4671)
!4678 = !DILocation(line: 270, column: 19, scope: !4671)
!4679 = !DILocation(line: 270, column: 25, scope: !4671)
!4680 = !DILocation(line: 270, column: 30, scope: !4671)
!4681 = !DILocation(line: 270, column: 2, scope: !4671)
!4682 = !DILocation(line: 271, column: 1, scope: !4671)
!4683 = distinct !DISubprogram(name: "kref_put", scope: !3174, file: !3174, line: 62, type: !4684, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!146, !4607, !4686}
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4687 = !DILocalVariable(name: "kref", arg: 1, scope: !4683, file: !3174, line: 62, type: !4607)
!4688 = !DILocation(line: 62, column: 41, scope: !4683)
!4689 = !DILocalVariable(name: "release", arg: 2, scope: !4683, file: !3174, line: 62, type: !4686)
!4690 = !DILocation(line: 62, column: 54, scope: !4683)
!4691 = !DILocation(line: 64, column: 29, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4683, file: !3174, line: 64, column: 6)
!4693 = !DILocation(line: 64, column: 35, scope: !4692)
!4694 = !DILocation(line: 64, column: 6, scope: !4692)
!4695 = !DILocation(line: 64, column: 6, scope: !4683)
!4696 = !DILocation(line: 65, column: 3, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4692, file: !3174, line: 64, column: 46)
!4698 = !DILocation(line: 65, column: 11, scope: !4697)
!4699 = !DILocation(line: 66, column: 3, scope: !4697)
!4700 = !DILocation(line: 68, column: 2, scope: !4683)
!4701 = !DILocation(line: 69, column: 1, scope: !4683)
!4702 = distinct !DISubprogram(name: "lcd_delete", scope: !3, file: !3, line: 67, type: !4605, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4703 = !DILocalVariable(name: "kref", arg: 1, scope: !4702, file: !3, line: 67, type: !4607)
!4704 = !DILocation(line: 67, column: 37, scope: !4702)
!4705 = !DILocalVariable(name: "dev", scope: !4702, file: !3, line: 69, type: !3822)
!4706 = !DILocation(line: 69, column: 18, scope: !4702)
!4707 = !DILocalVariable(name: "__mptr", scope: !4708, file: !3, line: 69, type: !154)
!4708 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 69, column: 24)
!4709 = !DILocation(line: 69, column: 24, scope: !4708)
!4710 = !DILocation(line: 69, column: 24, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 69, column: 24)
!4712 = !DILocation(line: 71, column: 14, scope: !4702)
!4713 = !DILocation(line: 71, column: 19, scope: !4702)
!4714 = !DILocation(line: 71, column: 2, scope: !4702)
!4715 = !DILocation(line: 72, column: 8, scope: !4702)
!4716 = !DILocation(line: 72, column: 13, scope: !4702)
!4717 = !DILocation(line: 72, column: 2, scope: !4702)
!4718 = !DILocation(line: 73, column: 8, scope: !4702)
!4719 = !DILocation(line: 73, column: 2, scope: !4702)
!4720 = !DILocation(line: 74, column: 1, scope: !4702)
!4721 = distinct !DISubprogram(name: "refcount_set", scope: !126, file: !126, line: 134, type: !4722, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4724, !146}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!4725 = !DILocalVariable(name: "v", arg: 1, scope: !4726, file: !4727, line: 39, type: !4730)
!4726 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4727, file: !4727, line: 39, type: !4728, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4727 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4728 = !DISubroutineType(types: !4729)
!4729 = !{null, !4730, !146}
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!4731 = !DILocation(line: 39, column: 55, scope: !4726, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 46, column: 2, scope: !4733, inlinedAt: !4735)
!4733 = distinct !DISubprogram(name: "atomic_set", scope: !4734, file: !4734, line: 43, type: !4728, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4734 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4735 = distinct !DILocation(line: 136, column: 2, scope: !4721)
!4736 = !DILocalVariable(name: "i", arg: 2, scope: !4726, file: !4727, line: 39, type: !146)
!4737 = !DILocation(line: 39, column: 62, scope: !4726, inlinedAt: !4732)
!4738 = !DILocalVariable(name: "v", arg: 1, scope: !4739, file: !4740, line: 84, type: !4743)
!4739 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4740, file: !4740, line: 84, type: !4741, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4740 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4741 = !DISubroutineType(types: !4742)
!4742 = !{null, !4743, !292}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4745)
!4745 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4746 = !DILocation(line: 84, column: 74, scope: !4739, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 45, column: 2, scope: !4733, inlinedAt: !4735)
!4748 = !DILocalVariable(name: "size", arg: 2, scope: !4739, file: !4740, line: 84, type: !292)
!4749 = !DILocation(line: 84, column: 84, scope: !4739, inlinedAt: !4747)
!4750 = !DILocalVariable(name: "v", arg: 1, scope: !4733, file: !4734, line: 43, type: !4730)
!4751 = !DILocation(line: 43, column: 22, scope: !4733, inlinedAt: !4735)
!4752 = !DILocalVariable(name: "i", arg: 2, scope: !4733, file: !4734, line: 43, type: !146)
!4753 = !DILocation(line: 43, column: 29, scope: !4733, inlinedAt: !4735)
!4754 = !DILocalVariable(name: "r", arg: 1, scope: !4721, file: !126, line: 134, type: !4724)
!4755 = !DILocation(line: 134, column: 45, scope: !4721)
!4756 = !DILocalVariable(name: "n", arg: 2, scope: !4721, file: !126, line: 134, type: !146)
!4757 = !DILocation(line: 134, column: 52, scope: !4721)
!4758 = !DILocation(line: 136, column: 14, scope: !4721)
!4759 = !DILocation(line: 136, column: 17, scope: !4721)
!4760 = !DILocation(line: 136, column: 23, scope: !4721)
!4761 = !DILocation(line: 45, column: 26, scope: !4733, inlinedAt: !4735)
!4762 = !DILocation(line: 86, column: 20, scope: !4739, inlinedAt: !4747)
!4763 = !DILocation(line: 86, column: 23, scope: !4739, inlinedAt: !4747)
!4764 = !DILocation(line: 86, column: 2, scope: !4739, inlinedAt: !4747)
!4765 = !DILocation(line: 87, column: 2, scope: !4739, inlinedAt: !4747)
!4766 = !DILocation(line: 46, column: 18, scope: !4733, inlinedAt: !4735)
!4767 = !DILocation(line: 46, column: 21, scope: !4733, inlinedAt: !4735)
!4768 = !DILocation(line: 41, column: 2, scope: !4769, inlinedAt: !4732)
!4769 = distinct !DILexicalBlock(scope: !4726, file: !4727, line: 41, column: 2)
!4770 = !DILocation(line: 137, column: 1, scope: !4721)
!4771 = distinct !DISubprogram(name: "kasan_check_write", scope: !4772, file: !4772, line: 38, type: !4773, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4772 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!457, !4743, !7}
!4775 = !DILocalVariable(name: "p", arg: 1, scope: !4771, file: !4772, line: 38, type: !4743)
!4776 = !DILocation(line: 38, column: 59, scope: !4771)
!4777 = !DILocalVariable(name: "size", arg: 2, scope: !4771, file: !4772, line: 38, type: !7)
!4778 = !DILocation(line: 38, column: 75, scope: !4771)
!4779 = !DILocation(line: 40, column: 2, scope: !4771)
!4780 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4781, file: !4781, line: 178, type: !4782, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4781 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4782 = !DISubroutineType(types: !4783)
!4783 = !{null, !4743, !292, !146}
!4784 = !DILocalVariable(name: "ptr", arg: 1, scope: !4780, file: !4781, line: 178, type: !4743)
!4785 = !DILocation(line: 178, column: 60, scope: !4780)
!4786 = !DILocalVariable(name: "size", arg: 2, scope: !4780, file: !4781, line: 178, type: !292)
!4787 = !DILocation(line: 178, column: 72, scope: !4780)
!4788 = !DILocalVariable(name: "type", arg: 3, scope: !4780, file: !4781, line: 179, type: !146)
!4789 = !DILocation(line: 179, column: 15, scope: !4780)
!4790 = !DILocation(line: 179, column: 23, scope: !4780)
!4791 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4792, file: !4792, line: 33, type: !4793, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4792 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4793 = !DISubroutineType(types: !4794)
!4794 = !{null, !149}
!4795 = !DILocalVariable(name: "list", arg: 1, scope: !4791, file: !4792, line: 33, type: !149)
!4796 = !DILocation(line: 33, column: 53, scope: !4791)
!4797 = !DILocation(line: 35, column: 2, scope: !4791)
!4798 = !DILocation(line: 35, column: 2, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4791, file: !4792, line: 35, column: 2)
!4800 = !DILocation(line: 35, column: 2, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4799, file: !4792, line: 35, column: 2)
!4802 = !DILocation(line: 35, column: 2, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4799, file: !4792, line: 35, column: 2)
!4804 = !DILocation(line: 36, column: 15, scope: !4791)
!4805 = !DILocation(line: 36, column: 2, scope: !4791)
!4806 = !DILocation(line: 36, column: 8, scope: !4791)
!4807 = !DILocation(line: 36, column: 13, scope: !4791)
!4808 = !DILocation(line: 37, column: 1, scope: !4791)
!4809 = distinct !DISubprogram(name: "get_order", scope: !4810, file: !4810, line: 29, type: !4811, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4810 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!146, !295}
!4813 = !DILocalVariable(name: "x", arg: 1, scope: !4814, file: !4815, line: 366, type: !389)
!4814 = distinct !DISubprogram(name: "fls64", scope: !4815, file: !4815, line: 366, type: !4816, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4815 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!146, !389}
!4818 = !DILocation(line: 366, column: 40, scope: !4814, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 46, column: 9, scope: !4809)
!4820 = !DILocalVariable(name: "bitpos", scope: !4814, file: !4815, line: 368, type: !146)
!4821 = !DILocation(line: 368, column: 6, scope: !4814, inlinedAt: !4819)
!4822 = !DILocalVariable(name: "size", arg: 1, scope: !4809, file: !4810, line: 29, type: !295)
!4823 = !DILocation(line: 29, column: 63, scope: !4809)
!4824 = !DILocation(line: 31, column: 27, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4809, file: !4810, line: 31, column: 6)
!4826 = !DILocation(line: 31, column: 6, scope: !4825)
!4827 = !DILocation(line: 31, column: 6, scope: !4809)
!4828 = !DILocation(line: 32, column: 8, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !4810, line: 32, column: 7)
!4830 = distinct !DILexicalBlock(scope: !4825, file: !4810, line: 31, column: 34)
!4831 = !DILocation(line: 32, column: 7, scope: !4830)
!4832 = !DILocation(line: 33, column: 4, scope: !4829)
!4833 = !DILocation(line: 35, column: 7, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4830, file: !4810, line: 35, column: 7)
!4835 = !DILocation(line: 35, column: 12, scope: !4834)
!4836 = !DILocation(line: 35, column: 7, scope: !4830)
!4837 = !DILocation(line: 36, column: 4, scope: !4834)
!4838 = !DILocation(line: 38, column: 10, scope: !4830)
!4839 = !DILocation(line: 38, column: 28, scope: !4830)
!4840 = !DILocation(line: 38, column: 41, scope: !4830)
!4841 = !DILocation(line: 38, column: 3, scope: !4830)
!4842 = !DILocation(line: 41, column: 6, scope: !4809)
!4843 = !DILocation(line: 42, column: 7, scope: !4809)
!4844 = !DILocation(line: 46, column: 15, scope: !4809)
!4845 = !DILocation(line: 374, column: 2, scope: !4814, inlinedAt: !4819)
!4846 = !DILocation(line: 376, column: 14, scope: !4814, inlinedAt: !4819)
!4847 = !{i32 307991}
!4848 = !DILocation(line: 377, column: 9, scope: !4814, inlinedAt: !4819)
!4849 = !DILocation(line: 377, column: 16, scope: !4814, inlinedAt: !4819)
!4850 = !DILocation(line: 46, column: 2, scope: !4809)
!4851 = !DILocation(line: 48, column: 1, scope: !4809)
!4852 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4853, file: !4853, line: 30, type: !4854, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4853 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!146, !388}
!4856 = !DILocation(line: 366, column: 40, scope: !4814, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 32, column: 9, scope: !4852)
!4858 = !DILocation(line: 368, column: 6, scope: !4814, inlinedAt: !4857)
!4859 = !DILocalVariable(name: "n", arg: 1, scope: !4852, file: !4853, line: 30, type: !388)
!4860 = !DILocation(line: 30, column: 21, scope: !4852)
!4861 = !DILocation(line: 32, column: 15, scope: !4852)
!4862 = !DILocation(line: 374, column: 2, scope: !4814, inlinedAt: !4857)
!4863 = !DILocation(line: 376, column: 14, scope: !4814, inlinedAt: !4857)
!4864 = !DILocation(line: 377, column: 9, scope: !4814, inlinedAt: !4857)
!4865 = !DILocation(line: 377, column: 16, scope: !4814, inlinedAt: !4857)
!4866 = !DILocation(line: 32, column: 18, scope: !4852)
!4867 = !DILocation(line: 32, column: 2, scope: !4852)
!4868 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1998, file: !1998, line: 137, type: !4869, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!154, !901, !3014, !292, !137}
!4871 = !DILocalVariable(name: "s", arg: 1, scope: !4868, file: !1998, line: 137, type: !901)
!4872 = !DILocation(line: 137, column: 54, scope: !4868)
!4873 = !DILocalVariable(name: "object", arg: 2, scope: !4868, file: !1998, line: 137, type: !3014)
!4874 = !DILocation(line: 137, column: 69, scope: !4868)
!4875 = !DILocalVariable(name: "size", arg: 3, scope: !4868, file: !1998, line: 138, type: !292)
!4876 = !DILocation(line: 138, column: 12, scope: !4868)
!4877 = !DILocalVariable(name: "flags", arg: 4, scope: !4868, file: !1998, line: 138, type: !137)
!4878 = !DILocation(line: 138, column: 24, scope: !4868)
!4879 = !DILocation(line: 140, column: 17, scope: !4868)
!4880 = !DILocation(line: 140, column: 2, scope: !4868)
!4881 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !4882, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{null, !186, !154}
!4884 = !DILocalVariable(name: "dev", arg: 1, scope: !4881, file: !67, line: 660, type: !186)
!4885 = !DILocation(line: 660, column: 51, scope: !4881)
!4886 = !DILocalVariable(name: "data", arg: 2, scope: !4881, file: !67, line: 660, type: !154)
!4887 = !DILocation(line: 660, column: 62, scope: !4881)
!4888 = !DILocation(line: 662, column: 21, scope: !4881)
!4889 = !DILocation(line: 662, column: 2, scope: !4881)
!4890 = !DILocation(line: 662, column: 7, scope: !4881)
!4891 = !DILocation(line: 662, column: 19, scope: !4881)
!4892 = !DILocation(line: 663, column: 1, scope: !4881)
!4893 = distinct !DISubprogram(name: "lcd_read", scope: !3, file: !3, line: 124, type: !2683, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4894 = !DILocalVariable(name: "addr", arg: 1, scope: !4895, file: !4896, line: 138, type: !3014)
!4895 = distinct !DISubprogram(name: "check_copy_size", scope: !4896, file: !4896, line: 138, type: !4897, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4896 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!457, !3014, !292, !457}
!4899 = !DILocation(line: 138, column: 29, scope: !4895, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 199, column: 6, scope: !4901, inlinedAt: !4906)
!4901 = distinct !DILexicalBlock(scope: !4903, file: !4902, line: 199, column: 6)
!4902 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4903 = distinct !DISubprogram(name: "copy_to_user", scope: !4902, file: !4902, line: 197, type: !4904, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!295, !154, !3014, !295}
!4906 = distinct !DILocation(line: 150, column: 7, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 150, column: 7)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 149, column: 15)
!4909 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 149, column: 6)
!4910 = !DILocalVariable(name: "bytes", arg: 2, scope: !4895, file: !4896, line: 138, type: !292)
!4911 = !DILocation(line: 138, column: 42, scope: !4895, inlinedAt: !4900)
!4912 = !DILocalVariable(name: "is_source", arg: 3, scope: !4895, file: !4896, line: 138, type: !457)
!4913 = !DILocation(line: 138, column: 54, scope: !4895, inlinedAt: !4900)
!4914 = !DILocalVariable(name: "sz", scope: !4895, file: !4896, line: 140, type: !146)
!4915 = !DILocation(line: 140, column: 6, scope: !4895, inlinedAt: !4900)
!4916 = !DILocalVariable(name: "__ret_warn_on", scope: !4917, file: !4896, line: 150, type: !146)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !4896, line: 150, column: 6)
!4918 = distinct !DILexicalBlock(scope: !4895, file: !4896, line: 150, column: 6)
!4919 = !DILocation(line: 150, column: 6, scope: !4917, inlinedAt: !4900)
!4920 = !DILocalVariable(name: "to", arg: 1, scope: !4903, file: !4902, line: 197, type: !154)
!4921 = !DILocation(line: 197, column: 27, scope: !4903, inlinedAt: !4906)
!4922 = !DILocalVariable(name: "from", arg: 2, scope: !4903, file: !4902, line: 197, type: !3014)
!4923 = !DILocation(line: 197, column: 43, scope: !4903, inlinedAt: !4906)
!4924 = !DILocalVariable(name: "n", arg: 3, scope: !4903, file: !4902, line: 197, type: !295)
!4925 = !DILocation(line: 197, column: 63, scope: !4903, inlinedAt: !4906)
!4926 = !DILocalVariable(name: "file", arg: 1, scope: !4893, file: !3, line: 124, type: !323)
!4927 = !DILocation(line: 124, column: 38, scope: !4893)
!4928 = !DILocalVariable(name: "buffer", arg: 2, scope: !4893, file: !3, line: 124, type: !246)
!4929 = !DILocation(line: 124, column: 58, scope: !4893)
!4930 = !DILocalVariable(name: "count", arg: 3, scope: !4893, file: !3, line: 125, type: !292)
!4931 = !DILocation(line: 125, column: 11, scope: !4893)
!4932 = !DILocalVariable(name: "ppos", arg: 4, scope: !4893, file: !3, line: 125, type: !2685)
!4933 = !DILocation(line: 125, column: 26, scope: !4893)
!4934 = !DILocalVariable(name: "dev", scope: !4893, file: !3, line: 127, type: !3822)
!4935 = !DILocation(line: 127, column: 18, scope: !4893)
!4936 = !DILocalVariable(name: "retval", scope: !4893, file: !3, line: 128, type: !146)
!4937 = !DILocation(line: 128, column: 6, scope: !4893)
!4938 = !DILocalVariable(name: "bytes_read", scope: !4893, file: !3, line: 129, type: !146)
!4939 = !DILocation(line: 129, column: 6, scope: !4893)
!4940 = !DILocation(line: 131, column: 8, scope: !4893)
!4941 = !DILocation(line: 131, column: 14, scope: !4893)
!4942 = !DILocation(line: 131, column: 6, scope: !4893)
!4943 = !DILocation(line: 133, column: 13, scope: !4893)
!4944 = !DILocation(line: 133, column: 18, scope: !4893)
!4945 = !DILocation(line: 133, column: 2, scope: !4893)
!4946 = !DILocation(line: 135, column: 6, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 135, column: 6)
!4948 = !DILocation(line: 135, column: 11, scope: !4947)
!4949 = !DILocation(line: 135, column: 6, scope: !4893)
!4950 = !DILocation(line: 136, column: 10, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 135, column: 25)
!4952 = !DILocation(line: 137, column: 3, scope: !4951)
!4953 = !DILocation(line: 141, column: 24, scope: !4893)
!4954 = !DILocation(line: 141, column: 29, scope: !4893)
!4955 = !DILocation(line: 142, column: 10, scope: !4893)
!4956 = !DILocation(line: 144, column: 10, scope: !4893)
!4957 = !DILocation(line: 144, column: 15, scope: !4893)
!4958 = !DILocalVariable(name: "__UNIQUE_ID___x212", scope: !4959, file: !3, line: 145, type: !292)
!4959 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 145, column: 10)
!4960 = !DILocation(line: 145, column: 10, scope: !4959)
!4961 = !DILocalVariable(name: "__UNIQUE_ID___y213", scope: !4959, file: !3, line: 145, type: !292)
!4962 = !DILocation(line: 145, column: 10, scope: !4893)
!4963 = !DILocation(line: 141, column: 11, scope: !4893)
!4964 = !DILocation(line: 141, column: 9, scope: !4893)
!4965 = !DILocation(line: 149, column: 7, scope: !4909)
!4966 = !DILocation(line: 149, column: 6, scope: !4893)
!4967 = !DILocation(line: 150, column: 20, scope: !4907)
!4968 = !DILocation(line: 150, column: 28, scope: !4907)
!4969 = !DILocation(line: 150, column: 33, scope: !4907)
!4970 = !DILocation(line: 150, column: 49, scope: !4907)
!4971 = !DILocation(line: 199, column: 6, scope: !4901, inlinedAt: !4906)
!4972 = !DILocation(line: 141, column: 6, scope: !4973, inlinedAt: !4900)
!4973 = distinct !DILexicalBlock(scope: !4895, file: !4896, line: 141, column: 6)
!4974 = !DILocation(line: 0, scope: !4973, inlinedAt: !4900)
!4975 = !DILocation(line: 141, column: 6, scope: !4895, inlinedAt: !4900)
!4976 = !DILocation(line: 142, column: 29, scope: !4977, inlinedAt: !4900)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !4896, line: 142, column: 7)
!4978 = distinct !DILexicalBlock(scope: !4973, file: !4896, line: 141, column: 39)
!4979 = !DILocation(line: 142, column: 8, scope: !4977, inlinedAt: !4900)
!4980 = !DILocation(line: 142, column: 7, scope: !4978, inlinedAt: !4900)
!4981 = !DILocation(line: 143, column: 18, scope: !4977, inlinedAt: !4900)
!4982 = !DILocation(line: 143, column: 22, scope: !4977, inlinedAt: !4900)
!4983 = !DILocation(line: 143, column: 4, scope: !4977, inlinedAt: !4900)
!4984 = !DILocation(line: 144, column: 12, scope: !4985, inlinedAt: !4900)
!4985 = distinct !DILexicalBlock(scope: !4977, file: !4896, line: 144, column: 12)
!4986 = !DILocation(line: 144, column: 12, scope: !4977, inlinedAt: !4900)
!4987 = !DILocation(line: 145, column: 4, scope: !4985, inlinedAt: !4900)
!4988 = !DILocation(line: 147, column: 4, scope: !4985, inlinedAt: !4900)
!4989 = !DILocation(line: 148, column: 3, scope: !4978, inlinedAt: !4900)
!4990 = !DILocation(line: 150, column: 6, scope: !4991, inlinedAt: !4900)
!4991 = distinct !DILexicalBlock(scope: !4917, file: !4896, line: 150, column: 6)
!4992 = !DILocation(line: 150, column: 6, scope: !4993, inlinedAt: !4900)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !4896, line: 150, column: 6)
!4994 = distinct !DILexicalBlock(scope: !4991, file: !4896, line: 150, column: 6)
!4995 = !{i32 -2145548841, i32 -2145548812, i32 -2145548766, i32 -2145548708, i32 -2145548654, i32 -2145548600, i32 -2145548545, i32 -2145548514}
!4996 = !DILocation(line: 150, column: 6, scope: !4997, inlinedAt: !4900)
!4997 = distinct !DILexicalBlock(scope: !4994, file: !4896, line: 150, column: 6)
!4998 = !{i32 -2145548094, i32 -2145548087, i32 -2145548035, i32 -2145548004, i32 -2145547974}
!4999 = !DILocation(line: 150, column: 6, scope: !4994, inlinedAt: !4900)
!5000 = !DILocation(line: 150, column: 6, scope: !4918, inlinedAt: !4900)
!5001 = !DILocation(line: 150, column: 6, scope: !4895, inlinedAt: !4900)
!5002 = !DILocation(line: 151, column: 3, scope: !4918, inlinedAt: !4900)
!5003 = !DILocation(line: 152, column: 20, scope: !4895, inlinedAt: !4900)
!5004 = !DILocation(line: 152, column: 26, scope: !4895, inlinedAt: !4900)
!5005 = !DILocation(line: 152, column: 33, scope: !4895, inlinedAt: !4900)
!5006 = !DILocation(line: 152, column: 2, scope: !4895, inlinedAt: !4900)
!5007 = !DILocation(line: 153, column: 2, scope: !4895, inlinedAt: !4900)
!5008 = !DILocation(line: 154, column: 1, scope: !4895, inlinedAt: !4900)
!5009 = !DILocation(line: 199, column: 6, scope: !4903, inlinedAt: !4906)
!5010 = !DILocation(line: 200, column: 21, scope: !4901, inlinedAt: !4906)
!5011 = !DILocation(line: 200, column: 25, scope: !4901, inlinedAt: !4906)
!5012 = !DILocation(line: 200, column: 31, scope: !4901, inlinedAt: !4906)
!5013 = !DILocation(line: 200, column: 7, scope: !4901, inlinedAt: !4906)
!5014 = !DILocation(line: 200, column: 5, scope: !4901, inlinedAt: !4906)
!5015 = !DILocation(line: 200, column: 3, scope: !4901, inlinedAt: !4906)
!5016 = !DILocation(line: 201, column: 9, scope: !4903, inlinedAt: !4906)
!5017 = !DILocation(line: 150, column: 7, scope: !4907)
!5018 = !DILocation(line: 150, column: 7, scope: !4908)
!5019 = !DILocation(line: 151, column: 11, scope: !4907)
!5020 = !DILocation(line: 151, column: 4, scope: !4907)
!5021 = !DILocation(line: 153, column: 13, scope: !4907)
!5022 = !DILocation(line: 153, column: 11, scope: !4907)
!5023 = !DILocation(line: 154, column: 2, scope: !4908)
!5024 = !DILabel(scope: !4893, name: "out_up_io", file: !3, line: 156)
!5025 = !DILocation(line: 156, column: 1, scope: !4893)
!5026 = !DILocation(line: 157, column: 11, scope: !4893)
!5027 = !DILocation(line: 157, column: 16, scope: !4893)
!5028 = !DILocation(line: 157, column: 2, scope: !4893)
!5029 = !DILocation(line: 159, column: 9, scope: !4893)
!5030 = !DILocation(line: 159, column: 2, scope: !4893)
!5031 = distinct !DISubprogram(name: "lcd_write", scope: !3, file: !3, line: 217, type: !2688, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5032 = !DILocation(line: 138, column: 29, scope: !4895, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 191, column: 6, scope: !5034, inlinedAt: !5036)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !4902, line: 191, column: 6)
!5035 = distinct !DISubprogram(name: "copy_from_user", scope: !4902, file: !4902, line: 189, type: !4904, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5036 = distinct !DILocation(line: 256, column: 6, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 256, column: 6)
!5038 = !DILocation(line: 138, column: 42, scope: !4895, inlinedAt: !5033)
!5039 = !DILocation(line: 138, column: 54, scope: !4895, inlinedAt: !5033)
!5040 = !DILocation(line: 140, column: 6, scope: !4895, inlinedAt: !5033)
!5041 = !DILocation(line: 150, column: 6, scope: !4917, inlinedAt: !5033)
!5042 = !DILocalVariable(name: "to", arg: 1, scope: !5035, file: !4902, line: 189, type: !154)
!5043 = !DILocation(line: 189, column: 22, scope: !5035, inlinedAt: !5036)
!5044 = !DILocalVariable(name: "from", arg: 2, scope: !5035, file: !4902, line: 189, type: !3014)
!5045 = !DILocation(line: 189, column: 45, scope: !5035, inlinedAt: !5036)
!5046 = !DILocalVariable(name: "n", arg: 3, scope: !5035, file: !4902, line: 189, type: !295)
!5047 = !DILocation(line: 189, column: 65, scope: !5035, inlinedAt: !5036)
!5048 = !DILocalVariable(name: "file", arg: 1, scope: !5031, file: !3, line: 217, type: !323)
!5049 = !DILocation(line: 217, column: 39, scope: !5031)
!5050 = !DILocalVariable(name: "user_buffer", arg: 2, scope: !5031, file: !3, line: 217, type: !194)
!5051 = !DILocation(line: 217, column: 65, scope: !5031)
!5052 = !DILocalVariable(name: "count", arg: 3, scope: !5031, file: !3, line: 218, type: !292)
!5053 = !DILocation(line: 218, column: 12, scope: !5031)
!5054 = !DILocalVariable(name: "ppos", arg: 4, scope: !5031, file: !3, line: 218, type: !2685)
!5055 = !DILocation(line: 218, column: 27, scope: !5031)
!5056 = !DILocalVariable(name: "dev", scope: !5031, file: !3, line: 220, type: !3822)
!5057 = !DILocation(line: 220, column: 18, scope: !5031)
!5058 = !DILocalVariable(name: "retval", scope: !5031, file: !3, line: 221, type: !146)
!5059 = !DILocation(line: 221, column: 6, scope: !5031)
!5060 = !DILocalVariable(name: "r", scope: !5031, file: !3, line: 221, type: !146)
!5061 = !DILocation(line: 221, column: 18, scope: !5031)
!5062 = !DILocalVariable(name: "urb", scope: !5031, file: !3, line: 222, type: !5063)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !5065)
!5065 = !{!5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5101}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5064, file: !6, line: 1563, baseType: !3173, size: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !5064, file: !6, line: 1564, baseType: !146, size: 32, offset: 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5064, file: !6, line: 1565, baseType: !154, size: 64, offset: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !5064, file: !6, line: 1566, baseType: !714, size: 32, offset: 128)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !5064, file: !6, line: 1567, baseType: !714, size: 32, offset: 160)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5064, file: !6, line: 1570, baseType: !150, size: 128, offset: 192)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !5064, file: !6, line: 1572, baseType: !150, size: 128, offset: 320)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !5064, file: !6, line: 1573, baseType: !3950, size: 64, offset: 448)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5064, file: !6, line: 1574, baseType: !155, size: 64, offset: 512)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5064, file: !6, line: 1575, baseType: !3736, size: 64, offset: 576)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5064, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5064, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5064, file: !6, line: 1578, baseType: !146, size: 32, offset: 704)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !5064, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !5064, file: !6, line: 1580, baseType: !154, size: 64, offset: 768)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !5064, file: !6, line: 1581, baseType: !886, size: 64, offset: 832)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5064, file: !6, line: 1582, baseType: !5083, size: 64, offset: 896)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5064, file: !6, line: 1583, baseType: !146, size: 32, offset: 960)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5064, file: !6, line: 1584, baseType: !146, size: 32, offset: 992)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !5064, file: !6, line: 1585, baseType: !165, size: 32, offset: 1024)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5064, file: !6, line: 1586, baseType: !165, size: 32, offset: 1056)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !5064, file: !6, line: 1587, baseType: !3600, size: 64, offset: 1088)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !5064, file: !6, line: 1588, baseType: !886, size: 64, offset: 1152)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !5064, file: !6, line: 1589, baseType: !146, size: 32, offset: 1216)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !5064, file: !6, line: 1590, baseType: !146, size: 32, offset: 1248)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5064, file: !6, line: 1591, baseType: !146, size: 32, offset: 1280)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !5064, file: !6, line: 1593, baseType: !146, size: 32, offset: 1312)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5064, file: !6, line: 1594, baseType: !154, size: 64, offset: 1344)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5064, file: !6, line: 1595, baseType: !5097, size: 64, offset: 1408)
!5097 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !5098)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{null, !5063}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !5064, file: !6, line: 1596, baseType: !5102, offset: 1472)
!5102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5103, elements: !2201)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !5104)
!5104 = !{!5105, !5106, !5107, !5108}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5103, file: !6, line: 1352, baseType: !7, size: 32)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5103, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5103, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5103, file: !6, line: 1355, baseType: !146, size: 32, offset: 96)
!5109 = !DILocation(line: 222, column: 14, scope: !5031)
!5110 = !DILocalVariable(name: "buf", scope: !5031, file: !3, line: 223, type: !246)
!5111 = !DILocation(line: 223, column: 8, scope: !5031)
!5112 = !DILocation(line: 225, column: 8, scope: !5031)
!5113 = !DILocation(line: 225, column: 14, scope: !5031)
!5114 = !DILocation(line: 225, column: 6, scope: !5031)
!5115 = !DILocation(line: 228, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 228, column: 6)
!5117 = !DILocation(line: 228, column: 12, scope: !5116)
!5118 = !DILocation(line: 228, column: 6, scope: !5031)
!5119 = !DILocation(line: 229, column: 3, scope: !5116)
!5120 = !DILocation(line: 231, column: 26, scope: !5031)
!5121 = !DILocation(line: 231, column: 31, scope: !5031)
!5122 = !DILocation(line: 231, column: 6, scope: !5031)
!5123 = !DILocation(line: 231, column: 4, scope: !5031)
!5124 = !DILocation(line: 232, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 232, column: 6)
!5126 = !DILocation(line: 232, column: 8, scope: !5125)
!5127 = !DILocation(line: 232, column: 6, scope: !5031)
!5128 = !DILocation(line: 233, column: 3, scope: !5125)
!5129 = !DILocation(line: 235, column: 13, scope: !5031)
!5130 = !DILocation(line: 235, column: 18, scope: !5031)
!5131 = !DILocation(line: 235, column: 2, scope: !5031)
!5132 = !DILocation(line: 237, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 237, column: 6)
!5134 = !DILocation(line: 237, column: 11, scope: !5133)
!5135 = !DILocation(line: 237, column: 6, scope: !5031)
!5136 = !DILocation(line: 238, column: 10, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 237, column: 25)
!5138 = !DILocation(line: 239, column: 3, scope: !5137)
!5139 = !DILocation(line: 243, column: 8, scope: !5031)
!5140 = !DILocation(line: 243, column: 6, scope: !5031)
!5141 = !DILocation(line: 244, column: 7, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 244, column: 6)
!5143 = !DILocation(line: 244, column: 6, scope: !5031)
!5144 = !DILocation(line: 245, column: 10, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 244, column: 12)
!5146 = !DILocation(line: 246, column: 3, scope: !5145)
!5147 = !DILocation(line: 249, column: 27, scope: !5031)
!5148 = !DILocation(line: 249, column: 32, scope: !5031)
!5149 = !DILocation(line: 249, column: 38, scope: !5031)
!5150 = !DILocation(line: 250, column: 7, scope: !5031)
!5151 = !DILocation(line: 250, column: 12, scope: !5031)
!5152 = !DILocation(line: 249, column: 8, scope: !5031)
!5153 = !DILocation(line: 249, column: 6, scope: !5031)
!5154 = !DILocation(line: 251, column: 7, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 251, column: 6)
!5156 = !DILocation(line: 251, column: 6, scope: !5031)
!5157 = !DILocation(line: 252, column: 10, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 251, column: 12)
!5159 = !DILocation(line: 253, column: 3, scope: !5158)
!5160 = !DILocation(line: 256, column: 21, scope: !5037)
!5161 = !DILocation(line: 256, column: 26, scope: !5037)
!5162 = !DILocation(line: 256, column: 39, scope: !5037)
!5163 = !DILocation(line: 191, column: 6, scope: !5034, inlinedAt: !5036)
!5164 = !DILocation(line: 141, column: 6, scope: !4973, inlinedAt: !5033)
!5165 = !DILocation(line: 0, scope: !4973, inlinedAt: !5033)
!5166 = !DILocation(line: 141, column: 6, scope: !4895, inlinedAt: !5033)
!5167 = !DILocation(line: 142, column: 29, scope: !4977, inlinedAt: !5033)
!5168 = !DILocation(line: 142, column: 8, scope: !4977, inlinedAt: !5033)
!5169 = !DILocation(line: 142, column: 7, scope: !4978, inlinedAt: !5033)
!5170 = !DILocation(line: 143, column: 18, scope: !4977, inlinedAt: !5033)
!5171 = !DILocation(line: 143, column: 22, scope: !4977, inlinedAt: !5033)
!5172 = !DILocation(line: 143, column: 4, scope: !4977, inlinedAt: !5033)
!5173 = !DILocation(line: 144, column: 12, scope: !4985, inlinedAt: !5033)
!5174 = !DILocation(line: 144, column: 12, scope: !4977, inlinedAt: !5033)
!5175 = !DILocation(line: 145, column: 4, scope: !4985, inlinedAt: !5033)
!5176 = !DILocation(line: 147, column: 4, scope: !4985, inlinedAt: !5033)
!5177 = !DILocation(line: 148, column: 3, scope: !4978, inlinedAt: !5033)
!5178 = !DILocation(line: 150, column: 6, scope: !4991, inlinedAt: !5033)
!5179 = !DILocation(line: 150, column: 6, scope: !4993, inlinedAt: !5033)
!5180 = !DILocation(line: 150, column: 6, scope: !4997, inlinedAt: !5033)
!5181 = !DILocation(line: 150, column: 6, scope: !4994, inlinedAt: !5033)
!5182 = !DILocation(line: 150, column: 6, scope: !4918, inlinedAt: !5033)
!5183 = !DILocation(line: 150, column: 6, scope: !4895, inlinedAt: !5033)
!5184 = !DILocation(line: 151, column: 3, scope: !4918, inlinedAt: !5033)
!5185 = !DILocation(line: 152, column: 20, scope: !4895, inlinedAt: !5033)
!5186 = !DILocation(line: 152, column: 26, scope: !4895, inlinedAt: !5033)
!5187 = !DILocation(line: 152, column: 33, scope: !4895, inlinedAt: !5033)
!5188 = !DILocation(line: 152, column: 2, scope: !4895, inlinedAt: !5033)
!5189 = !DILocation(line: 153, column: 2, scope: !4895, inlinedAt: !5033)
!5190 = !DILocation(line: 154, column: 1, scope: !4895, inlinedAt: !5033)
!5191 = !DILocation(line: 191, column: 6, scope: !5035, inlinedAt: !5036)
!5192 = !DILocation(line: 192, column: 23, scope: !5034, inlinedAt: !5036)
!5193 = !DILocation(line: 192, column: 27, scope: !5034, inlinedAt: !5036)
!5194 = !DILocation(line: 192, column: 33, scope: !5034, inlinedAt: !5036)
!5195 = !DILocation(line: 192, column: 7, scope: !5034, inlinedAt: !5036)
!5196 = !DILocation(line: 192, column: 5, scope: !5034, inlinedAt: !5036)
!5197 = !DILocation(line: 192, column: 3, scope: !5034, inlinedAt: !5036)
!5198 = !DILocation(line: 193, column: 9, scope: !5035, inlinedAt: !5036)
!5199 = !DILocation(line: 256, column: 6, scope: !5037)
!5200 = !DILocation(line: 256, column: 6, scope: !5031)
!5201 = !DILocation(line: 257, column: 10, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 256, column: 47)
!5203 = !DILocation(line: 258, column: 3, scope: !5202)
!5204 = !DILocation(line: 262, column: 20, scope: !5031)
!5205 = !DILocation(line: 262, column: 25, scope: !5031)
!5206 = !DILocation(line: 262, column: 30, scope: !5031)
!5207 = !DILocation(line: 263, column: 6, scope: !5031)
!5208 = !DILocation(line: 265, column: 6, scope: !5031)
!5209 = !DILocation(line: 265, column: 11, scope: !5031)
!5210 = !DILocation(line: 265, column: 43, scope: !5031)
!5211 = !DILocation(line: 262, column: 2, scope: !5031)
!5212 = !DILocation(line: 266, column: 2, scope: !5031)
!5213 = !DILocation(line: 266, column: 7, scope: !5031)
!5214 = !DILocation(line: 266, column: 22, scope: !5031)
!5215 = !DILocation(line: 268, column: 17, scope: !5031)
!5216 = !DILocation(line: 268, column: 23, scope: !5031)
!5217 = !DILocation(line: 268, column: 28, scope: !5031)
!5218 = !DILocation(line: 268, column: 2, scope: !5031)
!5219 = !DILocation(line: 271, column: 26, scope: !5031)
!5220 = !DILocation(line: 271, column: 11, scope: !5031)
!5221 = !DILocation(line: 271, column: 9, scope: !5031)
!5222 = !DILocation(line: 272, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 272, column: 6)
!5224 = !DILocation(line: 272, column: 6, scope: !5031)
!5225 = !DILocation(line: 273, column: 3, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 272, column: 14)
!5227 = !DILocation(line: 276, column: 3, scope: !5226)
!5228 = !DILocation(line: 281, column: 15, scope: !5031)
!5229 = !DILocation(line: 281, column: 2, scope: !5031)
!5230 = !DILocation(line: 283, column: 11, scope: !5031)
!5231 = !DILocation(line: 283, column: 16, scope: !5031)
!5232 = !DILocation(line: 283, column: 2, scope: !5031)
!5233 = !DILabel(scope: !5031, name: "exit", file: !3, line: 284)
!5234 = !DILocation(line: 284, column: 1, scope: !5031)
!5235 = !DILocation(line: 285, column: 9, scope: !5031)
!5236 = !DILocation(line: 285, column: 2, scope: !5031)
!5237 = !DILabel(scope: !5031, name: "error_unanchor", file: !3, line: 286)
!5238 = !DILocation(line: 286, column: 1, scope: !5031)
!5239 = !DILocation(line: 287, column: 19, scope: !5031)
!5240 = !DILocation(line: 287, column: 2, scope: !5031)
!5241 = !DILabel(scope: !5031, name: "error", file: !3, line: 288)
!5242 = !DILocation(line: 288, column: 1, scope: !5031)
!5243 = !DILocation(line: 289, column: 20, scope: !5031)
!5244 = !DILocation(line: 289, column: 25, scope: !5031)
!5245 = !DILocation(line: 289, column: 31, scope: !5031)
!5246 = !DILocation(line: 289, column: 38, scope: !5031)
!5247 = !DILocation(line: 289, column: 43, scope: !5031)
!5248 = !DILocation(line: 289, column: 48, scope: !5031)
!5249 = !DILocation(line: 289, column: 2, scope: !5031)
!5250 = !DILocation(line: 290, column: 15, scope: !5031)
!5251 = !DILocation(line: 290, column: 2, scope: !5031)
!5252 = !DILabel(scope: !5031, name: "err_up_io", file: !3, line: 291)
!5253 = !DILocation(line: 291, column: 1, scope: !5031)
!5254 = !DILocation(line: 292, column: 11, scope: !5031)
!5255 = !DILocation(line: 292, column: 16, scope: !5031)
!5256 = !DILocation(line: 292, column: 2, scope: !5031)
!5257 = !DILocation(line: 293, column: 6, scope: !5031)
!5258 = !DILocation(line: 293, column: 11, scope: !5031)
!5259 = !DILocation(line: 293, column: 2, scope: !5031)
!5260 = !DILocation(line: 294, column: 9, scope: !5031)
!5261 = !DILocation(line: 294, column: 2, scope: !5031)
!5262 = !DILocation(line: 295, column: 1, scope: !5031)
!5263 = distinct !DISubprogram(name: "lcd_ioctl", scope: !3, file: !3, line: 162, type: !2719, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5264 = !DILocation(line: 138, column: 29, scope: !4895, inlinedAt: !5265)
!5265 = distinct !DILocation(line: 199, column: 6, scope: !4901, inlinedAt: !5266)
!5266 = distinct !DILocation(line: 185, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 185, column: 7)
!5268 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 172, column: 15)
!5269 = !DILocation(line: 138, column: 42, scope: !4895, inlinedAt: !5265)
!5270 = !DILocation(line: 138, column: 54, scope: !4895, inlinedAt: !5265)
!5271 = !DILocation(line: 140, column: 6, scope: !4895, inlinedAt: !5265)
!5272 = !DILocation(line: 150, column: 6, scope: !4917, inlinedAt: !5265)
!5273 = !DILocation(line: 197, column: 27, scope: !4903, inlinedAt: !5266)
!5274 = !DILocation(line: 197, column: 43, scope: !4903, inlinedAt: !5266)
!5275 = !DILocation(line: 197, column: 63, scope: !4903, inlinedAt: !5266)
!5276 = !DILocation(line: 138, column: 29, scope: !4895, inlinedAt: !5277)
!5277 = distinct !DILocation(line: 199, column: 6, scope: !4901, inlinedAt: !5278)
!5278 = distinct !DILocation(line: 180, column: 7, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 180, column: 7)
!5280 = !DILocation(line: 138, column: 42, scope: !4895, inlinedAt: !5277)
!5281 = !DILocation(line: 138, column: 54, scope: !4895, inlinedAt: !5277)
!5282 = !DILocation(line: 140, column: 6, scope: !4895, inlinedAt: !5277)
!5283 = !DILocation(line: 150, column: 6, scope: !4917, inlinedAt: !5277)
!5284 = !DILocation(line: 197, column: 27, scope: !4903, inlinedAt: !5278)
!5285 = !DILocation(line: 197, column: 43, scope: !4903, inlinedAt: !5278)
!5286 = !DILocation(line: 197, column: 63, scope: !4903, inlinedAt: !5278)
!5287 = !DILocalVariable(name: "file", arg: 1, scope: !5263, file: !3, line: 162, type: !323)
!5288 = !DILocation(line: 162, column: 36, scope: !5263)
!5289 = !DILocalVariable(name: "cmd", arg: 2, scope: !5263, file: !3, line: 162, type: !7)
!5290 = !DILocation(line: 162, column: 55, scope: !5263)
!5291 = !DILocalVariable(name: "arg", arg: 3, scope: !5263, file: !3, line: 162, type: !295)
!5292 = !DILocation(line: 162, column: 74, scope: !5263)
!5293 = !DILocalVariable(name: "dev", scope: !5263, file: !3, line: 164, type: !3822)
!5294 = !DILocation(line: 164, column: 18, scope: !5263)
!5295 = !DILocalVariable(name: "bcdDevice", scope: !5263, file: !3, line: 165, type: !826)
!5296 = !DILocation(line: 165, column: 6, scope: !5263)
!5297 = !DILocalVariable(name: "buf", scope: !5263, file: !3, line: 166, type: !5298)
!5298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 240, elements: !5299)
!5299 = !{!5300}
!5300 = !DISubrange(count: 30)
!5301 = !DILocation(line: 166, column: 7, scope: !5263)
!5302 = !DILocation(line: 168, column: 8, scope: !5263)
!5303 = !DILocation(line: 168, column: 14, scope: !5263)
!5304 = !DILocation(line: 168, column: 6, scope: !5263)
!5305 = !DILocation(line: 169, column: 6, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 169, column: 6)
!5307 = !DILocation(line: 169, column: 10, scope: !5306)
!5308 = !DILocation(line: 169, column: 6, scope: !5263)
!5309 = !DILocation(line: 170, column: 3, scope: !5306)
!5310 = !DILocation(line: 172, column: 10, scope: !5263)
!5311 = !DILocation(line: 172, column: 2, scope: !5263)
!5312 = !DILocation(line: 174, column: 15, scope: !5268)
!5313 = !DILocation(line: 174, column: 13, scope: !5268)
!5314 = !DILocation(line: 175, column: 11, scope: !5268)
!5315 = !DILocation(line: 176, column: 5, scope: !5268)
!5316 = !DILocation(line: 176, column: 15, scope: !5268)
!5317 = !DILocation(line: 176, column: 24, scope: !5268)
!5318 = !DILocation(line: 177, column: 5, scope: !5268)
!5319 = !DILocation(line: 177, column: 15, scope: !5268)
!5320 = !DILocation(line: 177, column: 23, scope: !5268)
!5321 = !DILocation(line: 178, column: 5, scope: !5268)
!5322 = !DILocation(line: 178, column: 15, scope: !5268)
!5323 = !DILocation(line: 178, column: 22, scope: !5268)
!5324 = !DILocation(line: 179, column: 5, scope: !5268)
!5325 = !DILocation(line: 179, column: 15, scope: !5268)
!5326 = !DILocation(line: 175, column: 3, scope: !5268)
!5327 = !DILocation(line: 180, column: 35, scope: !5279)
!5328 = !DILocation(line: 180, column: 20, scope: !5279)
!5329 = !DILocation(line: 180, column: 40, scope: !5279)
!5330 = !DILocation(line: 180, column: 52, scope: !5279)
!5331 = !DILocation(line: 180, column: 45, scope: !5279)
!5332 = !DILocation(line: 199, column: 6, scope: !4901, inlinedAt: !5278)
!5333 = !DILocation(line: 141, column: 6, scope: !4973, inlinedAt: !5277)
!5334 = !DILocation(line: 0, scope: !4973, inlinedAt: !5277)
!5335 = !DILocation(line: 141, column: 6, scope: !4895, inlinedAt: !5277)
!5336 = !DILocation(line: 142, column: 29, scope: !4977, inlinedAt: !5277)
!5337 = !DILocation(line: 142, column: 8, scope: !4977, inlinedAt: !5277)
!5338 = !DILocation(line: 142, column: 7, scope: !4978, inlinedAt: !5277)
!5339 = !DILocation(line: 143, column: 18, scope: !4977, inlinedAt: !5277)
!5340 = !DILocation(line: 143, column: 22, scope: !4977, inlinedAt: !5277)
!5341 = !DILocation(line: 143, column: 4, scope: !4977, inlinedAt: !5277)
!5342 = !DILocation(line: 144, column: 12, scope: !4985, inlinedAt: !5277)
!5343 = !DILocation(line: 144, column: 12, scope: !4977, inlinedAt: !5277)
!5344 = !DILocation(line: 145, column: 4, scope: !4985, inlinedAt: !5277)
!5345 = !DILocation(line: 147, column: 4, scope: !4985, inlinedAt: !5277)
!5346 = !DILocation(line: 148, column: 3, scope: !4978, inlinedAt: !5277)
!5347 = !DILocation(line: 150, column: 6, scope: !4991, inlinedAt: !5277)
!5348 = !DILocation(line: 150, column: 6, scope: !4993, inlinedAt: !5277)
!5349 = !DILocation(line: 150, column: 6, scope: !4997, inlinedAt: !5277)
!5350 = !DILocation(line: 150, column: 6, scope: !4994, inlinedAt: !5277)
!5351 = !DILocation(line: 150, column: 6, scope: !4918, inlinedAt: !5277)
!5352 = !DILocation(line: 150, column: 6, scope: !4895, inlinedAt: !5277)
!5353 = !DILocation(line: 151, column: 3, scope: !4918, inlinedAt: !5277)
!5354 = !DILocation(line: 152, column: 20, scope: !4895, inlinedAt: !5277)
!5355 = !DILocation(line: 152, column: 26, scope: !4895, inlinedAt: !5277)
!5356 = !DILocation(line: 152, column: 33, scope: !4895, inlinedAt: !5277)
!5357 = !DILocation(line: 152, column: 2, scope: !4895, inlinedAt: !5277)
!5358 = !DILocation(line: 153, column: 2, scope: !4895, inlinedAt: !5277)
!5359 = !DILocation(line: 154, column: 1, scope: !4895, inlinedAt: !5277)
!5360 = !DILocation(line: 199, column: 6, scope: !4903, inlinedAt: !5278)
!5361 = !DILocation(line: 200, column: 21, scope: !4901, inlinedAt: !5278)
!5362 = !DILocation(line: 200, column: 25, scope: !4901, inlinedAt: !5278)
!5363 = !DILocation(line: 200, column: 31, scope: !4901, inlinedAt: !5278)
!5364 = !DILocation(line: 200, column: 7, scope: !4901, inlinedAt: !5278)
!5365 = !DILocation(line: 200, column: 5, scope: !4901, inlinedAt: !5278)
!5366 = !DILocation(line: 200, column: 3, scope: !4901, inlinedAt: !5278)
!5367 = !DILocation(line: 201, column: 9, scope: !4903, inlinedAt: !5278)
!5368 = !DILocation(line: 180, column: 58, scope: !5279)
!5369 = !DILocation(line: 180, column: 7, scope: !5268)
!5370 = !DILocation(line: 181, column: 4, scope: !5279)
!5371 = !DILocation(line: 182, column: 3, scope: !5268)
!5372 = !DILocation(line: 184, column: 11, scope: !5268)
!5373 = !DILocation(line: 184, column: 3, scope: !5268)
!5374 = !DILocation(line: 185, column: 35, scope: !5267)
!5375 = !DILocation(line: 185, column: 20, scope: !5267)
!5376 = !DILocation(line: 185, column: 40, scope: !5267)
!5377 = !DILocation(line: 185, column: 52, scope: !5267)
!5378 = !DILocation(line: 185, column: 45, scope: !5267)
!5379 = !DILocation(line: 199, column: 6, scope: !4901, inlinedAt: !5266)
!5380 = !DILocation(line: 141, column: 6, scope: !4973, inlinedAt: !5265)
!5381 = !DILocation(line: 0, scope: !4973, inlinedAt: !5265)
!5382 = !DILocation(line: 141, column: 6, scope: !4895, inlinedAt: !5265)
!5383 = !DILocation(line: 142, column: 29, scope: !4977, inlinedAt: !5265)
!5384 = !DILocation(line: 142, column: 8, scope: !4977, inlinedAt: !5265)
!5385 = !DILocation(line: 142, column: 7, scope: !4978, inlinedAt: !5265)
!5386 = !DILocation(line: 143, column: 18, scope: !4977, inlinedAt: !5265)
!5387 = !DILocation(line: 143, column: 22, scope: !4977, inlinedAt: !5265)
!5388 = !DILocation(line: 143, column: 4, scope: !4977, inlinedAt: !5265)
!5389 = !DILocation(line: 144, column: 12, scope: !4985, inlinedAt: !5265)
!5390 = !DILocation(line: 144, column: 12, scope: !4977, inlinedAt: !5265)
!5391 = !DILocation(line: 145, column: 4, scope: !4985, inlinedAt: !5265)
!5392 = !DILocation(line: 147, column: 4, scope: !4985, inlinedAt: !5265)
!5393 = !DILocation(line: 148, column: 3, scope: !4978, inlinedAt: !5265)
!5394 = !DILocation(line: 150, column: 6, scope: !4991, inlinedAt: !5265)
!5395 = !DILocation(line: 150, column: 6, scope: !4993, inlinedAt: !5265)
!5396 = !DILocation(line: 150, column: 6, scope: !4997, inlinedAt: !5265)
!5397 = !DILocation(line: 150, column: 6, scope: !4994, inlinedAt: !5265)
!5398 = !DILocation(line: 150, column: 6, scope: !4918, inlinedAt: !5265)
!5399 = !DILocation(line: 150, column: 6, scope: !4895, inlinedAt: !5265)
!5400 = !DILocation(line: 151, column: 3, scope: !4918, inlinedAt: !5265)
!5401 = !DILocation(line: 152, column: 20, scope: !4895, inlinedAt: !5265)
!5402 = !DILocation(line: 152, column: 26, scope: !4895, inlinedAt: !5265)
!5403 = !DILocation(line: 152, column: 33, scope: !4895, inlinedAt: !5265)
!5404 = !DILocation(line: 152, column: 2, scope: !4895, inlinedAt: !5265)
!5405 = !DILocation(line: 153, column: 2, scope: !4895, inlinedAt: !5265)
!5406 = !DILocation(line: 154, column: 1, scope: !4895, inlinedAt: !5265)
!5407 = !DILocation(line: 199, column: 6, scope: !4903, inlinedAt: !5266)
!5408 = !DILocation(line: 200, column: 21, scope: !4901, inlinedAt: !5266)
!5409 = !DILocation(line: 200, column: 25, scope: !4901, inlinedAt: !5266)
!5410 = !DILocation(line: 200, column: 31, scope: !4901, inlinedAt: !5266)
!5411 = !DILocation(line: 200, column: 7, scope: !4901, inlinedAt: !5266)
!5412 = !DILocation(line: 200, column: 5, scope: !4901, inlinedAt: !5266)
!5413 = !DILocation(line: 200, column: 3, scope: !4901, inlinedAt: !5266)
!5414 = !DILocation(line: 201, column: 9, scope: !4903, inlinedAt: !5266)
!5415 = !DILocation(line: 185, column: 58, scope: !5267)
!5416 = !DILocation(line: 185, column: 7, scope: !5268)
!5417 = !DILocation(line: 186, column: 4, scope: !5267)
!5418 = !DILocation(line: 187, column: 3, scope: !5268)
!5419 = !DILocation(line: 189, column: 3, scope: !5268)
!5420 = !DILocation(line: 192, column: 2, scope: !5263)
!5421 = !DILocation(line: 193, column: 1, scope: !5263)
!5422 = distinct !DISubprogram(name: "lcd_open", scope: !3, file: !3, line: 77, type: !2729, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5423 = !DILocalVariable(name: "inode", arg: 1, scope: !5422, file: !3, line: 77, type: !396)
!5424 = !DILocation(line: 77, column: 35, scope: !5422)
!5425 = !DILocalVariable(name: "file", arg: 2, scope: !5422, file: !3, line: 77, type: !323)
!5426 = !DILocation(line: 77, column: 55, scope: !5422)
!5427 = !DILocalVariable(name: "dev", scope: !5422, file: !3, line: 79, type: !3822)
!5428 = !DILocation(line: 79, column: 18, scope: !5422)
!5429 = !DILocalVariable(name: "interface", scope: !5422, file: !3, line: 80, type: !3714)
!5430 = !DILocation(line: 80, column: 24, scope: !5422)
!5431 = !DILocalVariable(name: "subminor", scope: !5422, file: !3, line: 81, type: !146)
!5432 = !DILocation(line: 81, column: 6, scope: !5422)
!5433 = !DILocalVariable(name: "r", scope: !5422, file: !3, line: 81, type: !146)
!5434 = !DILocation(line: 81, column: 16, scope: !5422)
!5435 = !DILocation(line: 83, column: 20, scope: !5422)
!5436 = !DILocation(line: 83, column: 13, scope: !5422)
!5437 = !DILocation(line: 83, column: 11, scope: !5422)
!5438 = !DILocation(line: 85, column: 46, scope: !5422)
!5439 = !DILocation(line: 85, column: 14, scope: !5422)
!5440 = !DILocation(line: 85, column: 12, scope: !5422)
!5441 = !DILocation(line: 86, column: 7, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 86, column: 6)
!5443 = !DILocation(line: 86, column: 6, scope: !5422)
!5444 = !DILocation(line: 87, column: 3, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 86, column: 18)
!5446 = !DILocation(line: 89, column: 3, scope: !5445)
!5447 = !DILocation(line: 92, column: 25, scope: !5422)
!5448 = !DILocation(line: 92, column: 8, scope: !5422)
!5449 = !DILocation(line: 92, column: 6, scope: !5422)
!5450 = !DILocation(line: 95, column: 12, scope: !5422)
!5451 = !DILocation(line: 95, column: 17, scope: !5422)
!5452 = !DILocation(line: 95, column: 2, scope: !5422)
!5453 = !DILocation(line: 98, column: 31, scope: !5422)
!5454 = !DILocation(line: 98, column: 6, scope: !5422)
!5455 = !DILocation(line: 98, column: 4, scope: !5422)
!5456 = !DILocation(line: 99, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 99, column: 6)
!5458 = !DILocation(line: 99, column: 8, scope: !5457)
!5459 = !DILocation(line: 99, column: 6, scope: !5422)
!5460 = !DILocation(line: 100, column: 13, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 99, column: 13)
!5462 = !DILocation(line: 100, column: 18, scope: !5461)
!5463 = !DILocation(line: 100, column: 3, scope: !5461)
!5464 = !DILocation(line: 101, column: 10, scope: !5461)
!5465 = !DILocation(line: 101, column: 3, scope: !5461)
!5466 = !DILocation(line: 105, column: 23, scope: !5422)
!5467 = !DILocation(line: 105, column: 2, scope: !5422)
!5468 = !DILocation(line: 105, column: 8, scope: !5422)
!5469 = !DILocation(line: 105, column: 21, scope: !5422)
!5470 = !DILocation(line: 107, column: 2, scope: !5422)
!5471 = !DILocation(line: 108, column: 1, scope: !5422)
!5472 = distinct !DISubprogram(name: "lcd_release", scope: !3, file: !3, line: 110, type: !2729, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5473 = !DILocalVariable(name: "inode", arg: 1, scope: !5472, file: !3, line: 110, type: !396)
!5474 = !DILocation(line: 110, column: 38, scope: !5472)
!5475 = !DILocalVariable(name: "file", arg: 2, scope: !5472, file: !3, line: 110, type: !323)
!5476 = !DILocation(line: 110, column: 58, scope: !5472)
!5477 = !DILocalVariable(name: "dev", scope: !5472, file: !3, line: 112, type: !3822)
!5478 = !DILocation(line: 112, column: 18, scope: !5472)
!5479 = !DILocation(line: 114, column: 8, scope: !5472)
!5480 = !DILocation(line: 114, column: 14, scope: !5472)
!5481 = !DILocation(line: 114, column: 6, scope: !5472)
!5482 = !DILocation(line: 115, column: 6, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 115, column: 6)
!5484 = !DILocation(line: 115, column: 10, scope: !5483)
!5485 = !DILocation(line: 115, column: 6, scope: !5472)
!5486 = !DILocation(line: 116, column: 3, scope: !5483)
!5487 = !DILocation(line: 119, column: 27, scope: !5472)
!5488 = !DILocation(line: 119, column: 32, scope: !5472)
!5489 = !DILocation(line: 119, column: 2, scope: !5472)
!5490 = !DILocation(line: 120, column: 12, scope: !5472)
!5491 = !DILocation(line: 120, column: 17, scope: !5472)
!5492 = !DILocation(line: 120, column: 2, scope: !5472)
!5493 = !DILocation(line: 121, column: 2, scope: !5472)
!5494 = !DILocation(line: 122, column: 1, scope: !5472)
!5495 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5496, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!7, !155, !7}
!5498 = !DILocalVariable(name: "dev", arg: 1, scope: !5495, file: !6, line: 1945, type: !155)
!5499 = !DILocation(line: 1945, column: 61, scope: !5495)
!5500 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5495, file: !6, line: 1946, type: !7)
!5501 = !DILocation(line: 1946, column: 16, scope: !5495)
!5502 = !DILocation(line: 1948, column: 10, scope: !5495)
!5503 = !DILocation(line: 1948, column: 15, scope: !5495)
!5504 = !DILocation(line: 1948, column: 22, scope: !5495)
!5505 = !DILocation(line: 1948, column: 31, scope: !5495)
!5506 = !DILocation(line: 1948, column: 40, scope: !5495)
!5507 = !DILocation(line: 1948, column: 28, scope: !5495)
!5508 = !DILocation(line: 1948, column: 2, scope: !5495)
!5509 = distinct !DISubprogram(name: "copy_overflow", scope: !4896, file: !4896, line: 132, type: !5510, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{null, !146, !295}
!5512 = !DILocalVariable(name: "size", arg: 1, scope: !5509, file: !4896, line: 132, type: !146)
!5513 = !DILocation(line: 132, column: 38, scope: !5509)
!5514 = !DILocalVariable(name: "count", arg: 2, scope: !5509, file: !4896, line: 132, type: !295)
!5515 = !DILocation(line: 132, column: 58, scope: !5509)
!5516 = !DILocalVariable(name: "__ret_warn_on", scope: !5517, file: !4896, line: 134, type: !146)
!5517 = distinct !DILexicalBlock(scope: !5509, file: !4896, line: 134, column: 2)
!5518 = !DILocation(line: 134, column: 2, scope: !5517)
!5519 = !DILocation(line: 134, column: 2, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5517, file: !4896, line: 134, column: 2)
!5521 = !DILocation(line: 134, column: 2, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5520, file: !4896, line: 134, column: 2)
!5523 = !DILocation(line: 134, column: 2, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5522, file: !4896, line: 134, column: 2)
!5525 = !DILocation(line: 134, column: 2, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5522, file: !4896, line: 134, column: 2)
!5527 = !DILocation(line: 134, column: 2, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5526, file: !4896, line: 134, column: 2)
!5529 = !DILocation(line: 134, column: 2, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5526, file: !4896, line: 134, column: 2)
!5531 = !{i32 -2145550665, i32 -2145550636, i32 -2145550590, i32 -2145550532, i32 -2145550478, i32 -2145550424, i32 -2145550369, i32 -2145550338}
!5532 = !DILocation(line: 134, column: 2, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5526, file: !4896, line: 134, column: 2)
!5534 = !{i32 -2145549918, i32 -2145549911, i32 -2145549859, i32 -2145549828, i32 -2145549798}
!5535 = !DILocation(line: 134, column: 2, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5526, file: !4896, line: 134, column: 2)
!5537 = !DILocation(line: 134, column: 2, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5522, file: !4896, line: 134, column: 2)
!5539 = !DILocation(line: 135, column: 1, scope: !5509)
!5540 = distinct !DISubprogram(name: "check_object_size", scope: !4896, file: !4896, line: 122, type: !5541, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{null, !3014, !295, !457}
!5543 = !DILocalVariable(name: "ptr", arg: 1, scope: !5540, file: !4896, line: 122, type: !3014)
!5544 = !DILocation(line: 122, column: 50, scope: !5540)
!5545 = !DILocalVariable(name: "n", arg: 2, scope: !5540, file: !4896, line: 122, type: !295)
!5546 = !DILocation(line: 122, column: 69, scope: !5540)
!5547 = !DILocalVariable(name: "to_user", arg: 3, scope: !5540, file: !4896, line: 123, type: !457)
!5548 = !DILocation(line: 123, column: 15, scope: !5540)
!5549 = !DILocation(line: 124, column: 3, scope: !5540)
!5550 = distinct !DISubprogram(name: "usb_fill_bulk_urb", scope: !6, file: !6, line: 1647, type: !5551, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{null, !5063, !155, !7, !154, !146, !5097, !154}
!5553 = !DILocalVariable(name: "urb", arg: 1, scope: !5550, file: !6, line: 1647, type: !5063)
!5554 = !DILocation(line: 1647, column: 50, scope: !5550)
!5555 = !DILocalVariable(name: "dev", arg: 2, scope: !5550, file: !6, line: 1648, type: !155)
!5556 = !DILocation(line: 1648, column: 29, scope: !5550)
!5557 = !DILocalVariable(name: "pipe", arg: 3, scope: !5550, file: !6, line: 1649, type: !7)
!5558 = !DILocation(line: 1649, column: 23, scope: !5550)
!5559 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5550, file: !6, line: 1650, type: !154)
!5560 = !DILocation(line: 1650, column: 16, scope: !5550)
!5561 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5550, file: !6, line: 1651, type: !146)
!5562 = !DILocation(line: 1651, column: 14, scope: !5550)
!5563 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5550, file: !6, line: 1652, type: !5097)
!5564 = !DILocation(line: 1652, column: 25, scope: !5550)
!5565 = !DILocalVariable(name: "context", arg: 7, scope: !5550, file: !6, line: 1653, type: !154)
!5566 = !DILocation(line: 1653, column: 16, scope: !5550)
!5567 = !DILocation(line: 1655, column: 13, scope: !5550)
!5568 = !DILocation(line: 1655, column: 2, scope: !5550)
!5569 = !DILocation(line: 1655, column: 7, scope: !5550)
!5570 = !DILocation(line: 1655, column: 11, scope: !5550)
!5571 = !DILocation(line: 1656, column: 14, scope: !5550)
!5572 = !DILocation(line: 1656, column: 2, scope: !5550)
!5573 = !DILocation(line: 1656, column: 7, scope: !5550)
!5574 = !DILocation(line: 1656, column: 12, scope: !5550)
!5575 = !DILocation(line: 1657, column: 25, scope: !5550)
!5576 = !DILocation(line: 1657, column: 2, scope: !5550)
!5577 = !DILocation(line: 1657, column: 7, scope: !5550)
!5578 = !DILocation(line: 1657, column: 23, scope: !5550)
!5579 = !DILocation(line: 1658, column: 32, scope: !5550)
!5580 = !DILocation(line: 1658, column: 2, scope: !5550)
!5581 = !DILocation(line: 1658, column: 7, scope: !5550)
!5582 = !DILocation(line: 1658, column: 30, scope: !5550)
!5583 = !DILocation(line: 1659, column: 18, scope: !5550)
!5584 = !DILocation(line: 1659, column: 2, scope: !5550)
!5585 = !DILocation(line: 1659, column: 7, scope: !5550)
!5586 = !DILocation(line: 1659, column: 16, scope: !5550)
!5587 = !DILocation(line: 1660, column: 17, scope: !5550)
!5588 = !DILocation(line: 1660, column: 2, scope: !5550)
!5589 = !DILocation(line: 1660, column: 7, scope: !5550)
!5590 = !DILocation(line: 1660, column: 15, scope: !5550)
!5591 = !DILocation(line: 1661, column: 1, scope: !5550)
!5592 = distinct !DISubprogram(name: "lcd_write_bulk_callback", scope: !3, file: !3, line: 195, type: !5099, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5593 = !DILocalVariable(name: "urb", arg: 1, scope: !5592, file: !3, line: 195, type: !5063)
!5594 = !DILocation(line: 195, column: 49, scope: !5592)
!5595 = !DILocalVariable(name: "dev", scope: !5592, file: !3, line: 197, type: !3822)
!5596 = !DILocation(line: 197, column: 18, scope: !5592)
!5597 = !DILocalVariable(name: "status", scope: !5592, file: !3, line: 198, type: !146)
!5598 = !DILocation(line: 198, column: 6, scope: !5592)
!5599 = !DILocation(line: 198, column: 15, scope: !5592)
!5600 = !DILocation(line: 198, column: 20, scope: !5592)
!5601 = !DILocation(line: 200, column: 8, scope: !5592)
!5602 = !DILocation(line: 200, column: 13, scope: !5592)
!5603 = !DILocation(line: 200, column: 6, scope: !5592)
!5604 = !DILocation(line: 203, column: 6, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 203, column: 6)
!5606 = !DILocation(line: 203, column: 13, scope: !5605)
!5607 = !DILocation(line: 204, column: 8, scope: !5605)
!5608 = !DILocation(line: 204, column: 15, scope: !5605)
!5609 = !DILocation(line: 204, column: 26, scope: !5605)
!5610 = !DILocation(line: 205, column: 8, scope: !5605)
!5611 = !DILocation(line: 205, column: 15, scope: !5605)
!5612 = !DILocation(line: 205, column: 30, scope: !5605)
!5613 = !DILocation(line: 206, column: 8, scope: !5605)
!5614 = !DILocation(line: 206, column: 15, scope: !5605)
!5615 = !DILocation(line: 203, column: 6, scope: !5592)
!5616 = !DILocation(line: 209, column: 2, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5605, file: !3, line: 206, column: 31)
!5618 = !DILocation(line: 212, column: 20, scope: !5592)
!5619 = !DILocation(line: 212, column: 25, scope: !5592)
!5620 = !DILocation(line: 212, column: 30, scope: !5592)
!5621 = !DILocation(line: 212, column: 35, scope: !5592)
!5622 = !DILocation(line: 213, column: 6, scope: !5592)
!5623 = !DILocation(line: 213, column: 11, scope: !5592)
!5624 = !DILocation(line: 213, column: 28, scope: !5592)
!5625 = !DILocation(line: 213, column: 33, scope: !5592)
!5626 = !DILocation(line: 212, column: 2, scope: !5592)
!5627 = !DILocation(line: 214, column: 6, scope: !5592)
!5628 = !DILocation(line: 214, column: 11, scope: !5592)
!5629 = !DILocation(line: 214, column: 2, scope: !5592)
!5630 = !DILocation(line: 215, column: 1, scope: !5592)
!5631 = distinct !DISubprogram(name: "iminor", scope: !38, file: !38, line: 875, type: !5632, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!7, !2579}
!5634 = !DILocalVariable(name: "inode", arg: 1, scope: !5631, file: !38, line: 875, type: !2579)
!5635 = !DILocation(line: 875, column: 51, scope: !5631)
!5636 = !DILocation(line: 877, column: 9, scope: !5631)
!5637 = !DILocation(line: 877, column: 2, scope: !5631)
!5638 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !5639, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!154, !3714}
!5641 = !DILocalVariable(name: "intf", arg: 1, scope: !5638, file: !6, line: 263, type: !3714)
!5642 = !DILocation(line: 263, column: 60, scope: !5638)
!5643 = !DILocation(line: 265, column: 26, scope: !5638)
!5644 = !DILocation(line: 265, column: 32, scope: !5638)
!5645 = !DILocation(line: 265, column: 9, scope: !5638)
!5646 = !DILocation(line: 265, column: 2, scope: !5638)
!5647 = distinct !DISubprogram(name: "kref_get", scope: !3174, file: !3174, line: 43, type: !4605, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5648 = !DILocalVariable(name: "kref", arg: 1, scope: !5647, file: !3174, line: 43, type: !4607)
!5649 = !DILocation(line: 43, column: 42, scope: !5647)
!5650 = !DILocation(line: 45, column: 16, scope: !5647)
!5651 = !DILocation(line: 45, column: 22, scope: !5647)
!5652 = !DILocation(line: 45, column: 2, scope: !5647)
!5653 = !DILocation(line: 46, column: 1, scope: !5647)
!5654 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5655, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{!154, !5657}
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5658, size: 64)
!5658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!5659 = !DILocalVariable(name: "dev", arg: 1, scope: !5654, file: !67, line: 655, type: !5657)
!5660 = !DILocation(line: 655, column: 58, scope: !5654)
!5661 = !DILocation(line: 657, column: 9, scope: !5654)
!5662 = !DILocation(line: 657, column: 14, scope: !5654)
!5663 = !DILocation(line: 657, column: 2, scope: !5654)
!5664 = distinct !DISubprogram(name: "refcount_inc", scope: !126, file: !126, line: 265, type: !5665, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{null, !4724}
!5667 = !DILocalVariable(name: "r", arg: 1, scope: !5664, file: !126, line: 265, type: !4724)
!5668 = !DILocation(line: 265, column: 45, scope: !5664)
!5669 = !DILocation(line: 267, column: 17, scope: !5664)
!5670 = !DILocation(line: 267, column: 2, scope: !5664)
!5671 = !DILocation(line: 268, column: 1, scope: !5664)
!5672 = distinct !DISubprogram(name: "__refcount_inc", scope: !126, file: !126, line: 248, type: !5673, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{null, !4724, !672}
!5675 = !DILocalVariable(name: "r", arg: 1, scope: !5672, file: !126, line: 248, type: !4724)
!5676 = !DILocation(line: 248, column: 47, scope: !5672)
!5677 = !DILocalVariable(name: "oldp", arg: 2, scope: !5672, file: !126, line: 248, type: !672)
!5678 = !DILocation(line: 248, column: 55, scope: !5672)
!5679 = !DILocation(line: 250, column: 20, scope: !5672)
!5680 = !DILocation(line: 250, column: 23, scope: !5672)
!5681 = !DILocation(line: 250, column: 2, scope: !5672)
!5682 = !DILocation(line: 251, column: 1, scope: !5672)
!5683 = distinct !DISubprogram(name: "__refcount_add", scope: !126, file: !126, line: 191, type: !5684, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{null, !146, !4724, !672}
!5686 = !DILocalVariable(name: "i", arg: 1, scope: !5687, file: !4727, line: 182, type: !146)
!5687 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4727, file: !4727, line: 182, type: !5688, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!146, !146, !4730}
!5690 = !DILocation(line: 182, column: 54, scope: !5687, inlinedAt: !5691)
!5691 = distinct !DILocation(line: 143, column: 9, scope: !5692, inlinedAt: !5693)
!5692 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4734, file: !4734, line: 140, type: !5688, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5693 = distinct !DILocation(line: 193, column: 12, scope: !5683)
!5694 = !DILocalVariable(name: "v", arg: 2, scope: !5687, file: !4727, line: 182, type: !4730)
!5695 = !DILocation(line: 182, column: 67, scope: !5687, inlinedAt: !5691)
!5696 = !DILocalVariable(name: "__ret", scope: !5697, file: !4727, line: 184, type: !146)
!5697 = distinct !DILexicalBlock(scope: !5687, file: !4727, line: 184, column: 9)
!5698 = !DILocation(line: 184, column: 9, scope: !5697, inlinedAt: !5691)
!5699 = !DILocalVariable(name: "v", arg: 1, scope: !5700, file: !4740, line: 99, type: !4743)
!5700 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4740, file: !4740, line: 99, type: !4741, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5701 = !DILocation(line: 99, column: 79, scope: !5700, inlinedAt: !5702)
!5702 = distinct !DILocation(line: 142, column: 2, scope: !5692, inlinedAt: !5693)
!5703 = !DILocalVariable(name: "size", arg: 2, scope: !5700, file: !4740, line: 99, type: !292)
!5704 = !DILocation(line: 99, column: 89, scope: !5700, inlinedAt: !5702)
!5705 = !DILocalVariable(name: "i", arg: 1, scope: !5692, file: !4734, line: 140, type: !146)
!5706 = !DILocation(line: 140, column: 30, scope: !5692, inlinedAt: !5693)
!5707 = !DILocalVariable(name: "v", arg: 2, scope: !5692, file: !4734, line: 140, type: !4730)
!5708 = !DILocation(line: 140, column: 43, scope: !5692, inlinedAt: !5693)
!5709 = !DILocalVariable(name: "i", arg: 1, scope: !5683, file: !126, line: 191, type: !146)
!5710 = !DILocation(line: 191, column: 39, scope: !5683)
!5711 = !DILocalVariable(name: "r", arg: 2, scope: !5683, file: !126, line: 191, type: !4724)
!5712 = !DILocation(line: 191, column: 54, scope: !5683)
!5713 = !DILocalVariable(name: "oldp", arg: 3, scope: !5683, file: !126, line: 191, type: !672)
!5714 = !DILocation(line: 191, column: 62, scope: !5683)
!5715 = !DILocalVariable(name: "old", scope: !5683, file: !126, line: 193, type: !146)
!5716 = !DILocation(line: 193, column: 6, scope: !5683)
!5717 = !DILocation(line: 193, column: 37, scope: !5683)
!5718 = !DILocation(line: 193, column: 41, scope: !5683)
!5719 = !DILocation(line: 193, column: 44, scope: !5683)
!5720 = !DILocation(line: 142, column: 31, scope: !5692, inlinedAt: !5693)
!5721 = !DILocation(line: 101, column: 20, scope: !5700, inlinedAt: !5702)
!5722 = !DILocation(line: 101, column: 23, scope: !5700, inlinedAt: !5702)
!5723 = !DILocation(line: 101, column: 2, scope: !5700, inlinedAt: !5702)
!5724 = !DILocation(line: 102, column: 2, scope: !5700, inlinedAt: !5702)
!5725 = !DILocation(line: 143, column: 39, scope: !5692, inlinedAt: !5693)
!5726 = !DILocation(line: 143, column: 42, scope: !5692, inlinedAt: !5693)
!5727 = !{i32 -2146614174}
!5728 = !DILocation(line: 195, column: 6, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5683, file: !126, line: 195, column: 6)
!5730 = !DILocation(line: 195, column: 6, scope: !5683)
!5731 = !DILocation(line: 196, column: 11, scope: !5729)
!5732 = !DILocation(line: 196, column: 4, scope: !5729)
!5733 = !DILocation(line: 196, column: 9, scope: !5729)
!5734 = !DILocation(line: 196, column: 3, scope: !5729)
!5735 = !DILocation(line: 198, column: 6, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5683, file: !126, line: 198, column: 6)
!5737 = !DILocation(line: 198, column: 6, scope: !5683)
!5738 = !DILocation(line: 199, column: 26, scope: !5736)
!5739 = !DILocation(line: 199, column: 3, scope: !5736)
!5740 = !DILocation(line: 200, column: 11, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5736, file: !126, line: 200, column: 11)
!5742 = !DILocation(line: 200, column: 11, scope: !5736)
!5743 = !DILocation(line: 201, column: 26, scope: !5741)
!5744 = !DILocation(line: 201, column: 3, scope: !5741)
!5745 = !DILocation(line: 202, column: 1, scope: !5683)
!5746 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !126, file: !126, line: 331, type: !5747, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!457, !4724}
!5749 = !DILocalVariable(name: "r", arg: 1, scope: !5746, file: !126, line: 331, type: !4724)
!5750 = !DILocation(line: 331, column: 67, scope: !5746)
!5751 = !DILocation(line: 333, column: 33, scope: !5746)
!5752 = !DILocation(line: 333, column: 9, scope: !5746)
!5753 = !DILocation(line: 333, column: 2, scope: !5746)
!5754 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !126, file: !126, line: 313, type: !5755, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!457, !4724, !672}
!5757 = !DILocalVariable(name: "r", arg: 1, scope: !5754, file: !126, line: 313, type: !4724)
!5758 = !DILocation(line: 313, column: 69, scope: !5754)
!5759 = !DILocalVariable(name: "oldp", arg: 2, scope: !5754, file: !126, line: 313, type: !672)
!5760 = !DILocation(line: 313, column: 77, scope: !5754)
!5761 = !DILocation(line: 315, column: 36, scope: !5754)
!5762 = !DILocation(line: 315, column: 39, scope: !5754)
!5763 = !DILocation(line: 315, column: 9, scope: !5754)
!5764 = !DILocation(line: 315, column: 2, scope: !5754)
!5765 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !126, file: !126, line: 270, type: !5766, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!457, !146, !4724, !672}
!5768 = !DILocalVariable(name: "i", arg: 1, scope: !5769, file: !4727, line: 188, type: !146)
!5769 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4727, file: !4727, line: 188, type: !5688, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5770 = !DILocation(line: 188, column: 54, scope: !5769, inlinedAt: !5771)
!5771 = distinct !DILocation(line: 221, column: 9, scope: !5772, inlinedAt: !5773)
!5772 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4734, file: !4734, line: 218, type: !5688, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5773 = distinct !DILocation(line: 272, column: 12, scope: !5765)
!5774 = !DILocalVariable(name: "v", arg: 2, scope: !5769, file: !4727, line: 188, type: !4730)
!5775 = !DILocation(line: 188, column: 67, scope: !5769, inlinedAt: !5771)
!5776 = !DILocalVariable(name: "__ret", scope: !5777, file: !4727, line: 190, type: !146)
!5777 = distinct !DILexicalBlock(scope: !5769, file: !4727, line: 190, column: 9)
!5778 = !DILocation(line: 190, column: 9, scope: !5777, inlinedAt: !5771)
!5779 = !DILocation(line: 99, column: 79, scope: !5700, inlinedAt: !5780)
!5780 = distinct !DILocation(line: 220, column: 2, scope: !5772, inlinedAt: !5773)
!5781 = !DILocation(line: 99, column: 89, scope: !5700, inlinedAt: !5780)
!5782 = !DILocalVariable(name: "i", arg: 1, scope: !5772, file: !4734, line: 218, type: !146)
!5783 = !DILocation(line: 218, column: 30, scope: !5772, inlinedAt: !5773)
!5784 = !DILocalVariable(name: "v", arg: 2, scope: !5772, file: !4734, line: 218, type: !4730)
!5785 = !DILocation(line: 218, column: 43, scope: !5772, inlinedAt: !5773)
!5786 = !DILocalVariable(name: "i", arg: 1, scope: !5765, file: !126, line: 270, type: !146)
!5787 = !DILocation(line: 270, column: 61, scope: !5765)
!5788 = !DILocalVariable(name: "r", arg: 2, scope: !5765, file: !126, line: 270, type: !4724)
!5789 = !DILocation(line: 270, column: 76, scope: !5765)
!5790 = !DILocalVariable(name: "oldp", arg: 3, scope: !5765, file: !126, line: 270, type: !672)
!5791 = !DILocation(line: 270, column: 84, scope: !5765)
!5792 = !DILocalVariable(name: "old", scope: !5765, file: !126, line: 272, type: !146)
!5793 = !DILocation(line: 272, column: 6, scope: !5765)
!5794 = !DILocation(line: 272, column: 37, scope: !5765)
!5795 = !DILocation(line: 272, column: 41, scope: !5765)
!5796 = !DILocation(line: 272, column: 44, scope: !5765)
!5797 = !DILocation(line: 220, column: 31, scope: !5772, inlinedAt: !5773)
!5798 = !DILocation(line: 101, column: 20, scope: !5700, inlinedAt: !5780)
!5799 = !DILocation(line: 101, column: 23, scope: !5700, inlinedAt: !5780)
!5800 = !DILocation(line: 101, column: 2, scope: !5700, inlinedAt: !5780)
!5801 = !DILocation(line: 102, column: 2, scope: !5700, inlinedAt: !5780)
!5802 = !DILocation(line: 221, column: 39, scope: !5772, inlinedAt: !5773)
!5803 = !DILocation(line: 221, column: 42, scope: !5772, inlinedAt: !5773)
!5804 = !{i32 -2146612822}
!5805 = !DILocation(line: 274, column: 6, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5765, file: !126, line: 274, column: 6)
!5807 = !DILocation(line: 274, column: 6, scope: !5765)
!5808 = !DILocation(line: 275, column: 11, scope: !5806)
!5809 = !DILocation(line: 275, column: 4, scope: !5806)
!5810 = !DILocation(line: 275, column: 9, scope: !5806)
!5811 = !DILocation(line: 275, column: 3, scope: !5806)
!5812 = !DILocation(line: 277, column: 6, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5765, file: !126, line: 277, column: 6)
!5814 = !DILocation(line: 277, column: 13, scope: !5813)
!5815 = !DILocation(line: 277, column: 10, scope: !5813)
!5816 = !DILocation(line: 277, column: 6, scope: !5765)
!5817 = !DILocation(line: 278, column: 3, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5813, file: !126, line: 277, column: 16)
!5819 = !{i32 -2144392355}
!5820 = !DILocation(line: 279, column: 3, scope: !5818)
!5821 = !DILocation(line: 282, column: 6, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5765, file: !126, line: 282, column: 6)
!5823 = !DILocation(line: 282, column: 6, scope: !5765)
!5824 = !DILocation(line: 283, column: 26, scope: !5822)
!5825 = !DILocation(line: 283, column: 3, scope: !5822)
!5826 = !DILocation(line: 285, column: 2, scope: !5765)
!5827 = !DILocation(line: 286, column: 1, scope: !5765)
!5828 = distinct !DISubprogram(name: "lcd_draw_down", scope: !3, file: !3, line: 392, type: !5829, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !219)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{null, !3822}
!5831 = !DILocalVariable(name: "dev", arg: 1, scope: !5828, file: !3, line: 392, type: !3822)
!5832 = !DILocation(line: 392, column: 43, scope: !5828)
!5833 = !DILocalVariable(name: "time", scope: !5828, file: !3, line: 394, type: !146)
!5834 = !DILocation(line: 394, column: 6, scope: !5828)
!5835 = !DILocation(line: 396, column: 40, scope: !5828)
!5836 = !DILocation(line: 396, column: 45, scope: !5828)
!5837 = !DILocation(line: 396, column: 9, scope: !5828)
!5838 = !DILocation(line: 396, column: 7, scope: !5828)
!5839 = !DILocation(line: 397, column: 7, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 397, column: 6)
!5841 = !DILocation(line: 397, column: 6, scope: !5828)
!5842 = !DILocation(line: 398, column: 27, scope: !5840)
!5843 = !DILocation(line: 398, column: 32, scope: !5840)
!5844 = !DILocation(line: 398, column: 3, scope: !5840)
!5845 = !DILocation(line: 399, column: 1, scope: !5828)
