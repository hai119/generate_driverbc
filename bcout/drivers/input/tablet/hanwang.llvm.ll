; ModuleID = '../bcout/drivers/input/tablet/hanwang.llvm.bc'
source_filename = "drivers/input/tablet/hanwang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_hanwang_driver_init6:\09\09\09"
module asm ".long\09hanwang_driver_init - .\09\09\09"
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
%struct.kmem_cache = type opaque
%struct.hanwang_features = type { i16, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.hanwang = type { i8*, i64, %struct.input_dev*, %struct.usb_device*, %struct.urb*, %struct.hanwang_features*, i32, i32, [64 x i8], [32 x i8] }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.64 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.64 = type { %struct.ff_periodic_effect }
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

@__UNIQUE_ID_author212 = internal constant [49 x i8] c"hanwang.author=Xing Wei <weixing@hanwang.com.cn>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description213 = internal constant [46 x i8] c"hanwang.description=USB Hanwang tablet driver\00", section ".modinfo", align 1, !dbg !3821
@__UNIQUE_ID_file214 = internal constant [42 x i8] c"hanwang.file=drivers/input/tablet/hanwang\00", section ".modinfo", align 1, !dbg !3826
@__UNIQUE_ID_license215 = internal constant [20 x i8] c"hanwang.license=GPL\00", section ".modinfo", align 1, !dbg !3831
@__UNIQUE_ID___addressable_hanwang_driver_init216 = internal global i8* bitcast (i32 ()* @hanwang_driver_init to i8*), section ".discard.addressable", align 8, !dbg !3834
@hanwang_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hanwang_probe, void (%struct.usb_interface*)* @hanwang_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* @hanwang_ids, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !3841
@__exitcall_hanwang_driver_exit = internal global void ()* @hanwang_driver_exit, section ".exitcall.exit", align 8, !dbg !3836
@.str = private unnamed_addr constant [8 x i8] c"hanwang\00", align 1
@hanwang_ids = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 2903, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 1, i8 2, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3934
@.str.1 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@hw_eventtypes = internal constant [3 x i32] [i32 1, i32 3, i32 4], align 4, !dbg !3919
@hw_absevents = internal constant [9 x i32] [i32 0, i32 1, i32 26, i32 27, i32 8, i32 3, i32 4, i32 24, i32 40], align 16, !dbg !3923
@hw_btnevents = internal constant [15 x i32] [i32 331, i32 332, i32 320, i32 321, i32 326, i32 325, i32 256, i32 257, i32 258, i32 259, i32 260, i32 261, i32 262, i32 263, i32 264], align 16, !dbg !3926
@hw_mscevents = internal constant [1 x i32] zeroinitializer, align 4, !dbg !3931
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@features_array = internal constant [5 x %struct.hanwang_features] [%struct.hanwang_features { i16 -31448, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 10, i32 22359, i32 13970, i32 63, i32 127, i32 2048 }, %struct.hanwang_features { i16 -31447, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 10, i32 15748, i32 9842, i32 63, i32 127, i32 2048 }, %struct.hanwang_features { i16 -31446, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 10, i32 32512, i32 20320, i32 63, i32 127, i32 2048 }, %struct.hanwang_features { i16 -31743, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 10, i32 26510, i32 16720, i32 63, i32 127, i32 1024 }, %struct.hanwang_features { i16 -31485, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 10, i32 10206, i32 7422, i32 63, i32 127, i32 1024 }], align 16, !dbg !3902
@.str.3 = private unnamed_addr constant [28 x i8] c"Hanwang Art Master III 0906\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Hanwang Art Master III 0604\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Hanwang Art Master III 1308\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Hanwang Art Master HD 5012\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Hanwang Art Master II\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s - urb shutting down with status: %d\00", align 1
@__func__.hanwang_irq = private unnamed_addr constant [12 x i8] c"hanwang_irq\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s - nonzero urb status received: %d\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%s - usb_submit_urb failed with result %d\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author212, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_description213, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file214, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license215, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_hanwang_driver_init216 to i8*), i8* bitcast (void ()* @hanwang_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_hanwang_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @hanwang_driver_init() #0 section ".init.text" !dbg !3945 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @hanwang_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #8, !dbg !3948
  ret i32 %call, !dbg !3948
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @hanwang_driver_exit() #0 section ".exit.text" !dbg !3949 {
entry:
  call void @usb_deregister(%struct.usb_driver* @hanwang_driver) #8, !dbg !3950
  ret void, !dbg !3950
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hanwang_probe(%struct.usb_interface* %intf, %struct.usb_device_id* %id) #2 !dbg !3951 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %dev = alloca %struct.usb_device*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %hanwang = alloca %struct.hanwang*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !3952, metadata !DIExpression()), !dbg !3953
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !3954, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev, metadata !3956, metadata !DIExpression()), !dbg !3957
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3958
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #8, !dbg !3959
  store %struct.usb_device* %call, %struct.usb_device** %dev, align 8, !dbg !3957
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !3960, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.declare(metadata %struct.hanwang** %hanwang, metadata !3963, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !4308, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4312, metadata !DIExpression()), !dbg !4313
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4314
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4316
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4316
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %2, i32 0, i32 0, !dbg !4317
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4318
  %3 = load i8, i8* %bNumEndpoints, align 4, !dbg !4318
  %conv = zext i8 %3 to i32, !dbg !4314
  %cmp = icmp slt i32 %conv, 1, !dbg !4319
  br i1 %cmp, label %if.then, label %if.end, !dbg !4320

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4321
  br label %return, !dbg !4321

if.end:                                           ; preds = %entry
  %call2 = call i8* @kzalloc(i64 152, i32 3264) #8, !dbg !4322
  %4 = bitcast i8* %call2 to %struct.hanwang*, !dbg !4322
  store %struct.hanwang* %4, %struct.hanwang** %hanwang, align 8, !dbg !4323
  %call3 = call %struct.input_dev* @input_allocate_device() #8, !dbg !4324
  store %struct.input_dev* %call3, %struct.input_dev** %input_dev, align 8, !dbg !4325
  %5 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4326
  %tobool = icmp ne %struct.hanwang* %5, null, !dbg !4326
  br i1 %tobool, label %lor.lhs.false, label %if.then5, !dbg !4328

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4329
  %tobool4 = icmp ne %struct.input_dev* %6, null, !dbg !4329
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4330

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -12, i32* %error, align 4, !dbg !4331
  br label %fail1, !dbg !4333

if.end6:                                          ; preds = %lor.lhs.false
  %7 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4334
  %8 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4336
  %call7 = call zeroext i1 @get_features(%struct.usb_device* %7, %struct.hanwang* %8) #8, !dbg !4337
  br i1 %call7, label %if.end9, label %if.then8, !dbg !4338

if.then8:                                         ; preds = %if.end6
  store i32 -6, i32* %error, align 4, !dbg !4339
  br label %fail1, !dbg !4341

if.end9:                                          ; preds = %if.end6
  %9 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4342
  %10 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4343
  %features = getelementptr inbounds %struct.hanwang, %struct.hanwang* %10, i32 0, i32 5, !dbg !4344
  %11 = load %struct.hanwang_features*, %struct.hanwang_features** %features, align 8, !dbg !4344
  %pkg_len = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %11, i32 0, i32 3, !dbg !4345
  %12 = load i32, i32* %pkg_len, align 4, !dbg !4345
  %conv10 = sext i32 %12 to i64, !dbg !4343
  %13 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4346
  %data_dma = getelementptr inbounds %struct.hanwang, %struct.hanwang* %13, i32 0, i32 1, !dbg !4347
  %call11 = call i8* @usb_alloc_coherent(%struct.usb_device* %9, i64 %conv10, i32 3264, i64* %data_dma) #8, !dbg !4348
  %14 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4349
  %data = getelementptr inbounds %struct.hanwang, %struct.hanwang* %14, i32 0, i32 0, !dbg !4350
  store i8* %call11, i8** %data, align 8, !dbg !4351
  %15 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4352
  %data12 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %15, i32 0, i32 0, !dbg !4354
  %16 = load i8*, i8** %data12, align 8, !dbg !4354
  %tobool13 = icmp ne i8* %16, null, !dbg !4352
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4355

if.then14:                                        ; preds = %if.end9
  store i32 -12, i32* %error, align 4, !dbg !4356
  br label %fail1, !dbg !4358

if.end15:                                         ; preds = %if.end9
  %call16 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #8, !dbg !4359
  %17 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4360
  %irq = getelementptr inbounds %struct.hanwang, %struct.hanwang* %17, i32 0, i32 4, !dbg !4361
  store %struct.urb* %call16, %struct.urb** %irq, align 8, !dbg !4362
  %18 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4363
  %irq17 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %18, i32 0, i32 4, !dbg !4365
  %19 = load %struct.urb*, %struct.urb** %irq17, align 8, !dbg !4365
  %tobool18 = icmp ne %struct.urb* %19, null, !dbg !4363
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4366

if.then19:                                        ; preds = %if.end15
  store i32 -12, i32* %error, align 4, !dbg !4367
  br label %fail2, !dbg !4369

if.end20:                                         ; preds = %if.end15
  %20 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4370
  %21 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4371
  %usbdev = getelementptr inbounds %struct.hanwang, %struct.hanwang* %21, i32 0, i32 3, !dbg !4372
  store %struct.usb_device* %20, %struct.usb_device** %usbdev, align 8, !dbg !4373
  %22 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4374
  %23 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4375
  %dev21 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %23, i32 0, i32 2, !dbg !4376
  store %struct.input_dev* %22, %struct.input_dev** %dev21, align 8, !dbg !4377
  %24 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4378
  %25 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4379
  %phys = getelementptr inbounds %struct.hanwang, %struct.hanwang* %25, i32 0, i32 9, !dbg !4380
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4379
  %call22 = call i32 @usb_make_path(%struct.usb_device* %24, i8* %arraydecay, i64 32) #8, !dbg !4381
  %26 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4382
  %phys23 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %26, i32 0, i32 9, !dbg !4383
  %arraydecay24 = getelementptr inbounds [32 x i8], [32 x i8]* %phys23, i64 0, i64 0, !dbg !4382
  %call25 = call i64 @strlcat(i8* %arraydecay24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 32) #8, !dbg !4384
  %27 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4385
  %name = getelementptr inbounds %struct.hanwang, %struct.hanwang* %27, i32 0, i32 8, !dbg !4386
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !4385
  %28 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4387
  %features27 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %28, i32 0, i32 5, !dbg !4388
  %29 = load %struct.hanwang_features*, %struct.hanwang_features** %features27, align 8, !dbg !4388
  %name28 = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %29, i32 0, i32 1, !dbg !4389
  %30 = load i8*, i8** %name28, align 8, !dbg !4389
  %call29 = call i64 @strlcpy(i8* %arraydecay26, i8* %30, i64 64) #8, !dbg !4390
  %31 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4391
  %name30 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %31, i32 0, i32 8, !dbg !4392
  %arraydecay31 = getelementptr inbounds [64 x i8], [64 x i8]* %name30, i64 0, i64 0, !dbg !4391
  %32 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4393
  %name32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 0, !dbg !4394
  store i8* %arraydecay31, i8** %name32, align 8, !dbg !4395
  %33 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4396
  %phys33 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %33, i32 0, i32 9, !dbg !4397
  %arraydecay34 = getelementptr inbounds [32 x i8], [32 x i8]* %phys33, i64 0, i64 0, !dbg !4396
  %34 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4398
  %phys35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 1, !dbg !4399
  store i8* %arraydecay34, i8** %phys35, align 8, !dbg !4400
  %35 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4401
  %36 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4402
  %id36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 3, !dbg !4403
  call void @usb_to_input_id(%struct.usb_device* %35, %struct.input_id* %id36) #8, !dbg !4404
  %37 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4405
  %dev37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 7, !dbg !4406
  %38 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4407
  %dev38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 40, !dbg !4408
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev38, i32 0, i32 1, !dbg !4409
  store %struct.device* %dev37, %struct.device** %parent, align 8, !dbg !4410
  %39 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4411
  %40 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4412
  %41 = bitcast %struct.hanwang* %40 to i8*, !dbg !4412
  call void @input_set_drvdata(%struct.input_dev* %39, i8* %41) #8, !dbg !4413
  %42 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4414
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 31, !dbg !4415
  store i32 (%struct.input_dev*)* @hanwang_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !4416
  %43 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4417
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 32, !dbg !4418
  store void (%struct.input_dev*)* @hanwang_close, void (%struct.input_dev*)** %close, align 8, !dbg !4419
  store i32 0, i32* %i, align 4, !dbg !4420
  br label %for.cond, !dbg !4422

for.cond:                                         ; preds = %for.inc, %if.end20
  %44 = load i32, i32* %i, align 4, !dbg !4423
  %conv39 = sext i32 %44 to i64, !dbg !4423
  %cmp40 = icmp ult i64 %conv39, 3, !dbg !4425
  br i1 %cmp40, label %for.body, label %for.end, !dbg !4426

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* %i, align 4, !dbg !4427
  %idxprom = sext i32 %45 to i64, !dbg !4428
  %arrayidx = getelementptr [3 x i32], [3 x i32]* @hw_eventtypes, i64 0, i64 %idxprom, !dbg !4428
  %46 = load i32, i32* %arrayidx, align 4, !dbg !4428
  %conv42 = sext i32 %46 to i64, !dbg !4428
  %47 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4429
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 5, !dbg !4430
  %arraydecay43 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4429
  call void @__set_bit(i64 %conv42, i64* %arraydecay43) #8, !dbg !4431
  br label %for.inc, !dbg !4431

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !dbg !4432
  %inc = add i32 %48, 1, !dbg !4432
  store i32 %inc, i32* %i, align 4, !dbg !4432
  br label %for.cond, !dbg !4433, !llvm.loop !4434

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4436
  br label %for.cond44, !dbg !4438

for.cond44:                                       ; preds = %for.inc53, %for.end
  %49 = load i32, i32* %i, align 4, !dbg !4439
  %conv45 = sext i32 %49 to i64, !dbg !4439
  %cmp46 = icmp ult i64 %conv45, 9, !dbg !4441
  br i1 %cmp46, label %for.body48, label %for.end55, !dbg !4442

for.body48:                                       ; preds = %for.cond44
  %50 = load i32, i32* %i, align 4, !dbg !4443
  %idxprom49 = sext i32 %50 to i64, !dbg !4444
  %arrayidx50 = getelementptr [9 x i32], [9 x i32]* @hw_absevents, i64 0, i64 %idxprom49, !dbg !4444
  %51 = load i32, i32* %arrayidx50, align 4, !dbg !4444
  %conv51 = sext i32 %51 to i64, !dbg !4444
  %52 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4445
  %absbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 8, !dbg !4446
  %arraydecay52 = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i64 0, i64 0, !dbg !4445
  call void @__set_bit(i64 %conv51, i64* %arraydecay52) #8, !dbg !4447
  br label %for.inc53, !dbg !4447

for.inc53:                                        ; preds = %for.body48
  %53 = load i32, i32* %i, align 4, !dbg !4448
  %inc54 = add i32 %53, 1, !dbg !4448
  store i32 %inc54, i32* %i, align 4, !dbg !4448
  br label %for.cond44, !dbg !4449, !llvm.loop !4450

for.end55:                                        ; preds = %for.cond44
  store i32 0, i32* %i, align 4, !dbg !4452
  br label %for.cond56, !dbg !4454

for.cond56:                                       ; preds = %for.inc65, %for.end55
  %54 = load i32, i32* %i, align 4, !dbg !4455
  %conv57 = sext i32 %54 to i64, !dbg !4455
  %cmp58 = icmp ult i64 %conv57, 15, !dbg !4457
  br i1 %cmp58, label %for.body60, label %for.end67, !dbg !4458

for.body60:                                       ; preds = %for.cond56
  %55 = load i32, i32* %i, align 4, !dbg !4459
  %idxprom61 = sext i32 %55 to i64, !dbg !4460
  %arrayidx62 = getelementptr [15 x i32], [15 x i32]* @hw_btnevents, i64 0, i64 %idxprom61, !dbg !4460
  %56 = load i32, i32* %arrayidx62, align 4, !dbg !4460
  %conv63 = sext i32 %56 to i64, !dbg !4460
  %57 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4461
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %57, i32 0, i32 6, !dbg !4462
  %arraydecay64 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4461
  call void @__set_bit(i64 %conv63, i64* %arraydecay64) #8, !dbg !4463
  br label %for.inc65, !dbg !4463

for.inc65:                                        ; preds = %for.body60
  %58 = load i32, i32* %i, align 4, !dbg !4464
  %inc66 = add i32 %58, 1, !dbg !4464
  store i32 %inc66, i32* %i, align 4, !dbg !4464
  br label %for.cond56, !dbg !4465, !llvm.loop !4466

for.end67:                                        ; preds = %for.cond56
  store i32 0, i32* %i, align 4, !dbg !4468
  br label %for.cond68, !dbg !4470

for.cond68:                                       ; preds = %for.inc77, %for.end67
  %59 = load i32, i32* %i, align 4, !dbg !4471
  %conv69 = sext i32 %59 to i64, !dbg !4471
  %cmp70 = icmp ult i64 %conv69, 1, !dbg !4473
  br i1 %cmp70, label %for.body72, label %for.end79, !dbg !4474

for.body72:                                       ; preds = %for.cond68
  %60 = load i32, i32* %i, align 4, !dbg !4475
  %idxprom73 = sext i32 %60 to i64, !dbg !4476
  %arrayidx74 = getelementptr [1 x i32], [1 x i32]* @hw_mscevents, i64 0, i64 %idxprom73, !dbg !4476
  %61 = load i32, i32* %arrayidx74, align 4, !dbg !4476
  %conv75 = sext i32 %61 to i64, !dbg !4476
  %62 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4477
  %mscbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 9, !dbg !4478
  %arraydecay76 = getelementptr inbounds [1 x i64], [1 x i64]* %mscbit, i64 0, i64 0, !dbg !4477
  call void @__set_bit(i64 %conv75, i64* %arraydecay76) #8, !dbg !4479
  br label %for.inc77, !dbg !4479

for.inc77:                                        ; preds = %for.body72
  %63 = load i32, i32* %i, align 4, !dbg !4480
  %inc78 = add i32 %63, 1, !dbg !4480
  store i32 %inc78, i32* %i, align 4, !dbg !4480
  br label %for.cond68, !dbg !4481, !llvm.loop !4482

for.end79:                                        ; preds = %for.cond68
  %64 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4484
  %65 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4485
  %features80 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %65, i32 0, i32 5, !dbg !4486
  %66 = load %struct.hanwang_features*, %struct.hanwang_features** %features80, align 8, !dbg !4486
  %max_x = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %66, i32 0, i32 4, !dbg !4487
  %67 = load i32, i32* %max_x, align 8, !dbg !4487
  call void @input_set_abs_params(%struct.input_dev* %64, i32 0, i32 0, i32 %67, i32 4, i32 0) #8, !dbg !4488
  %68 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4489
  %69 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4490
  %features81 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %69, i32 0, i32 5, !dbg !4491
  %70 = load %struct.hanwang_features*, %struct.hanwang_features** %features81, align 8, !dbg !4491
  %max_y = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %70, i32 0, i32 5, !dbg !4492
  %71 = load i32, i32* %max_y, align 4, !dbg !4492
  call void @input_set_abs_params(%struct.input_dev* %68, i32 1, i32 0, i32 %71, i32 4, i32 0) #8, !dbg !4493
  %72 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4494
  %73 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4495
  %features82 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %73, i32 0, i32 5, !dbg !4496
  %74 = load %struct.hanwang_features*, %struct.hanwang_features** %features82, align 8, !dbg !4496
  %max_tilt_x = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %74, i32 0, i32 6, !dbg !4497
  %75 = load i32, i32* %max_tilt_x, align 8, !dbg !4497
  call void @input_set_abs_params(%struct.input_dev* %72, i32 26, i32 0, i32 %75, i32 0, i32 0) #8, !dbg !4498
  %76 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4499
  %77 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4500
  %features83 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %77, i32 0, i32 5, !dbg !4501
  %78 = load %struct.hanwang_features*, %struct.hanwang_features** %features83, align 8, !dbg !4501
  %max_tilt_y = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %78, i32 0, i32 7, !dbg !4502
  %79 = load i32, i32* %max_tilt_y, align 4, !dbg !4502
  call void @input_set_abs_params(%struct.input_dev* %76, i32 27, i32 0, i32 %79, i32 0, i32 0) #8, !dbg !4503
  %80 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4504
  %81 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4505
  %features84 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %81, i32 0, i32 5, !dbg !4506
  %82 = load %struct.hanwang_features*, %struct.hanwang_features** %features84, align 8, !dbg !4506
  %max_pressure = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %82, i32 0, i32 8, !dbg !4507
  %83 = load i32, i32* %max_pressure, align 8, !dbg !4507
  call void @input_set_abs_params(%struct.input_dev* %80, i32 24, i32 0, i32 %83, i32 0, i32 0) #8, !dbg !4508
  %84 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4509
  %cur_altsetting85 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %84, i32 0, i32 1, !dbg !4510
  %85 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting85, align 8, !dbg !4510
  %endpoint86 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %85, i32 0, i32 3, !dbg !4511
  %86 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint86, align 8, !dbg !4511
  %arrayidx87 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %86, i64 0, !dbg !4509
  %desc88 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx87, i32 0, i32 0, !dbg !4512
  store %struct.usb_endpoint_descriptor* %desc88, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4513
  %87 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4514
  %irq89 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %87, i32 0, i32 4, !dbg !4515
  %88 = load %struct.urb*, %struct.urb** %irq89, align 8, !dbg !4515
  %89 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4516
  %90 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4517
  %91 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4517
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %91, i32 0, i32 2, !dbg !4517
  %92 = load i8, i8* %bEndpointAddress, align 1, !dbg !4517
  %conv90 = zext i8 %92 to i32, !dbg !4517
  %call91 = call i32 @__create_pipe(%struct.usb_device* %90, i32 %conv90) #8, !dbg !4517
  %or = or i32 1073741824, %call91, !dbg !4517
  %or92 = or i32 %or, 128, !dbg !4517
  %93 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4518
  %data93 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %93, i32 0, i32 0, !dbg !4519
  %94 = load i8*, i8** %data93, align 8, !dbg !4519
  %95 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4520
  %features94 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %95, i32 0, i32 5, !dbg !4521
  %96 = load %struct.hanwang_features*, %struct.hanwang_features** %features94, align 8, !dbg !4521
  %pkg_len95 = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %96, i32 0, i32 3, !dbg !4522
  %97 = load i32, i32* %pkg_len95, align 4, !dbg !4522
  %98 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4523
  %99 = bitcast %struct.hanwang* %98 to i8*, !dbg !4523
  %100 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4524
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %100, i32 0, i32 5, !dbg !4525
  %101 = load i8, i8* %bInterval, align 1, !dbg !4525
  %conv96 = zext i8 %101 to i32, !dbg !4524
  call void @usb_fill_int_urb(%struct.urb* %88, %struct.usb_device* %89, i32 %or92, i8* %94, i32 %97, void (%struct.urb*)* @hanwang_irq, i8* %99, i32 %conv96) #8, !dbg !4526
  %102 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4527
  %data_dma97 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %102, i32 0, i32 1, !dbg !4528
  %103 = load i64, i64* %data_dma97, align 8, !dbg !4528
  %104 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4529
  %irq98 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %104, i32 0, i32 4, !dbg !4530
  %105 = load %struct.urb*, %struct.urb** %irq98, align 8, !dbg !4530
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %105, i32 0, i32 15, !dbg !4531
  store i64 %103, i64* %transfer_dma, align 8, !dbg !4532
  %106 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4533
  %irq99 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %106, i32 0, i32 4, !dbg !4534
  %107 = load %struct.urb*, %struct.urb** %irq99, align 8, !dbg !4534
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 13, !dbg !4535
  %108 = load i32, i32* %transfer_flags, align 4, !dbg !4536
  %or100 = or i32 %108, 4, !dbg !4536
  store i32 %or100, i32* %transfer_flags, align 4, !dbg !4536
  %109 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4537
  %dev101 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %109, i32 0, i32 2, !dbg !4538
  %110 = load %struct.input_dev*, %struct.input_dev** %dev101, align 8, !dbg !4538
  %call102 = call i32 @input_register_device(%struct.input_dev* %110) #8, !dbg !4539
  store i32 %call102, i32* %error, align 4, !dbg !4540
  %111 = load i32, i32* %error, align 4, !dbg !4541
  %tobool103 = icmp ne i32 %111, 0, !dbg !4541
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !4543

if.then104:                                       ; preds = %for.end79
  br label %fail3, !dbg !4544

if.end105:                                        ; preds = %for.end79
  %112 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4545
  %113 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4546
  %114 = bitcast %struct.hanwang* %113 to i8*, !dbg !4546
  call void @usb_set_intfdata(%struct.usb_interface* %112, i8* %114) #8, !dbg !4547
  store i32 0, i32* %retval, align 4, !dbg !4548
  br label %return, !dbg !4548

fail3:                                            ; preds = %if.then104
  call void @llvm.dbg.label(metadata !4549), !dbg !4550
  %115 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4551
  %irq106 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %115, i32 0, i32 4, !dbg !4552
  %116 = load %struct.urb*, %struct.urb** %irq106, align 8, !dbg !4552
  call void @usb_free_urb(%struct.urb* %116) #8, !dbg !4553
  br label %fail2, !dbg !4553

fail2:                                            ; preds = %fail3, %if.then19
  call void @llvm.dbg.label(metadata !4554), !dbg !4555
  %117 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !4556
  %118 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4557
  %features107 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %118, i32 0, i32 5, !dbg !4558
  %119 = load %struct.hanwang_features*, %struct.hanwang_features** %features107, align 8, !dbg !4558
  %pkg_len108 = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %119, i32 0, i32 3, !dbg !4559
  %120 = load i32, i32* %pkg_len108, align 4, !dbg !4559
  %conv109 = sext i32 %120 to i64, !dbg !4557
  %121 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4560
  %data110 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %121, i32 0, i32 0, !dbg !4561
  %122 = load i8*, i8** %data110, align 8, !dbg !4561
  %123 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4562
  %data_dma111 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %123, i32 0, i32 1, !dbg !4563
  %124 = load i64, i64* %data_dma111, align 8, !dbg !4563
  call void @usb_free_coherent(%struct.usb_device* %117, i64 %conv109, i8* %122, i64 %124) #8, !dbg !4564
  br label %fail1, !dbg !4564

fail1:                                            ; preds = %fail2, %if.then14, %if.then8, %if.then5
  call void @llvm.dbg.label(metadata !4565), !dbg !4566
  %125 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4567
  call void @input_free_device(%struct.input_dev* %125) #8, !dbg !4568
  %126 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4569
  %127 = bitcast %struct.hanwang* %126 to i8*, !dbg !4569
  call void @kfree(i8* %127) #8, !dbg !4570
  %128 = load i32, i32* %error, align 4, !dbg !4571
  store i32 %128, i32* %retval, align 4, !dbg !4572
  br label %return, !dbg !4572

return:                                           ; preds = %fail1, %if.end105, %if.then
  %129 = load i32, i32* %retval, align 4, !dbg !4573
  ret i32 %129, !dbg !4573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hanwang_disconnect(%struct.usb_interface* %intf) #2 !dbg !4574 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %hanwang = alloca %struct.hanwang*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.declare(metadata %struct.hanwang** %hanwang, metadata !4577, metadata !DIExpression()), !dbg !4578
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4579
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #8, !dbg !4580
  %1 = bitcast i8* %call to %struct.hanwang*, !dbg !4580
  store %struct.hanwang* %1, %struct.hanwang** %hanwang, align 8, !dbg !4578
  %2 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4581
  %dev = getelementptr inbounds %struct.hanwang, %struct.hanwang* %2, i32 0, i32 2, !dbg !4582
  %3 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4582
  call void @input_unregister_device(%struct.input_dev* %3) #8, !dbg !4583
  %4 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4584
  %irq = getelementptr inbounds %struct.hanwang, %struct.hanwang* %4, i32 0, i32 4, !dbg !4585
  %5 = load %struct.urb*, %struct.urb** %irq, align 8, !dbg !4585
  call void @usb_free_urb(%struct.urb* %5) #8, !dbg !4586
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4587
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %6) #8, !dbg !4588
  %7 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4589
  %features = getelementptr inbounds %struct.hanwang, %struct.hanwang* %7, i32 0, i32 5, !dbg !4590
  %8 = load %struct.hanwang_features*, %struct.hanwang_features** %features, align 8, !dbg !4590
  %pkg_len = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %8, i32 0, i32 3, !dbg !4591
  %9 = load i32, i32* %pkg_len, align 4, !dbg !4591
  %conv = sext i32 %9 to i64, !dbg !4589
  %10 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4592
  %data = getelementptr inbounds %struct.hanwang, %struct.hanwang* %10, i32 0, i32 0, !dbg !4593
  %11 = load i8*, i8** %data, align 8, !dbg !4593
  %12 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4594
  %data_dma = getelementptr inbounds %struct.hanwang, %struct.hanwang* %12, i32 0, i32 1, !dbg !4595
  %13 = load i64, i64* %data_dma, align 8, !dbg !4595
  call void @usb_free_coherent(%struct.usb_device* %call1, i64 %conv, i8* %11, i64 %13) #8, !dbg !4596
  %14 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4597
  %15 = bitcast %struct.hanwang* %14 to i8*, !dbg !4597
  call void @kfree(i8* %15) #8, !dbg !4598
  %16 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4599
  call void @usb_set_intfdata(%struct.usb_interface* %16, i8* null) #8, !dbg !4600
  ret void, !dbg !4601
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4602 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4607, metadata !DIExpression()), !dbg !4609
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4609
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4609
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4609
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4609
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4609
  store i8* %2, i8** %__mptr, align 8, !dbg !4609
  br label %do.body, !dbg !4609

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4610

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4609
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4609
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4609
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4610
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4609
  ret %struct.usb_device* %5, !dbg !4612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4613 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4616, metadata !DIExpression()), !dbg !4620
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4626, metadata !DIExpression()), !dbg !4627
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4628, metadata !DIExpression()), !dbg !4629
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4630, metadata !DIExpression()), !dbg !4631
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4632, metadata !DIExpression()), !dbg !4636
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4638, metadata !DIExpression()), !dbg !4642
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4644, metadata !DIExpression()), !dbg !4648
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4653, metadata !DIExpression()), !dbg !4654
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4655, metadata !DIExpression()), !dbg !4656
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4657, metadata !DIExpression()), !dbg !4658
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4659, metadata !DIExpression()), !dbg !4660
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4661, metadata !DIExpression()), !dbg !4662
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4663, metadata !DIExpression()), !dbg !4664
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4665, metadata !DIExpression()), !dbg !4666
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4667, metadata !DIExpression()), !dbg !4668
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4669, metadata !DIExpression()), !dbg !4670
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  %0 = load i64, i64* %size.addr, align 8, !dbg !4673
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4674
  %or = or i32 %1, 256, !dbg !4675
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4676
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4677
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4678

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4679
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4680
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4681

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4682
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4683
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4684
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4685
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4662
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4686
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4687
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4688
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4689
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4690
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4691
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4692
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4692
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4692
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4692
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4692
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4693
  br label %kmalloc.exit, !dbg !4693

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4694
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4695
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4695
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4697

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4698
  br label %kmalloc_index.exit.i, !dbg !4698

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4699
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4701
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4702

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4703
  br label %kmalloc_index.exit.i, !dbg !4703

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4704
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4706
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4707

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4709
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4710

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4712
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4714
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4715

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4717
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4718

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4722
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4723

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4724
  br label %kmalloc_index.exit.i, !dbg !4724

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4725
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4727
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4728

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4729
  br label %kmalloc_index.exit.i, !dbg !4729

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4730
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4732
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4733

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4734
  br label %kmalloc_index.exit.i, !dbg !4734

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4735
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4737
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4738

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4739
  br label %kmalloc_index.exit.i, !dbg !4739

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4740
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4742
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4743

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4744
  br label %kmalloc_index.exit.i, !dbg !4744

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4745
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4747
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4748

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4749
  br label %kmalloc_index.exit.i, !dbg !4749

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4750
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4752
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4753

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4754
  br label %kmalloc_index.exit.i, !dbg !4754

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4755
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4757
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4758

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4759
  br label %kmalloc_index.exit.i, !dbg !4759

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4762
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4763

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4764
  br label %kmalloc_index.exit.i, !dbg !4764

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4765
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4767
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4768

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4769
  br label %kmalloc_index.exit.i, !dbg !4769

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4770
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4772
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4773

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4774
  br label %kmalloc_index.exit.i, !dbg !4774

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4775
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4777
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4778

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4779
  br label %kmalloc_index.exit.i, !dbg !4779

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4780
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4782
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4783

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4784
  br label %kmalloc_index.exit.i, !dbg !4784

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4785
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4787
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4788

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4789
  br label %kmalloc_index.exit.i, !dbg !4789

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4790
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4792
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4793

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4794
  br label %kmalloc_index.exit.i, !dbg !4794

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4795
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4797
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4798

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4799
  br label %kmalloc_index.exit.i, !dbg !4799

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4800
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4802
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4803

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4804
  br label %kmalloc_index.exit.i, !dbg !4804

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4805
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4807
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4808

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4809
  br label %kmalloc_index.exit.i, !dbg !4809

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4810
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4812
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4813

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4814
  br label %kmalloc_index.exit.i, !dbg !4814

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4815
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4817
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4818

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4819
  br label %kmalloc_index.exit.i, !dbg !4819

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4820
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4822
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4823

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4824
  br label %kmalloc_index.exit.i, !dbg !4824

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4825
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4827
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4828

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4829
  br label %kmalloc_index.exit.i, !dbg !4829

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4830
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4832
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4833

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4834
  br label %kmalloc_index.exit.i, !dbg !4834

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4835
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4837
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4838

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4839
  br label %kmalloc_index.exit.i, !dbg !4839

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4840, !srcloc !4843
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !4844, !srcloc !4847
  unreachable, !dbg !4848

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4849
  store i32 %45, i32* %index.i, align 4, !dbg !4850
  %46 = load i32, i32* %index.i, align 4, !dbg !4851
  %tobool.i = icmp ne i32 %46, 0, !dbg !4851
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4853

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4854
  br label %kmalloc.exit, !dbg !4854

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4855
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4856
  %and.i.i = and i32 %48, 17, !dbg !4856
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4856
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4856
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4856
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4856
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4858

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4859
  br label %kmalloc_type.exit.i, !dbg !4859

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4860
  %and2.i.i = and i32 %49, 1, !dbg !4861
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4860
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4860
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4860
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4862
  br label %kmalloc_type.exit.i, !dbg !4862

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4863
  %idxprom.i = zext i32 %51 to i64, !dbg !4864
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4864
  %52 = load i32, i32* %index.i, align 4, !dbg !4865
  %idxprom6.i = zext i32 %52 to i64, !dbg !4864
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4864
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4864
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4866
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4867
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4868
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4869
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4870
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4870
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4870
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4870
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4870
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4631
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4871
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4872
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4873
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4874
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4875
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4876
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4877
  store i8* %62, i8** %retval.i, align 8, !dbg !4878
  br label %kmalloc.exit, !dbg !4878

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4879
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4880
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4881
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4881
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4881
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4881
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4881
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4882
  br label %kmalloc.exit, !dbg !4882

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4883
  ret i8* %65, !dbg !4884
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @get_features(%struct.usb_device* %dev, %struct.hanwang* %hanwang) #2 !dbg !4885 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.usb_device*, align 8
  %hanwang.addr = alloca %struct.hanwang*, align 8
  %i = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  store %struct.hanwang* %hanwang, %struct.hanwang** %hanwang.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hanwang** %hanwang.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4892, metadata !DIExpression()), !dbg !4893
  store i32 0, i32* %i, align 4, !dbg !4894
  br label %for.cond, !dbg !4896

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4897
  %conv = sext i32 %0 to i64, !dbg !4897
  %cmp = icmp ult i64 %conv, 5, !dbg !4899
  br i1 %cmp, label %for.body, label %for.end, !dbg !4900

for.body:                                         ; preds = %for.cond
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4901
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !4901
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 8, !dbg !4901
  %2 = load i16, i16* %idProduct, align 2, !dbg !4901
  %conv2 = zext i16 %2 to i32, !dbg !4901
  %3 = load i32, i32* %i, align 4, !dbg !4904
  %idxprom = sext i32 %3 to i64, !dbg !4905
  %arrayidx = getelementptr [5 x %struct.hanwang_features], [5 x %struct.hanwang_features]* @features_array, i64 0, i64 %idxprom, !dbg !4905
  %pid = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %arrayidx, i32 0, i32 0, !dbg !4906
  %4 = load i16, i16* %pid, align 16, !dbg !4906
  %conv3 = zext i16 %4 to i32, !dbg !4905
  %cmp4 = icmp eq i32 %conv2, %conv3, !dbg !4907
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4908

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !4909
  %idxprom6 = sext i32 %5 to i64, !dbg !4911
  %arrayidx7 = getelementptr [5 x %struct.hanwang_features], [5 x %struct.hanwang_features]* @features_array, i64 0, i64 %idxprom6, !dbg !4911
  %6 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !4912
  %features = getelementptr inbounds %struct.hanwang, %struct.hanwang* %6, i32 0, i32 5, !dbg !4913
  store %struct.hanwang_features* %arrayidx7, %struct.hanwang_features** %features, align 8, !dbg !4914
  store i1 true, i1* %retval, align 1, !dbg !4915
  br label %return, !dbg !4915

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4916

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !4917
  %inc = add i32 %7, 1, !dbg !4917
  store i32 %inc, i32* %i, align 4, !dbg !4917
  br label %for.cond, !dbg !4918, !llvm.loop !4919

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !4921
  br label %return, !dbg !4921

return:                                           ; preds = %for.end, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !4922
  ret i1 %8, !dbg !4922
}

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !4923 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !4932, metadata !DIExpression()), !dbg !4933
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !4934
  %1 = load i64, i64* %size.addr, align 8, !dbg !4935
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4936
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !4937
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4937
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !4938
  %4 = load i8*, i8** %bus_name, align 8, !dbg !4938
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4939
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !4940
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !4939
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %4, i8* %arraydecay) #8, !dbg !4941
  store i32 %call, i32* %actual, align 4, !dbg !4942
  %6 = load i32, i32* %actual, align 4, !dbg !4943
  %7 = load i64, i64* %size.addr, align 8, !dbg !4944
  %conv = trunc i64 %7 to i32, !dbg !4945
  %cmp = icmp sge i32 %6, %conv, !dbg !4946
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4947

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4947

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !4948
  br label %cond.end, !dbg !4947

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !4947
  ret i32 %cond, !dbg !4949
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !4950 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !4961
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !4962
  store i16 3, i16* %bustype, align 2, !dbg !4963
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4964
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !4964
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !4964
  %2 = load i16, i16* %idVendor, align 8, !dbg !4964
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !4965
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !4966
  store i16 %2, i16* %vendor, align 2, !dbg !4967
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4968
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !4968
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !4968
  %5 = load i16, i16* %idProduct, align 2, !dbg !4968
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !4969
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !4970
  store i16 %5, i16* %product, align 2, !dbg !4971
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4972
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !4972
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !4972
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !4972
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !4973
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !4974
  store i16 %8, i16* %version, align 2, !dbg !4975
  ret void, !dbg !4976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #2 !dbg !4977 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4984
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !4985
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4986
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #8, !dbg !4987
  ret void, !dbg !4988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hanwang_open(%struct.input_dev* %dev) #2 !dbg !4989 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %hanwang = alloca %struct.hanwang*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  call void @llvm.dbg.declare(metadata %struct.hanwang** %hanwang, metadata !4992, metadata !DIExpression()), !dbg !4993
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4994
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #8, !dbg !4995
  %1 = bitcast i8* %call to %struct.hanwang*, !dbg !4995
  store %struct.hanwang* %1, %struct.hanwang** %hanwang, align 8, !dbg !4993
  %2 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4996
  %usbdev = getelementptr inbounds %struct.hanwang, %struct.hanwang* %2, i32 0, i32 3, !dbg !4997
  %3 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !4997
  %4 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !4998
  %irq = getelementptr inbounds %struct.hanwang, %struct.hanwang* %4, i32 0, i32 4, !dbg !4999
  %5 = load %struct.urb*, %struct.urb** %irq, align 8, !dbg !4999
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 8, !dbg !5000
  store %struct.usb_device* %3, %struct.usb_device** %dev1, align 8, !dbg !5001
  %6 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !5002
  %irq2 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %6, i32 0, i32 4, !dbg !5004
  %7 = load %struct.urb*, %struct.urb** %irq2, align 8, !dbg !5004
  %call3 = call i32 @usb_submit_urb(%struct.urb* %7, i32 3264) #8, !dbg !5005
  %tobool = icmp ne i32 %call3, 0, !dbg !5005
  br i1 %tobool, label %if.then, label %if.end, !dbg !5006

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5007
  br label %return, !dbg !5007

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5008
  br label %return, !dbg !5008

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5009
  ret i32 %8, !dbg !5009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hanwang_close(%struct.input_dev* %dev) #2 !dbg !5010 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %hanwang = alloca %struct.hanwang*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  call void @llvm.dbg.declare(metadata %struct.hanwang** %hanwang, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5015
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #8, !dbg !5016
  %1 = bitcast i8* %call to %struct.hanwang*, !dbg !5016
  store %struct.hanwang* %1, %struct.hanwang** %hanwang, align 8, !dbg !5014
  %2 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !5017
  %irq = getelementptr inbounds %struct.hanwang, %struct.hanwang* %2, i32 0, i32 4, !dbg !5018
  %3 = load %struct.urb*, %struct.urb** %irq, align 8, !dbg !5018
  call void @usb_kill_urb(%struct.urb* %3) #8, !dbg !5019
  ret void, !dbg !5020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #2 !dbg !5021 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5027, metadata !DIExpression()), !dbg !5030
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5032, metadata !DIExpression()), !dbg !5033
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5034, metadata !DIExpression()), !dbg !5042
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5044, metadata !DIExpression()), !dbg !5045
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5050
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5051
  %div = sdiv i64 %1, 64, !dbg !5051
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5052
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5050
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5053
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5054
  %conv.i = trunc i64 %4 to i32, !dbg !5054
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5055
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5056
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5056
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #11, !dbg !5056
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5057
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5058
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5059
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5060
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #9, !dbg !5061, !srcloc !5062
  ret void, !dbg !5063
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5064 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5067, metadata !DIExpression()), !dbg !5068
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5069, metadata !DIExpression()), !dbg !5070
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5073, metadata !DIExpression()), !dbg !5074
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5077, metadata !DIExpression()), !dbg !5078
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5083
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5084
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5085
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5086
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5087
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5088
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5089
  store i32 %2, i32* %pipe2, align 8, !dbg !5090
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5091
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5092
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5093
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5094
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5095
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5096
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5097
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5098
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5099
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5100
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5101
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5102
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5103
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5104
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5105
  store i8* %10, i8** %context4, align 8, !dbg !5106
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5107
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5109
  %13 = load i32, i32* %speed, align 4, !dbg !5109
  %cmp = icmp eq i32 %13, 3, !dbg !5110
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5111

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5112
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5113
  %15 = load i32, i32* %speed5, align 4, !dbg !5113
  %cmp6 = icmp uge i32 %15, 5, !dbg !5114
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5115

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5116, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5120, metadata !DIExpression()), !dbg !5122
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5122
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5122
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5123, metadata !DIExpression()), !dbg !5122
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5122
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5122
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5122
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5122
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5122

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5122
  br label %cond.end, !dbg !5122

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5122
  br label %cond.end, !dbg !5122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5122
  store i32 %cond, i32* %tmp, align 4, !dbg !5122
  %21 = load i32, i32* %tmp, align 4, !dbg !5122
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5119
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5124, metadata !DIExpression()), !dbg !5119
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5119
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5119
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5119
  %cmp9 = icmp slt i32 %22, %23, !dbg !5119
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5119

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5119
  br label %cond.end12, !dbg !5119

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5119
  br label %cond.end12, !dbg !5119

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5119
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5119
  %26 = load i32, i32* %tmp8, align 4, !dbg !5119
  store i32 %26, i32* %interval.addr, align 4, !dbg !5125
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5126
  %sub = sub i32 %27, 1, !dbg !5127
  %shl = shl i32 1, %sub, !dbg !5128
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5129
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5130
  store i32 %shl, i32* %interval14, align 8, !dbg !5131
  br label %if.end, !dbg !5132

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5133
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5135
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5136
  store i32 %29, i32* %interval15, align 8, !dbg !5137
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5138
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5139
  store i32 -1, i32* %start_frame, align 8, !dbg !5140
  ret void, !dbg !5141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5142 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5149
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5150
  %1 = load i32, i32* %devnum, align 8, !dbg !5150
  %shl = shl i32 %1, 8, !dbg !5151
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5152
  %shl1 = shl i32 %2, 15, !dbg !5153
  %or = or i32 %shl, %shl1, !dbg !5154
  ret i32 %or, !dbg !5155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hanwang_irq(%struct.urb* %urb) #2 !dbg !5156 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %hanwang = alloca %struct.hanwang*, align 8
  %dev = alloca %struct.usb_device*, align 8
  %retval = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5157, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.declare(metadata %struct.hanwang** %hanwang, metadata !5159, metadata !DIExpression()), !dbg !5160
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5161
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5162
  %1 = load i8*, i8** %context, align 8, !dbg !5162
  %2 = bitcast i8* %1 to %struct.hanwang*, !dbg !5161
  store %struct.hanwang* %2, %struct.hanwang** %hanwang, align 8, !dbg !5160
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev, metadata !5163, metadata !DIExpression()), !dbg !5164
  %3 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !5165
  %usbdev = getelementptr inbounds %struct.hanwang, %struct.hanwang* %3, i32 0, i32 3, !dbg !5166
  %4 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5166
  store %struct.usb_device* %4, %struct.usb_device** %dev, align 8, !dbg !5164
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !5167, metadata !DIExpression()), !dbg !5168
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5169
  %status = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !5170
  %6 = load i32, i32* %status, align 8, !dbg !5170
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %sw.bb1
    i32 -2, label %sw.bb1
    i32 -108, label %sw.bb1
  ], !dbg !5171

sw.bb:                                            ; preds = %entry
  %7 = load %struct.hanwang*, %struct.hanwang** %hanwang, align 8, !dbg !5172
  call void @hanwang_parse_packet(%struct.hanwang* %7) #8, !dbg !5174
  br label %sw.epilog, !dbg !5175

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %8 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !5176
  %dev2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 14, !dbg !5176
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5176
  %status3 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 12, !dbg !5176
  %10 = load i32, i32* %status3, align 8, !dbg !5176
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.hanwang_irq, i64 0, i64 0), i32 %10) #12, !dbg !5176
  br label %if.end, !dbg !5177

sw.default:                                       ; preds = %entry
  %11 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !5178
  %dev4 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 14, !dbg !5178
  %12 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5178
  %status5 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 12, !dbg !5178
  %13 = load i32, i32* %status5, align 8, !dbg !5178
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.hanwang_irq, i64 0, i64 0), i32 %13) #12, !dbg !5178
  br label %sw.epilog, !dbg !5179

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %14 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5180
  %call = call i32 @usb_submit_urb(%struct.urb* %14, i32 2592) #8, !dbg !5181
  store i32 %call, i32* %retval, align 4, !dbg !5182
  %15 = load i32, i32* %retval, align 4, !dbg !5183
  %tobool = icmp ne i32 %15, 0, !dbg !5183
  br i1 %tobool, label %if.then, label %if.end, !dbg !5185

if.then:                                          ; preds = %sw.epilog
  %16 = load %struct.usb_device*, %struct.usb_device** %dev, align 8, !dbg !5186
  %dev6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 14, !dbg !5186
  %17 = load i32, i32* %retval, align 4, !dbg !5186
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.hanwang_irq, i64 0, i64 0), i32 %17) #12, !dbg !5186
  br label %if.end, !dbg !5186

if.end:                                           ; preds = %sw.bb1, %if.then, %sw.epilog
  ret void, !dbg !5187
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5188 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5195
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5196
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5197
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5198
  ret void, !dbg !5199
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5200 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5204, metadata !DIExpression()), !dbg !5208
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5210, metadata !DIExpression()), !dbg !5211
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load i64, i64* %size.addr, align 8, !dbg !5214
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5216
  br i1 %1, label %if.then, label %if.end447, !dbg !5217

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5218
  %tobool = icmp ne i64 %2, 0, !dbg !5218
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5221

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5222
  br label %return, !dbg !5222

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5223
  %cmp = icmp ult i64 %3, 4096, !dbg !5225
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5226

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5227
  br label %return, !dbg !5227

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub = sub i64 %4, 1, !dbg !5228
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5228
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5228

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub4 = sub i64 %6, 1, !dbg !5228
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5228
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5228

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub6 = sub i64 %8, 1, !dbg !5228
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5228
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5228

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5228

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub9 = sub i64 %9, 1, !dbg !5228
  %and = and i64 %sub9, -9223372036854775808, !dbg !5228
  %tobool10 = icmp ne i64 %and, 0, !dbg !5228
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5228

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5228

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub13 = sub i64 %10, 1, !dbg !5228
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5228
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5228
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5228

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5228

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub18 = sub i64 %11, 1, !dbg !5228
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5228
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5228
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5228

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5228

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub23 = sub i64 %12, 1, !dbg !5228
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5228
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5228
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5228

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5228

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub28 = sub i64 %13, 1, !dbg !5228
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5228
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5228
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5228

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5228

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub33 = sub i64 %14, 1, !dbg !5228
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5228
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5228
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5228

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5228

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub38 = sub i64 %15, 1, !dbg !5228
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5228
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5228
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5228

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5228

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub43 = sub i64 %16, 1, !dbg !5228
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5228
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5228
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5228

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5228

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub48 = sub i64 %17, 1, !dbg !5228
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5228
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5228
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5228

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5228

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub53 = sub i64 %18, 1, !dbg !5228
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5228
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5228
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5228

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5228

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub58 = sub i64 %19, 1, !dbg !5228
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5228
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5228
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5228

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5228

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub63 = sub i64 %20, 1, !dbg !5228
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5228
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5228
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5228

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5228

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub68 = sub i64 %21, 1, !dbg !5228
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5228
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5228
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5228

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5228

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub73 = sub i64 %22, 1, !dbg !5228
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5228
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5228
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5228

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5228

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub78 = sub i64 %23, 1, !dbg !5228
  %and79 = and i64 %sub78, 562949953421312, !dbg !5228
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5228
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5228

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5228

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub83 = sub i64 %24, 1, !dbg !5228
  %and84 = and i64 %sub83, 281474976710656, !dbg !5228
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5228
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5228

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5228

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub88 = sub i64 %25, 1, !dbg !5228
  %and89 = and i64 %sub88, 140737488355328, !dbg !5228
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5228
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5228

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5228

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub93 = sub i64 %26, 1, !dbg !5228
  %and94 = and i64 %sub93, 70368744177664, !dbg !5228
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5228
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5228

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5228

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub98 = sub i64 %27, 1, !dbg !5228
  %and99 = and i64 %sub98, 35184372088832, !dbg !5228
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5228
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5228

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5228

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub103 = sub i64 %28, 1, !dbg !5228
  %and104 = and i64 %sub103, 17592186044416, !dbg !5228
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5228
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5228

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5228

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub108 = sub i64 %29, 1, !dbg !5228
  %and109 = and i64 %sub108, 8796093022208, !dbg !5228
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5228
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5228

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5228

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub113 = sub i64 %30, 1, !dbg !5228
  %and114 = and i64 %sub113, 4398046511104, !dbg !5228
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5228
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5228

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5228

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub118 = sub i64 %31, 1, !dbg !5228
  %and119 = and i64 %sub118, 2199023255552, !dbg !5228
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5228
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5228

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5228

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub123 = sub i64 %32, 1, !dbg !5228
  %and124 = and i64 %sub123, 1099511627776, !dbg !5228
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5228
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5228

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5228

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub128 = sub i64 %33, 1, !dbg !5228
  %and129 = and i64 %sub128, 549755813888, !dbg !5228
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5228
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5228

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5228

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub133 = sub i64 %34, 1, !dbg !5228
  %and134 = and i64 %sub133, 274877906944, !dbg !5228
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5228
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5228

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5228

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub138 = sub i64 %35, 1, !dbg !5228
  %and139 = and i64 %sub138, 137438953472, !dbg !5228
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5228
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5228

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5228

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub143 = sub i64 %36, 1, !dbg !5228
  %and144 = and i64 %sub143, 68719476736, !dbg !5228
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5228
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5228

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5228

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub148 = sub i64 %37, 1, !dbg !5228
  %and149 = and i64 %sub148, 34359738368, !dbg !5228
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5228
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5228

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5228

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub153 = sub i64 %38, 1, !dbg !5228
  %and154 = and i64 %sub153, 17179869184, !dbg !5228
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5228
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5228

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5228

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub158 = sub i64 %39, 1, !dbg !5228
  %and159 = and i64 %sub158, 8589934592, !dbg !5228
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5228
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5228

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5228

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub163 = sub i64 %40, 1, !dbg !5228
  %and164 = and i64 %sub163, 4294967296, !dbg !5228
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5228
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5228

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5228

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub168 = sub i64 %41, 1, !dbg !5228
  %and169 = and i64 %sub168, 2147483648, !dbg !5228
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5228
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5228

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5228

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub173 = sub i64 %42, 1, !dbg !5228
  %and174 = and i64 %sub173, 1073741824, !dbg !5228
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5228
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5228

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5228

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub178 = sub i64 %43, 1, !dbg !5228
  %and179 = and i64 %sub178, 536870912, !dbg !5228
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5228
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5228

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5228

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub183 = sub i64 %44, 1, !dbg !5228
  %and184 = and i64 %sub183, 268435456, !dbg !5228
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5228
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5228

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5228

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub188 = sub i64 %45, 1, !dbg !5228
  %and189 = and i64 %sub188, 134217728, !dbg !5228
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5228
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5228

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5228

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub193 = sub i64 %46, 1, !dbg !5228
  %and194 = and i64 %sub193, 67108864, !dbg !5228
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5228
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5228

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5228

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub198 = sub i64 %47, 1, !dbg !5228
  %and199 = and i64 %sub198, 33554432, !dbg !5228
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5228
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5228

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5228

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub203 = sub i64 %48, 1, !dbg !5228
  %and204 = and i64 %sub203, 16777216, !dbg !5228
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5228
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5228

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5228

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub208 = sub i64 %49, 1, !dbg !5228
  %and209 = and i64 %sub208, 8388608, !dbg !5228
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5228
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5228

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5228

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub213 = sub i64 %50, 1, !dbg !5228
  %and214 = and i64 %sub213, 4194304, !dbg !5228
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5228
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5228

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5228

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub218 = sub i64 %51, 1, !dbg !5228
  %and219 = and i64 %sub218, 2097152, !dbg !5228
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5228
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5228

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5228

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub223 = sub i64 %52, 1, !dbg !5228
  %and224 = and i64 %sub223, 1048576, !dbg !5228
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5228
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5228

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5228

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub228 = sub i64 %53, 1, !dbg !5228
  %and229 = and i64 %sub228, 524288, !dbg !5228
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5228
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5228

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5228

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub233 = sub i64 %54, 1, !dbg !5228
  %and234 = and i64 %sub233, 262144, !dbg !5228
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5228
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5228

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5228

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub238 = sub i64 %55, 1, !dbg !5228
  %and239 = and i64 %sub238, 131072, !dbg !5228
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5228
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5228

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5228

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub243 = sub i64 %56, 1, !dbg !5228
  %and244 = and i64 %sub243, 65536, !dbg !5228
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5228
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5228

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5228

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub248 = sub i64 %57, 1, !dbg !5228
  %and249 = and i64 %sub248, 32768, !dbg !5228
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5228
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5228

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5228

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub253 = sub i64 %58, 1, !dbg !5228
  %and254 = and i64 %sub253, 16384, !dbg !5228
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5228
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5228

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5228

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub258 = sub i64 %59, 1, !dbg !5228
  %and259 = and i64 %sub258, 8192, !dbg !5228
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5228
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5228

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5228

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub263 = sub i64 %60, 1, !dbg !5228
  %and264 = and i64 %sub263, 4096, !dbg !5228
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5228
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5228

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5228

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub268 = sub i64 %61, 1, !dbg !5228
  %and269 = and i64 %sub268, 2048, !dbg !5228
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5228
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5228

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5228

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub273 = sub i64 %62, 1, !dbg !5228
  %and274 = and i64 %sub273, 1024, !dbg !5228
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5228
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5228

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5228

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub278 = sub i64 %63, 1, !dbg !5228
  %and279 = and i64 %sub278, 512, !dbg !5228
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5228
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5228

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5228

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub283 = sub i64 %64, 1, !dbg !5228
  %and284 = and i64 %sub283, 256, !dbg !5228
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5228
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5228

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5228

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub288 = sub i64 %65, 1, !dbg !5228
  %and289 = and i64 %sub288, 128, !dbg !5228
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5228
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5228

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5228

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub293 = sub i64 %66, 1, !dbg !5228
  %and294 = and i64 %sub293, 64, !dbg !5228
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5228
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5228

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5228

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub298 = sub i64 %67, 1, !dbg !5228
  %and299 = and i64 %sub298, 32, !dbg !5228
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5228
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5228

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5228

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub303 = sub i64 %68, 1, !dbg !5228
  %and304 = and i64 %sub303, 16, !dbg !5228
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5228
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5228

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5228

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub308 = sub i64 %69, 1, !dbg !5228
  %and309 = and i64 %sub308, 8, !dbg !5228
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5228
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5228

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5228

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub313 = sub i64 %70, 1, !dbg !5228
  %and314 = and i64 %sub313, 4, !dbg !5228
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5228
  %71 = zext i1 %tobool315 to i64, !dbg !5228
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5228
  br label %cond.end, !dbg !5228

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5228
  br label %cond.end317, !dbg !5228

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5228
  br label %cond.end319, !dbg !5228

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5228
  br label %cond.end321, !dbg !5228

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5228
  br label %cond.end323, !dbg !5228

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5228
  br label %cond.end325, !dbg !5228

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5228
  br label %cond.end327, !dbg !5228

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5228
  br label %cond.end329, !dbg !5228

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5228
  br label %cond.end331, !dbg !5228

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5228
  br label %cond.end333, !dbg !5228

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5228
  br label %cond.end335, !dbg !5228

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5228
  br label %cond.end337, !dbg !5228

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5228
  br label %cond.end339, !dbg !5228

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5228
  br label %cond.end341, !dbg !5228

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5228
  br label %cond.end343, !dbg !5228

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5228
  br label %cond.end345, !dbg !5228

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5228
  br label %cond.end347, !dbg !5228

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5228
  br label %cond.end349, !dbg !5228

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5228
  br label %cond.end351, !dbg !5228

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5228
  br label %cond.end353, !dbg !5228

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5228
  br label %cond.end355, !dbg !5228

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5228
  br label %cond.end357, !dbg !5228

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5228
  br label %cond.end359, !dbg !5228

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5228
  br label %cond.end361, !dbg !5228

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5228
  br label %cond.end363, !dbg !5228

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5228
  br label %cond.end365, !dbg !5228

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5228
  br label %cond.end367, !dbg !5228

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5228
  br label %cond.end369, !dbg !5228

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5228
  br label %cond.end371, !dbg !5228

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5228
  br label %cond.end373, !dbg !5228

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5228
  br label %cond.end375, !dbg !5228

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5228
  br label %cond.end377, !dbg !5228

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5228
  br label %cond.end379, !dbg !5228

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5228
  br label %cond.end381, !dbg !5228

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5228
  br label %cond.end383, !dbg !5228

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5228
  br label %cond.end385, !dbg !5228

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5228
  br label %cond.end387, !dbg !5228

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5228
  br label %cond.end389, !dbg !5228

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5228
  br label %cond.end391, !dbg !5228

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5228
  br label %cond.end393, !dbg !5228

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5228
  br label %cond.end395, !dbg !5228

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5228
  br label %cond.end397, !dbg !5228

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5228
  br label %cond.end399, !dbg !5228

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5228
  br label %cond.end401, !dbg !5228

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5228
  br label %cond.end403, !dbg !5228

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5228
  br label %cond.end405, !dbg !5228

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5228
  br label %cond.end407, !dbg !5228

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5228
  br label %cond.end409, !dbg !5228

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5228
  br label %cond.end411, !dbg !5228

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5228
  br label %cond.end413, !dbg !5228

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5228
  br label %cond.end415, !dbg !5228

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5228
  br label %cond.end417, !dbg !5228

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5228
  br label %cond.end419, !dbg !5228

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5228
  br label %cond.end421, !dbg !5228

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5228
  br label %cond.end423, !dbg !5228

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5228
  br label %cond.end425, !dbg !5228

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5228
  br label %cond.end427, !dbg !5228

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5228
  br label %cond.end429, !dbg !5228

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5228
  br label %cond.end431, !dbg !5228

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5228
  br label %cond.end433, !dbg !5228

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5228
  br label %cond.end435, !dbg !5228

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5228
  br label %cond.end437, !dbg !5228

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5228
  br label %cond.end440, !dbg !5228

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5228

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5228
  br label %cond.end444, !dbg !5228

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5228
  %sub443 = sub i64 %72, 1, !dbg !5228
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5228
  br label %cond.end444, !dbg !5228

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5228
  %sub446 = sub i32 %cond445, 12, !dbg !5229
  %add = add i32 %sub446, 1, !dbg !5230
  store i32 %add, i32* %retval, align 4, !dbg !5231
  br label %return, !dbg !5231

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5232
  %dec = add i64 %73, -1, !dbg !5232
  store i64 %dec, i64* %size.addr, align 8, !dbg !5232
  %74 = load i64, i64* %size.addr, align 8, !dbg !5233
  %shr = lshr i64 %74, 12, !dbg !5233
  store i64 %shr, i64* %size.addr, align 8, !dbg !5233
  %75 = load i64, i64* %size.addr, align 8, !dbg !5234
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5211
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5235
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5236
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5235, !srcloc !5237
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5235
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5238
  %add.i = add i32 %79, 1, !dbg !5239
  store i32 %add.i, i32* %retval, align 4, !dbg !5240
  br label %return, !dbg !5240

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5241
  ret i32 %80, !dbg !5241
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5242 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5204, metadata !DIExpression()), !dbg !5246
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5210, metadata !DIExpression()), !dbg !5248
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  %0 = load i64, i64* %n.addr, align 8, !dbg !5251
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5248
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5252
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5253
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5252, !srcloc !5237
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5252
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5254
  %add.i = add i32 %4, 1, !dbg !5255
  %sub = sub i32 %add.i, 1, !dbg !5256
  ret i32 %sub, !dbg !5257
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5258 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5263, metadata !DIExpression()), !dbg !5264
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5269
  ret i8* %0, !dbg !5270
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5271 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5278
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5279
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5280
  store i8* %0, i8** %driver_data, align 8, !dbg !5281
  ret void, !dbg !5282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !5283 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5288
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5289
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #8, !dbg !5290
  ret i8* %call, !dbg !5291
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5292 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5297, metadata !DIExpression()), !dbg !5298
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5299
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5300
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5300
  ret i8* %1, !dbg !5301
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5302 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  ret i1 true, !dbg !5310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5311 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  ret void, !dbg !5321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hanwang_parse_packet(%struct.hanwang* %hanwang) #2 !dbg !5322 {
entry:
  %p.addr.i.i165 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i165, metadata !5325, metadata !DIExpression()), !dbg !5332
  %p.addr.i166 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i166, metadata !5343, metadata !DIExpression()), !dbg !5344
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !5325, metadata !DIExpression()), !dbg !5345
  %p.addr.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i, metadata !5343, metadata !DIExpression()), !dbg !5348
  %hanwang.addr = alloca %struct.hanwang*, align 8
  %data = alloca i8*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %dev2 = alloca %struct.usb_device*, align 8
  %type = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i16, align 2
  store %struct.hanwang* %hanwang, %struct.hanwang** %hanwang.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hanwang** %hanwang.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata i8** %data, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5353
  %data1 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %0, i32 0, i32 0, !dbg !5354
  %1 = load i8*, i8** %data1, align 8, !dbg !5354
  store i8* %1, i8** %data, align 8, !dbg !5352
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !5355, metadata !DIExpression()), !dbg !5356
  %2 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5357
  %dev = getelementptr inbounds %struct.hanwang, %struct.hanwang* %2, i32 0, i32 2, !dbg !5358
  %3 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !5358
  store %struct.input_dev* %3, %struct.input_dev** %input_dev, align 8, !dbg !5356
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev2, metadata !5359, metadata !DIExpression()), !dbg !5360
  %4 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5361
  %usbdev = getelementptr inbounds %struct.hanwang, %struct.hanwang* %4, i32 0, i32 3, !dbg !5362
  %5 = load %struct.usb_device*, %struct.usb_device** %usbdev, align 8, !dbg !5362
  store %struct.usb_device* %5, %struct.usb_device** %dev2, align 8, !dbg !5360
  call void @llvm.dbg.declare(metadata i32* %type, metadata !5363, metadata !DIExpression()), !dbg !5364
  %6 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5365
  %features = getelementptr inbounds %struct.hanwang, %struct.hanwang* %6, i32 0, i32 5, !dbg !5366
  %7 = load %struct.hanwang_features*, %struct.hanwang_features** %features, align 8, !dbg !5366
  %type3 = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %7, i32 0, i32 2, !dbg !5367
  %8 = load i32, i32* %type3, align 8, !dbg !5367
  store i32 %8, i32* %type, align 4, !dbg !5364
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5368, metadata !DIExpression()), !dbg !5369
  call void @llvm.dbg.declare(metadata i16* %p, metadata !5370, metadata !DIExpression()), !dbg !5371
  %9 = load i32, i32* %type, align 4, !dbg !5372
  %cmp = icmp eq i32 %9, 2, !dbg !5374
  br i1 %cmp, label %if.then, label %if.end, !dbg !5375

if.then:                                          ; preds = %entry
  %10 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5376
  %current_tool = getelementptr inbounds %struct.hanwang, %struct.hanwang* %10, i32 0, i32 6, !dbg !5378
  store i32 320, i32* %current_tool, align 8, !dbg !5379
  %11 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5380
  %current_id = getelementptr inbounds %struct.hanwang, %struct.hanwang* %11, i32 0, i32 7, !dbg !5381
  store i32 2, i32* %current_id, align 4, !dbg !5382
  br label %if.end, !dbg !5383

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** %data, align 8, !dbg !5384
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !5384
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5384
  %conv = zext i8 %13 to i32, !dbg !5384
  switch i32 %conv, label %sw.default163 [
    i32 2, label %sw.bb
    i32 12, label %sw.bb79
  ], !dbg !5385

sw.bb:                                            ; preds = %if.end
  %14 = load i8*, i8** %data, align 8, !dbg !5386
  %arrayidx4 = getelementptr i8, i8* %14, i64 1, !dbg !5386
  %15 = load i8, i8* %arrayidx4, align 1, !dbg !5386
  %conv5 = zext i8 %15 to i32, !dbg !5386
  switch i32 %conv5, label %sw.default30 [
    i32 128, label %sw.bb6
    i32 0, label %sw.bb13
    i32 194, label %sw.bb20
  ], !dbg !5387

sw.bb6:                                           ; preds = %sw.bb
  %16 = load i32, i32* %type, align 4, !dbg !5388
  %cmp7 = icmp ne i32 %16, 2, !dbg !5390
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !5391

if.then9:                                         ; preds = %sw.bb6
  %17 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5392
  %current_id10 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %17, i32 0, i32 7, !dbg !5394
  store i32 0, i32* %current_id10, align 4, !dbg !5395
  %18 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5396
  %19 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5397
  %current_tool11 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %19, i32 0, i32 6, !dbg !5398
  %20 = load i32, i32* %current_tool11, align 8, !dbg !5398
  call void @input_report_key(%struct.input_dev* %18, i32 %20, i32 0) #8, !dbg !5399
  br label %if.end12, !dbg !5400

if.end12:                                         ; preds = %if.then9, %sw.bb6
  br label %sw.epilog75, !dbg !5401

sw.bb13:                                          ; preds = %sw.bb
  %21 = load i32, i32* %type, align 4, !dbg !5402
  %cmp14 = icmp eq i32 %21, 2, !dbg !5404
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !5405

if.then16:                                        ; preds = %sw.bb13
  %22 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5406
  %current_id17 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %22, i32 0, i32 7, !dbg !5408
  store i32 0, i32* %current_id17, align 4, !dbg !5409
  %23 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5410
  %24 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5411
  %current_tool18 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %24, i32 0, i32 6, !dbg !5412
  %25 = load i32, i32* %current_tool18, align 8, !dbg !5412
  call void @input_report_key(%struct.input_dev* %23, i32 %25, i32 0) #8, !dbg !5413
  br label %if.end19, !dbg !5414

if.end19:                                         ; preds = %if.then16, %sw.bb13
  br label %sw.epilog75, !dbg !5415

sw.bb20:                                          ; preds = %sw.bb
  %26 = load i8*, i8** %data, align 8, !dbg !5416
  %arrayidx21 = getelementptr i8, i8* %26, i64 3, !dbg !5416
  %27 = load i8, i8* %arrayidx21, align 1, !dbg !5416
  %conv22 = zext i8 %27 to i32, !dbg !5416
  %and = and i32 %conv22, 240, !dbg !5417
  switch i32 %and, label %sw.default [
    i32 32, label %sw.bb23
    i32 48, label %sw.bb23
    i32 160, label %sw.bb26
    i32 176, label %sw.bb26
  ], !dbg !5418

sw.bb23:                                          ; preds = %sw.bb20, %sw.bb20
  %28 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5419
  %current_id24 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %28, i32 0, i32 7, !dbg !5421
  store i32 2, i32* %current_id24, align 4, !dbg !5422
  %29 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5423
  %current_tool25 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %29, i32 0, i32 6, !dbg !5424
  store i32 320, i32* %current_tool25, align 8, !dbg !5425
  %30 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5426
  call void @input_report_key(%struct.input_dev* %30, i32 320, i32 1) #8, !dbg !5427
  br label %sw.epilog, !dbg !5428

sw.bb26:                                          ; preds = %sw.bb20, %sw.bb20
  %31 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5429
  %current_id27 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %31, i32 0, i32 7, !dbg !5430
  store i32 10, i32* %current_id27, align 4, !dbg !5431
  %32 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5432
  %current_tool28 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %32, i32 0, i32 6, !dbg !5433
  store i32 321, i32* %current_tool28, align 8, !dbg !5434
  %33 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5435
  call void @input_report_key(%struct.input_dev* %33, i32 321, i32 1) #8, !dbg !5436
  br label %sw.epilog, !dbg !5437

sw.default:                                       ; preds = %sw.bb20
  %34 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5438
  %current_id29 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %34, i32 0, i32 7, !dbg !5439
  store i32 0, i32* %current_id29, align 4, !dbg !5440
  br label %sw.epilog, !dbg !5441

sw.epilog:                                        ; preds = %sw.default, %sw.bb26, %sw.bb23
  br label %sw.epilog75, !dbg !5442

sw.default30:                                     ; preds = %sw.bb
  %35 = load i32, i32* %type, align 4, !dbg !5443
  switch i32 %35, label %sw.default51 [
    i32 0, label %sw.bb31
    i32 1, label %sw.bb42
    i32 2, label %sw.bb42
  ], !dbg !5444

sw.bb31:                                          ; preds = %sw.default30
  %36 = load i8*, i8** %data, align 8, !dbg !5445
  %arrayidx32 = getelementptr i8, i8* %36, i64 6, !dbg !5445
  %37 = load i8, i8* %arrayidx32, align 1, !dbg !5445
  %conv33 = zext i8 %37 to i32, !dbg !5445
  %shl = shl i32 %conv33, 3, !dbg !5447
  %38 = load i8*, i8** %data, align 8, !dbg !5448
  %arrayidx34 = getelementptr i8, i8* %38, i64 7, !dbg !5448
  %39 = load i8, i8* %arrayidx34, align 1, !dbg !5448
  %conv35 = zext i8 %39 to i32, !dbg !5448
  %and36 = and i32 %conv35, 192, !dbg !5449
  %shr = ashr i32 %and36, 5, !dbg !5450
  %or = or i32 %shl, %shr, !dbg !5451
  %40 = load i8*, i8** %data, align 8, !dbg !5452
  %arrayidx37 = getelementptr i8, i8* %40, i64 1, !dbg !5452
  %41 = load i8, i8* %arrayidx37, align 1, !dbg !5452
  %conv38 = zext i8 %41 to i32, !dbg !5452
  %and39 = and i32 %conv38, 1, !dbg !5453
  %or40 = or i32 %or, %and39, !dbg !5454
  %conv41 = trunc i32 %or40 to i16, !dbg !5455
  store i16 %conv41, i16* %p, align 2, !dbg !5456
  br label %sw.epilog52, !dbg !5457

sw.bb42:                                          ; preds = %sw.default30, %sw.default30
  %42 = load i8*, i8** %data, align 8, !dbg !5458
  %arrayidx43 = getelementptr i8, i8* %42, i64 7, !dbg !5458
  %43 = load i8, i8* %arrayidx43, align 1, !dbg !5458
  %conv44 = zext i8 %43 to i32, !dbg !5458
  %shr45 = ashr i32 %conv44, 6, !dbg !5459
  %44 = load i8*, i8** %data, align 8, !dbg !5460
  %arrayidx46 = getelementptr i8, i8* %44, i64 6, !dbg !5460
  %45 = load i8, i8* %arrayidx46, align 1, !dbg !5460
  %conv47 = zext i8 %45 to i32, !dbg !5460
  %shl48 = shl i32 %conv47, 2, !dbg !5461
  %or49 = or i32 %shr45, %shl48, !dbg !5462
  %conv50 = trunc i32 %or49 to i16, !dbg !5463
  store i16 %conv50, i16* %p, align 2, !dbg !5464
  br label %sw.epilog52, !dbg !5465

sw.default51:                                     ; preds = %sw.default30
  store i16 0, i16* %p, align 2, !dbg !5466
  br label %sw.epilog52, !dbg !5467

sw.epilog52:                                      ; preds = %sw.default51, %sw.bb42, %sw.bb31
  %46 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5468
  %47 = load i8*, i8** %data, align 8, !dbg !5469
  %arrayidx53 = getelementptr i8, i8* %47, i64 2, !dbg !5469
  %48 = bitcast i8* %arrayidx53 to i16*, !dbg !5470
  store i16* %48, i16** %p.addr.i, align 8
  %49 = load i16*, i16** %p.addr.i, align 8, !dbg !5471
  store i16* %49, i16** %p.addr.i.i, align 8
  %50 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5472
  %51 = load i16, i16* %50, align 2, !dbg !5472
  %52 = call i1 @llvm.is.constant.i16(i16 %51) #9, !dbg !5472
  br i1 %52, label %cond.true.i.i, label %cond.false.i.i, !dbg !5472

cond.true.i.i:                                    ; preds = %sw.epilog52
  %53 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5472
  %54 = load i16, i16* %53, align 2, !dbg !5472
  %conv.i.i = zext i16 %54 to i32, !dbg !5472
  %and.i.i = and i32 %conv.i.i, 255, !dbg !5472
  %shl.i.i = shl i32 %and.i.i, 8, !dbg !5472
  %55 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5472
  %56 = load i16, i16* %55, align 2, !dbg !5472
  %conv1.i.i = zext i16 %56 to i32, !dbg !5472
  %and2.i.i = and i32 %conv1.i.i, 65280, !dbg !5472
  %shr.i.i = ashr i32 %and2.i.i, 8, !dbg !5472
  %or.i.i = or i32 %shl.i.i, %shr.i.i, !dbg !5472
  %conv3.i.i = trunc i32 %or.i.i to i16, !dbg !5472
  %conv4.i.i = zext i16 %conv3.i.i to i32, !dbg !5472
  br label %__be16_to_cpup.exit, !dbg !5472

cond.false.i.i:                                   ; preds = %sw.epilog52
  %57 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5472
  %58 = load i16, i16* %57, align 2, !dbg !5472
  %call.i.i = call zeroext i16 @__fswab16(i16 zeroext %58) #10, !dbg !5472
  %conv5.i.i = zext i16 %call.i.i to i32, !dbg !5472
  br label %__be16_to_cpup.exit, !dbg !5472

__be16_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ %conv5.i.i, %cond.false.i.i ], !dbg !5472
  %conv6.i.i = trunc i32 %cond.i.i to i16, !dbg !5472
  %conv54 = zext i16 %conv6.i.i to i32, !dbg !5473
  call void @input_report_abs(%struct.input_dev* %46, i32 0, i32 %conv54) #8, !dbg !5474
  %59 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5475
  %60 = load i8*, i8** %data, align 8, !dbg !5476
  %arrayidx55 = getelementptr i8, i8* %60, i64 4, !dbg !5476
  %61 = bitcast i8* %arrayidx55 to i16*, !dbg !5477
  store i16* %61, i16** %p.addr.i166, align 8
  %62 = load i16*, i16** %p.addr.i166, align 8, !dbg !5478
  store i16* %62, i16** %p.addr.i.i165, align 8
  %63 = load i16*, i16** %p.addr.i.i165, align 8, !dbg !5479
  %64 = load i16, i16* %63, align 2, !dbg !5479
  %65 = call i1 @llvm.is.constant.i16(i16 %64) #9, !dbg !5479
  br i1 %65, label %cond.true.i.i176, label %cond.false.i.i179, !dbg !5479

cond.true.i.i176:                                 ; preds = %__be16_to_cpup.exit
  %66 = load i16*, i16** %p.addr.i.i165, align 8, !dbg !5479
  %67 = load i16, i16* %66, align 2, !dbg !5479
  %conv.i.i167 = zext i16 %67 to i32, !dbg !5479
  %and.i.i168 = and i32 %conv.i.i167, 255, !dbg !5479
  %shl.i.i169 = shl i32 %and.i.i168, 8, !dbg !5479
  %68 = load i16*, i16** %p.addr.i.i165, align 8, !dbg !5479
  %69 = load i16, i16* %68, align 2, !dbg !5479
  %conv1.i.i170 = zext i16 %69 to i32, !dbg !5479
  %and2.i.i171 = and i32 %conv1.i.i170, 65280, !dbg !5479
  %shr.i.i172 = ashr i32 %and2.i.i171, 8, !dbg !5479
  %or.i.i173 = or i32 %shl.i.i169, %shr.i.i172, !dbg !5479
  %conv3.i.i174 = trunc i32 %or.i.i173 to i16, !dbg !5479
  %conv4.i.i175 = zext i16 %conv3.i.i174 to i32, !dbg !5479
  br label %__be16_to_cpup.exit182, !dbg !5479

cond.false.i.i179:                                ; preds = %__be16_to_cpup.exit
  %70 = load i16*, i16** %p.addr.i.i165, align 8, !dbg !5479
  %71 = load i16, i16* %70, align 2, !dbg !5479
  %call.i.i177 = call zeroext i16 @__fswab16(i16 zeroext %71) #10, !dbg !5479
  %conv5.i.i178 = zext i16 %call.i.i177 to i32, !dbg !5479
  br label %__be16_to_cpup.exit182, !dbg !5479

__be16_to_cpup.exit182:                           ; preds = %cond.true.i.i176, %cond.false.i.i179
  %cond.i.i180 = phi i32 [ %conv4.i.i175, %cond.true.i.i176 ], [ %conv5.i.i178, %cond.false.i.i179 ], !dbg !5479
  %conv6.i.i181 = trunc i32 %cond.i.i180 to i16, !dbg !5479
  %conv57 = zext i16 %conv6.i.i181 to i32, !dbg !5480
  call void @input_report_abs(%struct.input_dev* %59, i32 1, i32 %conv57) #8, !dbg !5481
  %72 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5482
  %73 = load i16, i16* %p, align 2, !dbg !5483
  %conv58 = zext i16 %73 to i32, !dbg !5483
  call void @input_report_abs(%struct.input_dev* %72, i32 24, i32 %conv58) #8, !dbg !5484
  %74 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5485
  %75 = load i8*, i8** %data, align 8, !dbg !5486
  %arrayidx59 = getelementptr i8, i8* %75, i64 7, !dbg !5486
  %76 = load i8, i8* %arrayidx59, align 1, !dbg !5486
  %conv60 = zext i8 %76 to i32, !dbg !5486
  %and61 = and i32 %conv60, 63, !dbg !5487
  call void @input_report_abs(%struct.input_dev* %74, i32 26, i32 %and61) #8, !dbg !5488
  %77 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5489
  %78 = load i8*, i8** %data, align 8, !dbg !5490
  %arrayidx62 = getelementptr i8, i8* %78, i64 8, !dbg !5490
  %79 = load i8, i8* %arrayidx62, align 1, !dbg !5490
  %conv63 = zext i8 %79 to i32, !dbg !5490
  %and64 = and i32 %conv63, 127, !dbg !5491
  call void @input_report_abs(%struct.input_dev* %77, i32 27, i32 %and64) #8, !dbg !5492
  %80 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5493
  %81 = load i8*, i8** %data, align 8, !dbg !5494
  %arrayidx65 = getelementptr i8, i8* %81, i64 1, !dbg !5494
  %82 = load i8, i8* %arrayidx65, align 1, !dbg !5494
  %conv66 = zext i8 %82 to i32, !dbg !5494
  %and67 = and i32 %conv66, 2, !dbg !5495
  call void @input_report_key(%struct.input_dev* %80, i32 331, i32 %and67) #8, !dbg !5496
  %83 = load i32, i32* %type, align 4, !dbg !5497
  %cmp68 = icmp ne i32 %83, 2, !dbg !5499
  br i1 %cmp68, label %if.then70, label %if.else, !dbg !5500

if.then70:                                        ; preds = %__be16_to_cpup.exit182
  %84 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5501
  %85 = load i8*, i8** %data, align 8, !dbg !5502
  %arrayidx71 = getelementptr i8, i8* %85, i64 1, !dbg !5502
  %86 = load i8, i8* %arrayidx71, align 1, !dbg !5502
  %conv72 = zext i8 %86 to i32, !dbg !5502
  %and73 = and i32 %conv72, 4, !dbg !5503
  call void @input_report_key(%struct.input_dev* %84, i32 332, i32 %and73) #8, !dbg !5504
  br label %if.end74, !dbg !5504

if.else:                                          ; preds = %__be16_to_cpup.exit182
  %87 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5505
  call void @input_report_key(%struct.input_dev* %87, i32 320, i32 1) #8, !dbg !5506
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then70
  br label %sw.epilog75, !dbg !5507

sw.epilog75:                                      ; preds = %if.end74, %sw.epilog, %if.end19, %if.end12
  %88 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5508
  %89 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5509
  %current_id76 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %89, i32 0, i32 7, !dbg !5510
  %90 = load i32, i32* %current_id76, align 4, !dbg !5510
  call void @input_report_abs(%struct.input_dev* %88, i32 40, i32 %90) #8, !dbg !5511
  %91 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5512
  %92 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5513
  %features77 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %92, i32 0, i32 5, !dbg !5514
  %93 = load %struct.hanwang_features*, %struct.hanwang_features** %features77, align 8, !dbg !5514
  %pid = getelementptr inbounds %struct.hanwang_features, %struct.hanwang_features* %93, i32 0, i32 0, !dbg !5515
  %94 = load i16, i16* %pid, align 8, !dbg !5515
  %conv78 = zext i16 %94 to i32, !dbg !5513
  call void @input_event(%struct.input_dev* %91, i32 4, i32 0, i32 %conv78) #8, !dbg !5516
  br label %sw.epilog164, !dbg !5517

sw.bb79:                                          ; preds = %if.end
  %95 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5518
  %current_id80 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %95, i32 0, i32 7, !dbg !5519
  store i32 15, i32* %current_id80, align 4, !dbg !5520
  %96 = load i32, i32* %type, align 4, !dbg !5521
  switch i32 %96, label %sw.epilog161 [
    i32 0, label %sw.bb81
    i32 1, label %sw.bb100
    i32 2, label %sw.bb160
  ], !dbg !5522

sw.bb81:                                          ; preds = %sw.bb79
  %97 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5523
  %98 = load i8*, i8** %data, align 8, !dbg !5525
  %arrayidx82 = getelementptr i8, i8* %98, i64 1, !dbg !5525
  %99 = load i8, i8* %arrayidx82, align 1, !dbg !5525
  %conv83 = zext i8 %99 to i32, !dbg !5525
  %tobool = icmp ne i32 %conv83, 0, !dbg !5525
  br i1 %tobool, label %lor.end, label %lor.lhs.false, !dbg !5526

lor.lhs.false:                                    ; preds = %sw.bb81
  %100 = load i8*, i8** %data, align 8, !dbg !5527
  %arrayidx84 = getelementptr i8, i8* %100, i64 2, !dbg !5527
  %101 = load i8, i8* %arrayidx84, align 1, !dbg !5527
  %conv85 = zext i8 %101 to i32, !dbg !5527
  %tobool86 = icmp ne i32 %conv85, 0, !dbg !5527
  br i1 %tobool86, label %lor.end, label %lor.rhs, !dbg !5528

lor.rhs:                                          ; preds = %lor.lhs.false
  %102 = load i8*, i8** %data, align 8, !dbg !5529
  %arrayidx87 = getelementptr i8, i8* %102, i64 3, !dbg !5529
  %103 = load i8, i8* %arrayidx87, align 1, !dbg !5529
  %conv88 = zext i8 %103 to i32, !dbg !5529
  %tobool89 = icmp ne i32 %conv88, 0, !dbg !5528
  br label %lor.end, !dbg !5528

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %sw.bb81
  %104 = phi i1 [ true, %lor.lhs.false ], [ true, %sw.bb81 ], [ %tobool89, %lor.rhs ]
  %lor.ext = zext i1 %104 to i32, !dbg !5528
  call void @input_report_key(%struct.input_dev* %97, i32 325, i32 %lor.ext) #8, !dbg !5530
  %105 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5531
  %106 = load i8*, i8** %data, align 8, !dbg !5532
  %arrayidx90 = getelementptr i8, i8* %106, i64 1, !dbg !5532
  %107 = load i8, i8* %arrayidx90, align 1, !dbg !5532
  %conv91 = zext i8 %107 to i32, !dbg !5532
  call void @input_report_abs(%struct.input_dev* %105, i32 8, i32 %conv91) #8, !dbg !5533
  %108 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5534
  %109 = load i8*, i8** %data, align 8, !dbg !5535
  %arrayidx92 = getelementptr i8, i8* %109, i64 2, !dbg !5535
  %110 = load i8, i8* %arrayidx92, align 1, !dbg !5535
  %conv93 = zext i8 %110 to i32, !dbg !5535
  call void @input_report_key(%struct.input_dev* %108, i32 256, i32 %conv93) #8, !dbg !5536
  store i32 0, i32* %i, align 4, !dbg !5537
  br label %for.cond, !dbg !5539

for.cond:                                         ; preds = %for.inc, %lor.end
  %111 = load i32, i32* %i, align 4, !dbg !5540
  %cmp94 = icmp slt i32 %111, 8, !dbg !5542
  br i1 %cmp94, label %for.body, label %for.end, !dbg !5543

for.body:                                         ; preds = %for.cond
  %112 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5544
  %113 = load i32, i32* %i, align 4, !dbg !5545
  %add = add i32 257, %113, !dbg !5546
  %114 = load i8*, i8** %data, align 8, !dbg !5547
  %arrayidx96 = getelementptr i8, i8* %114, i64 3, !dbg !5547
  %115 = load i8, i8* %arrayidx96, align 1, !dbg !5547
  %conv97 = zext i8 %115 to i32, !dbg !5547
  %116 = load i32, i32* %i, align 4, !dbg !5548
  %shl98 = shl i32 1, %116, !dbg !5549
  %and99 = and i32 %conv97, %shl98, !dbg !5550
  call void @input_report_key(%struct.input_dev* %112, i32 %add, i32 %and99) #8, !dbg !5551
  br label %for.inc, !dbg !5551

for.inc:                                          ; preds = %for.body
  %117 = load i32, i32* %i, align 4, !dbg !5552
  %inc = add i32 %117, 1, !dbg !5552
  store i32 %inc, i32* %i, align 4, !dbg !5552
  br label %for.cond, !dbg !5553, !llvm.loop !5554

for.end:                                          ; preds = %for.cond
  br label %sw.epilog161, !dbg !5556

sw.bb100:                                         ; preds = %sw.bb79
  %118 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5557
  %119 = load i8*, i8** %data, align 8, !dbg !5558
  %arrayidx101 = getelementptr i8, i8* %119, i64 1, !dbg !5558
  %120 = load i8, i8* %arrayidx101, align 1, !dbg !5558
  %conv102 = zext i8 %120 to i32, !dbg !5558
  %tobool103 = icmp ne i32 %conv102, 0, !dbg !5558
  br i1 %tobool103, label %lor.end124, label %lor.lhs.false104, !dbg !5559

lor.lhs.false104:                                 ; preds = %sw.bb100
  %121 = load i8*, i8** %data, align 8, !dbg !5560
  %arrayidx105 = getelementptr i8, i8* %121, i64 2, !dbg !5560
  %122 = load i8, i8* %arrayidx105, align 1, !dbg !5560
  %conv106 = zext i8 %122 to i32, !dbg !5560
  %tobool107 = icmp ne i32 %conv106, 0, !dbg !5560
  br i1 %tobool107, label %lor.end124, label %lor.lhs.false108, !dbg !5561

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %123 = load i8*, i8** %data, align 8, !dbg !5562
  %arrayidx109 = getelementptr i8, i8* %123, i64 3, !dbg !5562
  %124 = load i8, i8* %arrayidx109, align 1, !dbg !5562
  %conv110 = zext i8 %124 to i32, !dbg !5562
  %tobool111 = icmp ne i32 %conv110, 0, !dbg !5562
  br i1 %tobool111, label %lor.end124, label %lor.lhs.false112, !dbg !5563

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %125 = load i8*, i8** %data, align 8, !dbg !5564
  %arrayidx113 = getelementptr i8, i8* %125, i64 4, !dbg !5564
  %126 = load i8, i8* %arrayidx113, align 1, !dbg !5564
  %conv114 = zext i8 %126 to i32, !dbg !5564
  %tobool115 = icmp ne i32 %conv114, 0, !dbg !5564
  br i1 %tobool115, label %lor.end124, label %lor.lhs.false116, !dbg !5565

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %127 = load i8*, i8** %data, align 8, !dbg !5566
  %arrayidx117 = getelementptr i8, i8* %127, i64 5, !dbg !5566
  %128 = load i8, i8* %arrayidx117, align 1, !dbg !5566
  %conv118 = zext i8 %128 to i32, !dbg !5566
  %tobool119 = icmp ne i32 %conv118, 0, !dbg !5566
  br i1 %tobool119, label %lor.end124, label %lor.rhs120, !dbg !5567

lor.rhs120:                                       ; preds = %lor.lhs.false116
  %129 = load i8*, i8** %data, align 8, !dbg !5568
  %arrayidx121 = getelementptr i8, i8* %129, i64 6, !dbg !5568
  %130 = load i8, i8* %arrayidx121, align 1, !dbg !5568
  %conv122 = zext i8 %130 to i32, !dbg !5568
  %tobool123 = icmp ne i32 %conv122, 0, !dbg !5567
  br label %lor.end124, !dbg !5567

lor.end124:                                       ; preds = %lor.rhs120, %lor.lhs.false116, %lor.lhs.false112, %lor.lhs.false108, %lor.lhs.false104, %sw.bb100
  %131 = phi i1 [ true, %lor.lhs.false116 ], [ true, %lor.lhs.false112 ], [ true, %lor.lhs.false108 ], [ true, %lor.lhs.false104 ], [ true, %sw.bb100 ], [ %tobool123, %lor.rhs120 ]
  %lor.ext125 = zext i1 %131 to i32, !dbg !5567
  call void @input_report_key(%struct.input_dev* %118, i32 325, i32 %lor.ext125) #8, !dbg !5569
  %132 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5570
  %133 = load i8*, i8** %data, align 8, !dbg !5571
  %arrayidx126 = getelementptr i8, i8* %133, i64 1, !dbg !5571
  %134 = load i8, i8* %arrayidx126, align 1, !dbg !5571
  %conv127 = zext i8 %134 to i32, !dbg !5571
  %and128 = and i32 %conv127, 31, !dbg !5572
  %shl129 = shl i32 %and128, 8, !dbg !5573
  %135 = load i8*, i8** %data, align 8, !dbg !5574
  %arrayidx130 = getelementptr i8, i8* %135, i64 2, !dbg !5574
  %136 = load i8, i8* %arrayidx130, align 1, !dbg !5574
  %conv131 = zext i8 %136 to i32, !dbg !5574
  %or132 = or i32 %shl129, %conv131, !dbg !5575
  call void @input_report_abs(%struct.input_dev* %132, i32 3, i32 %or132) #8, !dbg !5576
  %137 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5577
  %138 = load i8*, i8** %data, align 8, !dbg !5578
  %arrayidx133 = getelementptr i8, i8* %138, i64 3, !dbg !5578
  %139 = load i8, i8* %arrayidx133, align 1, !dbg !5578
  %conv134 = zext i8 %139 to i32, !dbg !5578
  %and135 = and i32 %conv134, 31, !dbg !5579
  %shl136 = shl i32 %and135, 8, !dbg !5580
  %140 = load i8*, i8** %data, align 8, !dbg !5581
  %arrayidx137 = getelementptr i8, i8* %140, i64 4, !dbg !5581
  %141 = load i8, i8* %arrayidx137, align 1, !dbg !5581
  %conv138 = zext i8 %141 to i32, !dbg !5581
  %or139 = or i32 %shl136, %conv138, !dbg !5582
  call void @input_report_abs(%struct.input_dev* %137, i32 4, i32 %or139) #8, !dbg !5583
  %142 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5584
  %143 = load i8*, i8** %data, align 8, !dbg !5585
  %arrayidx140 = getelementptr i8, i8* %143, i64 5, !dbg !5585
  %144 = load i8, i8* %arrayidx140, align 1, !dbg !5585
  %conv141 = zext i8 %144 to i32, !dbg !5585
  %and142 = and i32 %conv141, 1, !dbg !5586
  call void @input_report_key(%struct.input_dev* %142, i32 256, i32 %and142) #8, !dbg !5587
  store i32 0, i32* %i, align 4, !dbg !5588
  br label %for.cond143, !dbg !5590

for.cond143:                                      ; preds = %for.inc157, %lor.end124
  %145 = load i32, i32* %i, align 4, !dbg !5591
  %cmp144 = icmp slt i32 %145, 4, !dbg !5593
  br i1 %cmp144, label %for.body146, label %for.end159, !dbg !5594

for.body146:                                      ; preds = %for.cond143
  %146 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5595
  %147 = load i32, i32* %i, align 4, !dbg !5597
  %add147 = add i32 257, %147, !dbg !5598
  %148 = load i8*, i8** %data, align 8, !dbg !5599
  %arrayidx148 = getelementptr i8, i8* %148, i64 5, !dbg !5599
  %149 = load i8, i8* %arrayidx148, align 1, !dbg !5599
  %conv149 = zext i8 %149 to i32, !dbg !5599
  %150 = load i32, i32* %i, align 4, !dbg !5600
  %shl150 = shl i32 1, %150, !dbg !5601
  %and151 = and i32 %conv149, %shl150, !dbg !5602
  call void @input_report_key(%struct.input_dev* %146, i32 %add147, i32 %and151) #8, !dbg !5603
  %151 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5604
  %152 = load i32, i32* %i, align 4, !dbg !5605
  %add152 = add i32 261, %152, !dbg !5606
  %153 = load i8*, i8** %data, align 8, !dbg !5607
  %arrayidx153 = getelementptr i8, i8* %153, i64 6, !dbg !5607
  %154 = load i8, i8* %arrayidx153, align 1, !dbg !5607
  %conv154 = zext i8 %154 to i32, !dbg !5607
  %155 = load i32, i32* %i, align 4, !dbg !5608
  %shl155 = shl i32 1, %155, !dbg !5609
  %and156 = and i32 %conv154, %shl155, !dbg !5610
  call void @input_report_key(%struct.input_dev* %151, i32 %add152, i32 %and156) #8, !dbg !5611
  br label %for.inc157, !dbg !5612

for.inc157:                                       ; preds = %for.body146
  %156 = load i32, i32* %i, align 4, !dbg !5613
  %inc158 = add i32 %156, 1, !dbg !5613
  store i32 %inc158, i32* %i, align 4, !dbg !5613
  br label %for.cond143, !dbg !5614, !llvm.loop !5615

for.end159:                                       ; preds = %for.cond143
  br label %sw.epilog161, !dbg !5617

sw.bb160:                                         ; preds = %sw.bb79
  br label %return, !dbg !5618

sw.epilog161:                                     ; preds = %sw.bb79, %for.end159, %for.end
  %157 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5619
  %158 = load %struct.hanwang*, %struct.hanwang** %hanwang.addr, align 8, !dbg !5620
  %current_id162 = getelementptr inbounds %struct.hanwang, %struct.hanwang* %158, i32 0, i32 7, !dbg !5621
  %159 = load i32, i32* %current_id162, align 4, !dbg !5621
  call void @input_report_abs(%struct.input_dev* %157, i32 40, i32 %159) #8, !dbg !5622
  %160 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5623
  call void @input_event(%struct.input_dev* %160, i32 4, i32 0, i32 -1) #8, !dbg !5624
  br label %sw.epilog164, !dbg !5625

sw.default163:                                    ; preds = %if.end
  br label %sw.epilog164, !dbg !5626

sw.epilog164:                                     ; preds = %sw.default163, %sw.epilog161, %sw.epilog75
  %161 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !5627
  call void @input_sync(%struct.input_dev* %161) #8, !dbg !5628
  br label %return, !dbg !5629

return:                                           ; preds = %sw.epilog164, %sw.bb160
  ret void, !dbg !5629
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5630 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5635, metadata !DIExpression()), !dbg !5636
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5639
  %1 = load i32, i32* %code.addr, align 4, !dbg !5640
  %2 = load i32, i32* %value.addr, align 4, !dbg !5641
  %tobool = icmp ne i32 %2, 0, !dbg !5642
  %lnot = xor i1 %tobool, true, !dbg !5642
  %lnot1 = xor i1 %lnot, true, !dbg !5643
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5643
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #8, !dbg !5644
  ret void, !dbg !5645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5646 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5653
  %1 = load i32, i32* %code.addr, align 4, !dbg !5654
  %2 = load i32, i32* %value.addr, align 4, !dbg !5655
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #8, !dbg !5656
  ret void, !dbg !5657
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !5658 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5661
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #8, !dbg !5662
  ret void, !dbg !5663
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #6 !dbg !5664 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  %0 = load i16, i16* %val.addr, align 2, !dbg !5669
  %conv = zext i16 %0 to i32, !dbg !5669
  %and = and i32 %conv, 255, !dbg !5669
  %shl = shl i32 %and, 8, !dbg !5669
  %1 = load i16, i16* %val.addr, align 2, !dbg !5669
  %conv1 = zext i16 %1 to i32, !dbg !5669
  %and2 = and i32 %conv1, 65280, !dbg !5669
  %shr = ashr i32 %and2, 8, !dbg !5669
  %or = or i32 %shl, %shr, !dbg !5669
  %conv3 = trunc i32 %or to i16, !dbg !5669
  ret i16 %conv3, !dbg !5670
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !5671 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5674, metadata !DIExpression()), !dbg !5675
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5676
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5677
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5678
  ret i8* %call, !dbg !5679
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3940, !3941, !3942, !3943}
!llvm.ident = !{!3944}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author212", scope: !2, file: !3, line: 17, type: !3937, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !3820, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/tablet/hanwang.c", directory: "/home/lizy2001/genbc/linux")
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
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hanwang_tablet_type", file: !3, line: 44, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "HANWANG_ART_MASTER_III", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "HANWANG_ART_MASTER_HD", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "HANWANG_ART_MASTER_II", value: 2, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !119, line: 305, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 10, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!130 = !{!131, !134, !136, !137, !138, !817, !3568, !3816, !3817, !3819}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !133, line: 76, flags: DIFlagFwdDecl)
!133 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 148, baseType: !7)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !140)
!140 = !{!141, !142, !147, !152, !153, !154, !155, !156, !159, !160, !164, !165, !3557, !3598, !3599, !3616, !3677, !3759, !3760, !3762, !3763, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3798, !3799, !3800, !3805, !3812, !3813, !3814, !3815}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !139, file: !6, line: 632, baseType: !136, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !139, file: !6, line: 633, baseType: !143, size: 128, offset: 32)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !145)
!144 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!145 = !{!146}
!146 = !DISubrange(count: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !139, file: !6, line: 634, baseType: !148, size: 32, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !149, line: 21, baseType: !150)
!149 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !151, line: 27, baseType: !7)
!151 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !139, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !139, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !139, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !139, file: !6, line: 640, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !139, file: !6, line: 641, baseType: !136, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !139, file: !6, line: 643, baseType: !161, size: 64, offset: 416)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 2)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !6, line: 645, baseType: !138, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !139, file: !6, line: 646, baseType: !166, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !168)
!168 = !{!169, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3551, !3552, !3553, !3554, !3555, !3556}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !167, file: !6, line: 425, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !172)
!172 = !{!173, !3175, !3176, !3179, !3180, !3231, !3322, !3323, !3324, !3325, !3326, !3335, !3440, !3453, !3456, !3457, !3461, !3463, !3464, !3465, !3469, !3475, !3476, !3479, !3483, !3486, !3487, !3488, !3489, !3490, !3522, !3523, !3524, !3527, !3530, !3531, !3532, !3533}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !171, file: !67, line: 462, baseType: !174, size: 512)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !175, line: 64, size: 512, elements: !176)
!175 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !180, !186, !188, !248, !3026, !3165, !3170, !3171, !3172, !3173, !3174}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 65, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !174, file: !175, line: 66, baseType: !181, size: 128, offset: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 178, size: 128, elements: !182)
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !135, line: 179, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !135, line: 179, baseType: !184, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !175, line: 67, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !174, file: !175, line: 68, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !175, line: 192, size: 704, elements: !191)
!191 = !{!192, !193, !209, !210}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !190, file: !175, line: 193, baseType: !181, size: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !190, file: !175, line: 194, baseType: !194, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !195, line: 83, baseType: !196)
!195 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !195, line: 71, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 72, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 72, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !199, file: !195, line: 73, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !195, line: 20, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !202, file: !195, line: 21, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !206, line: 25, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 25, elements: !208)
!208 = !{}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !190, file: !175, line: 195, baseType: !174, size: 512, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !190, file: !175, line: 196, baseType: !211, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !175, line: 156, size: 192, elements: !214)
!214 = !{!215, !220, !225}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !213, file: !175, line: 157, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!136, !189, !187}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !175, line: 158, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!178, !189, !187}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !213, file: !175, line: 159, baseType: !226, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!136, !189, !187, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !175, line: 148, size: 20736, elements: !232)
!232 = !{!233, !238, !242, !243, !247}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !231, file: !175, line: 149, baseType: !234, size: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 192, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !231, file: !175, line: 150, baseType: !239, size: 4096, offset: 192)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 4096, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !231, file: !175, line: 151, baseType: !136, size: 32, offset: 4288)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !231, file: !175, line: 152, baseType: !244, size: 16384, offset: 4320)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16384, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 2048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !231, file: !175, line: 153, baseType: !136, size: 32, offset: 20704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !174, file: !175, line: 69, baseType: !249, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !175, line: 138, size: 448, elements: !251)
!251 = !{!252, !256, !286, !288, !2986, !3016, !3020}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !175, line: 139, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !187}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !250, file: !175, line: 140, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !260, line: 230, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !278}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !259, file: !260, line: 231, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !187, !271, !235}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 60, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !268, line: 73, baseType: !269)
!268 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !268, line: 15, baseType: !270)
!270 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !260, line: 30, size: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !260, line: 31, baseType: !178, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !272, file: !260, line: 32, baseType: !276, size: 16, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 19, baseType: !277)
!277 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !259, file: !260, line: 232, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!266, !187, !271, !178, !282}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 55, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !268, line: 72, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !268, line: 16, baseType: !285)
!285 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !250, file: !175, line: 141, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !250, file: !175, line: 142, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !260, line: 84, size: 320, elements: !293)
!293 = !{!294, !295, !299, !2983, !2984}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !260, line: 85, baseType: !178, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !292, file: !260, line: 86, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!276, !187, !271, !136}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !292, file: !260, line: 88, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!276, !187, !303, !136}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !260, line: 168, size: 448, elements: !305)
!305 = !{!306, !307, !308, !309, !2978, !2979}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !304, file: !260, line: 169, baseType: !272, size: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !304, file: !260, line: 170, baseType: !282, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !304, file: !260, line: 171, baseType: !137, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !304, file: !260, line: 172, baseType: !310, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!266, !313, !187, !303, !235, !488, !282}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !315)
!315 = !{!316, !334, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2961, !2962, !2971, !2972, !2973, !2974, !2975, !2976, !2977}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !314, file: !38, line: 920, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !38, line: 917, size: 128, elements: !318)
!318 = !{!319, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !317, file: !38, line: 918, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !321, line: 58, size: 64, elements: !322)
!321 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 59, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !317, file: !38, line: 919, baseType: !326, size: 128, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 216, size: 128, align: 64, elements: !327)
!327 = !{!328, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !135, line: 217, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !326, file: !135, line: 218, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !329}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !314, file: !38, line: 921, baseType: !335, size: 128, offset: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !336, line: 8, size: 128, elements: !337)
!336 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !335, file: !336, line: 9, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !341, line: 18, flags: DIFlagFwdDecl)
!341 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !335, file: !336, line: 10, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !341, line: 89, size: 1536, elements: !345)
!345 = !{!346, !347, !357, !365, !366, !385, !2911, !2913, !2925, !2926, !2927, !2928, !2929, !2935, !2936, !2937}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !344, file: !341, line: 91, baseType: !7, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !344, file: !341, line: 92, baseType: !348, size: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !349, line: 277, baseType: !350)
!349 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !349, line: 277, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !350, file: !349, line: 277, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !349, line: 70, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !349, line: 65, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !354, file: !349, line: 66, baseType: !7, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !344, file: !341, line: 93, baseType: !358, size: 128, offset: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !359, line: 38, size: 128, elements: !360)
!359 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !359, line: 39, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !358, file: !359, line: 39, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !344, file: !341, line: 94, baseType: !343, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !344, file: !341, line: 95, baseType: !367, size: 128, offset: 256)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !341, line: 47, size: 128, elements: !368)
!368 = !{!369, !381}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !341, line: 48, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !341, line: 48, size: 64, elements: !371)
!371 = !{!372, !377}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !341, line: 49, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !341, line: 49, size: 64, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !373, file: !341, line: 50, baseType: !148, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !373, file: !341, line: 50, baseType: !148, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !370, file: !341, line: 52, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !149, line: 23, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !151, line: 31, baseType: !380)
!380 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !341, line: 54, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !344, file: !341, line: 96, baseType: !386, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !388)
!388 = !{!389, !390, !391, !399, !406, !407, !555, !2622, !2623, !2624, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2887, !2895, !2896, !2897, !2907, !2908, !2909, !2910}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !387, file: !38, line: 611, baseType: !276, size: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !387, file: !38, line: 612, baseType: !277, size: 16, offset: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !387, file: !38, line: 613, baseType: !392, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !393, line: 23, baseType: !394)
!393 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 21, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !394, file: !393, line: 22, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 32, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !268, line: 49, baseType: !7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !387, file: !38, line: 614, baseType: !400, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !393, line: 28, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 26, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !393, line: 27, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 33, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !268, line: 50, baseType: !7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !387, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !387, file: !38, line: 622, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !411)
!411 = !{!412, !416, !429, !433, !439, !443, !449, !453, !457, !461, !465, !466, !472, !476, !502, !531, !535, !541, !546, !550, !551}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !410, file: !38, line: 1865, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!343, !386, !343, !7}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !410, file: !38, line: 1866, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!178, !343, !386, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !422, line: 10, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !421, file: !422, line: 11, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !137}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !421, file: !422, line: 12, baseType: !137, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !410, file: !38, line: 1867, baseType: !430, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!136, !386, !136}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !410, file: !38, line: 1868, baseType: !434, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !386, !136}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !410, file: !38, line: 1870, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!136, !343, !235, !136}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !410, file: !38, line: 1872, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!136, !386, !343, !276, !447}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 30, baseType: !448)
!448 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !410, file: !38, line: 1873, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!136, !343, !386, !343}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !410, file: !38, line: 1874, baseType: !454, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!136, !386, !343}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !410, file: !38, line: 1875, baseType: !458, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!136, !386, !343, !178}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !410, file: !38, line: 1876, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!136, !386, !343, !276}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !410, file: !38, line: 1877, baseType: !454, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !410, file: !38, line: 1878, baseType: !467, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!136, !386, !343, !276, !470}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 16, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 13, baseType: !148)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !410, file: !38, line: 1879, baseType: !473, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!136, !386, !343, !386, !343, !7}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !410, file: !38, line: 1881, baseType: !477, size: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!136, !343, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !491, !499, !500, !501}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !481, file: !38, line: 220, baseType: !7, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !481, file: !38, line: 221, baseType: !276, size: 16, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !481, file: !38, line: 222, baseType: !392, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !481, file: !38, line: 223, baseType: !400, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !481, file: !38, line: 224, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 46, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !268, line: 88, baseType: !490)
!490 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !481, file: !38, line: 225, baseType: !492, size: 128, offset: 192)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !493, line: 13, size: 128, elements: !494)
!493 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!494 = !{!495, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !492, file: !493, line: 14, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !493, line: 8, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !151, line: 30, baseType: !490)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !492, file: !493, line: 15, baseType: !270, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !481, file: !38, line: 226, baseType: !492, size: 128, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !481, file: !38, line: 227, baseType: !492, size: 128, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !481, file: !38, line: 234, baseType: !313, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !410, file: !38, line: 1882, baseType: !503, size: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!136, !506, !508, !148, !7}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !510, line: 22, size: 1152, elements: !511)
!510 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!511 = !{!512, !513, !514, !515, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !509, file: !510, line: 23, baseType: !148, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !509, file: !510, line: 24, baseType: !276, size: 16, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !509, file: !510, line: 25, baseType: !7, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !509, file: !510, line: 26, baseType: !516, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 104, baseType: !148)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !509, file: !510, line: 27, baseType: !378, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !509, file: !510, line: 28, baseType: !378, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !509, file: !510, line: 37, baseType: !378, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !509, file: !510, line: 38, baseType: !470, size: 32, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !509, file: !510, line: 39, baseType: !470, size: 32, offset: 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !509, file: !510, line: 40, baseType: !392, size: 32, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !509, file: !510, line: 41, baseType: !400, size: 32, offset: 416)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !509, file: !510, line: 42, baseType: !488, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !509, file: !510, line: 43, baseType: !492, size: 128, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !509, file: !510, line: 44, baseType: !492, size: 128, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !509, file: !510, line: 45, baseType: !492, size: 128, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !509, file: !510, line: 46, baseType: !492, size: 128, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !509, file: !510, line: 47, baseType: !378, size: 64, offset: 1024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !509, file: !510, line: 48, baseType: !378, size: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !410, file: !38, line: 1883, baseType: !532, size: 64, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!266, !343, !235, !282}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !410, file: !38, line: 1884, baseType: !536, size: 64, offset: 1024)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!136, !386, !539, !378, !378}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !410, file: !38, line: 1886, baseType: !542, size: 64, offset: 1088)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!136, !386, !545, !136}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !410, file: !38, line: 1887, baseType: !547, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!136, !386, !343, !313, !7, !276}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !410, file: !38, line: 1890, baseType: !462, size: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !410, file: !38, line: 1891, baseType: !552, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!136, !386, !437, !136}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !387, file: !38, line: 623, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !611, !2229, !2311, !2394, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2410, !2414, !2415, !2418, !2419, !2422, !2423, !2424, !2465, !2492, !2493, !2494, !2495, !2496, !2497, !2500, !2502, !2509, !2510, !2512, !2513, !2514, !2573, !2574, !2589, !2590, !2591, !2592, !2593, !2596, !2597, !2598, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !557, file: !38, line: 1417, baseType: !181, size: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !557, file: !38, line: 1418, baseType: !470, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !557, file: !38, line: 1419, baseType: !384, size: 8, offset: 160)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !557, file: !38, line: 1420, baseType: !285, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !557, file: !38, line: 1421, baseType: !488, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !557, file: !38, line: 1422, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !567)
!567 = !{!568, !569, !570, !577, !581, !585, !589, !590, !591, !601, !604, !605, !606, !608, !609, !610}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !566, file: !38, line: 2229, baseType: !178, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !566, file: !38, line: 2230, baseType: !136, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !566, file: !38, line: 2238, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!136, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !576, line: 28, flags: DIFlagFwdDecl)
!576 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!577 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !566, file: !38, line: 2239, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !566, file: !38, line: 2240, baseType: !582, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!343, !565, !136, !178, !137}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !566, file: !38, line: 2242, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !556}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !566, file: !38, line: 2243, baseType: !131, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !38, line: 2244, baseType: !565, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !566, file: !38, line: 2245, baseType: !592, size: 64, offset: 512)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 182, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !592, file: !135, line: 183, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 186, size: 128, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !135, line: 187, baseType: !595, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !596, file: !135, line: 187, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !566, file: !38, line: 2247, baseType: !602, offset: 576)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !603, line: 187, elements: !208)
!603 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !566, file: !38, line: 2248, baseType: !602, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !566, file: !38, line: 2249, baseType: !602, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !566, file: !38, line: 2250, baseType: !607, offset: 576)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, elements: !236)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !566, file: !38, line: 2252, baseType: !602, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !566, file: !38, line: 2253, baseType: !602, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !566, file: !38, line: 2254, baseType: !602, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !557, file: !38, line: 1423, baseType: !612, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !615)
!615 = !{!616, !620, !624, !625, !629, !635, !639, !640, !641, !645, !649, !650, !651, !652, !658, !663, !664, !671, !672, !673, !674, !2213, !2228}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !614, file: !38, line: 1936, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!386, !556}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !614, file: !38, line: 1937, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !386}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !614, file: !38, line: 1938, baseType: !621, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !614, file: !38, line: 1940, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !386, !136}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !614, file: !38, line: 1941, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!136, !386, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !614, file: !38, line: 1942, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!136, !386}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !614, file: !38, line: 1943, baseType: !621, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !614, file: !38, line: 1944, baseType: !586, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !614, file: !38, line: 1945, baseType: !642, size: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!136, !556, !136}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !614, file: !38, line: 1946, baseType: !646, size: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!136, !556}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !614, file: !38, line: 1947, baseType: !646, size: 64, offset: 640)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !614, file: !38, line: 1948, baseType: !646, size: 64, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !614, file: !38, line: 1949, baseType: !646, size: 64, offset: 768)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !614, file: !38, line: 1950, baseType: !653, size: 64, offset: 832)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!136, !343, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !614, file: !38, line: 1951, baseType: !659, size: 64, offset: 896)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!136, !556, !662, !235}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !614, file: !38, line: 1952, baseType: !586, size: 64, offset: 960)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !614, file: !38, line: 1954, baseType: !665, size: 64, offset: 1024)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!136, !668, !343}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !670, line: 539, flags: DIFlagFwdDecl)
!670 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !614, file: !38, line: 1955, baseType: !665, size: 64, offset: 1088)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !614, file: !38, line: 1956, baseType: !665, size: 64, offset: 1152)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !614, file: !38, line: 1957, baseType: !665, size: 64, offset: 1216)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !614, file: !38, line: 1963, baseType: !675, size: 64, offset: 1280)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!136, !556, !678, !134}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !680, line: 68, size: 512, align: 128, elements: !681)
!680 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!681 = !{!682, !683, !2205, !2212}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !680, line: 69, baseType: !285, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !680, line: 77, baseType: !684, size: 320, offset: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !679, file: !680, line: 77, size: 320, elements: !685)
!685 = !{!686, !873, !878, !906, !914, !920, !2197, !2204}
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 78, baseType: !687, size: 320)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 78, size: 320, elements: !688)
!688 = !{!689, !690, !871, !872}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !687, file: !680, line: 84, baseType: !181, size: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !687, file: !680, line: 86, baseType: !691, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !693)
!693 = !{!694, !695, !702, !703, !708, !723, !739, !740, !741, !742, !864, !865, !868, !869, !870}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !692, file: !38, line: 452, baseType: !386, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !692, file: !38, line: 453, baseType: !696, size: 128, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !697, line: 292, size: 128, elements: !698)
!697 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !696, file: !697, line: 293, baseType: !194)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !696, file: !697, line: 295, baseType: !134, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !696, file: !697, line: 296, baseType: !137, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !692, file: !38, line: 454, baseType: !134, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !692, file: !38, line: 455, baseType: !704, size: 32, offset: 224)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 168, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 166, size: 32, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !705, file: !135, line: 167, baseType: !136, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !692, file: !38, line: 460, baseType: !709, size: 128, offset: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !710, line: 125, size: 128, elements: !711)
!710 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!711 = !{!712, !722}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !709, file: !710, line: 126, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !710, line: 31, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !713, file: !710, line: 32, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !710, line: 24, size: 192, align: 64, elements: !718)
!718 = !{!719, !720, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !717, file: !710, line: 25, baseType: !285, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !717, file: !710, line: 26, baseType: !716, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !717, file: !710, line: 27, baseType: !716, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !709, file: !710, line: 127, baseType: !716, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !692, file: !38, line: 461, baseType: !724, size: 256, offset: 384)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !725, line: 35, size: 256, elements: !726)
!725 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !735, !736, !738}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !724, file: !725, line: 36, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !729, line: 13, baseType: !730)
!729 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 175, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 173, size: 64, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !731, file: !135, line: 174, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !149, line: 22, baseType: !497)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !724, file: !725, line: 42, baseType: !728, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !724, file: !725, line: 46, baseType: !737, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !195, line: 29, baseType: !202)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !724, file: !725, line: 47, baseType: !181, size: 128, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !692, file: !38, line: 462, baseType: !285, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !692, file: !38, line: 463, baseType: !285, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !692, file: !38, line: 464, baseType: !285, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !692, file: !38, line: 465, baseType: !743, size: 64, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !746)
!746 = !{!747, !751, !755, !759, !763, !767, !773, !779, !783, !788, !792, !796, !800, !828, !832, !838, !839, !840, !844, !849, !853, !860}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !745, file: !38, line: 368, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!136, !678, !633}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !745, file: !38, line: 369, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!136, !313, !678}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !745, file: !38, line: 372, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!136, !691, !633}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !745, file: !38, line: 375, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!136, !678}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !745, file: !38, line: 381, baseType: !764, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!136, !313, !691, !184, !7}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !745, file: !38, line: 383, baseType: !768, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !745, file: !38, line: 385, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!136, !313, !691, !488, !7, !7, !777, !778}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !745, file: !38, line: 388, baseType: !780, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!136, !313, !691, !488, !7, !7, !678, !137}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !745, file: !38, line: 393, baseType: !784, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!787, !691, !787}
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 125, baseType: !378)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !745, file: !38, line: 394, baseType: !789, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !678, !7, !7}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !745, file: !38, line: 395, baseType: !793, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!136, !678, !134}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !745, file: !38, line: 396, baseType: !797, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !678}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !745, file: !38, line: 397, baseType: !801, size: 64, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!266, !804, !826}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !806)
!806 = !{!807, !808, !809, !813, !814, !815, !818, !819}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !805, file: !38, line: 321, baseType: !313, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !805, file: !38, line: 326, baseType: !488, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !805, file: !38, line: 327, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !804, !270, !270}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !805, file: !38, line: 328, baseType: !137, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !805, file: !38, line: 329, baseType: !136, size: 32, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !805, file: !38, line: 330, baseType: !816, size: 16, offset: 288)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !149, line: 19, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !151, line: 24, baseType: !277)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !805, file: !38, line: 331, baseType: !816, size: 16, offset: 304)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !38, line: 332, baseType: !820, size: 64, offset: 320)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !38, line: 332, size: 64, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !820, file: !38, line: 333, baseType: !7, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !820, file: !38, line: 334, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !745, file: !38, line: 402, baseType: !829, size: 64, offset: 832)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!136, !691, !678, !678, !13}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !745, file: !38, line: 404, baseType: !833, size: 64, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!447, !678, !836}
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !837, line: 305, baseType: !7)
!837 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!838 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !745, file: !38, line: 405, baseType: !797, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !745, file: !38, line: 406, baseType: !760, size: 64, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !745, file: !38, line: 407, baseType: !841, size: 64, offset: 1088)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!136, !678, !285, !285}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !745, file: !38, line: 409, baseType: !845, size: 64, offset: 1152)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !678, !848, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !745, file: !38, line: 410, baseType: !850, size: 64, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!136, !691, !678}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !745, file: !38, line: 413, baseType: !854, size: 64, offset: 1280)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!136, !857, !313, !859}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !745, file: !38, line: 415, baseType: !861, size: 64, offset: 1344)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !313}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !38, line: 466, baseType: !285, size: 64, offset: 896)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !692, file: !38, line: 467, baseType: !866, size: 32, offset: 960)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !867, line: 8, baseType: !148)
!867 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!868 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !692, file: !38, line: 468, baseType: !194, offset: 992)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !692, file: !38, line: 469, baseType: !181, size: 128, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !692, file: !38, line: 470, baseType: !137, size: 64, offset: 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !687, file: !680, line: 87, baseType: !285, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !687, file: !680, line: 94, baseType: !285, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 96, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 96, size: 64, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !874, file: !680, line: 101, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !135, line: 143, baseType: !378)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 103, baseType: !879, size: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 103, size: 320, elements: !880)
!880 = !{!881, !891, !894, !895}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !680, line: 104, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !680, line: 104, size: 128, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !882, file: !680, line: 105, baseType: !181, size: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !680, line: 106, baseType: !886, size: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !680, line: 106, size: 128, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !680, line: 107, baseType: !678, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !886, file: !680, line: 109, baseType: !136, size: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !886, file: !680, line: 110, baseType: !136, size: 32, offset: 96)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !879, file: !680, line: 117, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !680, line: 117, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !879, file: !680, line: 119, baseType: !137, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !680, line: 120, baseType: !896, size: 64, offset: 256)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !879, file: !680, line: 120, size: 64, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !896, file: !680, line: 121, baseType: !137, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !896, file: !680, line: 122, baseType: !285, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !680, line: 123, baseType: !901, size: 32)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !680, line: 123, size: 32, elements: !902)
!902 = !{!903, !904, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !901, file: !680, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !901, file: !680, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !901, file: !680, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 130, baseType: !907, size: 192)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 130, size: 192, elements: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !907, file: !680, line: 131, baseType: !285, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !907, file: !680, line: 134, baseType: !384, size: 8, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !907, file: !680, line: 135, baseType: !384, size: 8, offset: 72)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !907, file: !680, line: 136, baseType: !704, size: 32, offset: 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !907, file: !680, line: 137, baseType: !7, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 139, baseType: !915, size: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 139, size: 256, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !915, file: !680, line: 140, baseType: !285, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !915, file: !680, line: 141, baseType: !704, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !915, file: !680, line: 143, baseType: !181, size: 128, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 145, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 145, size: 256, elements: !922)
!922 = !{!923, !924, !926, !927, !2196}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !921, file: !680, line: 146, baseType: !285, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !921, file: !680, line: 147, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !670, line: 509, baseType: !678)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !921, file: !680, line: 148, baseType: !285, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !680, line: 149, baseType: !928, size: 64, offset: 192)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !680, line: 149, size: 64, elements: !929)
!929 = !{!930, !2195}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !928, file: !680, line: 150, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !680, line: 388, size: 7296, elements: !933)
!933 = !{!934, !2191}
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !680, line: 389, baseType: !935, size: 7296)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !680, line: 389, size: 7296, elements: !936)
!936 = !{!937, !975, !976, !977, !981, !982, !983, !984, !985, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1026, !1034, !1037, !1083, !1084, !2175, !2176, !2179, !2180, !2181, !2184, !2185, !2186, !2189, !2190}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !935, file: !680, line: 390, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !680, line: 305, size: 1472, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !955, !956, !961, !962, !965, !969, !970, !971, !972, !973}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !939, file: !680, line: 308, baseType: !285, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !939, file: !680, line: 309, baseType: !285, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !939, file: !680, line: 313, baseType: !938, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !939, file: !680, line: 313, baseType: !938, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !939, file: !680, line: 315, baseType: !717, size: 192, align: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !939, file: !680, line: 323, baseType: !285, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !939, file: !680, line: 327, baseType: !931, size: 64, offset: 512)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !939, file: !680, line: 333, baseType: !949, size: 64, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !670, line: 284, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !670, line: 284, size: 64, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !950, file: !670, line: 284, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !954, line: 19, baseType: !285)
!954 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !939, file: !680, line: 334, baseType: !285, size: 64, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !939, file: !680, line: 343, baseType: !957, size: 256, offset: 704)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !680, line: 340, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !957, file: !680, line: 341, baseType: !717, size: 192, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !957, file: !680, line: 342, baseType: !285, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !939, file: !680, line: 351, baseType: !181, size: 128, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !939, file: !680, line: 353, baseType: !963, size: 64, offset: 1088)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !680, line: 353, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !939, file: !680, line: 356, baseType: !966, size: 64, offset: 1152)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !680, line: 356, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !939, file: !680, line: 359, baseType: !285, size: 64, offset: 1216)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !939, file: !680, line: 361, baseType: !313, size: 64, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !939, file: !680, line: 362, baseType: !137, size: 64, offset: 1344)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !939, file: !680, line: 365, baseType: !728, size: 64, offset: 1408)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !939, file: !680, line: 373, baseType: !974, offset: 1472)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !680, line: 296, elements: !208)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !935, file: !680, line: 391, baseType: !713, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !935, file: !680, line: 392, baseType: !378, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !935, file: !680, line: 394, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!285, !313, !285, !285, !285, !285}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !935, file: !680, line: 398, baseType: !285, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !935, file: !680, line: 399, baseType: !285, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !935, file: !680, line: 405, baseType: !285, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !935, file: !680, line: 406, baseType: !285, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !935, file: !680, line: 407, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !670, line: 286, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !670, line: 286, size: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !988, file: !670, line: 286, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !954, line: 18, baseType: !285)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !935, file: !680, line: 416, baseType: !704, size: 32, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !935, file: !680, line: 428, baseType: !704, size: 32, offset: 608)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !935, file: !680, line: 437, baseType: !704, size: 32, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !935, file: !680, line: 447, baseType: !704, size: 32, offset: 672)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !935, file: !680, line: 450, baseType: !728, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !935, file: !680, line: 452, baseType: !136, size: 32, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !935, file: !680, line: 454, baseType: !194, offset: 800)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !935, file: !680, line: 457, baseType: !724, size: 256, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !935, file: !680, line: 459, baseType: !181, size: 128, offset: 1088)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !935, file: !680, line: 466, baseType: !285, size: 64, offset: 1216)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !935, file: !680, line: 467, baseType: !285, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !935, file: !680, line: 469, baseType: !285, size: 64, offset: 1344)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !935, file: !680, line: 470, baseType: !285, size: 64, offset: 1408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !935, file: !680, line: 471, baseType: !730, size: 64, offset: 1472)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !935, file: !680, line: 472, baseType: !285, size: 64, offset: 1536)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !935, file: !680, line: 473, baseType: !285, size: 64, offset: 1600)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !935, file: !680, line: 474, baseType: !285, size: 64, offset: 1664)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !935, file: !680, line: 475, baseType: !285, size: 64, offset: 1728)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !935, file: !680, line: 477, baseType: !194, offset: 1792)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1792)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1856)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1920)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !935, file: !680, line: 478, baseType: !285, size: 64, offset: 1984)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !935, file: !680, line: 479, baseType: !285, size: 64, offset: 2048)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !935, file: !680, line: 479, baseType: !285, size: 64, offset: 2112)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !935, file: !680, line: 479, baseType: !285, size: 64, offset: 2176)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2240)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2304)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2368)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !935, file: !680, line: 480, baseType: !285, size: 64, offset: 2432)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !935, file: !680, line: 482, baseType: !1023, size: 2816, offset: 2496)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 2816, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 44)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !935, file: !680, line: 488, baseType: !1027, size: 256, offset: 5312)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1028, line: 60, size: 256, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1027, file: !1028, line: 61, baseType: !1031, size: 256)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 256, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 4)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !935, file: !680, line: 490, baseType: !1035, size: 64, offset: 5568)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !680, line: 490, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !935, file: !680, line: 493, baseType: !1038, size: 896, offset: 5632)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1039, line: 53, baseType: !1040)
!1039 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 13, size: 896, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1048, !1049, !1056, !1057, !1077, !1078, !1079}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1040, file: !1039, line: 18, baseType: !378, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1040, file: !1039, line: 28, baseType: !730, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1040, file: !1039, line: 31, baseType: !724, size: 256, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1040, file: !1039, line: 32, baseType: !1046, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1039, line: 32, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1040, file: !1039, line: 37, baseType: !277, size: 16, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1039, line: 40, baseType: !1050, size: 192, offset: 512)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1051, line: 53, size: 192, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !{!1053, !1054, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1050, file: !1051, line: 54, baseType: !728, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1050, file: !1051, line: 55, baseType: !194, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1050, file: !1051, line: 59, baseType: !181, size: 128, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1040, file: !1039, line: 41, baseType: !137, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1040, file: !1039, line: 42, baseType: !1058, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1061, line: 13, size: 896, elements: !1062)
!1061 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1060, file: !1061, line: 14, baseType: !137, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1060, file: !1061, line: 15, baseType: !285, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1060, file: !1061, line: 17, baseType: !285, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1060, file: !1061, line: 17, baseType: !285, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1060, file: !1061, line: 19, baseType: !270, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1060, file: !1061, line: 21, baseType: !270, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1060, file: !1061, line: 22, baseType: !270, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1060, file: !1061, line: 23, baseType: !270, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1060, file: !1061, line: 24, baseType: !270, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1060, file: !1061, line: 25, baseType: !270, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1060, file: !1061, line: 26, baseType: !270, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1060, file: !1061, line: 27, baseType: !270, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1060, file: !1061, line: 28, baseType: !270, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1060, file: !1061, line: 29, baseType: !270, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1040, file: !1039, line: 44, baseType: !704, size: 32, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1040, file: !1039, line: 50, baseType: !816, size: 16, offset: 864)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1040, file: !1039, line: 51, baseType: !1080, size: 16, offset: 880)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !149, line: 18, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !151, line: 23, baseType: !1082)
!1082 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !935, file: !680, line: 495, baseType: !285, size: 64, offset: 6528)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !935, file: !680, line: 497, baseType: !1085, size: 64, offset: 6592)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !680, line: 381, size: 384, elements: !1087)
!1087 = !{!1088, !1089, !2174}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1086, file: !680, line: 382, baseType: !704, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1086, file: !680, line: 383, baseType: !1090, size: 128, offset: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !680, line: 376, size: 128, elements: !1091)
!1091 = !{!1092, !2172}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1090, file: !680, line: 377, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1095, line: 640, size: 48640, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !{!1097, !1103, !1105, !1106, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1123, !1141, !1152, !1237, !1238, !1239, !1250, !1251, !1253, !1254, !1255, !1256, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1335, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1373, !1375, !1376, !1377, !1389, !1390, !1391, !1392, !1393, !1394, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1418, !1423, !1605, !1606, !1607, !1608, !1609, !1612, !1615, !1618, !1621, !1625, !1726, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1772, !1773, !1774, !1775, !1776, !1781, !1782, !1783, !1786, !1787, !1790, !1793, !1796, !1799, !1842, !1845, !1846, !1925, !1926, !1929, !1930, !1933, !1934, !1935, !1939, !1940, !1941, !1954, !1955, !1956, !1966, !1971, !1974, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1094, file: !1095, line: 646, baseType: !1098, size: 128)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1099, line: 56, size: 128, elements: !1100)
!1099 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1098, file: !1099, line: 57, baseType: !285, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1098, file: !1099, line: 58, baseType: !148, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1094, file: !1095, line: 649, baseType: !1104, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !270)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1094, file: !1095, line: 657, baseType: !137, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1094, file: !1095, line: 658, baseType: !1107, size: 32, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1108, line: 113, baseType: !1109)
!1108 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1108, line: 111, size: 32, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1109, file: !1108, line: 112, baseType: !704, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !1095, line: 660, baseType: !7, size: 32, offset: 288)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1094, file: !1095, line: 661, baseType: !7, size: 32, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1094, file: !1095, line: 684, baseType: !136, size: 32, offset: 352)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1094, file: !1095, line: 686, baseType: !136, size: 32, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1094, file: !1095, line: 687, baseType: !136, size: 32, offset: 416)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1094, file: !1095, line: 688, baseType: !136, size: 32, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1094, file: !1095, line: 689, baseType: !7, size: 32, offset: 480)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1094, file: !1095, line: 691, baseType: !1120, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1095, line: 691, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1094, file: !1095, line: 692, baseType: !1124, size: 832, offset: 576)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1095, line: 451, size: 832, elements: !1125)
!1125 = !{!1126, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1124, file: !1095, line: 453, baseType: !1127, size: 128)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1095, line: 325, size: 128, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1127, file: !1095, line: 326, baseType: !285, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1127, file: !1095, line: 327, baseType: !148, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1124, file: !1095, line: 454, baseType: !717, size: 192, align: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1124, file: !1095, line: 455, baseType: !181, size: 128, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1124, file: !1095, line: 456, baseType: !7, size: 32, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1124, file: !1095, line: 458, baseType: !378, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1124, file: !1095, line: 459, baseType: !378, size: 64, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1124, file: !1095, line: 460, baseType: !378, size: 64, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1124, file: !1095, line: 461, baseType: !378, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1124, file: !1095, line: 463, baseType: !378, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1124, file: !1095, line: 465, baseType: !1140, offset: 832)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1095, line: 415, elements: !208)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1094, file: !1095, line: 693, baseType: !1142, size: 384, offset: 1408)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1095, line: 489, size: 384, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1142, file: !1095, line: 490, baseType: !181, size: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1142, file: !1095, line: 491, baseType: !285, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1142, file: !1095, line: 492, baseType: !285, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1142, file: !1095, line: 493, baseType: !7, size: 32, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1142, file: !1095, line: 494, baseType: !277, size: 16, offset: 288)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1142, file: !1095, line: 495, baseType: !277, size: 16, offset: 304)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1142, file: !1095, line: 497, baseType: !1151, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1094, file: !1095, line: 697, baseType: !1153, size: 1792, offset: 1792)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1095, line: 507, size: 1792, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1234, !1235}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1153, file: !1095, line: 508, baseType: !717, size: 192, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1153, file: !1095, line: 515, baseType: !378, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1153, file: !1095, line: 516, baseType: !378, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1153, file: !1095, line: 517, baseType: !378, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1153, file: !1095, line: 518, baseType: !378, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1153, file: !1095, line: 519, baseType: !378, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1153, file: !1095, line: 526, baseType: !734, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1153, file: !1095, line: 527, baseType: !378, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1095, line: 528, baseType: !7, size: 32, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1153, file: !1095, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1153, file: !1095, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1153, file: !1095, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1153, file: !1095, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1153, file: !1095, line: 563, baseType: !1169, size: 512, offset: 704)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1170)
!1170 = !{!1171, !1179, !1180, !1185, !1228, !1231, !1232, !1233}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1169, file: !21, line: 119, baseType: !1172, size: 256)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1173, line: 9, size: 256, elements: !1174)
!1173 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1172, file: !1173, line: 10, baseType: !717, size: 192, align: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1172, file: !1173, line: 11, baseType: !1177, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1178, line: 29, baseType: !734)
!1178 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1169, file: !21, line: 120, baseType: !1177, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1169, file: !21, line: 121, baseType: !1181, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!20, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1169, file: !21, line: 122, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1188)
!1188 = !{!1189, !1209, !1210, !1213, !1218, !1219, !1223, !1227}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1187, file: !21, line: 160, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !21, line: 215, baseType: !737)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1191, file: !21, line: 216, baseType: !7, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1191, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1191, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1191, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1191, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1191, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1191, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1191, file: !21, line: 233, baseType: !1177, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1191, file: !21, line: 234, baseType: !1184, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1191, file: !21, line: 235, baseType: !1177, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1191, file: !21, line: 236, baseType: !1184, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1191, file: !21, line: 237, baseType: !1206, size: 4096, offset: 512)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 4096, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 8)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1187, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1187, file: !21, line: 162, baseType: !1211, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 27, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !268, line: 96, baseType: !136)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1187, file: !21, line: 163, baseType: !1214, size: 32, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !349, line: 276, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !349, line: 276, size: 32, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1215, file: !349, line: 276, baseType: !353, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1187, file: !21, line: 164, baseType: !1184, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1187, file: !21, line: 165, baseType: !1220, size: 128, offset: 256)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1173, line: 14, size: 128, elements: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1220, file: !1173, line: 15, baseType: !709, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1187, file: !21, line: 166, baseType: !1224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!1177}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1187, file: !21, line: 167, baseType: !1177, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1169, file: !21, line: 123, baseType: !1229, size: 8, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !149, line: 17, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !151, line: 21, baseType: !384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1169, file: !21, line: 124, baseType: !1229, size: 8, offset: 456)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1169, file: !21, line: 125, baseType: !1229, size: 8, offset: 464)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1169, file: !21, line: 126, baseType: !1229, size: 8, offset: 472)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1153, file: !1095, line: 572, baseType: !1169, size: 512, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1153, file: !1095, line: 580, baseType: !1236, size: 64, offset: 1728)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1094, file: !1095, line: 721, baseType: !7, size: 32, offset: 3584)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1094, file: !1095, line: 722, baseType: !136, size: 32, offset: 3616)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1094, file: !1095, line: 723, baseType: !1240, size: 64, offset: 3648)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1243, line: 17, baseType: !1244)
!1243 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1243, line: 17, size: 64, elements: !1245)
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1244, file: !1243, line: 17, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 1)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1094, file: !1095, line: 724, baseType: !1242, size: 64, offset: 3712)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1094, file: !1095, line: 749, baseType: !1252, offset: 3776)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1095, line: 290, elements: !208)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1094, file: !1095, line: 751, baseType: !181, size: 128, offset: 3776)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1094, file: !1095, line: 757, baseType: !931, size: 64, offset: 3904)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1094, file: !1095, line: 758, baseType: !931, size: 64, offset: 3968)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1094, file: !1095, line: 761, baseType: !1257, size: 320, offset: 4032)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1028, line: 34, size: 320, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1257, file: !1028, line: 35, baseType: !378, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1257, file: !1028, line: 36, baseType: !1261, size: 256, offset: 64)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 256, elements: !1032)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1094, file: !1095, line: 766, baseType: !136, size: 32, offset: 4352)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1094, file: !1095, line: 767, baseType: !136, size: 32, offset: 4384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1094, file: !1095, line: 768, baseType: !136, size: 32, offset: 4416)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1094, file: !1095, line: 770, baseType: !136, size: 32, offset: 4448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1094, file: !1095, line: 772, baseType: !285, size: 64, offset: 4480)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1094, file: !1095, line: 775, baseType: !7, size: 32, offset: 4544)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1094, file: !1095, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1094, file: !1095, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1094, file: !1095, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1094, file: !1095, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1094, file: !1095, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1094, file: !1095, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1094, file: !1095, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1094, file: !1095, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1094, file: !1095, line: 831, baseType: !285, size: 64, offset: 4672)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1094, file: !1095, line: 833, baseType: !1278, size: 384, offset: 4736)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1279)
!1279 = !{!1280, !1285}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1278, file: !26, line: 26, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!270, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !26, line: 27, baseType: !1286, size: 320, offset: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1278, file: !26, line: 27, size: 320, elements: !1287)
!1287 = !{!1288, !1298, !1325}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1286, file: !26, line: 36, baseType: !1289, size: 320)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !26, line: 29, size: 320, elements: !1290)
!1290 = !{!1291, !1293, !1294, !1295, !1296, !1297}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1289, file: !26, line: 30, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1289, file: !26, line: 31, baseType: !148, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !26, line: 32, baseType: !148, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1289, file: !26, line: 33, baseType: !148, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1289, file: !26, line: 34, baseType: !378, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1289, file: !26, line: 35, baseType: !1292, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1286, file: !26, line: 46, baseType: !1299, size: 192)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !26, line: 38, size: 192, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1324}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1299, file: !26, line: 39, baseType: !1211, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1299, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !26, line: 41, baseType: !1304, size: 64, offset: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !26, line: 41, size: 64, elements: !1305)
!1305 = !{!1306, !1314}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1304, file: !26, line: 42, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1309, line: 7, size: 128, elements: !1310)
!1309 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1308, file: !1309, line: 8, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !268, line: 93, baseType: !490)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1308, file: !1309, line: 9, baseType: !490, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1304, file: !26, line: 43, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1317, line: 7, size: 64, elements: !1318)
!1317 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1323}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1316, file: !1317, line: 8, baseType: !1320, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1317, line: 5, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !149, line: 20, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !151, line: 26, baseType: !136)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1316, file: !1317, line: 9, baseType: !1321, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1299, file: !26, line: 45, baseType: !378, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1286, file: !26, line: 54, baseType: !1326, size: 256)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !26, line: 48, size: 256, elements: !1327)
!1327 = !{!1328, !1331, !1332, !1333, !1334}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1326, file: !26, line: 49, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1326, file: !26, line: 50, baseType: !136, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1326, file: !26, line: 51, baseType: !136, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1326, file: !26, line: 52, baseType: !285, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1326, file: !26, line: 53, baseType: !285, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1094, file: !1095, line: 835, baseType: !1336, size: 32, offset: 5120)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 22, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !268, line: 28, baseType: !136)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1094, file: !1095, line: 836, baseType: !1336, size: 32, offset: 5152)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1094, file: !1095, line: 840, baseType: !285, size: 64, offset: 5184)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1094, file: !1095, line: 849, baseType: !1093, size: 64, offset: 5248)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1094, file: !1095, line: 852, baseType: !1093, size: 64, offset: 5312)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1094, file: !1095, line: 857, baseType: !181, size: 128, offset: 5376)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1094, file: !1095, line: 858, baseType: !181, size: 128, offset: 5504)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1094, file: !1095, line: 859, baseType: !1093, size: 64, offset: 5632)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1094, file: !1095, line: 867, baseType: !181, size: 128, offset: 5696)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1094, file: !1095, line: 868, baseType: !181, size: 128, offset: 5824)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1094, file: !1095, line: 871, baseType: !1348, size: 64, offset: 5952)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1356, !1357, !1364, !1365}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1349, file: !47, line: 61, baseType: !1107, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1349, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1349, file: !47, line: 63, baseType: !194, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1349, file: !47, line: 65, baseType: !1355, size: 256, offset: 64)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 256, elements: !1032)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1349, file: !47, line: 66, baseType: !592, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1349, file: !47, line: 68, baseType: !1358, size: 128, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1359, line: 40, baseType: !1360)
!1359 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1359, line: 36, size: 128, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !1359, line: 37, baseType: !194)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1360, file: !1359, line: 38, baseType: !181, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1349, file: !47, line: 69, baseType: !326, size: 128, align: 64, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1349, file: !47, line: 70, baseType: !1366, size: 128, offset: 640)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 128, elements: !1248)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1367, file: !47, line: 55, baseType: !136, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1367, file: !47, line: 56, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1094, file: !1095, line: 872, baseType: !1374, size: 512, offset: 6016)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !1032)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1094, file: !1095, line: 873, baseType: !181, size: 128, offset: 6528)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1094, file: !1095, line: 874, baseType: !181, size: 128, offset: 6656)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1094, file: !1095, line: 876, baseType: !1378, size: 64, offset: 6784)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1380, line: 26, size: 192, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1379, file: !1380, line: 27, baseType: !7, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1379, file: !1380, line: 28, baseType: !1384, size: 128, offset: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1385, line: 43, size: 128, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1384, file: !1385, line: 44, baseType: !737)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1384, file: !1385, line: 45, baseType: !181, size: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1094, file: !1095, line: 879, baseType: !662, size: 64, offset: 6848)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1094, file: !1095, line: 882, baseType: !662, size: 64, offset: 6912)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1094, file: !1095, line: 884, baseType: !378, size: 64, offset: 6976)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1094, file: !1095, line: 885, baseType: !378, size: 64, offset: 7040)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1094, file: !1095, line: 890, baseType: !378, size: 64, offset: 7104)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1094, file: !1095, line: 891, baseType: !1395, size: 128, offset: 7168)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1095, line: 242, size: 128, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1395, file: !1095, line: 244, baseType: !378, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1395, file: !1095, line: 245, baseType: !378, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1395, file: !1095, line: 246, baseType: !737, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1094, file: !1095, line: 900, baseType: !285, size: 64, offset: 7296)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1094, file: !1095, line: 901, baseType: !285, size: 64, offset: 7360)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1094, file: !1095, line: 904, baseType: !378, size: 64, offset: 7424)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1094, file: !1095, line: 907, baseType: !378, size: 64, offset: 7488)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1094, file: !1095, line: 910, baseType: !285, size: 64, offset: 7552)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1094, file: !1095, line: 911, baseType: !285, size: 64, offset: 7616)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1094, file: !1095, line: 914, baseType: !1407, size: 640, offset: 7680)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1408, line: 123, size: 640, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1416, !1417}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1407, file: !1408, line: 124, baseType: !1411, size: 576)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 576, elements: !236)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1408, line: 108, size: 192, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1412, file: !1408, line: 109, baseType: !378, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1412, file: !1408, line: 110, baseType: !1220, size: 128, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1407, file: !1408, line: 125, baseType: !7, size: 32, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1407, file: !1408, line: 126, baseType: !7, size: 32, offset: 608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1094, file: !1095, line: 917, baseType: !1419, size: 192, offset: 8320)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1408, line: 134, size: 192, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1419, file: !1408, line: 135, baseType: !326, size: 128, align: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1419, file: !1408, line: 136, baseType: !7, size: 32, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1094, file: !1095, line: 923, baseType: !1424, size: 64, offset: 8512)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1427, line: 111, size: 1280, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1446, !1447, !1448, !1449, !1450, !1451, !1558, !1559, !1560, !1561, !1587, !1590, !1600}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1426, file: !1427, line: 112, baseType: !704, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1426, file: !1427, line: 120, baseType: !392, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1426, file: !1427, line: 121, baseType: !400, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1426, file: !1427, line: 122, baseType: !392, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1426, file: !1427, line: 123, baseType: !400, size: 32, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1426, file: !1427, line: 124, baseType: !392, size: 32, offset: 160)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1426, file: !1427, line: 125, baseType: !400, size: 32, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1426, file: !1427, line: 126, baseType: !392, size: 32, offset: 224)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1426, file: !1427, line: 127, baseType: !400, size: 32, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1426, file: !1427, line: 128, baseType: !7, size: 32, offset: 288)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1426, file: !1427, line: 129, baseType: !1440, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1441, line: 26, baseType: !1442)
!1441 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1441, line: 24, size: 64, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1442, file: !1441, line: 25, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !162)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1426, file: !1427, line: 130, baseType: !1440, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1426, file: !1427, line: 131, baseType: !1440, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1426, file: !1427, line: 132, baseType: !1440, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1426, file: !1427, line: 133, baseType: !1440, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1426, file: !1427, line: 135, baseType: !384, size: 8, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1426, file: !1427, line: 137, baseType: !1452, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1454, line: 189, size: 1664, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457, !1460, !1465, !1466, !1469, !1470, !1475, !1476, !1477, !1478, !1480, !1481, !1482, !1483, !1484, !1522, !1543}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1453, file: !1454, line: 190, baseType: !1107, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1453, file: !1454, line: 191, baseType: !1458, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1454, line: 28, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 98, baseType: !1321)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 192, baseType: !1461, size: 192, offset: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 192, size: 192, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1461, file: !1454, line: 193, baseType: !181, size: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1461, file: !1454, line: 194, baseType: !717, size: 192, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1453, file: !1454, line: 199, baseType: !724, size: 256, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1453, file: !1454, line: 200, baseType: !1467, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1454, line: 200, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1453, file: !1454, line: 201, baseType: !137, size: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 202, baseType: !1471, size: 64, offset: 640)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 202, size: 64, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1471, file: !1454, line: 203, baseType: !496, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1471, file: !1454, line: 204, baseType: !496, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1453, file: !1454, line: 206, baseType: !496, size: 64, offset: 704)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1453, file: !1454, line: 207, baseType: !392, size: 32, offset: 768)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1453, file: !1454, line: 208, baseType: !400, size: 32, offset: 800)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1453, file: !1454, line: 209, baseType: !1479, size: 32, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1454, line: 31, baseType: !516)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1453, file: !1454, line: 210, baseType: !277, size: 16, offset: 864)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1453, file: !1454, line: 211, baseType: !277, size: 16, offset: 880)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1453, file: !1454, line: 215, baseType: !1082, size: 16, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1453, file: !1454, line: 222, baseType: !285, size: 64, offset: 960)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 239, baseType: !1485, size: 320, offset: 1024)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 239, size: 320, elements: !1486)
!1486 = !{!1487, !1514}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1485, file: !1454, line: 240, baseType: !1488, size: 320)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1454, line: 108, size: 320, elements: !1489)
!1489 = !{!1490, !1491, !1503, !1506, !1513}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1488, file: !1454, line: 110, baseType: !285, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1488, file: !1454, line: 111, baseType: !1492, size: 64, offset: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1488, file: !1454, line: 111, size: 64, elements: !1493)
!1493 = !{!1494, !1502}
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1492, file: !1454, line: 112, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1492, file: !1454, line: 112, size: 64, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1495, file: !1454, line: 114, baseType: !816, size: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1495, file: !1454, line: 115, baseType: !1499, size: 48, offset: 16)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 48, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 6)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1492, file: !1454, line: 121, baseType: !285, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1488, file: !1454, line: 123, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1454, line: 96, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1488, file: !1454, line: 124, baseType: !1507, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1454, line: 102, size: 192, elements: !1509)
!1509 = !{!1510, !1511, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1508, file: !1454, line: 103, baseType: !326, size: 128, align: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1508, file: !1454, line: 104, baseType: !1107, size: 32, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1508, file: !1454, line: 105, baseType: !447, size: 8, offset: 160)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1488, file: !1454, line: 125, baseType: !178, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1454, line: 241, baseType: !1515, size: 320)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1454, line: 241, size: 320, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1515, file: !1454, line: 242, baseType: !285, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1515, file: !1454, line: 243, baseType: !285, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1515, file: !1454, line: 244, baseType: !1504, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1515, file: !1454, line: 245, baseType: !1507, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1515, file: !1454, line: 246, baseType: !235, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 254, baseType: !1523, size: 256, offset: 1344)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 254, size: 256, elements: !1524)
!1524 = !{!1525, !1531}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1523, file: !1454, line: 255, baseType: !1526, size: 256)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1454, line: 128, size: 256, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1526, file: !1454, line: 129, baseType: !137, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1526, file: !1454, line: 130, baseType: !1530, size: 256)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !1032)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1454, line: 256, baseType: !1532, size: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1523, file: !1454, line: 256, size: 256, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1532, file: !1454, line: 258, baseType: !181, size: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1532, file: !1454, line: 259, baseType: !1536, size: 128, offset: 128)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1537, line: 22, size: 128, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1542}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1536, file: !1537, line: 23, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1537, line: 23, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1536, file: !1537, line: 24, baseType: !285, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1453, file: !1454, line: 274, baseType: !1544, size: 64, offset: 1600)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1454, line: 170, size: 192, elements: !1546)
!1546 = !{!1547, !1556, !1557}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1545, file: !1454, line: 171, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1454, line: 165, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!136, !1452, !1552, !1554, !1452}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1545, file: !1454, line: 172, baseType: !1452, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1545, file: !1454, line: 173, baseType: !1504, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1426, file: !1427, line: 138, baseType: !1452, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1426, file: !1427, line: 139, baseType: !1452, size: 64, offset: 832)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1426, file: !1427, line: 140, baseType: !1452, size: 64, offset: 896)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1426, file: !1427, line: 145, baseType: !1562, size: 64, offset: 960)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1564, line: 13, size: 896, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1563, file: !1564, line: 14, baseType: !1107, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1563, file: !1564, line: 15, baseType: !704, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1563, file: !1564, line: 16, baseType: !704, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1563, file: !1564, line: 21, baseType: !728, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1563, file: !1564, line: 27, baseType: !285, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1563, file: !1564, line: 28, baseType: !285, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1563, file: !1564, line: 29, baseType: !728, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1563, file: !1564, line: 32, baseType: !596, size: 128, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1563, file: !1564, line: 33, baseType: !392, size: 32, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1563, file: !1564, line: 37, baseType: !728, size: 64, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1563, file: !1564, line: 44, baseType: !1577, size: 256, offset: 640)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1578, line: 15, size: 256, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !1578, line: 16, baseType: !737)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1577, file: !1578, line: 18, baseType: !136, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1577, file: !1578, line: 19, baseType: !136, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1577, file: !1578, line: 20, baseType: !136, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1577, file: !1578, line: 21, baseType: !136, size: 32, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1577, file: !1578, line: 22, baseType: !285, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1577, file: !1578, line: 23, baseType: !285, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1426, file: !1427, line: 146, baseType: !1588, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !680, line: 516, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1426, file: !1427, line: 147, baseType: !1591, size: 64, offset: 1088)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1427, line: 25, size: 64, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1592, file: !1427, line: 26, baseType: !704, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1592, file: !1427, line: 27, baseType: !136, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1592, file: !1427, line: 28, baseType: !1597, offset: 64)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 0)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1426, file: !1427, line: 149, baseType: !1601, size: 128, offset: 1152)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1426, file: !1427, line: 149, size: 128, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1601, file: !1427, line: 150, baseType: !136, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1601, file: !1427, line: 151, baseType: !326, size: 128, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1094, file: !1095, line: 926, baseType: !1424, size: 64, offset: 8576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1094, file: !1095, line: 929, baseType: !1424, size: 64, offset: 8640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1094, file: !1095, line: 933, baseType: !1452, size: 64, offset: 8704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1094, file: !1095, line: 943, baseType: !143, size: 128, offset: 8768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1094, file: !1095, line: 945, baseType: !1610, size: 64, offset: 8896)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1095, line: 49, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1094, file: !1095, line: 956, baseType: !1613, size: 64, offset: 8960)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1095, line: 45, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1094, file: !1095, line: 959, baseType: !1616, size: 64, offset: 9024)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1095, line: 959, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1094, file: !1095, line: 962, baseType: !1619, size: 64, offset: 9088)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1095, line: 66, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1094, file: !1095, line: 966, baseType: !1622, size: 64, offset: 9152)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1624, line: 35, flags: DIFlagFwdDecl)
!1624 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1094, file: !1095, line: 969, baseType: !1626, size: 64, offset: 9216)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1628, line: 82, size: 7296, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631, !1632, !1633, !1634, !1635, !1636, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1665, !1674, !1675, !1677, !1678, !1679, !1682, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1712, !1713, !1720, !1721, !1722, !1723, !1724, !1725}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1627, file: !1628, line: 83, baseType: !1107, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1627, file: !1628, line: 84, baseType: !704, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1627, file: !1628, line: 85, baseType: !136, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1627, file: !1628, line: 86, baseType: !181, size: 128, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1627, file: !1628, line: 88, baseType: !1358, size: 128, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1627, file: !1628, line: 91, baseType: !1093, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1627, file: !1628, line: 94, baseType: !1637, size: 192, offset: 448)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1638, line: 30, size: 192, elements: !1639)
!1638 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1637, file: !1638, line: 31, baseType: !181, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1637, file: !1638, line: 32, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1643, line: 25, baseType: !1644)
!1643 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1643, line: 23, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1644, file: !1643, line: 24, baseType: !1247, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1627, file: !1628, line: 97, baseType: !592, size: 64, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1627, file: !1628, line: 100, baseType: !136, size: 32, offset: 704)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1627, file: !1628, line: 106, baseType: !136, size: 32, offset: 736)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1627, file: !1628, line: 107, baseType: !1093, size: 64, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1627, file: !1628, line: 110, baseType: !136, size: 32, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1627, file: !1628, line: 111, baseType: !7, size: 32, offset: 864)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1627, file: !1628, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1627, file: !1628, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1627, file: !1628, line: 128, baseType: !136, size: 32, offset: 928)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1627, file: !1628, line: 129, baseType: !181, size: 128, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1627, file: !1628, line: 132, baseType: !1169, size: 512, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1627, file: !1628, line: 133, baseType: !1177, size: 64, offset: 1600)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1627, file: !1628, line: 140, baseType: !1660, size: 256, offset: 1664)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1661, size: 256, elements: !162)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1628, line: 38, size: 128, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1661, file: !1628, line: 39, baseType: !378, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1661, file: !1628, line: 40, baseType: !378, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1627, file: !1628, line: 146, baseType: !1666, size: 192, offset: 1920)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1628, line: 66, size: 192, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1666, file: !1628, line: 67, baseType: !1669, size: 192)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1628, line: 47, size: 192, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1669, file: !1628, line: 48, baseType: !730, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1669, file: !1628, line: 49, baseType: !730, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1669, file: !1628, line: 50, baseType: !730, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1627, file: !1628, line: 150, baseType: !1407, size: 640, offset: 2112)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1627, file: !1628, line: 153, baseType: !1676, size: 256, offset: 2752)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 256, elements: !1032)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1627, file: !1628, line: 159, baseType: !1348, size: 64, offset: 3008)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1627, file: !1628, line: 162, baseType: !136, size: 32, offset: 3072)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1627, file: !1628, line: 164, baseType: !1680, size: 64, offset: 3136)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1628, line: 164, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1627, file: !1628, line: 175, baseType: !1683, size: 32, offset: 3200)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !349, line: 805, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 798, size: 32, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1684, file: !349, line: 803, baseType: !348, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !349, line: 804, baseType: !194, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3264)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3328)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3392)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1627, file: !1628, line: 176, baseType: !378, size: 64, offset: 3456)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1627, file: !1628, line: 177, baseType: !378, size: 64, offset: 3520)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1627, file: !1628, line: 178, baseType: !378, size: 64, offset: 3584)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1627, file: !1628, line: 179, baseType: !1395, size: 128, offset: 3648)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3776)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3840)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3904)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1627, file: !1628, line: 180, baseType: !285, size: 64, offset: 3968)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4032)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4096)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4160)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1627, file: !1628, line: 181, baseType: !285, size: 64, offset: 4224)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4288)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4352)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4416)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1627, file: !1628, line: 182, baseType: !285, size: 64, offset: 4480)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1627, file: !1628, line: 183, baseType: !285, size: 64, offset: 4544)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1627, file: !1628, line: 183, baseType: !285, size: 64, offset: 4608)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1627, file: !1628, line: 184, baseType: !1710, offset: 4672)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1711, line: 12, elements: !208)
!1711 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1627, file: !1628, line: 192, baseType: !380, size: 64, offset: 4672)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1627, file: !1628, line: 203, baseType: !1714, size: 2048, offset: 4736)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1715, size: 2048, elements: !145)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1716, line: 43, size: 128, elements: !1717)
!1716 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1715, file: !1716, line: 44, baseType: !284, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1715, file: !1716, line: 45, baseType: !284, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1627, file: !1628, line: 220, baseType: !447, size: 8, offset: 6784)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1627, file: !1628, line: 221, baseType: !1082, size: 16, offset: 6800)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1627, file: !1628, line: 222, baseType: !1082, size: 16, offset: 6816)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1627, file: !1628, line: 224, baseType: !931, size: 64, offset: 6848)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1627, file: !1628, line: 227, baseType: !1050, size: 192, offset: 6912)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1627, file: !1628, line: 233, baseType: !1050, size: 192, offset: 7104)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1094, file: !1095, line: 970, baseType: !1727, size: 64, offset: 9280)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1628, line: 20, size: 16576, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1728, file: !1628, line: 21, baseType: !194)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1728, file: !1628, line: 22, baseType: !1107, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1728, file: !1628, line: 23, baseType: !1358, size: 128, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1728, file: !1628, line: 24, baseType: !1734, size: 16384, offset: 192)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1735, size: 16384, elements: !240)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1638, line: 49, size: 256, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1735, file: !1638, line: 50, baseType: !1738, size: 256)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1638, line: 35, size: 256, elements: !1739)
!1739 = !{!1740, !1747, !1748, !1754}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1738, file: !1638, line: 37, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1742, line: 19, baseType: !1743)
!1742 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1742, line: 18, baseType: !1745)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !136}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1738, file: !1638, line: 38, baseType: !285, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1738, file: !1638, line: 44, baseType: !1749, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1742, line: 22, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1742, line: 21, baseType: !1752)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1738, file: !1638, line: 46, baseType: !1642, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1094, file: !1095, line: 971, baseType: !1642, size: 64, offset: 9344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1094, file: !1095, line: 972, baseType: !1642, size: 64, offset: 9408)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1094, file: !1095, line: 974, baseType: !1642, size: 64, offset: 9472)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1094, file: !1095, line: 975, baseType: !1637, size: 192, offset: 9536)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1094, file: !1095, line: 976, baseType: !285, size: 64, offset: 9728)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1094, file: !1095, line: 977, baseType: !282, size: 64, offset: 9792)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1094, file: !1095, line: 978, baseType: !7, size: 32, offset: 9856)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1094, file: !1095, line: 980, baseType: !329, size: 64, offset: 9920)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1094, file: !1095, line: 989, baseType: !1764, size: 128, offset: 9984)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1765, line: 35, size: 128, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1764, file: !1765, line: 36, baseType: !136, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1764, file: !1765, line: 37, baseType: !704, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1764, file: !1765, line: 38, baseType: !1770, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1765, line: 23, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1094, file: !1095, line: 992, baseType: !378, size: 64, offset: 10112)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1094, file: !1095, line: 993, baseType: !378, size: 64, offset: 10176)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1094, file: !1095, line: 996, baseType: !194, offset: 10240)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1094, file: !1095, line: 999, baseType: !737, offset: 10240)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1094, file: !1095, line: 1001, baseType: !1777, size: 64, offset: 10240)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1095, line: 636, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1777, file: !1095, line: 637, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1094, file: !1095, line: 1005, baseType: !709, size: 128, offset: 10304)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1094, file: !1095, line: 1007, baseType: !1093, size: 64, offset: 10432)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1094, file: !1095, line: 1009, baseType: !1784, size: 64, offset: 10496)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1095, line: 1009, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1094, file: !1095, line: 1043, baseType: !137, size: 64, offset: 10560)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1094, file: !1095, line: 1046, baseType: !1788, size: 64, offset: 10624)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1095, line: 41, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1094, file: !1095, line: 1050, baseType: !1791, size: 64, offset: 10688)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1095, line: 42, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1094, file: !1095, line: 1054, baseType: !1794, size: 64, offset: 10752)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1095, line: 55, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1094, file: !1095, line: 1056, baseType: !1797, size: 64, offset: 10816)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1095, line: 40, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1094, file: !1095, line: 1058, baseType: !1800, size: 64, offset: 10880)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1802, line: 99, size: 704, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810, !1829, !1830}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1801, file: !1802, line: 100, baseType: !728, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1801, file: !1802, line: 101, baseType: !704, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1801, file: !1802, line: 102, baseType: !704, size: 32, offset: 96)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1801, file: !1802, line: 105, baseType: !194, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1801, file: !1802, line: 107, baseType: !277, size: 16, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1801, file: !1802, line: 109, baseType: !696, size: 128, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1801, file: !1802, line: 110, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1802, line: 73, size: 448, elements: !1813)
!1813 = !{!1814, !1817, !1818, !1823, !1828}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1812, file: !1802, line: 74, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1802, line: 74, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1812, file: !1802, line: 75, baseType: !1800, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1802, line: 83, baseType: !1819, size: 128, offset: 128)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !1802, line: 83, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1819, file: !1802, line: 84, baseType: !181, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1819, file: !1802, line: 85, baseType: !892, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1802, line: 87, baseType: !1824, size: 128, offset: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !1802, line: 87, size: 128, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1824, file: !1802, line: 88, baseType: !596, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1824, file: !1802, line: 89, baseType: !326, size: 128, align: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1802, line: 92, baseType: !7, size: 32, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1801, file: !1802, line: 111, baseType: !592, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1801, file: !1802, line: 113, baseType: !1831, size: 256, offset: 448)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1832, line: 102, size: 256, elements: !1833)
!1832 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1833 = !{!1834, !1835, !1836}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1831, file: !1832, line: 103, baseType: !728, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1831, file: !1832, line: 104, baseType: !181, size: 128, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1831, file: !1832, line: 105, baseType: !1837, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1832, line: 21, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1094, file: !1095, line: 1061, baseType: !1843, size: 64, offset: 10944)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1095, line: 43, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1094, file: !1095, line: 1064, baseType: !285, size: 64, offset: 11008)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1094, file: !1095, line: 1065, baseType: !1847, size: 64, offset: 11072)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1638, line: 14, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1638, line: 12, size: 384, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1849, file: !1638, line: 13, baseType: !1852, size: 384)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1849, file: !1638, line: 13, size: 384, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1852, file: !1638, line: 13, baseType: !136, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1852, file: !1638, line: 13, baseType: !136, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1852, file: !1638, line: 13, baseType: !136, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1852, file: !1638, line: 13, baseType: !1858, size: 256, offset: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1859, line: 32, size: 256, elements: !1860)
!1859 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1866, !1879, !1885, !1894, !1914, !1919}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1858, file: !1859, line: 37, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 34, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1862, file: !1859, line: 35, baseType: !1337, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1862, file: !1859, line: 36, baseType: !398, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1858, file: !1859, line: 45, baseType: !1867, size: 192)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 40, size: 192, elements: !1868)
!1868 = !{!1869, !1871, !1872, !1878}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1867, file: !1859, line: 41, baseType: !1870, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !268, line: 95, baseType: !136)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1867, file: !1859, line: 42, baseType: !136, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1867, file: !1859, line: 43, baseType: !1873, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1859, line: 11, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1859, line: 8, size: 64, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1874, file: !1859, line: 9, baseType: !136, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1874, file: !1859, line: 10, baseType: !137, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1867, file: !1859, line: 44, baseType: !136, size: 32, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1858, file: !1859, line: 52, baseType: !1880, size: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 48, size: 128, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1880, file: !1859, line: 49, baseType: !1337, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1880, file: !1859, line: 50, baseType: !398, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1880, file: !1859, line: 51, baseType: !1873, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1858, file: !1859, line: 61, baseType: !1886, size: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 55, size: 256, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1893}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1886, file: !1859, line: 56, baseType: !1337, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1886, file: !1859, line: 57, baseType: !398, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1886, file: !1859, line: 58, baseType: !136, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1886, file: !1859, line: 59, baseType: !1892, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !268, line: 94, baseType: !269)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1886, file: !1859, line: 60, baseType: !1892, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1858, file: !1859, line: 95, baseType: !1895, size: 256)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 64, size: 256, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1895, file: !1859, line: 65, baseType: !137, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1859, line: 77, baseType: !1899, size: 192, offset: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1895, file: !1859, line: 77, size: 192, elements: !1900)
!1900 = !{!1901, !1902, !1909}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1899, file: !1859, line: 82, baseType: !1082, size: 16)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1899, file: !1859, line: 88, baseType: !1903, size: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !1859, line: 84, size: 192, elements: !1904)
!1904 = !{!1905, !1907, !1908}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1903, file: !1859, line: 85, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !1207)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1903, file: !1859, line: 86, baseType: !137, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1903, file: !1859, line: 87, baseType: !137, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1899, file: !1859, line: 93, baseType: !1910, size: 96)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1899, file: !1859, line: 90, size: 96, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1910, file: !1859, line: 91, baseType: !1906, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1910, file: !1859, line: 92, baseType: !150, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1858, file: !1859, line: 101, baseType: !1915, size: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 98, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1915, file: !1859, line: 99, baseType: !270, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1915, file: !1859, line: 100, baseType: !136, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1858, file: !1859, line: 108, baseType: !1920, size: 128)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1859, line: 104, size: 128, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1920, file: !1859, line: 105, baseType: !137, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1920, file: !1859, line: 106, baseType: !136, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1920, file: !1859, line: 107, baseType: !7, size: 32, offset: 96)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1094, file: !1095, line: 1067, baseType: !1710, offset: 11136)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1094, file: !1095, line: 1099, baseType: !1927, size: 64, offset: 11136)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1095, line: 56, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1094, file: !1095, line: 1103, baseType: !181, size: 128, offset: 11200)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1094, file: !1095, line: 1104, baseType: !1931, size: 64, offset: 11328)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1095, line: 46, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1094, file: !1095, line: 1105, baseType: !1050, size: 192, offset: 11392)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1094, file: !1095, line: 1106, baseType: !7, size: 32, offset: 11584)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1094, file: !1095, line: 1109, baseType: !1936, size: 128, offset: 11648)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 128, elements: !162)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1095, line: 51, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1094, file: !1095, line: 1110, baseType: !1050, size: 192, offset: 11776)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1094, file: !1095, line: 1111, baseType: !181, size: 128, offset: 11968)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1094, file: !1095, line: 1173, baseType: !1942, size: 64, offset: 12096)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1944, line: 62, size: 256, align: 256, elements: !1945)
!1944 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1945 = !{!1946, !1947, !1948, !1953}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1943, file: !1944, line: 75, baseType: !150, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1943, file: !1944, line: 90, baseType: !150, size: 32, offset: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1943, file: !1944, line: 124, baseType: !1949, size: 64, offset: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !1944, line: 109, size: 64, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1949, file: !1944, line: 110, baseType: !379, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1949, file: !1944, line: 112, baseType: !379, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1943, file: !1944, line: 144, baseType: !150, size: 32, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1094, file: !1095, line: 1174, baseType: !148, size: 32, offset: 12160)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1094, file: !1095, line: 1179, baseType: !285, size: 64, offset: 12224)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1094, file: !1095, line: 1182, baseType: !1957, size: 128, offset: 12288)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1028, line: 76, size: 128, elements: !1958)
!1958 = !{!1959, !1964, !1965}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1957, file: !1028, line: 85, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1961, line: 7, size: 64, elements: !1962)
!1961 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1960, file: !1961, line: 12, baseType: !1244, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1957, file: !1028, line: 88, baseType: !447, size: 8, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1957, file: !1028, line: 95, baseType: !447, size: 8, offset: 72)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1095, line: 1184, baseType: !1967, size: 128, offset: 12416)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1095, line: 1184, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1967, file: !1095, line: 1185, baseType: !1107, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1967, file: !1095, line: 1186, baseType: !326, size: 128, align: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1094, file: !1095, line: 1190, baseType: !1972, size: 64, offset: 12544)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1095, line: 53, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1094, file: !1095, line: 1192, baseType: !1975, size: 128, offset: 12608)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1028, line: 64, size: 128, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1975, file: !1028, line: 65, baseType: !678, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1975, file: !1028, line: 67, baseType: !150, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1975, file: !1028, line: 68, baseType: !150, size: 32, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1094, file: !1095, line: 1206, baseType: !136, size: 32, offset: 12736)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1094, file: !1095, line: 1207, baseType: !136, size: 32, offset: 12768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1094, file: !1095, line: 1209, baseType: !285, size: 64, offset: 12800)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1094, file: !1095, line: 1219, baseType: !378, size: 64, offset: 12864)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1094, file: !1095, line: 1220, baseType: !378, size: 64, offset: 12928)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1094, file: !1095, line: 1317, baseType: !136, size: 32, offset: 12992)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1094, file: !1095, line: 1319, baseType: !1093, size: 64, offset: 13056)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1094, file: !1095, line: 1322, baseType: !1988, size: 64, offset: 13120)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1990, line: 9, flags: DIFlagFwdDecl)
!1990 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1094, file: !1095, line: 1326, baseType: !1107, size: 32, offset: 13184)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1094, file: !1095, line: 1342, baseType: !137, size: 64, offset: 13248)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1094, file: !1095, line: 1343, baseType: !379, size: 64, offset: 13312)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1094, file: !1095, line: 1344, baseType: !378, size: 64, offset: 13376)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1094, file: !1095, line: 1345, baseType: !379, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1094, file: !1095, line: 1346, baseType: !379, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1094, file: !1095, line: 1347, baseType: !379, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1094, file: !1095, line: 1348, baseType: !326, size: 128, align: 64, offset: 13504)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1094, file: !1095, line: 1358, baseType: !2000, size: 34816, offset: 13824)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2001, line: 485, size: 34816, elements: !2002)
!2001 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2002 = !{!2003, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2032, !2033, !2034, !2035, !2036, !2037, !2040, !2041, !2042}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2000, file: !2001, line: 487, baseType: !2004, size: 192)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, size: 192, elements: !236)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2006, line: 16, size: 64, elements: !2007)
!2006 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2005, file: !2006, line: 17, baseType: !816, size: 16)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2005, file: !2006, line: 18, baseType: !816, size: 16, offset: 16)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2005, file: !2006, line: 19, baseType: !816, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2005, file: !2006, line: 19, baseType: !816, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2005, file: !2006, line: 19, baseType: !816, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2005, file: !2006, line: 19, baseType: !816, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2005, file: !2006, line: 19, baseType: !816, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2005, file: !2006, line: 20, baseType: !816, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2005, file: !2006, line: 20, baseType: !816, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2005, file: !2006, line: 20, baseType: !816, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2005, file: !2006, line: 20, baseType: !816, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2005, file: !2006, line: 20, baseType: !816, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2005, file: !2006, line: 20, baseType: !816, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2000, file: !2001, line: 491, baseType: !285, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2000, file: !2001, line: 495, baseType: !277, size: 16, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2000, file: !2001, line: 496, baseType: !277, size: 16, offset: 272)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2000, file: !2001, line: 497, baseType: !277, size: 16, offset: 288)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2000, file: !2001, line: 498, baseType: !277, size: 16, offset: 304)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2000, file: !2001, line: 502, baseType: !285, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2000, file: !2001, line: 503, baseType: !285, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2000, file: !2001, line: 514, baseType: !2029, size: 256, offset: 448)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2030, size: 256, elements: !1032)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2001, line: 483, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2000, file: !2001, line: 516, baseType: !285, size: 64, offset: 704)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2000, file: !2001, line: 518, baseType: !285, size: 64, offset: 768)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2000, file: !2001, line: 520, baseType: !285, size: 64, offset: 832)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2000, file: !2001, line: 521, baseType: !285, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2000, file: !2001, line: 522, baseType: !285, size: 64, offset: 960)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2000, file: !2001, line: 528, baseType: !2038, size: 64, offset: 1024)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2001, line: 10, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2000, file: !2001, line: 535, baseType: !285, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2000, file: !2001, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2000, file: !2001, line: 540, baseType: !2043, size: 33280, offset: 1536)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2044, line: 317, size: 33280, elements: !2045)
!2044 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2043, file: !2044, line: 330, baseType: !7, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2043, file: !2044, line: 337, baseType: !285, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2043, file: !2044, line: 348, baseType: !2049, size: 32768, offset: 512)
!2049 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2044, line: 304, size: 32768, elements: !2050)
!2050 = !{!2051, !2066, !2105, !2155, !2168}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2049, file: !2044, line: 305, baseType: !2052, size: 896)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2044, line: 12, size: 896, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2065}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2052, file: !2044, line: 13, baseType: !148, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2052, file: !2044, line: 14, baseType: !148, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2052, file: !2044, line: 15, baseType: !148, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2052, file: !2044, line: 16, baseType: !148, size: 32, offset: 96)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2052, file: !2044, line: 17, baseType: !148, size: 32, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2052, file: !2044, line: 18, baseType: !148, size: 32, offset: 160)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2052, file: !2044, line: 19, baseType: !148, size: 32, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2052, file: !2044, line: 22, baseType: !2062, size: 640, offset: 224)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 640, elements: !2063)
!2063 = !{!2064}
!2064 = !DISubrange(count: 20)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2052, file: !2044, line: 25, baseType: !148, size: 32, offset: 864)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2049, file: !2044, line: 306, baseType: !2067, size: 4096, align: 128)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2044, line: 34, size: 4096, align: 128, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2088, !2089, !2090, !2094, !2096, !2100}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2067, file: !2044, line: 35, baseType: !816, size: 16)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2067, file: !2044, line: 36, baseType: !816, size: 16, offset: 16)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2067, file: !2044, line: 37, baseType: !816, size: 16, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2067, file: !2044, line: 38, baseType: !816, size: 16, offset: 48)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2044, line: 39, baseType: !2074, size: 128, offset: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2044, line: 39, size: 128, elements: !2075)
!2075 = !{!2076, !2081}
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !2044, line: 40, baseType: !2077, size: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !2044, line: 40, size: 128, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2077, file: !2044, line: 41, baseType: !378, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2077, file: !2044, line: 42, baseType: !378, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !2044, line: 44, baseType: !2082, size: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !2044, line: 44, size: 128, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2087}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2082, file: !2044, line: 45, baseType: !148, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2082, file: !2044, line: 46, baseType: !148, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2082, file: !2044, line: 47, baseType: !148, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2082, file: !2044, line: 48, baseType: !148, size: 32, offset: 96)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2067, file: !2044, line: 51, baseType: !148, size: 32, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2067, file: !2044, line: 52, baseType: !148, size: 32, offset: 224)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2067, file: !2044, line: 55, baseType: !2091, size: 1024, offset: 256)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1024, elements: !2092)
!2092 = !{!2093}
!2093 = !DISubrange(count: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2067, file: !2044, line: 58, baseType: !2095, size: 2048, offset: 1280)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2048, elements: !240)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2067, file: !2044, line: 60, baseType: !2097, size: 384, offset: 3328)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, elements: !2098)
!2098 = !{!2099}
!2099 = !DISubrange(count: 12)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2044, line: 62, baseType: !2101, size: 384, offset: 3712)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2044, line: 62, size: 384, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2101, file: !2044, line: 63, baseType: !2097, size: 384)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2101, file: !2044, line: 64, baseType: !2097, size: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2049, file: !2044, line: 307, baseType: !2106, size: 1088)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2044, line: 79, size: 1088, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2154}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2106, file: !2044, line: 80, baseType: !148, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2106, file: !2044, line: 81, baseType: !148, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2106, file: !2044, line: 82, baseType: !148, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2106, file: !2044, line: 83, baseType: !148, size: 32, offset: 96)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2106, file: !2044, line: 84, baseType: !148, size: 32, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2106, file: !2044, line: 85, baseType: !148, size: 32, offset: 160)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2106, file: !2044, line: 86, baseType: !148, size: 32, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2106, file: !2044, line: 88, baseType: !2062, size: 640, offset: 224)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2106, file: !2044, line: 89, baseType: !1229, size: 8, offset: 864)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2106, file: !2044, line: 90, baseType: !1229, size: 8, offset: 872)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2106, file: !2044, line: 91, baseType: !1229, size: 8, offset: 880)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2106, file: !2044, line: 92, baseType: !1229, size: 8, offset: 888)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2106, file: !2044, line: 93, baseType: !1229, size: 8, offset: 896)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2106, file: !2044, line: 94, baseType: !1229, size: 8, offset: 904)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2106, file: !2044, line: 95, baseType: !2123, size: 64, offset: 960)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2125, line: 11, size: 128, elements: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2124, file: !2125, line: 12, baseType: !270, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2124, file: !2125, line: 13, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2131, line: 56, size: 1344, elements: !2132)
!2131 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2130, file: !2131, line: 61, baseType: !285, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2130, file: !2131, line: 62, baseType: !285, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2130, file: !2131, line: 63, baseType: !285, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2130, file: !2131, line: 64, baseType: !285, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2130, file: !2131, line: 65, baseType: !285, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2130, file: !2131, line: 66, baseType: !285, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2130, file: !2131, line: 68, baseType: !285, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2130, file: !2131, line: 69, baseType: !285, size: 64, offset: 448)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2130, file: !2131, line: 70, baseType: !285, size: 64, offset: 512)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2130, file: !2131, line: 71, baseType: !285, size: 64, offset: 576)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2130, file: !2131, line: 72, baseType: !285, size: 64, offset: 640)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2130, file: !2131, line: 73, baseType: !285, size: 64, offset: 704)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2130, file: !2131, line: 74, baseType: !285, size: 64, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2130, file: !2131, line: 75, baseType: !285, size: 64, offset: 832)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2130, file: !2131, line: 76, baseType: !285, size: 64, offset: 896)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2130, file: !2131, line: 81, baseType: !285, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2130, file: !2131, line: 83, baseType: !285, size: 64, offset: 1024)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2130, file: !2131, line: 84, baseType: !285, size: 64, offset: 1088)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2130, file: !2131, line: 85, baseType: !285, size: 64, offset: 1152)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2130, file: !2131, line: 86, baseType: !285, size: 64, offset: 1216)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2130, file: !2131, line: 87, baseType: !285, size: 64, offset: 1280)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2106, file: !2044, line: 96, baseType: !148, size: 32, offset: 1024)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2049, file: !2044, line: 308, baseType: !2156, size: 4608, align: 512)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2044, line: 289, size: 4608, align: 512, elements: !2157)
!2157 = !{!2158, !2159, !2166}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2156, file: !2044, line: 290, baseType: !2067, size: 4096, align: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2156, file: !2044, line: 291, baseType: !2160, size: 512, offset: 4096)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2044, line: 268, size: 512, elements: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2160, file: !2044, line: 269, baseType: !378, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2160, file: !2044, line: 270, baseType: !378, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2160, file: !2044, line: 271, baseType: !2165, size: 384, offset: 128)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !1500)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2156, file: !2044, line: 292, baseType: !2167, offset: 4608)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, elements: !1598)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2049, file: !2044, line: 309, baseType: !2169, size: 32768)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, size: 32768, elements: !2170)
!2170 = !{!2171}
!2171 = !DISubrange(count: 4096)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1090, file: !680, line: 378, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1086, file: !680, line: 384, baseType: !1379, size: 192, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !935, file: !680, line: 500, baseType: !194, offset: 6656)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !935, file: !680, line: 501, baseType: !2177, size: 64, offset: 6656)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !680, line: 387, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !935, file: !680, line: 516, baseType: !1588, size: 64, offset: 6720)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !935, file: !680, line: 519, baseType: !313, size: 64, offset: 6784)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !935, file: !680, line: 521, baseType: !2182, size: 64, offset: 6848)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !680, line: 521, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !935, file: !680, line: 545, baseType: !704, size: 32, offset: 6912)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !935, file: !680, line: 548, baseType: !447, size: 8, offset: 6944)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !935, file: !680, line: 550, baseType: !2187, offset: 6952)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2188, line: 142, elements: !208)
!2188 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !935, file: !680, line: 554, baseType: !1831, size: 256, offset: 6976)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !935, file: !680, line: 557, baseType: !148, size: 32, offset: 7232)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !932, file: !680, line: 565, baseType: !2192, offset: 7296)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: -1)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !928, file: !680, line: 151, baseType: !704, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !921, file: !680, line: 156, baseType: !194, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !680, line: 159, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !680, line: 159, size: 128, elements: !2199)
!2199 = !{!2200, !2203}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2198, file: !680, line: 161, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !680, line: 161, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2198, file: !680, line: 162, baseType: !137, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !684, file: !680, line: 176, baseType: !326, size: 128, align: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !680, line: 179, baseType: !2206, size: 32, offset: 384)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !679, file: !680, line: 179, size: 32, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2206, file: !680, line: 184, baseType: !704, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2206, file: !680, line: 192, baseType: !7, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2206, file: !680, line: 194, baseType: !7, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2206, file: !680, line: 195, baseType: !136, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !679, file: !680, line: 199, baseType: !704, size: 32, offset: 416)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !614, file: !38, line: 1964, baseType: !2214, size: 64, offset: 1344)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!270, !556, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2219, line: 12, size: 256, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !{!2221, !2222, !2223, !2224, !2225}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2218, file: !2219, line: 13, baseType: !134, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2218, file: !2219, line: 16, baseType: !136, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2218, file: !2219, line: 23, baseType: !285, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2218, file: !2219, line: 30, baseType: !285, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2218, file: !2219, line: 33, baseType: !2226, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !680, line: 27, flags: DIFlagFwdDecl)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !614, file: !38, line: 1966, baseType: !2214, size: 64, offset: 1408)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !557, file: !38, line: 1424, baseType: !2230, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2233)
!2233 = !{!2234, !2280, !2284, !2288, !2289, !2290, !2291, !2292, !2297, !2302, !2306}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2232, file: !32, line: 323, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!136, !2238}
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2265, !2266, !2267}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2239, file: !32, line: 295, baseType: !596, size: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2239, file: !32, line: 296, baseType: !181, size: 128, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2239, file: !32, line: 297, baseType: !181, size: 128, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2239, file: !32, line: 298, baseType: !181, size: 128, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2239, file: !32, line: 299, baseType: !1050, size: 192, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2239, file: !32, line: 300, baseType: !194, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2239, file: !32, line: 301, baseType: !704, size: 32, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2239, file: !32, line: 302, baseType: !556, size: 64, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2239, file: !32, line: 303, baseType: !2250, size: 64, offset: 832)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2251)
!2251 = !{!2252, !2264}
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2250, file: !32, line: 69, baseType: !2253, size: 32)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2250, file: !32, line: 69, size: 32, elements: !2254)
!2254 = !{!2255, !2256, !2257}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2253, file: !32, line: 70, baseType: !392, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2253, file: !32, line: 71, baseType: !400, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2253, file: !32, line: 72, baseType: !2258, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2259, line: 24, baseType: !2260)
!2259 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2259, line: 22, size: 32, elements: !2261)
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2260, file: !2259, line: 23, baseType: !2263, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2259, line: 20, baseType: !398)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2250, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2239, file: !32, line: 304, baseType: !488, size: 64, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2239, file: !32, line: 305, baseType: !285, size: 64, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2239, file: !32, line: 306, baseType: !2268, size: 576, offset: 1024)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2269)
!2269 = !{!2270, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2268, file: !32, line: 206, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !490)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2268, file: !32, line: 207, baseType: !2271, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2268, file: !32, line: 208, baseType: !2271, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2268, file: !32, line: 209, baseType: !2271, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2268, file: !32, line: 210, baseType: !2271, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2268, file: !32, line: 211, baseType: !2271, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2268, file: !32, line: 212, baseType: !2271, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2268, file: !32, line: 213, baseType: !496, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2268, file: !32, line: 214, baseType: !496, size: 64, offset: 512)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2232, file: !32, line: 324, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2238, !556, !136}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2232, file: !32, line: 325, baseType: !2285, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !2238}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2232, file: !32, line: 326, baseType: !2235, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2232, file: !32, line: 327, baseType: !2235, size: 64, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2232, file: !32, line: 328, baseType: !2235, size: 64, offset: 320)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2232, file: !32, line: 329, baseType: !642, size: 64, offset: 384)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2232, file: !32, line: 332, baseType: !2293, size: 64, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!2296, !386}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2232, file: !32, line: 333, baseType: !2298, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!136, !386, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2232, file: !32, line: 335, baseType: !2303, size: 64, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!136, !386, !2296}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2232, file: !32, line: 337, baseType: !2307, size: 64, offset: 640)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!136, !556, !2310}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !557, file: !38, line: 1425, baseType: !2312, size: 64, offset: 512)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2315)
!2315 = !{!2316, !2320, !2321, !2325, !2326, !2327, !2342, !2365, !2369, !2370, !2393}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2314, file: !32, line: 429, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!136, !556, !136, !136, !506}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2314, file: !32, line: 430, baseType: !642, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2314, file: !32, line: 431, baseType: !2322, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!136, !556, !7}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2314, file: !32, line: 432, baseType: !2322, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2314, file: !32, line: 433, baseType: !642, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2314, file: !32, line: 434, baseType: !2328, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!136, !556, !136, !2331}
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2333)
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2332, file: !32, line: 416, baseType: !136, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2332, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2332, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2332, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2332, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2332, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2332, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2332, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2314, file: !32, line: 435, baseType: !2343, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!136, !556, !2250, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2347, file: !32, line: 344, baseType: !136, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2347, file: !32, line: 345, baseType: !378, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2347, file: !32, line: 346, baseType: !378, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2347, file: !32, line: 347, baseType: !378, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2347, file: !32, line: 348, baseType: !378, size: 64, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2347, file: !32, line: 349, baseType: !378, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2347, file: !32, line: 350, baseType: !378, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2347, file: !32, line: 351, baseType: !734, size: 64, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2347, file: !32, line: 353, baseType: !734, size: 64, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2347, file: !32, line: 354, baseType: !136, size: 32, offset: 576)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2347, file: !32, line: 355, baseType: !136, size: 32, offset: 608)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2347, file: !32, line: 356, baseType: !378, size: 64, offset: 640)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2347, file: !32, line: 357, baseType: !378, size: 64, offset: 704)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2347, file: !32, line: 358, baseType: !378, size: 64, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2347, file: !32, line: 359, baseType: !734, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2347, file: !32, line: 360, baseType: !136, size: 32, offset: 896)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2314, file: !32, line: 436, baseType: !2366, size: 64, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!136, !556, !2310, !2346}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2314, file: !32, line: 438, baseType: !2343, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2314, file: !32, line: 439, baseType: !2371, size: 64, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!136, !556, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2376)
!2376 = !{!2377, !2378}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2375, file: !32, line: 410, baseType: !7, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2375, file: !32, line: 411, baseType: !2379, size: 1344, offset: 64)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2380, size: 1344, elements: !236)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2392}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2380, file: !32, line: 396, baseType: !7, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2380, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2380, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2380, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2380, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2380, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2380, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2380, file: !32, line: 404, baseType: !380, size: 64, offset: 256)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2380, file: !32, line: 405, baseType: !2391, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 126, baseType: !378)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2380, file: !32, line: 406, baseType: !2391, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2314, file: !32, line: 440, baseType: !2322, size: 64, offset: 640)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !557, file: !38, line: 1426, baseType: !2395, size: 64, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !557, file: !38, line: 1427, baseType: !285, size: 64, offset: 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !557, file: !38, line: 1428, baseType: !285, size: 64, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !557, file: !38, line: 1429, baseType: !285, size: 64, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !557, file: !38, line: 1430, baseType: !343, size: 64, offset: 832)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !557, file: !38, line: 1431, baseType: !724, size: 256, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !557, file: !38, line: 1432, baseType: !136, size: 32, offset: 1152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !557, file: !38, line: 1433, baseType: !704, size: 32, offset: 1184)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !557, file: !38, line: 1437, baseType: !2406, size: 64, offset: 1216)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !557, file: !38, line: 1449, baseType: !2411, size: 64, offset: 1280)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !359, line: 34, size: 64, elements: !2412)
!2412 = !{!2413}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2411, file: !359, line: 35, baseType: !362, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !557, file: !38, line: 1450, baseType: !181, size: 128, offset: 1344)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !557, file: !38, line: 1451, baseType: !2416, size: 64, offset: 1472)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !557, file: !38, line: 1452, baseType: !1797, size: 64, offset: 1536)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !557, file: !38, line: 1453, baseType: !2420, size: 64, offset: 1600)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !557, file: !38, line: 1454, baseType: !596, size: 128, offset: 1664)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !557, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !557, file: !38, line: 1456, baseType: !2425, size: 2432, offset: 1856)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2431, !2463}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2425, file: !32, line: 519, baseType: !7, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2425, file: !32, line: 520, baseType: !724, size: 256, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2425, file: !32, line: 521, baseType: !2430, size: 192, offset: 320)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 192, elements: !236)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2425, file: !32, line: 522, baseType: !2432, size: 1728, offset: 512)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, size: 1728, elements: !236)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2434)
!2434 = !{!2435, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2433, file: !32, line: 223, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2438)
!2438 = !{!2439, !2440, !2453, !2454}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2437, file: !32, line: 444, baseType: !136, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2437, file: !32, line: 445, baseType: !2441, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2443, file: !32, line: 311, baseType: !642, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2443, file: !32, line: 312, baseType: !642, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2443, file: !32, line: 313, baseType: !642, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2443, file: !32, line: 314, baseType: !642, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2443, file: !32, line: 315, baseType: !2235, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2443, file: !32, line: 316, baseType: !2235, size: 64, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2443, file: !32, line: 317, baseType: !2235, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2443, file: !32, line: 318, baseType: !2307, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2437, file: !32, line: 446, baseType: !131, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2437, file: !32, line: 447, baseType: !2436, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2433, file: !32, line: 224, baseType: !136, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2433, file: !32, line: 226, baseType: !181, size: 128, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2433, file: !32, line: 227, baseType: !285, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2433, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2433, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2433, file: !32, line: 230, baseType: !2271, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2433, file: !32, line: 231, baseType: !2271, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2433, file: !32, line: 232, baseType: !137, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2425, file: !32, line: 523, baseType: !2464, size: 192, offset: 2240)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, size: 192, elements: !236)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !557, file: !38, line: 1458, baseType: !2466, size: 2112, offset: 4288)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2466, file: !38, line: 1411, baseType: !136, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2466, file: !38, line: 1412, baseType: !1358, size: 128, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2466, file: !38, line: 1413, baseType: !2471, size: 1920, offset: 192)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2472, size: 1920, elements: !236)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2473, line: 12, size: 640, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2474 = !{!2475, !2483, !2485, !2490, !2491}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2472, file: !2473, line: 13, baseType: !2476, size: 320)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2477, line: 17, size: 320, elements: !2478)
!2477 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2476, file: !2477, line: 18, baseType: !136, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2476, file: !2477, line: 19, baseType: !136, size: 32, offset: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2476, file: !2477, line: 20, baseType: !1358, size: 128, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2476, file: !2477, line: 22, baseType: !326, size: 128, align: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2472, file: !2473, line: 14, baseType: !2484, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2472, file: !2473, line: 15, baseType: !2486, size: 64, offset: 384)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2487, line: 16, size: 64, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2486, file: !2487, line: 17, baseType: !1093, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2472, file: !2473, line: 16, baseType: !1358, size: 128, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2472, file: !2473, line: 17, baseType: !704, size: 32, offset: 576)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !557, file: !38, line: 1465, baseType: !137, size: 64, offset: 6400)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !557, file: !38, line: 1468, baseType: !148, size: 32, offset: 6464)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !557, file: !38, line: 1470, baseType: !496, size: 64, offset: 6528)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !557, file: !38, line: 1471, baseType: !496, size: 64, offset: 6592)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !557, file: !38, line: 1473, baseType: !150, size: 32, offset: 6656)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !557, file: !38, line: 1474, baseType: !2498, size: 64, offset: 6720)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !557, file: !38, line: 1477, baseType: !2501, size: 256, offset: 6784)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !2092)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !557, file: !38, line: 1478, baseType: !2503, size: 128, offset: 7040)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2504, line: 18, baseType: !2505)
!2504 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2504, line: 16, size: 128, elements: !2506)
!2506 = !{!2507}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2505, file: !2504, line: 17, baseType: !2508, size: 128)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 128, elements: !145)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !557, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !557, file: !38, line: 1481, baseType: !2511, size: 32, offset: 7200)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 150, baseType: !7)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !557, file: !38, line: 1487, baseType: !1050, size: 192, offset: 7232)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !557, file: !38, line: 1493, baseType: !178, size: 64, offset: 7424)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !557, file: !38, line: 1495, baseType: !2515, size: 64, offset: 7488)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2517)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !341, line: 135, size: 1024, align: 512, elements: !2518)
!2518 = !{!2519, !2523, !2524, !2531, !2537, !2541, !2545, !2549, !2550, !2554, !2558, !2563, !2567}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2517, file: !341, line: 136, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!136, !343, !7}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2517, file: !341, line: 137, baseType: !2520, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2517, file: !341, line: 138, baseType: !2525, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!136, !2528, !2530}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2517, file: !341, line: 139, baseType: !2532, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!136, !2528, !7, !178, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2517, file: !341, line: 141, baseType: !2538, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!136, !2528}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2517, file: !341, line: 142, baseType: !2542, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!136, !343}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2517, file: !341, line: 143, baseType: !2546, size: 64, offset: 384)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !343}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2517, file: !341, line: 144, baseType: !2546, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2517, file: !341, line: 145, baseType: !2551, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !343, !386}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2517, file: !341, line: 146, baseType: !2555, size: 64, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!235, !343, !235, !136}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2517, file: !341, line: 147, baseType: !2559, size: 64, offset: 640)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!339, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2517, file: !341, line: 148, baseType: !2564, size: 64, offset: 704)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!136, !506, !447}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2517, file: !341, line: 149, baseType: !2568, size: 64, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!343, !343, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !557, file: !38, line: 1500, baseType: !136, size: 32, offset: 7552)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !557, file: !38, line: 1502, baseType: !2575, size: 448, offset: 7616)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2219, line: 60, size: 448, elements: !2576)
!2576 = !{!2577, !2582, !2583, !2584, !2585, !2586, !2587}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2575, file: !2219, line: 61, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!285, !2581, !2217}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2575, file: !2219, line: 63, baseType: !2578, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2575, file: !2219, line: 66, baseType: !270, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2575, file: !2219, line: 67, baseType: !136, size: 32, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !2219, line: 68, baseType: !7, size: 32, offset: 224)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2575, file: !2219, line: 71, baseType: !181, size: 128, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2575, file: !2219, line: 77, baseType: !2588, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !557, file: !38, line: 1505, baseType: !728, size: 64, offset: 8064)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !557, file: !38, line: 1508, baseType: !728, size: 64, offset: 8128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !557, file: !38, line: 1511, baseType: !136, size: 32, offset: 8192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !557, file: !38, line: 1514, baseType: !866, size: 32, offset: 8224)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !557, file: !38, line: 1517, baseType: !2594, size: 64, offset: 8256)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1832, line: 18, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !557, file: !38, line: 1518, baseType: !592, size: 64, offset: 8320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !557, file: !38, line: 1525, baseType: !1588, size: 64, offset: 8384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !557, file: !38, line: 1532, baseType: !2599, size: 64, offset: 8448)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2600, line: 52, size: 64, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2601 = !{!2602}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2599, file: !2600, line: 53, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2600, line: 40, size: 256, elements: !2605)
!2605 = !{!2606, !2607, !2612}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2604, file: !2600, line: 42, baseType: !194)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2604, file: !2600, line: 44, baseType: !2608, size: 192)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2600, line: 28, size: 192, elements: !2609)
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2608, file: !2600, line: 29, baseType: !181, size: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2608, file: !2600, line: 31, baseType: !270, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2604, file: !2600, line: 49, baseType: !270, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !557, file: !38, line: 1533, baseType: !2599, size: 64, offset: 8512)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !557, file: !38, line: 1534, baseType: !326, size: 128, align: 64, offset: 8576)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !557, file: !38, line: 1535, baseType: !1831, size: 256, offset: 8704)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !557, file: !38, line: 1537, baseType: !1050, size: 192, offset: 8960)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !557, file: !38, line: 1542, baseType: !136, size: 32, offset: 9152)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !557, file: !38, line: 1545, baseType: !194, offset: 9184)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !557, file: !38, line: 1546, baseType: !181, size: 128, offset: 9216)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !557, file: !38, line: 1548, baseType: !194, offset: 9344)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !557, file: !38, line: 1549, baseType: !181, size: 128, offset: 9344)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !387, file: !38, line: 624, baseType: !691, size: 64, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !387, file: !38, line: 631, baseType: !285, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 639, baseType: !2625, size: 32, offset: 384)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 639, size: 32, elements: !2626)
!2626 = !{!2627, !2629}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2625, file: !38, line: 640, baseType: !2628, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2625, file: !38, line: 641, baseType: !7, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !387, file: !38, line: 643, baseType: !470, size: 32, offset: 416)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !387, file: !38, line: 644, baseType: !488, size: 64, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !387, file: !38, line: 645, baseType: !492, size: 128, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !387, file: !38, line: 646, baseType: !492, size: 128, offset: 640)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !387, file: !38, line: 647, baseType: !492, size: 128, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !387, file: !38, line: 648, baseType: !194, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !387, file: !38, line: 649, baseType: !277, size: 16, offset: 896)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !387, file: !38, line: 650, baseType: !1229, size: 8, offset: 912)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !387, file: !38, line: 651, baseType: !1229, size: 8, offset: 920)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !387, file: !38, line: 652, baseType: !2391, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !387, file: !38, line: 659, baseType: !285, size: 64, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !387, file: !38, line: 660, baseType: !724, size: 256, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !387, file: !38, line: 662, baseType: !285, size: 64, offset: 1344)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !387, file: !38, line: 663, baseType: !285, size: 64, offset: 1408)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !387, file: !38, line: 665, baseType: !596, size: 128, offset: 1472)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !387, file: !38, line: 666, baseType: !181, size: 128, offset: 1600)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !387, file: !38, line: 675, baseType: !181, size: 128, offset: 1728)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !387, file: !38, line: 676, baseType: !181, size: 128, offset: 1856)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !387, file: !38, line: 677, baseType: !181, size: 128, offset: 1984)
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 678, baseType: !2650, size: 128, offset: 2112)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 678, size: 128, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2650, file: !38, line: 679, baseType: !592, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2650, file: !38, line: 680, baseType: !326, size: 128, align: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !387, file: !38, line: 682, baseType: !730, size: 64, offset: 2240)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !387, file: !38, line: 683, baseType: !730, size: 64, offset: 2304)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !387, file: !38, line: 684, baseType: !704, size: 32, offset: 2368)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !387, file: !38, line: 685, baseType: !704, size: 32, offset: 2400)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !387, file: !38, line: 686, baseType: !704, size: 32, offset: 2432)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !387, file: !38, line: 688, baseType: !704, size: 32, offset: 2464)
!2660 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 690, baseType: !2661, size: 64, offset: 2496)
!2661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 690, size: 64, elements: !2662)
!2662 = !{!2663, !2886}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2661, file: !38, line: 691, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2667)
!2667 = !{!2668, !2669, !2673, !2678, !2682, !2683, !2684, !2688, !2701, !2702, !2710, !2714, !2715, !2719, !2720, !2724, !2729, !2730, !2734, !2738, !2846, !2850, !2851, !2855, !2856, !2860, !2864, !2869, !2873, !2877, !2881, !2885}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2666, file: !38, line: 1823, baseType: !131, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2666, file: !38, line: 1824, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!488, !313, !488, !136}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2666, file: !38, line: 1825, baseType: !2674, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!266, !313, !235, !282, !2677}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2666, file: !38, line: 1826, baseType: !2679, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!266, !313, !178, !282, !2677}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2666, file: !38, line: 1827, baseType: !801, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2666, file: !38, line: 1828, baseType: !801, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2666, file: !38, line: 1829, baseType: !2685, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!136, !804, !447}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2666, file: !38, line: 1830, baseType: !2689, size: 64, offset: 448)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!136, !313, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2694)
!2694 = !{!2695, !2700}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2693, file: !38, line: 1777, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2697)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!136, !2692, !178, !136, !488, !378, !7}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2693, file: !38, line: 1778, baseType: !488, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2666, file: !38, line: 1831, baseType: !2689, size: 64, offset: 512)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2666, file: !38, line: 1832, baseType: !2703, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!2706, !313, !2708}
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2707, line: 52, baseType: !7)
!2707 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !576, line: 27, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2666, file: !38, line: 1833, baseType: !2711, size: 64, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!270, !313, !7, !285}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2666, file: !38, line: 1834, baseType: !2711, size: 64, offset: 704)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2666, file: !38, line: 1835, baseType: !2716, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!136, !313, !938}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2666, file: !38, line: 1836, baseType: !285, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2666, file: !38, line: 1837, baseType: !2721, size: 64, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!136, !386, !313}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2666, file: !38, line: 1838, baseType: !2725, size: 64, offset: 960)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!136, !313, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !137)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2666, file: !38, line: 1839, baseType: !2721, size: 64, offset: 1024)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2666, file: !38, line: 1840, baseType: !2731, size: 64, offset: 1088)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!136, !313, !488, !488, !136}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2666, file: !38, line: 1841, baseType: !2735, size: 64, offset: 1152)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!136, !136, !313, !136}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2666, file: !38, line: 1842, baseType: !2739, size: 64, offset: 1216)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!136, !313, !136, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2776, !2777, !2778, !2791, !2822}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2743, file: !38, line: 1063, baseType: !2742, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2743, file: !38, line: 1064, baseType: !181, size: 128, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2743, file: !38, line: 1065, baseType: !596, size: 128, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2743, file: !38, line: 1066, baseType: !181, size: 128, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2743, file: !38, line: 1069, baseType: !181, size: 128, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2743, file: !38, line: 1072, baseType: !2728, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2743, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2743, file: !38, line: 1074, baseType: !384, size: 8, offset: 672)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2743, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2743, file: !38, line: 1076, baseType: !136, size: 32, offset: 736)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2743, file: !38, line: 1077, baseType: !1358, size: 128, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2743, file: !38, line: 1078, baseType: !313, size: 64, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2743, file: !38, line: 1079, baseType: !488, size: 64, offset: 960)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2743, file: !38, line: 1080, baseType: !488, size: 64, offset: 1024)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2743, file: !38, line: 1082, baseType: !2760, size: 64, offset: 1088)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2762)
!2762 = !{!2763, !2771, !2772, !2773, !2774, !2775}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2761, file: !38, line: 1315, baseType: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2765, line: 20, baseType: !2766)
!2765 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2765, line: 11, elements: !2767)
!2767 = !{!2768}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2766, file: !2765, line: 12, baseType: !2769)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !206, line: 33, baseType: !2770)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 31, elements: !208)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2761, file: !38, line: 1316, baseType: !136, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2761, file: !38, line: 1317, baseType: !136, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2761, file: !38, line: 1318, baseType: !2760, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2761, file: !38, line: 1319, baseType: !313, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2761, file: !38, line: 1320, baseType: !326, size: 128, align: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2743, file: !38, line: 1084, baseType: !285, size: 64, offset: 1152)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2743, file: !38, line: 1085, baseType: !285, size: 64, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2743, file: !38, line: 1087, baseType: !2779, size: 64, offset: 1280)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2782)
!2782 = !{!2783, !2787}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2781, file: !38, line: 1012, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !2742, !2742}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2781, file: !38, line: 1013, baseType: !2788, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2742}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2743, file: !38, line: 1088, baseType: !2792, size: 64, offset: 1344)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2794)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2795)
!2795 = !{!2796, !2800, !2804, !2805, !2809, !2813, !2817, !2821}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2794, file: !38, line: 1017, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!2728, !2728}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2794, file: !38, line: 1018, baseType: !2801, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2728}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2794, file: !38, line: 1019, baseType: !2788, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2794, file: !38, line: 1020, baseType: !2806, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!136, !2742, !136}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2794, file: !38, line: 1021, baseType: !2810, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!447, !2742}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2794, file: !38, line: 1022, baseType: !2814, size: 64, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!136, !2742, !136, !184}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2794, file: !38, line: 1023, baseType: !2818, size: 64, offset: 384)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2742, !778}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2794, file: !38, line: 1024, baseType: !2810, size: 64, offset: 448)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2743, file: !38, line: 1097, baseType: !2823, size: 256, offset: 1408)
!2823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2743, file: !38, line: 1089, size: 256, elements: !2824)
!2824 = !{!2825, !2834, !2840}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2823, file: !38, line: 1090, baseType: !2826, size: 256)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2827, line: 10, size: 256, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2830, !2833}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2826, file: !2827, line: 11, baseType: !148, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2826, file: !2827, line: 12, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2827, line: 5, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2826, file: !2827, line: 13, baseType: !181, size: 128, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2823, file: !38, line: 1091, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2827, line: 17, size: 64, elements: !2836)
!2836 = !{!2837}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2835, file: !2827, line: 18, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2827, line: 16, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2823, file: !38, line: 1096, baseType: !2841, size: 192)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2823, file: !38, line: 1092, size: 192, elements: !2842)
!2842 = !{!2843, !2844, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2841, file: !38, line: 1093, baseType: !181, size: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2841, file: !38, line: 1094, baseType: !136, size: 32, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2841, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2666, file: !38, line: 1843, baseType: !2847, size: 64, offset: 1280)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!266, !313, !678, !136, !282, !2677, !136}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2666, file: !38, line: 1844, baseType: !978, size: 64, offset: 1344)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2666, file: !38, line: 1845, baseType: !2852, size: 64, offset: 1408)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!136, !136}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2666, file: !38, line: 1846, baseType: !2739, size: 64, offset: 1472)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2666, file: !38, line: 1847, baseType: !2857, size: 64, offset: 1536)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!266, !1972, !313, !2677, !282, !7}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2666, file: !38, line: 1848, baseType: !2861, size: 64, offset: 1600)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!266, !313, !2677, !1972, !282, !7}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2666, file: !38, line: 1849, baseType: !2865, size: 64, offset: 1664)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!136, !313, !270, !2868, !778}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2666, file: !38, line: 1850, baseType: !2870, size: 64, offset: 1728)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!270, !313, !136, !488, !488}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2666, file: !38, line: 1852, baseType: !2874, size: 64, offset: 1792)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !668, !313}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2666, file: !38, line: 1856, baseType: !2878, size: 64, offset: 1856)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!266, !313, !488, !313, !488, !282, !7}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2666, file: !38, line: 1858, baseType: !2882, size: 64, offset: 1920)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!488, !313, !488, !313, !488, !488, !7}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2666, file: !38, line: 1861, baseType: !2731, size: 64, offset: 1984)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2661, file: !38, line: 692, baseType: !621, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !387, file: !38, line: 694, baseType: !2888, size: 64, offset: 2560)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2889, file: !38, line: 1101, baseType: !194)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2889, file: !38, line: 1102, baseType: !181, size: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2889, file: !38, line: 1103, baseType: !181, size: 128, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2889, file: !38, line: 1104, baseType: !181, size: 128, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !387, file: !38, line: 695, baseType: !692, size: 1216, align: 64, offset: 2624)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !387, file: !38, line: 696, baseType: !181, size: 128, offset: 3840)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !38, line: 697, baseType: !2898, size: 64, offset: 3968)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !38, line: 697, size: 64, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2905, !2906}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2898, file: !38, line: 698, baseType: !1972, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2898, file: !38, line: 699, baseType: !2416, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2898, file: !38, line: 700, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2898, file: !38, line: 701, baseType: !235, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2898, file: !38, line: 702, baseType: !7, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !387, file: !38, line: 705, baseType: !150, size: 32, offset: 4032)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !387, file: !38, line: 708, baseType: !150, size: 32, offset: 4064)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !387, file: !38, line: 709, baseType: !2498, size: 64, offset: 4096)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !387, file: !38, line: 720, baseType: !137, size: 64, offset: 4160)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !344, file: !341, line: 98, baseType: !2912, size: 256, offset: 448)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !2092)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !344, file: !341, line: 101, baseType: !2914, size: 32, offset: 704)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2915, line: 25, size: 32, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !2915, line: 26, baseType: !2918, size: 32)
!2918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !2915, line: 26, size: 32, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !2915, line: 30, baseType: !2921, size: 32)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2918, file: !2915, line: 30, size: 32, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2921, file: !2915, line: 31, baseType: !194)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2921, file: !2915, line: 32, baseType: !136, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !344, file: !341, line: 102, baseType: !2515, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !344, file: !341, line: 103, baseType: !556, size: 64, offset: 832)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !344, file: !341, line: 104, baseType: !285, size: 64, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !344, file: !341, line: 105, baseType: !137, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !341, line: 107, baseType: !2930, size: 128, offset: 1024)
!2930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !341, line: 107, size: 128, elements: !2931)
!2931 = !{!2932, !2933}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2930, file: !341, line: 108, baseType: !181, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2930, file: !341, line: 109, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !344, file: !341, line: 111, baseType: !181, size: 128, offset: 1152)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !344, file: !341, line: 112, baseType: !181, size: 128, offset: 1280)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !344, file: !341, line: 120, baseType: !2938, size: 128, offset: 1408)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !341, line: 116, size: 128, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2938, file: !341, line: 117, baseType: !596, size: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2938, file: !341, line: 118, baseType: !358, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2938, file: !341, line: 119, baseType: !326, size: 128, align: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !314, file: !38, line: 922, baseType: !386, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !314, file: !38, line: 923, baseType: !2664, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !314, file: !38, line: 929, baseType: !194, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !314, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !314, file: !38, line: 931, baseType: !728, size: 64, offset: 448)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !314, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !314, file: !38, line: 933, baseType: !2511, size: 32, offset: 544)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !314, file: !38, line: 934, baseType: !1050, size: 192, offset: 576)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !314, file: !38, line: 935, baseType: !488, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !314, file: !38, line: 936, baseType: !2953, size: 192, offset: 832)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2953, file: !38, line: 886, baseType: !2764)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2953, file: !38, line: 887, baseType: !1348, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2953, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2953, file: !38, line: 889, baseType: !392, size: 32, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2953, file: !38, line: 889, baseType: !392, size: 32, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2953, file: !38, line: 890, baseType: !136, size: 32, offset: 160)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !314, file: !38, line: 937, baseType: !1424, size: 64, offset: 1024)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !314, file: !38, line: 938, baseType: !2963, size: 256, offset: 1088)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2964)
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2963, file: !38, line: 897, baseType: !285, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2963, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2963, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2963, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2963, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2963, file: !38, line: 904, baseType: !488, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !314, file: !38, line: 940, baseType: !378, size: 64, offset: 1344)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !314, file: !38, line: 945, baseType: !137, size: 64, offset: 1408)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !314, file: !38, line: 949, baseType: !181, size: 128, offset: 1472)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !314, file: !38, line: 950, baseType: !181, size: 128, offset: 1600)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !38, line: 952, baseType: !691, size: 64, offset: 1728)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !314, file: !38, line: 953, baseType: !866, size: 32, offset: 1792)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !314, file: !38, line: 954, baseType: !866, size: 32, offset: 1824)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !304, file: !260, line: 174, baseType: !310, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !304, file: !260, line: 176, baseType: !2980, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!136, !313, !187, !303, !938}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !292, file: !260, line: 90, baseType: !287, size: 64, offset: 192)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !292, file: !260, line: 91, baseType: !2985, size: 64, offset: 256)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !250, file: !175, line: 143, baseType: !2987, size: 64, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!2990, !187}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2992)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2993)
!2993 = !{!2994, !2995, !2999, !3003, !3011, !3015}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2992, file: !55, line: 40, baseType: !54, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2992, file: !55, line: 41, baseType: !2996, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!447}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2992, file: !55, line: 42, baseType: !3000, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!137}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2992, file: !55, line: 43, baseType: !3004, size: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!3007, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2992, file: !55, line: 44, baseType: !3012, size: 64, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!3007}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2992, file: !55, line: 45, baseType: !425, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !250, file: !175, line: 144, baseType: !3017, size: 64, offset: 320)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!3007, !187}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !250, file: !175, line: 145, baseType: !3021, size: 64, offset: 384)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !187, !3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !174, file: !175, line: 70, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !576, line: 123, size: 1024, elements: !3029)
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3158, !3159, !3160, !3161, !3162}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3028, file: !576, line: 124, baseType: !704, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3028, file: !576, line: 125, baseType: !704, size: 32, offset: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3028, file: !576, line: 135, baseType: !3027, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3028, file: !576, line: 136, baseType: !178, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3028, file: !576, line: 138, baseType: !717, size: 192, align: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3028, file: !576, line: 140, baseType: !3007, size: 64, offset: 384)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3028, file: !576, line: 141, baseType: !7, size: 32, offset: 448)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !576, line: 142, baseType: !3038, size: 256, offset: 512)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3028, file: !576, line: 142, size: 256, elements: !3039)
!3039 = !{!3040, !3086, !3090}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3038, file: !576, line: 143, baseType: !3041, size: 192)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !576, line: 91, size: 192, elements: !3042)
!3042 = !{!3043, !3044, !3045}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3041, file: !576, line: 92, baseType: !285, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3041, file: !576, line: 94, baseType: !713, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3041, file: !576, line: 100, baseType: !3046, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !576, line: 180, size: 704, elements: !3048)
!3048 = !{!3049, !3050, !3051, !3058, !3059, !3060, !3084, !3085}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3047, file: !576, line: 182, baseType: !3027, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3047, file: !576, line: 183, baseType: !7, size: 32, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3047, file: !576, line: 186, baseType: !3052, size: 192, offset: 128)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3053, line: 19, size: 192, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3052, file: !3053, line: 20, baseType: !696, size: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3052, file: !3053, line: 21, baseType: !7, size: 32, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3052, file: !3053, line: 22, baseType: !7, size: 32, offset: 160)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3047, file: !576, line: 187, baseType: !148, size: 32, offset: 320)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3047, file: !576, line: 188, baseType: !148, size: 32, offset: 352)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3047, file: !576, line: 189, baseType: !3061, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !576, line: 168, size: 320, elements: !3063)
!3063 = !{!3064, !3068, !3072, !3076, !3080}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3062, file: !576, line: 169, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!136, !668, !3046}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3062, file: !576, line: 171, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!136, !3027, !178, !276}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3062, file: !576, line: 173, baseType: !3073, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!136, !3027}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3062, file: !576, line: 174, baseType: !3077, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!136, !3027, !3027, !178}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3062, file: !576, line: 176, baseType: !3081, size: 64, offset: 256)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!136, !668, !3027, !3046}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3047, file: !576, line: 192, baseType: !181, size: 128, offset: 448)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3047, file: !576, line: 194, baseType: !1358, size: 128, offset: 576)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3038, file: !576, line: 144, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !576, line: 103, size: 64, elements: !3088)
!3088 = !{!3089}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3087, file: !576, line: 104, baseType: !3027, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3038, file: !576, line: 145, baseType: !3091, size: 256)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !576, line: 107, size: 256, elements: !3092)
!3092 = !{!3093, !3153, !3156, !3157}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3091, file: !576, line: 108, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3096)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !576, line: 217, size: 768, elements: !3097)
!3097 = !{!3098, !3118, !3122, !3126, !3130, !3134, !3138, !3142, !3143, !3144, !3145, !3149}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3096, file: !576, line: 222, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!136, !3102}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !576, line: 197, size: 1088, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3103, file: !576, line: 199, baseType: !3027, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3103, file: !576, line: 200, baseType: !313, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3103, file: !576, line: 201, baseType: !668, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3103, file: !576, line: 202, baseType: !137, size: 64, offset: 192)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3103, file: !576, line: 205, baseType: !1050, size: 192, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3103, file: !576, line: 206, baseType: !1050, size: 192, offset: 448)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3103, file: !576, line: 207, baseType: !136, size: 32, offset: 640)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3103, file: !576, line: 208, baseType: !181, size: 128, offset: 704)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3103, file: !576, line: 209, baseType: !235, size: 64, offset: 832)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3103, file: !576, line: 211, baseType: !282, size: 64, offset: 896)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3103, file: !576, line: 212, baseType: !447, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3103, file: !576, line: 213, baseType: !447, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3103, file: !576, line: 214, baseType: !966, size: 64, offset: 1024)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3096, file: !576, line: 223, baseType: !3119, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !3102}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3096, file: !576, line: 236, baseType: !3123, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!136, !668, !137}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3096, file: !576, line: 238, baseType: !3127, size: 64, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!137, !668, !2677}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3096, file: !576, line: 239, baseType: !3131, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!137, !668, !137, !2677}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3096, file: !576, line: 240, baseType: !3135, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !668, !137}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3096, file: !576, line: 242, baseType: !3139, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!266, !3102, !235, !282, !488}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3096, file: !576, line: 252, baseType: !282, size: 64, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3096, file: !576, line: 259, baseType: !447, size: 8, offset: 512)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3096, file: !576, line: 260, baseType: !3139, size: 64, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3096, file: !576, line: 263, baseType: !3146, size: 64, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!2706, !3102, !2708}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3096, file: !576, line: 266, baseType: !3150, size: 64, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!136, !3102, !938}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3091, file: !576, line: 109, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !576, line: 31, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3091, file: !576, line: 110, baseType: !488, size: 64, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3091, file: !576, line: 111, baseType: !3027, size: 64, offset: 192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3028, file: !576, line: 148, baseType: !137, size: 64, offset: 768)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3028, file: !576, line: 154, baseType: !378, size: 64, offset: 832)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3028, file: !576, line: 156, baseType: !277, size: 16, offset: 896)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3028, file: !576, line: 157, baseType: !276, size: 16, offset: 912)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3028, file: !576, line: 158, baseType: !3163, size: 64, offset: 960)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !576, line: 32, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !174, file: !175, line: 71, baseType: !3166, size: 32, offset: 448)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3167, line: 19, size: 32, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3168 = !{!3169}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3166, file: !3167, line: 20, baseType: !1107, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !174, file: !175, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !174, file: !175, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !174, file: !175, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !174, file: !175, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !174, file: !175, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !67, line: 463, baseType: !170, size: 64, offset: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !171, file: !67, line: 465, baseType: !3177, size: 64, offset: 576)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !171, file: !67, line: 467, baseType: !178, size: 64, offset: 640)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !67, line: 468, baseType: !3181, size: 64, offset: 704)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3183)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3191, !3196, !3200}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3183, file: !67, line: 88, baseType: !178, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3183, file: !67, line: 89, baseType: !289, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3183, file: !67, line: 90, baseType: !3188, size: 64, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!136, !170, !230}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3183, file: !67, line: 91, baseType: !3192, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!235, !170, !3195, !3024, !3025}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3183, file: !67, line: 93, baseType: !3197, size: 64, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !170}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3183, file: !67, line: 95, baseType: !3201, size: 64, offset: 320)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3204)
!3204 = !{!3205, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3203, file: !74, line: 279, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!136, !170}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3203, file: !74, line: 280, baseType: !3197, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3203, file: !74, line: 281, baseType: !3206, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3203, file: !74, line: 282, baseType: !3206, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3203, file: !74, line: 283, baseType: !3206, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3203, file: !74, line: 284, baseType: !3206, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3203, file: !74, line: 285, baseType: !3206, size: 64, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3203, file: !74, line: 286, baseType: !3206, size: 64, offset: 448)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3203, file: !74, line: 287, baseType: !3206, size: 64, offset: 512)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3203, file: !74, line: 288, baseType: !3206, size: 64, offset: 576)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3203, file: !74, line: 289, baseType: !3206, size: 64, offset: 640)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3203, file: !74, line: 290, baseType: !3206, size: 64, offset: 704)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3203, file: !74, line: 291, baseType: !3206, size: 64, offset: 768)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3203, file: !74, line: 292, baseType: !3206, size: 64, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3203, file: !74, line: 293, baseType: !3206, size: 64, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3203, file: !74, line: 294, baseType: !3206, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3203, file: !74, line: 295, baseType: !3206, size: 64, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3203, file: !74, line: 296, baseType: !3206, size: 64, offset: 1088)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3203, file: !74, line: 297, baseType: !3206, size: 64, offset: 1152)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3203, file: !74, line: 298, baseType: !3206, size: 64, offset: 1216)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3203, file: !74, line: 299, baseType: !3206, size: 64, offset: 1280)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3203, file: !74, line: 300, baseType: !3206, size: 64, offset: 1344)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3203, file: !74, line: 301, baseType: !3206, size: 64, offset: 1408)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !171, file: !67, line: 470, baseType: !3232, size: 64, offset: 768)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3234, line: 82, size: 1408, elements: !3235)
!3234 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3317, !3320, !3321}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3233, file: !3234, line: 83, baseType: !178, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3233, file: !3234, line: 84, baseType: !178, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3233, file: !3234, line: 85, baseType: !170, size: 64, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3233, file: !3234, line: 86, baseType: !289, size: 64, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3233, file: !3234, line: 87, baseType: !289, size: 64, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3233, file: !3234, line: 88, baseType: !289, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3233, file: !3234, line: 90, baseType: !3243, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!136, !170, !3246}
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3268, !3281, !3282, !3283, !3284, !3285, !3293, !3294, !3295, !3296, !3297, !3298}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3247, file: !61, line: 96, baseType: !178, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3247, file: !61, line: 97, baseType: !3232, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3247, file: !61, line: 99, baseType: !131, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3247, file: !61, line: 100, baseType: !178, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3247, file: !61, line: 102, baseType: !447, size: 8, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3247, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3247, file: !61, line: 105, baseType: !3256, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3259, line: 262, size: 1600, elements: !3260)
!3259 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3260 = !{!3261, !3262, !3263, !3267}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3258, file: !3259, line: 263, baseType: !2501, size: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3258, file: !3259, line: 264, baseType: !2501, size: 256, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3258, file: !3259, line: 265, baseType: !3264, size: 1024, offset: 512)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1024, elements: !3265)
!3265 = !{!3266}
!3266 = !DISubrange(count: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3258, file: !3259, line: 266, baseType: !3007, size: 64, offset: 1536)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3247, file: !61, line: 106, baseType: !3269, size: 64, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3271)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3259, line: 210, size: 256, elements: !3272)
!3272 = !{!3273, !3277, !3279, !3280}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3271, file: !3259, line: 211, baseType: !3274, size: 72)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 72, elements: !3275)
!3275 = !{!3276}
!3276 = !DISubrange(count: 9)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3271, file: !3259, line: 212, baseType: !3278, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3259, line: 14, baseType: !285)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3271, file: !3259, line: 213, baseType: !150, size: 32, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3271, file: !3259, line: 214, baseType: !150, size: 32, offset: 224)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3247, file: !61, line: 108, baseType: !3206, size: 64, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3247, file: !61, line: 109, baseType: !3197, size: 64, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3247, file: !61, line: 110, baseType: !3206, size: 64, offset: 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3247, file: !61, line: 111, baseType: !3197, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3247, file: !61, line: 112, baseType: !3286, size: 64, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!136, !170, !3289}
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3291)
!3291 = !{!3292}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3290, file: !74, line: 51, baseType: !136, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3247, file: !61, line: 113, baseType: !3206, size: 64, offset: 768)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3247, file: !61, line: 114, baseType: !289, size: 64, offset: 832)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3247, file: !61, line: 115, baseType: !289, size: 64, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3247, file: !61, line: 117, baseType: !3201, size: 64, offset: 960)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3247, file: !61, line: 118, baseType: !3197, size: 64, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3247, file: !61, line: 120, baseType: !3299, size: 64, offset: 1088)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3233, file: !3234, line: 91, baseType: !3188, size: 64, offset: 448)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3233, file: !3234, line: 92, baseType: !3206, size: 64, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3233, file: !3234, line: 93, baseType: !3197, size: 64, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3233, file: !3234, line: 94, baseType: !3206, size: 64, offset: 640)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3233, file: !3234, line: 95, baseType: !3197, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3233, file: !3234, line: 97, baseType: !3206, size: 64, offset: 768)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3233, file: !3234, line: 98, baseType: !3206, size: 64, offset: 832)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3233, file: !3234, line: 100, baseType: !3286, size: 64, offset: 896)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3233, file: !3234, line: 101, baseType: !3206, size: 64, offset: 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3233, file: !3234, line: 103, baseType: !3206, size: 64, offset: 1024)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3233, file: !3234, line: 105, baseType: !3206, size: 64, offset: 1088)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3233, file: !3234, line: 107, baseType: !3201, size: 64, offset: 1152)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3233, file: !3234, line: 109, baseType: !3314, size: 64, offset: 1216)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3234, line: 109, flags: DIFlagFwdDecl)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3233, file: !3234, line: 111, baseType: !3318, size: 64, offset: 1280)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3234, line: 111, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3233, file: !3234, line: 112, baseType: !602, offset: 1344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3233, file: !3234, line: 114, baseType: !447, size: 8, offset: 1344)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !171, file: !67, line: 471, baseType: !3246, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !171, file: !67, line: 473, baseType: !137, size: 64, offset: 896)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !171, file: !67, line: 475, baseType: !137, size: 64, offset: 960)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !171, file: !67, line: 480, baseType: !1050, size: 192, offset: 1024)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !171, file: !67, line: 484, baseType: !3327, size: 576, offset: 1216)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3327, file: !67, line: 362, baseType: !181, size: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3327, file: !67, line: 363, baseType: !181, size: 128, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3327, file: !67, line: 364, baseType: !181, size: 128, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3327, file: !67, line: 365, baseType: !181, size: 128, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3327, file: !67, line: 366, baseType: !447, size: 8, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3327, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !171, file: !67, line: 485, baseType: !3336, size: 2304, offset: 1792)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3433, !3437}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3336, file: !74, line: 566, baseType: !3289, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3336, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3336, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3336, file: !74, line: 569, baseType: !447, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3336, file: !74, line: 570, baseType: !447, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3336, file: !74, line: 571, baseType: !447, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3336, file: !74, line: 572, baseType: !447, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3336, file: !74, line: 573, baseType: !447, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3336, file: !74, line: 574, baseType: !447, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3336, file: !74, line: 575, baseType: !447, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3336, file: !74, line: 576, baseType: !447, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3336, file: !74, line: 577, baseType: !148, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3336, file: !74, line: 578, baseType: !194, offset: 96)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3336, file: !74, line: 580, baseType: !181, size: 128, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3336, file: !74, line: 581, baseType: !1379, size: 192, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3336, file: !74, line: 582, baseType: !3354, size: 64, offset: 448)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3356, line: 43, size: 1472, elements: !3357)
!3356 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3365, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3355, file: !3356, line: 44, baseType: !178, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3355, file: !3356, line: 45, baseType: !136, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3355, file: !3356, line: 46, baseType: !181, size: 128, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3355, file: !3356, line: 47, baseType: !194, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3355, file: !3356, line: 48, baseType: !3363, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3355, file: !3356, line: 49, baseType: !3366, size: 320, offset: 320)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3367, line: 11, size: 320, elements: !3368)
!3367 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3368 = !{!3369, !3370, !3371, !3376}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3366, file: !3367, line: 16, baseType: !596, size: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3366, file: !3367, line: 17, baseType: !285, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3366, file: !3367, line: 18, baseType: !3372, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{null, !3375}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3366, file: !3367, line: 19, baseType: !148, size: 32, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3355, file: !3356, line: 50, baseType: !285, size: 64, offset: 640)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3355, file: !3356, line: 51, baseType: !1177, size: 64, offset: 704)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3355, file: !3356, line: 52, baseType: !1177, size: 64, offset: 768)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3355, file: !3356, line: 53, baseType: !1177, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3355, file: !3356, line: 54, baseType: !1177, size: 64, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3355, file: !3356, line: 55, baseType: !1177, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3355, file: !3356, line: 56, baseType: !285, size: 64, offset: 1024)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3355, file: !3356, line: 57, baseType: !285, size: 64, offset: 1088)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3355, file: !3356, line: 58, baseType: !285, size: 64, offset: 1152)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3355, file: !3356, line: 59, baseType: !285, size: 64, offset: 1216)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3355, file: !3356, line: 60, baseType: !285, size: 64, offset: 1280)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3355, file: !3356, line: 61, baseType: !170, size: 64, offset: 1344)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3355, file: !3356, line: 62, baseType: !447, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3355, file: !3356, line: 63, baseType: !447, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3336, file: !74, line: 583, baseType: !447, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3336, file: !74, line: 584, baseType: !447, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3336, file: !74, line: 585, baseType: !447, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3336, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3336, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3336, file: !74, line: 592, baseType: !1169, size: 512, offset: 576)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3336, file: !74, line: 593, baseType: !378, size: 64, offset: 1088)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3336, file: !74, line: 594, baseType: !1831, size: 256, offset: 1152)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3336, file: !74, line: 595, baseType: !1358, size: 128, offset: 1408)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3336, file: !74, line: 596, baseType: !3363, size: 64, offset: 1536)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3336, file: !74, line: 597, baseType: !704, size: 32, offset: 1600)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3336, file: !74, line: 598, baseType: !704, size: 32, offset: 1632)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3336, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3336, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3336, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3336, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3336, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3336, file: !74, line: 604, baseType: !447, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3336, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3336, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3336, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3336, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3336, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3336, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3336, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3336, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3336, file: !74, line: 613, baseType: !136, size: 32, offset: 1792)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3336, file: !74, line: 614, baseType: !136, size: 32, offset: 1824)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3336, file: !74, line: 615, baseType: !378, size: 64, offset: 1856)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3336, file: !74, line: 616, baseType: !378, size: 64, offset: 1920)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3336, file: !74, line: 617, baseType: !378, size: 64, offset: 1984)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3336, file: !74, line: 618, baseType: !378, size: 64, offset: 2048)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3336, file: !74, line: 620, baseType: !3424, size: 64, offset: 2112)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3425, file: !74, line: 537, baseType: !194)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3425, file: !74, line: 538, baseType: !7, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3425, file: !74, line: 540, baseType: !181, size: 128, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3425, file: !74, line: 543, baseType: !3431, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3336, file: !74, line: 621, baseType: !3434, size: 64, offset: 2176)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !170, !1321}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3336, file: !74, line: 622, baseType: !3438, size: 64, offset: 2240)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !171, file: !67, line: 486, baseType: !3441, size: 64, offset: 4096)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3450, !3451, !3452}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3442, file: !74, line: 643, baseType: !3203, size: 1472)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3442, file: !74, line: 644, baseType: !3206, size: 64, offset: 1472)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3442, file: !74, line: 645, baseType: !3447, size: 64, offset: 1536)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{null, !170, !447}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3442, file: !74, line: 646, baseType: !3206, size: 64, offset: 1600)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3442, file: !74, line: 647, baseType: !3197, size: 64, offset: 1664)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3442, file: !74, line: 648, baseType: !3197, size: 64, offset: 1728)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !171, file: !67, line: 493, baseType: !3454, size: 64, offset: 4160)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !171, file: !67, line: 499, baseType: !181, size: 128, offset: 4224)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !171, file: !67, line: 502, baseType: !3458, size: 64, offset: 4352)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3460)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !171, file: !67, line: 504, baseType: !3462, size: 64, offset: 4416)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !171, file: !67, line: 505, baseType: !378, size: 64, offset: 4480)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !171, file: !67, line: 510, baseType: !378, size: 64, offset: 4544)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !171, file: !67, line: 511, baseType: !3466, size: 64, offset: 4608)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3468)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !171, file: !67, line: 513, baseType: !3470, size: 64, offset: 4672)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3471, file: !67, line: 293, baseType: !7, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3471, file: !67, line: 294, baseType: !285, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !171, file: !67, line: 515, baseType: !181, size: 128, offset: 4736)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !171, file: !67, line: 526, baseType: !3477, offset: 4864)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3478, line: 5, elements: !208)
!3478 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !171, file: !67, line: 528, baseType: !3480, size: 64, offset: 4864)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3482, line: 14, flags: DIFlagFwdDecl)
!3482 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !171, file: !67, line: 529, baseType: !3484, size: 64, offset: 4928)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3234, line: 22, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !171, file: !67, line: 534, baseType: !470, size: 32, offset: 4992)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !171, file: !67, line: 535, baseType: !148, size: 32, offset: 5024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !171, file: !67, line: 537, baseType: !194, offset: 5056)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !171, file: !67, line: 538, baseType: !181, size: 128, offset: 5056)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !171, file: !67, line: 540, baseType: !3491, size: 64, offset: 5184)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3493, line: 54, size: 960, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3505, !3509, !3510, !3511, !3512, !3516, !3520, !3521}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3492, file: !3493, line: 55, baseType: !178, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3492, file: !3493, line: 56, baseType: !131, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3492, file: !3493, line: 58, baseType: !289, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3492, file: !3493, line: 59, baseType: !289, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3492, file: !3493, line: 60, baseType: !187, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3492, file: !3493, line: 62, baseType: !3188, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3492, file: !3493, line: 63, baseType: !3502, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!235, !170, !3195}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3492, file: !3493, line: 65, baseType: !3506, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3491}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3492, file: !3493, line: 66, baseType: !3197, size: 64, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3492, file: !3493, line: 68, baseType: !3206, size: 64, offset: 576)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3492, file: !3493, line: 70, baseType: !2990, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3492, file: !3493, line: 71, baseType: !3513, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!3007, !170}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3492, file: !3493, line: 73, baseType: !3517, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !170, !3024, !3025}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3492, file: !3493, line: 75, baseType: !3201, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3492, file: !3493, line: 77, baseType: !3318, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !171, file: !67, line: 541, baseType: !289, size: 64, offset: 5248)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !171, file: !67, line: 543, baseType: !3197, size: 64, offset: 5312)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !171, file: !67, line: 544, baseType: !3525, size: 64, offset: 5376)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !171, file: !67, line: 545, baseType: !3528, size: 64, offset: 5440)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !171, file: !67, line: 547, baseType: !447, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !171, file: !67, line: 548, baseType: !447, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !171, file: !67, line: 549, baseType: !447, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !171, file: !67, line: 550, baseType: !447, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !167, file: !6, line: 426, baseType: !170, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !167, file: !6, line: 427, baseType: !136, size: 32, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !167, file: !6, line: 428, baseType: !178, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !167, file: !6, line: 429, baseType: !1229, size: 8, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !167, file: !6, line: 433, baseType: !1229, size: 8, offset: 264)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !167, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !167, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !167, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !167, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !167, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !167, file: !6, line: 444, baseType: !136, size: 32, offset: 320)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !167, file: !6, line: 446, baseType: !1050, size: 192, offset: 384)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !167, file: !6, line: 448, baseType: !3547, size: 128, offset: 576)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3548)
!3548 = !{!3549}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3547, file: !6, line: 418, baseType: !3550, size: 128)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !162)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !167, file: !6, line: 449, baseType: !138, size: 64, offset: 704)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !167, file: !6, line: 450, baseType: !166, size: 64, offset: 768)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !167, file: !6, line: 452, baseType: !136, size: 32, offset: 832)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !167, file: !6, line: 459, baseType: !136, size: 32, offset: 864)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !167, file: !6, line: 460, baseType: !136, size: 32, offset: 896)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !167, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !139, file: !6, line: 647, baseType: !3558, size: 640, offset: 640)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3559)
!3559 = !{!3560, !3572, !3580, !3588, !3589, !3590, !3593, !3595, !3596, !3597}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3558, file: !6, line: 68, baseType: !3561, size: 72)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3569, !3570, !3571}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3561, file: !88, line: 408, baseType: !1230, size: 8)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3561, file: !88, line: 409, baseType: !1230, size: 8, offset: 8)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3561, file: !88, line: 411, baseType: !1230, size: 8, offset: 16)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3561, file: !88, line: 412, baseType: !1230, size: 8, offset: 24)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3561, file: !88, line: 413, baseType: !3568, size: 16, offset: 32)
!3568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2707, line: 29, baseType: !817)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3561, file: !88, line: 414, baseType: !1230, size: 8, offset: 48)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3561, file: !88, line: 418, baseType: !1230, size: 8, offset: 56)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3561, file: !88, line: 419, baseType: !1230, size: 8, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3558, file: !6, line: 69, baseType: !3573, size: 48, offset: 72)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3573, file: !88, line: 690, baseType: !1230, size: 8)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3573, file: !88, line: 691, baseType: !1230, size: 8, offset: 8)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3573, file: !88, line: 693, baseType: !1230, size: 8, offset: 16)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3573, file: !88, line: 694, baseType: !1230, size: 8, offset: 24)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3573, file: !88, line: 695, baseType: !3568, size: 16, offset: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3558, file: !6, line: 70, baseType: !3581, size: 64, offset: 120)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3586}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3581, file: !88, line: 678, baseType: !1230, size: 8)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3581, file: !88, line: 679, baseType: !1230, size: 8, offset: 8)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3581, file: !88, line: 680, baseType: !3568, size: 16, offset: 16)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3581, file: !88, line: 681, baseType: !3587, size: 32, offset: 32)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2707, line: 31, baseType: !150)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3558, file: !6, line: 71, baseType: !181, size: 128, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3558, file: !6, line: 72, baseType: !137, size: 64, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3558, file: !6, line: 73, baseType: !3591, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3558, file: !6, line: 75, baseType: !3594, size: 64, offset: 448)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3558, file: !6, line: 76, baseType: !136, size: 32, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3558, file: !6, line: 77, baseType: !136, size: 32, offset: 544)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3558, file: !6, line: 78, baseType: !136, size: 32, offset: 576)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !139, file: !6, line: 649, baseType: !171, size: 5568, offset: 1280)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !139, file: !6, line: 651, baseType: !3600, size: 144, offset: 6848)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3600, file: !88, line: 290, baseType: !1230, size: 8)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3600, file: !88, line: 291, baseType: !1230, size: 8, offset: 8)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3600, file: !88, line: 293, baseType: !3568, size: 16, offset: 16)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3600, file: !88, line: 294, baseType: !1230, size: 8, offset: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3600, file: !88, line: 295, baseType: !1230, size: 8, offset: 40)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3600, file: !88, line: 296, baseType: !1230, size: 8, offset: 48)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3600, file: !88, line: 297, baseType: !1230, size: 8, offset: 56)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3600, file: !88, line: 298, baseType: !3568, size: 16, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3600, file: !88, line: 299, baseType: !3568, size: 16, offset: 80)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3600, file: !88, line: 300, baseType: !3568, size: 16, offset: 96)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3600, file: !88, line: 301, baseType: !1230, size: 8, offset: 112)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3600, file: !88, line: 302, baseType: !1230, size: 8, offset: 120)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3600, file: !88, line: 303, baseType: !1230, size: 8, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3600, file: !88, line: 304, baseType: !1230, size: 8, offset: 136)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !139, file: !6, line: 652, baseType: !3617, size: 64, offset: 7040)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3619)
!3619 = !{!3620, !3628, !3636, !3648, !3661, !3670}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3618, file: !6, line: 397, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3622, file: !88, line: 845, baseType: !1230, size: 8)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3622, file: !88, line: 846, baseType: !1230, size: 8, offset: 8)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3622, file: !88, line: 848, baseType: !3568, size: 16, offset: 16)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3622, file: !88, line: 849, baseType: !1230, size: 8, offset: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3618, file: !6, line: 400, baseType: !3629, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3630, file: !88, line: 896, baseType: !1230, size: 8)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3630, file: !88, line: 897, baseType: !1230, size: 8, offset: 8)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3630, file: !88, line: 898, baseType: !1230, size: 8, offset: 16)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3630, file: !88, line: 899, baseType: !3587, size: 32, offset: 24)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3618, file: !6, line: 401, baseType: !3637, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3638, file: !88, line: 918, baseType: !1230, size: 8)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3638, file: !88, line: 919, baseType: !1230, size: 8, offset: 8)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3638, file: !88, line: 920, baseType: !1230, size: 8, offset: 16)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3638, file: !88, line: 921, baseType: !1230, size: 8, offset: 24)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3638, file: !88, line: 923, baseType: !3568, size: 16, offset: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3638, file: !88, line: 928, baseType: !1230, size: 8, offset: 48)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3638, file: !88, line: 929, baseType: !1230, size: 8, offset: 56)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3638, file: !88, line: 930, baseType: !3568, size: 16, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3618, file: !6, line: 402, baseType: !3649, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3650, file: !88, line: 956, baseType: !1230, size: 8)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3650, file: !88, line: 957, baseType: !1230, size: 8, offset: 8)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3650, file: !88, line: 958, baseType: !1230, size: 8, offset: 16)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3650, file: !88, line: 959, baseType: !1230, size: 8, offset: 24)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3650, file: !88, line: 960, baseType: !3587, size: 32, offset: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3650, file: !88, line: 963, baseType: !3568, size: 16, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3650, file: !88, line: 967, baseType: !3568, size: 16, offset: 80)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3650, file: !88, line: 968, baseType: !3660, size: 32, offset: 96)
!3660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3587, size: 32, elements: !1248)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3618, file: !6, line: 403, baseType: !3662, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3668, !3669}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3663, file: !88, line: 941, baseType: !1230, size: 8)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3663, file: !88, line: 942, baseType: !1230, size: 8, offset: 8)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3663, file: !88, line: 943, baseType: !1230, size: 8, offset: 16)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3663, file: !88, line: 944, baseType: !1230, size: 8, offset: 24)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3663, file: !88, line: 945, baseType: !2508, size: 128, offset: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3618, file: !6, line: 404, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3673)
!3673 = !{!3674, !3675, !3676}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3672, file: !88, line: 1081, baseType: !1230, size: 8)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3672, file: !88, line: 1082, baseType: !1230, size: 8, offset: 8)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3672, file: !88, line: 1083, baseType: !1230, size: 8, offset: 16)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !139, file: !6, line: 653, baseType: !3678, size: 64, offset: 7104)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3680)
!3680 = !{!3681, !3692, !3693, !3706, !3748, !3757, !3758}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3679, file: !6, line: 375, baseType: !3682, size: 72)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3682, file: !88, line: 350, baseType: !1230, size: 8)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3682, file: !88, line: 351, baseType: !1230, size: 8, offset: 8)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3682, file: !88, line: 353, baseType: !3568, size: 16, offset: 16)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3682, file: !88, line: 354, baseType: !1230, size: 8, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3682, file: !88, line: 355, baseType: !1230, size: 8, offset: 40)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3682, file: !88, line: 356, baseType: !1230, size: 8, offset: 48)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3682, file: !88, line: 357, baseType: !1230, size: 8, offset: 56)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3682, file: !88, line: 358, baseType: !1230, size: 8, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3679, file: !6, line: 377, baseType: !235, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3679, file: !6, line: 381, baseType: !3694, size: 1024, offset: 192)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3695, size: 1024, elements: !145)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3696, file: !88, line: 784, baseType: !1230, size: 8)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3696, file: !88, line: 785, baseType: !1230, size: 8, offset: 8)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3696, file: !88, line: 787, baseType: !1230, size: 8, offset: 16)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3696, file: !88, line: 788, baseType: !1230, size: 8, offset: 24)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3696, file: !88, line: 789, baseType: !1230, size: 8, offset: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3696, file: !88, line: 790, baseType: !1230, size: 8, offset: 40)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3696, file: !88, line: 791, baseType: !1230, size: 8, offset: 48)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3696, file: !88, line: 792, baseType: !1230, size: 8, offset: 56)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3679, file: !6, line: 385, baseType: !3707, size: 2048, offset: 1216)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3708, size: 2048, elements: !2092)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3710)
!3710 = !{!3711, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3709, file: !6, line: 235, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3714)
!3714 = !{!3715, !3727, !3728, !3729, !3731}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3713, file: !6, line: 83, baseType: !3716, size: 72)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3716, file: !88, line: 390, baseType: !1230, size: 8)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3716, file: !88, line: 391, baseType: !1230, size: 8, offset: 8)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3716, file: !88, line: 393, baseType: !1230, size: 8, offset: 16)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3716, file: !88, line: 394, baseType: !1230, size: 8, offset: 24)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3716, file: !88, line: 395, baseType: !1230, size: 8, offset: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3716, file: !88, line: 396, baseType: !1230, size: 8, offset: 40)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3716, file: !88, line: 397, baseType: !1230, size: 8, offset: 48)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3716, file: !88, line: 398, baseType: !1230, size: 8, offset: 56)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3716, file: !88, line: 399, baseType: !1230, size: 8, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3713, file: !6, line: 85, baseType: !136, size: 32, offset: 96)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3713, file: !6, line: 86, baseType: !3594, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3713, file: !6, line: 91, baseType: !3730, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3713, file: !6, line: 93, baseType: !235, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3709, file: !6, line: 237, baseType: !3712, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3709, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3709, file: !6, line: 243, baseType: !3695, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3709, file: !6, line: 245, baseType: !136, size: 32, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3709, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3709, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3709, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3709, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3709, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3709, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3709, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3709, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3709, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3709, file: !6, line: 257, baseType: !171, size: 5568, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3709, file: !6, line: 258, baseType: !170, size: 64, offset: 5952)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3709, file: !6, line: 259, baseType: !1831, size: 256, offset: 6016)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3679, file: !6, line: 389, baseType: !3749, size: 2048, offset: 3264)
!3749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3750, size: 2048, elements: !2092)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3751, file: !6, line: 323, baseType: !7, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3751, file: !6, line: 324, baseType: !3166, size: 32, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3751, file: !6, line: 328, baseType: !3756, offset: 64)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3713, elements: !2193)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3679, file: !6, line: 391, baseType: !3594, size: 64, offset: 5312)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3679, file: !6, line: 392, baseType: !136, size: 32, offset: 5376)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !139, file: !6, line: 655, baseType: !3678, size: 64, offset: 7168)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !139, file: !6, line: 656, baseType: !3761, size: 1024, offset: 7232)
!3761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3730, size: 1024, elements: !145)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !139, file: !6, line: 657, baseType: !3761, size: 1024, offset: 8256)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !139, file: !6, line: 659, baseType: !3764, size: 64, offset: 9280)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !139, file: !6, line: 661, baseType: !277, size: 16, offset: 9344)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !139, file: !6, line: 662, baseType: !1229, size: 8, offset: 9360)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !139, file: !6, line: 663, baseType: !1229, size: 8, offset: 9368)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !139, file: !6, line: 664, baseType: !1229, size: 8, offset: 9376)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !139, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !139, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !139, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !139, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !139, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !139, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !139, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !139, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !139, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !139, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !139, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !139, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !139, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !139, file: !6, line: 679, baseType: !136, size: 32, offset: 9408)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !139, file: !6, line: 682, baseType: !235, size: 64, offset: 9472)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !139, file: !6, line: 683, baseType: !235, size: 64, offset: 9536)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !139, file: !6, line: 684, baseType: !235, size: 64, offset: 9600)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !139, file: !6, line: 686, baseType: !181, size: 128, offset: 9664)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !139, file: !6, line: 688, baseType: !136, size: 32, offset: 9792)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !139, file: !6, line: 690, baseType: !148, size: 32, offset: 9824)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !139, file: !6, line: 691, baseType: !704, size: 32, offset: 9856)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !139, file: !6, line: 693, baseType: !285, size: 64, offset: 9920)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !139, file: !6, line: 696, baseType: !285, size: 64, offset: 9984)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !139, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !139, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !139, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !139, file: !6, line: 702, baseType: !3796, size: 64, offset: 10112)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !139, file: !6, line: 703, baseType: !136, size: 32, offset: 10176)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !139, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !139, file: !6, line: 705, baseType: !3801, size: 64, offset: 10240)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3802)
!3802 = !{!3803, !3804}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3801, file: !6, line: 506, baseType: !7, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3801, file: !6, line: 512, baseType: !136, size: 32, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !139, file: !6, line: 706, baseType: !3806, size: 128, offset: 10304)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3807)
!3807 = !{!3808, !3809, !3810, !3811}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3806, file: !6, line: 529, baseType: !7, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3806, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3806, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3806, file: !6, line: 551, baseType: !136, size: 32, offset: 96)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !139, file: !6, line: 707, baseType: !3806, size: 128, offset: 10432)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !139, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !139, file: !6, line: 710, baseType: !816, size: 16, offset: 10592)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !139, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !2707, line: 30, baseType: !817)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!3820 = !{!0, !3821, !3826, !3831, !3834, !3836, !3841, !3902, !3919, !3923, !3926, !3931, !3934}
!3821 = !DIGlobalVariableExpression(var: !3822, expr: !DIExpression())
!3822 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description213", scope: !2, file: !3, line: 18, type: !3823, isLocal: true, isDefinition: true, align: 8)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 368, elements: !3824)
!3824 = !{!3825}
!3825 = !DISubrange(count: 46)
!3826 = !DIGlobalVariableExpression(var: !3827, expr: !DIExpression())
!3827 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file214", scope: !2, file: !3, line: 19, type: !3828, isLocal: true, isDefinition: true, align: 8)
!3828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 336, elements: !3829)
!3829 = !{!3830}
!3830 = !DISubrange(count: 42)
!3831 = !DIGlobalVariableExpression(var: !3832, expr: !DIExpression())
!3832 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license215", scope: !2, file: !3, line: 19, type: !3833, isLocal: true, isDefinition: true, align: 8)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 160, elements: !2063)
!3834 = !DIGlobalVariableExpression(var: !3835, expr: !DIExpression())
!3835 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hanwang_driver_init216", scope: !2, file: !3, line: 446, type: !137, isLocal: true, isDefinition: true)
!3836 = !DIGlobalVariableExpression(var: !3837, expr: !DIExpression())
!3837 = distinct !DIGlobalVariable(name: "__exitcall_hanwang_driver_exit", scope: !2, file: !3, line: 446, type: !3838, isLocal: true, isDefinition: true)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3839, line: 117, baseType: !3840)
!3839 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!3841 = !DIGlobalVariableExpression(var: !3842, expr: !DIExpression())
!3842 = distinct !DIGlobalVariable(name: "hanwang_driver", scope: !2, file: !3, line: 439, type: !3843, isLocal: true, isDefinition: true)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3844)
!3844 = !{!3845, !3846, !3867, !3871, !3875, !3879, !3883, !3884, !3885, !3886, !3887, !3888, !3893, !3898, !3899, !3900, !3901}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3843, file: !6, line: 1185, baseType: !178, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3843, file: !6, line: 1187, baseType: !3847, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!136, !3708, !3850}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3259, line: 121, size: 256, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3852, file: !3259, line: 123, baseType: !817, size: 16)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3852, file: !3259, line: 126, baseType: !817, size: 16, offset: 16)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3852, file: !3259, line: 127, baseType: !817, size: 16, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3852, file: !3259, line: 128, baseType: !817, size: 16, offset: 48)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3852, file: !3259, line: 129, baseType: !817, size: 16, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3852, file: !3259, line: 132, baseType: !1230, size: 8, offset: 80)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3852, file: !3259, line: 133, baseType: !1230, size: 8, offset: 88)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3852, file: !3259, line: 134, baseType: !1230, size: 8, offset: 96)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3852, file: !3259, line: 137, baseType: !1230, size: 8, offset: 104)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3852, file: !3259, line: 138, baseType: !1230, size: 8, offset: 112)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3852, file: !3259, line: 139, baseType: !1230, size: 8, offset: 120)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3852, file: !3259, line: 142, baseType: !1230, size: 8, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3852, file: !3259, line: 145, baseType: !3278, size: 64, align: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3843, file: !6, line: 1190, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !3708}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3843, file: !6, line: 1192, baseType: !3872, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!136, !3708, !7, !137}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3843, file: !6, line: 1195, baseType: !3876, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!136, !3708, !3289}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3843, file: !6, line: 1196, baseType: !3880, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!136, !3708}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3843, file: !6, line: 1197, baseType: !3880, size: 64, offset: 384)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3843, file: !6, line: 1199, baseType: !3880, size: 64, offset: 448)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3843, file: !6, line: 1200, baseType: !3880, size: 64, offset: 512)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3843, file: !6, line: 1202, baseType: !3850, size: 64, offset: 576)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3843, file: !6, line: 1203, baseType: !289, size: 64, offset: 640)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3843, file: !6, line: 1205, baseType: !3889, size: 128, offset: 704)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3889, file: !6, line: 1092, baseType: !194)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3889, file: !6, line: 1093, baseType: !181, size: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3843, file: !6, line: 1206, baseType: !3894, size: 1216, offset: 832)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3895)
!3895 = !{!3896, !3897}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3894, file: !6, line: 1114, baseType: !3247, size: 1152)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3894, file: !6, line: 1115, baseType: !136, size: 32, offset: 1152)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3843, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3843, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3843, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3843, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3902 = !DIGlobalVariableExpression(var: !3903, expr: !DIExpression())
!3903 = distinct !DIGlobalVariable(name: "features_array", scope: !2, file: !3, line: 75, type: !3904, isLocal: true, isDefinition: true)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, size: 1920, elements: !3917)
!3905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3906)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hanwang_features", file: !3, line: 63, size: 384, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3906, file: !3, line: 64, baseType: !277, size: 16)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3906, file: !3, line: 65, baseType: !235, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3906, file: !3, line: 66, baseType: !113, size: 32, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_len", scope: !3906, file: !3, line: 67, baseType: !136, size: 32, offset: 160)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !3906, file: !3, line: 68, baseType: !136, size: 32, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !3906, file: !3, line: 69, baseType: !136, size: 32, offset: 224)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "max_tilt_x", scope: !3906, file: !3, line: 70, baseType: !136, size: 32, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "max_tilt_y", scope: !3906, file: !3, line: 71, baseType: !136, size: 32, offset: 288)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "max_pressure", scope: !3906, file: !3, line: 72, baseType: !136, size: 32, offset: 320)
!3917 = !{!3918}
!3918 = !DISubrange(count: 5)
!3919 = !DIGlobalVariableExpression(var: !3920, expr: !DIExpression())
!3920 = distinct !DIGlobalVariable(name: "hw_eventtypes", scope: !2, file: !3, line: 88, type: !3921, isLocal: true, isDefinition: true)
!3921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, size: 96, elements: !236)
!3922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!3923 = !DIGlobalVariableExpression(var: !3924, expr: !DIExpression())
!3924 = distinct !DIGlobalVariable(name: "hw_absevents", scope: !2, file: !3, line: 92, type: !3925, isLocal: true, isDefinition: true)
!3925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, size: 288, elements: !3275)
!3926 = !DIGlobalVariableExpression(var: !3927, expr: !DIExpression())
!3927 = distinct !DIGlobalVariable(name: "hw_btnevents", scope: !2, file: !3, line: 97, type: !3928, isLocal: true, isDefinition: true)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, size: 480, elements: !3929)
!3929 = !{!3930}
!3930 = !DISubrange(count: 15)
!3931 = !DIGlobalVariableExpression(var: !3932, expr: !DIExpression())
!3932 = distinct !DIGlobalVariable(name: "hw_mscevents", scope: !2, file: !3, line: 103, type: !3933, isLocal: true, isDefinition: true)
!3933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, size: 32, elements: !1248)
!3934 = !DIGlobalVariableExpression(var: !3935, expr: !DIExpression())
!3935 = distinct !DIGlobalVariable(name: "hanwang_ids", scope: !2, file: !3, line: 431, type: !3936, isLocal: true, isDefinition: true)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3851, size: 512, elements: !162)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 392, elements: !3938)
!3938 = !{!3939}
!3939 = !DISubrange(count: 49)
!3940 = !{i32 7, !"Dwarf Version", i32 4}
!3941 = !{i32 2, !"Debug Info Version", i32 3}
!3942 = !{i32 1, !"wchar_size", i32 2}
!3943 = !{i32 1, !"Code Model", i32 2}
!3944 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3945 = distinct !DISubprogram(name: "hanwang_driver_init", scope: !3, file: !3, line: 446, type: !3946, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!136}
!3948 = !DILocation(line: 446, column: 1, scope: !3945)
!3949 = distinct !DISubprogram(name: "hanwang_driver_exit", scope: !3, file: !3, line: 446, type: !1752, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!3950 = !DILocation(line: 446, column: 1, scope: !3949)
!3951 = distinct !DISubprogram(name: "hanwang_probe", scope: !3, file: !3, line: 316, type: !3848, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!3952 = !DILocalVariable(name: "intf", arg: 1, scope: !3951, file: !3, line: 316, type: !3708)
!3953 = !DILocation(line: 316, column: 48, scope: !3951)
!3954 = !DILocalVariable(name: "id", arg: 2, scope: !3951, file: !3, line: 316, type: !3850)
!3955 = !DILocation(line: 316, column: 82, scope: !3951)
!3956 = !DILocalVariable(name: "dev", scope: !3951, file: !3, line: 318, type: !138)
!3957 = !DILocation(line: 318, column: 21, scope: !3951)
!3958 = !DILocation(line: 318, column: 47, scope: !3951)
!3959 = !DILocation(line: 318, column: 27, scope: !3951)
!3960 = !DILocalVariable(name: "endpoint", scope: !3951, file: !3, line: 319, type: !3961)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3962 = !DILocation(line: 319, column: 34, scope: !3951)
!3963 = !DILocalVariable(name: "hanwang", scope: !3951, file: !3, line: 320, type: !3964)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hanwang", file: !3, line: 50, size: 1216, elements: !3966)
!3966 = !{!3967, !3968, !3969, !4244, !4245, !4300, !4302, !4303, !4304, !4306}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3965, file: !3, line: 51, baseType: !3594, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "data_dma", scope: !3965, file: !3, line: 52, baseType: !877, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3965, file: !3, line: 53, baseType: !3970, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3972, line: 131, size: 10432, elements: !3973)
!3972 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3973 = !{!3974, !3975, !3976, !3977, !3985, !3986, !3987, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4014, !4019, !4114, !4117, !4118, !4119, !4121, !4124, !4134, !4135, !4136, !4137, !4138, !4142, !4146, !4150, !4154, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4241, !4242}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3971, file: !3972, line: 132, baseType: !178, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3971, file: !3972, line: 133, baseType: !178, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3971, file: !3972, line: 134, baseType: !178, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3971, file: !3972, line: 135, baseType: !3978, size: 64, offset: 192)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3979, line: 59, size: 64, elements: !3980)
!3979 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3980 = !{!3981, !3982, !3983, !3984}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3978, file: !3979, line: 60, baseType: !817, size: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3978, file: !3979, line: 61, baseType: !817, size: 16, offset: 16)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3978, file: !3979, line: 62, baseType: !817, size: 16, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3978, file: !3979, line: 63, baseType: !817, size: 16, offset: 48)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3971, file: !3972, line: 137, baseType: !1247, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3971, file: !3972, line: 139, baseType: !1247, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3971, file: !3972, line: 140, baseType: !3988, size: 768, offset: 384)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 768, elements: !2098)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3971, file: !3972, line: 141, baseType: !1247, size: 64, offset: 1152)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3971, file: !3972, line: 142, baseType: !1247, size: 64, offset: 1216)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3971, file: !3972, line: 143, baseType: !1247, size: 64, offset: 1280)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3971, file: !3972, line: 144, baseType: !1247, size: 64, offset: 1344)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3971, file: !3972, line: 145, baseType: !1247, size: 64, offset: 1408)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3971, file: !3972, line: 146, baseType: !3550, size: 128, offset: 1472)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3971, file: !3972, line: 147, baseType: !1247, size: 64, offset: 1600)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3971, file: !3972, line: 149, baseType: !7, size: 32, offset: 1664)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3971, file: !3972, line: 151, baseType: !7, size: 32, offset: 1696)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3971, file: !3972, line: 152, baseType: !7, size: 32, offset: 1728)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3971, file: !3972, line: 153, baseType: !137, size: 64, offset: 1792)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3971, file: !3972, line: 155, baseType: !4001, size: 64, offset: 1856)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!136, !3970, !4004, !2484}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4006)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3979, line: 114, size: 320, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4011, !4012}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4006, file: !3979, line: 116, baseType: !1230, size: 8)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4006, file: !3979, line: 117, baseType: !1230, size: 8, offset: 8)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4006, file: !3979, line: 118, baseType: !817, size: 16, offset: 16)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4006, file: !3979, line: 119, baseType: !150, size: 32, offset: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4006, file: !3979, line: 120, baseType: !4013, size: 256, offset: 64)
!4013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 256, elements: !2092)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3971, file: !3972, line: 158, baseType: !4015, size: 64, offset: 1920)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!136, !3970, !4018}
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3971, file: !3972, line: 161, baseType: !4020, size: 64, offset: 1984)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3972, line: 534, size: 896, elements: !4022)
!4022 = !{!4023, !4090, !4094, !4098, !4102, !4103, !4107, !4108, !4109, !4110, !4111, !4112}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4021, file: !3972, line: 535, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!136, !3970, !4027, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3979, line: 450, size: 384, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4038, !4043}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4028, file: !3979, line: 451, baseType: !817, size: 16)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4028, file: !3979, line: 452, baseType: !1081, size: 16, offset: 16)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4028, file: !3979, line: 453, baseType: !817, size: 16, offset: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4028, file: !3979, line: 454, baseType: !4034, size: 32, offset: 48)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3979, line: 316, size: 32, elements: !4035)
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4034, file: !3979, line: 317, baseType: !817, size: 16)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4034, file: !3979, line: 318, baseType: !817, size: 16, offset: 16)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4028, file: !3979, line: 455, baseType: !4039, size: 32, offset: 80)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3979, line: 306, size: 32, elements: !4040)
!4040 = !{!4041, !4042}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4039, file: !3979, line: 307, baseType: !817, size: 16)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4039, file: !3979, line: 308, baseType: !817, size: 16, offset: 16)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4028, file: !3979, line: 463, baseType: !4044, size: 256, offset: 128)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4028, file: !3979, line: 457, size: 256, elements: !4045)
!4045 = !{!4046, !4057, !4063, !4075, !4085}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4044, file: !3979, line: 458, baseType: !4047, size: 80)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3979, line: 345, size: 80, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4047, file: !3979, line: 346, baseType: !1081, size: 16)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4047, file: !3979, line: 347, baseType: !4051, size: 64, offset: 16)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3979, line: 333, size: 64, elements: !4052)
!4052 = !{!4053, !4054, !4055, !4056}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4051, file: !3979, line: 334, baseType: !817, size: 16)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4051, file: !3979, line: 335, baseType: !817, size: 16, offset: 16)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4051, file: !3979, line: 336, baseType: !817, size: 16, offset: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4051, file: !3979, line: 337, baseType: !817, size: 16, offset: 48)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4044, file: !3979, line: 459, baseType: !4058, size: 96)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3979, line: 356, size: 96, elements: !4059)
!4059 = !{!4060, !4061, !4062}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4058, file: !3979, line: 357, baseType: !1081, size: 16)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4058, file: !3979, line: 358, baseType: !1081, size: 16, offset: 16)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4058, file: !3979, line: 359, baseType: !4051, size: 64, offset: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4044, file: !3979, line: 460, baseType: !4064, size: 256)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3979, line: 401, size: 256, elements: !4065)
!4065 = !{!4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4064, file: !3979, line: 402, baseType: !817, size: 16)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4064, file: !3979, line: 403, baseType: !817, size: 16, offset: 16)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4064, file: !3979, line: 404, baseType: !1081, size: 16, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4064, file: !3979, line: 405, baseType: !1081, size: 16, offset: 48)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4064, file: !3979, line: 406, baseType: !817, size: 16, offset: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4064, file: !3979, line: 408, baseType: !4051, size: 64, offset: 80)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4064, file: !3979, line: 410, baseType: !150, size: 32, offset: 160)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4064, file: !3979, line: 411, baseType: !4074, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4044, file: !3979, line: 461, baseType: !4076, size: 192)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4077, size: 192, elements: !162)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3979, line: 372, size: 96, elements: !4078)
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4077, file: !3979, line: 373, baseType: !817, size: 16)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4077, file: !3979, line: 374, baseType: !817, size: 16, offset: 16)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4077, file: !3979, line: 376, baseType: !1081, size: 16, offset: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4077, file: !3979, line: 377, baseType: !1081, size: 16, offset: 48)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4077, file: !3979, line: 379, baseType: !817, size: 16, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4077, file: !3979, line: 380, baseType: !1081, size: 16, offset: 80)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4044, file: !3979, line: 462, baseType: !4086, size: 32)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3979, line: 422, size: 32, elements: !4087)
!4087 = !{!4088, !4089}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4086, file: !3979, line: 423, baseType: !817, size: 16)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4086, file: !3979, line: 424, baseType: !817, size: 16, offset: 16)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4021, file: !3972, line: 537, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!136, !3970, !136}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4021, file: !3972, line: 539, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!136, !3970, !136, !136}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4021, file: !3972, line: 540, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !3970, !816}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4021, file: !3972, line: 541, baseType: !4099, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4021, file: !3972, line: 543, baseType: !4104, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !4020}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4021, file: !3972, line: 545, baseType: !137, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4021, file: !3972, line: 547, baseType: !3550, size: 128, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4021, file: !3972, line: 549, baseType: !1050, size: 192, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4021, file: !3972, line: 551, baseType: !136, size: 32, offset: 768)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4021, file: !3972, line: 552, baseType: !4027, size: 64, offset: 832)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4021, file: !3972, line: 553, baseType: !4113, offset: 896)
!4113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, elements: !2193)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3971, file: !3972, line: 163, baseType: !4115, size: 64, offset: 2048)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3972, line: 24, flags: DIFlagFwdDecl)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3971, file: !3972, line: 165, baseType: !7, size: 32, offset: 2112)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3971, file: !3972, line: 166, baseType: !3366, size: 320, offset: 2176)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3971, file: !3972, line: 168, baseType: !4120, size: 64, offset: 2496)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !162)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3971, file: !3972, line: 170, baseType: !4122, size: 64, offset: 2560)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3972, line: 170, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3971, file: !3972, line: 172, baseType: !4125, size: 64, offset: 2624)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3979, line: 90, size: 192, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132, !4133}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4126, file: !3979, line: 91, baseType: !1322, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4126, file: !3979, line: 92, baseType: !1322, size: 32, offset: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4126, file: !3979, line: 93, baseType: !1322, size: 32, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4126, file: !3979, line: 94, baseType: !1322, size: 32, offset: 96)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4126, file: !3979, line: 95, baseType: !1322, size: 32, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4126, file: !3979, line: 96, baseType: !1322, size: 32, offset: 160)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3971, file: !3972, line: 174, baseType: !3988, size: 768, offset: 2688)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3971, file: !3972, line: 175, baseType: !1247, size: 64, offset: 3456)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3971, file: !3972, line: 176, baseType: !1247, size: 64, offset: 3520)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3971, file: !3972, line: 177, baseType: !1247, size: 64, offset: 3584)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3971, file: !3972, line: 179, baseType: !4139, size: 64, offset: 3648)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!136, !3970}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3971, file: !3972, line: 180, baseType: !4143, size: 64, offset: 3712)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{null, !3970}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3971, file: !3972, line: 181, baseType: !4147, size: 64, offset: 3776)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!136, !3970, !313}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3971, file: !3972, line: 182, baseType: !4151, size: 64, offset: 3840)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!136, !3970, !7, !7, !136}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3971, file: !3972, line: 184, baseType: !4155, size: 64, offset: 3904)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3972, line: 337, size: 576, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4228, !4229}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4156, file: !3972, line: 339, baseType: !137, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4156, file: !3972, line: 341, baseType: !136, size: 32, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4156, file: !3972, line: 342, baseType: !178, size: 64, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4156, file: !3972, line: 344, baseType: !3970, size: 64, offset: 192)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4156, file: !3972, line: 345, baseType: !4163, size: 64, offset: 256)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3972, line: 302, size: 960, elements: !4165)
!4165 = !{!4166, !4167, !4171, !4182, !4186, !4190, !4217, !4221, !4222, !4223, !4224, !4225, !4226, !4227}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4164, file: !3972, line: 304, baseType: !137, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4164, file: !3972, line: 306, baseType: !4168, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !4155, !7, !7, !136}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4164, file: !3972, line: 307, baseType: !4172, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !4155, !4175, !7}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4177)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3972, line: 32, size: 64, elements: !4178)
!4178 = !{!4179, !4180, !4181}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4177, file: !3972, line: 33, baseType: !817, size: 16)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4177, file: !3972, line: 34, baseType: !817, size: 16, offset: 16)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4177, file: !3972, line: 35, baseType: !1322, size: 32, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4164, file: !3972, line: 309, baseType: !4183, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!447, !4155, !7, !7, !136}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4164, file: !3972, line: 310, baseType: !4187, size: 64, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!447, !4163, !3970}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4164, file: !3972, line: 311, baseType: !4191, size: 64, offset: 320)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!136, !4163, !3970, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3259, line: 342, size: 1600, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4205, !4207, !4208, !4209, !4210, !4211, !4212, !4214, !4215, !4216}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4196, file: !3259, line: 344, baseType: !3278, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4196, file: !3259, line: 346, baseType: !817, size: 16, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4196, file: !3259, line: 347, baseType: !817, size: 16, offset: 80)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4196, file: !3259, line: 348, baseType: !817, size: 16, offset: 96)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4196, file: !3259, line: 349, baseType: !817, size: 16, offset: 112)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4196, file: !3259, line: 351, baseType: !4204, size: 64, offset: 128)
!4204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3278, size: 64, elements: !1248)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4196, file: !3259, line: 352, baseType: !4206, size: 768, offset: 192)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3278, size: 768, elements: !2098)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4196, file: !3259, line: 353, baseType: !4204, size: 64, offset: 960)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4196, file: !3259, line: 354, baseType: !4204, size: 64, offset: 1024)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4196, file: !3259, line: 355, baseType: !4204, size: 64, offset: 1088)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4196, file: !3259, line: 356, baseType: !4204, size: 64, offset: 1152)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4196, file: !3259, line: 357, baseType: !4204, size: 64, offset: 1216)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4196, file: !3259, line: 358, baseType: !4213, size: 128, offset: 1280)
!4213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3278, size: 128, elements: !162)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4196, file: !3259, line: 359, baseType: !4204, size: 64, offset: 1408)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4196, file: !3259, line: 360, baseType: !4204, size: 64, offset: 1472)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4196, file: !3259, line: 362, baseType: !3278, size: 64, offset: 1536)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4164, file: !3972, line: 312, baseType: !4218, size: 64, offset: 384)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !4155}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4164, file: !3972, line: 313, baseType: !4218, size: 64, offset: 448)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4164, file: !3972, line: 315, baseType: !447, size: 8, offset: 512)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4164, file: !3972, line: 316, baseType: !136, size: 32, offset: 544)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4164, file: !3972, line: 317, baseType: !178, size: 64, offset: 576)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4164, file: !3972, line: 319, baseType: !4194, size: 64, offset: 640)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4164, file: !3972, line: 321, baseType: !181, size: 128, offset: 704)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4164, file: !3972, line: 322, baseType: !181, size: 128, offset: 832)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4156, file: !3972, line: 347, baseType: !181, size: 128, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4156, file: !3972, line: 348, baseType: !181, size: 128, offset: 448)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3971, file: !3972, line: 186, baseType: !194, offset: 3968)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3971, file: !3972, line: 187, baseType: !1050, size: 192, offset: 3968)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3971, file: !3972, line: 189, baseType: !7, size: 32, offset: 4160)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3971, file: !3972, line: 190, baseType: !447, size: 8, offset: 4192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3971, file: !3972, line: 192, baseType: !171, size: 5568, offset: 4224)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3971, file: !3972, line: 194, baseType: !181, size: 128, offset: 9792)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3971, file: !3972, line: 195, baseType: !181, size: 128, offset: 9920)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3971, file: !3972, line: 197, baseType: !7, size: 32, offset: 10048)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3971, file: !3972, line: 198, baseType: !7, size: 32, offset: 10080)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3971, file: !3972, line: 199, baseType: !4240, size: 64, offset: 10112)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3971, file: !3972, line: 201, baseType: !447, size: 8, offset: 10176)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3971, file: !3972, line: 203, baseType: !4243, size: 192, offset: 10240)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 192, elements: !236)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "usbdev", scope: !3965, file: !3, line: 54, baseType: !138, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3965, file: !3, line: 55, baseType: !4246, size: 64, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4292}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4247, file: !6, line: 1563, baseType: !3166, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4247, file: !6, line: 1564, baseType: !136, size: 32, offset: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4247, file: !6, line: 1565, baseType: !137, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4247, file: !6, line: 1566, baseType: !704, size: 32, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4247, file: !6, line: 1567, baseType: !704, size: 32, offset: 160)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4247, file: !6, line: 1570, baseType: !181, size: 128, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4247, file: !6, line: 1572, baseType: !181, size: 128, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4247, file: !6, line: 1573, baseType: !4257, size: 64, offset: 448)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4263, !4264}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4258, file: !6, line: 1361, baseType: !181, size: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4258, file: !6, line: 1362, baseType: !1358, size: 128, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4258, file: !6, line: 1363, baseType: !194, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4258, file: !6, line: 1364, baseType: !704, size: 32, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4258, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4247, file: !6, line: 1574, baseType: !138, size: 64, offset: 512)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4247, file: !6, line: 1575, baseType: !3730, size: 64, offset: 576)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4247, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4247, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4247, file: !6, line: 1578, baseType: !136, size: 32, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4247, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4247, file: !6, line: 1580, baseType: !137, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4247, file: !6, line: 1581, baseType: !877, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4247, file: !6, line: 1582, baseType: !4274, size: 64, offset: 896)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4247, file: !6, line: 1583, baseType: !136, size: 32, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4247, file: !6, line: 1584, baseType: !136, size: 32, offset: 992)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4247, file: !6, line: 1585, baseType: !148, size: 32, offset: 1024)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4247, file: !6, line: 1586, baseType: !148, size: 32, offset: 1056)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4247, file: !6, line: 1587, baseType: !3594, size: 64, offset: 1088)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4247, file: !6, line: 1588, baseType: !877, size: 64, offset: 1152)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4247, file: !6, line: 1589, baseType: !136, size: 32, offset: 1216)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4247, file: !6, line: 1590, baseType: !136, size: 32, offset: 1248)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4247, file: !6, line: 1591, baseType: !136, size: 32, offset: 1280)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4247, file: !6, line: 1593, baseType: !136, size: 32, offset: 1312)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4247, file: !6, line: 1594, baseType: !137, size: 64, offset: 1344)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4247, file: !6, line: 1595, baseType: !4288, size: 64, offset: 1408)
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4289)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !4246}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4247, file: !6, line: 1596, baseType: !4293, offset: 1472)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4294, elements: !2193)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4295)
!4295 = !{!4296, !4297, !4298, !4299}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4294, file: !6, line: 1352, baseType: !7, size: 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4294, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4294, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4294, file: !6, line: 1355, baseType: !136, size: 32, offset: 96)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !3965, file: !3, line: 56, baseType: !4301, size: 64, offset: 320)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "current_tool", scope: !3965, file: !3, line: 57, baseType: !7, size: 32, offset: 384)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "current_id", scope: !3965, file: !3, line: 58, baseType: !7, size: 32, offset: 416)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3965, file: !3, line: 59, baseType: !4305, size: 512, offset: 448)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 512, elements: !240)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3965, file: !3, line: 60, baseType: !2501, size: 256, offset: 960)
!4307 = !DILocation(line: 320, column: 18, scope: !3951)
!4308 = !DILocalVariable(name: "input_dev", scope: !3951, file: !3, line: 321, type: !3970)
!4309 = !DILocation(line: 321, column: 20, scope: !3951)
!4310 = !DILocalVariable(name: "error", scope: !3951, file: !3, line: 322, type: !136)
!4311 = !DILocation(line: 322, column: 6, scope: !3951)
!4312 = !DILocalVariable(name: "i", scope: !3951, file: !3, line: 323, type: !136)
!4313 = !DILocation(line: 323, column: 6, scope: !3951)
!4314 = !DILocation(line: 325, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 325, column: 6)
!4316 = !DILocation(line: 325, column: 12, scope: !4315)
!4317 = !DILocation(line: 325, column: 28, scope: !4315)
!4318 = !DILocation(line: 325, column: 33, scope: !4315)
!4319 = !DILocation(line: 325, column: 47, scope: !4315)
!4320 = !DILocation(line: 325, column: 6, scope: !3951)
!4321 = !DILocation(line: 326, column: 3, scope: !4315)
!4322 = !DILocation(line: 328, column: 12, scope: !3951)
!4323 = !DILocation(line: 328, column: 10, scope: !3951)
!4324 = !DILocation(line: 329, column: 14, scope: !3951)
!4325 = !DILocation(line: 329, column: 12, scope: !3951)
!4326 = !DILocation(line: 330, column: 7, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 330, column: 6)
!4328 = !DILocation(line: 330, column: 15, scope: !4327)
!4329 = !DILocation(line: 330, column: 19, scope: !4327)
!4330 = !DILocation(line: 330, column: 6, scope: !3951)
!4331 = !DILocation(line: 331, column: 9, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 330, column: 30)
!4333 = !DILocation(line: 332, column: 3, scope: !4332)
!4334 = !DILocation(line: 335, column: 20, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 335, column: 6)
!4336 = !DILocation(line: 335, column: 25, scope: !4335)
!4337 = !DILocation(line: 335, column: 7, scope: !4335)
!4338 = !DILocation(line: 335, column: 6, scope: !3951)
!4339 = !DILocation(line: 336, column: 9, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 335, column: 35)
!4341 = !DILocation(line: 337, column: 3, scope: !4340)
!4342 = !DILocation(line: 340, column: 37, scope: !3951)
!4343 = !DILocation(line: 340, column: 42, scope: !3951)
!4344 = !DILocation(line: 340, column: 51, scope: !3951)
!4345 = !DILocation(line: 340, column: 61, scope: !3951)
!4346 = !DILocation(line: 341, column: 19, scope: !3951)
!4347 = !DILocation(line: 341, column: 28, scope: !3951)
!4348 = !DILocation(line: 340, column: 18, scope: !3951)
!4349 = !DILocation(line: 340, column: 2, scope: !3951)
!4350 = !DILocation(line: 340, column: 11, scope: !3951)
!4351 = !DILocation(line: 340, column: 16, scope: !3951)
!4352 = !DILocation(line: 342, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 342, column: 6)
!4354 = !DILocation(line: 342, column: 16, scope: !4353)
!4355 = !DILocation(line: 342, column: 6, scope: !3951)
!4356 = !DILocation(line: 343, column: 9, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 342, column: 22)
!4358 = !DILocation(line: 344, column: 3, scope: !4357)
!4359 = !DILocation(line: 347, column: 17, scope: !3951)
!4360 = !DILocation(line: 347, column: 2, scope: !3951)
!4361 = !DILocation(line: 347, column: 11, scope: !3951)
!4362 = !DILocation(line: 347, column: 15, scope: !3951)
!4363 = !DILocation(line: 348, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 348, column: 6)
!4365 = !DILocation(line: 348, column: 16, scope: !4364)
!4366 = !DILocation(line: 348, column: 6, scope: !3951)
!4367 = !DILocation(line: 349, column: 9, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 348, column: 21)
!4369 = !DILocation(line: 350, column: 3, scope: !4368)
!4370 = !DILocation(line: 353, column: 20, scope: !3951)
!4371 = !DILocation(line: 353, column: 2, scope: !3951)
!4372 = !DILocation(line: 353, column: 11, scope: !3951)
!4373 = !DILocation(line: 353, column: 18, scope: !3951)
!4374 = !DILocation(line: 354, column: 17, scope: !3951)
!4375 = !DILocation(line: 354, column: 2, scope: !3951)
!4376 = !DILocation(line: 354, column: 11, scope: !3951)
!4377 = !DILocation(line: 354, column: 15, scope: !3951)
!4378 = !DILocation(line: 356, column: 16, scope: !3951)
!4379 = !DILocation(line: 356, column: 21, scope: !3951)
!4380 = !DILocation(line: 356, column: 30, scope: !3951)
!4381 = !DILocation(line: 356, column: 2, scope: !3951)
!4382 = !DILocation(line: 357, column: 10, scope: !3951)
!4383 = !DILocation(line: 357, column: 19, scope: !3951)
!4384 = !DILocation(line: 357, column: 2, scope: !3951)
!4385 = !DILocation(line: 359, column: 10, scope: !3951)
!4386 = !DILocation(line: 359, column: 19, scope: !3951)
!4387 = !DILocation(line: 359, column: 25, scope: !3951)
!4388 = !DILocation(line: 359, column: 34, scope: !3951)
!4389 = !DILocation(line: 359, column: 44, scope: !3951)
!4390 = !DILocation(line: 359, column: 2, scope: !3951)
!4391 = !DILocation(line: 360, column: 20, scope: !3951)
!4392 = !DILocation(line: 360, column: 29, scope: !3951)
!4393 = !DILocation(line: 360, column: 2, scope: !3951)
!4394 = !DILocation(line: 360, column: 13, scope: !3951)
!4395 = !DILocation(line: 360, column: 18, scope: !3951)
!4396 = !DILocation(line: 361, column: 20, scope: !3951)
!4397 = !DILocation(line: 361, column: 29, scope: !3951)
!4398 = !DILocation(line: 361, column: 2, scope: !3951)
!4399 = !DILocation(line: 361, column: 13, scope: !3951)
!4400 = !DILocation(line: 361, column: 18, scope: !3951)
!4401 = !DILocation(line: 362, column: 18, scope: !3951)
!4402 = !DILocation(line: 362, column: 24, scope: !3951)
!4403 = !DILocation(line: 362, column: 35, scope: !3951)
!4404 = !DILocation(line: 362, column: 2, scope: !3951)
!4405 = !DILocation(line: 363, column: 27, scope: !3951)
!4406 = !DILocation(line: 363, column: 33, scope: !3951)
!4407 = !DILocation(line: 363, column: 2, scope: !3951)
!4408 = !DILocation(line: 363, column: 13, scope: !3951)
!4409 = !DILocation(line: 363, column: 17, scope: !3951)
!4410 = !DILocation(line: 363, column: 24, scope: !3951)
!4411 = !DILocation(line: 365, column: 20, scope: !3951)
!4412 = !DILocation(line: 365, column: 31, scope: !3951)
!4413 = !DILocation(line: 365, column: 2, scope: !3951)
!4414 = !DILocation(line: 367, column: 2, scope: !3951)
!4415 = !DILocation(line: 367, column: 13, scope: !3951)
!4416 = !DILocation(line: 367, column: 18, scope: !3951)
!4417 = !DILocation(line: 368, column: 2, scope: !3951)
!4418 = !DILocation(line: 368, column: 13, scope: !3951)
!4419 = !DILocation(line: 368, column: 19, scope: !3951)
!4420 = !DILocation(line: 370, column: 9, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 370, column: 2)
!4422 = !DILocation(line: 370, column: 7, scope: !4421)
!4423 = !DILocation(line: 370, column: 14, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 370, column: 2)
!4425 = !DILocation(line: 370, column: 16, scope: !4424)
!4426 = !DILocation(line: 370, column: 2, scope: !4421)
!4427 = !DILocation(line: 371, column: 27, scope: !4424)
!4428 = !DILocation(line: 371, column: 13, scope: !4424)
!4429 = !DILocation(line: 371, column: 31, scope: !4424)
!4430 = !DILocation(line: 371, column: 42, scope: !4424)
!4431 = !DILocation(line: 371, column: 3, scope: !4424)
!4432 = !DILocation(line: 370, column: 45, scope: !4424)
!4433 = !DILocation(line: 370, column: 2, scope: !4424)
!4434 = distinct !{!4434, !4426, !4435}
!4435 = !DILocation(line: 371, column: 47, scope: !4421)
!4436 = !DILocation(line: 373, column: 9, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 373, column: 2)
!4438 = !DILocation(line: 373, column: 7, scope: !4437)
!4439 = !DILocation(line: 373, column: 14, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 373, column: 2)
!4441 = !DILocation(line: 373, column: 16, scope: !4440)
!4442 = !DILocation(line: 373, column: 2, scope: !4437)
!4443 = !DILocation(line: 374, column: 26, scope: !4440)
!4444 = !DILocation(line: 374, column: 13, scope: !4440)
!4445 = !DILocation(line: 374, column: 30, scope: !4440)
!4446 = !DILocation(line: 374, column: 41, scope: !4440)
!4447 = !DILocation(line: 374, column: 3, scope: !4440)
!4448 = !DILocation(line: 373, column: 44, scope: !4440)
!4449 = !DILocation(line: 373, column: 2, scope: !4440)
!4450 = distinct !{!4450, !4442, !4451}
!4451 = !DILocation(line: 374, column: 47, scope: !4437)
!4452 = !DILocation(line: 376, column: 9, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 376, column: 2)
!4454 = !DILocation(line: 376, column: 7, scope: !4453)
!4455 = !DILocation(line: 376, column: 14, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 376, column: 2)
!4457 = !DILocation(line: 376, column: 16, scope: !4456)
!4458 = !DILocation(line: 376, column: 2, scope: !4453)
!4459 = !DILocation(line: 377, column: 26, scope: !4456)
!4460 = !DILocation(line: 377, column: 13, scope: !4456)
!4461 = !DILocation(line: 377, column: 30, scope: !4456)
!4462 = !DILocation(line: 377, column: 41, scope: !4456)
!4463 = !DILocation(line: 377, column: 3, scope: !4456)
!4464 = !DILocation(line: 376, column: 44, scope: !4456)
!4465 = !DILocation(line: 376, column: 2, scope: !4456)
!4466 = distinct !{!4466, !4458, !4467}
!4467 = !DILocation(line: 377, column: 47, scope: !4453)
!4468 = !DILocation(line: 379, column: 9, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 379, column: 2)
!4470 = !DILocation(line: 379, column: 7, scope: !4469)
!4471 = !DILocation(line: 379, column: 14, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 379, column: 2)
!4473 = !DILocation(line: 379, column: 16, scope: !4472)
!4474 = !DILocation(line: 379, column: 2, scope: !4469)
!4475 = !DILocation(line: 380, column: 26, scope: !4472)
!4476 = !DILocation(line: 380, column: 13, scope: !4472)
!4477 = !DILocation(line: 380, column: 30, scope: !4472)
!4478 = !DILocation(line: 380, column: 41, scope: !4472)
!4479 = !DILocation(line: 380, column: 3, scope: !4472)
!4480 = !DILocation(line: 379, column: 44, scope: !4472)
!4481 = !DILocation(line: 379, column: 2, scope: !4472)
!4482 = distinct !{!4482, !4474, !4483}
!4483 = !DILocation(line: 380, column: 47, scope: !4469)
!4484 = !DILocation(line: 382, column: 23, scope: !3951)
!4485 = !DILocation(line: 383, column: 12, scope: !3951)
!4486 = !DILocation(line: 383, column: 21, scope: !3951)
!4487 = !DILocation(line: 383, column: 31, scope: !3951)
!4488 = !DILocation(line: 382, column: 2, scope: !3951)
!4489 = !DILocation(line: 384, column: 23, scope: !3951)
!4490 = !DILocation(line: 385, column: 12, scope: !3951)
!4491 = !DILocation(line: 385, column: 21, scope: !3951)
!4492 = !DILocation(line: 385, column: 31, scope: !3951)
!4493 = !DILocation(line: 384, column: 2, scope: !3951)
!4494 = !DILocation(line: 386, column: 23, scope: !3951)
!4495 = !DILocation(line: 387, column: 12, scope: !3951)
!4496 = !DILocation(line: 387, column: 21, scope: !3951)
!4497 = !DILocation(line: 387, column: 31, scope: !3951)
!4498 = !DILocation(line: 386, column: 2, scope: !3951)
!4499 = !DILocation(line: 388, column: 23, scope: !3951)
!4500 = !DILocation(line: 389, column: 12, scope: !3951)
!4501 = !DILocation(line: 389, column: 21, scope: !3951)
!4502 = !DILocation(line: 389, column: 31, scope: !3951)
!4503 = !DILocation(line: 388, column: 2, scope: !3951)
!4504 = !DILocation(line: 390, column: 23, scope: !3951)
!4505 = !DILocation(line: 391, column: 12, scope: !3951)
!4506 = !DILocation(line: 391, column: 21, scope: !3951)
!4507 = !DILocation(line: 391, column: 31, scope: !3951)
!4508 = !DILocation(line: 390, column: 2, scope: !3951)
!4509 = !DILocation(line: 393, column: 14, scope: !3951)
!4510 = !DILocation(line: 393, column: 20, scope: !3951)
!4511 = !DILocation(line: 393, column: 36, scope: !3951)
!4512 = !DILocation(line: 393, column: 48, scope: !3951)
!4513 = !DILocation(line: 393, column: 11, scope: !3951)
!4514 = !DILocation(line: 394, column: 19, scope: !3951)
!4515 = !DILocation(line: 394, column: 28, scope: !3951)
!4516 = !DILocation(line: 394, column: 33, scope: !3951)
!4517 = !DILocation(line: 395, column: 4, scope: !3951)
!4518 = !DILocation(line: 396, column: 4, scope: !3951)
!4519 = !DILocation(line: 396, column: 13, scope: !3951)
!4520 = !DILocation(line: 396, column: 19, scope: !3951)
!4521 = !DILocation(line: 396, column: 28, scope: !3951)
!4522 = !DILocation(line: 396, column: 38, scope: !3951)
!4523 = !DILocation(line: 397, column: 17, scope: !3951)
!4524 = !DILocation(line: 397, column: 26, scope: !3951)
!4525 = !DILocation(line: 397, column: 36, scope: !3951)
!4526 = !DILocation(line: 394, column: 2, scope: !3951)
!4527 = !DILocation(line: 398, column: 31, scope: !3951)
!4528 = !DILocation(line: 398, column: 40, scope: !3951)
!4529 = !DILocation(line: 398, column: 2, scope: !3951)
!4530 = !DILocation(line: 398, column: 11, scope: !3951)
!4531 = !DILocation(line: 398, column: 16, scope: !3951)
!4532 = !DILocation(line: 398, column: 29, scope: !3951)
!4533 = !DILocation(line: 399, column: 2, scope: !3951)
!4534 = !DILocation(line: 399, column: 11, scope: !3951)
!4535 = !DILocation(line: 399, column: 16, scope: !3951)
!4536 = !DILocation(line: 399, column: 31, scope: !3951)
!4537 = !DILocation(line: 401, column: 32, scope: !3951)
!4538 = !DILocation(line: 401, column: 41, scope: !3951)
!4539 = !DILocation(line: 401, column: 10, scope: !3951)
!4540 = !DILocation(line: 401, column: 8, scope: !3951)
!4541 = !DILocation(line: 402, column: 6, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 402, column: 6)
!4543 = !DILocation(line: 402, column: 6, scope: !3951)
!4544 = !DILocation(line: 403, column: 3, scope: !4542)
!4545 = !DILocation(line: 405, column: 19, scope: !3951)
!4546 = !DILocation(line: 405, column: 25, scope: !3951)
!4547 = !DILocation(line: 405, column: 2, scope: !3951)
!4548 = !DILocation(line: 407, column: 2, scope: !3951)
!4549 = !DILabel(scope: !3951, name: "fail3", file: !3, line: 409)
!4550 = !DILocation(line: 409, column: 2, scope: !3951)
!4551 = !DILocation(line: 409, column: 22, scope: !3951)
!4552 = !DILocation(line: 409, column: 31, scope: !3951)
!4553 = !DILocation(line: 409, column: 9, scope: !3951)
!4554 = !DILabel(scope: !3951, name: "fail2", file: !3, line: 410)
!4555 = !DILocation(line: 410, column: 2, scope: !3951)
!4556 = !DILocation(line: 410, column: 27, scope: !3951)
!4557 = !DILocation(line: 410, column: 32, scope: !3951)
!4558 = !DILocation(line: 410, column: 41, scope: !3951)
!4559 = !DILocation(line: 410, column: 51, scope: !3951)
!4560 = !DILocation(line: 411, column: 4, scope: !3951)
!4561 = !DILocation(line: 411, column: 13, scope: !3951)
!4562 = !DILocation(line: 411, column: 19, scope: !3951)
!4563 = !DILocation(line: 411, column: 28, scope: !3951)
!4564 = !DILocation(line: 410, column: 9, scope: !3951)
!4565 = !DILabel(scope: !3951, name: "fail1", file: !3, line: 412)
!4566 = !DILocation(line: 412, column: 2, scope: !3951)
!4567 = !DILocation(line: 412, column: 27, scope: !3951)
!4568 = !DILocation(line: 412, column: 9, scope: !3951)
!4569 = !DILocation(line: 413, column: 8, scope: !3951)
!4570 = !DILocation(line: 413, column: 2, scope: !3951)
!4571 = !DILocation(line: 414, column: 9, scope: !3951)
!4572 = !DILocation(line: 414, column: 2, scope: !3951)
!4573 = !DILocation(line: 416, column: 1, scope: !3951)
!4574 = distinct !DISubprogram(name: "hanwang_disconnect", scope: !3, file: !3, line: 418, type: !3869, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4575 = !DILocalVariable(name: "intf", arg: 1, scope: !4574, file: !3, line: 418, type: !3708)
!4576 = !DILocation(line: 418, column: 54, scope: !4574)
!4577 = !DILocalVariable(name: "hanwang", scope: !4574, file: !3, line: 420, type: !3964)
!4578 = !DILocation(line: 420, column: 18, scope: !4574)
!4579 = !DILocation(line: 420, column: 45, scope: !4574)
!4580 = !DILocation(line: 420, column: 28, scope: !4574)
!4581 = !DILocation(line: 422, column: 26, scope: !4574)
!4582 = !DILocation(line: 422, column: 35, scope: !4574)
!4583 = !DILocation(line: 422, column: 2, scope: !4574)
!4584 = !DILocation(line: 423, column: 15, scope: !4574)
!4585 = !DILocation(line: 423, column: 24, scope: !4574)
!4586 = !DILocation(line: 423, column: 2, scope: !4574)
!4587 = !DILocation(line: 424, column: 40, scope: !4574)
!4588 = !DILocation(line: 424, column: 20, scope: !4574)
!4589 = !DILocation(line: 425, column: 4, scope: !4574)
!4590 = !DILocation(line: 425, column: 13, scope: !4574)
!4591 = !DILocation(line: 425, column: 23, scope: !4574)
!4592 = !DILocation(line: 425, column: 32, scope: !4574)
!4593 = !DILocation(line: 425, column: 41, scope: !4574)
!4594 = !DILocation(line: 426, column: 4, scope: !4574)
!4595 = !DILocation(line: 426, column: 13, scope: !4574)
!4596 = !DILocation(line: 424, column: 2, scope: !4574)
!4597 = !DILocation(line: 427, column: 8, scope: !4574)
!4598 = !DILocation(line: 427, column: 2, scope: !4574)
!4599 = !DILocation(line: 428, column: 19, scope: !4574)
!4600 = !DILocation(line: 428, column: 2, scope: !4574)
!4601 = !DILocation(line: 429, column: 1, scope: !4574)
!4602 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4603, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!138, !3708}
!4605 = !DILocalVariable(name: "intf", arg: 1, scope: !4602, file: !6, line: 715, type: !3708)
!4606 = !DILocation(line: 715, column: 76, scope: !4602)
!4607 = !DILocalVariable(name: "__mptr", scope: !4608, file: !6, line: 717, type: !137)
!4608 = distinct !DILexicalBlock(scope: !4602, file: !6, line: 717, column: 9)
!4609 = !DILocation(line: 717, column: 9, scope: !4608)
!4610 = !DILocation(line: 717, column: 9, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !6, line: 717, column: 9)
!4612 = !DILocation(line: 717, column: 2, scope: !4602)
!4613 = distinct !DISubprogram(name: "kzalloc", scope: !119, file: !119, line: 662, type: !4614, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!137, !282, !134}
!4616 = !DILocalVariable(name: "s", arg: 1, scope: !4617, file: !119, line: 445, type: !892)
!4617 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !119, file: !119, line: 445, type: !4618, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!137, !892, !134, !282}
!4620 = !DILocation(line: 445, column: 72, scope: !4617, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 552, column: 10, scope: !4622, inlinedAt: !4625)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !119, line: 540, column: 34)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !119, line: 540, column: 6)
!4624 = distinct !DISubprogram(name: "kmalloc", scope: !119, file: !119, line: 538, type: !4614, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4625 = distinct !DILocation(line: 664, column: 9, scope: !4613)
!4626 = !DILocalVariable(name: "flags", arg: 2, scope: !4617, file: !119, line: 446, type: !134)
!4627 = !DILocation(line: 446, column: 9, scope: !4617, inlinedAt: !4621)
!4628 = !DILocalVariable(name: "size", arg: 3, scope: !4617, file: !119, line: 446, type: !282)
!4629 = !DILocation(line: 446, column: 23, scope: !4617, inlinedAt: !4621)
!4630 = !DILocalVariable(name: "ret", scope: !4617, file: !119, line: 448, type: !137)
!4631 = !DILocation(line: 448, column: 8, scope: !4617, inlinedAt: !4621)
!4632 = !DILocalVariable(name: "flags", arg: 1, scope: !4633, file: !119, line: 318, type: !134)
!4633 = distinct !DISubprogram(name: "kmalloc_type", scope: !119, file: !119, line: 318, type: !4634, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!118, !134}
!4636 = !DILocation(line: 318, column: 67, scope: !4633, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 553, column: 20, scope: !4622, inlinedAt: !4625)
!4638 = !DILocalVariable(name: "size", arg: 1, scope: !4639, file: !119, line: 346, type: !282)
!4639 = distinct !DISubprogram(name: "kmalloc_index", scope: !119, file: !119, line: 346, type: !4640, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!7, !282}
!4642 = !DILocation(line: 346, column: 58, scope: !4639, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 547, column: 11, scope: !4622, inlinedAt: !4625)
!4644 = !DILocalVariable(name: "size", arg: 1, scope: !4645, file: !119, line: 472, type: !282)
!4645 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !119, file: !119, line: 472, type: !4646, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!137, !282, !134, !7}
!4648 = !DILocation(line: 472, column: 28, scope: !4645, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 481, column: 9, scope: !4650, inlinedAt: !4651)
!4650 = distinct !DISubprogram(name: "kmalloc_large", scope: !119, file: !119, line: 478, type: !4614, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4651 = distinct !DILocation(line: 545, column: 11, scope: !4652, inlinedAt: !4625)
!4652 = distinct !DILexicalBlock(scope: !4622, file: !119, line: 544, column: 7)
!4653 = !DILocalVariable(name: "flags", arg: 2, scope: !4645, file: !119, line: 472, type: !134)
!4654 = !DILocation(line: 472, column: 40, scope: !4645, inlinedAt: !4649)
!4655 = !DILocalVariable(name: "order", arg: 3, scope: !4645, file: !119, line: 472, type: !7)
!4656 = !DILocation(line: 472, column: 60, scope: !4645, inlinedAt: !4649)
!4657 = !DILocalVariable(name: "size", arg: 1, scope: !4650, file: !119, line: 478, type: !282)
!4658 = !DILocation(line: 478, column: 51, scope: !4650, inlinedAt: !4651)
!4659 = !DILocalVariable(name: "flags", arg: 2, scope: !4650, file: !119, line: 478, type: !134)
!4660 = !DILocation(line: 478, column: 63, scope: !4650, inlinedAt: !4651)
!4661 = !DILocalVariable(name: "order", scope: !4650, file: !119, line: 480, type: !7)
!4662 = !DILocation(line: 480, column: 15, scope: !4650, inlinedAt: !4651)
!4663 = !DILocalVariable(name: "size", arg: 1, scope: !4624, file: !119, line: 538, type: !282)
!4664 = !DILocation(line: 538, column: 45, scope: !4624, inlinedAt: !4625)
!4665 = !DILocalVariable(name: "flags", arg: 2, scope: !4624, file: !119, line: 538, type: !134)
!4666 = !DILocation(line: 538, column: 57, scope: !4624, inlinedAt: !4625)
!4667 = !DILocalVariable(name: "index", scope: !4622, file: !119, line: 542, type: !7)
!4668 = !DILocation(line: 542, column: 16, scope: !4622, inlinedAt: !4625)
!4669 = !DILocalVariable(name: "size", arg: 1, scope: !4613, file: !119, line: 662, type: !282)
!4670 = !DILocation(line: 662, column: 36, scope: !4613)
!4671 = !DILocalVariable(name: "flags", arg: 2, scope: !4613, file: !119, line: 662, type: !134)
!4672 = !DILocation(line: 662, column: 48, scope: !4613)
!4673 = !DILocation(line: 664, column: 17, scope: !4613)
!4674 = !DILocation(line: 664, column: 23, scope: !4613)
!4675 = !DILocation(line: 664, column: 29, scope: !4613)
!4676 = !DILocation(line: 540, column: 27, scope: !4623, inlinedAt: !4625)
!4677 = !DILocation(line: 540, column: 6, scope: !4623, inlinedAt: !4625)
!4678 = !DILocation(line: 540, column: 6, scope: !4624, inlinedAt: !4625)
!4679 = !DILocation(line: 544, column: 7, scope: !4652, inlinedAt: !4625)
!4680 = !DILocation(line: 544, column: 12, scope: !4652, inlinedAt: !4625)
!4681 = !DILocation(line: 544, column: 7, scope: !4622, inlinedAt: !4625)
!4682 = !DILocation(line: 545, column: 25, scope: !4652, inlinedAt: !4625)
!4683 = !DILocation(line: 545, column: 31, scope: !4652, inlinedAt: !4625)
!4684 = !DILocation(line: 480, column: 33, scope: !4650, inlinedAt: !4651)
!4685 = !DILocation(line: 480, column: 23, scope: !4650, inlinedAt: !4651)
!4686 = !DILocation(line: 481, column: 29, scope: !4650, inlinedAt: !4651)
!4687 = !DILocation(line: 481, column: 35, scope: !4650, inlinedAt: !4651)
!4688 = !DILocation(line: 481, column: 42, scope: !4650, inlinedAt: !4651)
!4689 = !DILocation(line: 474, column: 23, scope: !4645, inlinedAt: !4649)
!4690 = !DILocation(line: 474, column: 29, scope: !4645, inlinedAt: !4649)
!4691 = !DILocation(line: 474, column: 36, scope: !4645, inlinedAt: !4649)
!4692 = !DILocation(line: 474, column: 9, scope: !4645, inlinedAt: !4649)
!4693 = !DILocation(line: 545, column: 4, scope: !4652, inlinedAt: !4625)
!4694 = !DILocation(line: 547, column: 25, scope: !4622, inlinedAt: !4625)
!4695 = !DILocation(line: 348, column: 7, scope: !4696, inlinedAt: !4643)
!4696 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 348, column: 6)
!4697 = !DILocation(line: 348, column: 6, scope: !4639, inlinedAt: !4643)
!4698 = !DILocation(line: 349, column: 3, scope: !4696, inlinedAt: !4643)
!4699 = !DILocation(line: 351, column: 6, scope: !4700, inlinedAt: !4643)
!4700 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 351, column: 6)
!4701 = !DILocation(line: 351, column: 11, scope: !4700, inlinedAt: !4643)
!4702 = !DILocation(line: 351, column: 6, scope: !4639, inlinedAt: !4643)
!4703 = !DILocation(line: 352, column: 3, scope: !4700, inlinedAt: !4643)
!4704 = !DILocation(line: 354, column: 32, scope: !4705, inlinedAt: !4643)
!4705 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 354, column: 6)
!4706 = !DILocation(line: 354, column: 37, scope: !4705, inlinedAt: !4643)
!4707 = !DILocation(line: 354, column: 42, scope: !4705, inlinedAt: !4643)
!4708 = !DILocation(line: 354, column: 45, scope: !4705, inlinedAt: !4643)
!4709 = !DILocation(line: 354, column: 50, scope: !4705, inlinedAt: !4643)
!4710 = !DILocation(line: 354, column: 6, scope: !4639, inlinedAt: !4643)
!4711 = !DILocation(line: 355, column: 3, scope: !4705, inlinedAt: !4643)
!4712 = !DILocation(line: 356, column: 32, scope: !4713, inlinedAt: !4643)
!4713 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 356, column: 6)
!4714 = !DILocation(line: 356, column: 37, scope: !4713, inlinedAt: !4643)
!4715 = !DILocation(line: 356, column: 43, scope: !4713, inlinedAt: !4643)
!4716 = !DILocation(line: 356, column: 46, scope: !4713, inlinedAt: !4643)
!4717 = !DILocation(line: 356, column: 51, scope: !4713, inlinedAt: !4643)
!4718 = !DILocation(line: 356, column: 6, scope: !4639, inlinedAt: !4643)
!4719 = !DILocation(line: 357, column: 3, scope: !4713, inlinedAt: !4643)
!4720 = !DILocation(line: 358, column: 6, scope: !4721, inlinedAt: !4643)
!4721 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 358, column: 6)
!4722 = !DILocation(line: 358, column: 11, scope: !4721, inlinedAt: !4643)
!4723 = !DILocation(line: 358, column: 6, scope: !4639, inlinedAt: !4643)
!4724 = !DILocation(line: 358, column: 26, scope: !4721, inlinedAt: !4643)
!4725 = !DILocation(line: 359, column: 6, scope: !4726, inlinedAt: !4643)
!4726 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 359, column: 6)
!4727 = !DILocation(line: 359, column: 11, scope: !4726, inlinedAt: !4643)
!4728 = !DILocation(line: 359, column: 6, scope: !4639, inlinedAt: !4643)
!4729 = !DILocation(line: 359, column: 26, scope: !4726, inlinedAt: !4643)
!4730 = !DILocation(line: 360, column: 6, scope: !4731, inlinedAt: !4643)
!4731 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 360, column: 6)
!4732 = !DILocation(line: 360, column: 11, scope: !4731, inlinedAt: !4643)
!4733 = !DILocation(line: 360, column: 6, scope: !4639, inlinedAt: !4643)
!4734 = !DILocation(line: 360, column: 26, scope: !4731, inlinedAt: !4643)
!4735 = !DILocation(line: 361, column: 6, scope: !4736, inlinedAt: !4643)
!4736 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 361, column: 6)
!4737 = !DILocation(line: 361, column: 11, scope: !4736, inlinedAt: !4643)
!4738 = !DILocation(line: 361, column: 6, scope: !4639, inlinedAt: !4643)
!4739 = !DILocation(line: 361, column: 26, scope: !4736, inlinedAt: !4643)
!4740 = !DILocation(line: 362, column: 6, scope: !4741, inlinedAt: !4643)
!4741 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 362, column: 6)
!4742 = !DILocation(line: 362, column: 11, scope: !4741, inlinedAt: !4643)
!4743 = !DILocation(line: 362, column: 6, scope: !4639, inlinedAt: !4643)
!4744 = !DILocation(line: 362, column: 26, scope: !4741, inlinedAt: !4643)
!4745 = !DILocation(line: 363, column: 6, scope: !4746, inlinedAt: !4643)
!4746 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 363, column: 6)
!4747 = !DILocation(line: 363, column: 11, scope: !4746, inlinedAt: !4643)
!4748 = !DILocation(line: 363, column: 6, scope: !4639, inlinedAt: !4643)
!4749 = !DILocation(line: 363, column: 26, scope: !4746, inlinedAt: !4643)
!4750 = !DILocation(line: 364, column: 6, scope: !4751, inlinedAt: !4643)
!4751 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 364, column: 6)
!4752 = !DILocation(line: 364, column: 11, scope: !4751, inlinedAt: !4643)
!4753 = !DILocation(line: 364, column: 6, scope: !4639, inlinedAt: !4643)
!4754 = !DILocation(line: 364, column: 26, scope: !4751, inlinedAt: !4643)
!4755 = !DILocation(line: 365, column: 6, scope: !4756, inlinedAt: !4643)
!4756 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 365, column: 6)
!4757 = !DILocation(line: 365, column: 11, scope: !4756, inlinedAt: !4643)
!4758 = !DILocation(line: 365, column: 6, scope: !4639, inlinedAt: !4643)
!4759 = !DILocation(line: 365, column: 26, scope: !4756, inlinedAt: !4643)
!4760 = !DILocation(line: 366, column: 6, scope: !4761, inlinedAt: !4643)
!4761 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 366, column: 6)
!4762 = !DILocation(line: 366, column: 11, scope: !4761, inlinedAt: !4643)
!4763 = !DILocation(line: 366, column: 6, scope: !4639, inlinedAt: !4643)
!4764 = !DILocation(line: 366, column: 26, scope: !4761, inlinedAt: !4643)
!4765 = !DILocation(line: 367, column: 6, scope: !4766, inlinedAt: !4643)
!4766 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 367, column: 6)
!4767 = !DILocation(line: 367, column: 11, scope: !4766, inlinedAt: !4643)
!4768 = !DILocation(line: 367, column: 6, scope: !4639, inlinedAt: !4643)
!4769 = !DILocation(line: 367, column: 26, scope: !4766, inlinedAt: !4643)
!4770 = !DILocation(line: 368, column: 6, scope: !4771, inlinedAt: !4643)
!4771 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 368, column: 6)
!4772 = !DILocation(line: 368, column: 11, scope: !4771, inlinedAt: !4643)
!4773 = !DILocation(line: 368, column: 6, scope: !4639, inlinedAt: !4643)
!4774 = !DILocation(line: 368, column: 26, scope: !4771, inlinedAt: !4643)
!4775 = !DILocation(line: 369, column: 6, scope: !4776, inlinedAt: !4643)
!4776 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 369, column: 6)
!4777 = !DILocation(line: 369, column: 11, scope: !4776, inlinedAt: !4643)
!4778 = !DILocation(line: 369, column: 6, scope: !4639, inlinedAt: !4643)
!4779 = !DILocation(line: 369, column: 26, scope: !4776, inlinedAt: !4643)
!4780 = !DILocation(line: 370, column: 6, scope: !4781, inlinedAt: !4643)
!4781 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 370, column: 6)
!4782 = !DILocation(line: 370, column: 11, scope: !4781, inlinedAt: !4643)
!4783 = !DILocation(line: 370, column: 6, scope: !4639, inlinedAt: !4643)
!4784 = !DILocation(line: 370, column: 26, scope: !4781, inlinedAt: !4643)
!4785 = !DILocation(line: 371, column: 6, scope: !4786, inlinedAt: !4643)
!4786 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 371, column: 6)
!4787 = !DILocation(line: 371, column: 11, scope: !4786, inlinedAt: !4643)
!4788 = !DILocation(line: 371, column: 6, scope: !4639, inlinedAt: !4643)
!4789 = !DILocation(line: 371, column: 26, scope: !4786, inlinedAt: !4643)
!4790 = !DILocation(line: 372, column: 6, scope: !4791, inlinedAt: !4643)
!4791 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 372, column: 6)
!4792 = !DILocation(line: 372, column: 11, scope: !4791, inlinedAt: !4643)
!4793 = !DILocation(line: 372, column: 6, scope: !4639, inlinedAt: !4643)
!4794 = !DILocation(line: 372, column: 26, scope: !4791, inlinedAt: !4643)
!4795 = !DILocation(line: 373, column: 6, scope: !4796, inlinedAt: !4643)
!4796 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 373, column: 6)
!4797 = !DILocation(line: 373, column: 11, scope: !4796, inlinedAt: !4643)
!4798 = !DILocation(line: 373, column: 6, scope: !4639, inlinedAt: !4643)
!4799 = !DILocation(line: 373, column: 26, scope: !4796, inlinedAt: !4643)
!4800 = !DILocation(line: 374, column: 6, scope: !4801, inlinedAt: !4643)
!4801 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 374, column: 6)
!4802 = !DILocation(line: 374, column: 11, scope: !4801, inlinedAt: !4643)
!4803 = !DILocation(line: 374, column: 6, scope: !4639, inlinedAt: !4643)
!4804 = !DILocation(line: 374, column: 26, scope: !4801, inlinedAt: !4643)
!4805 = !DILocation(line: 375, column: 6, scope: !4806, inlinedAt: !4643)
!4806 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 375, column: 6)
!4807 = !DILocation(line: 375, column: 11, scope: !4806, inlinedAt: !4643)
!4808 = !DILocation(line: 375, column: 6, scope: !4639, inlinedAt: !4643)
!4809 = !DILocation(line: 375, column: 27, scope: !4806, inlinedAt: !4643)
!4810 = !DILocation(line: 376, column: 6, scope: !4811, inlinedAt: !4643)
!4811 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 376, column: 6)
!4812 = !DILocation(line: 376, column: 11, scope: !4811, inlinedAt: !4643)
!4813 = !DILocation(line: 376, column: 6, scope: !4639, inlinedAt: !4643)
!4814 = !DILocation(line: 376, column: 32, scope: !4811, inlinedAt: !4643)
!4815 = !DILocation(line: 377, column: 6, scope: !4816, inlinedAt: !4643)
!4816 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 377, column: 6)
!4817 = !DILocation(line: 377, column: 11, scope: !4816, inlinedAt: !4643)
!4818 = !DILocation(line: 377, column: 6, scope: !4639, inlinedAt: !4643)
!4819 = !DILocation(line: 377, column: 32, scope: !4816, inlinedAt: !4643)
!4820 = !DILocation(line: 378, column: 6, scope: !4821, inlinedAt: !4643)
!4821 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 378, column: 6)
!4822 = !DILocation(line: 378, column: 11, scope: !4821, inlinedAt: !4643)
!4823 = !DILocation(line: 378, column: 6, scope: !4639, inlinedAt: !4643)
!4824 = !DILocation(line: 378, column: 32, scope: !4821, inlinedAt: !4643)
!4825 = !DILocation(line: 379, column: 6, scope: !4826, inlinedAt: !4643)
!4826 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 379, column: 6)
!4827 = !DILocation(line: 379, column: 11, scope: !4826, inlinedAt: !4643)
!4828 = !DILocation(line: 379, column: 6, scope: !4639, inlinedAt: !4643)
!4829 = !DILocation(line: 379, column: 33, scope: !4826, inlinedAt: !4643)
!4830 = !DILocation(line: 380, column: 6, scope: !4831, inlinedAt: !4643)
!4831 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 380, column: 6)
!4832 = !DILocation(line: 380, column: 11, scope: !4831, inlinedAt: !4643)
!4833 = !DILocation(line: 380, column: 6, scope: !4639, inlinedAt: !4643)
!4834 = !DILocation(line: 380, column: 33, scope: !4831, inlinedAt: !4643)
!4835 = !DILocation(line: 381, column: 6, scope: !4836, inlinedAt: !4643)
!4836 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 381, column: 6)
!4837 = !DILocation(line: 381, column: 11, scope: !4836, inlinedAt: !4643)
!4838 = !DILocation(line: 381, column: 6, scope: !4639, inlinedAt: !4643)
!4839 = !DILocation(line: 381, column: 33, scope: !4836, inlinedAt: !4643)
!4840 = !DILocation(line: 382, column: 2, scope: !4841, inlinedAt: !4643)
!4841 = distinct !DILexicalBlock(scope: !4842, file: !119, line: 382, column: 2)
!4842 = distinct !DILexicalBlock(scope: !4639, file: !119, line: 382, column: 2)
!4843 = !{i32 -2144643705, i32 -2144643676, i32 -2144643630, i32 -2144643572, i32 -2144643518, i32 -2144643464, i32 -2144643409, i32 -2144643378}
!4844 = !DILocation(line: 382, column: 2, scope: !4845, inlinedAt: !4643)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !119, line: 382, column: 2)
!4846 = distinct !DILexicalBlock(scope: !4842, file: !119, line: 382, column: 2)
!4847 = !{i32 -2144642935, i32 -2144642928, i32 -2144642874, i32 -2144642843, i32 -2144642813}
!4848 = !DILocation(line: 382, column: 2, scope: !4846, inlinedAt: !4643)
!4849 = !DILocation(line: 386, column: 1, scope: !4639, inlinedAt: !4643)
!4850 = !DILocation(line: 547, column: 9, scope: !4622, inlinedAt: !4625)
!4851 = !DILocation(line: 549, column: 8, scope: !4852, inlinedAt: !4625)
!4852 = distinct !DILexicalBlock(scope: !4622, file: !119, line: 549, column: 7)
!4853 = !DILocation(line: 549, column: 7, scope: !4622, inlinedAt: !4625)
!4854 = !DILocation(line: 550, column: 4, scope: !4852, inlinedAt: !4625)
!4855 = !DILocation(line: 553, column: 33, scope: !4622, inlinedAt: !4625)
!4856 = !DILocation(line: 325, column: 6, scope: !4857, inlinedAt: !4637)
!4857 = distinct !DILexicalBlock(scope: !4633, file: !119, line: 325, column: 6)
!4858 = !DILocation(line: 325, column: 6, scope: !4633, inlinedAt: !4637)
!4859 = !DILocation(line: 326, column: 3, scope: !4857, inlinedAt: !4637)
!4860 = !DILocation(line: 332, column: 9, scope: !4633, inlinedAt: !4637)
!4861 = !DILocation(line: 332, column: 15, scope: !4633, inlinedAt: !4637)
!4862 = !DILocation(line: 332, column: 2, scope: !4633, inlinedAt: !4637)
!4863 = !DILocation(line: 336, column: 1, scope: !4633, inlinedAt: !4637)
!4864 = !DILocation(line: 553, column: 5, scope: !4622, inlinedAt: !4625)
!4865 = !DILocation(line: 553, column: 41, scope: !4622, inlinedAt: !4625)
!4866 = !DILocation(line: 554, column: 5, scope: !4622, inlinedAt: !4625)
!4867 = !DILocation(line: 554, column: 12, scope: !4622, inlinedAt: !4625)
!4868 = !DILocation(line: 448, column: 31, scope: !4617, inlinedAt: !4621)
!4869 = !DILocation(line: 448, column: 34, scope: !4617, inlinedAt: !4621)
!4870 = !DILocation(line: 448, column: 14, scope: !4617, inlinedAt: !4621)
!4871 = !DILocation(line: 450, column: 22, scope: !4617, inlinedAt: !4621)
!4872 = !DILocation(line: 450, column: 25, scope: !4617, inlinedAt: !4621)
!4873 = !DILocation(line: 450, column: 30, scope: !4617, inlinedAt: !4621)
!4874 = !DILocation(line: 450, column: 36, scope: !4617, inlinedAt: !4621)
!4875 = !DILocation(line: 450, column: 8, scope: !4617, inlinedAt: !4621)
!4876 = !DILocation(line: 450, column: 6, scope: !4617, inlinedAt: !4621)
!4877 = !DILocation(line: 451, column: 9, scope: !4617, inlinedAt: !4621)
!4878 = !DILocation(line: 552, column: 3, scope: !4622, inlinedAt: !4625)
!4879 = !DILocation(line: 557, column: 19, scope: !4624, inlinedAt: !4625)
!4880 = !DILocation(line: 557, column: 25, scope: !4624, inlinedAt: !4625)
!4881 = !DILocation(line: 557, column: 9, scope: !4624, inlinedAt: !4625)
!4882 = !DILocation(line: 557, column: 2, scope: !4624, inlinedAt: !4625)
!4883 = !DILocation(line: 558, column: 1, scope: !4624, inlinedAt: !4625)
!4884 = !DILocation(line: 664, column: 2, scope: !4613)
!4885 = distinct !DISubprogram(name: "get_features", scope: !3, file: !3, line: 300, type: !4886, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!447, !138, !3964}
!4888 = !DILocalVariable(name: "dev", arg: 1, scope: !4885, file: !3, line: 300, type: !138)
!4889 = !DILocation(line: 300, column: 45, scope: !4885)
!4890 = !DILocalVariable(name: "hanwang", arg: 2, scope: !4885, file: !3, line: 300, type: !3964)
!4891 = !DILocation(line: 300, column: 66, scope: !4885)
!4892 = !DILocalVariable(name: "i", scope: !4885, file: !3, line: 302, type: !136)
!4893 = !DILocation(line: 302, column: 6, scope: !4885)
!4894 = !DILocation(line: 304, column: 9, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 304, column: 2)
!4896 = !DILocation(line: 304, column: 7, scope: !4895)
!4897 = !DILocation(line: 304, column: 14, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 304, column: 2)
!4899 = !DILocation(line: 304, column: 16, scope: !4898)
!4900 = !DILocation(line: 304, column: 2, scope: !4895)
!4901 = !DILocation(line: 305, column: 7, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 305, column: 7)
!4903 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 304, column: 51)
!4904 = !DILocation(line: 306, column: 20, scope: !4902)
!4905 = !DILocation(line: 306, column: 5, scope: !4902)
!4906 = !DILocation(line: 306, column: 23, scope: !4902)
!4907 = !DILocation(line: 305, column: 46, scope: !4902)
!4908 = !DILocation(line: 305, column: 7, scope: !4903)
!4909 = !DILocation(line: 307, column: 40, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 306, column: 28)
!4911 = !DILocation(line: 307, column: 25, scope: !4910)
!4912 = !DILocation(line: 307, column: 4, scope: !4910)
!4913 = !DILocation(line: 307, column: 13, scope: !4910)
!4914 = !DILocation(line: 307, column: 22, scope: !4910)
!4915 = !DILocation(line: 308, column: 4, scope: !4910)
!4916 = !DILocation(line: 310, column: 2, scope: !4903)
!4917 = !DILocation(line: 304, column: 47, scope: !4898)
!4918 = !DILocation(line: 304, column: 2, scope: !4898)
!4919 = distinct !{!4919, !4900, !4920}
!4920 = !DILocation(line: 310, column: 2, scope: !4895)
!4921 = !DILocation(line: 312, column: 2, scope: !4885)
!4922 = !DILocation(line: 313, column: 1, scope: !4885)
!4923 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !4924, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!136, !138, !235, !282}
!4926 = !DILocalVariable(name: "dev", arg: 1, scope: !4923, file: !6, line: 912, type: !138)
!4927 = !DILocation(line: 912, column: 52, scope: !4923)
!4928 = !DILocalVariable(name: "buf", arg: 2, scope: !4923, file: !6, line: 912, type: !235)
!4929 = !DILocation(line: 912, column: 63, scope: !4923)
!4930 = !DILocalVariable(name: "size", arg: 3, scope: !4923, file: !6, line: 912, type: !282)
!4931 = !DILocation(line: 912, column: 75, scope: !4923)
!4932 = !DILocalVariable(name: "actual", scope: !4923, file: !6, line: 914, type: !136)
!4933 = !DILocation(line: 914, column: 6, scope: !4923)
!4934 = !DILocation(line: 915, column: 20, scope: !4923)
!4935 = !DILocation(line: 915, column: 25, scope: !4923)
!4936 = !DILocation(line: 915, column: 44, scope: !4923)
!4937 = !DILocation(line: 915, column: 49, scope: !4923)
!4938 = !DILocation(line: 915, column: 54, scope: !4923)
!4939 = !DILocation(line: 916, column: 6, scope: !4923)
!4940 = !DILocation(line: 916, column: 11, scope: !4923)
!4941 = !DILocation(line: 915, column: 11, scope: !4923)
!4942 = !DILocation(line: 915, column: 9, scope: !4923)
!4943 = !DILocation(line: 917, column: 10, scope: !4923)
!4944 = !DILocation(line: 917, column: 25, scope: !4923)
!4945 = !DILocation(line: 917, column: 20, scope: !4923)
!4946 = !DILocation(line: 917, column: 17, scope: !4923)
!4947 = !DILocation(line: 917, column: 9, scope: !4923)
!4948 = !DILocation(line: 917, column: 38, scope: !4923)
!4949 = !DILocation(line: 917, column: 2, scope: !4923)
!4950 = distinct !DISubprogram(name: "usb_to_input_id", scope: !4951, file: !4951, line: 18, type: !4952, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4951 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!4952 = !DISubroutineType(types: !4953)
!4953 = !{null, !4954, !4956}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!4957 = !DILocalVariable(name: "dev", arg: 1, scope: !4950, file: !4951, line: 18, type: !4954)
!4958 = !DILocation(line: 18, column: 42, scope: !4950)
!4959 = !DILocalVariable(name: "id", arg: 2, scope: !4950, file: !4951, line: 18, type: !4956)
!4960 = !DILocation(line: 18, column: 64, scope: !4950)
!4961 = !DILocation(line: 20, column: 2, scope: !4950)
!4962 = !DILocation(line: 20, column: 6, scope: !4950)
!4963 = !DILocation(line: 20, column: 14, scope: !4950)
!4964 = !DILocation(line: 21, column: 15, scope: !4950)
!4965 = !DILocation(line: 21, column: 2, scope: !4950)
!4966 = !DILocation(line: 21, column: 6, scope: !4950)
!4967 = !DILocation(line: 21, column: 13, scope: !4950)
!4968 = !DILocation(line: 22, column: 16, scope: !4950)
!4969 = !DILocation(line: 22, column: 2, scope: !4950)
!4970 = !DILocation(line: 22, column: 6, scope: !4950)
!4971 = !DILocation(line: 22, column: 14, scope: !4950)
!4972 = !DILocation(line: 23, column: 16, scope: !4950)
!4973 = !DILocation(line: 23, column: 2, scope: !4950)
!4974 = !DILocation(line: 23, column: 6, scope: !4950)
!4975 = !DILocation(line: 23, column: 14, scope: !4950)
!4976 = !DILocation(line: 24, column: 1, scope: !4950)
!4977 = distinct !DISubprogram(name: "input_set_drvdata", scope: !3972, file: !3972, line: 371, type: !4978, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{null, !3970, !137}
!4980 = !DILocalVariable(name: "dev", arg: 1, scope: !4977, file: !3972, line: 371, type: !3970)
!4981 = !DILocation(line: 371, column: 56, scope: !4977)
!4982 = !DILocalVariable(name: "data", arg: 2, scope: !4977, file: !3972, line: 371, type: !137)
!4983 = !DILocation(line: 371, column: 67, scope: !4977)
!4984 = !DILocation(line: 373, column: 19, scope: !4977)
!4985 = !DILocation(line: 373, column: 24, scope: !4977)
!4986 = !DILocation(line: 373, column: 29, scope: !4977)
!4987 = !DILocation(line: 373, column: 2, scope: !4977)
!4988 = !DILocation(line: 374, column: 1, scope: !4977)
!4989 = distinct !DISubprogram(name: "hanwang_open", scope: !3, file: !3, line: 282, type: !4140, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!4990 = !DILocalVariable(name: "dev", arg: 1, scope: !4989, file: !3, line: 282, type: !3970)
!4991 = !DILocation(line: 282, column: 43, scope: !4989)
!4992 = !DILocalVariable(name: "hanwang", scope: !4989, file: !3, line: 284, type: !3964)
!4993 = !DILocation(line: 284, column: 18, scope: !4989)
!4994 = !DILocation(line: 284, column: 46, scope: !4989)
!4995 = !DILocation(line: 284, column: 28, scope: !4989)
!4996 = !DILocation(line: 286, column: 22, scope: !4989)
!4997 = !DILocation(line: 286, column: 31, scope: !4989)
!4998 = !DILocation(line: 286, column: 2, scope: !4989)
!4999 = !DILocation(line: 286, column: 11, scope: !4989)
!5000 = !DILocation(line: 286, column: 16, scope: !4989)
!5001 = !DILocation(line: 286, column: 20, scope: !4989)
!5002 = !DILocation(line: 287, column: 21, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 287, column: 6)
!5004 = !DILocation(line: 287, column: 30, scope: !5003)
!5005 = !DILocation(line: 287, column: 6, scope: !5003)
!5006 = !DILocation(line: 287, column: 6, scope: !4989)
!5007 = !DILocation(line: 288, column: 3, scope: !5003)
!5008 = !DILocation(line: 290, column: 2, scope: !4989)
!5009 = !DILocation(line: 291, column: 1, scope: !4989)
!5010 = distinct !DISubprogram(name: "hanwang_close", scope: !3, file: !3, line: 293, type: !4144, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5011 = !DILocalVariable(name: "dev", arg: 1, scope: !5010, file: !3, line: 293, type: !3970)
!5012 = !DILocation(line: 293, column: 45, scope: !5010)
!5013 = !DILocalVariable(name: "hanwang", scope: !5010, file: !3, line: 295, type: !3964)
!5014 = !DILocation(line: 295, column: 18, scope: !5010)
!5015 = !DILocation(line: 295, column: 46, scope: !5010)
!5016 = !DILocation(line: 295, column: 28, scope: !5010)
!5017 = !DILocation(line: 297, column: 15, scope: !5010)
!5018 = !DILocation(line: 297, column: 24, scope: !5010)
!5019 = !DILocation(line: 297, column: 2, scope: !5010)
!5020 = !DILocation(line: 298, column: 1, scope: !5010)
!5021 = distinct !DISubprogram(name: "__set_bit", scope: !5022, file: !5022, line: 25, type: !5023, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5022 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5023 = !DISubroutineType(types: !5024)
!5024 = !{null, !270, !5025}
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !285)
!5027 = !DILocalVariable(name: "nr", arg: 1, scope: !5028, file: !5029, line: 66, type: !270)
!5028 = distinct !DISubprogram(name: "arch___set_bit", scope: !5029, file: !5029, line: 66, type: !5023, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5029 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5030 = !DILocation(line: 66, column: 21, scope: !5028, inlinedAt: !5031)
!5031 = distinct !DILocation(line: 28, column: 2, scope: !5021)
!5032 = !DILocalVariable(name: "addr", arg: 2, scope: !5028, file: !5029, line: 66, type: !5025)
!5033 = !DILocation(line: 66, column: 49, scope: !5028, inlinedAt: !5031)
!5034 = !DILocalVariable(name: "v", arg: 1, scope: !5035, file: !5036, line: 39, type: !5039)
!5035 = distinct !DISubprogram(name: "instrument_write", scope: !5036, file: !5036, line: 39, type: !5037, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5036 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !5039, !282}
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5041)
!5041 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5042 = !DILocation(line: 39, column: 67, scope: !5035, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 27, column: 2, scope: !5021)
!5044 = !DILocalVariable(name: "size", arg: 2, scope: !5035, file: !5036, line: 39, type: !282)
!5045 = !DILocation(line: 39, column: 77, scope: !5035, inlinedAt: !5043)
!5046 = !DILocalVariable(name: "nr", arg: 1, scope: !5021, file: !5022, line: 25, type: !270)
!5047 = !DILocation(line: 25, column: 35, scope: !5021)
!5048 = !DILocalVariable(name: "addr", arg: 2, scope: !5021, file: !5022, line: 25, type: !5025)
!5049 = !DILocation(line: 25, column: 63, scope: !5021)
!5050 = !DILocation(line: 27, column: 19, scope: !5021)
!5051 = !DILocation(line: 27, column: 26, scope: !5021)
!5052 = !DILocation(line: 27, column: 24, scope: !5021)
!5053 = !DILocation(line: 41, column: 20, scope: !5035, inlinedAt: !5043)
!5054 = !DILocation(line: 41, column: 23, scope: !5035, inlinedAt: !5043)
!5055 = !DILocation(line: 41, column: 2, scope: !5035, inlinedAt: !5043)
!5056 = !DILocation(line: 42, column: 2, scope: !5035, inlinedAt: !5043)
!5057 = !DILocation(line: 28, column: 17, scope: !5021)
!5058 = !DILocation(line: 28, column: 21, scope: !5021)
!5059 = !DILocation(line: 68, column: 44, scope: !5028, inlinedAt: !5031)
!5060 = !DILocation(line: 68, column: 56, scope: !5028, inlinedAt: !5031)
!5061 = !DILocation(line: 68, column: 2, scope: !5028, inlinedAt: !5031)
!5062 = !{i32 -2147201032}
!5063 = !DILocation(line: 29, column: 1, scope: !5021)
!5064 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5065, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !4246, !138, !7, !137, !136, !4288, !137, !136}
!5067 = !DILocalVariable(name: "urb", arg: 1, scope: !5064, file: !6, line: 1688, type: !4246)
!5068 = !DILocation(line: 1688, column: 49, scope: !5064)
!5069 = !DILocalVariable(name: "dev", arg: 2, scope: !5064, file: !6, line: 1689, type: !138)
!5070 = !DILocation(line: 1689, column: 28, scope: !5064)
!5071 = !DILocalVariable(name: "pipe", arg: 3, scope: !5064, file: !6, line: 1690, type: !7)
!5072 = !DILocation(line: 1690, column: 22, scope: !5064)
!5073 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5064, file: !6, line: 1691, type: !137)
!5074 = !DILocation(line: 1691, column: 15, scope: !5064)
!5075 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5064, file: !6, line: 1692, type: !136)
!5076 = !DILocation(line: 1692, column: 13, scope: !5064)
!5077 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5064, file: !6, line: 1693, type: !4288)
!5078 = !DILocation(line: 1693, column: 24, scope: !5064)
!5079 = !DILocalVariable(name: "context", arg: 7, scope: !5064, file: !6, line: 1694, type: !137)
!5080 = !DILocation(line: 1694, column: 15, scope: !5064)
!5081 = !DILocalVariable(name: "interval", arg: 8, scope: !5064, file: !6, line: 1695, type: !136)
!5082 = !DILocation(line: 1695, column: 13, scope: !5064)
!5083 = !DILocation(line: 1697, column: 13, scope: !5064)
!5084 = !DILocation(line: 1697, column: 2, scope: !5064)
!5085 = !DILocation(line: 1697, column: 7, scope: !5064)
!5086 = !DILocation(line: 1697, column: 11, scope: !5064)
!5087 = !DILocation(line: 1698, column: 14, scope: !5064)
!5088 = !DILocation(line: 1698, column: 2, scope: !5064)
!5089 = !DILocation(line: 1698, column: 7, scope: !5064)
!5090 = !DILocation(line: 1698, column: 12, scope: !5064)
!5091 = !DILocation(line: 1699, column: 25, scope: !5064)
!5092 = !DILocation(line: 1699, column: 2, scope: !5064)
!5093 = !DILocation(line: 1699, column: 7, scope: !5064)
!5094 = !DILocation(line: 1699, column: 23, scope: !5064)
!5095 = !DILocation(line: 1700, column: 32, scope: !5064)
!5096 = !DILocation(line: 1700, column: 2, scope: !5064)
!5097 = !DILocation(line: 1700, column: 7, scope: !5064)
!5098 = !DILocation(line: 1700, column: 30, scope: !5064)
!5099 = !DILocation(line: 1701, column: 18, scope: !5064)
!5100 = !DILocation(line: 1701, column: 2, scope: !5064)
!5101 = !DILocation(line: 1701, column: 7, scope: !5064)
!5102 = !DILocation(line: 1701, column: 16, scope: !5064)
!5103 = !DILocation(line: 1702, column: 17, scope: !5064)
!5104 = !DILocation(line: 1702, column: 2, scope: !5064)
!5105 = !DILocation(line: 1702, column: 7, scope: !5064)
!5106 = !DILocation(line: 1702, column: 15, scope: !5064)
!5107 = !DILocation(line: 1704, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5064, file: !6, line: 1704, column: 6)
!5109 = !DILocation(line: 1704, column: 11, scope: !5108)
!5110 = !DILocation(line: 1704, column: 17, scope: !5108)
!5111 = !DILocation(line: 1704, column: 35, scope: !5108)
!5112 = !DILocation(line: 1704, column: 38, scope: !5108)
!5113 = !DILocation(line: 1704, column: 43, scope: !5108)
!5114 = !DILocation(line: 1704, column: 49, scope: !5108)
!5115 = !DILocation(line: 1704, column: 6, scope: !5064)
!5116 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5117, file: !6, line: 1706, type: !136)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !6, line: 1706, column: 14)
!5118 = distinct !DILexicalBlock(scope: !5108, file: !6, line: 1704, column: 69)
!5119 = !DILocation(line: 1706, column: 14, scope: !5117)
!5120 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5121, file: !6, line: 1706, type: !136)
!5121 = distinct !DILexicalBlock(scope: !5117, file: !6, line: 1706, column: 14)
!5122 = !DILocation(line: 1706, column: 14, scope: !5121)
!5123 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5121, file: !6, line: 1706, type: !136)
!5124 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5117, file: !6, line: 1706, type: !136)
!5125 = !DILocation(line: 1706, column: 12, scope: !5118)
!5126 = !DILocation(line: 1708, column: 25, scope: !5118)
!5127 = !DILocation(line: 1708, column: 34, scope: !5118)
!5128 = !DILocation(line: 1708, column: 21, scope: !5118)
!5129 = !DILocation(line: 1708, column: 3, scope: !5118)
!5130 = !DILocation(line: 1708, column: 8, scope: !5118)
!5131 = !DILocation(line: 1708, column: 17, scope: !5118)
!5132 = !DILocation(line: 1709, column: 2, scope: !5118)
!5133 = !DILocation(line: 1710, column: 19, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5108, file: !6, line: 1709, column: 9)
!5135 = !DILocation(line: 1710, column: 3, scope: !5134)
!5136 = !DILocation(line: 1710, column: 8, scope: !5134)
!5137 = !DILocation(line: 1710, column: 17, scope: !5134)
!5138 = !DILocation(line: 1713, column: 2, scope: !5064)
!5139 = !DILocation(line: 1713, column: 7, scope: !5064)
!5140 = !DILocation(line: 1713, column: 19, scope: !5064)
!5141 = !DILocation(line: 1714, column: 1, scope: !5064)
!5142 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5143, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!7, !138, !7}
!5145 = !DILocalVariable(name: "dev", arg: 1, scope: !5142, file: !6, line: 1945, type: !138)
!5146 = !DILocation(line: 1945, column: 61, scope: !5142)
!5147 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5142, file: !6, line: 1946, type: !7)
!5148 = !DILocation(line: 1946, column: 16, scope: !5142)
!5149 = !DILocation(line: 1948, column: 10, scope: !5142)
!5150 = !DILocation(line: 1948, column: 15, scope: !5142)
!5151 = !DILocation(line: 1948, column: 22, scope: !5142)
!5152 = !DILocation(line: 1948, column: 31, scope: !5142)
!5153 = !DILocation(line: 1948, column: 40, scope: !5142)
!5154 = !DILocation(line: 1948, column: 28, scope: !5142)
!5155 = !DILocation(line: 1948, column: 2, scope: !5142)
!5156 = distinct !DISubprogram(name: "hanwang_irq", scope: !3, file: !3, line: 252, type: !4290, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5157 = !DILocalVariable(name: "urb", arg: 1, scope: !5156, file: !3, line: 252, type: !4246)
!5158 = !DILocation(line: 252, column: 37, scope: !5156)
!5159 = !DILocalVariable(name: "hanwang", scope: !5156, file: !3, line: 254, type: !3964)
!5160 = !DILocation(line: 254, column: 18, scope: !5156)
!5161 = !DILocation(line: 254, column: 28, scope: !5156)
!5162 = !DILocation(line: 254, column: 33, scope: !5156)
!5163 = !DILocalVariable(name: "dev", scope: !5156, file: !3, line: 255, type: !138)
!5164 = !DILocation(line: 255, column: 21, scope: !5156)
!5165 = !DILocation(line: 255, column: 27, scope: !5156)
!5166 = !DILocation(line: 255, column: 36, scope: !5156)
!5167 = !DILocalVariable(name: "retval", scope: !5156, file: !3, line: 256, type: !136)
!5168 = !DILocation(line: 256, column: 6, scope: !5156)
!5169 = !DILocation(line: 258, column: 10, scope: !5156)
!5170 = !DILocation(line: 258, column: 15, scope: !5156)
!5171 = !DILocation(line: 258, column: 2, scope: !5156)
!5172 = !DILocation(line: 261, column: 24, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 258, column: 23)
!5174 = !DILocation(line: 261, column: 3, scope: !5173)
!5175 = !DILocation(line: 262, column: 3, scope: !5173)
!5176 = !DILocation(line: 267, column: 3, scope: !5173)
!5177 = !DILocation(line: 269, column: 3, scope: !5173)
!5178 = !DILocation(line: 271, column: 3, scope: !5173)
!5179 = !DILocation(line: 273, column: 3, scope: !5173)
!5180 = !DILocation(line: 276, column: 26, scope: !5156)
!5181 = !DILocation(line: 276, column: 11, scope: !5156)
!5182 = !DILocation(line: 276, column: 9, scope: !5156)
!5183 = !DILocation(line: 277, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 277, column: 6)
!5185 = !DILocation(line: 277, column: 6, scope: !5156)
!5186 = !DILocation(line: 278, column: 3, scope: !5184)
!5187 = !DILocation(line: 280, column: 1, scope: !5156)
!5188 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5189, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{null, !3708, !137}
!5191 = !DILocalVariable(name: "intf", arg: 1, scope: !5188, file: !6, line: 268, type: !3708)
!5192 = !DILocation(line: 268, column: 59, scope: !5188)
!5193 = !DILocalVariable(name: "data", arg: 2, scope: !5188, file: !6, line: 268, type: !137)
!5194 = !DILocation(line: 268, column: 71, scope: !5188)
!5195 = !DILocation(line: 270, column: 19, scope: !5188)
!5196 = !DILocation(line: 270, column: 25, scope: !5188)
!5197 = !DILocation(line: 270, column: 30, scope: !5188)
!5198 = !DILocation(line: 270, column: 2, scope: !5188)
!5199 = !DILocation(line: 271, column: 1, scope: !5188)
!5200 = distinct !DISubprogram(name: "get_order", scope: !5201, file: !5201, line: 29, type: !5202, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5201 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!136, !285}
!5204 = !DILocalVariable(name: "x", arg: 1, scope: !5205, file: !5029, line: 366, type: !379)
!5205 = distinct !DISubprogram(name: "fls64", scope: !5029, file: !5029, line: 366, type: !5206, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!136, !379}
!5208 = !DILocation(line: 366, column: 40, scope: !5205, inlinedAt: !5209)
!5209 = distinct !DILocation(line: 46, column: 9, scope: !5200)
!5210 = !DILocalVariable(name: "bitpos", scope: !5205, file: !5029, line: 368, type: !136)
!5211 = !DILocation(line: 368, column: 6, scope: !5205, inlinedAt: !5209)
!5212 = !DILocalVariable(name: "size", arg: 1, scope: !5200, file: !5201, line: 29, type: !285)
!5213 = !DILocation(line: 29, column: 63, scope: !5200)
!5214 = !DILocation(line: 31, column: 27, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5200, file: !5201, line: 31, column: 6)
!5216 = !DILocation(line: 31, column: 6, scope: !5215)
!5217 = !DILocation(line: 31, column: 6, scope: !5200)
!5218 = !DILocation(line: 32, column: 8, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !5201, line: 32, column: 7)
!5220 = distinct !DILexicalBlock(scope: !5215, file: !5201, line: 31, column: 34)
!5221 = !DILocation(line: 32, column: 7, scope: !5220)
!5222 = !DILocation(line: 33, column: 4, scope: !5219)
!5223 = !DILocation(line: 35, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5220, file: !5201, line: 35, column: 7)
!5225 = !DILocation(line: 35, column: 12, scope: !5224)
!5226 = !DILocation(line: 35, column: 7, scope: !5220)
!5227 = !DILocation(line: 36, column: 4, scope: !5224)
!5228 = !DILocation(line: 38, column: 10, scope: !5220)
!5229 = !DILocation(line: 38, column: 28, scope: !5220)
!5230 = !DILocation(line: 38, column: 41, scope: !5220)
!5231 = !DILocation(line: 38, column: 3, scope: !5220)
!5232 = !DILocation(line: 41, column: 6, scope: !5200)
!5233 = !DILocation(line: 42, column: 7, scope: !5200)
!5234 = !DILocation(line: 46, column: 15, scope: !5200)
!5235 = !DILocation(line: 374, column: 2, scope: !5205, inlinedAt: !5209)
!5236 = !DILocation(line: 376, column: 14, scope: !5205, inlinedAt: !5209)
!5237 = !{i32 250553}
!5238 = !DILocation(line: 377, column: 9, scope: !5205, inlinedAt: !5209)
!5239 = !DILocation(line: 377, column: 16, scope: !5205, inlinedAt: !5209)
!5240 = !DILocation(line: 46, column: 2, scope: !5200)
!5241 = !DILocation(line: 48, column: 1, scope: !5200)
!5242 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5243, file: !5243, line: 30, type: !5244, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5243 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!136, !378}
!5246 = !DILocation(line: 366, column: 40, scope: !5205, inlinedAt: !5247)
!5247 = distinct !DILocation(line: 32, column: 9, scope: !5242)
!5248 = !DILocation(line: 368, column: 6, scope: !5205, inlinedAt: !5247)
!5249 = !DILocalVariable(name: "n", arg: 1, scope: !5242, file: !5243, line: 30, type: !378)
!5250 = !DILocation(line: 30, column: 21, scope: !5242)
!5251 = !DILocation(line: 32, column: 15, scope: !5242)
!5252 = !DILocation(line: 374, column: 2, scope: !5205, inlinedAt: !5247)
!5253 = !DILocation(line: 376, column: 14, scope: !5205, inlinedAt: !5247)
!5254 = !DILocation(line: 377, column: 9, scope: !5205, inlinedAt: !5247)
!5255 = !DILocation(line: 377, column: 16, scope: !5205, inlinedAt: !5247)
!5256 = !DILocation(line: 32, column: 18, scope: !5242)
!5257 = !DILocation(line: 32, column: 2, scope: !5242)
!5258 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1990, file: !1990, line: 137, type: !5259, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!137, !892, !3007, !282, !134}
!5261 = !DILocalVariable(name: "s", arg: 1, scope: !5258, file: !1990, line: 137, type: !892)
!5262 = !DILocation(line: 137, column: 54, scope: !5258)
!5263 = !DILocalVariable(name: "object", arg: 2, scope: !5258, file: !1990, line: 137, type: !3007)
!5264 = !DILocation(line: 137, column: 69, scope: !5258)
!5265 = !DILocalVariable(name: "size", arg: 3, scope: !5258, file: !1990, line: 138, type: !282)
!5266 = !DILocation(line: 138, column: 12, scope: !5258)
!5267 = !DILocalVariable(name: "flags", arg: 4, scope: !5258, file: !1990, line: 138, type: !134)
!5268 = !DILocation(line: 138, column: 24, scope: !5258)
!5269 = !DILocation(line: 140, column: 17, scope: !5258)
!5270 = !DILocation(line: 140, column: 2, scope: !5258)
!5271 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !5272, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{null, !170, !137}
!5274 = !DILocalVariable(name: "dev", arg: 1, scope: !5271, file: !67, line: 660, type: !170)
!5275 = !DILocation(line: 660, column: 51, scope: !5271)
!5276 = !DILocalVariable(name: "data", arg: 2, scope: !5271, file: !67, line: 660, type: !137)
!5277 = !DILocation(line: 660, column: 62, scope: !5271)
!5278 = !DILocation(line: 662, column: 21, scope: !5271)
!5279 = !DILocation(line: 662, column: 2, scope: !5271)
!5280 = !DILocation(line: 662, column: 7, scope: !5271)
!5281 = !DILocation(line: 662, column: 19, scope: !5271)
!5282 = !DILocation(line: 663, column: 1, scope: !5271)
!5283 = distinct !DISubprogram(name: "input_get_drvdata", scope: !3972, file: !3972, line: 366, type: !5284, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!137, !3970}
!5286 = !DILocalVariable(name: "dev", arg: 1, scope: !5283, file: !3972, line: 366, type: !3970)
!5287 = !DILocation(line: 366, column: 57, scope: !5283)
!5288 = !DILocation(line: 368, column: 26, scope: !5283)
!5289 = !DILocation(line: 368, column: 31, scope: !5283)
!5290 = !DILocation(line: 368, column: 9, scope: !5283)
!5291 = !DILocation(line: 368, column: 2, scope: !5283)
!5292 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5293, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!137, !5295}
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!5297 = !DILocalVariable(name: "dev", arg: 1, scope: !5292, file: !67, line: 655, type: !5295)
!5298 = !DILocation(line: 655, column: 58, scope: !5292)
!5299 = !DILocation(line: 657, column: 9, scope: !5292)
!5300 = !DILocation(line: 657, column: 14, scope: !5292)
!5301 = !DILocation(line: 657, column: 2, scope: !5292)
!5302 = distinct !DISubprogram(name: "kasan_check_write", scope: !5303, file: !5303, line: 38, type: !5304, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5303 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!447, !5039, !7}
!5306 = !DILocalVariable(name: "p", arg: 1, scope: !5302, file: !5303, line: 38, type: !5039)
!5307 = !DILocation(line: 38, column: 59, scope: !5302)
!5308 = !DILocalVariable(name: "size", arg: 2, scope: !5302, file: !5303, line: 38, type: !7)
!5309 = !DILocation(line: 38, column: 75, scope: !5302)
!5310 = !DILocation(line: 40, column: 2, scope: !5302)
!5311 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5312, file: !5312, line: 178, type: !5313, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5312 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5313 = !DISubroutineType(types: !5314)
!5314 = !{null, !5039, !282, !136}
!5315 = !DILocalVariable(name: "ptr", arg: 1, scope: !5311, file: !5312, line: 178, type: !5039)
!5316 = !DILocation(line: 178, column: 60, scope: !5311)
!5317 = !DILocalVariable(name: "size", arg: 2, scope: !5311, file: !5312, line: 178, type: !282)
!5318 = !DILocation(line: 178, column: 72, scope: !5311)
!5319 = !DILocalVariable(name: "type", arg: 3, scope: !5311, file: !5312, line: 179, type: !136)
!5320 = !DILocation(line: 179, column: 15, scope: !5311)
!5321 = !DILocation(line: 179, column: 23, scope: !5311)
!5322 = distinct !DISubprogram(name: "hanwang_parse_packet", scope: !3, file: !3, line: 107, type: !5323, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !3964}
!5325 = !DILocalVariable(name: "p", arg: 1, scope: !5326, file: !5327, line: 171, type: !5330)
!5326 = distinct !DISubprogram(name: "__swab16p", scope: !5327, file: !5327, line: 171, type: !5328, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5327 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!817, !5330}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!5332 = !DILocation(line: 171, column: 53, scope: !5326, inlinedAt: !5333)
!5333 = distinct !DILocation(line: 90, column: 9, scope: !5334, inlinedAt: !5340)
!5334 = distinct !DISubprogram(name: "__be16_to_cpup", scope: !5335, file: !5335, line: 88, type: !5336, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5335 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!817, !5338}
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3818)
!5340 = distinct !DILocation(line: 183, column: 7, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 123, column: 20)
!5342 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 121, column: 19)
!5343 = !DILocalVariable(name: "p", arg: 1, scope: !5334, file: !5335, line: 88, type: !5338)
!5344 = !DILocation(line: 88, column: 59, scope: !5334, inlinedAt: !5340)
!5345 = !DILocation(line: 171, column: 53, scope: !5326, inlinedAt: !5346)
!5346 = distinct !DILocation(line: 90, column: 9, scope: !5334, inlinedAt: !5347)
!5347 = distinct !DILocation(line: 181, column: 7, scope: !5341)
!5348 = !DILocation(line: 88, column: 59, scope: !5334, inlinedAt: !5347)
!5349 = !DILocalVariable(name: "hanwang", arg: 1, scope: !5322, file: !3, line: 107, type: !3964)
!5350 = !DILocation(line: 107, column: 50, scope: !5322)
!5351 = !DILocalVariable(name: "data", scope: !5322, file: !3, line: 109, type: !3594)
!5352 = !DILocation(line: 109, column: 17, scope: !5322)
!5353 = !DILocation(line: 109, column: 24, scope: !5322)
!5354 = !DILocation(line: 109, column: 33, scope: !5322)
!5355 = !DILocalVariable(name: "input_dev", scope: !5322, file: !3, line: 110, type: !3970)
!5356 = !DILocation(line: 110, column: 20, scope: !5322)
!5357 = !DILocation(line: 110, column: 32, scope: !5322)
!5358 = !DILocation(line: 110, column: 41, scope: !5322)
!5359 = !DILocalVariable(name: "dev", scope: !5322, file: !3, line: 111, type: !138)
!5360 = !DILocation(line: 111, column: 21, scope: !5322)
!5361 = !DILocation(line: 111, column: 27, scope: !5322)
!5362 = !DILocation(line: 111, column: 36, scope: !5322)
!5363 = !DILocalVariable(name: "type", scope: !5322, file: !3, line: 112, type: !113)
!5364 = !DILocation(line: 112, column: 27, scope: !5322)
!5365 = !DILocation(line: 112, column: 34, scope: !5322)
!5366 = !DILocation(line: 112, column: 43, scope: !5322)
!5367 = !DILocation(line: 112, column: 53, scope: !5322)
!5368 = !DILocalVariable(name: "i", scope: !5322, file: !3, line: 113, type: !136)
!5369 = !DILocation(line: 113, column: 6, scope: !5322)
!5370 = !DILocalVariable(name: "p", scope: !5322, file: !3, line: 114, type: !816)
!5371 = !DILocation(line: 114, column: 6, scope: !5322)
!5372 = !DILocation(line: 116, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 116, column: 6)
!5374 = !DILocation(line: 116, column: 11, scope: !5373)
!5375 = !DILocation(line: 116, column: 6, scope: !5322)
!5376 = !DILocation(line: 117, column: 3, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 116, column: 37)
!5378 = !DILocation(line: 117, column: 12, scope: !5377)
!5379 = !DILocation(line: 117, column: 25, scope: !5377)
!5380 = !DILocation(line: 118, column: 3, scope: !5377)
!5381 = !DILocation(line: 118, column: 12, scope: !5377)
!5382 = !DILocation(line: 118, column: 23, scope: !5377)
!5383 = !DILocation(line: 119, column: 2, scope: !5377)
!5384 = !DILocation(line: 121, column: 10, scope: !5322)
!5385 = !DILocation(line: 121, column: 2, scope: !5322)
!5386 = !DILocation(line: 123, column: 11, scope: !5342)
!5387 = !DILocation(line: 123, column: 3, scope: !5342)
!5388 = !DILocation(line: 125, column: 8, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 125, column: 8)
!5390 = !DILocation(line: 125, column: 13, scope: !5389)
!5391 = !DILocation(line: 125, column: 8, scope: !5341)
!5392 = !DILocation(line: 126, column: 5, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 125, column: 39)
!5394 = !DILocation(line: 126, column: 14, scope: !5393)
!5395 = !DILocation(line: 126, column: 25, scope: !5393)
!5396 = !DILocation(line: 127, column: 22, scope: !5393)
!5397 = !DILocation(line: 128, column: 8, scope: !5393)
!5398 = !DILocation(line: 128, column: 17, scope: !5393)
!5399 = !DILocation(line: 127, column: 5, scope: !5393)
!5400 = !DILocation(line: 129, column: 4, scope: !5393)
!5401 = !DILocation(line: 130, column: 4, scope: !5341)
!5402 = !DILocation(line: 133, column: 8, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 133, column: 8)
!5404 = !DILocation(line: 133, column: 13, scope: !5403)
!5405 = !DILocation(line: 133, column: 8, scope: !5341)
!5406 = !DILocation(line: 134, column: 5, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 133, column: 39)
!5408 = !DILocation(line: 134, column: 14, scope: !5407)
!5409 = !DILocation(line: 134, column: 25, scope: !5407)
!5410 = !DILocation(line: 135, column: 22, scope: !5407)
!5411 = !DILocation(line: 136, column: 8, scope: !5407)
!5412 = !DILocation(line: 136, column: 17, scope: !5407)
!5413 = !DILocation(line: 135, column: 5, scope: !5407)
!5414 = !DILocation(line: 137, column: 4, scope: !5407)
!5415 = !DILocation(line: 138, column: 4, scope: !5341)
!5416 = !DILocation(line: 141, column: 12, scope: !5341)
!5417 = !DILocation(line: 141, column: 20, scope: !5341)
!5418 = !DILocation(line: 141, column: 4, scope: !5341)
!5419 = !DILocation(line: 144, column: 5, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 141, column: 28)
!5421 = !DILocation(line: 144, column: 14, scope: !5420)
!5422 = !DILocation(line: 144, column: 25, scope: !5420)
!5423 = !DILocation(line: 145, column: 5, scope: !5420)
!5424 = !DILocation(line: 145, column: 14, scope: !5420)
!5425 = !DILocation(line: 145, column: 27, scope: !5420)
!5426 = !DILocation(line: 146, column: 22, scope: !5420)
!5427 = !DILocation(line: 146, column: 5, scope: !5420)
!5428 = !DILocation(line: 147, column: 5, scope: !5420)
!5429 = !DILocation(line: 150, column: 5, scope: !5420)
!5430 = !DILocation(line: 150, column: 14, scope: !5420)
!5431 = !DILocation(line: 150, column: 25, scope: !5420)
!5432 = !DILocation(line: 151, column: 5, scope: !5420)
!5433 = !DILocation(line: 151, column: 14, scope: !5420)
!5434 = !DILocation(line: 151, column: 27, scope: !5420)
!5435 = !DILocation(line: 152, column: 22, scope: !5420)
!5436 = !DILocation(line: 152, column: 5, scope: !5420)
!5437 = !DILocation(line: 153, column: 5, scope: !5420)
!5438 = !DILocation(line: 155, column: 5, scope: !5420)
!5439 = !DILocation(line: 155, column: 14, scope: !5420)
!5440 = !DILocation(line: 155, column: 25, scope: !5420)
!5441 = !DILocation(line: 158, column: 5, scope: !5420)
!5442 = !DILocation(line: 160, column: 4, scope: !5341)
!5443 = !DILocation(line: 163, column: 12, scope: !5341)
!5444 = !DILocation(line: 163, column: 4, scope: !5341)
!5445 = !DILocation(line: 165, column: 10, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 163, column: 18)
!5447 = !DILocation(line: 165, column: 18, scope: !5446)
!5448 = !DILocation(line: 166, column: 11, scope: !5446)
!5449 = !DILocation(line: 166, column: 19, scope: !5446)
!5450 = !DILocation(line: 166, column: 27, scope: !5446)
!5451 = !DILocation(line: 165, column: 24, scope: !5446)
!5452 = !DILocation(line: 167, column: 10, scope: !5446)
!5453 = !DILocation(line: 167, column: 18, scope: !5446)
!5454 = !DILocation(line: 166, column: 33, scope: !5446)
!5455 = !DILocation(line: 165, column: 9, scope: !5446)
!5456 = !DILocation(line: 165, column: 7, scope: !5446)
!5457 = !DILocation(line: 168, column: 5, scope: !5446)
!5458 = !DILocation(line: 172, column: 10, scope: !5446)
!5459 = !DILocation(line: 172, column: 18, scope: !5446)
!5460 = !DILocation(line: 172, column: 27, scope: !5446)
!5461 = !DILocation(line: 172, column: 35, scope: !5446)
!5462 = !DILocation(line: 172, column: 24, scope: !5446)
!5463 = !DILocation(line: 172, column: 9, scope: !5446)
!5464 = !DILocation(line: 172, column: 7, scope: !5446)
!5465 = !DILocation(line: 173, column: 5, scope: !5446)
!5466 = !DILocation(line: 176, column: 7, scope: !5446)
!5467 = !DILocation(line: 177, column: 5, scope: !5446)
!5468 = !DILocation(line: 180, column: 21, scope: !5341)
!5469 = !DILocation(line: 181, column: 31, scope: !5341)
!5470 = !DILocation(line: 181, column: 20, scope: !5341)
!5471 = !DILocation(line: 90, column: 28, scope: !5334, inlinedAt: !5347)
!5472 = !DILocation(line: 176, column: 9, scope: !5326, inlinedAt: !5346)
!5473 = !DILocation(line: 181, column: 7, scope: !5341)
!5474 = !DILocation(line: 180, column: 4, scope: !5341)
!5475 = !DILocation(line: 182, column: 21, scope: !5341)
!5476 = !DILocation(line: 183, column: 31, scope: !5341)
!5477 = !DILocation(line: 183, column: 20, scope: !5341)
!5478 = !DILocation(line: 90, column: 28, scope: !5334, inlinedAt: !5340)
!5479 = !DILocation(line: 176, column: 9, scope: !5326, inlinedAt: !5333)
!5480 = !DILocation(line: 183, column: 7, scope: !5341)
!5481 = !DILocation(line: 182, column: 4, scope: !5341)
!5482 = !DILocation(line: 184, column: 21, scope: !5341)
!5483 = !DILocation(line: 184, column: 46, scope: !5341)
!5484 = !DILocation(line: 184, column: 4, scope: !5341)
!5485 = !DILocation(line: 185, column: 21, scope: !5341)
!5486 = !DILocation(line: 185, column: 44, scope: !5341)
!5487 = !DILocation(line: 185, column: 52, scope: !5341)
!5488 = !DILocation(line: 185, column: 4, scope: !5341)
!5489 = !DILocation(line: 186, column: 21, scope: !5341)
!5490 = !DILocation(line: 186, column: 44, scope: !5341)
!5491 = !DILocation(line: 186, column: 52, scope: !5341)
!5492 = !DILocation(line: 186, column: 4, scope: !5341)
!5493 = !DILocation(line: 187, column: 21, scope: !5341)
!5494 = !DILocation(line: 187, column: 44, scope: !5341)
!5495 = !DILocation(line: 187, column: 52, scope: !5341)
!5496 = !DILocation(line: 187, column: 4, scope: !5341)
!5497 = !DILocation(line: 189, column: 8, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 189, column: 8)
!5499 = !DILocation(line: 189, column: 13, scope: !5498)
!5500 = !DILocation(line: 189, column: 8, scope: !5341)
!5501 = !DILocation(line: 190, column: 22, scope: !5498)
!5502 = !DILocation(line: 191, column: 8, scope: !5498)
!5503 = !DILocation(line: 191, column: 16, scope: !5498)
!5504 = !DILocation(line: 190, column: 5, scope: !5498)
!5505 = !DILocation(line: 193, column: 22, scope: !5498)
!5506 = !DILocation(line: 193, column: 5, scope: !5498)
!5507 = !DILocation(line: 195, column: 4, scope: !5341)
!5508 = !DILocation(line: 198, column: 20, scope: !5342)
!5509 = !DILocation(line: 198, column: 41, scope: !5342)
!5510 = !DILocation(line: 198, column: 50, scope: !5342)
!5511 = !DILocation(line: 198, column: 3, scope: !5342)
!5512 = !DILocation(line: 199, column: 15, scope: !5342)
!5513 = !DILocation(line: 200, column: 5, scope: !5342)
!5514 = !DILocation(line: 200, column: 14, scope: !5342)
!5515 = !DILocation(line: 200, column: 24, scope: !5342)
!5516 = !DILocation(line: 199, column: 3, scope: !5342)
!5517 = !DILocation(line: 201, column: 3, scope: !5342)
!5518 = !DILocation(line: 205, column: 3, scope: !5342)
!5519 = !DILocation(line: 205, column: 12, scope: !5342)
!5520 = !DILocation(line: 205, column: 23, scope: !5342)
!5521 = !DILocation(line: 207, column: 11, scope: !5342)
!5522 = !DILocation(line: 207, column: 3, scope: !5342)
!5523 = !DILocation(line: 209, column: 21, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 207, column: 17)
!5525 = !DILocation(line: 210, column: 7, scope: !5524)
!5526 = !DILocation(line: 210, column: 15, scope: !5524)
!5527 = !DILocation(line: 210, column: 18, scope: !5524)
!5528 = !DILocation(line: 210, column: 26, scope: !5524)
!5529 = !DILocation(line: 210, column: 29, scope: !5524)
!5530 = !DILocation(line: 209, column: 4, scope: !5524)
!5531 = !DILocation(line: 211, column: 21, scope: !5524)
!5532 = !DILocation(line: 211, column: 43, scope: !5524)
!5533 = !DILocation(line: 211, column: 4, scope: !5524)
!5534 = !DILocation(line: 212, column: 21, scope: !5524)
!5535 = !DILocation(line: 212, column: 39, scope: !5524)
!5536 = !DILocation(line: 212, column: 4, scope: !5524)
!5537 = !DILocation(line: 213, column: 11, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 213, column: 4)
!5539 = !DILocation(line: 213, column: 9, scope: !5538)
!5540 = !DILocation(line: 213, column: 16, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 213, column: 4)
!5542 = !DILocation(line: 213, column: 18, scope: !5541)
!5543 = !DILocation(line: 213, column: 4, scope: !5538)
!5544 = !DILocation(line: 214, column: 22, scope: !5541)
!5545 = !DILocation(line: 215, column: 15, scope: !5541)
!5546 = !DILocation(line: 215, column: 13, scope: !5541)
!5547 = !DILocation(line: 215, column: 18, scope: !5541)
!5548 = !DILocation(line: 215, column: 34, scope: !5541)
!5549 = !DILocation(line: 215, column: 31, scope: !5541)
!5550 = !DILocation(line: 215, column: 26, scope: !5541)
!5551 = !DILocation(line: 214, column: 5, scope: !5541)
!5552 = !DILocation(line: 213, column: 24, scope: !5541)
!5553 = !DILocation(line: 213, column: 4, scope: !5541)
!5554 = distinct !{!5554, !5543, !5555}
!5555 = !DILocation(line: 215, column: 36, scope: !5538)
!5556 = !DILocation(line: 216, column: 4, scope: !5524)
!5557 = !DILocation(line: 219, column: 21, scope: !5524)
!5558 = !DILocation(line: 219, column: 49, scope: !5524)
!5559 = !DILocation(line: 219, column: 57, scope: !5524)
!5560 = !DILocation(line: 220, column: 6, scope: !5524)
!5561 = !DILocation(line: 220, column: 14, scope: !5524)
!5562 = !DILocation(line: 220, column: 17, scope: !5524)
!5563 = !DILocation(line: 220, column: 25, scope: !5524)
!5564 = !DILocation(line: 220, column: 28, scope: !5524)
!5565 = !DILocation(line: 220, column: 36, scope: !5524)
!5566 = !DILocation(line: 221, column: 6, scope: !5524)
!5567 = !DILocation(line: 221, column: 14, scope: !5524)
!5568 = !DILocation(line: 221, column: 17, scope: !5524)
!5569 = !DILocation(line: 219, column: 4, scope: !5524)
!5570 = !DILocation(line: 222, column: 21, scope: !5524)
!5571 = !DILocation(line: 223, column: 8, scope: !5524)
!5572 = !DILocation(line: 223, column: 16, scope: !5524)
!5573 = !DILocation(line: 223, column: 24, scope: !5524)
!5574 = !DILocation(line: 223, column: 32, scope: !5524)
!5575 = !DILocation(line: 223, column: 30, scope: !5524)
!5576 = !DILocation(line: 222, column: 4, scope: !5524)
!5577 = !DILocation(line: 224, column: 21, scope: !5524)
!5578 = !DILocation(line: 225, column: 8, scope: !5524)
!5579 = !DILocation(line: 225, column: 16, scope: !5524)
!5580 = !DILocation(line: 225, column: 24, scope: !5524)
!5581 = !DILocation(line: 225, column: 32, scope: !5524)
!5582 = !DILocation(line: 225, column: 30, scope: !5524)
!5583 = !DILocation(line: 224, column: 4, scope: !5524)
!5584 = !DILocation(line: 226, column: 21, scope: !5524)
!5585 = !DILocation(line: 226, column: 39, scope: !5524)
!5586 = !DILocation(line: 226, column: 47, scope: !5524)
!5587 = !DILocation(line: 226, column: 4, scope: !5524)
!5588 = !DILocation(line: 227, column: 11, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 227, column: 4)
!5590 = !DILocation(line: 227, column: 9, scope: !5589)
!5591 = !DILocation(line: 227, column: 16, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 227, column: 4)
!5593 = !DILocation(line: 227, column: 18, scope: !5592)
!5594 = !DILocation(line: 227, column: 4, scope: !5589)
!5595 = !DILocation(line: 228, column: 22, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 227, column: 28)
!5597 = !DILocation(line: 229, column: 15, scope: !5596)
!5598 = !DILocation(line: 229, column: 13, scope: !5596)
!5599 = !DILocation(line: 229, column: 18, scope: !5596)
!5600 = !DILocation(line: 229, column: 34, scope: !5596)
!5601 = !DILocation(line: 229, column: 31, scope: !5596)
!5602 = !DILocation(line: 229, column: 26, scope: !5596)
!5603 = !DILocation(line: 228, column: 5, scope: !5596)
!5604 = !DILocation(line: 230, column: 22, scope: !5596)
!5605 = !DILocation(line: 231, column: 15, scope: !5596)
!5606 = !DILocation(line: 231, column: 13, scope: !5596)
!5607 = !DILocation(line: 231, column: 18, scope: !5596)
!5608 = !DILocation(line: 231, column: 34, scope: !5596)
!5609 = !DILocation(line: 231, column: 31, scope: !5596)
!5610 = !DILocation(line: 231, column: 26, scope: !5596)
!5611 = !DILocation(line: 230, column: 5, scope: !5596)
!5612 = !DILocation(line: 232, column: 4, scope: !5596)
!5613 = !DILocation(line: 227, column: 24, scope: !5592)
!5614 = !DILocation(line: 227, column: 4, scope: !5592)
!5615 = distinct !{!5615, !5594, !5616}
!5616 = !DILocation(line: 232, column: 4, scope: !5589)
!5617 = !DILocation(line: 233, column: 4, scope: !5524)
!5618 = !DILocation(line: 237, column: 4, scope: !5524)
!5619 = !DILocation(line: 240, column: 20, scope: !5342)
!5620 = !DILocation(line: 240, column: 41, scope: !5342)
!5621 = !DILocation(line: 240, column: 50, scope: !5342)
!5622 = !DILocation(line: 240, column: 3, scope: !5342)
!5623 = !DILocation(line: 241, column: 15, scope: !5342)
!5624 = !DILocation(line: 241, column: 3, scope: !5342)
!5625 = !DILocation(line: 242, column: 3, scope: !5342)
!5626 = !DILocation(line: 246, column: 3, scope: !5342)
!5627 = !DILocation(line: 249, column: 13, scope: !5322)
!5628 = !DILocation(line: 249, column: 2, scope: !5322)
!5629 = !DILocation(line: 250, column: 1, scope: !5322)
!5630 = distinct !DISubprogram(name: "input_report_key", scope: !3972, file: !3972, line: 415, type: !5631, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !3970, !7, !136}
!5633 = !DILocalVariable(name: "dev", arg: 1, scope: !5630, file: !3972, line: 415, type: !3970)
!5634 = !DILocation(line: 415, column: 55, scope: !5630)
!5635 = !DILocalVariable(name: "code", arg: 2, scope: !5630, file: !3972, line: 415, type: !7)
!5636 = !DILocation(line: 415, column: 73, scope: !5630)
!5637 = !DILocalVariable(name: "value", arg: 3, scope: !5630, file: !3972, line: 415, type: !136)
!5638 = !DILocation(line: 415, column: 83, scope: !5630)
!5639 = !DILocation(line: 417, column: 14, scope: !5630)
!5640 = !DILocation(line: 417, column: 27, scope: !5630)
!5641 = !DILocation(line: 417, column: 35, scope: !5630)
!5642 = !DILocation(line: 417, column: 34, scope: !5630)
!5643 = !DILocation(line: 417, column: 33, scope: !5630)
!5644 = !DILocation(line: 417, column: 2, scope: !5630)
!5645 = !DILocation(line: 418, column: 1, scope: !5630)
!5646 = distinct !DISubprogram(name: "input_report_abs", scope: !3972, file: !3972, line: 425, type: !5631, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5647 = !DILocalVariable(name: "dev", arg: 1, scope: !5646, file: !3972, line: 425, type: !3970)
!5648 = !DILocation(line: 425, column: 55, scope: !5646)
!5649 = !DILocalVariable(name: "code", arg: 2, scope: !5646, file: !3972, line: 425, type: !7)
!5650 = !DILocation(line: 425, column: 73, scope: !5646)
!5651 = !DILocalVariable(name: "value", arg: 3, scope: !5646, file: !3972, line: 425, type: !136)
!5652 = !DILocation(line: 425, column: 83, scope: !5646)
!5653 = !DILocation(line: 427, column: 14, scope: !5646)
!5654 = !DILocation(line: 427, column: 27, scope: !5646)
!5655 = !DILocation(line: 427, column: 33, scope: !5646)
!5656 = !DILocation(line: 427, column: 2, scope: !5646)
!5657 = !DILocation(line: 428, column: 1, scope: !5646)
!5658 = distinct !DISubprogram(name: "input_sync", scope: !3972, file: !3972, line: 440, type: !4144, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5659 = !DILocalVariable(name: "dev", arg: 1, scope: !5658, file: !3972, line: 440, type: !3970)
!5660 = !DILocation(line: 440, column: 49, scope: !5658)
!5661 = !DILocation(line: 442, column: 14, scope: !5658)
!5662 = !DILocation(line: 442, column: 2, scope: !5658)
!5663 = !DILocation(line: 443, column: 1, scope: !5658)
!5664 = distinct !DISubprogram(name: "__fswab16", scope: !5327, file: !5327, line: 48, type: !5665, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{!817, !817}
!5667 = !DILocalVariable(name: "val", arg: 1, scope: !5664, file: !5327, line: 48, type: !817)
!5668 = !DILocation(line: 48, column: 57, scope: !5664)
!5669 = !DILocation(line: 53, column: 9, scope: !5664)
!5670 = !DILocation(line: 53, column: 2, scope: !5664)
!5671 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !5672, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !208)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{!137, !3708}
!5674 = !DILocalVariable(name: "intf", arg: 1, scope: !5671, file: !6, line: 263, type: !3708)
!5675 = !DILocation(line: 263, column: 60, scope: !5671)
!5676 = !DILocation(line: 265, column: 26, scope: !5671)
!5677 = !DILocation(line: 265, column: 32, scope: !5671)
!5678 = !DILocation(line: 265, column: 9, scope: !5671)
!5679 = !DILocation(line: 265, column: 2, scope: !5671)
