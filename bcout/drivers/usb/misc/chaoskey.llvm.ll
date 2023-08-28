; ModuleID = '../bcout/drivers/usb/misc/chaoskey.llvm.bc'
source_filename = "drivers/usb/misc/chaoskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_chaoskey_driver_init6:\09\09\09"
module asm ".long\09chaoskey_driver_init - .\09\09\09"
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
%struct.chaoskey = type { %struct.usb_interface*, i8, %struct.mutex, %struct.mutex, i32, i8, i8, i8, i32, i32, i32, i8*, %struct.hwrng, i32, %struct.wait_queue_head, %struct.urb*, i8* }
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__UNIQUE_ID_author211 = internal constant [49 x i8] c"chaoskey.author=Keith Packard, keithp@keithp.com\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description212 = internal constant [50 x i8] c"chaoskey.description=Altus Metrum ChaosKey driver\00", section ".modinfo", align 1, !dbg !3917
@__UNIQUE_ID_file213 = internal constant [40 x i8] c"chaoskey.file=drivers/usb/misc/chaoskey\00", section ".modinfo", align 1, !dbg !3922
@__UNIQUE_ID_license214 = internal constant [21 x i8] c"chaoskey.license=GPL\00", section ".modinfo", align 1, !dbg !3927
@__UNIQUE_ID___addressable_chaoskey_driver_init216 = internal global i8* bitcast (i32 ()* @chaoskey_driver_init to i8*), section ".discard.addressable", align 8, !dbg !3932
@chaoskey_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @chaoskey_probe, void (%struct.usb_interface*)* @chaoskey_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @chaoskey_suspend, i32 (%struct.usb_interface*)* @chaoskey_resume, i32 (%struct.usb_interface*)* @chaoskey_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([3 x %struct.usb_device_id], [3 x %struct.usb_device_id]* @chaoskey_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 8, !dbg !3939
@__exitcall_chaoskey_driver_exit = internal global void ()* @chaoskey_driver_exit, section ".exitcall.exit", align 8, !dbg !3934
@.str = private unnamed_addr constant [9 x i8] c"chaoskey\00", align 1
@chaoskey_table = internal constant [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7504, i16 24774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 4824, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4017
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@chaoskey_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4000
@.str.2 = private unnamed_addr constant [13 x i8] c"&dev->wait_q\00", align 1
@chaoskey_probe.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4003
@.str.4 = private unnamed_addr constant [11 x i8] c"&dev->lock\00", align 1
@chaoskey_probe.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4005
@.str.6 = private unnamed_addr constant [15 x i8] c"&dev->rng_lock\00", align 1
@chaoskey_class = internal global %struct.usb_class_driver { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* (%struct.device*, i16*)* null, %struct.file_operations* @chaoskey_fops, i32 224 }, align 8, !dbg !4007
@.str.7 = private unnamed_addr constant [33 x i8] c"Unable to allocate minor number.\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unable to register with hwrng\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"chaoskey%d\00", align 1
@chaoskey_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @default_llseek, i64 (%struct.file*, i8*, i64, i64*)* @chaoskey_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @chaoskey_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @chaoskey_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4015
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author211, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_description212, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file213, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license214, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_chaoskey_driver_init216 to i8*), i8* bitcast (void ()* @chaoskey_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_chaoskey_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @chaoskey_driver_init() #0 section ".init.text" !dbg !4028 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @chaoskey_driver, %struct.module* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4031
  ret i32 %call, !dbg !4031
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @chaoskey_driver_exit() #0 section ".exit.text" !dbg !4032 {
entry:
  call void @usb_deregister(%struct.usb_driver* @chaoskey_driver) #9, !dbg !4033
  ret void, !dbg !4033
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chaoskey_probe(%struct.usb_interface* %interface, %struct.usb_device_id* %id) #2 !dbg !4002 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4034, metadata !DIExpression()), !dbg !4038
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4046, metadata !DIExpression()), !dbg !4047
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4048, metadata !DIExpression()), !dbg !4049
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4050, metadata !DIExpression()), !dbg !4051
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4052, metadata !DIExpression()), !dbg !4056
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4058, metadata !DIExpression()), !dbg !4062
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4064, metadata !DIExpression()), !dbg !4068
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !4074
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !4076
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4077, metadata !DIExpression()), !dbg !4078
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4079, metadata !DIExpression()), !dbg !4080
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4081, metadata !DIExpression()), !dbg !4082
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4083, metadata !DIExpression()), !dbg !4084
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4085, metadata !DIExpression()), !dbg !4086
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4087, metadata !DIExpression()), !dbg !4088
  %retval = alloca i32, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %altsetting = alloca %struct.usb_host_interface*, align 8
  %epd = alloca %struct.usb_endpoint_descriptor*, align 8
  %in_ep = alloca i32, align 4
  %dev = alloca %struct.chaoskey*, align 8
  %result = alloca i32, align 4
  %size = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4089, metadata !DIExpression()), !dbg !4090
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4093, metadata !DIExpression()), !dbg !4094
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4095
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4096
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4094
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %altsetting, metadata !4097, metadata !DIExpression()), !dbg !4098
  %1 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4099
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !4100
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4100
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %altsetting, align 8, !dbg !4098
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd, metadata !4101, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.declare(metadata i32* %in_ep, metadata !4104, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !4106, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4108, metadata !DIExpression()), !dbg !4109
  store i32 -12, i32* %result, align 4, !dbg !4109
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4110, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4112, metadata !DIExpression()), !dbg !4113
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %altsetting, align 8, !dbg !4114
  %call1 = call i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface* %3, %struct.usb_endpoint_descriptor** %epd) #9, !dbg !4115
  store i32 %call1, i32* %res, align 4, !dbg !4116
  %4 = load i32, i32* %res, align 4, !dbg !4117
  %tobool = icmp ne i32 %4, 0, !dbg !4117
  br i1 %tobool, label %if.then, label %if.end, !dbg !4119

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %res, align 4, !dbg !4120
  store i32 %5, i32* %retval, align 4, !dbg !4122
  br label %return, !dbg !4122

if.end:                                           ; preds = %entry
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd, align 8, !dbg !4123
  %call2 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %6) #9, !dbg !4124
  store i32 %call2, i32* %in_ep, align 4, !dbg !4125
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd, align 8, !dbg !4126
  %call3 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %7) #9, !dbg !4127
  store i32 %call3, i32* %size, align 4, !dbg !4128
  %8 = load i32, i32* %size, align 4, !dbg !4129
  %cmp = icmp sle i32 %8, 0, !dbg !4131
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !4132

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4133
  br label %return, !dbg !4133

if.end5:                                          ; preds = %if.end
  %9 = load i32, i32* %size, align 4, !dbg !4135
  %cmp6 = icmp sgt i32 %9, 64, !dbg !4137
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4138

if.then7:                                         ; preds = %if.end5
  store i32 64, i32* %size, align 4, !dbg !4139
  br label %if.end8, !dbg !4141

if.end8:                                          ; preds = %if.then7, %if.end5
  %call9 = call i8* @kzalloc(i64 248, i32 3264) #9, !dbg !4142
  %10 = bitcast i8* %call9 to %struct.chaoskey*, !dbg !4142
  store %struct.chaoskey* %10, %struct.chaoskey** %dev, align 8, !dbg !4143
  %11 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4144
  %cmp10 = icmp eq %struct.chaoskey* %11, null, !dbg !4146
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4147

if.then11:                                        ; preds = %if.end8
  br label %out, !dbg !4148

if.end12:                                         ; preds = %if.end8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4149
  %call13 = call %struct.usb_interface* @usb_get_intf(%struct.usb_interface* %12) #9, !dbg !4150
  %13 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4151
  %interface14 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %13, i32 0, i32 0, !dbg !4152
  store %struct.usb_interface* %call13, %struct.usb_interface** %interface14, align 8, !dbg !4153
  %14 = load i32, i32* %size, align 4, !dbg !4154
  %conv = sext i32 %14 to i64, !dbg !4154
  store i64 %conv, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !4155
  %16 = call i1 @llvm.is.constant.i64(i64 %15) #10, !dbg !4156
  br i1 %16, label %if.then.i, label %if.end9.i, !dbg !4157

if.then.i:                                        ; preds = %if.end12
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !4158
  %cmp.i = icmp ugt i64 %17, 8192, !dbg !4159
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4160

if.then1.i:                                       ; preds = %if.then.i
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4161
  %19 = load i32, i32* %flags.addr.i, align 4, !dbg !4162
  store i64 %18, i64* %size.addr.i.i, align 8
  store i32 %19, i32* %flags.addr.i.i, align 4
  %20 = load i64, i64* %size.addr.i.i, align 8, !dbg !4163
  %call.i.i = call i32 @get_order(i64 %20) #11, !dbg !4164
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4082
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4165
  %22 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4166
  %23 = load i32, i32* %order.i.i, align 4, !dbg !4167
  store i64 %21, i64* %size.addr.i.i.i, align 8
  store i32 %22, i32* %flags.addr.i.i.i, align 4
  store i32 %23, i32* %order.addr.i.i.i, align 4
  %24 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4168
  %25 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4169
  %26 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4170
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %24, i32 %25, i32 %26) #12, !dbg !4171
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4171
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4171
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4171
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4171
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4172
  br label %kmalloc.exit, !dbg !4172

if.end.i:                                         ; preds = %if.then.i
  %27 = load i64, i64* %size.addr.i, align 8, !dbg !4173
  store i64 %27, i64* %size.addr.i11.i, align 8
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4174
  %tobool.i.i = icmp ne i64 %28, 0, !dbg !4174
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4176

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4177
  br label %kmalloc_index.exit.i, !dbg !4177

if.end.i.i:                                       ; preds = %if.end.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4178
  %cmp.i.i = icmp ule i64 %29, 8, !dbg !4180
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4181

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4182
  br label %kmalloc_index.exit.i, !dbg !4182

if.end2.i.i:                                      ; preds = %if.end.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4183
  %cmp3.i.i = icmp ugt i64 %30, 64, !dbg !4185
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4186

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4187
  %cmp4.i.i = icmp ule i64 %31, 96, !dbg !4188
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4189

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4190
  br label %kmalloc_index.exit.i, !dbg !4190

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4191
  %cmp7.i.i = icmp ugt i64 %32, 128, !dbg !4193
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4194

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4195
  %cmp9.i.i = icmp ule i64 %33, 192, !dbg !4196
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4197

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4198
  br label %kmalloc_index.exit.i, !dbg !4198

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4199
  %cmp12.i.i = icmp ule i64 %34, 8, !dbg !4201
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4202

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4203
  br label %kmalloc_index.exit.i, !dbg !4203

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4204
  %cmp15.i.i = icmp ule i64 %35, 16, !dbg !4206
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4207

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4208
  br label %kmalloc_index.exit.i, !dbg !4208

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4209
  %cmp18.i.i = icmp ule i64 %36, 32, !dbg !4211
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4212

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4213
  br label %kmalloc_index.exit.i, !dbg !4213

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4214
  %cmp21.i.i = icmp ule i64 %37, 64, !dbg !4216
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4217

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4218
  br label %kmalloc_index.exit.i, !dbg !4218

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4219
  %cmp24.i.i = icmp ule i64 %38, 128, !dbg !4221
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4222

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4223
  br label %kmalloc_index.exit.i, !dbg !4223

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4224
  %cmp27.i.i = icmp ule i64 %39, 256, !dbg !4226
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4227

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4228
  br label %kmalloc_index.exit.i, !dbg !4228

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4229
  %cmp30.i.i = icmp ule i64 %40, 512, !dbg !4231
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4232

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4233
  br label %kmalloc_index.exit.i, !dbg !4233

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4234
  %cmp33.i.i = icmp ule i64 %41, 1024, !dbg !4236
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4237

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4238
  br label %kmalloc_index.exit.i, !dbg !4238

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4239
  %cmp36.i.i = icmp ule i64 %42, 2048, !dbg !4241
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4242

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4243
  br label %kmalloc_index.exit.i, !dbg !4243

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4244
  %cmp39.i.i = icmp ule i64 %43, 4096, !dbg !4246
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4247

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4248
  br label %kmalloc_index.exit.i, !dbg !4248

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4249
  %cmp42.i.i = icmp ule i64 %44, 8192, !dbg !4251
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4252

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4253
  br label %kmalloc_index.exit.i, !dbg !4253

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4254
  %cmp45.i.i = icmp ule i64 %45, 16384, !dbg !4256
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4257

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4258
  br label %kmalloc_index.exit.i, !dbg !4258

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4259
  %cmp48.i.i = icmp ule i64 %46, 32768, !dbg !4261
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4262

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4263
  br label %kmalloc_index.exit.i, !dbg !4263

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4264
  %cmp51.i.i = icmp ule i64 %47, 65536, !dbg !4266
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4267

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4268
  br label %kmalloc_index.exit.i, !dbg !4268

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4269
  %cmp54.i.i = icmp ule i64 %48, 131072, !dbg !4271
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4272

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4273
  br label %kmalloc_index.exit.i, !dbg !4273

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4274
  %cmp57.i.i = icmp ule i64 %49, 262144, !dbg !4276
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4277

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4278
  br label %kmalloc_index.exit.i, !dbg !4278

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4279
  %cmp60.i.i = icmp ule i64 %50, 524288, !dbg !4281
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4282

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4283
  br label %kmalloc_index.exit.i, !dbg !4283

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4284
  %cmp63.i.i = icmp ule i64 %51, 1048576, !dbg !4286
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4287

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4288
  br label %kmalloc_index.exit.i, !dbg !4288

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4289
  %cmp66.i.i = icmp ule i64 %52, 2097152, !dbg !4291
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4292

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4293
  br label %kmalloc_index.exit.i, !dbg !4293

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4294
  %cmp69.i.i = icmp ule i64 %53, 4194304, !dbg !4296
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4297

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4298
  br label %kmalloc_index.exit.i, !dbg !4298

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4299
  %cmp72.i.i = icmp ule i64 %54, 8388608, !dbg !4301
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4302

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4303
  br label %kmalloc_index.exit.i, !dbg !4303

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4304
  %cmp75.i.i = icmp ule i64 %55, 16777216, !dbg !4306
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4307

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4308
  br label %kmalloc_index.exit.i, !dbg !4308

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4309
  %cmp78.i.i = icmp ule i64 %56, 33554432, !dbg !4311
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4312

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4313
  br label %kmalloc_index.exit.i, !dbg !4313

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4314
  %cmp81.i.i = icmp ule i64 %57, 67108864, !dbg !4316
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4317

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4318
  br label %kmalloc_index.exit.i, !dbg !4318

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4319, !srcloc !4322
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4323, !srcloc !4326
  unreachable, !dbg !4327

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %58 = load i32, i32* %retval.i.i, align 4, !dbg !4328
  store i32 %58, i32* %index.i, align 4, !dbg !4329
  %59 = load i32, i32* %index.i, align 4, !dbg !4330
  %tobool.i = icmp ne i32 %59, 0, !dbg !4330
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4332

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4333
  br label %kmalloc.exit, !dbg !4333

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %60 = load i32, i32* %flags.addr.i, align 4, !dbg !4334
  store i32 %60, i32* %flags.addr.i13.i, align 4
  %61 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4335
  %and.i.i = and i32 %61, 17, !dbg !4335
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4335
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4335
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4335
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4335
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4337

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4338
  br label %kmalloc_type.exit.i, !dbg !4338

if.end.i16.i:                                     ; preds = %if.end4.i
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4339
  %and2.i.i = and i32 %62, 1, !dbg !4340
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4339
  %63 = zext i1 %tobool3.i.i to i64, !dbg !4339
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4339
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4341
  br label %kmalloc_type.exit.i, !dbg !4341

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %64 = load i32, i32* %retval.i12.i, align 4, !dbg !4342
  %idxprom.i = zext i32 %64 to i64, !dbg !4343
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4343
  %65 = load i32, i32* %index.i, align 4, !dbg !4344
  %idxprom6.i = zext i32 %65 to i64, !dbg !4343
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4343
  %66 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4343
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !4345
  %68 = load i64, i64* %size.addr.i, align 8, !dbg !4346
  store %struct.kmem_cache* %66, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %67, i32* %flags.addr.i17.i, align 4
  store i64 %68, i64* %size.addr.i18.i, align 8
  %69 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4347
  %70 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4348
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %69, i32 %70) #12, !dbg !4349
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4349
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4349
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4349
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4349
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4051
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4350
  %72 = load i8*, i8** %ret.i.i, align 8, !dbg !4351
  %73 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4352
  %74 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4353
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %71, i8* %72, i64 %73, i32 %74) #12, !dbg !4354
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4355
  %75 = load i8*, i8** %ret.i.i, align 8, !dbg !4356
  store i8* %75, i8** %retval.i, align 8, !dbg !4357
  br label %kmalloc.exit, !dbg !4357

if.end9.i:                                        ; preds = %if.end12
  %76 = load i64, i64* %size.addr.i, align 8, !dbg !4358
  %77 = load i32, i32* %flags.addr.i, align 4, !dbg !4359
  %call10.i = call noalias i8* @__kmalloc(i64 %76, i32 %77) #12, !dbg !4360
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4360
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4360
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4360
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4360
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4361
  br label %kmalloc.exit, !dbg !4361

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %78 = load i8*, i8** %retval.i, align 8, !dbg !4362
  %79 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4363
  %buf = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %79, i32 0, i32 16, !dbg !4364
  store i8* %78, i8** %buf, align 8, !dbg !4365
  %80 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4366
  %buf16 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %80, i32 0, i32 16, !dbg !4368
  %81 = load i8*, i8** %buf16, align 8, !dbg !4368
  %cmp17 = icmp eq i8* %81, null, !dbg !4369
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4370

if.then19:                                        ; preds = %kmalloc.exit
  br label %out, !dbg !4371

if.end20:                                         ; preds = %kmalloc.exit
  %call21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4372
  %82 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4373
  %urb = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %82, i32 0, i32 15, !dbg !4374
  store %struct.urb* %call21, %struct.urb** %urb, align 8, !dbg !4375
  %83 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4376
  %urb22 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %83, i32 0, i32 15, !dbg !4378
  %84 = load %struct.urb*, %struct.urb** %urb22, align 8, !dbg !4378
  %tobool23 = icmp ne %struct.urb* %84, null, !dbg !4376
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !4379

if.then24:                                        ; preds = %if.end20
  br label %out, !dbg !4380

if.end25:                                         ; preds = %if.end20
  %85 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4381
  %urb26 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %85, i32 0, i32 15, !dbg !4382
  %86 = load %struct.urb*, %struct.urb** %urb26, align 8, !dbg !4382
  %87 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4383
  %88 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4384
  %89 = load i32, i32* %in_ep, align 4, !dbg !4384
  %call27 = call i32 @__create_pipe(%struct.usb_device* %88, i32 %89) #9, !dbg !4384
  %or = or i32 -1073741824, %call27, !dbg !4384
  %or28 = or i32 %or, 128, !dbg !4384
  %90 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4385
  %buf29 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %90, i32 0, i32 16, !dbg !4386
  %91 = load i8*, i8** %buf29, align 8, !dbg !4386
  %92 = load i32, i32* %size, align 4, !dbg !4387
  %93 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4388
  %94 = bitcast %struct.chaoskey* %93 to i8*, !dbg !4388
  call void @usb_fill_bulk_urb(%struct.urb* %86, %struct.usb_device* %87, i32 %or28, i8* %91, i32 %92, void (%struct.urb*)* @chaos_read_callback, i8* %94) #9, !dbg !4389
  %95 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4390
  %product = getelementptr inbounds %struct.usb_device, %struct.usb_device* %95, i32 0, i32 31, !dbg !4392
  %96 = load i8*, i8** %product, align 8, !dbg !4392
  %tobool30 = icmp ne i8* %96, null, !dbg !4390
  br i1 %tobool30, label %land.lhs.true, label %if.end41, !dbg !4393

land.lhs.true:                                    ; preds = %if.end25
  %97 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4394
  %serial = getelementptr inbounds %struct.usb_device, %struct.usb_device* %97, i32 0, i32 33, !dbg !4395
  %98 = load i8*, i8** %serial, align 8, !dbg !4395
  %tobool31 = icmp ne i8* %98, null, !dbg !4394
  br i1 %tobool31, label %if.then32, label %if.end41, !dbg !4396

if.then32:                                        ; preds = %land.lhs.true
  %99 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4397
  %product33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 31, !dbg !4399
  %100 = load i8*, i8** %product33, align 8, !dbg !4399
  %101 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4400
  %serial34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 33, !dbg !4401
  %102 = load i8*, i8** %serial34, align 8, !dbg !4401
  %call35 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %100, i8* %102) #9, !dbg !4402
  %103 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4403
  %name = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %103, i32 0, i32 11, !dbg !4404
  store i8* %call35, i8** %name, align 8, !dbg !4405
  %104 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4406
  %name36 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %104, i32 0, i32 11, !dbg !4408
  %105 = load i8*, i8** %name36, align 8, !dbg !4408
  %cmp37 = icmp eq i8* %105, null, !dbg !4409
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !4410

if.then39:                                        ; preds = %if.then32
  br label %out, !dbg !4411

if.end40:                                         ; preds = %if.then32
  br label %if.end41, !dbg !4412

if.end41:                                         ; preds = %if.end40, %land.lhs.true, %if.end25
  %106 = load i32, i32* %in_ep, align 4, !dbg !4413
  %conv42 = trunc i32 %106 to i8, !dbg !4413
  %107 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4414
  %in_ep43 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %107, i32 0, i32 1, !dbg !4415
  store i8 %conv42, i8* %in_ep43, align 8, !dbg !4416
  %108 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4417
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %108, i32 0, i32 15, !dbg !4417
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !4417
  %109 = load i16, i16* %idVendor, align 8, !dbg !4417
  %conv44 = zext i16 %109 to i32, !dbg !4417
  %cmp45 = icmp ne i32 %conv44, 4824, !dbg !4419
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !4420

if.then47:                                        ; preds = %if.end41
  %110 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4421
  %reads_started = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %110, i32 0, i32 7, !dbg !4422
  store i8 1, i8* %reads_started, align 2, !dbg !4423
  br label %if.end48, !dbg !4421

if.end48:                                         ; preds = %if.then47, %if.end41
  %111 = load i32, i32* %size, align 4, !dbg !4424
  %112 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4425
  %size49 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %112, i32 0, i32 8, !dbg !4426
  store i32 %111, i32* %size49, align 8, !dbg !4427
  %113 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4428
  %present = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %113, i32 0, i32 5, !dbg !4429
  store i8 1, i8* %present, align 4, !dbg !4430
  br label %do.body, !dbg !4431

do.body:                                          ; preds = %if.end48
  %114 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4432
  %wait_q = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %114, i32 0, i32 14, !dbg !4432
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait_q, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @chaoskey_probe.__key) #9, !dbg !4432
  br label %do.end, !dbg !4432

do.end:                                           ; preds = %do.body
  br label %do.body50, !dbg !4434

do.body50:                                        ; preds = %do.end
  %115 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4435
  %lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %115, i32 0, i32 2, !dbg !4435
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @chaoskey_probe.__key.3) #9, !dbg !4435
  br label %do.end51, !dbg !4435

do.end51:                                         ; preds = %do.body50
  br label %do.body52, !dbg !4437

do.body52:                                        ; preds = %do.end51
  %116 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4438
  %rng_lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %116, i32 0, i32 3, !dbg !4438
  call void @__mutex_init(%struct.mutex* %rng_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @chaoskey_probe.__key.5) #9, !dbg !4438
  br label %do.end53, !dbg !4438

do.end53:                                         ; preds = %do.body52
  %117 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4440
  %118 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4441
  %119 = bitcast %struct.chaoskey* %118 to i8*, !dbg !4441
  call void @usb_set_intfdata(%struct.usb_interface* %117, i8* %119) #9, !dbg !4442
  %120 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4443
  %call54 = call i32 @usb_register_dev(%struct.usb_interface* %120, %struct.usb_class_driver* @chaoskey_class) #9, !dbg !4444
  store i32 %call54, i32* %result, align 4, !dbg !4445
  %121 = load i32, i32* %result, align 4, !dbg !4446
  %tobool55 = icmp ne i32 %121, 0, !dbg !4446
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !4448

if.then56:                                        ; preds = %do.end53
  %122 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4449
  %dev57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %122, i32 0, i32 7, !dbg !4449
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !4449
  br label %out, !dbg !4451

if.end58:                                         ; preds = %do.end53
  %123 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4452
  %name59 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %123, i32 0, i32 11, !dbg !4453
  %124 = load i8*, i8** %name59, align 8, !dbg !4453
  %tobool60 = icmp ne i8* %124, null, !dbg !4452
  br i1 %tobool60, label %cond.true, label %cond.false, !dbg !4452

cond.true:                                        ; preds = %if.end58
  %125 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4454
  %name61 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %125, i32 0, i32 11, !dbg !4455
  %126 = load i8*, i8** %name61, align 8, !dbg !4455
  br label %cond.end, !dbg !4452

cond.false:                                       ; preds = %if.end58
  %127 = load i8*, i8** getelementptr inbounds (%struct.usb_driver, %struct.usb_driver* @chaoskey_driver, i32 0, i32 0), align 8, !dbg !4456
  br label %cond.end, !dbg !4452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %126, %cond.true ], [ %127, %cond.false ], !dbg !4452
  %128 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4457
  %hwrng = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %128, i32 0, i32 12, !dbg !4458
  %name62 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %hwrng, i32 0, i32 0, !dbg !4459
  store i8* %cond, i8** %name62, align 8, !dbg !4460
  %129 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4461
  %hwrng63 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %129, i32 0, i32 12, !dbg !4462
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %hwrng63, i32 0, i32 5, !dbg !4463
  store i32 (%struct.hwrng*, i8*, i64, i1)* @chaoskey_rng_read, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !4464
  %130 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4465
  %hwrng64 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %130, i32 0, i32 12, !dbg !4466
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %hwrng64, i32 0, i32 7, !dbg !4467
  store i16 1024, i16* %quality, align 8, !dbg !4468
  %131 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4469
  %hwrng65 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %131, i32 0, i32 12, !dbg !4470
  %call66 = call i32 @hwrng_register(%struct.hwrng* %hwrng65) #9, !dbg !4471
  %cmp67 = icmp eq i32 %call66, 0, !dbg !4472
  %conv68 = zext i1 %cmp67 to i32, !dbg !4472
  %132 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4473
  %hwrng_registered = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %132, i32 0, i32 13, !dbg !4474
  store i32 %conv68, i32* %hwrng_registered, align 8, !dbg !4475
  %133 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4476
  %hwrng_registered69 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %133, i32 0, i32 13, !dbg !4478
  %134 = load i32, i32* %hwrng_registered69, align 8, !dbg !4478
  %tobool70 = icmp ne i32 %134, 0, !dbg !4476
  br i1 %tobool70, label %if.end73, label %if.then71, !dbg !4479

if.then71:                                        ; preds = %cond.end
  %135 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4480
  %dev72 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %135, i32 0, i32 7, !dbg !4480
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #13, !dbg !4480
  br label %if.end73, !dbg !4480

if.end73:                                         ; preds = %if.then71, %cond.end
  %136 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4481
  call void @usb_enable_autosuspend(%struct.usb_device* %136) #9, !dbg !4482
  store i32 0, i32* %retval, align 4, !dbg !4483
  br label %return, !dbg !4483

out:                                              ; preds = %if.then56, %if.then39, %if.then24, %if.then19, %if.then11
  call void @llvm.dbg.label(metadata !4484), !dbg !4485
  %137 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4486
  call void @usb_set_intfdata(%struct.usb_interface* %137, i8* null) #9, !dbg !4487
  %138 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4488
  call void @chaoskey_free(%struct.chaoskey* %138) #9, !dbg !4489
  %139 = load i32, i32* %result, align 4, !dbg !4490
  store i32 %139, i32* %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

return:                                           ; preds = %out, %if.end73, %if.then4, %if.then
  %140 = load i32, i32* %retval, align 4, !dbg !4492
  ret i32 %140, !dbg !4492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chaoskey_disconnect(%struct.usb_interface* %interface) #2 !dbg !4493 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.chaoskey*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !4496, metadata !DIExpression()), !dbg !4497
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4498
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4499
  %1 = bitcast i8* %call to %struct.chaoskey*, !dbg !4499
  store %struct.chaoskey* %1, %struct.chaoskey** %dev, align 8, !dbg !4500
  %2 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4501
  %tobool = icmp ne %struct.chaoskey* %2, null, !dbg !4501
  br i1 %tobool, label %if.end, label %if.then, !dbg !4503

if.then:                                          ; preds = %entry
  br label %if.end8, !dbg !4504

if.end:                                           ; preds = %entry
  %3 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4506
  %hwrng_registered = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %3, i32 0, i32 13, !dbg !4508
  %4 = load i32, i32* %hwrng_registered, align 8, !dbg !4508
  %tobool1 = icmp ne i32 %4, 0, !dbg !4506
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4509

if.then2:                                         ; preds = %if.end
  %5 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4510
  %hwrng = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %5, i32 0, i32 12, !dbg !4511
  call void @hwrng_unregister(%struct.hwrng* %hwrng) #9, !dbg !4512
  br label %if.end3, !dbg !4512

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4513
  call void @usb_deregister_dev(%struct.usb_interface* %6, %struct.usb_class_driver* @chaoskey_class) #9, !dbg !4514
  %7 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4515
  call void @usb_set_intfdata(%struct.usb_interface* %7, i8* null) #9, !dbg !4516
  %8 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4517
  %lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %8, i32 0, i32 2, !dbg !4518
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !4519
  %9 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4520
  %present = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %9, i32 0, i32 5, !dbg !4521
  store i8 0, i8* %present, align 4, !dbg !4522
  %10 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4523
  %urb = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %10, i32 0, i32 15, !dbg !4524
  %11 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4524
  call void @usb_poison_urb(%struct.urb* %11) #9, !dbg !4525
  %12 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4526
  %open = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %12, i32 0, i32 4, !dbg !4528
  %13 = load i32, i32* %open, align 8, !dbg !4528
  %tobool4 = icmp ne i32 %13, 0, !dbg !4526
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !4529

if.then5:                                         ; preds = %if.end3
  %14 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4530
  %lock6 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %14, i32 0, i32 2, !dbg !4532
  call void @mutex_unlock(%struct.mutex* %lock6) #9, !dbg !4533
  %15 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4534
  call void @chaoskey_free(%struct.chaoskey* %15) #9, !dbg !4535
  br label %if.end8, !dbg !4536

if.else:                                          ; preds = %if.end3
  %16 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4537
  %lock7 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %16, i32 0, i32 2, !dbg !4538
  call void @mutex_unlock(%struct.mutex* %lock7) #9, !dbg !4539
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.else, %if.then5
  ret void, !dbg !4540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chaoskey_suspend(%struct.usb_interface* %interface, i32 %message.coerce) #2 !dbg !4541 {
entry:
  %message = alloca %struct.pm_message, align 4
  %interface.addr = alloca %struct.usb_interface*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !4544, metadata !DIExpression()), !dbg !4545
  ret i32 0, !dbg !4546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chaoskey_resume(%struct.usb_interface* %interface) #2 !dbg !4547 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.chaoskey*, align 8
  %udev = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !4550, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4552, metadata !DIExpression()), !dbg !4553
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4554
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4555
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4553
  %1 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4556
  %call1 = call i8* @usb_get_intfdata(%struct.usb_interface* %1) #9, !dbg !4557
  %2 = bitcast i8* %call1 to %struct.chaoskey*, !dbg !4557
  store %struct.chaoskey* %2, %struct.chaoskey** %dev, align 8, !dbg !4558
  %3 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4559
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 15, !dbg !4559
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !4559
  %4 = load i16, i16* %idVendor, align 8, !dbg !4559
  %conv = zext i16 %4 to i32, !dbg !4559
  %cmp = icmp eq i32 %conv, 4824, !dbg !4561
  br i1 %cmp, label %if.then, label %if.end, !dbg !4562

if.then:                                          ; preds = %entry
  %5 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4563
  %reads_started = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %5, i32 0, i32 7, !dbg !4564
  store i8 0, i8* %reads_started, align 2, !dbg !4565
  br label %if.end, !dbg !4563

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !4566
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4567 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4572, metadata !DIExpression()), !dbg !4574
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4574
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4574
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4574
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4574
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4574
  store i8* %2, i8** %__mptr, align 8, !dbg !4574
  br label %do.body, !dbg !4574

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4575

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4574
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4574
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4574
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4575
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4574
  ret %struct.usb_device* %5, !dbg !4577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_find_bulk_in_endpoint(%struct.usb_host_interface* %alt, %struct.usb_endpoint_descriptor** %bulk_in) #2 !dbg !4578 {
entry:
  %alt.addr = alloca %struct.usb_host_interface*, align 8
  %bulk_in.addr = alloca %struct.usb_endpoint_descriptor**, align 8
  store %struct.usb_host_interface* %alt, %struct.usb_host_interface** %alt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %alt.addr, metadata !4582, metadata !DIExpression()), !dbg !4583
  store %struct.usb_endpoint_descriptor** %bulk_in, %struct.usb_endpoint_descriptor*** %bulk_in.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor*** %bulk_in.addr, metadata !4584, metadata !DIExpression()), !dbg !4585
  %0 = load %struct.usb_host_interface*, %struct.usb_host_interface** %alt.addr, align 8, !dbg !4586
  %1 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %bulk_in.addr, align 8, !dbg !4587
  %call = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %0, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null) #9, !dbg !4588
  ret i32 %call, !dbg !4589
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4590 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4597
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !4598
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !4598
  %conv = zext i8 %1 to i32, !dbg !4597
  %and = and i32 %conv, 15, !dbg !4599
  ret i32 %and, !dbg !4600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4601 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4604
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !4604
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4604
  %conv = zext i16 %1 to i32, !dbg !4604
  %and = and i32 %conv, 2047, !dbg !4605
  ret i32 %and, !dbg !4606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4607 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4034, metadata !DIExpression()), !dbg !4608
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4046, metadata !DIExpression()), !dbg !4611
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4048, metadata !DIExpression()), !dbg !4612
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4050, metadata !DIExpression()), !dbg !4613
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4052, metadata !DIExpression()), !dbg !4614
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4058, metadata !DIExpression()), !dbg !4616
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4064, metadata !DIExpression()), !dbg !4618
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !4621
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !4622
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4077, metadata !DIExpression()), !dbg !4623
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4079, metadata !DIExpression()), !dbg !4624
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4081, metadata !DIExpression()), !dbg !4625
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4083, metadata !DIExpression()), !dbg !4626
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4085, metadata !DIExpression()), !dbg !4627
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4087, metadata !DIExpression()), !dbg !4628
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  %0 = load i64, i64* %size.addr, align 8, !dbg !4633
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4634
  %or = or i32 %1, 256, !dbg !4635
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4636
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4637
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4638

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4639
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4640
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4641

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4642
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4643
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4644
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4645
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4625
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4646
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4647
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4648
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4649
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4650
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4651
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4652
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4652
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4652
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4652
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4652
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4653
  br label %kmalloc.exit, !dbg !4653

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4654
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4655
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4655
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4656

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4659
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4660

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4661
  br label %kmalloc_index.exit.i, !dbg !4661

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4663
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4664

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4665
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4666
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4667

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4668
  br label %kmalloc_index.exit.i, !dbg !4668

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4669
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4670
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4671

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4672
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4673
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4674

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4677
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4678

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4679
  br label %kmalloc_index.exit.i, !dbg !4679

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4680
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4681
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4682

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4683
  br label %kmalloc_index.exit.i, !dbg !4683

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4684
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4685
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4686

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4689
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4690

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4691
  br label %kmalloc_index.exit.i, !dbg !4691

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4692
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4693
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4694

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4697
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4698

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4699
  br label %kmalloc_index.exit.i, !dbg !4699

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4700
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4701
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4702

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4703
  br label %kmalloc_index.exit.i, !dbg !4703

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4704
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4705
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4706

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4709
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4710

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4712
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4713
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4714

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4717
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4718

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4721
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4722

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4723
  br label %kmalloc_index.exit.i, !dbg !4723

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4724
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4725
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4726

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4729
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4730

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4731
  br label %kmalloc_index.exit.i, !dbg !4731

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4732
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4733
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4734

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4737
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4738

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4739
  br label %kmalloc_index.exit.i, !dbg !4739

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4740
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4741
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4742

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4743
  br label %kmalloc_index.exit.i, !dbg !4743

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4744
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4745
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4746

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4749
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4750

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4751
  br label %kmalloc_index.exit.i, !dbg !4751

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4752
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4753
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4754

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4757
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4758

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4759
  br label %kmalloc_index.exit.i, !dbg !4759

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4760
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4761
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4762

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4763
  br label %kmalloc_index.exit.i, !dbg !4763

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4764
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4765
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4766

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4769
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4770

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4772, !srcloc !4322
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4773, !srcloc !4326
  unreachable, !dbg !4774

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4775
  store i32 %45, i32* %index.i, align 4, !dbg !4776
  %46 = load i32, i32* %index.i, align 4, !dbg !4777
  %tobool.i = icmp ne i32 %46, 0, !dbg !4777
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4778

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4779
  br label %kmalloc.exit, !dbg !4779

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4780
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4781
  %and.i.i = and i32 %48, 17, !dbg !4781
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4781
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4781
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4781
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4781
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4782

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4783
  br label %kmalloc_type.exit.i, !dbg !4783

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4784
  %and2.i.i = and i32 %49, 1, !dbg !4785
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4784
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4784
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4784
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4786
  br label %kmalloc_type.exit.i, !dbg !4786

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4787
  %idxprom.i = zext i32 %51 to i64, !dbg !4788
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4788
  %52 = load i32, i32* %index.i, align 4, !dbg !4789
  %idxprom6.i = zext i32 %52 to i64, !dbg !4788
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4788
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4788
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4790
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4791
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4792
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4793
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4794
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4794
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4794
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4794
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4794
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4613
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4795
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4796
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4797
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4798
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4799
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4800
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4801
  store i8* %62, i8** %retval.i, align 8, !dbg !4802
  br label %kmalloc.exit, !dbg !4802

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4803
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4804
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4805
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4805
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4805
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4805
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4805
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4806
  br label %kmalloc.exit, !dbg !4806

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4807
  ret i8* %65, !dbg !4808
}

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @usb_get_intf(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_bulk_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context) #2 !dbg !4809 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4826
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4827
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !4828
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !4829
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !4830
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4831
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !4832
  store i32 %2, i32* %pipe2, align 8, !dbg !4833
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !4834
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4835
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !4836
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !4837
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !4838
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4839
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !4840
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !4841
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !4842
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4843
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !4844
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !4845
  %10 = load i8*, i8** %context.addr, align 8, !dbg !4846
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4847
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !4848
  store i8* %10, i8** %context4, align 8, !dbg !4849
  ret void, !dbg !4850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !4851 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4858
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !4859
  %1 = load i32, i32* %devnum, align 8, !dbg !4859
  %shl = shl i32 %1, 8, !dbg !4860
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !4861
  %shl1 = shl i32 %2, 15, !dbg !4862
  %or = or i32 %shl, %shl1, !dbg !4863
  ret i32 %or, !dbg !4864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chaos_read_callback(%struct.urb* %urb) #2 !dbg !4865 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.chaoskey*, align 8
  %status = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4870
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !4871
  %1 = load i8*, i8** %context, align 8, !dbg !4871
  %2 = bitcast i8* %1 to %struct.chaoskey*, !dbg !4870
  store %struct.chaoskey* %2, %struct.chaoskey** %dev, align 8, !dbg !4869
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4872, metadata !DIExpression()), !dbg !4873
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4874
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 12, !dbg !4875
  %4 = load i32, i32* %status1, align 8, !dbg !4875
  store i32 %4, i32* %status, align 4, !dbg !4873
  %5 = load i32, i32* %status, align 4, !dbg !4876
  %cmp = icmp eq i32 %5, 0, !dbg !4878
  br i1 %cmp, label %if.then, label %if.else, !dbg !4879

if.then:                                          ; preds = %entry
  %6 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !4880
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 20, !dbg !4881
  %7 = load i32, i32* %actual_length, align 4, !dbg !4881
  %8 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4882
  %valid = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %8, i32 0, i32 9, !dbg !4883
  store i32 %7, i32* %valid, align 4, !dbg !4884
  br label %if.end, !dbg !4882

if.else:                                          ; preds = %entry
  %9 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4885
  %valid2 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %9, i32 0, i32 9, !dbg !4886
  store i32 0, i32* %valid2, align 4, !dbg !4887
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4888
  %used = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %10, i32 0, i32 10, !dbg !4889
  store i32 0, i32* %used, align 8, !dbg !4890
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4891, !srcloc !4892
  %11 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4893
  %reading = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %11, i32 0, i32 6, !dbg !4894
  store i8 0, i8* %reading, align 1, !dbg !4895
  %12 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4896
  %wait_q = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %12, i32 0, i32 14, !dbg !4896
  call void @__wake_up(%struct.wait_queue_head* %wait_q, i32 3, i32 1, i8* null) #9, !dbg !4896
  ret void, !dbg !4897
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !4898 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4901, metadata !DIExpression()), !dbg !4902
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4905
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4906
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4907
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !4908
  ret void, !dbg !4909
}

; Function Attrs: noredzone
declare dso_local i32 @usb_register_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chaoskey_rng_read(%struct.hwrng* %rng, i8* %data, i64 %max, i1 zeroext %wait) #2 !dbg !4910 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %data.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %wait.addr = alloca i8, align 1
  %dev = alloca %struct.chaoskey*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.chaoskey*, align 8
  %this_time = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !4915, metadata !DIExpression()), !dbg !4916
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !4919, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4921, metadata !DIExpression()), !dbg !4923
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !4923
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !4923
  store i8* %1, i8** %__mptr, align 8, !dbg !4923
  br label %do.body, !dbg !4923

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4924

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4923
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !4923
  %3 = bitcast i8* %add.ptr to %struct.chaoskey*, !dbg !4923
  store %struct.chaoskey* %3, %struct.chaoskey** %tmp, align 8, !dbg !4924
  %4 = load %struct.chaoskey*, %struct.chaoskey** %tmp, align 8, !dbg !4923
  store %struct.chaoskey* %4, %struct.chaoskey** %dev, align 8, !dbg !4920
  call void @llvm.dbg.declare(metadata i32* %this_time, metadata !4926, metadata !DIExpression()), !dbg !4927
  %5 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4928
  %present = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %5, i32 0, i32 5, !dbg !4930
  %6 = load i8, i8* %present, align 4, !dbg !4930
  %tobool = trunc i8 %6 to i1, !dbg !4930
  br i1 %tobool, label %if.end, label %if.then, !dbg !4931

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !4932
  br label %return, !dbg !4932

if.end:                                           ; preds = %do.end
  %7 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4934
  %rng_lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %7, i32 0, i32 3, !dbg !4935
  call void @mutex_lock(%struct.mutex* %rng_lock) #9, !dbg !4936
  %8 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4937
  %lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %8, i32 0, i32 2, !dbg !4938
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !4939
  %9 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4940
  %rng_lock1 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %9, i32 0, i32 3, !dbg !4941
  call void @mutex_unlock(%struct.mutex* %rng_lock1) #9, !dbg !4942
  %10 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4943
  %valid = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %10, i32 0, i32 9, !dbg !4945
  %11 = load i32, i32* %valid, align 4, !dbg !4945
  %12 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4946
  %used = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %12, i32 0, i32 10, !dbg !4947
  %13 = load i32, i32* %used, align 8, !dbg !4947
  %cmp = icmp eq i32 %11, %13, !dbg !4948
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4949

if.then2:                                         ; preds = %if.end
  %14 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4950
  %call = call i32 @_chaoskey_fill(%struct.chaoskey* %14) #9, !dbg !4951
  br label %if.end3, !dbg !4952

if.end3:                                          ; preds = %if.then2, %if.end
  %15 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4953
  %valid4 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %15, i32 0, i32 9, !dbg !4954
  %16 = load i32, i32* %valid4, align 4, !dbg !4954
  %17 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4955
  %used5 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %17, i32 0, i32 10, !dbg !4956
  %18 = load i32, i32* %used5, align 8, !dbg !4956
  %sub = sub i32 %16, %18, !dbg !4957
  store i32 %sub, i32* %this_time, align 4, !dbg !4958
  %19 = load i32, i32* %this_time, align 4, !dbg !4959
  %conv = sext i32 %19 to i64, !dbg !4959
  %20 = load i64, i64* %max.addr, align 8, !dbg !4961
  %cmp6 = icmp ugt i64 %conv, %20, !dbg !4962
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !4963

if.then8:                                         ; preds = %if.end3
  %21 = load i64, i64* %max.addr, align 8, !dbg !4964
  %conv9 = trunc i64 %21 to i32, !dbg !4964
  store i32 %conv9, i32* %this_time, align 4, !dbg !4965
  br label %if.end10, !dbg !4966

if.end10:                                         ; preds = %if.then8, %if.end3
  %22 = load i8*, i8** %data.addr, align 8, !dbg !4967
  %23 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4968
  %buf = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %23, i32 0, i32 16, !dbg !4969
  %24 = load i8*, i8** %buf, align 8, !dbg !4969
  %25 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4970
  %used11 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %25, i32 0, i32 10, !dbg !4971
  %26 = load i32, i32* %used11, align 8, !dbg !4971
  %idx.ext = sext i32 %26 to i64, !dbg !4972
  %add.ptr12 = getelementptr i8, i8* %24, i64 %idx.ext, !dbg !4972
  %27 = load i32, i32* %this_time, align 4, !dbg !4973
  %conv13 = sext i32 %27 to i64, !dbg !4973
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %add.ptr12, i64 %conv13, i1 false), !dbg !4974
  %28 = load i32, i32* %this_time, align 4, !dbg !4975
  %29 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4976
  %used14 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %29, i32 0, i32 10, !dbg !4977
  %30 = load i32, i32* %used14, align 8, !dbg !4978
  %add = add i32 %30, %28, !dbg !4978
  store i32 %add, i32* %used14, align 8, !dbg !4978
  %31 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !4979
  %lock15 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %31, i32 0, i32 2, !dbg !4980
  call void @mutex_unlock(%struct.mutex* %lock15) #9, !dbg !4981
  %32 = load i32, i32* %this_time, align 4, !dbg !4982
  store i32 %32, i32* %retval, align 4, !dbg !4983
  br label %return, !dbg !4983

return:                                           ; preds = %if.end10, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !4984
  ret i32 %33, !dbg !4984
}

; Function Attrs: noredzone
declare dso_local i32 @hwrng_register(%struct.hwrng*) #1

; Function Attrs: noredzone
declare dso_local void @usb_enable_autosuspend(%struct.usb_device*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chaoskey_free(%struct.chaoskey* %dev) #2 !dbg !4985 {
entry:
  %dev.addr = alloca %struct.chaoskey*, align 8
  store %struct.chaoskey* %dev, %struct.chaoskey** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  %0 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !4990
  %tobool = icmp ne %struct.chaoskey* %0, null, !dbg !4990
  br i1 %tobool, label %if.then, label %if.end, !dbg !4992

if.then:                                          ; preds = %entry
  %1 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !4993
  %urb = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %1, i32 0, i32 15, !dbg !4995
  %2 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !4995
  call void @usb_free_urb(%struct.urb* %2) #9, !dbg !4996
  %3 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !4997
  %name = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %3, i32 0, i32 11, !dbg !4998
  %4 = load i8*, i8** %name, align 8, !dbg !4998
  call void @kfree(i8* %4) #9, !dbg !4999
  %5 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5000
  %buf = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %5, i32 0, i32 16, !dbg !5001
  %6 = load i8*, i8** %buf, align 8, !dbg !5001
  call void @kfree(i8* %6) #9, !dbg !5002
  %7 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5003
  %interface = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %7, i32 0, i32 0, !dbg !5004
  %8 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5004
  call void @usb_put_intf(%struct.usb_interface* %8) #9, !dbg !5005
  %9 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5006
  %10 = bitcast %struct.chaoskey* %9 to i8*, !dbg !5006
  call void @kfree(i8* %10) #9, !dbg !5007
  br label %if.end, !dbg !5008

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5009
}

; Function Attrs: noredzone
declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5010 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5014, metadata !DIExpression()), !dbg !5019
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5021, metadata !DIExpression()), !dbg !5022
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  %0 = load i64, i64* %size.addr, align 8, !dbg !5025
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5027
  br i1 %1, label %if.then, label %if.end447, !dbg !5028

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5029
  %tobool = icmp ne i64 %2, 0, !dbg !5029
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5032

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5033
  br label %return, !dbg !5033

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5034
  %cmp = icmp ult i64 %3, 4096, !dbg !5036
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5037

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5038
  br label %return, !dbg !5038

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub = sub i64 %4, 1, !dbg !5039
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5039
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5039

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub4 = sub i64 %6, 1, !dbg !5039
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5039
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5039

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub6 = sub i64 %8, 1, !dbg !5039
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5039
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5039

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5039

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub9 = sub i64 %9, 1, !dbg !5039
  %and = and i64 %sub9, -9223372036854775808, !dbg !5039
  %tobool10 = icmp ne i64 %and, 0, !dbg !5039
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5039

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5039

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub13 = sub i64 %10, 1, !dbg !5039
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5039
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5039
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5039

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5039

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub18 = sub i64 %11, 1, !dbg !5039
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5039
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5039
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5039

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5039

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub23 = sub i64 %12, 1, !dbg !5039
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5039
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5039
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5039

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5039

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub28 = sub i64 %13, 1, !dbg !5039
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5039
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5039
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5039

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5039

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub33 = sub i64 %14, 1, !dbg !5039
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5039
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5039
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5039

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5039

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub38 = sub i64 %15, 1, !dbg !5039
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5039
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5039
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5039

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5039

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub43 = sub i64 %16, 1, !dbg !5039
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5039
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5039
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5039

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5039

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub48 = sub i64 %17, 1, !dbg !5039
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5039
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5039
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5039

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5039

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub53 = sub i64 %18, 1, !dbg !5039
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5039
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5039
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5039

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5039

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub58 = sub i64 %19, 1, !dbg !5039
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5039
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5039
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5039

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5039

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub63 = sub i64 %20, 1, !dbg !5039
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5039
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5039
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5039

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5039

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub68 = sub i64 %21, 1, !dbg !5039
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5039
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5039
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5039

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5039

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub73 = sub i64 %22, 1, !dbg !5039
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5039
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5039
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5039

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5039

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub78 = sub i64 %23, 1, !dbg !5039
  %and79 = and i64 %sub78, 562949953421312, !dbg !5039
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5039
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5039

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5039

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub83 = sub i64 %24, 1, !dbg !5039
  %and84 = and i64 %sub83, 281474976710656, !dbg !5039
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5039
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5039

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5039

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub88 = sub i64 %25, 1, !dbg !5039
  %and89 = and i64 %sub88, 140737488355328, !dbg !5039
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5039
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5039

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5039

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub93 = sub i64 %26, 1, !dbg !5039
  %and94 = and i64 %sub93, 70368744177664, !dbg !5039
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5039
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5039

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5039

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub98 = sub i64 %27, 1, !dbg !5039
  %and99 = and i64 %sub98, 35184372088832, !dbg !5039
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5039
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5039

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5039

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub103 = sub i64 %28, 1, !dbg !5039
  %and104 = and i64 %sub103, 17592186044416, !dbg !5039
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5039
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5039

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5039

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub108 = sub i64 %29, 1, !dbg !5039
  %and109 = and i64 %sub108, 8796093022208, !dbg !5039
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5039
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5039

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5039

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub113 = sub i64 %30, 1, !dbg !5039
  %and114 = and i64 %sub113, 4398046511104, !dbg !5039
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5039
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5039

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5039

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub118 = sub i64 %31, 1, !dbg !5039
  %and119 = and i64 %sub118, 2199023255552, !dbg !5039
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5039
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5039

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5039

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub123 = sub i64 %32, 1, !dbg !5039
  %and124 = and i64 %sub123, 1099511627776, !dbg !5039
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5039
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5039

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5039

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub128 = sub i64 %33, 1, !dbg !5039
  %and129 = and i64 %sub128, 549755813888, !dbg !5039
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5039
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5039

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5039

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub133 = sub i64 %34, 1, !dbg !5039
  %and134 = and i64 %sub133, 274877906944, !dbg !5039
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5039
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5039

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5039

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub138 = sub i64 %35, 1, !dbg !5039
  %and139 = and i64 %sub138, 137438953472, !dbg !5039
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5039
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5039

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5039

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub143 = sub i64 %36, 1, !dbg !5039
  %and144 = and i64 %sub143, 68719476736, !dbg !5039
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5039
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5039

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5039

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub148 = sub i64 %37, 1, !dbg !5039
  %and149 = and i64 %sub148, 34359738368, !dbg !5039
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5039
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5039

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5039

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub153 = sub i64 %38, 1, !dbg !5039
  %and154 = and i64 %sub153, 17179869184, !dbg !5039
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5039
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5039

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5039

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub158 = sub i64 %39, 1, !dbg !5039
  %and159 = and i64 %sub158, 8589934592, !dbg !5039
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5039
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5039

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5039

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub163 = sub i64 %40, 1, !dbg !5039
  %and164 = and i64 %sub163, 4294967296, !dbg !5039
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5039
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5039

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5039

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub168 = sub i64 %41, 1, !dbg !5039
  %and169 = and i64 %sub168, 2147483648, !dbg !5039
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5039
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5039

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5039

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub173 = sub i64 %42, 1, !dbg !5039
  %and174 = and i64 %sub173, 1073741824, !dbg !5039
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5039
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5039

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5039

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub178 = sub i64 %43, 1, !dbg !5039
  %and179 = and i64 %sub178, 536870912, !dbg !5039
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5039
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5039

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5039

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub183 = sub i64 %44, 1, !dbg !5039
  %and184 = and i64 %sub183, 268435456, !dbg !5039
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5039
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5039

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5039

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub188 = sub i64 %45, 1, !dbg !5039
  %and189 = and i64 %sub188, 134217728, !dbg !5039
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5039
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5039

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5039

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub193 = sub i64 %46, 1, !dbg !5039
  %and194 = and i64 %sub193, 67108864, !dbg !5039
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5039
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5039

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5039

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub198 = sub i64 %47, 1, !dbg !5039
  %and199 = and i64 %sub198, 33554432, !dbg !5039
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5039
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5039

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5039

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub203 = sub i64 %48, 1, !dbg !5039
  %and204 = and i64 %sub203, 16777216, !dbg !5039
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5039
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5039

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5039

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub208 = sub i64 %49, 1, !dbg !5039
  %and209 = and i64 %sub208, 8388608, !dbg !5039
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5039
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5039

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5039

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub213 = sub i64 %50, 1, !dbg !5039
  %and214 = and i64 %sub213, 4194304, !dbg !5039
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5039
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5039

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5039

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub218 = sub i64 %51, 1, !dbg !5039
  %and219 = and i64 %sub218, 2097152, !dbg !5039
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5039
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5039

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5039

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub223 = sub i64 %52, 1, !dbg !5039
  %and224 = and i64 %sub223, 1048576, !dbg !5039
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5039
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5039

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5039

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub228 = sub i64 %53, 1, !dbg !5039
  %and229 = and i64 %sub228, 524288, !dbg !5039
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5039
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5039

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5039

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub233 = sub i64 %54, 1, !dbg !5039
  %and234 = and i64 %sub233, 262144, !dbg !5039
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5039
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5039

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5039

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub238 = sub i64 %55, 1, !dbg !5039
  %and239 = and i64 %sub238, 131072, !dbg !5039
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5039
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5039

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5039

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub243 = sub i64 %56, 1, !dbg !5039
  %and244 = and i64 %sub243, 65536, !dbg !5039
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5039
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5039

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5039

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub248 = sub i64 %57, 1, !dbg !5039
  %and249 = and i64 %sub248, 32768, !dbg !5039
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5039
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5039

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5039

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub253 = sub i64 %58, 1, !dbg !5039
  %and254 = and i64 %sub253, 16384, !dbg !5039
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5039
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5039

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5039

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub258 = sub i64 %59, 1, !dbg !5039
  %and259 = and i64 %sub258, 8192, !dbg !5039
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5039
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5039

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5039

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub263 = sub i64 %60, 1, !dbg !5039
  %and264 = and i64 %sub263, 4096, !dbg !5039
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5039
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5039

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5039

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub268 = sub i64 %61, 1, !dbg !5039
  %and269 = and i64 %sub268, 2048, !dbg !5039
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5039
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5039

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5039

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub273 = sub i64 %62, 1, !dbg !5039
  %and274 = and i64 %sub273, 1024, !dbg !5039
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5039
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5039

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5039

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub278 = sub i64 %63, 1, !dbg !5039
  %and279 = and i64 %sub278, 512, !dbg !5039
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5039
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5039

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5039

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub283 = sub i64 %64, 1, !dbg !5039
  %and284 = and i64 %sub283, 256, !dbg !5039
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5039
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5039

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5039

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub288 = sub i64 %65, 1, !dbg !5039
  %and289 = and i64 %sub288, 128, !dbg !5039
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5039
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5039

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5039

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub293 = sub i64 %66, 1, !dbg !5039
  %and294 = and i64 %sub293, 64, !dbg !5039
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5039
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5039

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5039

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub298 = sub i64 %67, 1, !dbg !5039
  %and299 = and i64 %sub298, 32, !dbg !5039
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5039
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5039

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5039

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub303 = sub i64 %68, 1, !dbg !5039
  %and304 = and i64 %sub303, 16, !dbg !5039
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5039
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5039

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5039

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub308 = sub i64 %69, 1, !dbg !5039
  %and309 = and i64 %sub308, 8, !dbg !5039
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5039
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5039

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5039

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub313 = sub i64 %70, 1, !dbg !5039
  %and314 = and i64 %sub313, 4, !dbg !5039
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5039
  %71 = zext i1 %tobool315 to i64, !dbg !5039
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5039
  br label %cond.end, !dbg !5039

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5039
  br label %cond.end317, !dbg !5039

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5039
  br label %cond.end319, !dbg !5039

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5039
  br label %cond.end321, !dbg !5039

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5039
  br label %cond.end323, !dbg !5039

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5039
  br label %cond.end325, !dbg !5039

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5039
  br label %cond.end327, !dbg !5039

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5039
  br label %cond.end329, !dbg !5039

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5039
  br label %cond.end331, !dbg !5039

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5039
  br label %cond.end333, !dbg !5039

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5039
  br label %cond.end335, !dbg !5039

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5039
  br label %cond.end337, !dbg !5039

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5039
  br label %cond.end339, !dbg !5039

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5039
  br label %cond.end341, !dbg !5039

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5039
  br label %cond.end343, !dbg !5039

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5039
  br label %cond.end345, !dbg !5039

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5039
  br label %cond.end347, !dbg !5039

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5039
  br label %cond.end349, !dbg !5039

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5039
  br label %cond.end351, !dbg !5039

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5039
  br label %cond.end353, !dbg !5039

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5039
  br label %cond.end355, !dbg !5039

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5039
  br label %cond.end357, !dbg !5039

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5039
  br label %cond.end359, !dbg !5039

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5039
  br label %cond.end361, !dbg !5039

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5039
  br label %cond.end363, !dbg !5039

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5039
  br label %cond.end365, !dbg !5039

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5039
  br label %cond.end367, !dbg !5039

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5039
  br label %cond.end369, !dbg !5039

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5039
  br label %cond.end371, !dbg !5039

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5039
  br label %cond.end373, !dbg !5039

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5039
  br label %cond.end375, !dbg !5039

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5039
  br label %cond.end377, !dbg !5039

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5039
  br label %cond.end379, !dbg !5039

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5039
  br label %cond.end381, !dbg !5039

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5039
  br label %cond.end383, !dbg !5039

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5039
  br label %cond.end385, !dbg !5039

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5039
  br label %cond.end387, !dbg !5039

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5039
  br label %cond.end389, !dbg !5039

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5039
  br label %cond.end391, !dbg !5039

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5039
  br label %cond.end393, !dbg !5039

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5039
  br label %cond.end395, !dbg !5039

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5039
  br label %cond.end397, !dbg !5039

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5039
  br label %cond.end399, !dbg !5039

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5039
  br label %cond.end401, !dbg !5039

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5039
  br label %cond.end403, !dbg !5039

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5039
  br label %cond.end405, !dbg !5039

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5039
  br label %cond.end407, !dbg !5039

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5039
  br label %cond.end409, !dbg !5039

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5039
  br label %cond.end411, !dbg !5039

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5039
  br label %cond.end413, !dbg !5039

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5039
  br label %cond.end415, !dbg !5039

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5039
  br label %cond.end417, !dbg !5039

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5039
  br label %cond.end419, !dbg !5039

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5039
  br label %cond.end421, !dbg !5039

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5039
  br label %cond.end423, !dbg !5039

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5039
  br label %cond.end425, !dbg !5039

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5039
  br label %cond.end427, !dbg !5039

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5039
  br label %cond.end429, !dbg !5039

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5039
  br label %cond.end431, !dbg !5039

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5039
  br label %cond.end433, !dbg !5039

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5039
  br label %cond.end435, !dbg !5039

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5039
  br label %cond.end437, !dbg !5039

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5039
  br label %cond.end440, !dbg !5039

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5039

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5039
  br label %cond.end444, !dbg !5039

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5039
  %sub443 = sub i64 %72, 1, !dbg !5039
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5039
  br label %cond.end444, !dbg !5039

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5039
  %sub446 = sub i32 %cond445, 12, !dbg !5040
  %add = add i32 %sub446, 1, !dbg !5041
  store i32 %add, i32* %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5043
  %dec = add i64 %73, -1, !dbg !5043
  store i64 %dec, i64* %size.addr, align 8, !dbg !5043
  %74 = load i64, i64* %size.addr, align 8, !dbg !5044
  %shr = lshr i64 %74, 12, !dbg !5044
  store i64 %shr, i64* %size.addr, align 8, !dbg !5044
  %75 = load i64, i64* %size.addr, align 8, !dbg !5045
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5022
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5046
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5047
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5046, !srcloc !5048
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5046
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5049
  %add.i = add i32 %79, 1, !dbg !5050
  store i32 %add.i, i32* %retval, align 4, !dbg !5051
  br label %return, !dbg !5051

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5052
  ret i32 %80, !dbg !5052
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5053 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5014, metadata !DIExpression()), !dbg !5057
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5021, metadata !DIExpression()), !dbg !5059
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  %0 = load i64, i64* %n.addr, align 8, !dbg !5062
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5059
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5063
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5064
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5063, !srcloc !5048
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5063
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5065
  %add.i = add i32 %4, 1, !dbg !5066
  %sub = sub i32 %add.i, 1, !dbg !5067
  ret i32 %sub, !dbg !5068
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5069 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5080
  ret i8* %0, !dbg !5081
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5082 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5089
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5090
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5091
  store i8* %0, i8** %driver_data, align 8, !dbg !5092
  ret void, !dbg !5093
}

; Function Attrs: noredzone
declare dso_local i64 @default_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @chaoskey_read(%struct.file* %file, i8* %buffer, i64 %count, i64* %ppos) #2 !dbg !5094 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !5095, metadata !DIExpression()), !dbg !5100
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !5109, metadata !DIExpression()), !dbg !5110
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !5111, metadata !DIExpression()), !dbg !5112
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !5113, metadata !DIExpression()), !dbg !5114
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !5115, metadata !DIExpression()), !dbg !5118
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !5119, metadata !DIExpression()), !dbg !5120
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !5121, metadata !DIExpression()), !dbg !5122
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !5123, metadata !DIExpression()), !dbg !5124
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %dev = alloca %struct.chaoskey*, align 8
  %read_count = alloca i64, align 8
  %this_time = alloca i32, align 4
  %result = alloca i32, align 4
  %remain = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5125, metadata !DIExpression()), !dbg !5126
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !5133, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.declare(metadata i64* %read_count, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i64 0, i64* %read_count, align 8, !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %this_time, metadata !5137, metadata !DIExpression()), !dbg !5138
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5139, metadata !DIExpression()), !dbg !5140
  store i32 0, i32* %result, align 4, !dbg !5140
  call void @llvm.dbg.declare(metadata i64* %remain, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5143
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5144
  %1 = load i8*, i8** %private_data, align 8, !dbg !5144
  %2 = bitcast i8* %1 to %struct.chaoskey*, !dbg !5143
  store %struct.chaoskey* %2, %struct.chaoskey** %dev, align 8, !dbg !5145
  %3 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5146
  %cmp = icmp eq %struct.chaoskey* %3, null, !dbg !5148
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5149

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5150
  %present = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %4, i32 0, i32 5, !dbg !5151
  %5 = load i8, i8* %present, align 4, !dbg !5151
  %tobool = trunc i8 %5 to i1, !dbg !5151
  br i1 %tobool, label %if.end, label %if.then, !dbg !5152

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -19, i64* %retval, align 8, !dbg !5153
  br label %return, !dbg !5153

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !5154

while.cond:                                       ; preds = %if.end36, %if.end
  %6 = load i64, i64* %count.addr, align 8, !dbg !5155
  %cmp1 = icmp ugt i64 %6, 0, !dbg !5156
  br i1 %cmp1, label %while.body, label %while.end, !dbg !5154

while.body:                                       ; preds = %while.cond
  %7 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5157
  %rng_lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %7, i32 0, i32 3, !dbg !5158
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* %rng_lock) #9, !dbg !5159
  store i32 %call, i32* %result, align 4, !dbg !5160
  %8 = load i32, i32* %result, align 4, !dbg !5161
  %tobool2 = icmp ne i32 %8, 0, !dbg !5161
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5163

if.then3:                                         ; preds = %while.body
  br label %bail, !dbg !5164

if.end4:                                          ; preds = %while.body
  %9 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5165
  %rng_lock5 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %9, i32 0, i32 3, !dbg !5166
  call void @mutex_unlock(%struct.mutex* %rng_lock5) #9, !dbg !5167
  %10 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5168
  %lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %10, i32 0, i32 2, !dbg !5169
  %call6 = call i32 @mutex_lock_interruptible(%struct.mutex* %lock) #9, !dbg !5170
  store i32 %call6, i32* %result, align 4, !dbg !5171
  %11 = load i32, i32* %result, align 4, !dbg !5172
  %tobool7 = icmp ne i32 %11, 0, !dbg !5172
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5174

if.then8:                                         ; preds = %if.end4
  br label %bail, !dbg !5175

if.end9:                                          ; preds = %if.end4
  %12 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5176
  %valid = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %12, i32 0, i32 9, !dbg !5178
  %13 = load i32, i32* %valid, align 4, !dbg !5178
  %14 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5179
  %used = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %14, i32 0, i32 10, !dbg !5180
  %15 = load i32, i32* %used, align 8, !dbg !5180
  %cmp10 = icmp eq i32 %13, %15, !dbg !5181
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !5182

if.then11:                                        ; preds = %if.end9
  %16 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5183
  %call12 = call i32 @_chaoskey_fill(%struct.chaoskey* %16) #9, !dbg !5185
  store i32 %call12, i32* %result, align 4, !dbg !5186
  %17 = load i32, i32* %result, align 4, !dbg !5187
  %cmp13 = icmp slt i32 %17, 0, !dbg !5189
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !5190

if.then14:                                        ; preds = %if.then11
  %18 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5191
  %lock15 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %18, i32 0, i32 2, !dbg !5193
  call void @mutex_unlock(%struct.mutex* %lock15) #9, !dbg !5194
  br label %bail, !dbg !5195

if.end16:                                         ; preds = %if.then11
  br label %if.end17, !dbg !5196

if.end17:                                         ; preds = %if.end16, %if.end9
  %19 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5197
  %valid18 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %19, i32 0, i32 9, !dbg !5198
  %20 = load i32, i32* %valid18, align 4, !dbg !5198
  %21 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5199
  %used19 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %21, i32 0, i32 10, !dbg !5200
  %22 = load i32, i32* %used19, align 8, !dbg !5200
  %sub = sub i32 %20, %22, !dbg !5201
  store i32 %sub, i32* %this_time, align 4, !dbg !5202
  %23 = load i32, i32* %this_time, align 4, !dbg !5203
  %conv = sext i32 %23 to i64, !dbg !5203
  %24 = load i64, i64* %count.addr, align 8, !dbg !5205
  %cmp20 = icmp ugt i64 %conv, %24, !dbg !5206
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !5207

if.then22:                                        ; preds = %if.end17
  %25 = load i64, i64* %count.addr, align 8, !dbg !5208
  %conv23 = trunc i64 %25 to i32, !dbg !5208
  store i32 %conv23, i32* %this_time, align 4, !dbg !5209
  br label %if.end24, !dbg !5210

if.end24:                                         ; preds = %if.then22, %if.end17
  %26 = load i8*, i8** %buffer.addr, align 8, !dbg !5211
  %27 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5212
  %buf = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %27, i32 0, i32 16, !dbg !5213
  %28 = load i8*, i8** %buf, align 8, !dbg !5213
  %29 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5214
  %used25 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %29, i32 0, i32 10, !dbg !5215
  %30 = load i32, i32* %used25, align 8, !dbg !5215
  %idx.ext = sext i32 %30 to i64, !dbg !5216
  %add.ptr = getelementptr i8, i8* %28, i64 %idx.ext, !dbg !5216
  %31 = load i32, i32* %this_time, align 4, !dbg !5217
  %conv26 = sext i32 %31 to i64, !dbg !5217
  store i8* %26, i8** %to.addr.i, align 8
  store i8* %add.ptr, i8** %from.addr.i, align 8
  store i64 %conv26, i64* %n.addr.i, align 8
  %32 = load i8*, i8** %from.addr.i, align 8, !dbg !5218
  %33 = load i64, i64* %n.addr.i, align 8, !dbg !5218
  store i8* %32, i8** %addr.addr.i.i, align 8
  store i64 %33, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5114
  %34 = load i32, i32* %sz.i.i, align 4, !dbg !5219
  %cmp.i.i = icmp sge i32 %34, 0, !dbg !5219
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5219

land.rhs.i.i:                                     ; preds = %if.end24
  %35 = load i32, i32* %sz.i.i, align 4, !dbg !5219
  %conv.i.i = sext i32 %35 to i64, !dbg !5219
  %36 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5219
  %cmp1.i.i = icmp ult i64 %conv.i.i, %36, !dbg !5219
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end24
  %37 = phi i1 [ false, %if.end24 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5221
  %lnot.i.i = xor i1 %37, true, !dbg !5219
  %lnot.ext.i.i = zext i1 %37 to i32, !dbg !5219
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5219
  br i1 %37, label %if.then.i.i, label %if.end10.i.i, !dbg !5222

if.then.i.i:                                      ; preds = %land.end.i.i
  %38 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5223
  %39 = call i1 @llvm.is.constant.i64(i64 %38) #10, !dbg !5226
  br i1 %39, label %if.else.i.i, label %if.then5.i.i, !dbg !5227

if.then5.i.i:                                     ; preds = %if.then.i.i
  %40 = load i32, i32* %sz.i.i, align 4, !dbg !5228
  %41 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5229
  call void @copy_overflow(i32 %40, i64 %41) #12, !dbg !5230
  br label %if.end9.i.i, !dbg !5230

if.else.i.i:                                      ; preds = %if.then.i.i
  %42 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5231
  %tobool6.i.i = trunc i8 %42 to i1, !dbg !5231
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5233

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !5234
  br label %if.end.i.i, !dbg !5234

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !5235
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5236
  br label %check_copy_size.exit.i, !dbg !5236

if.end10.i.i:                                     ; preds = %land.end.i.i
  %43 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5118
  %cmp11.i.i = icmp ugt i64 %43, 2147483647, !dbg !5118
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5118
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5118
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5118
  %44 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5237
  %tobool17.i.i = icmp ne i32 %44, 0, !dbg !5237
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5237
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5237
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5237
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5118

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !5239, !srcloc !5242
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !5243, !srcloc !5245
  br label %if.end31.i.i, !dbg !5246

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %45 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5118
  %tobool32.i.i = icmp ne i32 %45, 0, !dbg !5118
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5118
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5118
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5118
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5237
  %46 = load i64, i64* %tmp.i.i, align 8, !dbg !5118
  %tobool38.i.i = icmp ne i64 %46, 0, !dbg !5247
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5248

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5249
  br label %check_copy_size.exit.i, !dbg !5249

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %47 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5250
  %48 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5251
  %49 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5252
  %tobool41.i.i = trunc i8 %49 to i1, !dbg !5252
  call void @check_object_size(i8* %47, i64 %48, i1 zeroext %tobool41.i.i) #12, !dbg !5253
  store i1 true, i1* %retval.i.i, align 1, !dbg !5254
  br label %check_copy_size.exit.i, !dbg !5254

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %50 = load i1, i1* %retval.i.i, align 1, !dbg !5255
  %lnot.i = xor i1 %50, true, !dbg !5218
  %lnot.ext.i = zext i1 %50 to i32, !dbg !5218
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5218
  br i1 %50, label %if.then.i, label %copy_to_user.exit, !dbg !5256

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %51 = load i8*, i8** %to.addr.i, align 8, !dbg !5257
  %52 = load i8*, i8** %from.addr.i, align 8, !dbg !5258
  %53 = load i64, i64* %n.addr.i, align 8, !dbg !5259
  %call2.i = call i64 @_copy_to_user(i8* %51, i8* %52, i64 %53) #12, !dbg !5260
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5261
  br label %copy_to_user.exit, !dbg !5262

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %54 = load i64, i64* %n.addr.i, align 8, !dbg !5263
  store i64 %54, i64* %remain, align 8, !dbg !5264
  %55 = load i64, i64* %remain, align 8, !dbg !5265
  %tobool28 = icmp ne i64 %55, 0, !dbg !5265
  br i1 %tobool28, label %if.then29, label %if.end36, !dbg !5267

if.then29:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %result, align 4, !dbg !5268
  %56 = load i32, i32* %this_time, align 4, !dbg !5270
  %conv30 = sext i32 %56 to i64, !dbg !5270
  %57 = load i64, i64* %remain, align 8, !dbg !5271
  %sub31 = sub i64 %conv30, %57, !dbg !5272
  %58 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5273
  %used32 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %58, i32 0, i32 10, !dbg !5274
  %59 = load i32, i32* %used32, align 8, !dbg !5275
  %conv33 = sext i32 %59 to i64, !dbg !5275
  %add = add i64 %conv33, %sub31, !dbg !5275
  %conv34 = trunc i64 %add to i32, !dbg !5275
  store i32 %conv34, i32* %used32, align 8, !dbg !5275
  %60 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5276
  %lock35 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %60, i32 0, i32 2, !dbg !5277
  call void @mutex_unlock(%struct.mutex* %lock35) #9, !dbg !5278
  br label %bail, !dbg !5279

if.end36:                                         ; preds = %copy_to_user.exit
  %61 = load i32, i32* %this_time, align 4, !dbg !5280
  %conv37 = sext i32 %61 to i64, !dbg !5280
  %62 = load i64, i64* %count.addr, align 8, !dbg !5281
  %sub38 = sub i64 %62, %conv37, !dbg !5281
  store i64 %sub38, i64* %count.addr, align 8, !dbg !5281
  %63 = load i32, i32* %this_time, align 4, !dbg !5282
  %conv39 = sext i32 %63 to i64, !dbg !5282
  %64 = load i64, i64* %read_count, align 8, !dbg !5283
  %add40 = add i64 %64, %conv39, !dbg !5283
  store i64 %add40, i64* %read_count, align 8, !dbg !5283
  %65 = load i32, i32* %this_time, align 4, !dbg !5284
  %66 = load i8*, i8** %buffer.addr, align 8, !dbg !5285
  %idx.ext41 = sext i32 %65 to i64, !dbg !5285
  %add.ptr42 = getelementptr i8, i8* %66, i64 %idx.ext41, !dbg !5285
  store i8* %add.ptr42, i8** %buffer.addr, align 8, !dbg !5285
  %67 = load i32, i32* %this_time, align 4, !dbg !5286
  %68 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5287
  %used43 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %68, i32 0, i32 10, !dbg !5288
  %69 = load i32, i32* %used43, align 8, !dbg !5289
  %add44 = add i32 %69, %67, !dbg !5289
  store i32 %add44, i32* %used43, align 8, !dbg !5289
  %70 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5290
  %lock45 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %70, i32 0, i32 2, !dbg !5291
  call void @mutex_unlock(%struct.mutex* %lock45) #9, !dbg !5292
  br label %while.cond, !dbg !5154, !llvm.loop !5293

while.end:                                        ; preds = %while.cond
  br label %bail, !dbg !5154

bail:                                             ; preds = %while.end, %if.then29, %if.then14, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !5295), !dbg !5296
  %71 = load i64, i64* %read_count, align 8, !dbg !5297
  %tobool46 = icmp ne i64 %71, 0, !dbg !5297
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !5299

if.then47:                                        ; preds = %bail
  %72 = load i64, i64* %read_count, align 8, !dbg !5300
  store i64 %72, i64* %retval, align 8, !dbg !5302
  br label %return, !dbg !5302

if.end48:                                         ; preds = %bail
  %73 = load i32, i32* %result, align 4, !dbg !5303
  %cmp49 = icmp eq i32 %73, -110, !dbg !5305
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5306

if.then51:                                        ; preds = %if.end48
  store i32 -11, i32* %result, align 4, !dbg !5307
  br label %if.end52, !dbg !5308

if.end52:                                         ; preds = %if.then51, %if.end48
  %74 = load i32, i32* %result, align 4, !dbg !5309
  %conv53 = sext i32 %74 to i64, !dbg !5309
  store i64 %conv53, i64* %retval, align 8, !dbg !5310
  br label %return, !dbg !5310

return:                                           ; preds = %if.end52, %if.then47, %if.then
  %75 = load i64, i64* %retval, align 8, !dbg !5311
  ret i64 %75, !dbg !5311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chaoskey_open(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5312 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.chaoskey*, align 8
  %interface = alloca %struct.usb_interface*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !5317, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface, metadata !5319, metadata !DIExpression()), !dbg !5320
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5321
  %call = call i32 @iminor(%struct.inode* %0) #9, !dbg !5322
  %call1 = call %struct.usb_interface* @usb_find_interface(%struct.usb_driver* @chaoskey_driver, i32 %call) #9, !dbg !5323
  store %struct.usb_interface* %call1, %struct.usb_interface** %interface, align 8, !dbg !5324
  %1 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5325
  %tobool = icmp ne %struct.usb_interface* %1, null, !dbg !5325
  br i1 %tobool, label %if.end, label %if.then, !dbg !5327

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5328
  br label %return, !dbg !5328

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5329
  %call2 = call i8* @usb_get_intfdata(%struct.usb_interface* %2) #9, !dbg !5330
  %3 = bitcast i8* %call2 to %struct.chaoskey*, !dbg !5330
  store %struct.chaoskey* %3, %struct.chaoskey** %dev, align 8, !dbg !5331
  %4 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5332
  %tobool3 = icmp ne %struct.chaoskey* %4, null, !dbg !5332
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5334

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !5335
  br label %return, !dbg !5335

if.end5:                                          ; preds = %if.end
  %5 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5337
  %6 = bitcast %struct.chaoskey* %5 to i8*, !dbg !5337
  %7 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5338
  %private_data = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 15, !dbg !5339
  store i8* %6, i8** %private_data, align 8, !dbg !5340
  %8 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5341
  %lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %8, i32 0, i32 2, !dbg !5342
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !5343
  %9 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5344
  %open = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %9, i32 0, i32 4, !dbg !5345
  %10 = load i32, i32* %open, align 8, !dbg !5346
  %inc = add i32 %10, 1, !dbg !5346
  store i32 %inc, i32* %open, align 8, !dbg !5346
  %11 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5347
  %lock6 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %11, i32 0, i32 2, !dbg !5348
  call void @mutex_unlock(%struct.mutex* %lock6) #9, !dbg !5349
  store i32 0, i32* %retval, align 4, !dbg !5350
  br label %return, !dbg !5350

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5351
  ret i32 %12, !dbg !5351
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chaoskey_release(%struct.inode* %inode, %struct.file* %file) #2 !dbg !5352 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dev = alloca %struct.chaoskey*, align 8
  %interface = alloca %struct.usb_interface*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5359
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5360
  %1 = load i8*, i8** %private_data, align 8, !dbg !5360
  %2 = bitcast i8* %1 to %struct.chaoskey*, !dbg !5359
  store %struct.chaoskey* %2, %struct.chaoskey** %dev, align 8, !dbg !5358
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface, metadata !5361, metadata !DIExpression()), !dbg !5362
  %3 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5363
  %cmp = icmp eq %struct.chaoskey* %3, null, !dbg !5365
  br i1 %cmp, label %if.then, label %if.end, !dbg !5366

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5367
  br label %return, !dbg !5367

if.end:                                           ; preds = %entry
  %4 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5368
  %interface1 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %4, i32 0, i32 0, !dbg !5369
  %5 = load %struct.usb_interface*, %struct.usb_interface** %interface1, align 8, !dbg !5369
  store %struct.usb_interface* %5, %struct.usb_interface** %interface, align 8, !dbg !5370
  %6 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5371
  %lock = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %6, i32 0, i32 2, !dbg !5372
  call void @mutex_lock(%struct.mutex* %lock) #9, !dbg !5373
  %7 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5374
  %open = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %7, i32 0, i32 4, !dbg !5376
  %8 = load i32, i32* %open, align 8, !dbg !5376
  %cmp2 = icmp sle i32 %8, 0, !dbg !5377
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5378

if.then3:                                         ; preds = %if.end
  %9 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5379
  %lock4 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %9, i32 0, i32 2, !dbg !5381
  call void @mutex_unlock(%struct.mutex* %lock4) #9, !dbg !5382
  store i32 -19, i32* %retval, align 4, !dbg !5383
  br label %return, !dbg !5383

if.end5:                                          ; preds = %if.end
  %10 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5384
  %open6 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %10, i32 0, i32 4, !dbg !5385
  %11 = load i32, i32* %open6, align 8, !dbg !5386
  %dec = add i32 %11, -1, !dbg !5386
  store i32 %dec, i32* %open6, align 8, !dbg !5386
  %12 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5387
  %present = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %12, i32 0, i32 5, !dbg !5389
  %13 = load i8, i8* %present, align 4, !dbg !5389
  %tobool = trunc i8 %13 to i1, !dbg !5389
  br i1 %tobool, label %if.else14, label %if.then7, !dbg !5390

if.then7:                                         ; preds = %if.end5
  %14 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5391
  %open8 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %14, i32 0, i32 4, !dbg !5394
  %15 = load i32, i32* %open8, align 8, !dbg !5394
  %cmp9 = icmp eq i32 %15, 0, !dbg !5395
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !5396

if.then10:                                        ; preds = %if.then7
  %16 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5397
  %lock11 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %16, i32 0, i32 2, !dbg !5399
  call void @mutex_unlock(%struct.mutex* %lock11) #9, !dbg !5400
  %17 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5401
  call void @chaoskey_free(%struct.chaoskey* %17) #9, !dbg !5402
  br label %if.end13, !dbg !5403

if.else:                                          ; preds = %if.then7
  %18 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5404
  %lock12 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %18, i32 0, i32 2, !dbg !5405
  call void @mutex_unlock(%struct.mutex* %lock12) #9, !dbg !5406
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  br label %if.end16, !dbg !5407

if.else14:                                        ; preds = %if.end5
  %19 = load %struct.chaoskey*, %struct.chaoskey** %dev, align 8, !dbg !5408
  %lock15 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %19, i32 0, i32 2, !dbg !5409
  call void @mutex_unlock(%struct.mutex* %lock15) #9, !dbg !5410
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.end13
  store i32 0, i32* %retval, align 4, !dbg !5411
  br label %return, !dbg !5411

return:                                           ; preds = %if.end16, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5412
  ret i32 %20, !dbg !5412
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_chaoskey_fill(%struct.chaoskey* %dev) #2 !dbg !5413 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5416, metadata !DIExpression()), !dbg !5422
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5424, metadata !DIExpression()), !dbg !5426
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5427, metadata !DIExpression()), !dbg !5429
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.chaoskey*, align 8
  %wait = alloca %struct.wait_queue_entry, align 8
  %result = alloca i32, align 4
  %started = alloca i8, align 1
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret35 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond41 = alloca i8, align 1
  %tmp52 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  %tmp70 = alloca i64, align 8
  store %struct.chaoskey* %dev, %struct.chaoskey** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.chaoskey** %dev.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %wait, metadata !5432, metadata !DIExpression()), !dbg !5444
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 0, !dbg !5444
  store i32 0, i32* %flags, align 8, !dbg !5444
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 1, !dbg !5444
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5426
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5426
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #15, !dbg !5429, !srcloc !5445
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !5429
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !5429
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !5429
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !5429
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5429
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5422
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5422
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !5422
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5422
  %7 = bitcast %struct.task_struct* %6 to i8*, !dbg !5444
  store i8* %7, i8** %private, align 8, !dbg !5444
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 2, !dbg !5444
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8, !dbg !5444
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !5444
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i32 0, i32 0, !dbg !5444
  %entry2 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !5444
  store %struct.list_head* %entry2, %struct.list_head** %next, align 8, !dbg !5444
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i32 0, i32 1, !dbg !5444
  %entry3 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i32 0, i32 3, !dbg !5444
  store %struct.list_head* %entry3, %struct.list_head** %prev, align 8, !dbg !5444
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5446, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata i8* %started, metadata !5448, metadata !DIExpression()), !dbg !5449
  %8 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5450
  %valid = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %8, i32 0, i32 9, !dbg !5452
  %9 = load i32, i32* %valid, align 4, !dbg !5452
  %10 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5453
  %used = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %10, i32 0, i32 10, !dbg !5454
  %11 = load i32, i32* %used, align 8, !dbg !5454
  %cmp = icmp ne i32 %9, %11, !dbg !5455
  br i1 %cmp, label %if.then, label %if.end, !dbg !5456

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5457
  br label %return, !dbg !5457

if.end:                                           ; preds = %entry
  %12 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5459
  %present = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %12, i32 0, i32 5, !dbg !5461
  %13 = load i8, i8* %present, align 4, !dbg !5461
  %tobool = trunc i8 %13 to i1, !dbg !5461
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !5462

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !5463
  br label %return, !dbg !5463

if.end5:                                          ; preds = %if.end
  %14 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5465
  %interface = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %14, i32 0, i32 0, !dbg !5466
  %15 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5466
  %call6 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %15) #9, !dbg !5467
  store i32 %call6, i32* %result, align 4, !dbg !5468
  %16 = load i32, i32* %result, align 4, !dbg !5469
  %tobool7 = icmp ne i32 %16, 0, !dbg !5469
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5471

if.then8:                                         ; preds = %if.end5
  %17 = load i32, i32* %result, align 4, !dbg !5472
  store i32 %17, i32* %retval, align 4, !dbg !5474
  br label %return, !dbg !5474

if.end9:                                          ; preds = %if.end5
  %18 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5475
  %reading = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %18, i32 0, i32 6, !dbg !5476
  store i8 1, i8* %reading, align 1, !dbg !5477
  %19 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5478
  %urb = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %19, i32 0, i32 15, !dbg !5479
  %20 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5479
  %call10 = call i32 @usb_submit_urb(%struct.urb* %20, i32 3264) #9, !dbg !5480
  store i32 %call10, i32* %result, align 4, !dbg !5481
  %21 = load i32, i32* %result, align 4, !dbg !5482
  %cmp11 = icmp slt i32 %21, 0, !dbg !5484
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !5485

if.then12:                                        ; preds = %if.end9
  %22 = load i32, i32* %result, align 4, !dbg !5486
  %call13 = call i32 @usb_translate_errors(i32 %22) #9, !dbg !5488
  store i32 %call13, i32* %result, align 4, !dbg !5489
  %23 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5490
  %reading14 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %23, i32 0, i32 6, !dbg !5491
  store i8 0, i8* %reading14, align 1, !dbg !5492
  br label %out, !dbg !5493

if.end15:                                         ; preds = %if.end9
  %24 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5494
  %reads_started = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %24, i32 0, i32 7, !dbg !5495
  %25 = load i8, i8* %reads_started, align 2, !dbg !5495
  %tobool16 = trunc i8 %25 to i1, !dbg !5495
  %frombool = zext i1 %tobool16 to i8, !dbg !5496
  store i8 %frombool, i8* %started, align 1, !dbg !5496
  %26 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5497
  %reads_started17 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %26, i32 0, i32 7, !dbg !5498
  store i8 1, i8* %reads_started17, align 2, !dbg !5499
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5500, metadata !DIExpression()), !dbg !5502
  %27 = load i8, i8* %started, align 1, !dbg !5502
  %tobool18 = trunc i8 %27 to i1, !dbg !5502
  %28 = zext i1 %tobool18 to i64, !dbg !5502
  %cond = select i1 %tobool18, i32 250, i32 750, !dbg !5502
  %conv = sext i32 %cond to i64, !dbg !5502
  store i64 %conv, i64* %__ret, align 8, !dbg !5502
  br label %do.body, !dbg !5502

do.body:                                          ; preds = %if.end15
  br label %do.body19, !dbg !5503

do.body19:                                        ; preds = %do.body
  br label %do.end, !dbg !5505

do.end:                                           ; preds = %do.body19
  br label %do.end20, !dbg !5503

do.end20:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !5507, metadata !DIExpression()), !dbg !5510
  %29 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5510
  %reading21 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %29, i32 0, i32 6, !dbg !5510
  %30 = load i8, i8* %reading21, align 1, !dbg !5510
  %tobool22 = trunc i8 %30 to i1, !dbg !5510
  %lnot = xor i1 %tobool22, true, !dbg !5510
  %frombool23 = zext i1 %lnot to i8, !dbg !5510
  store i8 %frombool23, i8* %__cond, align 1, !dbg !5510
  %31 = load i8, i8* %__cond, align 1, !dbg !5511
  %tobool24 = trunc i8 %31 to i1, !dbg !5511
  br i1 %tobool24, label %land.lhs.true, label %if.end28, !dbg !5511

land.lhs.true:                                    ; preds = %do.end20
  %32 = load i64, i64* %__ret, align 8, !dbg !5511
  %tobool26 = icmp ne i64 %32, 0, !dbg !5511
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5510

if.then27:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !5511
  br label %if.end28, !dbg !5511

if.end28:                                         ; preds = %if.then27, %land.lhs.true, %do.end20
  %33 = load i8, i8* %__cond, align 1, !dbg !5510
  %tobool29 = trunc i8 %33 to i1, !dbg !5510
  br i1 %tobool29, label %lor.end, label %lor.rhs, !dbg !5510

lor.rhs:                                          ; preds = %if.end28
  %34 = load i64, i64* %__ret, align 8, !dbg !5510
  %tobool31 = icmp ne i64 %34, 0, !dbg !5510
  %lnot32 = xor i1 %tobool31, true, !dbg !5510
  br label %lor.end, !dbg !5510

lor.end:                                          ; preds = %lor.rhs, %if.end28
  %35 = phi i1 [ true, %if.end28 ], [ %lnot32, %lor.rhs ]
  %lor.ext = zext i1 %35 to i32, !dbg !5510
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !5511
  %36 = load i32, i32* %tmp, align 4, !dbg !5510
  %tobool33 = icmp ne i32 %36, 0, !dbg !5513
  br i1 %tobool33, label %if.end69, label %if.then34, !dbg !5502

if.then34:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5514, metadata !DIExpression()), !dbg !5516
  call void @llvm.dbg.declare(metadata i64* %__ret35, metadata !5517, metadata !DIExpression()), !dbg !5516
  %37 = load i8, i8* %started, align 1, !dbg !5516
  %tobool36 = trunc i8 %37 to i1, !dbg !5516
  %38 = zext i1 %tobool36 to i64, !dbg !5516
  %cond38 = select i1 %tobool36, i32 250, i32 750, !dbg !5516
  %conv39 = sext i32 %cond38 to i64, !dbg !5516
  store i64 %conv39, i64* %__ret35, align 8, !dbg !5516
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #9, !dbg !5516
  br label %for.cond, !dbg !5516

for.cond:                                         ; preds = %if.end65, %if.then34
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5518, metadata !DIExpression()), !dbg !5522
  %39 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5522
  %wait_q = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %39, i32 0, i32 14, !dbg !5522
  %call40 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait_q, %struct.wait_queue_entry* %__wq_entry, i32 1) #9, !dbg !5522
  store i64 %call40, i64* %__int, align 8, !dbg !5522
  call void @llvm.dbg.declare(metadata i8* %__cond41, metadata !5523, metadata !DIExpression()), !dbg !5526
  %40 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5526
  %reading42 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %40, i32 0, i32 6, !dbg !5526
  %41 = load i8, i8* %reading42, align 1, !dbg !5526
  %tobool43 = trunc i8 %41 to i1, !dbg !5526
  %lnot44 = xor i1 %tobool43, true, !dbg !5526
  %frombool45 = zext i1 %lnot44 to i8, !dbg !5526
  store i8 %frombool45, i8* %__cond41, align 1, !dbg !5526
  %42 = load i8, i8* %__cond41, align 1, !dbg !5527
  %tobool46 = trunc i8 %42 to i1, !dbg !5527
  br i1 %tobool46, label %land.lhs.true48, label %if.end51, !dbg !5527

land.lhs.true48:                                  ; preds = %for.cond
  %43 = load i64, i64* %__ret35, align 8, !dbg !5527
  %tobool49 = icmp ne i64 %43, 0, !dbg !5527
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !5526

if.then50:                                        ; preds = %land.lhs.true48
  store i64 1, i64* %__ret35, align 8, !dbg !5527
  br label %if.end51, !dbg !5527

if.end51:                                         ; preds = %if.then50, %land.lhs.true48, %for.cond
  %44 = load i8, i8* %__cond41, align 1, !dbg !5526
  %tobool53 = trunc i8 %44 to i1, !dbg !5526
  br i1 %tobool53, label %lor.end58, label %lor.rhs55, !dbg !5526

lor.rhs55:                                        ; preds = %if.end51
  %45 = load i64, i64* %__ret35, align 8, !dbg !5526
  %tobool56 = icmp ne i64 %45, 0, !dbg !5526
  %lnot57 = xor i1 %tobool56, true, !dbg !5526
  br label %lor.end58, !dbg !5526

lor.end58:                                        ; preds = %lor.rhs55, %if.end51
  %46 = phi i1 [ true, %if.end51 ], [ %lnot57, %lor.rhs55 ]
  %lor.ext59 = zext i1 %46 to i32, !dbg !5526
  store i32 %lor.ext59, i32* %tmp52, align 4, !dbg !5527
  %47 = load i32, i32* %tmp52, align 4, !dbg !5526
  %tobool60 = icmp ne i32 %47, 0, !dbg !5529
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !5522

if.then61:                                        ; preds = %lor.end58
  br label %for.end, !dbg !5529

if.end62:                                         ; preds = %lor.end58
  %48 = load i64, i64* %__int, align 8, !dbg !5530
  %tobool63 = icmp ne i64 %48, 0, !dbg !5530
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !5522

if.then64:                                        ; preds = %if.end62
  %49 = load i64, i64* %__int, align 8, !dbg !5532
  store i64 %49, i64* %__ret35, align 8, !dbg !5532
  br label %__out, !dbg !5532

if.end65:                                         ; preds = %if.end62
  %50 = load i64, i64* %__ret35, align 8, !dbg !5522
  %call66 = call i64 @schedule_timeout(i64 %50) #9, !dbg !5522
  store i64 %call66, i64* %__ret35, align 8, !dbg !5522
  br label %for.cond, !dbg !5534, !llvm.loop !5535

for.end:                                          ; preds = %if.then61
  %51 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5516
  %wait_q67 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %51, i32 0, i32 14, !dbg !5516
  call void @finish_wait(%struct.wait_queue_head* %wait_q67, %struct.wait_queue_entry* %__wq_entry) #9, !dbg !5516
  br label %__out, !dbg !5516

__out:                                            ; preds = %for.end, %if.then64
  call void @llvm.dbg.label(metadata !5537), !dbg !5516
  %52 = load i64, i64* %__ret35, align 8, !dbg !5516
  store i64 %52, i64* %tmp68, align 8, !dbg !5516
  %53 = load i64, i64* %tmp68, align 8, !dbg !5516
  store i64 %53, i64* %__ret, align 8, !dbg !5513
  br label %if.end69, !dbg !5513

if.end69:                                         ; preds = %__out, %lor.end
  %54 = load i64, i64* %__ret, align 8, !dbg !5502
  store i64 %54, i64* %tmp70, align 8, !dbg !5513
  %55 = load i64, i64* %tmp70, align 8, !dbg !5502
  %conv71 = trunc i64 %55 to i32, !dbg !5538
  store i32 %conv71, i32* %result, align 4, !dbg !5539
  %56 = load i32, i32* %result, align 4, !dbg !5540
  %cmp72 = icmp slt i32 %56, 0, !dbg !5542
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !5543

if.then74:                                        ; preds = %if.end69
  %57 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5544
  %urb75 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %57, i32 0, i32 15, !dbg !5546
  %58 = load %struct.urb*, %struct.urb** %urb75, align 8, !dbg !5546
  call void @usb_kill_urb(%struct.urb* %58) #9, !dbg !5547
  br label %out, !dbg !5548

if.end76:                                         ; preds = %if.end69
  %59 = load i32, i32* %result, align 4, !dbg !5549
  %cmp77 = icmp eq i32 %59, 0, !dbg !5551
  br i1 %cmp77, label %if.then79, label %if.else, !dbg !5552

if.then79:                                        ; preds = %if.end76
  store i32 -110, i32* %result, align 4, !dbg !5553
  %60 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5555
  %urb80 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %60, i32 0, i32 15, !dbg !5556
  %61 = load %struct.urb*, %struct.urb** %urb80, align 8, !dbg !5556
  call void @usb_kill_urb(%struct.urb* %61) #9, !dbg !5557
  br label %if.end82, !dbg !5558

if.else:                                          ; preds = %if.end76
  %62 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5559
  %valid81 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %62, i32 0, i32 9, !dbg !5561
  %63 = load i32, i32* %valid81, align 4, !dbg !5561
  store i32 %63, i32* %result, align 4, !dbg !5562
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then79
  br label %out, !dbg !5563

out:                                              ; preds = %if.end82, %if.then74, %if.then12
  call void @llvm.dbg.label(metadata !5564), !dbg !5565
  %64 = load %struct.chaoskey*, %struct.chaoskey** %dev.addr, align 8, !dbg !5566
  %interface83 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %64, i32 0, i32 0, !dbg !5567
  %65 = load %struct.usb_interface*, %struct.usb_interface** %interface83, align 8, !dbg !5567
  call void @usb_autopm_put_interface(%struct.usb_interface* %65) #9, !dbg !5568
  %66 = load i32, i32* %result, align 4, !dbg !5569
  store i32 %66, i32* %retval, align 4, !dbg !5570
  br label %return, !dbg !5570

return:                                           ; preds = %out, %if.then8, %if.then4, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !5571
  ret i32 %67, !dbg !5571
}

; Function Attrs: noredzone
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry*, i32, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_translate_errors(i32 %error_code) #2 !dbg !5572 {
entry:
  %retval = alloca i32, align 4
  %error_code.addr = alloca i32, align 4
  store i32 %error_code, i32* %error_code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %error_code.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  %0 = load i32, i32* %error_code.addr, align 4, !dbg !5575
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 -12, label %sw.bb
    i32 -19, label %sw.bb
    i32 -95, label %sw.bb
  ], !dbg !5576

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %1 = load i32, i32* %error_code.addr, align 4, !dbg !5577
  store i32 %1, i32* %retval, align 4, !dbg !5579
  br label %return, !dbg !5579

sw.default:                                       ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5580
  br label %return, !dbg !5580

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4, !dbg !5581
  ret i32 %2, !dbg !5581
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #1

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #1

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_autopm_put_interface(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !5582 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5589, metadata !DIExpression()), !dbg !5591
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5591
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5592
  %tobool = icmp ne i32 %0, 0, !dbg !5592
  %lnot = xor i1 %tobool, true, !dbg !5592
  %lnot1 = xor i1 %lnot, true, !dbg !5592
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5592
  %conv = sext i32 %lnot.ext to i64, !dbg !5592
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5592
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5591

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5592

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5594

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5596

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5594
  %2 = load i64, i64* %count.addr, align 8, !dbg !5594
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %1, i64 %2) #9, !dbg !5594
  br label %do.body4, !dbg !5594

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5598

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5600

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5598

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !5602, !srcloc !5604
  br label %do.end8, !dbg !5602

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #10, !dbg !5605, !srcloc !5607
  br label %do.body9, !dbg !5598

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5608

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5598

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5594

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5610

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5594

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5594

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5591
  %tobool15 = icmp ne i32 %3, 0, !dbg !5591
  %lnot16 = xor i1 %tobool15, true, !dbg !5591
  %lnot18 = xor i1 %lnot16, true, !dbg !5591
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5591
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5591
  store i64 %conv20, i64* %tmp, align 8, !dbg !5592
  %4 = load i64, i64* %tmp, align 8, !dbg !5591
  ret void, !dbg !5612
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !5613 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5620, metadata !DIExpression()), !dbg !5621
  ret void, !dbg !5622
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noredzone
declare dso_local %struct.usb_interface* @usb_find_interface(%struct.usb_driver*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iminor(%struct.inode* %inode) #2 !dbg !5623 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5626, metadata !DIExpression()), !dbg !5627
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5628
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !5628
  %1 = load i32, i32* %i_rdev, align 4, !dbg !5628
  %and = and i32 %1, 1048575, !dbg !5628
  ret i32 %and, !dbg !5629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !5630 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5635
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5636
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !5637
  ret i8* %call, !dbg !5638
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5639 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5646
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5647
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5647
  ret i8* %1, !dbg !5648
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @usb_put_intf(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local void @hwrng_unregister(%struct.hwrng*) #1

; Function Attrs: noredzone
declare dso_local void @usb_deregister_dev(%struct.usb_interface*, %struct.usb_class_driver*) #1

; Function Attrs: noredzone
declare dso_local void @usb_poison_urb(%struct.urb*) #1

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
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4023, !4024, !4025, !4026}
!llvm.ident = !{!4027}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author211", scope: !2, file: !3, line: 41, type: !4020, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !3916, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/misc/chaoskey.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !99, !108, !113, !118}
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
!125 = !{!126, !129, !131, !132, !135, !137, !3811, !1090, !283, !141, !7, !3812}
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
!139 = !{!140, !142, !147, !151, !152, !153, !154, !155, !158, !159, !163, !164, !3553, !3593, !3594, !3611, !3672, !3754, !3755, !3757, !3758, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3793, !3794, !3795, !3800, !3807, !3808, !3809, !3810}
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
!291 = !{!292, !293, !297, !2979, !2980}
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
!303 = !{!304, !305, !306, !307, !2974, !2975}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !302, file: !259, line: 169, baseType: !271, size: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !302, file: !259, line: 170, baseType: !280, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !302, file: !259, line: 171, baseType: !131, size: 64, offset: 192)
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
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !133, line: 31, baseType: !378)
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
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1987, line: 9, flags: DIFlagFwdDecl)
!1987 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1091, file: !1092, line: 1326, baseType: !1104, size: 32, offset: 13184)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1091, file: !1092, line: 1342, baseType: !131, size: 64, offset: 13248)
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
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1997, file: !1998, line: 495, baseType: !134, size: 16, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1997, file: !1998, line: 496, baseType: !134, size: 16, offset: 272)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1997, file: !1998, line: 497, baseType: !134, size: 16, offset: 288)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1997, file: !1998, line: 498, baseType: !134, size: 16, offset: 304)
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
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2195, file: !678, line: 162, baseType: !131, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !682, file: !678, line: 176, baseType: !324, size: 128, align: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 179, baseType: !2203, size: 32, offset: 384)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !678, line: 179, size: 32, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2203, file: !678, line: 184, baseType: !702, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2203, file: !678, line: 192, baseType: !7, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2203, file: !678, line: 194, baseType: !7, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2203, file: !678, line: 195, baseType: !141, size: 32)
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
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2215, file: !2216, line: 16, baseType: !141, size: 32, offset: 32)
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
!2234 = !{!141, !2235}
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
!2280 = !{!2235, !554, !141}
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
!2297 = !{!141, !384, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2229, file: !32, line: 335, baseType: !2300, size: 64, offset: 576)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!141, !384, !2293}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2229, file: !32, line: 337, baseType: !2304, size: 64, offset: 640)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!141, !554, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !555, file: !38, line: 1425, baseType: !2309, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2312)
!2312 = !{!2313, !2317, !2318, !2322, !2323, !2324, !2339, !2362, !2366, !2367, !2390}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2311, file: !32, line: 429, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!141, !554, !141, !141, !504}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2311, file: !32, line: 430, baseType: !640, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2311, file: !32, line: 431, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!141, !554, !7}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2311, file: !32, line: 432, baseType: !2319, size: 64, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2311, file: !32, line: 433, baseType: !640, size: 64, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2311, file: !32, line: 434, baseType: !2325, size: 64, offset: 320)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!141, !554, !141, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2329, file: !32, line: 416, baseType: !141, size: 32)
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
!2342 = !{!141, !554, !2247, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2344, file: !32, line: 344, baseType: !141, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2344, file: !32, line: 345, baseType: !376, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2344, file: !32, line: 346, baseType: !376, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2344, file: !32, line: 347, baseType: !376, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2344, file: !32, line: 348, baseType: !376, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2344, file: !32, line: 349, baseType: !376, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2344, file: !32, line: 350, baseType: !376, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2344, file: !32, line: 351, baseType: !732, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2344, file: !32, line: 353, baseType: !732, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2344, file: !32, line: 354, baseType: !141, size: 32, offset: 576)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2344, file: !32, line: 355, baseType: !141, size: 32, offset: 608)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2344, file: !32, line: 356, baseType: !376, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2344, file: !32, line: 357, baseType: !376, size: 64, offset: 704)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2344, file: !32, line: 358, baseType: !376, size: 64, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2344, file: !32, line: 359, baseType: !732, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2344, file: !32, line: 360, baseType: !141, size: 32, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2311, file: !32, line: 436, baseType: !2363, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!141, !554, !2307, !2343}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2311, file: !32, line: 438, baseType: !2340, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2311, file: !32, line: 439, baseType: !2368, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!141, !554, !2371}
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
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !555, file: !38, line: 1432, baseType: !141, size: 32, offset: 1152)
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
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2434, file: !32, line: 444, baseType: !141, size: 32)
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
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2430, file: !32, line: 224, baseType: !141, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2430, file: !32, line: 226, baseType: !180, size: 128, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2430, file: !32, line: 227, baseType: !283, size: 64, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2430, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2430, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2430, file: !32, line: 230, baseType: !2268, size: 64, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2430, file: !32, line: 231, baseType: !2268, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2430, file: !32, line: 232, baseType: !131, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2422, file: !32, line: 523, baseType: !2461, size: 192, offset: 2240)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2438, size: 192, elements: !235)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !555, file: !38, line: 1458, baseType: !2463, size: 2112, offset: 4288)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2464)
!2464 = !{!2465, !2466, !2467}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2463, file: !38, line: 1411, baseType: !141, size: 32)
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
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2473, file: !2474, line: 18, baseType: !141, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2473, file: !2474, line: 19, baseType: !141, size: 32, offset: 32)
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
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !555, file: !38, line: 1465, baseType: !131, size: 64, offset: 6400)
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
!2519 = !{!141, !341, !7}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2514, file: !339, line: 137, baseType: !2517, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2514, file: !339, line: 138, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!141, !2525, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2514, file: !339, line: 139, baseType: !2529, size: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!141, !2525, !7, !177, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2514, file: !339, line: 141, baseType: !2535, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!141, !2525}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2514, file: !339, line: 142, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!141, !341}
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
!2554 = !{!234, !341, !234, !141}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2514, file: !339, line: 147, baseType: !2556, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!337, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2514, file: !339, line: 148, baseType: !2561, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!141, !504, !445}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2514, file: !339, line: 149, baseType: !2565, size: 64, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!341, !341, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !555, file: !38, line: 1500, baseType: !141, size: 32, offset: 7552)
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
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2572, file: !2216, line: 67, baseType: !141, size: 32, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2572, file: !2216, line: 68, baseType: !7, size: 32, offset: 224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2572, file: !2216, line: 71, baseType: !180, size: 128, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2572, file: !2216, line: 77, baseType: !2585, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !555, file: !38, line: 1505, baseType: !726, size: 64, offset: 8064)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !555, file: !38, line: 1508, baseType: !726, size: 64, offset: 8128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !555, file: !38, line: 1511, baseType: !141, size: 32, offset: 8192)
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
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !555, file: !38, line: 1542, baseType: !141, size: 32, offset: 9152)
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
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !385, file: !38, line: 649, baseType: !134, size: 16, offset: 896)
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
!2669 = !{!486, !311, !486, !141}
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
!2684 = !{!141, !802, !445}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2663, file: !38, line: 1830, baseType: !2686, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!141, !311, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2691)
!2691 = !{!2692, !2697}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2690, file: !38, line: 1777, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2694)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!141, !2689, !177, !141, !486, !376, !7}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2690, file: !38, line: 1778, baseType: !486, size: 64, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2663, file: !38, line: 1831, baseType: !2686, size: 64, offset: 512)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2663, file: !38, line: 1832, baseType: !2700, size: 64, offset: 576)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!2703, !311, !2704}
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !136, line: 52, baseType: !7)
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
!2714 = !{!141, !311, !935}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2663, file: !38, line: 1836, baseType: !283, size: 64, offset: 832)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2663, file: !38, line: 1837, baseType: !2717, size: 64, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!141, !384, !311}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2663, file: !38, line: 1838, baseType: !2721, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!141, !311, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !131)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2663, file: !38, line: 1839, baseType: !2717, size: 64, offset: 1024)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2663, file: !38, line: 1840, baseType: !2727, size: 64, offset: 1088)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!141, !311, !486, !486, !141}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2663, file: !38, line: 1841, baseType: !2731, size: 64, offset: 1152)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!141, !141, !311, !141}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2663, file: !38, line: 1842, baseType: !2735, size: 64, offset: 1216)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!141, !311, !141, !2738}
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
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2739, file: !38, line: 1076, baseType: !141, size: 32, offset: 736)
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
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2757, file: !38, line: 1316, baseType: !141, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2757, file: !38, line: 1317, baseType: !141, size: 32, offset: 32)
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
!2804 = !{!141, !2738, !141}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2790, file: !38, line: 1021, baseType: !2806, size: 64, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!445, !2738}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2790, file: !38, line: 1022, baseType: !2810, size: 64, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!141, !2738, !141, !183}
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
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2837, file: !38, line: 1094, baseType: !141, size: 32, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2837, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2663, file: !38, line: 1843, baseType: !2843, size: 64, offset: 1280)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!265, !311, !676, !141, !280, !2674, !141}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2663, file: !38, line: 1844, baseType: !975, size: 64, offset: 1344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2663, file: !38, line: 1845, baseType: !2848, size: 64, offset: 1408)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!141, !141}
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
!2863 = !{!141, !311, !269, !2864, !776}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2663, file: !38, line: 1850, baseType: !2866, size: 64, offset: 1728)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!269, !311, !141, !486, !486}
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
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !385, file: !38, line: 720, baseType: !131, size: 64, offset: 4160)
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
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2917, file: !2911, line: 32, baseType: !141, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !342, file: !339, line: 102, baseType: !2512, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !342, file: !339, line: 103, baseType: !554, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !342, file: !339, line: 104, baseType: !283, size: 64, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !342, file: !339, line: 105, baseType: !131, size: 64, offset: 960)
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
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2949, file: !38, line: 890, baseType: !141, size: 32, offset: 160)
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
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !312, file: !38, line: 945, baseType: !131, size: 64, offset: 1408)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !312, file: !38, line: 949, baseType: !180, size: 128, offset: 1472)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !312, file: !38, line: 950, baseType: !180, size: 128, offset: 1600)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !312, file: !38, line: 952, baseType: !689, size: 64, offset: 1728)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !312, file: !38, line: 953, baseType: !863, size: 32, offset: 1792)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !312, file: !38, line: 954, baseType: !863, size: 32, offset: 1824)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !302, file: !259, line: 174, baseType: !308, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !302, file: !259, line: 176, baseType: !2976, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!141, !311, !186, !301, !935}
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
!2998 = !{!131}
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
!3063 = !{!141, !666, !3042}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3058, file: !574, line: 171, baseType: !3065, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!141, !3023, !177, !275}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3058, file: !574, line: 173, baseType: !3069, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!141, !3023}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3058, file: !574, line: 174, baseType: !3073, size: 64, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!141, !3023, !3023, !177}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3058, file: !574, line: 176, baseType: !3077, size: 64, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!141, !666, !3023, !3042}
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
!3097 = !{!141, !3098}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !574, line: 197, size: 1088, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3099, file: !574, line: 199, baseType: !3023, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3099, file: !574, line: 200, baseType: !311, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3099, file: !574, line: 201, baseType: !666, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3099, file: !574, line: 202, baseType: !131, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3099, file: !574, line: 205, baseType: !1047, size: 192, offset: 256)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3099, file: !574, line: 206, baseType: !1047, size: 192, offset: 448)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3099, file: !574, line: 207, baseType: !141, size: 32, offset: 640)
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
!3121 = !{!141, !666, !131}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3092, file: !574, line: 238, baseType: !3123, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!131, !666, !2674}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3092, file: !574, line: 239, baseType: !3127, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!131, !666, !131, !2674}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3092, file: !574, line: 240, baseType: !3131, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !666, !131}
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
!3148 = !{!141, !3098, !935}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3087, file: !574, line: 109, baseType: !3150, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !574, line: 31, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3087, file: !574, line: 110, baseType: !486, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3087, file: !574, line: 111, baseType: !3023, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3024, file: !574, line: 148, baseType: !131, size: 64, offset: 768)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3024, file: !574, line: 154, baseType: !376, size: 64, offset: 832)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3024, file: !574, line: 156, baseType: !134, size: 16, offset: 896)
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
!3186 = !{!141, !169, !229}
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
!3204 = !{!141, !169}
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
!3241 = !{!141, !169, !3242}
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
!3284 = !{!141, !169, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3286)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3287)
!3287 = !{!3288}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3286, file: !74, line: 51, baseType: !141, size: 32)
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
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !170, file: !67, line: 473, baseType: !131, size: 64, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !170, file: !67, line: 475, baseType: !131, size: 64, offset: 960)
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
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3351, file: !3352, line: 45, baseType: !141, size: 32, offset: 64)
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
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3332, file: !74, line: 613, baseType: !141, size: 32, offset: 1792)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3332, file: !74, line: 614, baseType: !141, size: 32, offset: 1824)
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
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !166, file: !6, line: 427, baseType: !141, size: 32, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !166, file: !6, line: 428, baseType: !177, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !166, file: !6, line: 429, baseType: !1226, size: 8, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !166, file: !6, line: 433, baseType: !1226, size: 8, offset: 264)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !166, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !166, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !166, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !166, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !166, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !166, file: !6, line: 444, baseType: !141, size: 32, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !166, file: !6, line: 446, baseType: !1047, size: 192, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !166, file: !6, line: 448, baseType: !3543, size: 128, offset: 576)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3544)
!3544 = !{!3545}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3543, file: !6, line: 418, baseType: !3546, size: 128)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !161)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !166, file: !6, line: 449, baseType: !137, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !166, file: !6, line: 450, baseType: !165, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !166, file: !6, line: 452, baseType: !141, size: 32, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !166, file: !6, line: 459, baseType: !141, size: 32, offset: 864)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !166, file: !6, line: 460, baseType: !141, size: 32, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !166, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !138, file: !6, line: 647, baseType: !3554, size: 640, offset: 640)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3555)
!3555 = !{!3556, !3567, !3575, !3583, !3584, !3585, !3588, !3590, !3591, !3592}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3554, file: !6, line: 68, baseType: !3557, size: 72)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3557, file: !88, line: 408, baseType: !1227, size: 8)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3557, file: !88, line: 409, baseType: !1227, size: 8, offset: 8)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3557, file: !88, line: 411, baseType: !1227, size: 8, offset: 16)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3557, file: !88, line: 412, baseType: !1227, size: 8, offset: 24)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3557, file: !88, line: 413, baseType: !135, size: 16, offset: 32)
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
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3568, file: !88, line: 695, baseType: !135, size: 16, offset: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3554, file: !6, line: 70, baseType: !3576, size: 64, offset: 120)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3576, file: !88, line: 678, baseType: !1227, size: 8)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3576, file: !88, line: 679, baseType: !1227, size: 8, offset: 8)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3576, file: !88, line: 680, baseType: !135, size: 16, offset: 16)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3576, file: !88, line: 681, baseType: !3582, size: 32, offset: 32)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !136, line: 31, baseType: !150)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3554, file: !6, line: 71, baseType: !180, size: 128, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3554, file: !6, line: 72, baseType: !131, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3554, file: !6, line: 73, baseType: !3586, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3554, file: !6, line: 75, baseType: !3589, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3554, file: !6, line: 76, baseType: !141, size: 32, offset: 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3554, file: !6, line: 77, baseType: !141, size: 32, offset: 544)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3554, file: !6, line: 78, baseType: !141, size: 32, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !138, file: !6, line: 649, baseType: !170, size: 5568, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !138, file: !6, line: 651, baseType: !3595, size: 144, offset: 6848)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3595, file: !88, line: 290, baseType: !1227, size: 8)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3595, file: !88, line: 291, baseType: !1227, size: 8, offset: 8)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3595, file: !88, line: 293, baseType: !135, size: 16, offset: 16)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3595, file: !88, line: 294, baseType: !1227, size: 8, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3595, file: !88, line: 295, baseType: !1227, size: 8, offset: 40)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3595, file: !88, line: 296, baseType: !1227, size: 8, offset: 48)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3595, file: !88, line: 297, baseType: !1227, size: 8, offset: 56)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3595, file: !88, line: 298, baseType: !135, size: 16, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3595, file: !88, line: 299, baseType: !135, size: 16, offset: 80)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3595, file: !88, line: 300, baseType: !135, size: 16, offset: 96)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3595, file: !88, line: 301, baseType: !1227, size: 8, offset: 112)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3595, file: !88, line: 302, baseType: !1227, size: 8, offset: 120)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3595, file: !88, line: 303, baseType: !1227, size: 8, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3595, file: !88, line: 304, baseType: !1227, size: 8, offset: 136)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !138, file: !6, line: 652, baseType: !3612, size: 64, offset: 7040)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3614)
!3614 = !{!3615, !3623, !3631, !3643, !3656, !3665}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3613, file: !6, line: 397, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3617, file: !88, line: 845, baseType: !1227, size: 8)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3617, file: !88, line: 846, baseType: !1227, size: 8, offset: 8)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3617, file: !88, line: 848, baseType: !135, size: 16, offset: 16)
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
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3633, file: !88, line: 923, baseType: !135, size: 16, offset: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3633, file: !88, line: 928, baseType: !1227, size: 8, offset: 48)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3633, file: !88, line: 929, baseType: !1227, size: 8, offset: 56)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3633, file: !88, line: 930, baseType: !135, size: 16, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3613, file: !6, line: 402, baseType: !3644, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3645, file: !88, line: 956, baseType: !1227, size: 8)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3645, file: !88, line: 957, baseType: !1227, size: 8, offset: 8)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3645, file: !88, line: 958, baseType: !1227, size: 8, offset: 16)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3645, file: !88, line: 959, baseType: !1227, size: 8, offset: 24)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3645, file: !88, line: 960, baseType: !3582, size: 32, offset: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3645, file: !88, line: 963, baseType: !135, size: 16, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3645, file: !88, line: 967, baseType: !135, size: 16, offset: 80)
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
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !138, file: !6, line: 653, baseType: !3673, size: 64, offset: 7104)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3675)
!3675 = !{!3676, !3687, !3688, !3701, !3743, !3752, !3753}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3674, file: !6, line: 375, baseType: !3677, size: 72)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3677, file: !88, line: 350, baseType: !1227, size: 8)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3677, file: !88, line: 351, baseType: !1227, size: 8, offset: 8)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3677, file: !88, line: 353, baseType: !135, size: 16, offset: 16)
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
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3708, file: !6, line: 85, baseType: !141, size: 32, offset: 96)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3708, file: !6, line: 86, baseType: !3589, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3708, file: !6, line: 91, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3708, file: !6, line: 93, baseType: !234, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3704, file: !6, line: 237, baseType: !3707, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3704, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3704, file: !6, line: 243, baseType: !3690, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3704, file: !6, line: 245, baseType: !141, size: 32, offset: 256)
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
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3674, file: !6, line: 392, baseType: !141, size: 32, offset: 5376)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !138, file: !6, line: 655, baseType: !3673, size: 64, offset: 7168)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !138, file: !6, line: 656, baseType: !3756, size: 1024, offset: 7232)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3725, size: 1024, elements: !145)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !138, file: !6, line: 657, baseType: !3756, size: 1024, offset: 8256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !138, file: !6, line: 659, baseType: !3759, size: 64, offset: 9280)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !138, file: !6, line: 661, baseType: !134, size: 16, offset: 9344)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !138, file: !6, line: 662, baseType: !1226, size: 8, offset: 9360)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !138, file: !6, line: 663, baseType: !1226, size: 8, offset: 9368)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !138, file: !6, line: 664, baseType: !1226, size: 8, offset: 9376)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !138, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !138, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !138, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !138, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !138, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !138, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !138, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !138, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !138, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !138, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !138, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !138, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !138, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !138, file: !6, line: 679, baseType: !141, size: 32, offset: 9408)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !138, file: !6, line: 682, baseType: !234, size: 64, offset: 9472)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !138, file: !6, line: 683, baseType: !234, size: 64, offset: 9536)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !138, file: !6, line: 684, baseType: !234, size: 64, offset: 9600)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !138, file: !6, line: 686, baseType: !180, size: 128, offset: 9664)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !138, file: !6, line: 688, baseType: !141, size: 32, offset: 9792)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !138, file: !6, line: 690, baseType: !148, size: 32, offset: 9824)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !138, file: !6, line: 691, baseType: !702, size: 32, offset: 9856)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !138, file: !6, line: 693, baseType: !283, size: 64, offset: 9920)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !138, file: !6, line: 696, baseType: !283, size: 64, offset: 9984)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !138, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !138, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !138, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !138, file: !6, line: 702, baseType: !3791, size: 64, offset: 10112)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !138, file: !6, line: 703, baseType: !141, size: 32, offset: 10176)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !138, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !138, file: !6, line: 705, baseType: !3796, size: 64, offset: 10240)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3797)
!3797 = !{!3798, !3799}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3796, file: !6, line: 506, baseType: !7, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3796, file: !6, line: 512, baseType: !141, size: 32, offset: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !138, file: !6, line: 706, baseType: !3801, size: 128, offset: 10304)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3806}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3801, file: !6, line: 529, baseType: !7, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3801, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3801, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3801, file: !6, line: 551, baseType: !141, size: 32, offset: 96)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !138, file: !6, line: 707, baseType: !3801, size: 128, offset: 10432)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !138, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !138, file: !6, line: 710, baseType: !814, size: 16, offset: 10592)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !138, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chaoskey", file: !3, line: 74, size: 1984, elements: !3814)
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3858, !3859, !3860, !3915}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3813, file: !3, line: 75, baseType: !3703, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "in_ep", scope: !3813, file: !3, line: 76, baseType: !144, size: 8, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3813, file: !3, line: 77, baseType: !1047, size: 192, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "rng_lock", scope: !3813, file: !3, line: 78, baseType: !1047, size: 192, offset: 320)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3813, file: !3, line: 79, baseType: !141, size: 32, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3813, file: !3, line: 80, baseType: !445, size: 8, offset: 544)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "reading", scope: !3813, file: !3, line: 81, baseType: !445, size: 8, offset: 552)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "reads_started", scope: !3813, file: !3, line: 82, baseType: !445, size: 8, offset: 560)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3813, file: !3, line: 83, baseType: !141, size: 32, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3813, file: !3, line: 84, baseType: !141, size: 32, offset: 608)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3813, file: !3, line: 85, baseType: !141, size: 32, offset: 640)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3813, file: !3, line: 86, baseType: !234, size: 64, offset: 704)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "hwrng", scope: !3813, file: !3, line: 87, baseType: !3828, size: 896, offset: 768)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !3829, line: 39, size: 896, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!3830 = !{!3831, !3832, !3837, !3841, !3845, !3849, !3853, !3854, !3855, !3856, !3857}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3828, file: !3829, line: 40, baseType: !177, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3828, file: !3829, line: 41, baseType: !3833, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!141, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3828, file: !3829, line: 42, baseType: !3838, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{null, !3836}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !3828, file: !3829, line: 43, baseType: !3842, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!141, !3836, !141}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !3828, file: !3829, line: 44, baseType: !3846, size: 64, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!141, !3836, !1289}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3828, file: !3829, line: 45, baseType: !3850, size: 64, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!141, !3836, !131, !280, !445}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3828, file: !3829, line: 46, baseType: !283, size: 64, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !3828, file: !3829, line: 47, baseType: !134, size: 16, offset: 448)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3828, file: !3829, line: 50, baseType: !180, size: 128, offset: 512)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3828, file: !3829, line: 51, baseType: !3162, size: 32, offset: 640)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !3828, file: !3829, line: 52, baseType: !1376, size: 192, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "hwrng_registered", scope: !3813, file: !3, line: 88, baseType: !141, size: 32, offset: 1664)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !3813, file: !3, line: 89, baseType: !1355, size: 128, offset: 1728)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !3813, file: !3, line: 90, baseType: !3861, size: 64, offset: 1856)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3907}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3862, file: !6, line: 1563, baseType: !3162, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !3862, file: !6, line: 1564, baseType: !141, size: 32, offset: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3862, file: !6, line: 1565, baseType: !131, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3862, file: !6, line: 1566, baseType: !702, size: 32, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !3862, file: !6, line: 1567, baseType: !702, size: 32, offset: 160)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3862, file: !6, line: 1570, baseType: !180, size: 128, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !3862, file: !6, line: 1572, baseType: !180, size: 128, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !3862, file: !6, line: 1573, baseType: !3872, size: 64, offset: 448)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !3874)
!3874 = !{!3875, !3876, !3877, !3878, !3879}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3873, file: !6, line: 1361, baseType: !180, size: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3873, file: !6, line: 1362, baseType: !1355, size: 128, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3873, file: !6, line: 1363, baseType: !193, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !3873, file: !6, line: 1364, baseType: !702, size: 32, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !3873, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3862, file: !6, line: 1574, baseType: !137, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !3862, file: !6, line: 1575, baseType: !3725, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3862, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !3862, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3862, file: !6, line: 1578, baseType: !141, size: 32, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !3862, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !3862, file: !6, line: 1580, baseType: !131, size: 64, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !3862, file: !6, line: 1581, baseType: !874, size: 64, offset: 832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !3862, file: !6, line: 1582, baseType: !3889, size: 64, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !3862, file: !6, line: 1583, baseType: !141, size: 32, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !3862, file: !6, line: 1584, baseType: !141, size: 32, offset: 992)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !3862, file: !6, line: 1585, baseType: !148, size: 32, offset: 1024)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3862, file: !6, line: 1586, baseType: !148, size: 32, offset: 1056)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !3862, file: !6, line: 1587, baseType: !3589, size: 64, offset: 1088)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !3862, file: !6, line: 1588, baseType: !874, size: 64, offset: 1152)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !3862, file: !6, line: 1589, baseType: !141, size: 32, offset: 1216)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !3862, file: !6, line: 1590, baseType: !141, size: 32, offset: 1248)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3862, file: !6, line: 1591, baseType: !141, size: 32, offset: 1280)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !3862, file: !6, line: 1593, baseType: !141, size: 32, offset: 1312)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3862, file: !6, line: 1594, baseType: !131, size: 64, offset: 1344)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3862, file: !6, line: 1595, baseType: !3903, size: 64, offset: 1408)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !3904)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3861}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !3862, file: !6, line: 1596, baseType: !3908, offset: 1472)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3909, elements: !2190)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !3910)
!3910 = !{!3911, !3912, !3913, !3914}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3909, file: !6, line: 1352, baseType: !7, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3909, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !3909, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3909, file: !6, line: 1355, baseType: !141, size: 32, offset: 96)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3813, file: !3, line: 91, baseType: !234, size: 64, offset: 1920)
!3916 = !{!0, !3917, !3922, !3927, !3932, !3934, !3939, !4000, !4003, !4005, !4007, !4015, !4017}
!3917 = !DIGlobalVariableExpression(var: !3918, expr: !DIExpression())
!3918 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description212", scope: !2, file: !3, line: 42, type: !3919, isLocal: true, isDefinition: true, align: 8)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 400, elements: !3920)
!3920 = !{!3921}
!3921 = !DISubrange(count: 50)
!3922 = !DIGlobalVariableExpression(var: !3923, expr: !DIExpression())
!3923 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file213", scope: !2, file: !3, line: 43, type: !3924, isLocal: true, isDefinition: true, align: 8)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 320, elements: !3925)
!3925 = !{!3926}
!3926 = !DISubrange(count: 40)
!3927 = !DIGlobalVariableExpression(var: !3928, expr: !DIExpression())
!3928 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license214", scope: !2, file: !3, line: 43, type: !3929, isLocal: true, isDefinition: true, align: 8)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 168, elements: !3930)
!3930 = !{!3931}
!3931 = !DISubrange(count: 21)
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_chaoskey_driver_init216", scope: !2, file: !3, line: 583, type: !131, isLocal: true, isDefinition: true)
!3934 = !DIGlobalVariableExpression(var: !3935, expr: !DIExpression())
!3935 = distinct !DIGlobalVariable(name: "__exitcall_chaoskey_driver_exit", scope: !2, file: !3, line: 583, type: !3936, isLocal: true, isDefinition: true)
!3936 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3937, line: 117, baseType: !3938)
!3937 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!3939 = !DIGlobalVariableExpression(var: !3940, expr: !DIExpression())
!3940 = distinct !DIGlobalVariable(name: "chaoskey_driver", scope: !2, file: !3, line: 572, type: !3941, isLocal: true, isDefinition: true)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3942)
!3942 = !{!3943, !3944, !3965, !3969, !3973, !3977, !3981, !3982, !3983, !3984, !3985, !3986, !3991, !3996, !3997, !3998, !3999}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3941, file: !6, line: 1185, baseType: !177, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3941, file: !6, line: 1187, baseType: !3945, size: 64, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!141, !3703, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3255, line: 121, size: 256, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3950, file: !3255, line: 123, baseType: !132, size: 16)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3950, file: !3255, line: 126, baseType: !132, size: 16, offset: 16)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3950, file: !3255, line: 127, baseType: !132, size: 16, offset: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3950, file: !3255, line: 128, baseType: !132, size: 16, offset: 48)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3950, file: !3255, line: 129, baseType: !132, size: 16, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3950, file: !3255, line: 132, baseType: !1227, size: 8, offset: 80)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3950, file: !3255, line: 133, baseType: !1227, size: 8, offset: 88)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3950, file: !3255, line: 134, baseType: !1227, size: 8, offset: 96)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3950, file: !3255, line: 137, baseType: !1227, size: 8, offset: 104)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3950, file: !3255, line: 138, baseType: !1227, size: 8, offset: 112)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3950, file: !3255, line: 139, baseType: !1227, size: 8, offset: 120)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3950, file: !3255, line: 142, baseType: !1227, size: 8, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3950, file: !3255, line: 145, baseType: !3274, size: 64, align: 64, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3941, file: !6, line: 1190, baseType: !3966, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3703}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3941, file: !6, line: 1192, baseType: !3970, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!141, !3703, !7, !131}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3941, file: !6, line: 1195, baseType: !3974, size: 64, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!141, !3703, !3285}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3941, file: !6, line: 1196, baseType: !3978, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!141, !3703}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3941, file: !6, line: 1197, baseType: !3978, size: 64, offset: 384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3941, file: !6, line: 1199, baseType: !3978, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3941, file: !6, line: 1200, baseType: !3978, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3941, file: !6, line: 1202, baseType: !3948, size: 64, offset: 576)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3941, file: !6, line: 1203, baseType: !287, size: 64, offset: 640)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3941, file: !6, line: 1205, baseType: !3987, size: 128, offset: 704)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3987, file: !6, line: 1092, baseType: !193)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3987, file: !6, line: 1093, baseType: !180, size: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3941, file: !6, line: 1206, baseType: !3992, size: 1216, offset: 832)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3992, file: !6, line: 1114, baseType: !3243, size: 1152)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3992, file: !6, line: 1115, baseType: !141, size: 32, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3941, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3941, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3941, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3941, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4000 = !DIGlobalVariableExpression(var: !4001, expr: !DIExpression())
!4001 = distinct !DIGlobalVariable(name: "__key", scope: !4002, file: !3, line: 188, type: !600, isLocal: true, isDefinition: true)
!4002 = distinct !DISubprogram(name: "chaoskey_probe", scope: !3, file: !3, line: 106, type: !3946, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4003 = !DIGlobalVariableExpression(var: !4004, expr: !DIExpression())
!4004 = distinct !DIGlobalVariable(name: "__key", scope: !4002, file: !3, line: 190, type: !600, isLocal: true, isDefinition: true)
!4005 = !DIGlobalVariableExpression(var: !4006, expr: !DIExpression())
!4006 = distinct !DIGlobalVariable(name: "__key", scope: !4002, file: !3, line: 191, type: !600, isLocal: true, isDefinition: true)
!4007 = !DIGlobalVariableExpression(var: !4008, expr: !DIExpression())
!4008 = distinct !DIGlobalVariable(name: "chaoskey_class", scope: !2, file: !3, line: 565, type: !4009, isLocal: true, isDefinition: true)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_class_driver", file: !6, line: 1274, size: 256, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4009, file: !6, line: 1275, baseType: !234, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4009, file: !6, line: 1276, baseType: !3498, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4009, file: !6, line: 1277, baseType: !2661, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "minor_base", scope: !4009, file: !6, line: 1278, baseType: !141, size: 32, offset: 192)
!4015 = !DIGlobalVariableExpression(var: !4016, expr: !DIExpression())
!4016 = distinct !DIGlobalVariable(name: "chaoskey_fops", scope: !2, file: !3, line: 556, type: !2662, isLocal: true, isDefinition: true)
!4017 = !DIGlobalVariableExpression(var: !4018, expr: !DIExpression())
!4018 = distinct !DIGlobalVariable(name: "chaoskey_table", scope: !2, file: !3, line: 64, type: !4019, isLocal: true, isDefinition: true)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3949, size: 768, elements: !235)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 392, elements: !4021)
!4021 = !{!4022}
!4022 = !DISubrange(count: 49)
!4023 = !{i32 7, !"Dwarf Version", i32 4}
!4024 = !{i32 2, !"Debug Info Version", i32 3}
!4025 = !{i32 1, !"wchar_size", i32 2}
!4026 = !{i32 1, !"Code Model", i32 2}
!4027 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4028 = distinct !DISubprogram(name: "chaoskey_driver_init", scope: !3, file: !3, line: 583, type: !4029, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!141}
!4031 = !DILocation(line: 583, column: 1, scope: !4028)
!4032 = distinct !DISubprogram(name: "chaoskey_driver_exit", scope: !3, file: !3, line: 583, type: !1749, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4033 = !DILocation(line: 583, column: 1, scope: !4032)
!4034 = !DILocalVariable(name: "s", arg: 1, scope: !4035, file: !119, line: 445, type: !889)
!4035 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !119, file: !119, line: 445, type: !4036, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!131, !889, !129, !280}
!4038 = !DILocation(line: 445, column: 72, scope: !4035, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 552, column: 10, scope: !4040, inlinedAt: !4045)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !119, line: 540, column: 34)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !119, line: 540, column: 6)
!4042 = distinct !DISubprogram(name: "kmalloc", scope: !119, file: !119, line: 538, type: !4043, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!131, !280, !129}
!4045 = distinct !DILocation(line: 151, column: 13, scope: !4002)
!4046 = !DILocalVariable(name: "flags", arg: 2, scope: !4035, file: !119, line: 446, type: !129)
!4047 = !DILocation(line: 446, column: 9, scope: !4035, inlinedAt: !4039)
!4048 = !DILocalVariable(name: "size", arg: 3, scope: !4035, file: !119, line: 446, type: !280)
!4049 = !DILocation(line: 446, column: 23, scope: !4035, inlinedAt: !4039)
!4050 = !DILocalVariable(name: "ret", scope: !4035, file: !119, line: 448, type: !131)
!4051 = !DILocation(line: 448, column: 8, scope: !4035, inlinedAt: !4039)
!4052 = !DILocalVariable(name: "flags", arg: 1, scope: !4053, file: !119, line: 318, type: !129)
!4053 = distinct !DISubprogram(name: "kmalloc_type", scope: !119, file: !119, line: 318, type: !4054, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!118, !129}
!4056 = !DILocation(line: 318, column: 67, scope: !4053, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 553, column: 20, scope: !4040, inlinedAt: !4045)
!4058 = !DILocalVariable(name: "size", arg: 1, scope: !4059, file: !119, line: 346, type: !280)
!4059 = distinct !DISubprogram(name: "kmalloc_index", scope: !119, file: !119, line: 346, type: !4060, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!7, !280}
!4062 = !DILocation(line: 346, column: 58, scope: !4059, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 547, column: 11, scope: !4040, inlinedAt: !4045)
!4064 = !DILocalVariable(name: "size", arg: 1, scope: !4065, file: !119, line: 472, type: !280)
!4065 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !119, file: !119, line: 472, type: !4066, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!131, !280, !129, !7}
!4068 = !DILocation(line: 472, column: 28, scope: !4065, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 481, column: 9, scope: !4070, inlinedAt: !4071)
!4070 = distinct !DISubprogram(name: "kmalloc_large", scope: !119, file: !119, line: 478, type: !4043, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4071 = distinct !DILocation(line: 545, column: 11, scope: !4072, inlinedAt: !4045)
!4072 = distinct !DILexicalBlock(scope: !4040, file: !119, line: 544, column: 7)
!4073 = !DILocalVariable(name: "flags", arg: 2, scope: !4065, file: !119, line: 472, type: !129)
!4074 = !DILocation(line: 472, column: 40, scope: !4065, inlinedAt: !4069)
!4075 = !DILocalVariable(name: "order", arg: 3, scope: !4065, file: !119, line: 472, type: !7)
!4076 = !DILocation(line: 472, column: 60, scope: !4065, inlinedAt: !4069)
!4077 = !DILocalVariable(name: "size", arg: 1, scope: !4070, file: !119, line: 478, type: !280)
!4078 = !DILocation(line: 478, column: 51, scope: !4070, inlinedAt: !4071)
!4079 = !DILocalVariable(name: "flags", arg: 2, scope: !4070, file: !119, line: 478, type: !129)
!4080 = !DILocation(line: 478, column: 63, scope: !4070, inlinedAt: !4071)
!4081 = !DILocalVariable(name: "order", scope: !4070, file: !119, line: 480, type: !7)
!4082 = !DILocation(line: 480, column: 15, scope: !4070, inlinedAt: !4071)
!4083 = !DILocalVariable(name: "size", arg: 1, scope: !4042, file: !119, line: 538, type: !280)
!4084 = !DILocation(line: 538, column: 45, scope: !4042, inlinedAt: !4045)
!4085 = !DILocalVariable(name: "flags", arg: 2, scope: !4042, file: !119, line: 538, type: !129)
!4086 = !DILocation(line: 538, column: 57, scope: !4042, inlinedAt: !4045)
!4087 = !DILocalVariable(name: "index", scope: !4040, file: !119, line: 542, type: !7)
!4088 = !DILocation(line: 542, column: 16, scope: !4040, inlinedAt: !4045)
!4089 = !DILocalVariable(name: "interface", arg: 1, scope: !4002, file: !3, line: 106, type: !3703)
!4090 = !DILocation(line: 106, column: 49, scope: !4002)
!4091 = !DILocalVariable(name: "id", arg: 2, scope: !4002, file: !3, line: 107, type: !3948)
!4092 = !DILocation(line: 107, column: 34, scope: !4002)
!4093 = !DILocalVariable(name: "udev", scope: !4002, file: !3, line: 109, type: !137)
!4094 = !DILocation(line: 109, column: 21, scope: !4002)
!4095 = !DILocation(line: 109, column: 48, scope: !4002)
!4096 = !DILocation(line: 109, column: 28, scope: !4002)
!4097 = !DILocalVariable(name: "altsetting", scope: !4002, file: !3, line: 110, type: !3707)
!4098 = !DILocation(line: 110, column: 29, scope: !4002)
!4099 = !DILocation(line: 110, column: 42, scope: !4002)
!4100 = !DILocation(line: 110, column: 53, scope: !4002)
!4101 = !DILocalVariable(name: "epd", scope: !4002, file: !3, line: 111, type: !4102)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!4103 = !DILocation(line: 111, column: 34, scope: !4002)
!4104 = !DILocalVariable(name: "in_ep", scope: !4002, file: !3, line: 112, type: !141)
!4105 = !DILocation(line: 112, column: 6, scope: !4002)
!4106 = !DILocalVariable(name: "dev", scope: !4002, file: !3, line: 113, type: !3812)
!4107 = !DILocation(line: 113, column: 19, scope: !4002)
!4108 = !DILocalVariable(name: "result", scope: !4002, file: !3, line: 114, type: !141)
!4109 = !DILocation(line: 114, column: 6, scope: !4002)
!4110 = !DILocalVariable(name: "size", scope: !4002, file: !3, line: 115, type: !141)
!4111 = !DILocation(line: 115, column: 6, scope: !4002)
!4112 = !DILocalVariable(name: "res", scope: !4002, file: !3, line: 116, type: !141)
!4113 = !DILocation(line: 116, column: 6, scope: !4002)
!4114 = !DILocation(line: 121, column: 34, scope: !4002)
!4115 = !DILocation(line: 121, column: 8, scope: !4002)
!4116 = !DILocation(line: 121, column: 6, scope: !4002)
!4117 = !DILocation(line: 122, column: 6, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 122, column: 6)
!4119 = !DILocation(line: 122, column: 6, scope: !4002)
!4120 = !DILocation(line: 124, column: 10, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 122, column: 11)
!4122 = !DILocation(line: 124, column: 3, scope: !4121)
!4123 = !DILocation(line: 127, column: 27, scope: !4002)
!4124 = !DILocation(line: 127, column: 10, scope: !4002)
!4125 = !DILocation(line: 127, column: 8, scope: !4002)
!4126 = !DILocation(line: 128, column: 27, scope: !4002)
!4127 = !DILocation(line: 128, column: 9, scope: !4002)
!4128 = !DILocation(line: 128, column: 7, scope: !4002)
!4129 = !DILocation(line: 131, column: 6, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 131, column: 6)
!4131 = !DILocation(line: 131, column: 11, scope: !4130)
!4132 = !DILocation(line: 131, column: 6, scope: !4002)
!4133 = !DILocation(line: 133, column: 3, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 131, column: 17)
!4135 = !DILocation(line: 136, column: 6, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 136, column: 6)
!4137 = !DILocation(line: 136, column: 11, scope: !4136)
!4138 = !DILocation(line: 136, column: 6, scope: !4002)
!4139 = !DILocation(line: 139, column: 8, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 136, column: 31)
!4141 = !DILocation(line: 140, column: 2, scope: !4140)
!4142 = !DILocation(line: 144, column: 8, scope: !4002)
!4143 = !DILocation(line: 144, column: 6, scope: !4002)
!4144 = !DILocation(line: 146, column: 6, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 146, column: 6)
!4146 = !DILocation(line: 146, column: 10, scope: !4145)
!4147 = !DILocation(line: 146, column: 6, scope: !4002)
!4148 = !DILocation(line: 147, column: 3, scope: !4145)
!4149 = !DILocation(line: 149, column: 32, scope: !4002)
!4150 = !DILocation(line: 149, column: 19, scope: !4002)
!4151 = !DILocation(line: 149, column: 2, scope: !4002)
!4152 = !DILocation(line: 149, column: 7, scope: !4002)
!4153 = !DILocation(line: 149, column: 17, scope: !4002)
!4154 = !DILocation(line: 151, column: 21, scope: !4002)
!4155 = !DILocation(line: 540, column: 27, scope: !4041, inlinedAt: !4045)
!4156 = !DILocation(line: 540, column: 6, scope: !4041, inlinedAt: !4045)
!4157 = !DILocation(line: 540, column: 6, scope: !4042, inlinedAt: !4045)
!4158 = !DILocation(line: 544, column: 7, scope: !4072, inlinedAt: !4045)
!4159 = !DILocation(line: 544, column: 12, scope: !4072, inlinedAt: !4045)
!4160 = !DILocation(line: 544, column: 7, scope: !4040, inlinedAt: !4045)
!4161 = !DILocation(line: 545, column: 25, scope: !4072, inlinedAt: !4045)
!4162 = !DILocation(line: 545, column: 31, scope: !4072, inlinedAt: !4045)
!4163 = !DILocation(line: 480, column: 33, scope: !4070, inlinedAt: !4071)
!4164 = !DILocation(line: 480, column: 23, scope: !4070, inlinedAt: !4071)
!4165 = !DILocation(line: 481, column: 29, scope: !4070, inlinedAt: !4071)
!4166 = !DILocation(line: 481, column: 35, scope: !4070, inlinedAt: !4071)
!4167 = !DILocation(line: 481, column: 42, scope: !4070, inlinedAt: !4071)
!4168 = !DILocation(line: 474, column: 23, scope: !4065, inlinedAt: !4069)
!4169 = !DILocation(line: 474, column: 29, scope: !4065, inlinedAt: !4069)
!4170 = !DILocation(line: 474, column: 36, scope: !4065, inlinedAt: !4069)
!4171 = !DILocation(line: 474, column: 9, scope: !4065, inlinedAt: !4069)
!4172 = !DILocation(line: 545, column: 4, scope: !4072, inlinedAt: !4045)
!4173 = !DILocation(line: 547, column: 25, scope: !4040, inlinedAt: !4045)
!4174 = !DILocation(line: 348, column: 7, scope: !4175, inlinedAt: !4063)
!4175 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 348, column: 6)
!4176 = !DILocation(line: 348, column: 6, scope: !4059, inlinedAt: !4063)
!4177 = !DILocation(line: 349, column: 3, scope: !4175, inlinedAt: !4063)
!4178 = !DILocation(line: 351, column: 6, scope: !4179, inlinedAt: !4063)
!4179 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 351, column: 6)
!4180 = !DILocation(line: 351, column: 11, scope: !4179, inlinedAt: !4063)
!4181 = !DILocation(line: 351, column: 6, scope: !4059, inlinedAt: !4063)
!4182 = !DILocation(line: 352, column: 3, scope: !4179, inlinedAt: !4063)
!4183 = !DILocation(line: 354, column: 32, scope: !4184, inlinedAt: !4063)
!4184 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 354, column: 6)
!4185 = !DILocation(line: 354, column: 37, scope: !4184, inlinedAt: !4063)
!4186 = !DILocation(line: 354, column: 42, scope: !4184, inlinedAt: !4063)
!4187 = !DILocation(line: 354, column: 45, scope: !4184, inlinedAt: !4063)
!4188 = !DILocation(line: 354, column: 50, scope: !4184, inlinedAt: !4063)
!4189 = !DILocation(line: 354, column: 6, scope: !4059, inlinedAt: !4063)
!4190 = !DILocation(line: 355, column: 3, scope: !4184, inlinedAt: !4063)
!4191 = !DILocation(line: 356, column: 32, scope: !4192, inlinedAt: !4063)
!4192 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 356, column: 6)
!4193 = !DILocation(line: 356, column: 37, scope: !4192, inlinedAt: !4063)
!4194 = !DILocation(line: 356, column: 43, scope: !4192, inlinedAt: !4063)
!4195 = !DILocation(line: 356, column: 46, scope: !4192, inlinedAt: !4063)
!4196 = !DILocation(line: 356, column: 51, scope: !4192, inlinedAt: !4063)
!4197 = !DILocation(line: 356, column: 6, scope: !4059, inlinedAt: !4063)
!4198 = !DILocation(line: 357, column: 3, scope: !4192, inlinedAt: !4063)
!4199 = !DILocation(line: 358, column: 6, scope: !4200, inlinedAt: !4063)
!4200 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 358, column: 6)
!4201 = !DILocation(line: 358, column: 11, scope: !4200, inlinedAt: !4063)
!4202 = !DILocation(line: 358, column: 6, scope: !4059, inlinedAt: !4063)
!4203 = !DILocation(line: 358, column: 26, scope: !4200, inlinedAt: !4063)
!4204 = !DILocation(line: 359, column: 6, scope: !4205, inlinedAt: !4063)
!4205 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 359, column: 6)
!4206 = !DILocation(line: 359, column: 11, scope: !4205, inlinedAt: !4063)
!4207 = !DILocation(line: 359, column: 6, scope: !4059, inlinedAt: !4063)
!4208 = !DILocation(line: 359, column: 26, scope: !4205, inlinedAt: !4063)
!4209 = !DILocation(line: 360, column: 6, scope: !4210, inlinedAt: !4063)
!4210 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 360, column: 6)
!4211 = !DILocation(line: 360, column: 11, scope: !4210, inlinedAt: !4063)
!4212 = !DILocation(line: 360, column: 6, scope: !4059, inlinedAt: !4063)
!4213 = !DILocation(line: 360, column: 26, scope: !4210, inlinedAt: !4063)
!4214 = !DILocation(line: 361, column: 6, scope: !4215, inlinedAt: !4063)
!4215 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 361, column: 6)
!4216 = !DILocation(line: 361, column: 11, scope: !4215, inlinedAt: !4063)
!4217 = !DILocation(line: 361, column: 6, scope: !4059, inlinedAt: !4063)
!4218 = !DILocation(line: 361, column: 26, scope: !4215, inlinedAt: !4063)
!4219 = !DILocation(line: 362, column: 6, scope: !4220, inlinedAt: !4063)
!4220 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 362, column: 6)
!4221 = !DILocation(line: 362, column: 11, scope: !4220, inlinedAt: !4063)
!4222 = !DILocation(line: 362, column: 6, scope: !4059, inlinedAt: !4063)
!4223 = !DILocation(line: 362, column: 26, scope: !4220, inlinedAt: !4063)
!4224 = !DILocation(line: 363, column: 6, scope: !4225, inlinedAt: !4063)
!4225 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 363, column: 6)
!4226 = !DILocation(line: 363, column: 11, scope: !4225, inlinedAt: !4063)
!4227 = !DILocation(line: 363, column: 6, scope: !4059, inlinedAt: !4063)
!4228 = !DILocation(line: 363, column: 26, scope: !4225, inlinedAt: !4063)
!4229 = !DILocation(line: 364, column: 6, scope: !4230, inlinedAt: !4063)
!4230 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 364, column: 6)
!4231 = !DILocation(line: 364, column: 11, scope: !4230, inlinedAt: !4063)
!4232 = !DILocation(line: 364, column: 6, scope: !4059, inlinedAt: !4063)
!4233 = !DILocation(line: 364, column: 26, scope: !4230, inlinedAt: !4063)
!4234 = !DILocation(line: 365, column: 6, scope: !4235, inlinedAt: !4063)
!4235 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 365, column: 6)
!4236 = !DILocation(line: 365, column: 11, scope: !4235, inlinedAt: !4063)
!4237 = !DILocation(line: 365, column: 6, scope: !4059, inlinedAt: !4063)
!4238 = !DILocation(line: 365, column: 26, scope: !4235, inlinedAt: !4063)
!4239 = !DILocation(line: 366, column: 6, scope: !4240, inlinedAt: !4063)
!4240 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 366, column: 6)
!4241 = !DILocation(line: 366, column: 11, scope: !4240, inlinedAt: !4063)
!4242 = !DILocation(line: 366, column: 6, scope: !4059, inlinedAt: !4063)
!4243 = !DILocation(line: 366, column: 26, scope: !4240, inlinedAt: !4063)
!4244 = !DILocation(line: 367, column: 6, scope: !4245, inlinedAt: !4063)
!4245 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 367, column: 6)
!4246 = !DILocation(line: 367, column: 11, scope: !4245, inlinedAt: !4063)
!4247 = !DILocation(line: 367, column: 6, scope: !4059, inlinedAt: !4063)
!4248 = !DILocation(line: 367, column: 26, scope: !4245, inlinedAt: !4063)
!4249 = !DILocation(line: 368, column: 6, scope: !4250, inlinedAt: !4063)
!4250 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 368, column: 6)
!4251 = !DILocation(line: 368, column: 11, scope: !4250, inlinedAt: !4063)
!4252 = !DILocation(line: 368, column: 6, scope: !4059, inlinedAt: !4063)
!4253 = !DILocation(line: 368, column: 26, scope: !4250, inlinedAt: !4063)
!4254 = !DILocation(line: 369, column: 6, scope: !4255, inlinedAt: !4063)
!4255 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 369, column: 6)
!4256 = !DILocation(line: 369, column: 11, scope: !4255, inlinedAt: !4063)
!4257 = !DILocation(line: 369, column: 6, scope: !4059, inlinedAt: !4063)
!4258 = !DILocation(line: 369, column: 26, scope: !4255, inlinedAt: !4063)
!4259 = !DILocation(line: 370, column: 6, scope: !4260, inlinedAt: !4063)
!4260 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 370, column: 6)
!4261 = !DILocation(line: 370, column: 11, scope: !4260, inlinedAt: !4063)
!4262 = !DILocation(line: 370, column: 6, scope: !4059, inlinedAt: !4063)
!4263 = !DILocation(line: 370, column: 26, scope: !4260, inlinedAt: !4063)
!4264 = !DILocation(line: 371, column: 6, scope: !4265, inlinedAt: !4063)
!4265 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 371, column: 6)
!4266 = !DILocation(line: 371, column: 11, scope: !4265, inlinedAt: !4063)
!4267 = !DILocation(line: 371, column: 6, scope: !4059, inlinedAt: !4063)
!4268 = !DILocation(line: 371, column: 26, scope: !4265, inlinedAt: !4063)
!4269 = !DILocation(line: 372, column: 6, scope: !4270, inlinedAt: !4063)
!4270 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 372, column: 6)
!4271 = !DILocation(line: 372, column: 11, scope: !4270, inlinedAt: !4063)
!4272 = !DILocation(line: 372, column: 6, scope: !4059, inlinedAt: !4063)
!4273 = !DILocation(line: 372, column: 26, scope: !4270, inlinedAt: !4063)
!4274 = !DILocation(line: 373, column: 6, scope: !4275, inlinedAt: !4063)
!4275 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 373, column: 6)
!4276 = !DILocation(line: 373, column: 11, scope: !4275, inlinedAt: !4063)
!4277 = !DILocation(line: 373, column: 6, scope: !4059, inlinedAt: !4063)
!4278 = !DILocation(line: 373, column: 26, scope: !4275, inlinedAt: !4063)
!4279 = !DILocation(line: 374, column: 6, scope: !4280, inlinedAt: !4063)
!4280 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 374, column: 6)
!4281 = !DILocation(line: 374, column: 11, scope: !4280, inlinedAt: !4063)
!4282 = !DILocation(line: 374, column: 6, scope: !4059, inlinedAt: !4063)
!4283 = !DILocation(line: 374, column: 26, scope: !4280, inlinedAt: !4063)
!4284 = !DILocation(line: 375, column: 6, scope: !4285, inlinedAt: !4063)
!4285 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 375, column: 6)
!4286 = !DILocation(line: 375, column: 11, scope: !4285, inlinedAt: !4063)
!4287 = !DILocation(line: 375, column: 6, scope: !4059, inlinedAt: !4063)
!4288 = !DILocation(line: 375, column: 27, scope: !4285, inlinedAt: !4063)
!4289 = !DILocation(line: 376, column: 6, scope: !4290, inlinedAt: !4063)
!4290 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 376, column: 6)
!4291 = !DILocation(line: 376, column: 11, scope: !4290, inlinedAt: !4063)
!4292 = !DILocation(line: 376, column: 6, scope: !4059, inlinedAt: !4063)
!4293 = !DILocation(line: 376, column: 32, scope: !4290, inlinedAt: !4063)
!4294 = !DILocation(line: 377, column: 6, scope: !4295, inlinedAt: !4063)
!4295 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 377, column: 6)
!4296 = !DILocation(line: 377, column: 11, scope: !4295, inlinedAt: !4063)
!4297 = !DILocation(line: 377, column: 6, scope: !4059, inlinedAt: !4063)
!4298 = !DILocation(line: 377, column: 32, scope: !4295, inlinedAt: !4063)
!4299 = !DILocation(line: 378, column: 6, scope: !4300, inlinedAt: !4063)
!4300 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 378, column: 6)
!4301 = !DILocation(line: 378, column: 11, scope: !4300, inlinedAt: !4063)
!4302 = !DILocation(line: 378, column: 6, scope: !4059, inlinedAt: !4063)
!4303 = !DILocation(line: 378, column: 32, scope: !4300, inlinedAt: !4063)
!4304 = !DILocation(line: 379, column: 6, scope: !4305, inlinedAt: !4063)
!4305 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 379, column: 6)
!4306 = !DILocation(line: 379, column: 11, scope: !4305, inlinedAt: !4063)
!4307 = !DILocation(line: 379, column: 6, scope: !4059, inlinedAt: !4063)
!4308 = !DILocation(line: 379, column: 33, scope: !4305, inlinedAt: !4063)
!4309 = !DILocation(line: 380, column: 6, scope: !4310, inlinedAt: !4063)
!4310 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 380, column: 6)
!4311 = !DILocation(line: 380, column: 11, scope: !4310, inlinedAt: !4063)
!4312 = !DILocation(line: 380, column: 6, scope: !4059, inlinedAt: !4063)
!4313 = !DILocation(line: 380, column: 33, scope: !4310, inlinedAt: !4063)
!4314 = !DILocation(line: 381, column: 6, scope: !4315, inlinedAt: !4063)
!4315 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 381, column: 6)
!4316 = !DILocation(line: 381, column: 11, scope: !4315, inlinedAt: !4063)
!4317 = !DILocation(line: 381, column: 6, scope: !4059, inlinedAt: !4063)
!4318 = !DILocation(line: 381, column: 33, scope: !4315, inlinedAt: !4063)
!4319 = !DILocation(line: 382, column: 2, scope: !4320, inlinedAt: !4063)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !119, line: 382, column: 2)
!4321 = distinct !DILexicalBlock(scope: !4059, file: !119, line: 382, column: 2)
!4322 = !{i32 -2144234075, i32 -2144234046, i32 -2144234000, i32 -2144233942, i32 -2144233888, i32 -2144233834, i32 -2144233779, i32 -2144233748}
!4323 = !DILocation(line: 382, column: 2, scope: !4324, inlinedAt: !4063)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !119, line: 382, column: 2)
!4325 = distinct !DILexicalBlock(scope: !4321, file: !119, line: 382, column: 2)
!4326 = !{i32 -2144233305, i32 -2144233298, i32 -2144233244, i32 -2144233213, i32 -2144233183}
!4327 = !DILocation(line: 382, column: 2, scope: !4325, inlinedAt: !4063)
!4328 = !DILocation(line: 386, column: 1, scope: !4059, inlinedAt: !4063)
!4329 = !DILocation(line: 547, column: 9, scope: !4040, inlinedAt: !4045)
!4330 = !DILocation(line: 549, column: 8, scope: !4331, inlinedAt: !4045)
!4331 = distinct !DILexicalBlock(scope: !4040, file: !119, line: 549, column: 7)
!4332 = !DILocation(line: 549, column: 7, scope: !4040, inlinedAt: !4045)
!4333 = !DILocation(line: 550, column: 4, scope: !4331, inlinedAt: !4045)
!4334 = !DILocation(line: 553, column: 33, scope: !4040, inlinedAt: !4045)
!4335 = !DILocation(line: 325, column: 6, scope: !4336, inlinedAt: !4057)
!4336 = distinct !DILexicalBlock(scope: !4053, file: !119, line: 325, column: 6)
!4337 = !DILocation(line: 325, column: 6, scope: !4053, inlinedAt: !4057)
!4338 = !DILocation(line: 326, column: 3, scope: !4336, inlinedAt: !4057)
!4339 = !DILocation(line: 332, column: 9, scope: !4053, inlinedAt: !4057)
!4340 = !DILocation(line: 332, column: 15, scope: !4053, inlinedAt: !4057)
!4341 = !DILocation(line: 332, column: 2, scope: !4053, inlinedAt: !4057)
!4342 = !DILocation(line: 336, column: 1, scope: !4053, inlinedAt: !4057)
!4343 = !DILocation(line: 553, column: 5, scope: !4040, inlinedAt: !4045)
!4344 = !DILocation(line: 553, column: 41, scope: !4040, inlinedAt: !4045)
!4345 = !DILocation(line: 554, column: 5, scope: !4040, inlinedAt: !4045)
!4346 = !DILocation(line: 554, column: 12, scope: !4040, inlinedAt: !4045)
!4347 = !DILocation(line: 448, column: 31, scope: !4035, inlinedAt: !4039)
!4348 = !DILocation(line: 448, column: 34, scope: !4035, inlinedAt: !4039)
!4349 = !DILocation(line: 448, column: 14, scope: !4035, inlinedAt: !4039)
!4350 = !DILocation(line: 450, column: 22, scope: !4035, inlinedAt: !4039)
!4351 = !DILocation(line: 450, column: 25, scope: !4035, inlinedAt: !4039)
!4352 = !DILocation(line: 450, column: 30, scope: !4035, inlinedAt: !4039)
!4353 = !DILocation(line: 450, column: 36, scope: !4035, inlinedAt: !4039)
!4354 = !DILocation(line: 450, column: 8, scope: !4035, inlinedAt: !4039)
!4355 = !DILocation(line: 450, column: 6, scope: !4035, inlinedAt: !4039)
!4356 = !DILocation(line: 451, column: 9, scope: !4035, inlinedAt: !4039)
!4357 = !DILocation(line: 552, column: 3, scope: !4040, inlinedAt: !4045)
!4358 = !DILocation(line: 557, column: 19, scope: !4042, inlinedAt: !4045)
!4359 = !DILocation(line: 557, column: 25, scope: !4042, inlinedAt: !4045)
!4360 = !DILocation(line: 557, column: 9, scope: !4042, inlinedAt: !4045)
!4361 = !DILocation(line: 557, column: 2, scope: !4042, inlinedAt: !4045)
!4362 = !DILocation(line: 558, column: 1, scope: !4042, inlinedAt: !4045)
!4363 = !DILocation(line: 151, column: 2, scope: !4002)
!4364 = !DILocation(line: 151, column: 7, scope: !4002)
!4365 = !DILocation(line: 151, column: 11, scope: !4002)
!4366 = !DILocation(line: 153, column: 6, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 153, column: 6)
!4368 = !DILocation(line: 153, column: 11, scope: !4367)
!4369 = !DILocation(line: 153, column: 15, scope: !4367)
!4370 = !DILocation(line: 153, column: 6, scope: !4002)
!4371 = !DILocation(line: 154, column: 3, scope: !4367)
!4372 = !DILocation(line: 156, column: 13, scope: !4002)
!4373 = !DILocation(line: 156, column: 2, scope: !4002)
!4374 = !DILocation(line: 156, column: 7, scope: !4002)
!4375 = !DILocation(line: 156, column: 11, scope: !4002)
!4376 = !DILocation(line: 158, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 158, column: 6)
!4378 = !DILocation(line: 158, column: 12, scope: !4377)
!4379 = !DILocation(line: 158, column: 6, scope: !4002)
!4380 = !DILocation(line: 159, column: 3, scope: !4377)
!4381 = !DILocation(line: 161, column: 20, scope: !4002)
!4382 = !DILocation(line: 161, column: 25, scope: !4002)
!4383 = !DILocation(line: 162, column: 3, scope: !4002)
!4384 = !DILocation(line: 163, column: 3, scope: !4002)
!4385 = !DILocation(line: 164, column: 3, scope: !4002)
!4386 = !DILocation(line: 164, column: 8, scope: !4002)
!4387 = !DILocation(line: 165, column: 3, scope: !4002)
!4388 = !DILocation(line: 167, column: 3, scope: !4002)
!4389 = !DILocation(line: 161, column: 2, scope: !4002)
!4390 = !DILocation(line: 173, column: 6, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 173, column: 6)
!4392 = !DILocation(line: 173, column: 12, scope: !4391)
!4393 = !DILocation(line: 173, column: 20, scope: !4391)
!4394 = !DILocation(line: 173, column: 23, scope: !4391)
!4395 = !DILocation(line: 173, column: 29, scope: !4391)
!4396 = !DILocation(line: 173, column: 6, scope: !4002)
!4397 = !DILocation(line: 174, column: 46, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 173, column: 37)
!4399 = !DILocation(line: 174, column: 52, scope: !4398)
!4400 = !DILocation(line: 175, column: 11, scope: !4398)
!4401 = !DILocation(line: 175, column: 17, scope: !4398)
!4402 = !DILocation(line: 174, column: 15, scope: !4398)
!4403 = !DILocation(line: 174, column: 3, scope: !4398)
!4404 = !DILocation(line: 174, column: 8, scope: !4398)
!4405 = !DILocation(line: 174, column: 13, scope: !4398)
!4406 = !DILocation(line: 176, column: 7, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 176, column: 7)
!4408 = !DILocation(line: 176, column: 12, scope: !4407)
!4409 = !DILocation(line: 176, column: 17, scope: !4407)
!4410 = !DILocation(line: 176, column: 7, scope: !4398)
!4411 = !DILocation(line: 177, column: 4, scope: !4407)
!4412 = !DILocation(line: 178, column: 2, scope: !4398)
!4413 = !DILocation(line: 180, column: 15, scope: !4002)
!4414 = !DILocation(line: 180, column: 2, scope: !4002)
!4415 = !DILocation(line: 180, column: 7, scope: !4002)
!4416 = !DILocation(line: 180, column: 13, scope: !4002)
!4417 = !DILocation(line: 182, column: 6, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 182, column: 6)
!4419 = !DILocation(line: 182, column: 45, scope: !4418)
!4420 = !DILocation(line: 182, column: 6, scope: !4002)
!4421 = !DILocation(line: 183, column: 3, scope: !4418)
!4422 = !DILocation(line: 183, column: 8, scope: !4418)
!4423 = !DILocation(line: 183, column: 22, scope: !4418)
!4424 = !DILocation(line: 185, column: 14, scope: !4002)
!4425 = !DILocation(line: 185, column: 2, scope: !4002)
!4426 = !DILocation(line: 185, column: 7, scope: !4002)
!4427 = !DILocation(line: 185, column: 12, scope: !4002)
!4428 = !DILocation(line: 186, column: 2, scope: !4002)
!4429 = !DILocation(line: 186, column: 7, scope: !4002)
!4430 = !DILocation(line: 186, column: 15, scope: !4002)
!4431 = !DILocation(line: 188, column: 2, scope: !4002)
!4432 = !DILocation(line: 188, column: 2, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 188, column: 2)
!4434 = !DILocation(line: 190, column: 2, scope: !4002)
!4435 = !DILocation(line: 190, column: 2, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 190, column: 2)
!4437 = !DILocation(line: 191, column: 2, scope: !4002)
!4438 = !DILocation(line: 191, column: 2, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 191, column: 2)
!4440 = !DILocation(line: 193, column: 19, scope: !4002)
!4441 = !DILocation(line: 193, column: 30, scope: !4002)
!4442 = !DILocation(line: 193, column: 2, scope: !4002)
!4443 = !DILocation(line: 195, column: 28, scope: !4002)
!4444 = !DILocation(line: 195, column: 11, scope: !4002)
!4445 = !DILocation(line: 195, column: 9, scope: !4002)
!4446 = !DILocation(line: 196, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 196, column: 6)
!4448 = !DILocation(line: 196, column: 6, scope: !4002)
!4449 = !DILocation(line: 197, column: 3, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 196, column: 14)
!4451 = !DILocation(line: 198, column: 3, scope: !4450)
!4452 = !DILocation(line: 201, column: 20, scope: !4002)
!4453 = !DILocation(line: 201, column: 25, scope: !4002)
!4454 = !DILocation(line: 201, column: 32, scope: !4002)
!4455 = !DILocation(line: 201, column: 37, scope: !4002)
!4456 = !DILocation(line: 201, column: 60, scope: !4002)
!4457 = !DILocation(line: 201, column: 2, scope: !4002)
!4458 = !DILocation(line: 201, column: 7, scope: !4002)
!4459 = !DILocation(line: 201, column: 13, scope: !4002)
!4460 = !DILocation(line: 201, column: 18, scope: !4002)
!4461 = !DILocation(line: 202, column: 2, scope: !4002)
!4462 = !DILocation(line: 202, column: 7, scope: !4002)
!4463 = !DILocation(line: 202, column: 13, scope: !4002)
!4464 = !DILocation(line: 202, column: 18, scope: !4002)
!4465 = !DILocation(line: 203, column: 2, scope: !4002)
!4466 = !DILocation(line: 203, column: 7, scope: !4002)
!4467 = !DILocation(line: 203, column: 13, scope: !4002)
!4468 = !DILocation(line: 203, column: 21, scope: !4002)
!4469 = !DILocation(line: 205, column: 43, scope: !4002)
!4470 = !DILocation(line: 205, column: 48, scope: !4002)
!4471 = !DILocation(line: 205, column: 27, scope: !4002)
!4472 = !DILocation(line: 205, column: 55, scope: !4002)
!4473 = !DILocation(line: 205, column: 2, scope: !4002)
!4474 = !DILocation(line: 205, column: 7, scope: !4002)
!4475 = !DILocation(line: 205, column: 24, scope: !4002)
!4476 = !DILocation(line: 206, column: 7, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 206, column: 6)
!4478 = !DILocation(line: 206, column: 12, scope: !4477)
!4479 = !DILocation(line: 206, column: 6, scope: !4002)
!4480 = !DILocation(line: 207, column: 3, scope: !4477)
!4481 = !DILocation(line: 209, column: 25, scope: !4002)
!4482 = !DILocation(line: 209, column: 2, scope: !4002)
!4483 = !DILocation(line: 212, column: 2, scope: !4002)
!4484 = !DILabel(scope: !4002, name: "out", file: !3, line: 214)
!4485 = !DILocation(line: 214, column: 1, scope: !4002)
!4486 = !DILocation(line: 215, column: 19, scope: !4002)
!4487 = !DILocation(line: 215, column: 2, scope: !4002)
!4488 = !DILocation(line: 216, column: 16, scope: !4002)
!4489 = !DILocation(line: 216, column: 2, scope: !4002)
!4490 = !DILocation(line: 217, column: 9, scope: !4002)
!4491 = !DILocation(line: 217, column: 2, scope: !4002)
!4492 = !DILocation(line: 218, column: 1, scope: !4002)
!4493 = distinct !DISubprogram(name: "chaoskey_disconnect", scope: !3, file: !3, line: 220, type: !3967, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4494 = !DILocalVariable(name: "interface", arg: 1, scope: !4493, file: !3, line: 220, type: !3703)
!4495 = !DILocation(line: 220, column: 55, scope: !4493)
!4496 = !DILocalVariable(name: "dev", scope: !4493, file: !3, line: 222, type: !3812)
!4497 = !DILocation(line: 222, column: 19, scope: !4493)
!4498 = !DILocation(line: 225, column: 25, scope: !4493)
!4499 = !DILocation(line: 225, column: 8, scope: !4493)
!4500 = !DILocation(line: 225, column: 6, scope: !4493)
!4501 = !DILocation(line: 226, column: 7, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 226, column: 6)
!4503 = !DILocation(line: 226, column: 6, scope: !4493)
!4504 = !DILocation(line: 228, column: 3, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 226, column: 12)
!4506 = !DILocation(line: 231, column: 6, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 231, column: 6)
!4508 = !DILocation(line: 231, column: 11, scope: !4507)
!4509 = !DILocation(line: 231, column: 6, scope: !4493)
!4510 = !DILocation(line: 232, column: 21, scope: !4507)
!4511 = !DILocation(line: 232, column: 26, scope: !4507)
!4512 = !DILocation(line: 232, column: 3, scope: !4507)
!4513 = !DILocation(line: 234, column: 21, scope: !4493)
!4514 = !DILocation(line: 234, column: 2, scope: !4493)
!4515 = !DILocation(line: 236, column: 19, scope: !4493)
!4516 = !DILocation(line: 236, column: 2, scope: !4493)
!4517 = !DILocation(line: 237, column: 14, scope: !4493)
!4518 = !DILocation(line: 237, column: 19, scope: !4493)
!4519 = !DILocation(line: 237, column: 2, scope: !4493)
!4520 = !DILocation(line: 239, column: 2, scope: !4493)
!4521 = !DILocation(line: 239, column: 7, scope: !4493)
!4522 = !DILocation(line: 239, column: 15, scope: !4493)
!4523 = !DILocation(line: 240, column: 17, scope: !4493)
!4524 = !DILocation(line: 240, column: 22, scope: !4493)
!4525 = !DILocation(line: 240, column: 2, scope: !4493)
!4526 = !DILocation(line: 242, column: 7, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 242, column: 6)
!4528 = !DILocation(line: 242, column: 12, scope: !4527)
!4529 = !DILocation(line: 242, column: 6, scope: !4493)
!4530 = !DILocation(line: 243, column: 17, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 242, column: 18)
!4532 = !DILocation(line: 243, column: 22, scope: !4531)
!4533 = !DILocation(line: 243, column: 3, scope: !4531)
!4534 = !DILocation(line: 244, column: 17, scope: !4531)
!4535 = !DILocation(line: 244, column: 3, scope: !4531)
!4536 = !DILocation(line: 245, column: 2, scope: !4531)
!4537 = !DILocation(line: 246, column: 17, scope: !4527)
!4538 = !DILocation(line: 246, column: 22, scope: !4527)
!4539 = !DILocation(line: 246, column: 3, scope: !4527)
!4540 = !DILocation(line: 249, column: 1, scope: !4493)
!4541 = distinct !DISubprogram(name: "chaoskey_suspend", scope: !3, file: !3, line: 524, type: !3975, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4542 = !DILocalVariable(name: "interface", arg: 1, scope: !4541, file: !3, line: 524, type: !3703)
!4543 = !DILocation(line: 524, column: 51, scope: !4541)
!4544 = !DILocalVariable(name: "message", arg: 2, scope: !4541, file: !3, line: 525, type: !3285)
!4545 = !DILocation(line: 525, column: 21, scope: !4541)
!4546 = !DILocation(line: 528, column: 2, scope: !4541)
!4547 = distinct !DISubprogram(name: "chaoskey_resume", scope: !3, file: !3, line: 531, type: !3979, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4548 = !DILocalVariable(name: "interface", arg: 1, scope: !4547, file: !3, line: 531, type: !3703)
!4549 = !DILocation(line: 531, column: 50, scope: !4547)
!4550 = !DILocalVariable(name: "dev", scope: !4547, file: !3, line: 533, type: !3812)
!4551 = !DILocation(line: 533, column: 19, scope: !4547)
!4552 = !DILocalVariable(name: "udev", scope: !4547, file: !3, line: 534, type: !137)
!4553 = !DILocation(line: 534, column: 21, scope: !4547)
!4554 = !DILocation(line: 534, column: 48, scope: !4547)
!4555 = !DILocation(line: 534, column: 28, scope: !4547)
!4556 = !DILocation(line: 537, column: 25, scope: !4547)
!4557 = !DILocation(line: 537, column: 8, scope: !4547)
!4558 = !DILocation(line: 537, column: 6, scope: !4547)
!4559 = !DILocation(line: 545, column: 6, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 545, column: 6)
!4561 = !DILocation(line: 545, column: 45, scope: !4560)
!4562 = !DILocation(line: 545, column: 6, scope: !4547)
!4563 = !DILocation(line: 546, column: 3, scope: !4560)
!4564 = !DILocation(line: 546, column: 8, scope: !4560)
!4565 = !DILocation(line: 546, column: 22, scope: !4560)
!4566 = !DILocation(line: 548, column: 2, scope: !4547)
!4567 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4568, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!137, !3703}
!4570 = !DILocalVariable(name: "intf", arg: 1, scope: !4567, file: !6, line: 715, type: !3703)
!4571 = !DILocation(line: 715, column: 76, scope: !4567)
!4572 = !DILocalVariable(name: "__mptr", scope: !4573, file: !6, line: 717, type: !131)
!4573 = distinct !DILexicalBlock(scope: !4567, file: !6, line: 717, column: 9)
!4574 = !DILocation(line: 717, column: 9, scope: !4573)
!4575 = !DILocation(line: 717, column: 9, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4573, file: !6, line: 717, column: 9)
!4577 = !DILocation(line: 717, column: 2, scope: !4567)
!4578 = distinct !DISubprogram(name: "usb_find_bulk_in_endpoint", scope: !6, file: !6, line: 118, type: !4579, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!141, !3707, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4582 = !DILocalVariable(name: "alt", arg: 1, scope: !4578, file: !6, line: 118, type: !3707)
!4583 = !DILocation(line: 118, column: 54, scope: !4578)
!4584 = !DILocalVariable(name: "bulk_in", arg: 2, scope: !4578, file: !6, line: 119, type: !4581)
!4585 = !DILocation(line: 119, column: 36, scope: !4578)
!4586 = !DILocation(line: 121, column: 35, scope: !4578)
!4587 = !DILocation(line: 121, column: 40, scope: !4578)
!4588 = !DILocation(line: 121, column: 9, scope: !4578)
!4589 = !DILocation(line: 121, column: 2, scope: !4578)
!4590 = distinct !DISubprogram(name: "usb_endpoint_num", scope: !88, file: !88, line: 469, type: !4591, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!141, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!4595 = !DILocalVariable(name: "epd", arg: 1, scope: !4590, file: !88, line: 469, type: !4593)
!4596 = !DILocation(line: 469, column: 74, scope: !4590)
!4597 = !DILocation(line: 471, column: 9, scope: !4590)
!4598 = !DILocation(line: 471, column: 14, scope: !4590)
!4599 = !DILocation(line: 471, column: 31, scope: !4590)
!4600 = !DILocation(line: 471, column: 2, scope: !4590)
!4601 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !88, file: !88, line: 647, type: !4591, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4602 = !DILocalVariable(name: "epd", arg: 1, scope: !4601, file: !88, line: 647, type: !4593)
!4603 = !DILocation(line: 647, column: 75, scope: !4601)
!4604 = !DILocation(line: 649, column: 9, scope: !4601)
!4605 = !DILocation(line: 649, column: 44, scope: !4601)
!4606 = !DILocation(line: 649, column: 2, scope: !4601)
!4607 = distinct !DISubprogram(name: "kzalloc", scope: !119, file: !119, line: 662, type: !4043, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4608 = !DILocation(line: 445, column: 72, scope: !4035, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 552, column: 10, scope: !4040, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 664, column: 9, scope: !4607)
!4611 = !DILocation(line: 446, column: 9, scope: !4035, inlinedAt: !4609)
!4612 = !DILocation(line: 446, column: 23, scope: !4035, inlinedAt: !4609)
!4613 = !DILocation(line: 448, column: 8, scope: !4035, inlinedAt: !4609)
!4614 = !DILocation(line: 318, column: 67, scope: !4053, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 553, column: 20, scope: !4040, inlinedAt: !4610)
!4616 = !DILocation(line: 346, column: 58, scope: !4059, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 547, column: 11, scope: !4040, inlinedAt: !4610)
!4618 = !DILocation(line: 472, column: 28, scope: !4065, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 481, column: 9, scope: !4070, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 545, column: 11, scope: !4072, inlinedAt: !4610)
!4621 = !DILocation(line: 472, column: 40, scope: !4065, inlinedAt: !4619)
!4622 = !DILocation(line: 472, column: 60, scope: !4065, inlinedAt: !4619)
!4623 = !DILocation(line: 478, column: 51, scope: !4070, inlinedAt: !4620)
!4624 = !DILocation(line: 478, column: 63, scope: !4070, inlinedAt: !4620)
!4625 = !DILocation(line: 480, column: 15, scope: !4070, inlinedAt: !4620)
!4626 = !DILocation(line: 538, column: 45, scope: !4042, inlinedAt: !4610)
!4627 = !DILocation(line: 538, column: 57, scope: !4042, inlinedAt: !4610)
!4628 = !DILocation(line: 542, column: 16, scope: !4040, inlinedAt: !4610)
!4629 = !DILocalVariable(name: "size", arg: 1, scope: !4607, file: !119, line: 662, type: !280)
!4630 = !DILocation(line: 662, column: 36, scope: !4607)
!4631 = !DILocalVariable(name: "flags", arg: 2, scope: !4607, file: !119, line: 662, type: !129)
!4632 = !DILocation(line: 662, column: 48, scope: !4607)
!4633 = !DILocation(line: 664, column: 17, scope: !4607)
!4634 = !DILocation(line: 664, column: 23, scope: !4607)
!4635 = !DILocation(line: 664, column: 29, scope: !4607)
!4636 = !DILocation(line: 540, column: 27, scope: !4041, inlinedAt: !4610)
!4637 = !DILocation(line: 540, column: 6, scope: !4041, inlinedAt: !4610)
!4638 = !DILocation(line: 540, column: 6, scope: !4042, inlinedAt: !4610)
!4639 = !DILocation(line: 544, column: 7, scope: !4072, inlinedAt: !4610)
!4640 = !DILocation(line: 544, column: 12, scope: !4072, inlinedAt: !4610)
!4641 = !DILocation(line: 544, column: 7, scope: !4040, inlinedAt: !4610)
!4642 = !DILocation(line: 545, column: 25, scope: !4072, inlinedAt: !4610)
!4643 = !DILocation(line: 545, column: 31, scope: !4072, inlinedAt: !4610)
!4644 = !DILocation(line: 480, column: 33, scope: !4070, inlinedAt: !4620)
!4645 = !DILocation(line: 480, column: 23, scope: !4070, inlinedAt: !4620)
!4646 = !DILocation(line: 481, column: 29, scope: !4070, inlinedAt: !4620)
!4647 = !DILocation(line: 481, column: 35, scope: !4070, inlinedAt: !4620)
!4648 = !DILocation(line: 481, column: 42, scope: !4070, inlinedAt: !4620)
!4649 = !DILocation(line: 474, column: 23, scope: !4065, inlinedAt: !4619)
!4650 = !DILocation(line: 474, column: 29, scope: !4065, inlinedAt: !4619)
!4651 = !DILocation(line: 474, column: 36, scope: !4065, inlinedAt: !4619)
!4652 = !DILocation(line: 474, column: 9, scope: !4065, inlinedAt: !4619)
!4653 = !DILocation(line: 545, column: 4, scope: !4072, inlinedAt: !4610)
!4654 = !DILocation(line: 547, column: 25, scope: !4040, inlinedAt: !4610)
!4655 = !DILocation(line: 348, column: 7, scope: !4175, inlinedAt: !4617)
!4656 = !DILocation(line: 348, column: 6, scope: !4059, inlinedAt: !4617)
!4657 = !DILocation(line: 349, column: 3, scope: !4175, inlinedAt: !4617)
!4658 = !DILocation(line: 351, column: 6, scope: !4179, inlinedAt: !4617)
!4659 = !DILocation(line: 351, column: 11, scope: !4179, inlinedAt: !4617)
!4660 = !DILocation(line: 351, column: 6, scope: !4059, inlinedAt: !4617)
!4661 = !DILocation(line: 352, column: 3, scope: !4179, inlinedAt: !4617)
!4662 = !DILocation(line: 354, column: 32, scope: !4184, inlinedAt: !4617)
!4663 = !DILocation(line: 354, column: 37, scope: !4184, inlinedAt: !4617)
!4664 = !DILocation(line: 354, column: 42, scope: !4184, inlinedAt: !4617)
!4665 = !DILocation(line: 354, column: 45, scope: !4184, inlinedAt: !4617)
!4666 = !DILocation(line: 354, column: 50, scope: !4184, inlinedAt: !4617)
!4667 = !DILocation(line: 354, column: 6, scope: !4059, inlinedAt: !4617)
!4668 = !DILocation(line: 355, column: 3, scope: !4184, inlinedAt: !4617)
!4669 = !DILocation(line: 356, column: 32, scope: !4192, inlinedAt: !4617)
!4670 = !DILocation(line: 356, column: 37, scope: !4192, inlinedAt: !4617)
!4671 = !DILocation(line: 356, column: 43, scope: !4192, inlinedAt: !4617)
!4672 = !DILocation(line: 356, column: 46, scope: !4192, inlinedAt: !4617)
!4673 = !DILocation(line: 356, column: 51, scope: !4192, inlinedAt: !4617)
!4674 = !DILocation(line: 356, column: 6, scope: !4059, inlinedAt: !4617)
!4675 = !DILocation(line: 357, column: 3, scope: !4192, inlinedAt: !4617)
!4676 = !DILocation(line: 358, column: 6, scope: !4200, inlinedAt: !4617)
!4677 = !DILocation(line: 358, column: 11, scope: !4200, inlinedAt: !4617)
!4678 = !DILocation(line: 358, column: 6, scope: !4059, inlinedAt: !4617)
!4679 = !DILocation(line: 358, column: 26, scope: !4200, inlinedAt: !4617)
!4680 = !DILocation(line: 359, column: 6, scope: !4205, inlinedAt: !4617)
!4681 = !DILocation(line: 359, column: 11, scope: !4205, inlinedAt: !4617)
!4682 = !DILocation(line: 359, column: 6, scope: !4059, inlinedAt: !4617)
!4683 = !DILocation(line: 359, column: 26, scope: !4205, inlinedAt: !4617)
!4684 = !DILocation(line: 360, column: 6, scope: !4210, inlinedAt: !4617)
!4685 = !DILocation(line: 360, column: 11, scope: !4210, inlinedAt: !4617)
!4686 = !DILocation(line: 360, column: 6, scope: !4059, inlinedAt: !4617)
!4687 = !DILocation(line: 360, column: 26, scope: !4210, inlinedAt: !4617)
!4688 = !DILocation(line: 361, column: 6, scope: !4215, inlinedAt: !4617)
!4689 = !DILocation(line: 361, column: 11, scope: !4215, inlinedAt: !4617)
!4690 = !DILocation(line: 361, column: 6, scope: !4059, inlinedAt: !4617)
!4691 = !DILocation(line: 361, column: 26, scope: !4215, inlinedAt: !4617)
!4692 = !DILocation(line: 362, column: 6, scope: !4220, inlinedAt: !4617)
!4693 = !DILocation(line: 362, column: 11, scope: !4220, inlinedAt: !4617)
!4694 = !DILocation(line: 362, column: 6, scope: !4059, inlinedAt: !4617)
!4695 = !DILocation(line: 362, column: 26, scope: !4220, inlinedAt: !4617)
!4696 = !DILocation(line: 363, column: 6, scope: !4225, inlinedAt: !4617)
!4697 = !DILocation(line: 363, column: 11, scope: !4225, inlinedAt: !4617)
!4698 = !DILocation(line: 363, column: 6, scope: !4059, inlinedAt: !4617)
!4699 = !DILocation(line: 363, column: 26, scope: !4225, inlinedAt: !4617)
!4700 = !DILocation(line: 364, column: 6, scope: !4230, inlinedAt: !4617)
!4701 = !DILocation(line: 364, column: 11, scope: !4230, inlinedAt: !4617)
!4702 = !DILocation(line: 364, column: 6, scope: !4059, inlinedAt: !4617)
!4703 = !DILocation(line: 364, column: 26, scope: !4230, inlinedAt: !4617)
!4704 = !DILocation(line: 365, column: 6, scope: !4235, inlinedAt: !4617)
!4705 = !DILocation(line: 365, column: 11, scope: !4235, inlinedAt: !4617)
!4706 = !DILocation(line: 365, column: 6, scope: !4059, inlinedAt: !4617)
!4707 = !DILocation(line: 365, column: 26, scope: !4235, inlinedAt: !4617)
!4708 = !DILocation(line: 366, column: 6, scope: !4240, inlinedAt: !4617)
!4709 = !DILocation(line: 366, column: 11, scope: !4240, inlinedAt: !4617)
!4710 = !DILocation(line: 366, column: 6, scope: !4059, inlinedAt: !4617)
!4711 = !DILocation(line: 366, column: 26, scope: !4240, inlinedAt: !4617)
!4712 = !DILocation(line: 367, column: 6, scope: !4245, inlinedAt: !4617)
!4713 = !DILocation(line: 367, column: 11, scope: !4245, inlinedAt: !4617)
!4714 = !DILocation(line: 367, column: 6, scope: !4059, inlinedAt: !4617)
!4715 = !DILocation(line: 367, column: 26, scope: !4245, inlinedAt: !4617)
!4716 = !DILocation(line: 368, column: 6, scope: !4250, inlinedAt: !4617)
!4717 = !DILocation(line: 368, column: 11, scope: !4250, inlinedAt: !4617)
!4718 = !DILocation(line: 368, column: 6, scope: !4059, inlinedAt: !4617)
!4719 = !DILocation(line: 368, column: 26, scope: !4250, inlinedAt: !4617)
!4720 = !DILocation(line: 369, column: 6, scope: !4255, inlinedAt: !4617)
!4721 = !DILocation(line: 369, column: 11, scope: !4255, inlinedAt: !4617)
!4722 = !DILocation(line: 369, column: 6, scope: !4059, inlinedAt: !4617)
!4723 = !DILocation(line: 369, column: 26, scope: !4255, inlinedAt: !4617)
!4724 = !DILocation(line: 370, column: 6, scope: !4260, inlinedAt: !4617)
!4725 = !DILocation(line: 370, column: 11, scope: !4260, inlinedAt: !4617)
!4726 = !DILocation(line: 370, column: 6, scope: !4059, inlinedAt: !4617)
!4727 = !DILocation(line: 370, column: 26, scope: !4260, inlinedAt: !4617)
!4728 = !DILocation(line: 371, column: 6, scope: !4265, inlinedAt: !4617)
!4729 = !DILocation(line: 371, column: 11, scope: !4265, inlinedAt: !4617)
!4730 = !DILocation(line: 371, column: 6, scope: !4059, inlinedAt: !4617)
!4731 = !DILocation(line: 371, column: 26, scope: !4265, inlinedAt: !4617)
!4732 = !DILocation(line: 372, column: 6, scope: !4270, inlinedAt: !4617)
!4733 = !DILocation(line: 372, column: 11, scope: !4270, inlinedAt: !4617)
!4734 = !DILocation(line: 372, column: 6, scope: !4059, inlinedAt: !4617)
!4735 = !DILocation(line: 372, column: 26, scope: !4270, inlinedAt: !4617)
!4736 = !DILocation(line: 373, column: 6, scope: !4275, inlinedAt: !4617)
!4737 = !DILocation(line: 373, column: 11, scope: !4275, inlinedAt: !4617)
!4738 = !DILocation(line: 373, column: 6, scope: !4059, inlinedAt: !4617)
!4739 = !DILocation(line: 373, column: 26, scope: !4275, inlinedAt: !4617)
!4740 = !DILocation(line: 374, column: 6, scope: !4280, inlinedAt: !4617)
!4741 = !DILocation(line: 374, column: 11, scope: !4280, inlinedAt: !4617)
!4742 = !DILocation(line: 374, column: 6, scope: !4059, inlinedAt: !4617)
!4743 = !DILocation(line: 374, column: 26, scope: !4280, inlinedAt: !4617)
!4744 = !DILocation(line: 375, column: 6, scope: !4285, inlinedAt: !4617)
!4745 = !DILocation(line: 375, column: 11, scope: !4285, inlinedAt: !4617)
!4746 = !DILocation(line: 375, column: 6, scope: !4059, inlinedAt: !4617)
!4747 = !DILocation(line: 375, column: 27, scope: !4285, inlinedAt: !4617)
!4748 = !DILocation(line: 376, column: 6, scope: !4290, inlinedAt: !4617)
!4749 = !DILocation(line: 376, column: 11, scope: !4290, inlinedAt: !4617)
!4750 = !DILocation(line: 376, column: 6, scope: !4059, inlinedAt: !4617)
!4751 = !DILocation(line: 376, column: 32, scope: !4290, inlinedAt: !4617)
!4752 = !DILocation(line: 377, column: 6, scope: !4295, inlinedAt: !4617)
!4753 = !DILocation(line: 377, column: 11, scope: !4295, inlinedAt: !4617)
!4754 = !DILocation(line: 377, column: 6, scope: !4059, inlinedAt: !4617)
!4755 = !DILocation(line: 377, column: 32, scope: !4295, inlinedAt: !4617)
!4756 = !DILocation(line: 378, column: 6, scope: !4300, inlinedAt: !4617)
!4757 = !DILocation(line: 378, column: 11, scope: !4300, inlinedAt: !4617)
!4758 = !DILocation(line: 378, column: 6, scope: !4059, inlinedAt: !4617)
!4759 = !DILocation(line: 378, column: 32, scope: !4300, inlinedAt: !4617)
!4760 = !DILocation(line: 379, column: 6, scope: !4305, inlinedAt: !4617)
!4761 = !DILocation(line: 379, column: 11, scope: !4305, inlinedAt: !4617)
!4762 = !DILocation(line: 379, column: 6, scope: !4059, inlinedAt: !4617)
!4763 = !DILocation(line: 379, column: 33, scope: !4305, inlinedAt: !4617)
!4764 = !DILocation(line: 380, column: 6, scope: !4310, inlinedAt: !4617)
!4765 = !DILocation(line: 380, column: 11, scope: !4310, inlinedAt: !4617)
!4766 = !DILocation(line: 380, column: 6, scope: !4059, inlinedAt: !4617)
!4767 = !DILocation(line: 380, column: 33, scope: !4310, inlinedAt: !4617)
!4768 = !DILocation(line: 381, column: 6, scope: !4315, inlinedAt: !4617)
!4769 = !DILocation(line: 381, column: 11, scope: !4315, inlinedAt: !4617)
!4770 = !DILocation(line: 381, column: 6, scope: !4059, inlinedAt: !4617)
!4771 = !DILocation(line: 381, column: 33, scope: !4315, inlinedAt: !4617)
!4772 = !DILocation(line: 382, column: 2, scope: !4320, inlinedAt: !4617)
!4773 = !DILocation(line: 382, column: 2, scope: !4324, inlinedAt: !4617)
!4774 = !DILocation(line: 382, column: 2, scope: !4325, inlinedAt: !4617)
!4775 = !DILocation(line: 386, column: 1, scope: !4059, inlinedAt: !4617)
!4776 = !DILocation(line: 547, column: 9, scope: !4040, inlinedAt: !4610)
!4777 = !DILocation(line: 549, column: 8, scope: !4331, inlinedAt: !4610)
!4778 = !DILocation(line: 549, column: 7, scope: !4040, inlinedAt: !4610)
!4779 = !DILocation(line: 550, column: 4, scope: !4331, inlinedAt: !4610)
!4780 = !DILocation(line: 553, column: 33, scope: !4040, inlinedAt: !4610)
!4781 = !DILocation(line: 325, column: 6, scope: !4336, inlinedAt: !4615)
!4782 = !DILocation(line: 325, column: 6, scope: !4053, inlinedAt: !4615)
!4783 = !DILocation(line: 326, column: 3, scope: !4336, inlinedAt: !4615)
!4784 = !DILocation(line: 332, column: 9, scope: !4053, inlinedAt: !4615)
!4785 = !DILocation(line: 332, column: 15, scope: !4053, inlinedAt: !4615)
!4786 = !DILocation(line: 332, column: 2, scope: !4053, inlinedAt: !4615)
!4787 = !DILocation(line: 336, column: 1, scope: !4053, inlinedAt: !4615)
!4788 = !DILocation(line: 553, column: 5, scope: !4040, inlinedAt: !4610)
!4789 = !DILocation(line: 553, column: 41, scope: !4040, inlinedAt: !4610)
!4790 = !DILocation(line: 554, column: 5, scope: !4040, inlinedAt: !4610)
!4791 = !DILocation(line: 554, column: 12, scope: !4040, inlinedAt: !4610)
!4792 = !DILocation(line: 448, column: 31, scope: !4035, inlinedAt: !4609)
!4793 = !DILocation(line: 448, column: 34, scope: !4035, inlinedAt: !4609)
!4794 = !DILocation(line: 448, column: 14, scope: !4035, inlinedAt: !4609)
!4795 = !DILocation(line: 450, column: 22, scope: !4035, inlinedAt: !4609)
!4796 = !DILocation(line: 450, column: 25, scope: !4035, inlinedAt: !4609)
!4797 = !DILocation(line: 450, column: 30, scope: !4035, inlinedAt: !4609)
!4798 = !DILocation(line: 450, column: 36, scope: !4035, inlinedAt: !4609)
!4799 = !DILocation(line: 450, column: 8, scope: !4035, inlinedAt: !4609)
!4800 = !DILocation(line: 450, column: 6, scope: !4035, inlinedAt: !4609)
!4801 = !DILocation(line: 451, column: 9, scope: !4035, inlinedAt: !4609)
!4802 = !DILocation(line: 552, column: 3, scope: !4040, inlinedAt: !4610)
!4803 = !DILocation(line: 557, column: 19, scope: !4042, inlinedAt: !4610)
!4804 = !DILocation(line: 557, column: 25, scope: !4042, inlinedAt: !4610)
!4805 = !DILocation(line: 557, column: 9, scope: !4042, inlinedAt: !4610)
!4806 = !DILocation(line: 557, column: 2, scope: !4042, inlinedAt: !4610)
!4807 = !DILocation(line: 558, column: 1, scope: !4042, inlinedAt: !4610)
!4808 = !DILocation(line: 664, column: 2, scope: !4607)
!4809 = distinct !DISubprogram(name: "usb_fill_bulk_urb", scope: !6, file: !6, line: 1647, type: !4810, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{null, !3861, !137, !7, !131, !141, !3903, !131}
!4812 = !DILocalVariable(name: "urb", arg: 1, scope: !4809, file: !6, line: 1647, type: !3861)
!4813 = !DILocation(line: 1647, column: 50, scope: !4809)
!4814 = !DILocalVariable(name: "dev", arg: 2, scope: !4809, file: !6, line: 1648, type: !137)
!4815 = !DILocation(line: 1648, column: 29, scope: !4809)
!4816 = !DILocalVariable(name: "pipe", arg: 3, scope: !4809, file: !6, line: 1649, type: !7)
!4817 = !DILocation(line: 1649, column: 23, scope: !4809)
!4818 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !4809, file: !6, line: 1650, type: !131)
!4819 = !DILocation(line: 1650, column: 16, scope: !4809)
!4820 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !4809, file: !6, line: 1651, type: !141)
!4821 = !DILocation(line: 1651, column: 14, scope: !4809)
!4822 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !4809, file: !6, line: 1652, type: !3903)
!4823 = !DILocation(line: 1652, column: 25, scope: !4809)
!4824 = !DILocalVariable(name: "context", arg: 7, scope: !4809, file: !6, line: 1653, type: !131)
!4825 = !DILocation(line: 1653, column: 16, scope: !4809)
!4826 = !DILocation(line: 1655, column: 13, scope: !4809)
!4827 = !DILocation(line: 1655, column: 2, scope: !4809)
!4828 = !DILocation(line: 1655, column: 7, scope: !4809)
!4829 = !DILocation(line: 1655, column: 11, scope: !4809)
!4830 = !DILocation(line: 1656, column: 14, scope: !4809)
!4831 = !DILocation(line: 1656, column: 2, scope: !4809)
!4832 = !DILocation(line: 1656, column: 7, scope: !4809)
!4833 = !DILocation(line: 1656, column: 12, scope: !4809)
!4834 = !DILocation(line: 1657, column: 25, scope: !4809)
!4835 = !DILocation(line: 1657, column: 2, scope: !4809)
!4836 = !DILocation(line: 1657, column: 7, scope: !4809)
!4837 = !DILocation(line: 1657, column: 23, scope: !4809)
!4838 = !DILocation(line: 1658, column: 32, scope: !4809)
!4839 = !DILocation(line: 1658, column: 2, scope: !4809)
!4840 = !DILocation(line: 1658, column: 7, scope: !4809)
!4841 = !DILocation(line: 1658, column: 30, scope: !4809)
!4842 = !DILocation(line: 1659, column: 18, scope: !4809)
!4843 = !DILocation(line: 1659, column: 2, scope: !4809)
!4844 = !DILocation(line: 1659, column: 7, scope: !4809)
!4845 = !DILocation(line: 1659, column: 16, scope: !4809)
!4846 = !DILocation(line: 1660, column: 17, scope: !4809)
!4847 = !DILocation(line: 1660, column: 2, scope: !4809)
!4848 = !DILocation(line: 1660, column: 7, scope: !4809)
!4849 = !DILocation(line: 1660, column: 15, scope: !4809)
!4850 = !DILocation(line: 1661, column: 1, scope: !4809)
!4851 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !4852, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!7, !137, !7}
!4854 = !DILocalVariable(name: "dev", arg: 1, scope: !4851, file: !6, line: 1945, type: !137)
!4855 = !DILocation(line: 1945, column: 61, scope: !4851)
!4856 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4851, file: !6, line: 1946, type: !7)
!4857 = !DILocation(line: 1946, column: 16, scope: !4851)
!4858 = !DILocation(line: 1948, column: 10, scope: !4851)
!4859 = !DILocation(line: 1948, column: 15, scope: !4851)
!4860 = !DILocation(line: 1948, column: 22, scope: !4851)
!4861 = !DILocation(line: 1948, column: 31, scope: !4851)
!4862 = !DILocation(line: 1948, column: 40, scope: !4851)
!4863 = !DILocation(line: 1948, column: 28, scope: !4851)
!4864 = !DILocation(line: 1948, column: 2, scope: !4851)
!4865 = distinct !DISubprogram(name: "chaos_read_callback", scope: !3, file: !3, line: 315, type: !3905, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4866 = !DILocalVariable(name: "urb", arg: 1, scope: !4865, file: !3, line: 315, type: !3861)
!4867 = !DILocation(line: 315, column: 45, scope: !4865)
!4868 = !DILocalVariable(name: "dev", scope: !4865, file: !3, line: 317, type: !3812)
!4869 = !DILocation(line: 317, column: 19, scope: !4865)
!4870 = !DILocation(line: 317, column: 25, scope: !4865)
!4871 = !DILocation(line: 317, column: 30, scope: !4865)
!4872 = !DILocalVariable(name: "status", scope: !4865, file: !3, line: 318, type: !141)
!4873 = !DILocation(line: 318, column: 6, scope: !4865)
!4874 = !DILocation(line: 318, column: 15, scope: !4865)
!4875 = !DILocation(line: 318, column: 20, scope: !4865)
!4876 = !DILocation(line: 322, column: 6, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 322, column: 6)
!4878 = !DILocation(line: 322, column: 13, scope: !4877)
!4879 = !DILocation(line: 322, column: 6, scope: !4865)
!4880 = !DILocation(line: 323, column: 16, scope: !4877)
!4881 = !DILocation(line: 323, column: 21, scope: !4877)
!4882 = !DILocation(line: 323, column: 3, scope: !4877)
!4883 = !DILocation(line: 323, column: 8, scope: !4877)
!4884 = !DILocation(line: 323, column: 14, scope: !4877)
!4885 = !DILocation(line: 325, column: 3, scope: !4877)
!4886 = !DILocation(line: 325, column: 8, scope: !4877)
!4887 = !DILocation(line: 325, column: 14, scope: !4877)
!4888 = !DILocation(line: 327, column: 2, scope: !4865)
!4889 = !DILocation(line: 327, column: 7, scope: !4865)
!4890 = !DILocation(line: 327, column: 12, scope: !4865)
!4891 = !DILocation(line: 330, column: 2, scope: !4865)
!4892 = !{i32 -2142608640}
!4893 = !DILocation(line: 332, column: 2, scope: !4865)
!4894 = !DILocation(line: 332, column: 7, scope: !4865)
!4895 = !DILocation(line: 332, column: 15, scope: !4865)
!4896 = !DILocation(line: 333, column: 2, scope: !4865)
!4897 = !DILocation(line: 334, column: 1, scope: !4865)
!4898 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !4899, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{null, !3703, !131}
!4901 = !DILocalVariable(name: "intf", arg: 1, scope: !4898, file: !6, line: 268, type: !3703)
!4902 = !DILocation(line: 268, column: 59, scope: !4898)
!4903 = !DILocalVariable(name: "data", arg: 2, scope: !4898, file: !6, line: 268, type: !131)
!4904 = !DILocation(line: 268, column: 71, scope: !4898)
!4905 = !DILocation(line: 270, column: 19, scope: !4898)
!4906 = !DILocation(line: 270, column: 25, scope: !4898)
!4907 = !DILocation(line: 270, column: 30, scope: !4898)
!4908 = !DILocation(line: 270, column: 2, scope: !4898)
!4909 = !DILocation(line: 271, column: 1, scope: !4898)
!4910 = distinct !DISubprogram(name: "chaoskey_rng_read", scope: !3, file: !3, line: 479, type: !3851, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4911 = !DILocalVariable(name: "rng", arg: 1, scope: !4910, file: !3, line: 479, type: !3836)
!4912 = !DILocation(line: 479, column: 44, scope: !4910)
!4913 = !DILocalVariable(name: "data", arg: 2, scope: !4910, file: !3, line: 479, type: !131)
!4914 = !DILocation(line: 479, column: 55, scope: !4910)
!4915 = !DILocalVariable(name: "max", arg: 3, scope: !4910, file: !3, line: 480, type: !280)
!4916 = !DILocation(line: 480, column: 16, scope: !4910)
!4917 = !DILocalVariable(name: "wait", arg: 4, scope: !4910, file: !3, line: 480, type: !445)
!4918 = !DILocation(line: 480, column: 26, scope: !4910)
!4919 = !DILocalVariable(name: "dev", scope: !4910, file: !3, line: 482, type: !3812)
!4920 = !DILocation(line: 482, column: 19, scope: !4910)
!4921 = !DILocalVariable(name: "__mptr", scope: !4922, file: !3, line: 482, type: !131)
!4922 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 482, column: 25)
!4923 = !DILocation(line: 482, column: 25, scope: !4922)
!4924 = !DILocation(line: 482, column: 25, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 482, column: 25)
!4926 = !DILocalVariable(name: "this_time", scope: !4910, file: !3, line: 483, type: !141)
!4927 = !DILocation(line: 483, column: 6, scope: !4910)
!4928 = !DILocation(line: 487, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 487, column: 6)
!4930 = !DILocation(line: 487, column: 12, scope: !4929)
!4931 = !DILocation(line: 487, column: 6, scope: !4910)
!4932 = !DILocation(line: 489, column: 3, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 487, column: 21)
!4934 = !DILocation(line: 496, column: 14, scope: !4910)
!4935 = !DILocation(line: 496, column: 19, scope: !4910)
!4936 = !DILocation(line: 496, column: 2, scope: !4910)
!4937 = !DILocation(line: 498, column: 14, scope: !4910)
!4938 = !DILocation(line: 498, column: 19, scope: !4910)
!4939 = !DILocation(line: 498, column: 2, scope: !4910)
!4940 = !DILocation(line: 500, column: 16, scope: !4910)
!4941 = !DILocation(line: 500, column: 21, scope: !4910)
!4942 = !DILocation(line: 500, column: 2, scope: !4910)
!4943 = !DILocation(line: 506, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 506, column: 6)
!4945 = !DILocation(line: 506, column: 11, scope: !4944)
!4946 = !DILocation(line: 506, column: 20, scope: !4944)
!4947 = !DILocation(line: 506, column: 25, scope: !4944)
!4948 = !DILocation(line: 506, column: 17, scope: !4944)
!4949 = !DILocation(line: 506, column: 6, scope: !4910)
!4950 = !DILocation(line: 507, column: 25, scope: !4944)
!4951 = !DILocation(line: 507, column: 10, scope: !4944)
!4952 = !DILocation(line: 507, column: 3, scope: !4944)
!4953 = !DILocation(line: 509, column: 14, scope: !4910)
!4954 = !DILocation(line: 509, column: 19, scope: !4910)
!4955 = !DILocation(line: 509, column: 27, scope: !4910)
!4956 = !DILocation(line: 509, column: 32, scope: !4910)
!4957 = !DILocation(line: 509, column: 25, scope: !4910)
!4958 = !DILocation(line: 509, column: 12, scope: !4910)
!4959 = !DILocation(line: 510, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 510, column: 6)
!4961 = !DILocation(line: 510, column: 18, scope: !4960)
!4962 = !DILocation(line: 510, column: 16, scope: !4960)
!4963 = !DILocation(line: 510, column: 6, scope: !4910)
!4964 = !DILocation(line: 511, column: 15, scope: !4960)
!4965 = !DILocation(line: 511, column: 13, scope: !4960)
!4966 = !DILocation(line: 511, column: 3, scope: !4960)
!4967 = !DILocation(line: 513, column: 9, scope: !4910)
!4968 = !DILocation(line: 513, column: 15, scope: !4910)
!4969 = !DILocation(line: 513, column: 20, scope: !4910)
!4970 = !DILocation(line: 513, column: 26, scope: !4910)
!4971 = !DILocation(line: 513, column: 31, scope: !4910)
!4972 = !DILocation(line: 513, column: 24, scope: !4910)
!4973 = !DILocation(line: 513, column: 37, scope: !4910)
!4974 = !DILocation(line: 513, column: 2, scope: !4910)
!4975 = !DILocation(line: 515, column: 15, scope: !4910)
!4976 = !DILocation(line: 515, column: 2, scope: !4910)
!4977 = !DILocation(line: 515, column: 7, scope: !4910)
!4978 = !DILocation(line: 515, column: 12, scope: !4910)
!4979 = !DILocation(line: 517, column: 16, scope: !4910)
!4980 = !DILocation(line: 517, column: 21, scope: !4910)
!4981 = !DILocation(line: 517, column: 2, scope: !4910)
!4982 = !DILocation(line: 520, column: 9, scope: !4910)
!4983 = !DILocation(line: 520, column: 2, scope: !4910)
!4984 = !DILocation(line: 521, column: 1, scope: !4910)
!4985 = distinct !DISubprogram(name: "chaoskey_free", scope: !3, file: !3, line: 94, type: !4986, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{null, !3812}
!4988 = !DILocalVariable(name: "dev", arg: 1, scope: !4985, file: !3, line: 94, type: !3812)
!4989 = !DILocation(line: 94, column: 44, scope: !4985)
!4990 = !DILocation(line: 96, column: 6, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 96, column: 6)
!4992 = !DILocation(line: 96, column: 6, scope: !4985)
!4993 = !DILocation(line: 98, column: 16, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 96, column: 11)
!4995 = !DILocation(line: 98, column: 21, scope: !4994)
!4996 = !DILocation(line: 98, column: 3, scope: !4994)
!4997 = !DILocation(line: 99, column: 9, scope: !4994)
!4998 = !DILocation(line: 99, column: 14, scope: !4994)
!4999 = !DILocation(line: 99, column: 3, scope: !4994)
!5000 = !DILocation(line: 100, column: 9, scope: !4994)
!5001 = !DILocation(line: 100, column: 14, scope: !4994)
!5002 = !DILocation(line: 100, column: 3, scope: !4994)
!5003 = !DILocation(line: 101, column: 16, scope: !4994)
!5004 = !DILocation(line: 101, column: 21, scope: !4994)
!5005 = !DILocation(line: 101, column: 3, scope: !4994)
!5006 = !DILocation(line: 102, column: 9, scope: !4994)
!5007 = !DILocation(line: 102, column: 3, scope: !4994)
!5008 = !DILocation(line: 103, column: 2, scope: !4994)
!5009 = !DILocation(line: 104, column: 1, scope: !4985)
!5010 = distinct !DISubprogram(name: "get_order", scope: !5011, file: !5011, line: 29, type: !5012, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5011 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!141, !283}
!5014 = !DILocalVariable(name: "x", arg: 1, scope: !5015, file: !5016, line: 366, type: !377)
!5015 = distinct !DISubprogram(name: "fls64", scope: !5016, file: !5016, line: 366, type: !5017, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5016 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!141, !377}
!5019 = !DILocation(line: 366, column: 40, scope: !5015, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 46, column: 9, scope: !5010)
!5021 = !DILocalVariable(name: "bitpos", scope: !5015, file: !5016, line: 368, type: !141)
!5022 = !DILocation(line: 368, column: 6, scope: !5015, inlinedAt: !5020)
!5023 = !DILocalVariable(name: "size", arg: 1, scope: !5010, file: !5011, line: 29, type: !283)
!5024 = !DILocation(line: 29, column: 63, scope: !5010)
!5025 = !DILocation(line: 31, column: 27, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5010, file: !5011, line: 31, column: 6)
!5027 = !DILocation(line: 31, column: 6, scope: !5026)
!5028 = !DILocation(line: 31, column: 6, scope: !5010)
!5029 = !DILocation(line: 32, column: 8, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !5011, line: 32, column: 7)
!5031 = distinct !DILexicalBlock(scope: !5026, file: !5011, line: 31, column: 34)
!5032 = !DILocation(line: 32, column: 7, scope: !5031)
!5033 = !DILocation(line: 33, column: 4, scope: !5030)
!5034 = !DILocation(line: 35, column: 7, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5031, file: !5011, line: 35, column: 7)
!5036 = !DILocation(line: 35, column: 12, scope: !5035)
!5037 = !DILocation(line: 35, column: 7, scope: !5031)
!5038 = !DILocation(line: 36, column: 4, scope: !5035)
!5039 = !DILocation(line: 38, column: 10, scope: !5031)
!5040 = !DILocation(line: 38, column: 28, scope: !5031)
!5041 = !DILocation(line: 38, column: 41, scope: !5031)
!5042 = !DILocation(line: 38, column: 3, scope: !5031)
!5043 = !DILocation(line: 41, column: 6, scope: !5010)
!5044 = !DILocation(line: 42, column: 7, scope: !5010)
!5045 = !DILocation(line: 46, column: 15, scope: !5010)
!5046 = !DILocation(line: 374, column: 2, scope: !5015, inlinedAt: !5020)
!5047 = !DILocation(line: 376, column: 14, scope: !5015, inlinedAt: !5020)
!5048 = !{i32 310250}
!5049 = !DILocation(line: 377, column: 9, scope: !5015, inlinedAt: !5020)
!5050 = !DILocation(line: 377, column: 16, scope: !5015, inlinedAt: !5020)
!5051 = !DILocation(line: 46, column: 2, scope: !5010)
!5052 = !DILocation(line: 48, column: 1, scope: !5010)
!5053 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5054, file: !5054, line: 30, type: !5055, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5054 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!141, !376}
!5057 = !DILocation(line: 366, column: 40, scope: !5015, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 32, column: 9, scope: !5053)
!5059 = !DILocation(line: 368, column: 6, scope: !5015, inlinedAt: !5058)
!5060 = !DILocalVariable(name: "n", arg: 1, scope: !5053, file: !5054, line: 30, type: !376)
!5061 = !DILocation(line: 30, column: 21, scope: !5053)
!5062 = !DILocation(line: 32, column: 15, scope: !5053)
!5063 = !DILocation(line: 374, column: 2, scope: !5015, inlinedAt: !5058)
!5064 = !DILocation(line: 376, column: 14, scope: !5015, inlinedAt: !5058)
!5065 = !DILocation(line: 377, column: 9, scope: !5015, inlinedAt: !5058)
!5066 = !DILocation(line: 377, column: 16, scope: !5015, inlinedAt: !5058)
!5067 = !DILocation(line: 32, column: 18, scope: !5053)
!5068 = !DILocation(line: 32, column: 2, scope: !5053)
!5069 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1987, file: !1987, line: 137, type: !5070, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!131, !889, !3003, !280, !129}
!5072 = !DILocalVariable(name: "s", arg: 1, scope: !5069, file: !1987, line: 137, type: !889)
!5073 = !DILocation(line: 137, column: 54, scope: !5069)
!5074 = !DILocalVariable(name: "object", arg: 2, scope: !5069, file: !1987, line: 137, type: !3003)
!5075 = !DILocation(line: 137, column: 69, scope: !5069)
!5076 = !DILocalVariable(name: "size", arg: 3, scope: !5069, file: !1987, line: 138, type: !280)
!5077 = !DILocation(line: 138, column: 12, scope: !5069)
!5078 = !DILocalVariable(name: "flags", arg: 4, scope: !5069, file: !1987, line: 138, type: !129)
!5079 = !DILocation(line: 138, column: 24, scope: !5069)
!5080 = !DILocation(line: 140, column: 17, scope: !5069)
!5081 = !DILocation(line: 140, column: 2, scope: !5069)
!5082 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !5083, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{null, !169, !131}
!5085 = !DILocalVariable(name: "dev", arg: 1, scope: !5082, file: !67, line: 660, type: !169)
!5086 = !DILocation(line: 660, column: 51, scope: !5082)
!5087 = !DILocalVariable(name: "data", arg: 2, scope: !5082, file: !67, line: 660, type: !131)
!5088 = !DILocation(line: 660, column: 62, scope: !5082)
!5089 = !DILocation(line: 662, column: 21, scope: !5082)
!5090 = !DILocation(line: 662, column: 2, scope: !5082)
!5091 = !DILocation(line: 662, column: 7, scope: !5082)
!5092 = !DILocation(line: 662, column: 19, scope: !5082)
!5093 = !DILocation(line: 663, column: 1, scope: !5082)
!5094 = distinct !DISubprogram(name: "chaoskey_read", scope: !3, file: !3, line: 407, type: !2672, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5095 = !DILocalVariable(name: "addr", arg: 1, scope: !5096, file: !5097, line: 138, type: !3003)
!5096 = distinct !DISubprogram(name: "check_copy_size", scope: !5097, file: !5097, line: 138, type: !5098, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5097 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!445, !3003, !280, !445}
!5100 = !DILocation(line: 138, column: 29, scope: !5096, inlinedAt: !5101)
!5101 = distinct !DILocation(line: 199, column: 6, scope: !5102, inlinedAt: !5107)
!5102 = distinct !DILexicalBlock(scope: !5104, file: !5103, line: 199, column: 6)
!5103 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5104 = distinct !DISubprogram(name: "copy_to_user", scope: !5103, file: !5103, line: 197, type: !5105, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!283, !131, !3003, !283}
!5107 = distinct !DILocation(line: 450, column: 12, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 425, column: 20)
!5109 = !DILocalVariable(name: "bytes", arg: 2, scope: !5096, file: !5097, line: 138, type: !280)
!5110 = !DILocation(line: 138, column: 42, scope: !5096, inlinedAt: !5101)
!5111 = !DILocalVariable(name: "is_source", arg: 3, scope: !5096, file: !5097, line: 138, type: !445)
!5112 = !DILocation(line: 138, column: 54, scope: !5096, inlinedAt: !5101)
!5113 = !DILocalVariable(name: "sz", scope: !5096, file: !5097, line: 140, type: !141)
!5114 = !DILocation(line: 140, column: 6, scope: !5096, inlinedAt: !5101)
!5115 = !DILocalVariable(name: "__ret_warn_on", scope: !5116, file: !5097, line: 150, type: !141)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !5097, line: 150, column: 6)
!5117 = distinct !DILexicalBlock(scope: !5096, file: !5097, line: 150, column: 6)
!5118 = !DILocation(line: 150, column: 6, scope: !5116, inlinedAt: !5101)
!5119 = !DILocalVariable(name: "to", arg: 1, scope: !5104, file: !5103, line: 197, type: !131)
!5120 = !DILocation(line: 197, column: 27, scope: !5104, inlinedAt: !5107)
!5121 = !DILocalVariable(name: "from", arg: 2, scope: !5104, file: !5103, line: 197, type: !3003)
!5122 = !DILocation(line: 197, column: 43, scope: !5104, inlinedAt: !5107)
!5123 = !DILocalVariable(name: "n", arg: 3, scope: !5104, file: !5103, line: 197, type: !283)
!5124 = !DILocation(line: 197, column: 63, scope: !5104, inlinedAt: !5107)
!5125 = !DILocalVariable(name: "file", arg: 1, scope: !5094, file: !3, line: 407, type: !311)
!5126 = !DILocation(line: 407, column: 43, scope: !5094)
!5127 = !DILocalVariable(name: "buffer", arg: 2, scope: !5094, file: !3, line: 408, type: !234)
!5128 = !DILocation(line: 408, column: 22, scope: !5094)
!5129 = !DILocalVariable(name: "count", arg: 3, scope: !5094, file: !3, line: 409, type: !280)
!5130 = !DILocation(line: 409, column: 16, scope: !5094)
!5131 = !DILocalVariable(name: "ppos", arg: 4, scope: !5094, file: !3, line: 410, type: !2674)
!5132 = !DILocation(line: 410, column: 17, scope: !5094)
!5133 = !DILocalVariable(name: "dev", scope: !5094, file: !3, line: 412, type: !3812)
!5134 = !DILocation(line: 412, column: 19, scope: !5094)
!5135 = !DILocalVariable(name: "read_count", scope: !5094, file: !3, line: 413, type: !265)
!5136 = !DILocation(line: 413, column: 10, scope: !5094)
!5137 = !DILocalVariable(name: "this_time", scope: !5094, file: !3, line: 414, type: !141)
!5138 = !DILocation(line: 414, column: 6, scope: !5094)
!5139 = !DILocalVariable(name: "result", scope: !5094, file: !3, line: 415, type: !141)
!5140 = !DILocation(line: 415, column: 6, scope: !5094)
!5141 = !DILocalVariable(name: "remain", scope: !5094, file: !3, line: 416, type: !283)
!5142 = !DILocation(line: 416, column: 16, scope: !5094)
!5143 = !DILocation(line: 418, column: 8, scope: !5094)
!5144 = !DILocation(line: 418, column: 14, scope: !5094)
!5145 = !DILocation(line: 418, column: 6, scope: !5094)
!5146 = !DILocation(line: 420, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 420, column: 6)
!5148 = !DILocation(line: 420, column: 10, scope: !5147)
!5149 = !DILocation(line: 420, column: 18, scope: !5147)
!5150 = !DILocation(line: 420, column: 22, scope: !5147)
!5151 = !DILocation(line: 420, column: 27, scope: !5147)
!5152 = !DILocation(line: 420, column: 6, scope: !5094)
!5153 = !DILocation(line: 421, column: 3, scope: !5147)
!5154 = !DILocation(line: 425, column: 2, scope: !5094)
!5155 = !DILocation(line: 425, column: 9, scope: !5094)
!5156 = !DILocation(line: 425, column: 15, scope: !5094)
!5157 = !DILocation(line: 430, column: 38, scope: !5108)
!5158 = !DILocation(line: 430, column: 43, scope: !5108)
!5159 = !DILocation(line: 430, column: 12, scope: !5108)
!5160 = !DILocation(line: 430, column: 10, scope: !5108)
!5161 = !DILocation(line: 431, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 431, column: 7)
!5163 = !DILocation(line: 431, column: 7, scope: !5108)
!5164 = !DILocation(line: 432, column: 4, scope: !5162)
!5165 = !DILocation(line: 433, column: 17, scope: !5108)
!5166 = !DILocation(line: 433, column: 22, scope: !5108)
!5167 = !DILocation(line: 433, column: 3, scope: !5108)
!5168 = !DILocation(line: 435, column: 38, scope: !5108)
!5169 = !DILocation(line: 435, column: 43, scope: !5108)
!5170 = !DILocation(line: 435, column: 12, scope: !5108)
!5171 = !DILocation(line: 435, column: 10, scope: !5108)
!5172 = !DILocation(line: 436, column: 7, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 436, column: 7)
!5174 = !DILocation(line: 436, column: 7, scope: !5108)
!5175 = !DILocation(line: 437, column: 4, scope: !5173)
!5176 = !DILocation(line: 438, column: 7, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 438, column: 7)
!5178 = !DILocation(line: 438, column: 12, scope: !5177)
!5179 = !DILocation(line: 438, column: 21, scope: !5177)
!5180 = !DILocation(line: 438, column: 26, scope: !5177)
!5181 = !DILocation(line: 438, column: 18, scope: !5177)
!5182 = !DILocation(line: 438, column: 7, scope: !5108)
!5183 = !DILocation(line: 439, column: 28, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 438, column: 32)
!5185 = !DILocation(line: 439, column: 13, scope: !5184)
!5186 = !DILocation(line: 439, column: 11, scope: !5184)
!5187 = !DILocation(line: 440, column: 8, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 440, column: 8)
!5189 = !DILocation(line: 440, column: 15, scope: !5188)
!5190 = !DILocation(line: 440, column: 8, scope: !5184)
!5191 = !DILocation(line: 441, column: 19, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 440, column: 20)
!5193 = !DILocation(line: 441, column: 24, scope: !5192)
!5194 = !DILocation(line: 441, column: 5, scope: !5192)
!5195 = !DILocation(line: 442, column: 5, scope: !5192)
!5196 = !DILocation(line: 444, column: 3, scope: !5184)
!5197 = !DILocation(line: 446, column: 15, scope: !5108)
!5198 = !DILocation(line: 446, column: 20, scope: !5108)
!5199 = !DILocation(line: 446, column: 28, scope: !5108)
!5200 = !DILocation(line: 446, column: 33, scope: !5108)
!5201 = !DILocation(line: 446, column: 26, scope: !5108)
!5202 = !DILocation(line: 446, column: 13, scope: !5108)
!5203 = !DILocation(line: 447, column: 7, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 447, column: 7)
!5205 = !DILocation(line: 447, column: 19, scope: !5204)
!5206 = !DILocation(line: 447, column: 17, scope: !5204)
!5207 = !DILocation(line: 447, column: 7, scope: !5108)
!5208 = !DILocation(line: 448, column: 16, scope: !5204)
!5209 = !DILocation(line: 448, column: 14, scope: !5204)
!5210 = !DILocation(line: 448, column: 4, scope: !5204)
!5211 = !DILocation(line: 450, column: 25, scope: !5108)
!5212 = !DILocation(line: 450, column: 33, scope: !5108)
!5213 = !DILocation(line: 450, column: 38, scope: !5108)
!5214 = !DILocation(line: 450, column: 44, scope: !5108)
!5215 = !DILocation(line: 450, column: 49, scope: !5108)
!5216 = !DILocation(line: 450, column: 42, scope: !5108)
!5217 = !DILocation(line: 450, column: 55, scope: !5108)
!5218 = !DILocation(line: 199, column: 6, scope: !5102, inlinedAt: !5107)
!5219 = !DILocation(line: 141, column: 6, scope: !5220, inlinedAt: !5101)
!5220 = distinct !DILexicalBlock(scope: !5096, file: !5097, line: 141, column: 6)
!5221 = !DILocation(line: 0, scope: !5220, inlinedAt: !5101)
!5222 = !DILocation(line: 141, column: 6, scope: !5096, inlinedAt: !5101)
!5223 = !DILocation(line: 142, column: 29, scope: !5224, inlinedAt: !5101)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !5097, line: 142, column: 7)
!5225 = distinct !DILexicalBlock(scope: !5220, file: !5097, line: 141, column: 39)
!5226 = !DILocation(line: 142, column: 8, scope: !5224, inlinedAt: !5101)
!5227 = !DILocation(line: 142, column: 7, scope: !5225, inlinedAt: !5101)
!5228 = !DILocation(line: 143, column: 18, scope: !5224, inlinedAt: !5101)
!5229 = !DILocation(line: 143, column: 22, scope: !5224, inlinedAt: !5101)
!5230 = !DILocation(line: 143, column: 4, scope: !5224, inlinedAt: !5101)
!5231 = !DILocation(line: 144, column: 12, scope: !5232, inlinedAt: !5101)
!5232 = distinct !DILexicalBlock(scope: !5224, file: !5097, line: 144, column: 12)
!5233 = !DILocation(line: 144, column: 12, scope: !5224, inlinedAt: !5101)
!5234 = !DILocation(line: 145, column: 4, scope: !5232, inlinedAt: !5101)
!5235 = !DILocation(line: 147, column: 4, scope: !5232, inlinedAt: !5101)
!5236 = !DILocation(line: 148, column: 3, scope: !5225, inlinedAt: !5101)
!5237 = !DILocation(line: 150, column: 6, scope: !5238, inlinedAt: !5101)
!5238 = distinct !DILexicalBlock(scope: !5116, file: !5097, line: 150, column: 6)
!5239 = !DILocation(line: 150, column: 6, scope: !5240, inlinedAt: !5101)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !5097, line: 150, column: 6)
!5241 = distinct !DILexicalBlock(scope: !5238, file: !5097, line: 150, column: 6)
!5242 = !{i32 -2145546582, i32 -2145546553, i32 -2145546507, i32 -2145546449, i32 -2145546395, i32 -2145546341, i32 -2145546286, i32 -2145546255}
!5243 = !DILocation(line: 150, column: 6, scope: !5244, inlinedAt: !5101)
!5244 = distinct !DILexicalBlock(scope: !5241, file: !5097, line: 150, column: 6)
!5245 = !{i32 -2145545835, i32 -2145545828, i32 -2145545776, i32 -2145545745, i32 -2145545715}
!5246 = !DILocation(line: 150, column: 6, scope: !5241, inlinedAt: !5101)
!5247 = !DILocation(line: 150, column: 6, scope: !5117, inlinedAt: !5101)
!5248 = !DILocation(line: 150, column: 6, scope: !5096, inlinedAt: !5101)
!5249 = !DILocation(line: 151, column: 3, scope: !5117, inlinedAt: !5101)
!5250 = !DILocation(line: 152, column: 20, scope: !5096, inlinedAt: !5101)
!5251 = !DILocation(line: 152, column: 26, scope: !5096, inlinedAt: !5101)
!5252 = !DILocation(line: 152, column: 33, scope: !5096, inlinedAt: !5101)
!5253 = !DILocation(line: 152, column: 2, scope: !5096, inlinedAt: !5101)
!5254 = !DILocation(line: 153, column: 2, scope: !5096, inlinedAt: !5101)
!5255 = !DILocation(line: 154, column: 1, scope: !5096, inlinedAt: !5101)
!5256 = !DILocation(line: 199, column: 6, scope: !5104, inlinedAt: !5107)
!5257 = !DILocation(line: 200, column: 21, scope: !5102, inlinedAt: !5107)
!5258 = !DILocation(line: 200, column: 25, scope: !5102, inlinedAt: !5107)
!5259 = !DILocation(line: 200, column: 31, scope: !5102, inlinedAt: !5107)
!5260 = !DILocation(line: 200, column: 7, scope: !5102, inlinedAt: !5107)
!5261 = !DILocation(line: 200, column: 5, scope: !5102, inlinedAt: !5107)
!5262 = !DILocation(line: 200, column: 3, scope: !5102, inlinedAt: !5107)
!5263 = !DILocation(line: 201, column: 9, scope: !5104, inlinedAt: !5107)
!5264 = !DILocation(line: 450, column: 10, scope: !5108)
!5265 = !DILocation(line: 451, column: 7, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 451, column: 7)
!5267 = !DILocation(line: 451, column: 7, scope: !5108)
!5268 = !DILocation(line: 452, column: 11, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 451, column: 15)
!5270 = !DILocation(line: 457, column: 17, scope: !5269)
!5271 = !DILocation(line: 457, column: 29, scope: !5269)
!5272 = !DILocation(line: 457, column: 27, scope: !5269)
!5273 = !DILocation(line: 457, column: 4, scope: !5269)
!5274 = !DILocation(line: 457, column: 9, scope: !5269)
!5275 = !DILocation(line: 457, column: 14, scope: !5269)
!5276 = !DILocation(line: 458, column: 18, scope: !5269)
!5277 = !DILocation(line: 458, column: 23, scope: !5269)
!5278 = !DILocation(line: 458, column: 4, scope: !5269)
!5279 = !DILocation(line: 459, column: 4, scope: !5269)
!5280 = !DILocation(line: 462, column: 12, scope: !5108)
!5281 = !DILocation(line: 462, column: 9, scope: !5108)
!5282 = !DILocation(line: 463, column: 17, scope: !5108)
!5283 = !DILocation(line: 463, column: 14, scope: !5108)
!5284 = !DILocation(line: 464, column: 13, scope: !5108)
!5285 = !DILocation(line: 464, column: 10, scope: !5108)
!5286 = !DILocation(line: 465, column: 16, scope: !5108)
!5287 = !DILocation(line: 465, column: 3, scope: !5108)
!5288 = !DILocation(line: 465, column: 8, scope: !5108)
!5289 = !DILocation(line: 465, column: 13, scope: !5108)
!5290 = !DILocation(line: 466, column: 17, scope: !5108)
!5291 = !DILocation(line: 466, column: 22, scope: !5108)
!5292 = !DILocation(line: 466, column: 3, scope: !5108)
!5293 = distinct !{!5293, !5154, !5294}
!5294 = !DILocation(line: 467, column: 2, scope: !5094)
!5295 = !DILabel(scope: !5094, name: "bail", file: !3, line: 468)
!5296 = !DILocation(line: 468, column: 1, scope: !5094)
!5297 = !DILocation(line: 469, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 469, column: 6)
!5299 = !DILocation(line: 469, column: 6, scope: !5094)
!5300 = !DILocation(line: 471, column: 10, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 469, column: 18)
!5302 = !DILocation(line: 471, column: 3, scope: !5301)
!5303 = !DILocation(line: 474, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 474, column: 6)
!5305 = !DILocation(line: 474, column: 13, scope: !5304)
!5306 = !DILocation(line: 474, column: 6, scope: !5094)
!5307 = !DILocation(line: 475, column: 10, scope: !5304)
!5308 = !DILocation(line: 475, column: 3, scope: !5304)
!5309 = !DILocation(line: 476, column: 9, scope: !5094)
!5310 = !DILocation(line: 476, column: 2, scope: !5094)
!5311 = !DILocation(line: 477, column: 1, scope: !5094)
!5312 = distinct !DISubprogram(name: "chaoskey_open", scope: !3, file: !3, line: 251, type: !2718, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5313 = !DILocalVariable(name: "inode", arg: 1, scope: !5312, file: !3, line: 251, type: !384)
!5314 = !DILocation(line: 251, column: 40, scope: !5312)
!5315 = !DILocalVariable(name: "file", arg: 2, scope: !5312, file: !3, line: 251, type: !311)
!5316 = !DILocation(line: 251, column: 60, scope: !5312)
!5317 = !DILocalVariable(name: "dev", scope: !5312, file: !3, line: 253, type: !3812)
!5318 = !DILocation(line: 253, column: 19, scope: !5312)
!5319 = !DILocalVariable(name: "interface", scope: !5312, file: !3, line: 254, type: !3703)
!5320 = !DILocation(line: 254, column: 24, scope: !5312)
!5321 = !DILocation(line: 257, column: 58, scope: !5312)
!5322 = !DILocation(line: 257, column: 51, scope: !5312)
!5323 = !DILocation(line: 257, column: 14, scope: !5312)
!5324 = !DILocation(line: 257, column: 12, scope: !5312)
!5325 = !DILocation(line: 258, column: 7, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 258, column: 6)
!5327 = !DILocation(line: 258, column: 6, scope: !5312)
!5328 = !DILocation(line: 259, column: 3, scope: !5326)
!5329 = !DILocation(line: 263, column: 25, scope: !5312)
!5330 = !DILocation(line: 263, column: 8, scope: !5312)
!5331 = !DILocation(line: 263, column: 6, scope: !5312)
!5332 = !DILocation(line: 264, column: 7, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 264, column: 6)
!5334 = !DILocation(line: 264, column: 6, scope: !5312)
!5335 = !DILocation(line: 266, column: 3, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 264, column: 12)
!5337 = !DILocation(line: 269, column: 23, scope: !5312)
!5338 = !DILocation(line: 269, column: 2, scope: !5312)
!5339 = !DILocation(line: 269, column: 8, scope: !5312)
!5340 = !DILocation(line: 269, column: 21, scope: !5312)
!5341 = !DILocation(line: 270, column: 14, scope: !5312)
!5342 = !DILocation(line: 270, column: 19, scope: !5312)
!5343 = !DILocation(line: 270, column: 2, scope: !5312)
!5344 = !DILocation(line: 271, column: 4, scope: !5312)
!5345 = !DILocation(line: 271, column: 9, scope: !5312)
!5346 = !DILocation(line: 271, column: 2, scope: !5312)
!5347 = !DILocation(line: 272, column: 16, scope: !5312)
!5348 = !DILocation(line: 272, column: 21, scope: !5312)
!5349 = !DILocation(line: 272, column: 2, scope: !5312)
!5350 = !DILocation(line: 275, column: 2, scope: !5312)
!5351 = !DILocation(line: 276, column: 1, scope: !5312)
!5352 = distinct !DISubprogram(name: "chaoskey_release", scope: !3, file: !3, line: 278, type: !2718, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5353 = !DILocalVariable(name: "inode", arg: 1, scope: !5352, file: !3, line: 278, type: !384)
!5354 = !DILocation(line: 278, column: 43, scope: !5352)
!5355 = !DILocalVariable(name: "file", arg: 2, scope: !5352, file: !3, line: 278, type: !311)
!5356 = !DILocation(line: 278, column: 63, scope: !5352)
!5357 = !DILocalVariable(name: "dev", scope: !5352, file: !3, line: 280, type: !3812)
!5358 = !DILocation(line: 280, column: 19, scope: !5352)
!5359 = !DILocation(line: 280, column: 25, scope: !5352)
!5360 = !DILocation(line: 280, column: 31, scope: !5352)
!5361 = !DILocalVariable(name: "interface", scope: !5352, file: !3, line: 281, type: !3703)
!5362 = !DILocation(line: 281, column: 24, scope: !5352)
!5363 = !DILocation(line: 283, column: 6, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 283, column: 6)
!5365 = !DILocation(line: 283, column: 10, scope: !5364)
!5366 = !DILocation(line: 283, column: 6, scope: !5352)
!5367 = !DILocation(line: 284, column: 3, scope: !5364)
!5368 = !DILocation(line: 286, column: 14, scope: !5352)
!5369 = !DILocation(line: 286, column: 19, scope: !5352)
!5370 = !DILocation(line: 286, column: 12, scope: !5352)
!5371 = !DILocation(line: 290, column: 14, scope: !5352)
!5372 = !DILocation(line: 290, column: 19, scope: !5352)
!5373 = !DILocation(line: 290, column: 2, scope: !5352)
!5374 = !DILocation(line: 294, column: 6, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 294, column: 6)
!5376 = !DILocation(line: 294, column: 11, scope: !5375)
!5377 = !DILocation(line: 294, column: 16, scope: !5375)
!5378 = !DILocation(line: 294, column: 6, scope: !5352)
!5379 = !DILocation(line: 296, column: 17, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 294, column: 22)
!5381 = !DILocation(line: 296, column: 22, scope: !5380)
!5382 = !DILocation(line: 296, column: 3, scope: !5380)
!5383 = !DILocation(line: 297, column: 3, scope: !5380)
!5384 = !DILocation(line: 300, column: 4, scope: !5352)
!5385 = !DILocation(line: 300, column: 9, scope: !5352)
!5386 = !DILocation(line: 300, column: 2, scope: !5352)
!5387 = !DILocation(line: 302, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 302, column: 6)
!5389 = !DILocation(line: 302, column: 12, scope: !5388)
!5390 = !DILocation(line: 302, column: 6, scope: !5352)
!5391 = !DILocation(line: 303, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 303, column: 7)
!5393 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 302, column: 21)
!5394 = !DILocation(line: 303, column: 12, scope: !5392)
!5395 = !DILocation(line: 303, column: 17, scope: !5392)
!5396 = !DILocation(line: 303, column: 7, scope: !5393)
!5397 = !DILocation(line: 304, column: 18, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 303, column: 23)
!5399 = !DILocation(line: 304, column: 23, scope: !5398)
!5400 = !DILocation(line: 304, column: 4, scope: !5398)
!5401 = !DILocation(line: 305, column: 18, scope: !5398)
!5402 = !DILocation(line: 305, column: 4, scope: !5398)
!5403 = !DILocation(line: 306, column: 3, scope: !5398)
!5404 = !DILocation(line: 307, column: 18, scope: !5392)
!5405 = !DILocation(line: 307, column: 23, scope: !5392)
!5406 = !DILocation(line: 307, column: 4, scope: !5392)
!5407 = !DILocation(line: 308, column: 2, scope: !5393)
!5408 = !DILocation(line: 309, column: 17, scope: !5388)
!5409 = !DILocation(line: 309, column: 22, scope: !5388)
!5410 = !DILocation(line: 309, column: 3, scope: !5388)
!5411 = !DILocation(line: 312, column: 2, scope: !5352)
!5412 = !DILocation(line: 313, column: 1, scope: !5352)
!5413 = distinct !DISubprogram(name: "_chaoskey_fill", scope: !3, file: !3, line: 338, type: !5414, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!141, !3812}
!5416 = !DILocalVariable(name: "pscr_ret__", scope: !5417, file: !5418, line: 15, type: !1090)
!5417 = distinct !DILexicalBlock(scope: !5419, file: !5418, line: 15, column: 9)
!5418 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5419 = distinct !DISubprogram(name: "get_current", scope: !5418, file: !5418, line: 13, type: !5420, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!1090}
!5422 = !DILocation(line: 15, column: 9, scope: !5417, inlinedAt: !5423)
!5423 = distinct !DILocation(line: 340, column: 2, scope: !5413)
!5424 = !DILocalVariable(name: "__vpp_verify", scope: !5425, file: !5418, line: 15, type: !3003)
!5425 = distinct !DILexicalBlock(scope: !5417, file: !5418, line: 15, column: 9)
!5426 = !DILocation(line: 15, column: 9, scope: !5425, inlinedAt: !5423)
!5427 = !DILocalVariable(name: "pfo_val__", scope: !5428, file: !5418, line: 15, type: !376)
!5428 = distinct !DILexicalBlock(scope: !5417, file: !5418, line: 15, column: 9)
!5429 = !DILocation(line: 15, column: 9, scope: !5428, inlinedAt: !5423)
!5430 = !DILocalVariable(name: "dev", arg: 1, scope: !5413, file: !3, line: 338, type: !3812)
!5431 = !DILocation(line: 338, column: 44, scope: !5413)
!5432 = !DILocalVariable(name: "wait", scope: !5413, file: !3, line: 340, type: !5433)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1356, line: 29, size: 320, elements: !5434)
!5434 = !{!5435, !5436, !5437, !5443}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5433, file: !1356, line: 30, baseType: !7, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5433, file: !1356, line: 31, baseType: !131, size: 64, offset: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5433, file: !1356, line: 32, baseType: !5438, size: 64, offset: 128)
!5438 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1356, line: 16, baseType: !5439)
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{!141, !5442, !7, !141, !131}
!5442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5433, file: !1356, line: 33, baseType: !180, size: 128, offset: 192)
!5444 = !DILocation(line: 340, column: 2, scope: !5413)
!5445 = !{i32 -2146218561}
!5446 = !DILocalVariable(name: "result", scope: !5413, file: !3, line: 341, type: !141)
!5447 = !DILocation(line: 341, column: 6, scope: !5413)
!5448 = !DILocalVariable(name: "started", scope: !5413, file: !3, line: 342, type: !445)
!5449 = !DILocation(line: 342, column: 7, scope: !5413)
!5450 = !DILocation(line: 348, column: 6, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 348, column: 6)
!5452 = !DILocation(line: 348, column: 11, scope: !5451)
!5453 = !DILocation(line: 348, column: 20, scope: !5451)
!5454 = !DILocation(line: 348, column: 25, scope: !5451)
!5455 = !DILocation(line: 348, column: 17, scope: !5451)
!5456 = !DILocation(line: 348, column: 6, scope: !5413)
!5457 = !DILocation(line: 351, column: 3, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 348, column: 31)
!5459 = !DILocation(line: 355, column: 7, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 355, column: 6)
!5461 = !DILocation(line: 355, column: 12, scope: !5460)
!5462 = !DILocation(line: 355, column: 6, scope: !5413)
!5463 = !DILocation(line: 357, column: 3, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 355, column: 21)
!5465 = !DILocation(line: 361, column: 36, scope: !5413)
!5466 = !DILocation(line: 361, column: 41, scope: !5413)
!5467 = !DILocation(line: 361, column: 11, scope: !5413)
!5468 = !DILocation(line: 361, column: 9, scope: !5413)
!5469 = !DILocation(line: 362, column: 6, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 362, column: 6)
!5471 = !DILocation(line: 362, column: 6, scope: !5413)
!5472 = !DILocation(line: 364, column: 10, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 362, column: 14)
!5474 = !DILocation(line: 364, column: 3, scope: !5473)
!5475 = !DILocation(line: 367, column: 2, scope: !5413)
!5476 = !DILocation(line: 367, column: 7, scope: !5413)
!5477 = !DILocation(line: 367, column: 15, scope: !5413)
!5478 = !DILocation(line: 368, column: 26, scope: !5413)
!5479 = !DILocation(line: 368, column: 31, scope: !5413)
!5480 = !DILocation(line: 368, column: 11, scope: !5413)
!5481 = !DILocation(line: 368, column: 9, scope: !5413)
!5482 = !DILocation(line: 369, column: 6, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 369, column: 6)
!5484 = !DILocation(line: 369, column: 13, scope: !5483)
!5485 = !DILocation(line: 369, column: 6, scope: !5413)
!5486 = !DILocation(line: 370, column: 33, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 369, column: 18)
!5488 = !DILocation(line: 370, column: 12, scope: !5487)
!5489 = !DILocation(line: 370, column: 10, scope: !5487)
!5490 = !DILocation(line: 371, column: 3, scope: !5487)
!5491 = !DILocation(line: 371, column: 8, scope: !5487)
!5492 = !DILocation(line: 371, column: 16, scope: !5487)
!5493 = !DILocation(line: 372, column: 3, scope: !5487)
!5494 = !DILocation(line: 380, column: 12, scope: !5413)
!5495 = !DILocation(line: 380, column: 17, scope: !5413)
!5496 = !DILocation(line: 380, column: 10, scope: !5413)
!5497 = !DILocation(line: 381, column: 2, scope: !5413)
!5498 = !DILocation(line: 381, column: 7, scope: !5413)
!5499 = !DILocation(line: 381, column: 21, scope: !5413)
!5500 = !DILocalVariable(name: "__ret", scope: !5501, file: !3, line: 382, type: !269)
!5501 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 382, column: 11)
!5502 = !DILocation(line: 382, column: 11, scope: !5501)
!5503 = !DILocation(line: 382, column: 11, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 382, column: 11)
!5505 = !DILocation(line: 382, column: 11, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 382, column: 11)
!5507 = !DILocalVariable(name: "__cond", scope: !5508, file: !3, line: 382, type: !445)
!5508 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 382, column: 11)
!5509 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 382, column: 11)
!5510 = !DILocation(line: 382, column: 11, scope: !5508)
!5511 = !DILocation(line: 382, column: 11, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 382, column: 11)
!5513 = !DILocation(line: 382, column: 11, scope: !5509)
!5514 = !DILocalVariable(name: "__wq_entry", scope: !5515, file: !3, line: 382, type: !5433)
!5515 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 382, column: 11)
!5516 = !DILocation(line: 382, column: 11, scope: !5515)
!5517 = !DILocalVariable(name: "__ret", scope: !5515, file: !3, line: 382, type: !269)
!5518 = !DILocalVariable(name: "__int", scope: !5519, file: !3, line: 382, type: !269)
!5519 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 382, column: 11)
!5520 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 382, column: 11)
!5521 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 382, column: 11)
!5522 = !DILocation(line: 382, column: 11, scope: !5519)
!5523 = !DILocalVariable(name: "__cond", scope: !5524, file: !3, line: 382, type: !445)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 382, column: 11)
!5525 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 382, column: 11)
!5526 = !DILocation(line: 382, column: 11, scope: !5524)
!5527 = !DILocation(line: 382, column: 11, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 382, column: 11)
!5529 = !DILocation(line: 382, column: 11, scope: !5525)
!5530 = !DILocation(line: 382, column: 11, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 382, column: 11)
!5532 = !DILocation(line: 382, column: 11, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 382, column: 11)
!5534 = !DILocation(line: 382, column: 11, scope: !5520)
!5535 = distinct !{!5535, !5536, !5536}
!5536 = !DILocation(line: 382, column: 11, scope: !5521)
!5537 = !DILabel(scope: !5515, name: "__out", file: !3, line: 382)
!5538 = !DILocation(line: 382, column: 11, scope: !5413)
!5539 = !DILocation(line: 382, column: 9, scope: !5413)
!5540 = !DILocation(line: 387, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 387, column: 6)
!5542 = !DILocation(line: 387, column: 13, scope: !5541)
!5543 = !DILocation(line: 387, column: 6, scope: !5413)
!5544 = !DILocation(line: 388, column: 16, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 387, column: 18)
!5546 = !DILocation(line: 388, column: 21, scope: !5545)
!5547 = !DILocation(line: 388, column: 3, scope: !5545)
!5548 = !DILocation(line: 389, column: 3, scope: !5545)
!5549 = !DILocation(line: 392, column: 6, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 392, column: 6)
!5551 = !DILocation(line: 392, column: 13, scope: !5550)
!5552 = !DILocation(line: 392, column: 6, scope: !5413)
!5553 = !DILocation(line: 393, column: 10, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 392, column: 19)
!5555 = !DILocation(line: 394, column: 16, scope: !5554)
!5556 = !DILocation(line: 394, column: 21, scope: !5554)
!5557 = !DILocation(line: 394, column: 3, scope: !5554)
!5558 = !DILocation(line: 395, column: 2, scope: !5554)
!5559 = !DILocation(line: 396, column: 12, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 395, column: 9)
!5561 = !DILocation(line: 396, column: 17, scope: !5560)
!5562 = !DILocation(line: 396, column: 10, scope: !5560)
!5563 = !DILocation(line: 392, column: 16, scope: !5550)
!5564 = !DILabel(scope: !5413, name: "out", file: !3, line: 398)
!5565 = !DILocation(line: 398, column: 1, scope: !5413)
!5566 = !DILocation(line: 400, column: 27, scope: !5413)
!5567 = !DILocation(line: 400, column: 32, scope: !5413)
!5568 = !DILocation(line: 400, column: 2, scope: !5413)
!5569 = !DILocation(line: 404, column: 9, scope: !5413)
!5570 = !DILocation(line: 404, column: 2, scope: !5413)
!5571 = !DILocation(line: 405, column: 1, scope: !5413)
!5572 = distinct !DISubprogram(name: "usb_translate_errors", scope: !6, file: !6, line: 2002, type: !2849, scopeLine: 2003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5573 = !DILocalVariable(name: "error_code", arg: 1, scope: !5572, file: !6, line: 2002, type: !141)
!5574 = !DILocation(line: 2002, column: 44, scope: !5572)
!5575 = !DILocation(line: 2004, column: 10, scope: !5572)
!5576 = !DILocation(line: 2004, column: 2, scope: !5572)
!5577 = !DILocation(line: 2009, column: 10, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5572, file: !6, line: 2004, column: 22)
!5579 = !DILocation(line: 2009, column: 3, scope: !5578)
!5580 = !DILocation(line: 2011, column: 3, scope: !5578)
!5581 = !DILocation(line: 2013, column: 1, scope: !5572)
!5582 = distinct !DISubprogram(name: "copy_overflow", scope: !5097, file: !5097, line: 132, type: !5583, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !141, !283}
!5585 = !DILocalVariable(name: "size", arg: 1, scope: !5582, file: !5097, line: 132, type: !141)
!5586 = !DILocation(line: 132, column: 38, scope: !5582)
!5587 = !DILocalVariable(name: "count", arg: 2, scope: !5582, file: !5097, line: 132, type: !283)
!5588 = !DILocation(line: 132, column: 58, scope: !5582)
!5589 = !DILocalVariable(name: "__ret_warn_on", scope: !5590, file: !5097, line: 134, type: !141)
!5590 = distinct !DILexicalBlock(scope: !5582, file: !5097, line: 134, column: 2)
!5591 = !DILocation(line: 134, column: 2, scope: !5590)
!5592 = !DILocation(line: 134, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5590, file: !5097, line: 134, column: 2)
!5594 = !DILocation(line: 134, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5593, file: !5097, line: 134, column: 2)
!5596 = !DILocation(line: 134, column: 2, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5595, file: !5097, line: 134, column: 2)
!5598 = !DILocation(line: 134, column: 2, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5595, file: !5097, line: 134, column: 2)
!5600 = !DILocation(line: 134, column: 2, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5599, file: !5097, line: 134, column: 2)
!5602 = !DILocation(line: 134, column: 2, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5599, file: !5097, line: 134, column: 2)
!5604 = !{i32 -2145548406, i32 -2145548377, i32 -2145548331, i32 -2145548273, i32 -2145548219, i32 -2145548165, i32 -2145548110, i32 -2145548079}
!5605 = !DILocation(line: 134, column: 2, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5599, file: !5097, line: 134, column: 2)
!5607 = !{i32 -2145547659, i32 -2145547652, i32 -2145547600, i32 -2145547569, i32 -2145547539}
!5608 = !DILocation(line: 134, column: 2, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5599, file: !5097, line: 134, column: 2)
!5610 = !DILocation(line: 134, column: 2, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5595, file: !5097, line: 134, column: 2)
!5612 = !DILocation(line: 135, column: 1, scope: !5582)
!5613 = distinct !DISubprogram(name: "check_object_size", scope: !5097, file: !5097, line: 122, type: !5614, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{null, !3003, !283, !445}
!5616 = !DILocalVariable(name: "ptr", arg: 1, scope: !5613, file: !5097, line: 122, type: !3003)
!5617 = !DILocation(line: 122, column: 50, scope: !5613)
!5618 = !DILocalVariable(name: "n", arg: 2, scope: !5613, file: !5097, line: 122, type: !283)
!5619 = !DILocation(line: 122, column: 69, scope: !5613)
!5620 = !DILocalVariable(name: "to_user", arg: 3, scope: !5613, file: !5097, line: 123, type: !445)
!5621 = !DILocation(line: 123, column: 15, scope: !5613)
!5622 = !DILocation(line: 124, column: 3, scope: !5613)
!5623 = distinct !DISubprogram(name: "iminor", scope: !38, file: !38, line: 875, type: !5624, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!7, !2568}
!5626 = !DILocalVariable(name: "inode", arg: 1, scope: !5623, file: !38, line: 875, type: !2568)
!5627 = !DILocation(line: 875, column: 51, scope: !5623)
!5628 = !DILocation(line: 877, column: 9, scope: !5623)
!5629 = !DILocation(line: 877, column: 2, scope: !5623)
!5630 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !5631, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{!131, !3703}
!5633 = !DILocalVariable(name: "intf", arg: 1, scope: !5630, file: !6, line: 263, type: !3703)
!5634 = !DILocation(line: 263, column: 60, scope: !5630)
!5635 = !DILocation(line: 265, column: 26, scope: !5630)
!5636 = !DILocation(line: 265, column: 32, scope: !5630)
!5637 = !DILocation(line: 265, column: 9, scope: !5630)
!5638 = !DILocation(line: 265, column: 2, scope: !5630)
!5639 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5640, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!131, !5642}
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!5644 = !DILocalVariable(name: "dev", arg: 1, scope: !5639, file: !67, line: 655, type: !5642)
!5645 = !DILocation(line: 655, column: 58, scope: !5639)
!5646 = !DILocation(line: 657, column: 9, scope: !5639)
!5647 = !DILocation(line: 657, column: 14, scope: !5639)
!5648 = !DILocation(line: 657, column: 2, scope: !5639)
