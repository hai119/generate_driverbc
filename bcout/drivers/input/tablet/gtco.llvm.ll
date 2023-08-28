; ModuleID = '../bcout/drivers/input/tablet/gtco.llvm.bc'
source_filename = "drivers/input/tablet/gtco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_gtco_driverinfo_table_init6:\09\09\09"
module asm ".long\09gtco_driverinfo_table_init - .\09\09\09"
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
%struct.gtco = type { %struct.input_dev*, %struct.usb_interface*, %struct.urb*, i64, i8*, [64 x i8], i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32 }
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
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.hid_descriptor = type <{ %struct.usb_descriptor_header, i16, i8, i8, i8, i16 }>
%struct.usb_descriptor_header = type { i8, i8 }

@__UNIQUE_ID___addressable_gtco_driverinfo_table_init212 = internal global i8* bitcast (i32 ()* @gtco_driverinfo_table_init to i8*), section ".discard.addressable", align 8, !dbg !0
@gtco_driverinfo_table = internal global %struct.usb_driver { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @gtco_probe, void (%struct.usb_interface*)* @gtco_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([6 x %struct.usb_device_id], [6 x %struct.usb_device_id]* @gtco_usbid_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !3829
@__exitcall_gtco_driverinfo_table_exit = internal global void ()* @gtco_driverinfo_table_exit, section ".exitcall.exit", align 8, !dbg !3809
@__UNIQUE_ID_description213 = internal constant [43 x i8] c"gtco.description=GTCO digitizer USB driver\00", section ".modinfo", align 1, !dbg !3814
@__UNIQUE_ID_file214 = internal constant [36 x i8] c"gtco.file=drivers/input/tablet/gtco\00", section ".modinfo", align 1, !dbg !3819
@__UNIQUE_ID_license215 = internal constant [17 x i8] c"gtco.license=GPL\00", section ".modinfo", align 1, !dbg !3824
@.str = private unnamed_addr constant [5 x i8] c"gtco\00", align 1
@gtco_usbid_table = internal constant [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1932, i16 1024, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1932, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1932, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1932, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 3, i16 1932, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !3890
@.str.1 = private unnamed_addr constant [16 x i8] c"No more memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"No more memory for us buffers\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to allocate URB\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid number of endpoints\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Can't retrieve exta USB descriptor to get hid report descriptor length\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"No more memory for report\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to get HID Report Descriptor of size: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"GTCO_CalComp\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Not enough data (need %d, have %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Variable\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Var|Const\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Collection level %d would exceed limit of %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Collection level already at zero\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"USAGE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"LOG_MIN\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"LOG_MAX\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"PHYS_MIN\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"PHYS_MAX\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"EXP\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"UNIT\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"REPORT_SZ\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"REPORT_ID\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"REPORT_CNT\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"usb_submit_urb failed rc=0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"gtco driver disconnected\0A\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_gtco_driverinfo_table_init212 to i8*), i8* bitcast (void ()* @gtco_driverinfo_table_exit to i8*), i8* bitcast (void ()** @__exitcall_gtco_driverinfo_table_exit to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_description213, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_file214, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__UNIQUE_ID_license215, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @gtco_driverinfo_table_init() #0 section ".init.text" !dbg !3898 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @gtco_driverinfo_table, %struct.module* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #9, !dbg !3901
  ret i32 %call, !dbg !3901
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @gtco_driverinfo_table_exit() #0 section ".exit.text" !dbg !3902 {
entry:
  call void @usb_deregister(%struct.usb_driver* @gtco_driverinfo_table) #9, !dbg !3903
  ret void, !dbg !3903
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gtco_probe(%struct.usb_interface* %usbinterface, %struct.usb_device_id* %id) #2 !dbg !3904 {
entry:
  %retval = alloca i32, align 4
  %usbinterface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %gtco = alloca %struct.gtco*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %hid_desc = alloca %struct.hid_descriptor*, align 8
  %report = alloca i8*, align 8
  %result = alloca i32, align 4
  %retry = alloca i32, align 4
  %error = alloca i32, align 4
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %udev = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %usbinterface, %struct.usb_interface** %usbinterface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %usbinterface.addr, metadata !3905, metadata !DIExpression()), !dbg !3906
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.declare(metadata %struct.gtco** %gtco, metadata !3909, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.declare(metadata %struct.hid_descriptor** %hid_desc, metadata !4266, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata i8** %report, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4283, metadata !DIExpression()), !dbg !4284
  store i32 0, i32* %result, align 4, !dbg !4284
  call void @llvm.dbg.declare(metadata i32* %retry, metadata !4285, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4287, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !4289, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4292, metadata !DIExpression()), !dbg !4293
  %0 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4294
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4295
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4293
  %call1 = call i8* @kzalloc(i64 144, i32 3264) #9, !dbg !4296
  %1 = bitcast i8* %call1 to %struct.gtco*, !dbg !4296
  store %struct.gtco* %1, %struct.gtco** %gtco, align 8, !dbg !4297
  %call2 = call %struct.input_dev* @input_allocate_device() #9, !dbg !4298
  store %struct.input_dev* %call2, %struct.input_dev** %input_dev, align 8, !dbg !4299
  %2 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4300
  %tobool = icmp ne %struct.gtco* %2, null, !dbg !4300
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4302

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4303
  %tobool3 = icmp ne %struct.input_dev* %3, null, !dbg !4303
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4304

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4305
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 7, !dbg !4305
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4305
  store i32 -12, i32* %error, align 4, !dbg !4307
  br label %err_free_devs, !dbg !4308

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4309
  %6 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4310
  %inputdevice = getelementptr inbounds %struct.gtco, %struct.gtco* %6, i32 0, i32 0, !dbg !4311
  store %struct.input_dev* %5, %struct.input_dev** %inputdevice, align 8, !dbg !4312
  %7 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4313
  %8 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4314
  %intf = getelementptr inbounds %struct.gtco, %struct.gtco* %8, i32 0, i32 1, !dbg !4315
  store %struct.usb_interface* %7, %struct.usb_interface** %intf, align 8, !dbg !4316
  %9 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4317
  %10 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4318
  %buf_dma = getelementptr inbounds %struct.gtco, %struct.gtco* %10, i32 0, i32 3, !dbg !4319
  %call4 = call i8* @usb_alloc_coherent(%struct.usb_device* %9, i64 10, i32 3264, i64* %buf_dma) #9, !dbg !4320
  %11 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4321
  %buffer = getelementptr inbounds %struct.gtco, %struct.gtco* %11, i32 0, i32 4, !dbg !4322
  store i8* %call4, i8** %buffer, align 8, !dbg !4323
  %12 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4324
  %buffer5 = getelementptr inbounds %struct.gtco, %struct.gtco* %12, i32 0, i32 4, !dbg !4326
  %13 = load i8*, i8** %buffer5, align 8, !dbg !4326
  %tobool6 = icmp ne i8* %13, null, !dbg !4324
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !4327

if.then7:                                         ; preds = %if.end
  %14 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4328
  %dev8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 7, !dbg !4328
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4328
  store i32 -12, i32* %error, align 4, !dbg !4330
  br label %err_free_devs, !dbg !4331

if.end9:                                          ; preds = %if.end
  %call10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4332
  %15 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4333
  %urbinfo = getelementptr inbounds %struct.gtco, %struct.gtco* %15, i32 0, i32 2, !dbg !4334
  store %struct.urb* %call10, %struct.urb** %urbinfo, align 8, !dbg !4335
  %16 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4336
  %urbinfo11 = getelementptr inbounds %struct.gtco, %struct.gtco* %16, i32 0, i32 2, !dbg !4338
  %17 = load %struct.urb*, %struct.urb** %urbinfo11, align 8, !dbg !4338
  %tobool12 = icmp ne %struct.urb* %17, null, !dbg !4336
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !4339

if.then13:                                        ; preds = %if.end9
  %18 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4340
  %dev14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 7, !dbg !4340
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !4340
  store i32 -12, i32* %error, align 4, !dbg !4342
  br label %err_free_buf, !dbg !4343

if.end15:                                         ; preds = %if.end9
  %19 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4344
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 1, !dbg !4346
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4346
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %20, i32 0, i32 0, !dbg !4347
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 4, !dbg !4348
  %21 = load i8, i8* %bNumEndpoints, align 4, !dbg !4348
  %conv = zext i8 %21 to i32, !dbg !4344
  %cmp = icmp slt i32 %conv, 1, !dbg !4349
  br i1 %cmp, label %if.then17, label %if.end19, !dbg !4350

if.then17:                                        ; preds = %if.end15
  %22 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4351
  %dev18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 7, !dbg !4351
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !4351
  store i32 -22, i32* %error, align 4, !dbg !4353
  br label %err_free_urb, !dbg !4354

if.end19:                                         ; preds = %if.end15
  %23 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4355
  %cur_altsetting20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 1, !dbg !4356
  %24 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting20, align 8, !dbg !4356
  %endpoint21 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %24, i32 0, i32 3, !dbg !4357
  %25 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint21, align 8, !dbg !4357
  %arrayidx = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %25, i64 0, !dbg !4355
  %desc22 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx, i32 0, i32 0, !dbg !4358
  store %struct.usb_endpoint_descriptor* %desc22, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4359
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4360
  %call23 = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %26) #9, !dbg !4362
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4362
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4363

if.then25:                                        ; preds = %if.end19
  br label %if.end26, !dbg !4364

if.end26:                                         ; preds = %if.then25, %if.end19
  %27 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4365
  %cur_altsetting27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 1, !dbg !4365
  %28 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting27, align 8, !dbg !4365
  %extra = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %28, i32 0, i32 2, !dbg !4365
  %29 = load i8*, i8** %extra, align 8, !dbg !4365
  %30 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4365
  %cur_altsetting28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 1, !dbg !4365
  %31 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting28, align 8, !dbg !4365
  %extralen = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %31, i32 0, i32 1, !dbg !4365
  %32 = load i32, i32* %extralen, align 4, !dbg !4365
  %33 = bitcast %struct.hid_descriptor** %hid_desc to i8**, !dbg !4365
  %call29 = call i32 @__usb_get_extra_descriptor(i8* %29, i32 %32, i8 zeroext 33, i8** %33, i64 9) #9, !dbg !4365
  %cmp30 = icmp ne i32 %call29, 0, !dbg !4367
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !4368

if.then32:                                        ; preds = %if.end26
  %34 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4369
  %dev33 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 7, !dbg !4369
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev33, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !4369
  store i32 -5, i32* %error, align 4, !dbg !4371
  br label %err_free_urb, !dbg !4372

if.end34:                                         ; preds = %if.end26
  %35 = load %struct.hid_descriptor*, %struct.hid_descriptor** %hid_desc, align 8, !dbg !4373
  %wDescriptorLength = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %35, i32 0, i32 5, !dbg !4373
  %36 = load i16, i16* %wDescriptorLength, align 1, !dbg !4373
  %conv35 = zext i16 %36 to i64, !dbg !4373
  %call36 = call i8* @kzalloc(i64 %conv35, i32 3264) #9, !dbg !4374
  store i8* %call36, i8** %report, align 8, !dbg !4375
  %37 = load i8*, i8** %report, align 8, !dbg !4376
  %tobool37 = icmp ne i8* %37, null, !dbg !4376
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !4378

if.then38:                                        ; preds = %if.end34
  %38 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4379
  %dev39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 7, !dbg !4379
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !4379
  store i32 -12, i32* %error, align 4, !dbg !4381
  br label %err_free_urb, !dbg !4382

if.end40:                                         ; preds = %if.end34
  store i32 0, i32* %retry, align 4, !dbg !4383
  br label %for.cond, !dbg !4385

for.cond:                                         ; preds = %for.inc, %if.end40
  %39 = load i32, i32* %retry, align 4, !dbg !4386
  %cmp41 = icmp slt i32 %39, 3, !dbg !4388
  br i1 %cmp41, label %for.body, label %for.end, !dbg !4389

for.body:                                         ; preds = %for.cond
  %40 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4390
  %41 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4392
  %call43 = call i32 @__create_pipe(%struct.usb_device* %41, i32 0) #9, !dbg !4392
  %or = or i32 -2147483648, %call43, !dbg !4392
  %or44 = or i32 %or, 128, !dbg !4392
  %42 = load i8*, i8** %report, align 8, !dbg !4393
  %43 = load %struct.hid_descriptor*, %struct.hid_descriptor** %hid_desc, align 8, !dbg !4394
  %wDescriptorLength45 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %43, i32 0, i32 5, !dbg !4394
  %44 = load i16, i16* %wDescriptorLength45, align 1, !dbg !4394
  %call46 = call i32 @usb_control_msg(%struct.usb_device* %40, i32 %or44, i8 zeroext 6, i8 zeroext -127, i16 zeroext 8704, i16 zeroext 0, i8* %42, i16 zeroext %44, i32 5000) #9, !dbg !4395
  store i32 %call46, i32* %result, align 4, !dbg !4396
  %45 = load i32, i32* %result, align 4, !dbg !4397
  %46 = load %struct.hid_descriptor*, %struct.hid_descriptor** %hid_desc, align 8, !dbg !4399
  %wDescriptorLength47 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %46, i32 0, i32 5, !dbg !4399
  %47 = load i16, i16* %wDescriptorLength47, align 1, !dbg !4399
  %conv48 = zext i16 %47 to i32, !dbg !4399
  %cmp49 = icmp eq i32 %45, %conv48, !dbg !4400
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !4401

if.then51:                                        ; preds = %for.body
  %48 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4402
  %49 = load i8*, i8** %report, align 8, !dbg !4404
  %50 = load i32, i32* %result, align 4, !dbg !4405
  call void @parse_hid_report_descriptor(%struct.gtco* %48, i8* %49, i32 %50) #9, !dbg !4406
  br label %for.end, !dbg !4407

if.end52:                                         ; preds = %for.body
  br label %for.inc, !dbg !4408

for.inc:                                          ; preds = %if.end52
  %51 = load i32, i32* %retry, align 4, !dbg !4409
  %inc = add i32 %51, 1, !dbg !4409
  store i32 %inc, i32* %retry, align 4, !dbg !4409
  br label %for.cond, !dbg !4410, !llvm.loop !4411

for.end:                                          ; preds = %if.then51, %for.cond
  %52 = load i8*, i8** %report, align 8, !dbg !4413
  call void @kfree(i8* %52) #9, !dbg !4414
  %53 = load i32, i32* %result, align 4, !dbg !4415
  %54 = load %struct.hid_descriptor*, %struct.hid_descriptor** %hid_desc, align 8, !dbg !4417
  %wDescriptorLength53 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %54, i32 0, i32 5, !dbg !4417
  %55 = load i16, i16* %wDescriptorLength53, align 1, !dbg !4417
  %conv54 = zext i16 %55 to i32, !dbg !4417
  %cmp55 = icmp ne i32 %53, %conv54, !dbg !4418
  br i1 %cmp55, label %if.then57, label %if.end61, !dbg !4419

if.then57:                                        ; preds = %for.end
  %56 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4420
  %dev58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 7, !dbg !4420
  %57 = load %struct.hid_descriptor*, %struct.hid_descriptor** %hid_desc, align 8, !dbg !4420
  %wDescriptorLength59 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %57, i32 0, i32 5, !dbg !4420
  %58 = load i16, i16* %wDescriptorLength59, align 1, !dbg !4420
  %conv60 = zext i16 %58 to i32, !dbg !4420
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %conv60) #10, !dbg !4420
  store i32 -5, i32* %error, align 4, !dbg !4422
  br label %err_free_urb, !dbg !4423

if.end61:                                         ; preds = %for.end
  %59 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4424
  %60 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4425
  %usbpath = getelementptr inbounds %struct.gtco, %struct.gtco* %60, i32 0, i32 5, !dbg !4426
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %usbpath, i64 0, i64 0, !dbg !4425
  %call62 = call i32 @usb_make_path(%struct.usb_device* %59, i8* %arraydecay, i64 64) #9, !dbg !4427
  %61 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4428
  %usbpath63 = getelementptr inbounds %struct.gtco, %struct.gtco* %61, i32 0, i32 5, !dbg !4429
  %arraydecay64 = getelementptr inbounds [64 x i8], [64 x i8]* %usbpath63, i64 0, i64 0, !dbg !4428
  %call65 = call i64 @strlcat(i8* %arraydecay64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 64) #9, !dbg !4430
  %62 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4431
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 31, !dbg !4432
  store i32 (%struct.input_dev*)* @gtco_input_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !4433
  %63 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4434
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 32, !dbg !4435
  store void (%struct.input_dev*)* @gtco_input_close, void (%struct.input_dev*)** %close, align 8, !dbg !4436
  %64 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4437
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 0, !dbg !4438
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %name, align 8, !dbg !4439
  %65 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4440
  %usbpath66 = getelementptr inbounds %struct.gtco, %struct.gtco* %65, i32 0, i32 5, !dbg !4441
  %arraydecay67 = getelementptr inbounds [64 x i8], [64 x i8]* %usbpath66, i64 0, i64 0, !dbg !4440
  %66 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4442
  %phys = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 1, !dbg !4443
  store i8* %arraydecay67, i8** %phys, align 8, !dbg !4444
  %67 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4445
  %68 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4446
  %69 = bitcast %struct.gtco* %68 to i8*, !dbg !4446
  call void @input_set_drvdata(%struct.input_dev* %67, i8* %69) #9, !dbg !4447
  %70 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4448
  call void @gtco_setup_caps(%struct.input_dev* %70) #9, !dbg !4449
  %71 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4450
  %72 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4451
  %id68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 3, !dbg !4452
  call void @usb_to_input_id(%struct.usb_device* %71, %struct.input_id* %id68) #9, !dbg !4453
  %73 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4454
  %dev69 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %73, i32 0, i32 7, !dbg !4455
  %74 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4456
  %dev70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %74, i32 0, i32 40, !dbg !4457
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev70, i32 0, i32 1, !dbg !4458
  store %struct.device* %dev69, %struct.device** %parent, align 8, !dbg !4459
  %75 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4460
  %urbinfo71 = getelementptr inbounds %struct.gtco, %struct.gtco* %75, i32 0, i32 2, !dbg !4461
  %76 = load %struct.urb*, %struct.urb** %urbinfo71, align 8, !dbg !4461
  %77 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4462
  %78 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4463
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4463
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %79, i32 0, i32 2, !dbg !4463
  %80 = load i8, i8* %bEndpointAddress, align 1, !dbg !4463
  %conv72 = zext i8 %80 to i32, !dbg !4463
  %call73 = call i32 @__create_pipe(%struct.usb_device* %78, i32 %conv72) #9, !dbg !4463
  %or74 = or i32 1073741824, %call73, !dbg !4463
  %or75 = or i32 %or74, 128, !dbg !4463
  %81 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4464
  %buffer76 = getelementptr inbounds %struct.gtco, %struct.gtco* %81, i32 0, i32 4, !dbg !4465
  %82 = load i8*, i8** %buffer76, align 8, !dbg !4465
  %83 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4466
  %84 = bitcast %struct.gtco* %83 to i8*, !dbg !4466
  %85 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !4467
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %85, i32 0, i32 5, !dbg !4468
  %86 = load i8, i8* %bInterval, align 1, !dbg !4468
  %conv77 = zext i8 %86 to i32, !dbg !4467
  call void @usb_fill_int_urb(%struct.urb* %76, %struct.usb_device* %77, i32 %or75, i8* %82, i32 10, void (%struct.urb*)* @gtco_urb_callback, i8* %84, i32 %conv77) #9, !dbg !4469
  %87 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4470
  %buf_dma78 = getelementptr inbounds %struct.gtco, %struct.gtco* %87, i32 0, i32 3, !dbg !4471
  %88 = load i64, i64* %buf_dma78, align 8, !dbg !4471
  %89 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4472
  %urbinfo79 = getelementptr inbounds %struct.gtco, %struct.gtco* %89, i32 0, i32 2, !dbg !4473
  %90 = load %struct.urb*, %struct.urb** %urbinfo79, align 8, !dbg !4473
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 15, !dbg !4474
  store i64 %88, i64* %transfer_dma, align 8, !dbg !4475
  %91 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4476
  %urbinfo80 = getelementptr inbounds %struct.gtco, %struct.gtco* %91, i32 0, i32 2, !dbg !4477
  %92 = load %struct.urb*, %struct.urb** %urbinfo80, align 8, !dbg !4477
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 13, !dbg !4478
  %93 = load i32, i32* %transfer_flags, align 4, !dbg !4479
  %or81 = or i32 %93, 4, !dbg !4479
  store i32 %or81, i32* %transfer_flags, align 4, !dbg !4479
  %94 = load %struct.usb_interface*, %struct.usb_interface** %usbinterface.addr, align 8, !dbg !4480
  %95 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4481
  %96 = bitcast %struct.gtco* %95 to i8*, !dbg !4481
  call void @usb_set_intfdata(%struct.usb_interface* %94, i8* %96) #9, !dbg !4482
  %97 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4483
  %call82 = call i32 @input_register_device(%struct.input_dev* %97) #9, !dbg !4484
  store i32 %call82, i32* %error, align 4, !dbg !4485
  %98 = load i32, i32* %error, align 4, !dbg !4486
  %tobool83 = icmp ne i32 %98, 0, !dbg !4486
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !4488

if.then84:                                        ; preds = %if.end61
  br label %err_free_urb, !dbg !4489

if.end85:                                         ; preds = %if.end61
  store i32 0, i32* %retval, align 4, !dbg !4490
  br label %return, !dbg !4490

err_free_urb:                                     ; preds = %if.then84, %if.then57, %if.then38, %if.then32, %if.then17
  call void @llvm.dbg.label(metadata !4491), !dbg !4492
  %99 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4493
  %urbinfo86 = getelementptr inbounds %struct.gtco, %struct.gtco* %99, i32 0, i32 2, !dbg !4494
  %100 = load %struct.urb*, %struct.urb** %urbinfo86, align 8, !dbg !4494
  call void @usb_free_urb(%struct.urb* %100) #9, !dbg !4495
  br label %err_free_buf, !dbg !4495

err_free_buf:                                     ; preds = %err_free_urb, %if.then13
  call void @llvm.dbg.label(metadata !4496), !dbg !4497
  %101 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4498
  %102 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4499
  %buffer87 = getelementptr inbounds %struct.gtco, %struct.gtco* %102, i32 0, i32 4, !dbg !4500
  %103 = load i8*, i8** %buffer87, align 8, !dbg !4500
  %104 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4501
  %buf_dma88 = getelementptr inbounds %struct.gtco, %struct.gtco* %104, i32 0, i32 3, !dbg !4502
  %105 = load i64, i64* %buf_dma88, align 8, !dbg !4502
  call void @usb_free_coherent(%struct.usb_device* %101, i64 10, i8* %103, i64 %105) #9, !dbg !4503
  br label %err_free_devs, !dbg !4503

err_free_devs:                                    ; preds = %err_free_buf, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !4504), !dbg !4505
  %106 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4506
  call void @input_free_device(%struct.input_dev* %106) #9, !dbg !4507
  %107 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4508
  %108 = bitcast %struct.gtco* %107 to i8*, !dbg !4508
  call void @kfree(i8* %108) #9, !dbg !4509
  %109 = load i32, i32* %error, align 4, !dbg !4510
  store i32 %109, i32* %retval, align 4, !dbg !4511
  br label %return, !dbg !4511

return:                                           ; preds = %err_free_devs, %if.end85
  %110 = load i32, i32* %retval, align 4, !dbg !4512
  ret i32 %110, !dbg !4512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gtco_disconnect(%struct.usb_interface* %interface) #2 !dbg !4513 {
entry:
  %interface.addr = alloca %struct.usb_interface*, align 8
  %gtco = alloca %struct.gtco*, align 8
  %udev = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %interface, %struct.usb_interface** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.declare(metadata %struct.gtco** %gtco, metadata !4516, metadata !DIExpression()), !dbg !4517
  %0 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4518
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4519
  %1 = bitcast i8* %call to %struct.gtco*, !dbg !4519
  store %struct.gtco* %1, %struct.gtco** %gtco, align 8, !dbg !4517
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4520, metadata !DIExpression()), !dbg !4521
  %2 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4522
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %2) #9, !dbg !4523
  store %struct.usb_device* %call1, %struct.usb_device** %udev, align 8, !dbg !4521
  %3 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4524
  %tobool = icmp ne %struct.gtco* %3, null, !dbg !4524
  br i1 %tobool, label %if.then, label %if.end, !dbg !4526

if.then:                                          ; preds = %entry
  %4 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4527
  %inputdevice = getelementptr inbounds %struct.gtco, %struct.gtco* %4, i32 0, i32 0, !dbg !4529
  %5 = load %struct.input_dev*, %struct.input_dev** %inputdevice, align 8, !dbg !4529
  call void @input_unregister_device(%struct.input_dev* %5) #9, !dbg !4530
  %6 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4531
  %urbinfo = getelementptr inbounds %struct.gtco, %struct.gtco* %6, i32 0, i32 2, !dbg !4532
  %7 = load %struct.urb*, %struct.urb** %urbinfo, align 8, !dbg !4532
  call void @usb_kill_urb(%struct.urb* %7) #9, !dbg !4533
  %8 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4534
  %urbinfo2 = getelementptr inbounds %struct.gtco, %struct.gtco* %8, i32 0, i32 2, !dbg !4535
  %9 = load %struct.urb*, %struct.urb** %urbinfo2, align 8, !dbg !4535
  call void @usb_free_urb(%struct.urb* %9) #9, !dbg !4536
  %10 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4537
  %11 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4538
  %buffer = getelementptr inbounds %struct.gtco, %struct.gtco* %11, i32 0, i32 4, !dbg !4539
  %12 = load i8*, i8** %buffer, align 8, !dbg !4539
  %13 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4540
  %buf_dma = getelementptr inbounds %struct.gtco, %struct.gtco* %13, i32 0, i32 3, !dbg !4541
  %14 = load i64, i64* %buf_dma, align 8, !dbg !4541
  call void @usb_free_coherent(%struct.usb_device* %10, i64 10, i8* %12, i64 %14) #9, !dbg !4542
  %15 = load %struct.gtco*, %struct.gtco** %gtco, align 8, !dbg !4543
  %16 = bitcast %struct.gtco* %15 to i8*, !dbg !4543
  call void @kfree(i8* %16) #9, !dbg !4544
  br label %if.end, !dbg !4545

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.usb_interface*, %struct.usb_interface** %interface.addr, align 8, !dbg !4546
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 7, !dbg !4546
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !4546
  ret void, !dbg !4547
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4548 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4553, metadata !DIExpression()), !dbg !4555
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4555
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4555
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4555
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4555
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4555
  store i8* %2, i8** %__mptr, align 8, !dbg !4555
  br label %do.body, !dbg !4555

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4556

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4555
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4555
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4555
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4556
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4555
  ret %struct.usb_device* %5, !dbg !4558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4559 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4562, metadata !DIExpression()), !dbg !4566
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4572, metadata !DIExpression()), !dbg !4573
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4576, metadata !DIExpression()), !dbg !4577
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4578, metadata !DIExpression()), !dbg !4582
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4584, metadata !DIExpression()), !dbg !4588
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4590, metadata !DIExpression()), !dbg !4594
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4599, metadata !DIExpression()), !dbg !4600
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !4602
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4603, metadata !DIExpression()), !dbg !4604
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !4606
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4607, metadata !DIExpression()), !dbg !4608
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  %0 = load i64, i64* %size.addr, align 8, !dbg !4619
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4620
  %or = or i32 %1, 256, !dbg !4621
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4622
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4623
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4624

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4625
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4626
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4627

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4628
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4629
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4630
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4631
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4608
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4632
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4633
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4634
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4635
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4636
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4637
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4638
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4638
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4638
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4638
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4638
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4639
  br label %kmalloc.exit, !dbg !4639

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4640
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4641
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4643

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4644
  br label %kmalloc_index.exit.i, !dbg !4644

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4645
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4647
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4648

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4649
  br label %kmalloc_index.exit.i, !dbg !4649

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4650
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4652
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4653

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4654
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4655
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4656

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4660
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4661

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4662
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4663
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4664

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4668
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4669

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4670
  br label %kmalloc_index.exit.i, !dbg !4670

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4673
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4674

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4678
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4679

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4680
  br label %kmalloc_index.exit.i, !dbg !4680

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4683
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4684

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4688
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4689

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4691
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4693
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4694

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4698
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4699

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4703
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4704

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4708
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4709

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4713
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4714

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4718
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4719

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4723
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4724

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4726
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4728
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4729

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4730
  br label %kmalloc_index.exit.i, !dbg !4730

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4731
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4733
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4734

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4735
  br label %kmalloc_index.exit.i, !dbg !4735

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4736
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4738
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4739

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4740
  br label %kmalloc_index.exit.i, !dbg !4740

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4741
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4743
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4744

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4745
  br label %kmalloc_index.exit.i, !dbg !4745

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4746
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4748
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4749

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4750
  br label %kmalloc_index.exit.i, !dbg !4750

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4751
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4753
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4754

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4755
  br label %kmalloc_index.exit.i, !dbg !4755

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4756
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4758
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4759

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4760
  br label %kmalloc_index.exit.i, !dbg !4760

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4761
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4763
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4764

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4765
  br label %kmalloc_index.exit.i, !dbg !4765

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4766
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4768
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4769

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4770
  br label %kmalloc_index.exit.i, !dbg !4770

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4771
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4773
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4774

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4775
  br label %kmalloc_index.exit.i, !dbg !4775

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4776
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4778
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4779

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4780
  br label %kmalloc_index.exit.i, !dbg !4780

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4783
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4784

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4785
  br label %kmalloc_index.exit.i, !dbg !4785

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4786, !srcloc !4789
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !4790, !srcloc !4793
  unreachable, !dbg !4794

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4795
  store i32 %45, i32* %index.i, align 4, !dbg !4796
  %46 = load i32, i32* %index.i, align 4, !dbg !4797
  %tobool.i = icmp ne i32 %46, 0, !dbg !4797
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4799

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4800
  br label %kmalloc.exit, !dbg !4800

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4801
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4802
  %and.i.i = and i32 %48, 17, !dbg !4802
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4802
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4802
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4802
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4802
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4804

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4805
  br label %kmalloc_type.exit.i, !dbg !4805

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4806
  %and2.i.i = and i32 %49, 1, !dbg !4807
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4806
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4806
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4806
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4808
  br label %kmalloc_type.exit.i, !dbg !4808

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4809
  %idxprom.i = zext i32 %51 to i64, !dbg !4810
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4810
  %52 = load i32, i32* %index.i, align 4, !dbg !4811
  %idxprom6.i = zext i32 %52 to i64, !dbg !4810
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4810
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4810
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4812
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4813
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4814
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4815
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4816
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4816
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4816
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4816
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4816
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4577
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4817
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4818
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4819
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4820
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4821
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4822
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4823
  store i8* %62, i8** %retval.i, align 8, !dbg !4824
  br label %kmalloc.exit, !dbg !4824

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4825
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4826
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4827
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4827
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4827
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4827
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4827
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4828
  br label %kmalloc.exit, !dbg !4828

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4829
  ret i8* %65, !dbg !4830
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %epd) #2 !dbg !4831 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4838
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !4839
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !4839
  %conv = zext i8 %1 to i32, !dbg !4838
  %and = and i32 %conv, 3, !dbg !4840
  %cmp = icmp eq i32 %and, 3, !dbg !4841
  %conv1 = zext i1 %cmp to i32, !dbg !4841
  ret i32 %conv1, !dbg !4842
}

; Function Attrs: noredzone
declare dso_local i32 @__usb_get_extra_descriptor(i8*, i32, i8 zeroext, i8**, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !4843 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4850
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !4851
  %1 = load i32, i32* %devnum, align 8, !dbg !4851
  %shl = shl i32 %1, 8, !dbg !4852
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !4853
  %shl1 = shl i32 %2, 15, !dbg !4854
  %or = or i32 %shl, %shl1, !dbg !4855
  ret i32 %or, !dbg !4856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @parse_hid_report_descriptor(%struct.gtco* %device, i8* %report, i32 %length) #2 !dbg !4857 {
entry:
  %p.addr.i.i257 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i257, metadata !4860, metadata !DIExpression()), !dbg !4867
  %p.addr.i258 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i258, metadata !4876, metadata !DIExpression()), !dbg !4877
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !4878, metadata !DIExpression()), !dbg !4884
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !4890, metadata !DIExpression()), !dbg !4891
  %device.addr = alloca %struct.gtco*, align 8
  %report.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %ddev = alloca %struct.device*, align 8
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %prefix = alloca i8, align 1
  %size = alloca i8, align 1
  %tag = alloca i8, align 1
  %type = alloca i8, align 1
  %data = alloca i8, align 1
  %data16 = alloca i16, align 2
  %data32 = alloca i32, align 4
  %inputnum = alloca i32, align 4
  %usage = alloca i32, align 4
  %globalval = alloca [12 x i32], align 16
  %oldval = alloca [12 x i32], align 16
  %maintype = alloca i8, align 1
  %globtype = alloca [12 x i8], align 1
  %indent = alloca i32, align 4
  %indentstr = alloca [11 x i8], align 1
  store %struct.gtco* %device, %struct.gtco** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gtco** %device.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  store i8* %report, i8** %report.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %report.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.declare(metadata %struct.device** %ddev, metadata !4898, metadata !DIExpression()), !dbg !4899
  %0 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !4900
  %intf = getelementptr inbounds %struct.gtco, %struct.gtco* %0, i32 0, i32 1, !dbg !4901
  %1 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !4901
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 7, !dbg !4902
  store %struct.device* %dev, %struct.device** %ddev, align 8, !dbg !4899
  call void @llvm.dbg.declare(metadata i32* %x, metadata !4903, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4905, metadata !DIExpression()), !dbg !4906
  store i32 0, i32* %i, align 4, !dbg !4906
  call void @llvm.dbg.declare(metadata i8* %prefix, metadata !4907, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.declare(metadata i8* %size, metadata !4909, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.declare(metadata i8* %tag, metadata !4911, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.declare(metadata i8* %type, metadata !4913, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.declare(metadata i8* %data, metadata !4915, metadata !DIExpression()), !dbg !4916
  store i8 0, i8* %data, align 1, !dbg !4916
  call void @llvm.dbg.declare(metadata i16* %data16, metadata !4917, metadata !DIExpression()), !dbg !4918
  store i16 0, i16* %data16, align 2, !dbg !4918
  call void @llvm.dbg.declare(metadata i32* %data32, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i32 0, i32* %data32, align 4, !dbg !4920
  call void @llvm.dbg.declare(metadata i32* %inputnum, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i32 0, i32* %inputnum, align 4, !dbg !4922
  call void @llvm.dbg.declare(metadata i32* %usage, metadata !4923, metadata !DIExpression()), !dbg !4924
  store i32 0, i32* %usage, align 4, !dbg !4924
  call void @llvm.dbg.declare(metadata [12 x i32]* %globalval, metadata !4925, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.declare(metadata [12 x i32]* %oldval, metadata !4928, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.declare(metadata i8* %maintype, metadata !4930, metadata !DIExpression()), !dbg !4931
  store i8 120, i8* %maintype, align 1, !dbg !4931
  call void @llvm.dbg.declare(metadata [12 x i8]* %globtype, metadata !4932, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.declare(metadata i32* %indent, metadata !4935, metadata !DIExpression()), !dbg !4936
  store i32 0, i32* %indent, align 4, !dbg !4936
  call void @llvm.dbg.declare(metadata [11 x i8]* %indentstr, metadata !4937, metadata !DIExpression()), !dbg !4941
  %2 = bitcast [11 x i8]* %indentstr to i8*, !dbg !4941
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 11, i1 false), !dbg !4941
  br label %while.cond, !dbg !4942

while.cond:                                       ; preds = %sw.epilog256, %entry
  %3 = load i32, i32* %i, align 4, !dbg !4943
  %4 = load i32, i32* %length.addr, align 4, !dbg !4944
  %cmp = icmp slt i32 %3, %4, !dbg !4945
  br i1 %cmp, label %while.body, label %while.end, !dbg !4942

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %report.addr, align 8, !dbg !4946
  %6 = load i32, i32* %i, align 4, !dbg !4947
  %inc = add i32 %6, 1, !dbg !4947
  store i32 %inc, i32* %i, align 4, !dbg !4947
  %idxprom = sext i32 %6 to i64, !dbg !4946
  %arrayidx = getelementptr i8, i8* %5, i64 %idxprom, !dbg !4946
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4946
  store i8 %7, i8* %prefix, align 1, !dbg !4948
  %8 = load i8, i8* %prefix, align 1, !dbg !4949
  %conv = zext i8 %8 to i32, !dbg !4949
  %and = and i32 %conv, 3, !dbg !4949
  %shl = shl i32 1, %and, !dbg !4950
  %shr = lshr i32 %shl, 1, !dbg !4951
  %conv1 = trunc i32 %shr to i8, !dbg !4952
  store i8 %conv1, i8* %size, align 1, !dbg !4953
  %9 = load i32, i32* %i, align 4, !dbg !4954
  %10 = load i8, i8* %size, align 1, !dbg !4956
  %conv2 = zext i8 %10 to i32, !dbg !4956
  %add = add i32 %9, %conv2, !dbg !4957
  %11 = load i32, i32* %length.addr, align 4, !dbg !4958
  %cmp3 = icmp sgt i32 %add, %11, !dbg !4959
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4960

if.then:                                          ; preds = %while.body
  %12 = load %struct.device*, %struct.device** %ddev, align 8, !dbg !4961
  %13 = load i32, i32* %i, align 4, !dbg !4961
  %14 = load i8, i8* %size, align 1, !dbg !4961
  %conv5 = zext i8 %14 to i32, !dbg !4961
  %add6 = add i32 %13, %conv5, !dbg !4961
  %15 = load i32, i32* %length.addr, align 4, !dbg !4961
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %add6, i32 %15) #10, !dbg !4961
  br label %while.end, !dbg !4963

if.end:                                           ; preds = %while.body
  %16 = load i8, i8* %size, align 1, !dbg !4964
  %conv7 = zext i8 %16 to i32, !dbg !4964
  switch i32 %conv7, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 4, label %sw.bb13
  ], !dbg !4965

sw.bb:                                            ; preds = %if.end
  %17 = load i8*, i8** %report.addr, align 8, !dbg !4966
  %18 = load i32, i32* %i, align 4, !dbg !4967
  %idxprom8 = sext i32 %18 to i64, !dbg !4966
  %arrayidx9 = getelementptr i8, i8* %17, i64 %idxprom8, !dbg !4966
  %19 = load i8, i8* %arrayidx9, align 1, !dbg !4966
  store i8 %19, i8* %data, align 1, !dbg !4968
  br label %sw.epilog, !dbg !4969

sw.bb10:                                          ; preds = %if.end
  %20 = load i8*, i8** %report.addr, align 8, !dbg !4970
  %21 = load i32, i32* %i, align 4, !dbg !4971
  %idxprom11 = sext i32 %21 to i64, !dbg !4970
  %arrayidx12 = getelementptr i8, i8* %20, i64 %idxprom11, !dbg !4970
  store i8* %arrayidx12, i8** %p.addr.i, align 8
  %22 = load i8*, i8** %p.addr.i, align 8, !dbg !4972
  %23 = bitcast i8* %22 to i16*, !dbg !4973
  store i16* %23, i16** %p.addr.i.i, align 8
  %24 = load i16*, i16** %p.addr.i.i, align 8, !dbg !4974
  %25 = load i16, i16* %24, align 2, !dbg !4975
  store i16 %25, i16* %data16, align 2, !dbg !4976
  br label %sw.epilog, !dbg !4977

sw.bb13:                                          ; preds = %if.end
  %26 = load i8*, i8** %report.addr, align 8, !dbg !4978
  %27 = load i32, i32* %i, align 4, !dbg !4979
  %idxprom14 = sext i32 %27 to i64, !dbg !4978
  %arrayidx15 = getelementptr i8, i8* %26, i64 %idxprom14, !dbg !4978
  store i8* %arrayidx15, i8** %p.addr.i258, align 8
  %28 = load i8*, i8** %p.addr.i258, align 8, !dbg !4980
  %29 = bitcast i8* %28 to i32*, !dbg !4981
  store i32* %29, i32** %p.addr.i.i257, align 8
  %30 = load i32*, i32** %p.addr.i.i257, align 8, !dbg !4982
  %31 = load i32, i32* %30, align 4, !dbg !4983
  store i32 %31, i32* %data32, align 4, !dbg !4984
  br label %sw.epilog, !dbg !4985

sw.epilog:                                        ; preds = %if.end, %sw.bb13, %sw.bb10, %sw.bb
  %32 = load i8, i8* %size, align 1, !dbg !4986
  %conv17 = zext i8 %32 to i32, !dbg !4986
  %33 = load i32, i32* %i, align 4, !dbg !4987
  %add18 = add i32 %33, %conv17, !dbg !4987
  store i32 %add18, i32* %i, align 4, !dbg !4987
  %34 = load i8, i8* %prefix, align 1, !dbg !4988
  %conv19 = zext i8 %34 to i32, !dbg !4988
  %shr20 = ashr i32 %conv19, 4, !dbg !4988
  %conv21 = trunc i32 %shr20 to i8, !dbg !4988
  store i8 %conv21, i8* %tag, align 1, !dbg !4989
  %35 = load i8, i8* %prefix, align 1, !dbg !4990
  %conv22 = zext i8 %35 to i32, !dbg !4990
  %shr23 = ashr i32 %conv22, 2, !dbg !4990
  %and24 = and i32 %shr23, 3, !dbg !4990
  %conv25 = trunc i32 %and24 to i8, !dbg !4990
  store i8 %conv25, i8* %type, align 1, !dbg !4991
  %36 = load i8, i8* %type, align 1, !dbg !4992
  %conv26 = zext i8 %36 to i32, !dbg !4992
  switch i32 %conv26, label %sw.epilog256 [
    i32 0, label %sw.bb27
    i32 1, label %sw.bb170
    i32 2, label %sw.bb235
  ], !dbg !4993

sw.bb27:                                          ; preds = %sw.epilog
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !4994
  %call28 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !4996
  %37 = load i8, i8* %tag, align 1, !dbg !4997
  %conv29 = zext i8 %37 to i32, !dbg !4997
  switch i32 %conv29, label %sw.epilog164 [
    i32 8, label %sw.bb30
    i32 9, label %sw.bb102
    i32 11, label %sw.bb103
    i32 10, label %sw.bb104
    i32 12, label %sw.bb137
  ], !dbg !4998

sw.bb30:                                          ; preds = %sw.bb27
  store i8 73, i8* %maintype, align 1, !dbg !4999
  %38 = load i8, i8* %data, align 1, !dbg !5001
  %conv31 = zext i8 %38 to i32, !dbg !5001
  %cmp32 = icmp eq i32 %conv31, 2, !dbg !5003
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !5004

if.then34:                                        ; preds = %sw.bb30
  %arraydecay35 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5005
  %call36 = call i8* @strcpy(i8* %arraydecay35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !5006
  br label %if.end44, !dbg !5006

if.else:                                          ; preds = %sw.bb30
  %39 = load i8, i8* %data, align 1, !dbg !5007
  %conv37 = zext i8 %39 to i32, !dbg !5007
  %cmp38 = icmp eq i32 %conv37, 3, !dbg !5009
  br i1 %cmp38, label %if.then40, label %if.end43, !dbg !5010

if.then40:                                        ; preds = %if.else
  %arraydecay41 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5011
  %call42 = call i8* @strcpy(i8* %arraydecay41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !5012
  br label %if.end43, !dbg !5012

if.end43:                                         ; preds = %if.then40, %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then34
  %40 = load i32, i32* %inputnum, align 4, !dbg !5013
  switch i32 %40, label %sw.default [
    i32 0, label %sw.bb45
    i32 1, label %sw.bb53
  ], !dbg !5014

sw.bb45:                                          ; preds = %if.end44
  %41 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5015
  %max_X = getelementptr inbounds %struct.gtco, %struct.gtco* %41, i32 0, i32 9, !dbg !5018
  %42 = load i32, i32* %max_X, align 4, !dbg !5018
  %cmp46 = icmp eq i32 %42, 0, !dbg !5019
  br i1 %cmp46, label %if.then48, label %if.end52, !dbg !5020

if.then48:                                        ; preds = %sw.bb45
  %arrayidx49 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 2, !dbg !5021
  %43 = load i32, i32* %arrayidx49, align 8, !dbg !5021
  %44 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5023
  %max_X50 = getelementptr inbounds %struct.gtco, %struct.gtco* %44, i32 0, i32 9, !dbg !5024
  store i32 %43, i32* %max_X50, align 4, !dbg !5025
  %arrayidx51 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 1, !dbg !5026
  %45 = load i32, i32* %arrayidx51, align 4, !dbg !5026
  %46 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5027
  %min_X = getelementptr inbounds %struct.gtco, %struct.gtco* %46, i32 0, i32 8, !dbg !5028
  store i32 %45, i32* %min_X, align 8, !dbg !5029
  br label %if.end52, !dbg !5030

if.end52:                                         ; preds = %if.then48, %sw.bb45
  br label %sw.epilog100, !dbg !5031

sw.bb53:                                          ; preds = %if.end44
  %47 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5032
  %max_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %47, i32 0, i32 11, !dbg !5034
  %48 = load i32, i32* %max_Y, align 4, !dbg !5034
  %cmp54 = icmp eq i32 %48, 0, !dbg !5035
  br i1 %cmp54, label %if.then56, label %if.end60, !dbg !5036

if.then56:                                        ; preds = %sw.bb53
  %arrayidx57 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 2, !dbg !5037
  %49 = load i32, i32* %arrayidx57, align 8, !dbg !5037
  %50 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5039
  %max_Y58 = getelementptr inbounds %struct.gtco, %struct.gtco* %50, i32 0, i32 11, !dbg !5040
  store i32 %49, i32* %max_Y58, align 4, !dbg !5041
  %arrayidx59 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 1, !dbg !5042
  %51 = load i32, i32* %arrayidx59, align 4, !dbg !5042
  %52 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5043
  %min_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %52, i32 0, i32 10, !dbg !5044
  store i32 %51, i32* %min_Y, align 8, !dbg !5045
  br label %if.end60, !dbg !5046

if.end60:                                         ; preds = %if.then56, %sw.bb53
  br label %sw.epilog100, !dbg !5047

sw.default:                                       ; preds = %if.end44
  %53 = load i32, i32* %usage, align 4, !dbg !5048
  %cmp61 = icmp eq i32 %53, 61, !dbg !5050
  br i1 %cmp61, label %if.then63, label %if.end74, !dbg !5051

if.then63:                                        ; preds = %sw.default
  %54 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5052
  %maxtilt_X = getelementptr inbounds %struct.gtco, %struct.gtco* %54, i32 0, i32 13, !dbg !5055
  %55 = load i8, i8* %maxtilt_X, align 1, !dbg !5055
  %conv64 = sext i8 %55 to i32, !dbg !5052
  %cmp65 = icmp eq i32 %conv64, 0, !dbg !5056
  br i1 %cmp65, label %if.then67, label %if.end73, !dbg !5057

if.then67:                                        ; preds = %if.then63
  %arrayidx68 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 2, !dbg !5058
  %56 = load i32, i32* %arrayidx68, align 8, !dbg !5058
  %conv69 = trunc i32 %56 to i8, !dbg !5058
  %57 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5060
  %maxtilt_X70 = getelementptr inbounds %struct.gtco, %struct.gtco* %57, i32 0, i32 13, !dbg !5061
  store i8 %conv69, i8* %maxtilt_X70, align 1, !dbg !5062
  %arrayidx71 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 1, !dbg !5063
  %58 = load i32, i32* %arrayidx71, align 4, !dbg !5063
  %conv72 = trunc i32 %58 to i8, !dbg !5063
  %59 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5064
  %mintilt_X = getelementptr inbounds %struct.gtco, %struct.gtco* %59, i32 0, i32 12, !dbg !5065
  store i8 %conv72, i8* %mintilt_X, align 8, !dbg !5066
  br label %if.end73, !dbg !5067

if.end73:                                         ; preds = %if.then67, %if.then63
  br label %if.end74, !dbg !5068

if.end74:                                         ; preds = %if.end73, %sw.default
  %60 = load i32, i32* %usage, align 4, !dbg !5069
  %cmp75 = icmp eq i32 %60, 62, !dbg !5071
  br i1 %cmp75, label %if.then77, label %if.end88, !dbg !5072

if.then77:                                        ; preds = %if.end74
  %61 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5073
  %maxtilt_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %61, i32 0, i32 15, !dbg !5076
  %62 = load i8, i8* %maxtilt_Y, align 1, !dbg !5076
  %conv78 = sext i8 %62 to i32, !dbg !5073
  %cmp79 = icmp eq i32 %conv78, 0, !dbg !5077
  br i1 %cmp79, label %if.then81, label %if.end87, !dbg !5078

if.then81:                                        ; preds = %if.then77
  %arrayidx82 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 2, !dbg !5079
  %63 = load i32, i32* %arrayidx82, align 8, !dbg !5079
  %conv83 = trunc i32 %63 to i8, !dbg !5079
  %64 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5081
  %maxtilt_Y84 = getelementptr inbounds %struct.gtco, %struct.gtco* %64, i32 0, i32 15, !dbg !5082
  store i8 %conv83, i8* %maxtilt_Y84, align 1, !dbg !5083
  %arrayidx85 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 1, !dbg !5084
  %65 = load i32, i32* %arrayidx85, align 4, !dbg !5084
  %conv86 = trunc i32 %65 to i8, !dbg !5084
  %66 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5085
  %mintilt_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %66, i32 0, i32 14, !dbg !5086
  store i8 %conv86, i8* %mintilt_Y, align 2, !dbg !5087
  br label %if.end87, !dbg !5088

if.end87:                                         ; preds = %if.then81, %if.then77
  br label %if.end88, !dbg !5089

if.end88:                                         ; preds = %if.end87, %if.end74
  %67 = load i32, i32* %usage, align 4, !dbg !5090
  %cmp89 = icmp eq i32 %67, 48, !dbg !5092
  br i1 %cmp89, label %if.then91, label %if.end99, !dbg !5093

if.then91:                                        ; preds = %if.end88
  %68 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5094
  %maxpressure = getelementptr inbounds %struct.gtco, %struct.gtco* %68, i32 0, i32 16, !dbg !5097
  %69 = load i32, i32* %maxpressure, align 4, !dbg !5097
  %cmp92 = icmp eq i32 %69, 0, !dbg !5098
  br i1 %cmp92, label %if.then94, label %if.end98, !dbg !5099

if.then94:                                        ; preds = %if.then91
  %arrayidx95 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 2, !dbg !5100
  %70 = load i32, i32* %arrayidx95, align 8, !dbg !5100
  %71 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5102
  %maxpressure96 = getelementptr inbounds %struct.gtco, %struct.gtco* %71, i32 0, i32 16, !dbg !5103
  store i32 %70, i32* %maxpressure96, align 4, !dbg !5104
  %arrayidx97 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 1, !dbg !5105
  %72 = load i32, i32* %arrayidx97, align 4, !dbg !5105
  %73 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5106
  %minpressure = getelementptr inbounds %struct.gtco, %struct.gtco* %73, i32 0, i32 17, !dbg !5107
  store i32 %72, i32* %minpressure, align 8, !dbg !5108
  br label %if.end98, !dbg !5109

if.end98:                                         ; preds = %if.then94, %if.then91
  br label %if.end99, !dbg !5110

if.end99:                                         ; preds = %if.end98, %if.end88
  br label %sw.epilog100, !dbg !5111

sw.epilog100:                                     ; preds = %if.end99, %if.end60, %if.end52
  %74 = load i32, i32* %inputnum, align 4, !dbg !5112
  %inc101 = add i32 %74, 1, !dbg !5112
  store i32 %inc101, i32* %inputnum, align 4, !dbg !5112
  br label %sw.epilog164, !dbg !5113

sw.bb102:                                         ; preds = %sw.bb27
  store i8 79, i8* %maintype, align 1, !dbg !5114
  br label %sw.epilog164, !dbg !5115

sw.bb103:                                         ; preds = %sw.bb27
  store i8 70, i8* %maintype, align 1, !dbg !5116
  br label %sw.epilog164, !dbg !5117

sw.bb104:                                         ; preds = %sw.bb27
  store i8 83, i8* %maintype, align 1, !dbg !5118
  %75 = load i32, i32* %indent, align 4, !dbg !5119
  %cmp105 = icmp eq i32 %75, 10, !dbg !5121
  br i1 %cmp105, label %if.then107, label %if.end109, !dbg !5122

if.then107:                                       ; preds = %sw.bb104
  %76 = load %struct.device*, %struct.device** %ddev, align 8, !dbg !5123
  %77 = load i32, i32* %indent, align 4, !dbg !5123
  %add108 = add i32 %77, 1, !dbg !5123
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %add108, i32 10) #10, !dbg !5123
  br label %sw.epilog164, !dbg !5125

if.end109:                                        ; preds = %sw.bb104
  %78 = load i8, i8* %data, align 1, !dbg !5126
  %conv110 = zext i8 %78 to i32, !dbg !5126
  %cmp111 = icmp eq i32 %conv110, 0, !dbg !5128
  br i1 %cmp111, label %if.then113, label %if.else116, !dbg !5129

if.then113:                                       ; preds = %if.end109
  %arraydecay114 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5130
  %call115 = call i8* @strcpy(i8* %arraydecay114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !5132
  br label %if.end117, !dbg !5133

if.else116:                                       ; preds = %if.end109
  br label %if.end117

if.end117:                                        ; preds = %if.else116, %if.then113
  %79 = load i32, i32* %indent, align 4, !dbg !5134
  %inc118 = add i32 %79, 1, !dbg !5134
  store i32 %inc118, i32* %indent, align 4, !dbg !5134
  store i32 0, i32* %x, align 4, !dbg !5135
  br label %for.cond, !dbg !5137

for.cond:                                         ; preds = %for.inc, %if.end117
  %80 = load i32, i32* %x, align 4, !dbg !5138
  %81 = load i32, i32* %indent, align 4, !dbg !5140
  %cmp119 = icmp slt i32 %80, %81, !dbg !5141
  br i1 %cmp119, label %for.body, label %for.end, !dbg !5142

for.body:                                         ; preds = %for.cond
  %82 = load i32, i32* %x, align 4, !dbg !5143
  %idxprom121 = sext i32 %82 to i64, !dbg !5144
  %arrayidx122 = getelementptr [11 x i8], [11 x i8]* %indentstr, i64 0, i64 %idxprom121, !dbg !5144
  store i8 45, i8* %arrayidx122, align 1, !dbg !5145
  br label %for.inc, !dbg !5144

for.inc:                                          ; preds = %for.body
  %83 = load i32, i32* %x, align 4, !dbg !5146
  %inc123 = add i32 %83, 1, !dbg !5146
  store i32 %inc123, i32* %x, align 4, !dbg !5146
  br label %for.cond, !dbg !5147, !llvm.loop !5148

for.end:                                          ; preds = %for.cond
  %84 = load i32, i32* %x, align 4, !dbg !5150
  %idxprom124 = sext i32 %84 to i64, !dbg !5151
  %arrayidx125 = getelementptr [11 x i8], [11 x i8]* %indentstr, i64 0, i64 %idxprom124, !dbg !5151
  store i8 0, i8* %arrayidx125, align 1, !dbg !5152
  store i32 0, i32* %x, align 4, !dbg !5153
  br label %for.cond126, !dbg !5155

for.cond126:                                      ; preds = %for.inc134, %for.end
  %85 = load i32, i32* %x, align 4, !dbg !5156
  %cmp127 = icmp slt i32 %85, 12, !dbg !5158
  br i1 %cmp127, label %for.body129, label %for.end136, !dbg !5159

for.body129:                                      ; preds = %for.cond126
  %86 = load i32, i32* %x, align 4, !dbg !5160
  %idxprom130 = sext i32 %86 to i64, !dbg !5161
  %arrayidx131 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 %idxprom130, !dbg !5161
  %87 = load i32, i32* %arrayidx131, align 4, !dbg !5161
  %88 = load i32, i32* %x, align 4, !dbg !5162
  %idxprom132 = sext i32 %88 to i64, !dbg !5163
  %arrayidx133 = getelementptr [12 x i32], [12 x i32]* %oldval, i64 0, i64 %idxprom132, !dbg !5163
  store i32 %87, i32* %arrayidx133, align 4, !dbg !5164
  br label %for.inc134, !dbg !5163

for.inc134:                                       ; preds = %for.body129
  %89 = load i32, i32* %x, align 4, !dbg !5165
  %inc135 = add i32 %89, 1, !dbg !5165
  store i32 %inc135, i32* %x, align 4, !dbg !5165
  br label %for.cond126, !dbg !5166, !llvm.loop !5167

for.end136:                                       ; preds = %for.cond126
  br label %sw.epilog164, !dbg !5169

sw.bb137:                                         ; preds = %sw.bb27
  store i8 69, i8* %maintype, align 1, !dbg !5170
  %90 = load i32, i32* %indent, align 4, !dbg !5171
  %cmp138 = icmp eq i32 %90, 0, !dbg !5173
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !5174

if.then140:                                       ; preds = %sw.bb137
  %91 = load %struct.device*, %struct.device** %ddev, align 8, !dbg !5175
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !5175
  br label %sw.epilog164, !dbg !5177

if.end141:                                        ; preds = %sw.bb137
  %92 = load i32, i32* %indent, align 4, !dbg !5178
  %dec = add i32 %92, -1, !dbg !5178
  store i32 %dec, i32* %indent, align 4, !dbg !5178
  store i32 0, i32* %x, align 4, !dbg !5179
  br label %for.cond142, !dbg !5181

for.cond142:                                      ; preds = %for.inc148, %if.end141
  %93 = load i32, i32* %x, align 4, !dbg !5182
  %94 = load i32, i32* %indent, align 4, !dbg !5184
  %cmp143 = icmp slt i32 %93, %94, !dbg !5185
  br i1 %cmp143, label %for.body145, label %for.end150, !dbg !5186

for.body145:                                      ; preds = %for.cond142
  %95 = load i32, i32* %x, align 4, !dbg !5187
  %idxprom146 = sext i32 %95 to i64, !dbg !5188
  %arrayidx147 = getelementptr [11 x i8], [11 x i8]* %indentstr, i64 0, i64 %idxprom146, !dbg !5188
  store i8 45, i8* %arrayidx147, align 1, !dbg !5189
  br label %for.inc148, !dbg !5188

for.inc148:                                       ; preds = %for.body145
  %96 = load i32, i32* %x, align 4, !dbg !5190
  %inc149 = add i32 %96, 1, !dbg !5190
  store i32 %inc149, i32* %x, align 4, !dbg !5190
  br label %for.cond142, !dbg !5191, !llvm.loop !5192

for.end150:                                       ; preds = %for.cond142
  %97 = load i32, i32* %x, align 4, !dbg !5194
  %idxprom151 = sext i32 %97 to i64, !dbg !5195
  %arrayidx152 = getelementptr [11 x i8], [11 x i8]* %indentstr, i64 0, i64 %idxprom151, !dbg !5195
  store i8 0, i8* %arrayidx152, align 1, !dbg !5196
  store i32 0, i32* %x, align 4, !dbg !5197
  br label %for.cond153, !dbg !5199

for.cond153:                                      ; preds = %for.inc161, %for.end150
  %98 = load i32, i32* %x, align 4, !dbg !5200
  %cmp154 = icmp slt i32 %98, 12, !dbg !5202
  br i1 %cmp154, label %for.body156, label %for.end163, !dbg !5203

for.body156:                                      ; preds = %for.cond153
  %99 = load i32, i32* %x, align 4, !dbg !5204
  %idxprom157 = sext i32 %99 to i64, !dbg !5205
  %arrayidx158 = getelementptr [12 x i32], [12 x i32]* %oldval, i64 0, i64 %idxprom157, !dbg !5205
  %100 = load i32, i32* %arrayidx158, align 4, !dbg !5205
  %101 = load i32, i32* %x, align 4, !dbg !5206
  %idxprom159 = sext i32 %101 to i64, !dbg !5207
  %arrayidx160 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 %idxprom159, !dbg !5207
  store i32 %100, i32* %arrayidx160, align 4, !dbg !5208
  br label %for.inc161, !dbg !5207

for.inc161:                                       ; preds = %for.body156
  %102 = load i32, i32* %x, align 4, !dbg !5209
  %inc162 = add i32 %102, 1, !dbg !5209
  store i32 %inc162, i32* %x, align 4, !dbg !5209
  br label %for.cond153, !dbg !5210, !llvm.loop !5211

for.end163:                                       ; preds = %for.cond153
  br label %sw.epilog164, !dbg !5213

sw.epilog164:                                     ; preds = %sw.bb27, %for.end163, %if.then140, %for.end136, %if.then107, %sw.bb103, %sw.bb102, %sw.epilog100
  %103 = load i8, i8* %size, align 1, !dbg !5214
  %conv165 = zext i8 %103 to i32, !dbg !5214
  switch i32 %conv165, label %sw.epilog169 [
    i32 1, label %sw.bb166
    i32 2, label %sw.bb167
    i32 4, label %sw.bb168
  ], !dbg !5215

sw.bb166:                                         ; preds = %sw.epilog164
  br label %sw.epilog169, !dbg !5216

sw.bb167:                                         ; preds = %sw.epilog164
  br label %sw.epilog169, !dbg !5218

sw.bb168:                                         ; preds = %sw.epilog164
  br label %sw.epilog169, !dbg !5219

sw.epilog169:                                     ; preds = %sw.epilog164, %sw.bb168, %sw.bb167, %sw.bb166
  br label %sw.epilog256, !dbg !5220

sw.bb170:                                         ; preds = %sw.epilog
  %104 = load i8, i8* %tag, align 1, !dbg !5221
  %conv171 = zext i8 %104 to i32, !dbg !5221
  switch i32 %conv171, label %sw.epilog215 [
    i32 0, label %sw.bb172
    i32 1, label %sw.bb182
    i32 2, label %sw.bb185
    i32 3, label %sw.bb188
    i32 4, label %sw.bb191
    i32 5, label %sw.bb194
    i32 6, label %sw.bb197
    i32 7, label %sw.bb200
    i32 8, label %sw.bb203
    i32 9, label %sw.bb206
    i32 10, label %sw.bb209
    i32 11, label %sw.bb212
  ], !dbg !5222

sw.bb172:                                         ; preds = %sw.bb170
  %105 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5223
  %usage173 = getelementptr inbounds %struct.gtco, %struct.gtco* %105, i32 0, i32 7, !dbg !5226
  %106 = load i32, i32* %usage173, align 4, !dbg !5226
  %cmp174 = icmp eq i32 %106, 0, !dbg !5227
  br i1 %cmp174, label %if.then176, label %if.end179, !dbg !5228

if.then176:                                       ; preds = %sw.bb172
  %107 = load i8, i8* %data, align 1, !dbg !5229
  %conv177 = zext i8 %107 to i32, !dbg !5229
  %108 = load %struct.gtco*, %struct.gtco** %device.addr, align 8, !dbg !5230
  %usage178 = getelementptr inbounds %struct.gtco, %struct.gtco* %108, i32 0, i32 7, !dbg !5231
  store i32 %conv177, i32* %usage178, align 4, !dbg !5232
  br label %if.end179, !dbg !5230

if.end179:                                        ; preds = %if.then176, %sw.bb172
  %arraydecay180 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5233
  %call181 = call i8* @strcpy(i8* %arraydecay180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !5234
  br label %sw.epilog215, !dbg !5235

sw.bb182:                                         ; preds = %sw.bb170
  %arraydecay183 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5236
  %call184 = call i8* @strcpy(i8* %arraydecay183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !5237
  br label %sw.epilog215, !dbg !5238

sw.bb185:                                         ; preds = %sw.bb170
  %arraydecay186 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5239
  %call187 = call i8* @strcpy(i8* %arraydecay186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !5240
  br label %sw.epilog215, !dbg !5241

sw.bb188:                                         ; preds = %sw.bb170
  %arraydecay189 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5242
  %call190 = call i8* @strcpy(i8* %arraydecay189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !5243
  br label %sw.epilog215, !dbg !5244

sw.bb191:                                         ; preds = %sw.bb170
  %arraydecay192 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5245
  %call193 = call i8* @strcpy(i8* %arraydecay192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !5246
  br label %sw.epilog215, !dbg !5247

sw.bb194:                                         ; preds = %sw.bb170
  %arraydecay195 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5248
  %call196 = call i8* @strcpy(i8* %arraydecay195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !5249
  br label %sw.epilog215, !dbg !5250

sw.bb197:                                         ; preds = %sw.bb170
  %arraydecay198 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5251
  %call199 = call i8* @strcpy(i8* %arraydecay198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !5252
  br label %sw.epilog215, !dbg !5253

sw.bb200:                                         ; preds = %sw.bb170
  %arraydecay201 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5254
  %call202 = call i8* @strcpy(i8* %arraydecay201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !5255
  br label %sw.epilog215, !dbg !5256

sw.bb203:                                         ; preds = %sw.bb170
  %arraydecay204 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5257
  %call205 = call i8* @strcpy(i8* %arraydecay204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !5258
  store i32 0, i32* %inputnum, align 4, !dbg !5259
  br label %sw.epilog215, !dbg !5260

sw.bb206:                                         ; preds = %sw.bb170
  %arraydecay207 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5261
  %call208 = call i8* @strcpy(i8* %arraydecay207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !5262
  br label %sw.epilog215, !dbg !5263

sw.bb209:                                         ; preds = %sw.bb170
  %arraydecay210 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5264
  %call211 = call i8* @strcpy(i8* %arraydecay210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !5265
  br label %sw.epilog215, !dbg !5266

sw.bb212:                                         ; preds = %sw.bb170
  %arraydecay213 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5267
  %call214 = call i8* @strcpy(i8* %arraydecay213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !5268
  br label %sw.epilog215, !dbg !5269

sw.epilog215:                                     ; preds = %sw.bb170, %sw.bb212, %sw.bb209, %sw.bb206, %sw.bb203, %sw.bb200, %sw.bb197, %sw.bb194, %sw.bb191, %sw.bb188, %sw.bb185, %sw.bb182, %if.end179
  %109 = load i8, i8* %tag, align 1, !dbg !5270
  %conv216 = zext i8 %109 to i32, !dbg !5270
  %cmp217 = icmp slt i32 %conv216, 12, !dbg !5272
  br i1 %cmp217, label %if.then219, label %if.else233, !dbg !5273

if.then219:                                       ; preds = %sw.epilog215
  %110 = load i8, i8* %size, align 1, !dbg !5274
  %conv220 = zext i8 %110 to i32, !dbg !5274
  switch i32 %conv220, label %sw.epilog232 [
    i32 1, label %sw.bb221
    i32 2, label %sw.bb225
    i32 4, label %sw.bb229
  ], !dbg !5276

sw.bb221:                                         ; preds = %if.then219
  %111 = load i8, i8* %data, align 1, !dbg !5277
  %conv222 = zext i8 %111 to i32, !dbg !5277
  %112 = load i8, i8* %tag, align 1, !dbg !5279
  %idxprom223 = zext i8 %112 to i64, !dbg !5280
  %arrayidx224 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 %idxprom223, !dbg !5280
  store i32 %conv222, i32* %arrayidx224, align 4, !dbg !5281
  br label %sw.epilog232, !dbg !5282

sw.bb225:                                         ; preds = %if.then219
  %113 = load i16, i16* %data16, align 2, !dbg !5283
  %conv226 = zext i16 %113 to i32, !dbg !5283
  %114 = load i8, i8* %tag, align 1, !dbg !5284
  %idxprom227 = zext i8 %114 to i64, !dbg !5285
  %arrayidx228 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 %idxprom227, !dbg !5285
  store i32 %conv226, i32* %arrayidx228, align 4, !dbg !5286
  br label %sw.epilog232, !dbg !5287

sw.bb229:                                         ; preds = %if.then219
  %115 = load i32, i32* %data32, align 4, !dbg !5288
  %116 = load i8, i8* %tag, align 1, !dbg !5289
  %idxprom230 = zext i8 %116 to i64, !dbg !5290
  %arrayidx231 = getelementptr [12 x i32], [12 x i32]* %globalval, i64 0, i64 %idxprom230, !dbg !5290
  store i32 %115, i32* %arrayidx231, align 4, !dbg !5291
  br label %sw.epilog232, !dbg !5292

sw.epilog232:                                     ; preds = %if.then219, %sw.bb229, %sw.bb225, %sw.bb221
  br label %if.end234, !dbg !5293

if.else233:                                       ; preds = %sw.epilog215
  br label %if.end234

if.end234:                                        ; preds = %if.else233, %sw.epilog232
  br label %sw.epilog256, !dbg !5294

sw.bb235:                                         ; preds = %sw.epilog
  %117 = load i8, i8* %tag, align 1, !dbg !5295
  %conv236 = zext i8 %117 to i32, !dbg !5295
  switch i32 %conv236, label %sw.default247 [
    i32 0, label %sw.bb237
    i32 1, label %sw.bb241
    i32 2, label %sw.bb244
  ], !dbg !5296

sw.bb237:                                         ; preds = %sw.bb235
  %arraydecay238 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5297
  %call239 = call i8* @strcpy(i8* %arraydecay238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !5299
  %118 = load i8, i8* %data, align 1, !dbg !5300
  %conv240 = zext i8 %118 to i32, !dbg !5300
  store i32 %conv240, i32* %usage, align 4, !dbg !5301
  br label %sw.epilog250, !dbg !5302

sw.bb241:                                         ; preds = %sw.bb235
  %arraydecay242 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5303
  %call243 = call i8* @strcpy(i8* %arraydecay242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !5304
  br label %sw.epilog250, !dbg !5305

sw.bb244:                                         ; preds = %sw.bb235
  %arraydecay245 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5306
  %call246 = call i8* @strcpy(i8* %arraydecay245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !5307
  br label %sw.epilog250, !dbg !5308

sw.default247:                                    ; preds = %sw.bb235
  %arraydecay248 = getelementptr inbounds [12 x i8], [12 x i8]* %globtype, i64 0, i64 0, !dbg !5309
  %call249 = call i8* @strcpy(i8* %arraydecay248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !5310
  br label %sw.epilog250, !dbg !5311

sw.epilog250:                                     ; preds = %sw.default247, %sw.bb244, %sw.bb241, %sw.bb237
  %119 = load i8, i8* %size, align 1, !dbg !5312
  %conv251 = zext i8 %119 to i32, !dbg !5312
  switch i32 %conv251, label %sw.epilog255 [
    i32 1, label %sw.bb252
    i32 2, label %sw.bb253
    i32 4, label %sw.bb254
  ], !dbg !5313

sw.bb252:                                         ; preds = %sw.epilog250
  br label %sw.epilog255, !dbg !5314

sw.bb253:                                         ; preds = %sw.epilog250
  br label %sw.epilog255, !dbg !5316

sw.bb254:                                         ; preds = %sw.epilog250
  br label %sw.epilog255, !dbg !5317

sw.epilog255:                                     ; preds = %sw.epilog250, %sw.bb254, %sw.bb253, %sw.bb252
  br label %sw.epilog256, !dbg !5318

sw.epilog256:                                     ; preds = %sw.epilog, %sw.epilog255, %if.end234, %sw.epilog169
  br label %while.cond, !dbg !4942, !llvm.loop !5319

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !5321
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5322 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5331, metadata !DIExpression()), !dbg !5332
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5333
  %1 = load i64, i64* %size.addr, align 8, !dbg !5334
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5335
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5336
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5336
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5337
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5337
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5338
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5339
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5338
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !5340
  store i32 %call, i32* %actual, align 4, !dbg !5341
  %6 = load i32, i32* %actual, align 4, !dbg !5342
  %7 = load i64, i64* %size.addr, align 8, !dbg !5343
  %conv = trunc i64 %7 to i32, !dbg !5344
  %cmp = icmp sge i32 %6, %conv, !dbg !5345
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5346

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5346

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5347
  br label %cond.end, !dbg !5346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5346
  ret i32 %cond, !dbg !5348
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gtco_input_open(%struct.input_dev* %inputdev) #2 !dbg !5349 {
entry:
  %retval = alloca i32, align 4
  %inputdev.addr = alloca %struct.input_dev*, align 8
  %device = alloca %struct.gtco*, align 8
  store %struct.input_dev* %inputdev, %struct.input_dev** %inputdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %inputdev.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.declare(metadata %struct.gtco** %device, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5354
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #9, !dbg !5355
  %1 = bitcast i8* %call to %struct.gtco*, !dbg !5355
  store %struct.gtco* %1, %struct.gtco** %device, align 8, !dbg !5353
  %2 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5356
  %intf = getelementptr inbounds %struct.gtco, %struct.gtco* %2, i32 0, i32 1, !dbg !5357
  %3 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5357
  %call1 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %3) #9, !dbg !5358
  %4 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5359
  %urbinfo = getelementptr inbounds %struct.gtco, %struct.gtco* %4, i32 0, i32 2, !dbg !5360
  %5 = load %struct.urb*, %struct.urb** %urbinfo, align 8, !dbg !5360
  %dev = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 8, !dbg !5361
  store %struct.usb_device* %call1, %struct.usb_device** %dev, align 8, !dbg !5362
  %6 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5363
  %urbinfo2 = getelementptr inbounds %struct.gtco, %struct.gtco* %6, i32 0, i32 2, !dbg !5365
  %7 = load %struct.urb*, %struct.urb** %urbinfo2, align 8, !dbg !5365
  %call3 = call i32 @usb_submit_urb(%struct.urb* %7, i32 3264) #9, !dbg !5366
  %tobool = icmp ne i32 %call3, 0, !dbg !5366
  br i1 %tobool, label %if.then, label %if.end, !dbg !5367

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5368
  br label %return, !dbg !5368

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5370
  ret i32 %8, !dbg !5370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gtco_input_close(%struct.input_dev* %inputdev) #2 !dbg !5371 {
entry:
  %inputdev.addr = alloca %struct.input_dev*, align 8
  %device = alloca %struct.gtco*, align 8
  store %struct.input_dev* %inputdev, %struct.input_dev** %inputdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %inputdev.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.declare(metadata %struct.gtco** %device, metadata !5374, metadata !DIExpression()), !dbg !5375
  %0 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5376
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #9, !dbg !5377
  %1 = bitcast i8* %call to %struct.gtco*, !dbg !5377
  store %struct.gtco* %1, %struct.gtco** %device, align 8, !dbg !5375
  %2 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5378
  %urbinfo = getelementptr inbounds %struct.gtco, %struct.gtco* %2, i32 0, i32 2, !dbg !5379
  %3 = load %struct.urb*, %struct.urb** %urbinfo, align 8, !dbg !5379
  call void @usb_kill_urb(%struct.urb* %3) #9, !dbg !5380
  ret void, !dbg !5381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #2 !dbg !5382 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5389
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5390
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5391
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #9, !dbg !5392
  ret void, !dbg !5393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gtco_setup_caps(%struct.input_dev* %inputdev) #2 !dbg !5394 {
entry:
  %inputdev.addr = alloca %struct.input_dev*, align 8
  %device = alloca %struct.gtco*, align 8
  store %struct.input_dev* %inputdev, %struct.input_dev** %inputdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %inputdev.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata %struct.gtco** %device, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5399
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #9, !dbg !5400
  %1 = bitcast i8* %call to %struct.gtco*, !dbg !5400
  store %struct.gtco* %1, %struct.gtco** %device, align 8, !dbg !5398
  %2 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5401
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %2, i32 0, i32 5, !dbg !5402
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !5401
  store i64 26, i64* %arrayidx, align 8, !dbg !5403
  %3 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5404
  %mscbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 9, !dbg !5405
  %arrayidx1 = getelementptr [1 x i64], [1 x i64]* %mscbit, i64 0, i64 0, !dbg !5404
  store i64 25, i64* %arrayidx1, align 8, !dbg !5406
  %4 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5407
  %5 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5408
  %min_X = getelementptr inbounds %struct.gtco, %struct.gtco* %5, i32 0, i32 8, !dbg !5409
  %6 = load i32, i32* %min_X, align 8, !dbg !5409
  %7 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5410
  %max_X = getelementptr inbounds %struct.gtco, %struct.gtco* %7, i32 0, i32 9, !dbg !5411
  %8 = load i32, i32* %max_X, align 4, !dbg !5411
  call void @input_set_abs_params(%struct.input_dev* %4, i32 0, i32 %6, i32 %8, i32 0, i32 0) #9, !dbg !5412
  %9 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5413
  %10 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5414
  %min_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %10, i32 0, i32 10, !dbg !5415
  %11 = load i32, i32* %min_Y, align 8, !dbg !5415
  %12 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5416
  %max_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %12, i32 0, i32 11, !dbg !5417
  %13 = load i32, i32* %max_Y, align 4, !dbg !5417
  call void @input_set_abs_params(%struct.input_dev* %9, i32 1, i32 %11, i32 %13, i32 0, i32 0) #9, !dbg !5418
  %14 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5419
  call void @input_set_abs_params(%struct.input_dev* %14, i32 25, i32 0, i32 1, i32 0, i32 0) #9, !dbg !5420
  %15 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5421
  %16 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5422
  %mintilt_X = getelementptr inbounds %struct.gtco, %struct.gtco* %16, i32 0, i32 12, !dbg !5423
  %17 = load i8, i8* %mintilt_X, align 8, !dbg !5423
  %conv = sext i8 %17 to i32, !dbg !5422
  %18 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5424
  %maxtilt_X = getelementptr inbounds %struct.gtco, %struct.gtco* %18, i32 0, i32 13, !dbg !5425
  %19 = load i8, i8* %maxtilt_X, align 1, !dbg !5425
  %conv2 = sext i8 %19 to i32, !dbg !5424
  call void @input_set_abs_params(%struct.input_dev* %15, i32 26, i32 %conv, i32 %conv2, i32 0, i32 0) #9, !dbg !5426
  %20 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5427
  %21 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5428
  %mintilt_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %21, i32 0, i32 14, !dbg !5429
  %22 = load i8, i8* %mintilt_Y, align 2, !dbg !5429
  %conv3 = sext i8 %22 to i32, !dbg !5428
  %23 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5430
  %maxtilt_Y = getelementptr inbounds %struct.gtco, %struct.gtco* %23, i32 0, i32 15, !dbg !5431
  %24 = load i8, i8* %maxtilt_Y, align 1, !dbg !5431
  %conv4 = sext i8 %24 to i32, !dbg !5430
  call void @input_set_abs_params(%struct.input_dev* %20, i32 27, i32 %conv3, i32 %conv4, i32 0, i32 0) #9, !dbg !5432
  %25 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5433
  %26 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5434
  %minpressure = getelementptr inbounds %struct.gtco, %struct.gtco* %26, i32 0, i32 17, !dbg !5435
  %27 = load i32, i32* %minpressure, align 8, !dbg !5435
  %28 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5436
  %maxpressure = getelementptr inbounds %struct.gtco, %struct.gtco* %28, i32 0, i32 16, !dbg !5437
  %29 = load i32, i32* %maxpressure, align 4, !dbg !5437
  call void @input_set_abs_params(%struct.input_dev* %25, i32 24, i32 %27, i32 %29, i32 0, i32 0) #9, !dbg !5438
  %30 = load %struct.input_dev*, %struct.input_dev** %inputdev.addr, align 8, !dbg !5439
  call void @input_set_abs_params(%struct.input_dev* %30, i32 40, i32 0, i32 255, i32 0, i32 0) #9, !dbg !5440
  ret void, !dbg !5441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5442 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5453
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5454
  store i16 3, i16* %bustype, align 2, !dbg !5455
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5456
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5456
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5456
  %2 = load i16, i16* %idVendor, align 8, !dbg !5456
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5457
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5458
  store i16 %2, i16* %vendor, align 2, !dbg !5459
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5460
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5460
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5460
  %5 = load i16, i16* %idProduct, align 2, !dbg !5460
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5461
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5462
  store i16 %5, i16* %product, align 2, !dbg !5463
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5464
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5464
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5464
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5464
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5465
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5466
  store i16 %8, i16* %version, align 2, !dbg !5467
  ret void, !dbg !5468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5469 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  %interval.addr = alloca i32, align 4
  %__UNIQUE_ID___x208 = alloca i32, align 4
  %__UNIQUE_ID___x206 = alloca i32, align 4
  %__UNIQUE_ID___y207 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y209 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5488
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5489
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5490
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5491
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5492
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5493
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5494
  store i32 %2, i32* %pipe2, align 8, !dbg !5495
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5496
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5497
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5498
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5499
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5500
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5501
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5502
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5503
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5504
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5505
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5506
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5507
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5508
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5509
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5510
  store i8* %10, i8** %context4, align 8, !dbg !5511
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5512
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5514
  %13 = load i32, i32* %speed, align 4, !dbg !5514
  %cmp = icmp eq i32 %13, 3, !dbg !5515
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5516

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5517
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5518
  %15 = load i32, i32* %speed5, align 4, !dbg !5518
  %cmp6 = icmp uge i32 %15, 5, !dbg !5519
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5520

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x208, metadata !5521, metadata !DIExpression()), !dbg !5524
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x206, metadata !5525, metadata !DIExpression()), !dbg !5527
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5527
  store i32 %16, i32* %__UNIQUE_ID___x206, align 4, !dbg !5527
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y207, metadata !5528, metadata !DIExpression()), !dbg !5527
  store i32 1, i32* %__UNIQUE_ID___y207, align 4, !dbg !5527
  %17 = load i32, i32* %__UNIQUE_ID___x206, align 4, !dbg !5527
  %18 = load i32, i32* %__UNIQUE_ID___y207, align 4, !dbg !5527
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5527
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5527

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x206, align 4, !dbg !5527
  br label %cond.end, !dbg !5527

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y207, align 4, !dbg !5527
  br label %cond.end, !dbg !5527

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5527
  store i32 %cond, i32* %tmp, align 4, !dbg !5527
  %21 = load i32, i32* %tmp, align 4, !dbg !5527
  store i32 %21, i32* %__UNIQUE_ID___x208, align 4, !dbg !5524
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y209, metadata !5529, metadata !DIExpression()), !dbg !5524
  store i32 16, i32* %__UNIQUE_ID___y209, align 4, !dbg !5524
  %22 = load i32, i32* %__UNIQUE_ID___x208, align 4, !dbg !5524
  %23 = load i32, i32* %__UNIQUE_ID___y209, align 4, !dbg !5524
  %cmp9 = icmp slt i32 %22, %23, !dbg !5524
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5524

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x208, align 4, !dbg !5524
  br label %cond.end12, !dbg !5524

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y209, align 4, !dbg !5524
  br label %cond.end12, !dbg !5524

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5524
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5524
  %26 = load i32, i32* %tmp8, align 4, !dbg !5524
  store i32 %26, i32* %interval.addr, align 4, !dbg !5530
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5531
  %sub = sub i32 %27, 1, !dbg !5532
  %shl = shl i32 1, %sub, !dbg !5533
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5534
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5535
  store i32 %shl, i32* %interval14, align 8, !dbg !5536
  br label %if.end, !dbg !5537

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5538
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5540
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5541
  store i32 %29, i32* %interval15, align 8, !dbg !5542
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5543
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5544
  store i32 -1, i32* %start_frame, align 8, !dbg !5545
  ret void, !dbg !5546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gtco_urb_callback(%struct.urb* %urbinfo) #2 !dbg !5547 {
entry:
  %p.addr.i.i221 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i221, metadata !4878, metadata !DIExpression()), !dbg !5548
  %p.addr.i222 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i222, metadata !4890, metadata !DIExpression()), !dbg !5557
  %p.addr.i.i219 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i219, metadata !4878, metadata !DIExpression()), !dbg !5558
  %p.addr.i220 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i220, metadata !4890, metadata !DIExpression()), !dbg !5561
  %p.addr.i.i217 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i217, metadata !4878, metadata !DIExpression()), !dbg !5562
  %p.addr.i218 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i218, metadata !4890, metadata !DIExpression()), !dbg !5566
  %p.addr.i.i215 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i215, metadata !4878, metadata !DIExpression()), !dbg !5567
  %p.addr.i216 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i216, metadata !4890, metadata !DIExpression()), !dbg !5573
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !4878, metadata !DIExpression()), !dbg !5574
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !4890, metadata !DIExpression()), !dbg !5577
  %value.addr.i206 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i206, metadata !5578, metadata !DIExpression()), !dbg !5583
  %index.addr.i207 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr.i207, metadata !5585, metadata !DIExpression()), !dbg !5586
  %shift.i208 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.i208, metadata !5587, metadata !DIExpression()), !dbg !5588
  %value.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr.i, metadata !5578, metadata !DIExpression()), !dbg !5589
  %index.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr.i, metadata !5585, metadata !DIExpression()), !dbg !5591
  %shift.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %shift.i, metadata !5587, metadata !DIExpression()), !dbg !5592
  %urbinfo.addr = alloca %struct.urb*, align 8
  %device = alloca %struct.gtco*, align 8
  %inputdev = alloca %struct.input_dev*, align 8
  %rc = alloca i32, align 4
  %val = alloca i32, align 4
  %le_buffer = alloca [2 x i8], align 1
  %buttonbyte = alloca i8, align 1
  store %struct.urb* %urbinfo, %struct.urb** %urbinfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urbinfo.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.declare(metadata %struct.gtco** %device, metadata !5595, metadata !DIExpression()), !dbg !5596
  %0 = load %struct.urb*, %struct.urb** %urbinfo.addr, align 8, !dbg !5597
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5598
  %1 = load i8*, i8** %context, align 8, !dbg !5598
  %2 = bitcast i8* %1 to %struct.gtco*, !dbg !5597
  store %struct.gtco* %2, %struct.gtco** %device, align 8, !dbg !5596
  call void @llvm.dbg.declare(metadata %struct.input_dev** %inputdev, metadata !5599, metadata !DIExpression()), !dbg !5600
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5601, metadata !DIExpression()), !dbg !5602
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5603, metadata !DIExpression()), !dbg !5604
  store i32 0, i32* %val, align 4, !dbg !5604
  call void @llvm.dbg.declare(metadata [2 x i8]* %le_buffer, metadata !5605, metadata !DIExpression()), !dbg !5607
  %3 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5608
  %inputdevice = getelementptr inbounds %struct.gtco, %struct.gtco* %3, i32 0, i32 0, !dbg !5609
  %4 = load %struct.input_dev*, %struct.input_dev** %inputdevice, align 8, !dbg !5609
  store %struct.input_dev* %4, %struct.input_dev** %inputdev, align 8, !dbg !5610
  %5 = load %struct.urb*, %struct.urb** %urbinfo.addr, align 8, !dbg !5611
  %status = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !5613
  %6 = load i32, i32* %status, align 8, !dbg !5613
  %cmp = icmp eq i32 %6, -104, !dbg !5614
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5615

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.urb*, %struct.urb** %urbinfo.addr, align 8, !dbg !5616
  %status1 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 12, !dbg !5617
  %8 = load i32, i32* %status1, align 8, !dbg !5617
  %cmp2 = icmp eq i32 %8, -2, !dbg !5618
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !5619

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = load %struct.urb*, %struct.urb** %urbinfo.addr, align 8, !dbg !5620
  %status4 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 12, !dbg !5621
  %10 = load i32, i32* %status4, align 8, !dbg !5621
  %cmp5 = icmp eq i32 %10, -108, !dbg !5622
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5623

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %if.end205, !dbg !5624

if.end:                                           ; preds = %lor.lhs.false3
  %11 = load %struct.urb*, %struct.urb** %urbinfo.addr, align 8, !dbg !5626
  %status6 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 12, !dbg !5628
  %12 = load i32, i32* %status6, align 8, !dbg !5628
  %cmp7 = icmp ne i32 %12, 0, !dbg !5629
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5630

if.then8:                                         ; preds = %if.end
  br label %resubmit, !dbg !5631

if.end9:                                          ; preds = %if.end
  %13 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5633
  %id = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 3, !dbg !5634
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %id, i32 0, i32 2, !dbg !5635
  %14 = load i16, i16* %product, align 4, !dbg !5635
  %conv = zext i16 %14 to i32, !dbg !5633
  %cmp10 = icmp eq i32 %conv, 4096, !dbg !5636
  br i1 %cmp10, label %if.then24, label %lor.lhs.false12, !dbg !5637

lor.lhs.false12:                                  ; preds = %if.end9
  %15 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5638
  %id13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 3, !dbg !5639
  %product14 = getelementptr inbounds %struct.input_id, %struct.input_id* %id13, i32 0, i32 2, !dbg !5640
  %16 = load i16, i16* %product14, align 4, !dbg !5640
  %conv15 = zext i16 %16 to i32, !dbg !5638
  %cmp16 = icmp eq i32 %conv15, 4097, !dbg !5641
  br i1 %cmp16, label %if.then24, label %lor.lhs.false18, !dbg !5642

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %17 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5643
  %id19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 3, !dbg !5644
  %product20 = getelementptr inbounds %struct.input_id, %struct.input_id* %id19, i32 0, i32 2, !dbg !5645
  %18 = load i16, i16* %product20, align 4, !dbg !5645
  %conv21 = zext i16 %18 to i32, !dbg !5643
  %cmp22 = icmp eq i32 %conv21, 4098, !dbg !5646
  br i1 %cmp22, label %if.then24, label %if.end85, !dbg !5647

if.then24:                                        ; preds = %lor.lhs.false18, %lor.lhs.false12, %if.end9
  %19 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5648
  %buffer = getelementptr inbounds %struct.gtco, %struct.gtco* %19, i32 0, i32 4, !dbg !5649
  %20 = load i8*, i8** %buffer, align 8, !dbg !5649
  %arrayidx = getelementptr i8, i8* %20, i64 0, !dbg !5648
  %21 = load i8, i8* %arrayidx, align 1, !dbg !5648
  %conv25 = zext i8 %21 to i32, !dbg !5648
  switch i32 %conv25, label %sw.epilog [
    i32 5, label %sw.bb
    i32 4, label %sw.bb44
    i32 2, label %sw.bb52
    i32 3, label %sw.bb52
    i32 1, label %sw.bb57
    i32 7, label %sw.bb81
  ], !dbg !5650

sw.bb:                                            ; preds = %if.then24
  %22 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5651
  %buffer26 = getelementptr inbounds %struct.gtco, %struct.gtco* %22, i32 0, i32 4, !dbg !5652
  %23 = load i8*, i8** %buffer26, align 8, !dbg !5652
  %arrayidx27 = getelementptr i8, i8* %23, i64 8, !dbg !5651
  %24 = load i8, i8* %arrayidx27, align 1, !dbg !5651
  %conv28 = zext i8 %24 to i16, !dbg !5653
  %conv29 = zext i16 %conv28 to i32, !dbg !5653
  %shl = shl i32 %conv29, 1, !dbg !5654
  store i32 %shl, i32* %val, align 4, !dbg !5655
  %25 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5656
  %buffer30 = getelementptr inbounds %struct.gtco, %struct.gtco* %25, i32 0, i32 4, !dbg !5657
  %26 = load i8*, i8** %buffer30, align 8, !dbg !5657
  %arrayidx31 = getelementptr i8, i8* %26, i64 7, !dbg !5656
  %27 = load i8, i8* %arrayidx31, align 1, !dbg !5656
  %conv32 = zext i8 %27 to i32, !dbg !5656
  %shr = ashr i32 %conv32, 7, !dbg !5658
  %conv33 = trunc i32 %shr to i16, !dbg !5659
  %conv34 = zext i16 %conv33 to i32, !dbg !5659
  %28 = load i32, i32* %val, align 4, !dbg !5660
  %or = or i32 %28, %conv34, !dbg !5660
  store i32 %or, i32* %val, align 4, !dbg !5660
  %29 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5661
  %30 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5662
  %buffer35 = getelementptr inbounds %struct.gtco, %struct.gtco* %30, i32 0, i32 4, !dbg !5663
  %31 = load i8*, i8** %buffer35, align 8, !dbg !5663
  %arrayidx36 = getelementptr i8, i8* %31, i64 8, !dbg !5662
  %32 = load i8, i8* %arrayidx36, align 1, !dbg !5662
  %conv37 = zext i8 %32 to i32, !dbg !5662
  call void @input_report_abs(%struct.input_dev* %29, i32 24, i32 %conv37) #9, !dbg !5664
  %33 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5665
  %buffer38 = getelementptr inbounds %struct.gtco, %struct.gtco* %33, i32 0, i32 4, !dbg !5666
  %34 = load i8*, i8** %buffer38, align 8, !dbg !5666
  %arrayidx39 = getelementptr i8, i8* %34, i64 7, !dbg !5665
  %35 = load i8, i8* %arrayidx39, align 1, !dbg !5665
  %conv40 = zext i8 %35 to i32, !dbg !5667
  %and = and i32 %conv40, 127, !dbg !5668
  %conv41 = trunc i32 %and to i8, !dbg !5669
  %36 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5670
  %buffer42 = getelementptr inbounds %struct.gtco, %struct.gtco* %36, i32 0, i32 4, !dbg !5671
  %37 = load i8*, i8** %buffer42, align 8, !dbg !5671
  %arrayidx43 = getelementptr i8, i8* %37, i64 7, !dbg !5670
  store i8 %conv41, i8* %arrayidx43, align 1, !dbg !5672
  br label %sw.bb44, !dbg !5670

sw.bb44:                                          ; preds = %if.then24, %sw.bb
  %38 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5673
  %39 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5674
  %buffer45 = getelementptr inbounds %struct.gtco, %struct.gtco* %39, i32 0, i32 4, !dbg !5675
  %40 = load i8*, i8** %buffer45, align 8, !dbg !5675
  %arrayidx46 = getelementptr i8, i8* %40, i64 6, !dbg !5674
  %41 = load i8, i8* %arrayidx46, align 1, !dbg !5674
  %conv47 = zext i8 %41 to i32, !dbg !5674
  store i32 %conv47, i32* %value.addr.i, align 4
  store i32 6, i32* %index.addr.i, align 4
  %42 = load i32, i32* %index.addr.i, align 4, !dbg !5676
  %sub.i = sub i32 31, %42, !dbg !5677
  %conv.i = trunc i32 %sub.i to i8, !dbg !5678
  store i8 %conv.i, i8* %shift.i, align 1, !dbg !5592
  %43 = load i32, i32* %value.addr.i, align 4, !dbg !5679
  %44 = load i8, i8* %shift.i, align 1, !dbg !5680
  %conv1.i = zext i8 %44 to i32, !dbg !5680
  %shl.i = shl i32 %43, %conv1.i, !dbg !5681
  %45 = load i8, i8* %shift.i, align 1, !dbg !5682
  %conv2.i = zext i8 %45 to i32, !dbg !5682
  %shr.i = ashr i32 %shl.i, %conv2.i, !dbg !5683
  call void @input_report_abs(%struct.input_dev* %38, i32 26, i32 %shr.i) #9, !dbg !5684
  %46 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5685
  %47 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5686
  %buffer48 = getelementptr inbounds %struct.gtco, %struct.gtco* %47, i32 0, i32 4, !dbg !5687
  %48 = load i8*, i8** %buffer48, align 8, !dbg !5687
  %arrayidx49 = getelementptr i8, i8* %48, i64 7, !dbg !5686
  %49 = load i8, i8* %arrayidx49, align 1, !dbg !5686
  %conv50 = zext i8 %49 to i32, !dbg !5686
  store i32 %conv50, i32* %value.addr.i206, align 4
  store i32 6, i32* %index.addr.i207, align 4
  %50 = load i32, i32* %index.addr.i207, align 4, !dbg !5688
  %sub.i209 = sub i32 31, %50, !dbg !5689
  %conv.i210 = trunc i32 %sub.i209 to i8, !dbg !5690
  store i8 %conv.i210, i8* %shift.i208, align 1, !dbg !5588
  %51 = load i32, i32* %value.addr.i206, align 4, !dbg !5691
  %52 = load i8, i8* %shift.i208, align 1, !dbg !5692
  %conv1.i211 = zext i8 %52 to i32, !dbg !5692
  %shl.i212 = shl i32 %51, %conv1.i211, !dbg !5693
  %53 = load i8, i8* %shift.i208, align 1, !dbg !5694
  %conv2.i213 = zext i8 %53 to i32, !dbg !5694
  %shr.i214 = ashr i32 %shl.i212, %conv2.i213, !dbg !5695
  call void @input_report_abs(%struct.input_dev* %46, i32 27, i32 %shr.i214) #9, !dbg !5696
  br label %sw.bb52, !dbg !5696

sw.bb52:                                          ; preds = %if.then24, %if.then24, %sw.bb44
  %54 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5697
  %buffer53 = getelementptr inbounds %struct.gtco, %struct.gtco* %54, i32 0, i32 4, !dbg !5698
  %55 = load i8*, i8** %buffer53, align 8, !dbg !5698
  %arrayidx54 = getelementptr i8, i8* %55, i64 5, !dbg !5697
  %56 = load i8, i8* %arrayidx54, align 1, !dbg !5697
  %conv55 = zext i8 %56 to i32, !dbg !5699
  %and56 = and i32 %conv55, 31, !dbg !5700
  store i32 %and56, i32* %val, align 4, !dbg !5701
  %57 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5702
  %58 = load i32, i32* %val, align 4, !dbg !5703
  call void @input_event(%struct.input_dev* %57, i32 4, i32 0, i32 %58) #9, !dbg !5704
  br label %sw.bb57, !dbg !5704

sw.bb57:                                          ; preds = %if.then24, %sw.bb52
  %59 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5705
  %buffer58 = getelementptr inbounds %struct.gtco, %struct.gtco* %59, i32 0, i32 4, !dbg !5706
  %60 = load i8*, i8** %buffer58, align 8, !dbg !5706
  %arrayidx59 = getelementptr i8, i8* %60, i64 1, !dbg !5705
  store i8* %arrayidx59, i8** %p.addr.i, align 8
  %61 = load i8*, i8** %p.addr.i, align 8, !dbg !5707
  %62 = bitcast i8* %61 to i16*, !dbg !5708
  store i16* %62, i16** %p.addr.i.i, align 8
  %63 = load i16*, i16** %p.addr.i.i, align 8, !dbg !5709
  %64 = load i16, i16* %63, align 2, !dbg !5710
  %conv61 = zext i16 %64 to i32, !dbg !5711
  store i32 %conv61, i32* %val, align 4, !dbg !5712
  %65 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5713
  %66 = load i32, i32* %val, align 4, !dbg !5714
  call void @input_report_abs(%struct.input_dev* %65, i32 0, i32 %66) #9, !dbg !5715
  %67 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5716
  %buffer62 = getelementptr inbounds %struct.gtco, %struct.gtco* %67, i32 0, i32 4, !dbg !5717
  %68 = load i8*, i8** %buffer62, align 8, !dbg !5717
  %arrayidx63 = getelementptr i8, i8* %68, i64 3, !dbg !5716
  store i8* %arrayidx63, i8** %p.addr.i216, align 8
  %69 = load i8*, i8** %p.addr.i216, align 8, !dbg !5718
  %70 = bitcast i8* %69 to i16*, !dbg !5719
  store i16* %70, i16** %p.addr.i.i215, align 8
  %71 = load i16*, i16** %p.addr.i.i215, align 8, !dbg !5720
  %72 = load i16, i16* %71, align 2, !dbg !5721
  %conv65 = zext i16 %72 to i32, !dbg !5722
  store i32 %conv65, i32* %val, align 4, !dbg !5723
  %73 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5724
  %74 = load i32, i32* %val, align 4, !dbg !5725
  call void @input_report_abs(%struct.input_dev* %73, i32 1, i32 %74) #9, !dbg !5726
  %75 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5727
  %buffer66 = getelementptr inbounds %struct.gtco, %struct.gtco* %75, i32 0, i32 4, !dbg !5728
  %76 = load i8*, i8** %buffer66, align 8, !dbg !5728
  %arrayidx67 = getelementptr i8, i8* %76, i64 5, !dbg !5727
  %77 = load i8, i8* %arrayidx67, align 1, !dbg !5727
  %conv68 = zext i8 %77 to i32, !dbg !5727
  %and69 = and i32 %conv68, 32, !dbg !5729
  %tobool = icmp ne i32 %and69, 0, !dbg !5727
  %78 = zext i1 %tobool to i64, !dbg !5727
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5727
  store i32 %cond, i32* %val, align 4, !dbg !5730
  %79 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5731
  %80 = load i32, i32* %val, align 4, !dbg !5732
  call void @input_report_abs(%struct.input_dev* %79, i32 25, i32 %80) #9, !dbg !5733
  %81 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5734
  %buffer70 = getelementptr inbounds %struct.gtco, %struct.gtco* %81, i32 0, i32 4, !dbg !5736
  %82 = load i8*, i8** %buffer70, align 8, !dbg !5736
  %arrayidx71 = getelementptr i8, i8* %82, i64 0, !dbg !5734
  %83 = load i8, i8* %arrayidx71, align 1, !dbg !5734
  %conv72 = zext i8 %83 to i32, !dbg !5734
  %cmp73 = icmp eq i32 %conv72, 1, !dbg !5737
  br i1 %cmp73, label %if.then75, label %if.end80, !dbg !5738

if.then75:                                        ; preds = %sw.bb57
  %84 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5739
  %buffer76 = getelementptr inbounds %struct.gtco, %struct.gtco* %84, i32 0, i32 4, !dbg !5741
  %85 = load i8*, i8** %buffer76, align 8, !dbg !5741
  %arrayidx77 = getelementptr i8, i8* %85, i64 5, !dbg !5739
  %86 = load i8, i8* %arrayidx77, align 1, !dbg !5739
  %conv78 = zext i8 %86 to i32, !dbg !5739
  %and79 = and i32 %conv78, 31, !dbg !5742
  store i32 %and79, i32* %val, align 4, !dbg !5743
  %87 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5744
  %88 = load i32, i32* %val, align 4, !dbg !5745
  call void @input_event(%struct.input_dev* %87, i32 4, i32 0, i32 %88) #9, !dbg !5746
  br label %if.end80, !dbg !5747

if.end80:                                         ; preds = %if.then75, %sw.bb57
  br label %sw.epilog, !dbg !5748

sw.bb81:                                          ; preds = %if.then24
  %89 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5749
  %90 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5750
  %buffer82 = getelementptr inbounds %struct.gtco, %struct.gtco* %90, i32 0, i32 4, !dbg !5751
  %91 = load i8*, i8** %buffer82, align 8, !dbg !5751
  %arrayidx83 = getelementptr i8, i8* %91, i64 1, !dbg !5750
  %92 = load i8, i8* %arrayidx83, align 1, !dbg !5750
  %conv84 = zext i8 %92 to i32, !dbg !5750
  call void @input_event(%struct.input_dev* %89, i32 4, i32 4, i32 %conv84) #9, !dbg !5752
  br label %sw.epilog, !dbg !5753

sw.epilog:                                        ; preds = %if.then24, %sw.bb81, %if.end80
  br label %if.end85, !dbg !5754

if.end85:                                         ; preds = %sw.epilog, %lor.lhs.false18
  %93 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5755
  %id86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 3, !dbg !5756
  %product87 = getelementptr inbounds %struct.input_id, %struct.input_id* %id86, i32 0, i32 2, !dbg !5757
  %94 = load i16, i16* %product87, align 4, !dbg !5757
  %conv88 = zext i16 %94 to i32, !dbg !5755
  %cmp89 = icmp eq i32 %conv88, 1024, !dbg !5758
  br i1 %cmp89, label %if.then97, label %lor.lhs.false91, !dbg !5759

lor.lhs.false91:                                  ; preds = %if.end85
  %95 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5760
  %id92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 3, !dbg !5761
  %product93 = getelementptr inbounds %struct.input_id, %struct.input_id* %id92, i32 0, i32 2, !dbg !5762
  %96 = load i16, i16* %product93, align 4, !dbg !5762
  %conv94 = zext i16 %96 to i32, !dbg !5760
  %cmp95 = icmp eq i32 %conv94, 1025, !dbg !5763
  br i1 %cmp95, label %if.then97, label %if.end197, !dbg !5764

if.then97:                                        ; preds = %lor.lhs.false91, %if.end85
  %97 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5765
  %buffer98 = getelementptr inbounds %struct.gtco, %struct.gtco* %97, i32 0, i32 4, !dbg !5767
  %98 = load i8*, i8** %buffer98, align 8, !dbg !5767
  %arrayidx99 = getelementptr i8, i8* %98, i64 0, !dbg !5765
  %99 = load i8, i8* %arrayidx99, align 1, !dbg !5765
  %conv100 = zext i8 %99 to i32, !dbg !5765
  %cmp101 = icmp eq i32 %conv100, 2, !dbg !5768
  br i1 %cmp101, label %if.then103, label %if.end107, !dbg !5769

if.then103:                                       ; preds = %if.then97
  %100 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5770
  %101 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5772
  %buffer104 = getelementptr inbounds %struct.gtco, %struct.gtco* %101, i32 0, i32 4, !dbg !5773
  %102 = load i8*, i8** %buffer104, align 8, !dbg !5773
  %arrayidx105 = getelementptr i8, i8* %102, i64 1, !dbg !5772
  %103 = load i8, i8* %arrayidx105, align 1, !dbg !5772
  %conv106 = zext i8 %103 to i32, !dbg !5772
  call void @input_event(%struct.input_dev* %100, i32 4, i32 4, i32 %conv106) #9, !dbg !5774
  br label %if.end107, !dbg !5775

if.end107:                                        ; preds = %if.then103, %if.then97
  %104 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5776
  %buffer108 = getelementptr inbounds %struct.gtco, %struct.gtco* %104, i32 0, i32 4, !dbg !5777
  %105 = load i8*, i8** %buffer108, align 8, !dbg !5777
  %arrayidx109 = getelementptr i8, i8* %105, i64 0, !dbg !5776
  %106 = load i8, i8* %arrayidx109, align 1, !dbg !5776
  %conv110 = zext i8 %106 to i32, !dbg !5776
  %cmp111 = icmp eq i32 %conv110, 1, !dbg !5778
  br i1 %cmp111, label %if.then113, label %if.end196, !dbg !5779

if.then113:                                       ; preds = %if.end107
  call void @llvm.dbg.declare(metadata i8* %buttonbyte, metadata !5780, metadata !DIExpression()), !dbg !5781
  %107 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5782
  %max_X = getelementptr inbounds %struct.gtco, %struct.gtco* %107, i32 0, i32 9, !dbg !5783
  %108 = load i32, i32* %max_X, align 4, !dbg !5783
  %cmp114 = icmp ugt i32 %108, 65536, !dbg !5784
  br i1 %cmp114, label %if.then116, label %if.else, !dbg !5785

if.then116:                                       ; preds = %if.then113
  %109 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5786
  %buffer117 = getelementptr inbounds %struct.gtco, %struct.gtco* %109, i32 0, i32 4, !dbg !5787
  %110 = load i8*, i8** %buffer117, align 8, !dbg !5787
  %arrayidx118 = getelementptr i8, i8* %110, i64 2, !dbg !5786
  %111 = load i8, i8* %arrayidx118, align 1, !dbg !5786
  %conv119 = zext i8 %111 to i32, !dbg !5786
  %shl120 = shl i32 %conv119, 8, !dbg !5788
  %conv121 = trunc i32 %shl120 to i16, !dbg !5789
  %conv122 = zext i16 %conv121 to i32, !dbg !5790
  %112 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5791
  %buffer123 = getelementptr inbounds %struct.gtco, %struct.gtco* %112, i32 0, i32 4, !dbg !5792
  %113 = load i8*, i8** %buffer123, align 8, !dbg !5792
  %arrayidx124 = getelementptr i8, i8* %113, i64 1, !dbg !5791
  %114 = load i8, i8* %arrayidx124, align 1, !dbg !5791
  %conv125 = zext i8 %114 to i32, !dbg !5793
  %or126 = or i32 %conv122, %conv125, !dbg !5794
  %conv127 = trunc i32 %or126 to i16, !dbg !5795
  %conv128 = zext i16 %conv127 to i32, !dbg !5795
  store i32 %conv128, i32* %val, align 4, !dbg !5796
  %115 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5797
  %buffer129 = getelementptr inbounds %struct.gtco, %struct.gtco* %115, i32 0, i32 4, !dbg !5798
  %116 = load i8*, i8** %buffer129, align 8, !dbg !5798
  %arrayidx130 = getelementptr i8, i8* %116, i64 3, !dbg !5797
  %117 = load i8, i8* %arrayidx130, align 1, !dbg !5797
  %conv131 = zext i8 %117 to i32, !dbg !5799
  %and132 = and i32 %conv131, 1, !dbg !5800
  %shl133 = shl i32 %and132, 16, !dbg !5801
  %118 = load i32, i32* %val, align 4, !dbg !5802
  %or134 = or i32 %118, %shl133, !dbg !5802
  store i32 %or134, i32* %val, align 4, !dbg !5802
  %119 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5803
  %120 = load i32, i32* %val, align 4, !dbg !5804
  call void @input_report_abs(%struct.input_dev* %119, i32 0, i32 %120) #9, !dbg !5805
  %121 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5806
  %buffer135 = getelementptr inbounds %struct.gtco, %struct.gtco* %121, i32 0, i32 4, !dbg !5807
  %122 = load i8*, i8** %buffer135, align 8, !dbg !5807
  %arrayidx136 = getelementptr i8, i8* %122, i64 3, !dbg !5806
  %123 = load i8, i8* %arrayidx136, align 1, !dbg !5806
  %conv137 = zext i8 %123 to i32, !dbg !5808
  %shr138 = ashr i32 %conv137, 1, !dbg !5809
  %conv139 = trunc i32 %shr138 to i8, !dbg !5810
  %arrayidx140 = getelementptr [2 x i8], [2 x i8]* %le_buffer, i64 0, i64 0, !dbg !5811
  store i8 %conv139, i8* %arrayidx140, align 1, !dbg !5812
  %124 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5813
  %buffer141 = getelementptr inbounds %struct.gtco, %struct.gtco* %124, i32 0, i32 4, !dbg !5814
  %125 = load i8*, i8** %buffer141, align 8, !dbg !5814
  %arrayidx142 = getelementptr i8, i8* %125, i64 3, !dbg !5813
  %126 = load i8, i8* %arrayidx142, align 1, !dbg !5813
  %conv143 = zext i8 %126 to i32, !dbg !5813
  %and144 = and i32 %conv143, 1, !dbg !5815
  %shl145 = shl i32 %and144, 7, !dbg !5816
  %conv146 = trunc i32 %shl145 to i8, !dbg !5817
  %conv147 = zext i8 %conv146 to i32, !dbg !5817
  %arrayidx148 = getelementptr [2 x i8], [2 x i8]* %le_buffer, i64 0, i64 0, !dbg !5818
  %127 = load i8, i8* %arrayidx148, align 1, !dbg !5819
  %conv149 = sext i8 %127 to i32, !dbg !5819
  %or150 = or i32 %conv149, %conv147, !dbg !5819
  %conv151 = trunc i32 %or150 to i8, !dbg !5819
  store i8 %conv151, i8* %arrayidx148, align 1, !dbg !5819
  %128 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5820
  %buffer152 = getelementptr inbounds %struct.gtco, %struct.gtco* %128, i32 0, i32 4, !dbg !5821
  %129 = load i8*, i8** %buffer152, align 8, !dbg !5821
  %arrayidx153 = getelementptr i8, i8* %129, i64 4, !dbg !5820
  %130 = load i8, i8* %arrayidx153, align 1, !dbg !5820
  %conv154 = zext i8 %130 to i32, !dbg !5820
  %shr155 = ashr i32 %conv154, 1, !dbg !5822
  %conv156 = trunc i32 %shr155 to i8, !dbg !5823
  %arrayidx157 = getelementptr [2 x i8], [2 x i8]* %le_buffer, i64 0, i64 1, !dbg !5824
  store i8 %conv156, i8* %arrayidx157, align 1, !dbg !5825
  %131 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5826
  %buffer158 = getelementptr inbounds %struct.gtco, %struct.gtco* %131, i32 0, i32 4, !dbg !5827
  %132 = load i8*, i8** %buffer158, align 8, !dbg !5827
  %arrayidx159 = getelementptr i8, i8* %132, i64 5, !dbg !5826
  %133 = load i8, i8* %arrayidx159, align 1, !dbg !5826
  %conv160 = zext i8 %133 to i32, !dbg !5826
  %and161 = and i32 %conv160, 1, !dbg !5828
  %shl162 = shl i32 %and161, 7, !dbg !5829
  %conv163 = trunc i32 %shl162 to i8, !dbg !5830
  %conv164 = zext i8 %conv163 to i32, !dbg !5830
  %arrayidx165 = getelementptr [2 x i8], [2 x i8]* %le_buffer, i64 0, i64 1, !dbg !5831
  %134 = load i8, i8* %arrayidx165, align 1, !dbg !5832
  %conv166 = sext i8 %134 to i32, !dbg !5832
  %or167 = or i32 %conv166, %conv164, !dbg !5832
  %conv168 = trunc i32 %or167 to i8, !dbg !5832
  store i8 %conv168, i8* %arrayidx165, align 1, !dbg !5832
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %le_buffer, i64 0, i64 0, !dbg !5833
  store i8* %arraydecay, i8** %p.addr.i218, align 8
  %135 = load i8*, i8** %p.addr.i218, align 8, !dbg !5834
  %136 = bitcast i8* %135 to i16*, !dbg !5835
  store i16* %136, i16** %p.addr.i.i217, align 8
  %137 = load i16*, i16** %p.addr.i.i217, align 8, !dbg !5836
  %138 = load i16, i16* %137, align 2, !dbg !5837
  %conv170 = zext i16 %138 to i32, !dbg !5838
  store i32 %conv170, i32* %val, align 4, !dbg !5839
  %139 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5840
  %140 = load i32, i32* %val, align 4, !dbg !5841
  call void @input_report_abs(%struct.input_dev* %139, i32 1, i32 %140) #9, !dbg !5842
  %141 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5843
  %buffer171 = getelementptr inbounds %struct.gtco, %struct.gtco* %141, i32 0, i32 4, !dbg !5844
  %142 = load i8*, i8** %buffer171, align 8, !dbg !5844
  %arrayidx172 = getelementptr i8, i8* %142, i64 5, !dbg !5843
  %143 = load i8, i8* %arrayidx172, align 1, !dbg !5843
  %conv173 = zext i8 %143 to i32, !dbg !5843
  %shr174 = ashr i32 %conv173, 1, !dbg !5845
  %conv175 = trunc i32 %shr174 to i8, !dbg !5843
  store i8 %conv175, i8* %buttonbyte, align 1, !dbg !5846
  br label %if.end186, !dbg !5847

if.else:                                          ; preds = %if.then113
  %144 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5848
  %buffer176 = getelementptr inbounds %struct.gtco, %struct.gtco* %144, i32 0, i32 4, !dbg !5849
  %145 = load i8*, i8** %buffer176, align 8, !dbg !5849
  %arrayidx177 = getelementptr i8, i8* %145, i64 1, !dbg !5848
  store i8* %arrayidx177, i8** %p.addr.i222, align 8
  %146 = load i8*, i8** %p.addr.i222, align 8, !dbg !5850
  %147 = bitcast i8* %146 to i16*, !dbg !5851
  store i16* %147, i16** %p.addr.i.i221, align 8
  %148 = load i16*, i16** %p.addr.i.i221, align 8, !dbg !5852
  %149 = load i16, i16* %148, align 2, !dbg !5853
  %conv179 = zext i16 %149 to i32, !dbg !5854
  store i32 %conv179, i32* %val, align 4, !dbg !5855
  %150 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5856
  %151 = load i32, i32* %val, align 4, !dbg !5857
  call void @input_report_abs(%struct.input_dev* %150, i32 0, i32 %151) #9, !dbg !5858
  %152 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5859
  %buffer180 = getelementptr inbounds %struct.gtco, %struct.gtco* %152, i32 0, i32 4, !dbg !5860
  %153 = load i8*, i8** %buffer180, align 8, !dbg !5860
  %arrayidx181 = getelementptr i8, i8* %153, i64 3, !dbg !5859
  store i8* %arrayidx181, i8** %p.addr.i220, align 8
  %154 = load i8*, i8** %p.addr.i220, align 8, !dbg !5861
  %155 = bitcast i8* %154 to i16*, !dbg !5862
  store i16* %155, i16** %p.addr.i.i219, align 8
  %156 = load i16*, i16** %p.addr.i.i219, align 8, !dbg !5863
  %157 = load i16, i16* %156, align 2, !dbg !5864
  %conv183 = zext i16 %157 to i32, !dbg !5865
  store i32 %conv183, i32* %val, align 4, !dbg !5866
  %158 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5867
  %159 = load i32, i32* %val, align 4, !dbg !5868
  call void @input_report_abs(%struct.input_dev* %158, i32 1, i32 %159) #9, !dbg !5869
  %160 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5870
  %buffer184 = getelementptr inbounds %struct.gtco, %struct.gtco* %160, i32 0, i32 4, !dbg !5871
  %161 = load i8*, i8** %buffer184, align 8, !dbg !5871
  %arrayidx185 = getelementptr i8, i8* %161, i64 5, !dbg !5870
  %162 = load i8, i8* %arrayidx185, align 1, !dbg !5870
  store i8 %162, i8* %buttonbyte, align 1, !dbg !5872
  br label %if.end186

if.end186:                                        ; preds = %if.else, %if.then116
  %163 = load i8, i8* %buttonbyte, align 1, !dbg !5873
  %conv187 = sext i8 %163 to i32, !dbg !5873
  %and188 = and i32 %conv187, 32, !dbg !5874
  %tobool189 = icmp ne i32 %and188, 0, !dbg !5873
  %164 = zext i1 %tobool189 to i64, !dbg !5873
  %cond190 = select i1 %tobool189, i32 1, i32 0, !dbg !5873
  store i32 %cond190, i32* %val, align 4, !dbg !5875
  %165 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5876
  %166 = load i32, i32* %val, align 4, !dbg !5877
  call void @input_report_abs(%struct.input_dev* %165, i32 25, i32 %166) #9, !dbg !5878
  %167 = load i8, i8* %buttonbyte, align 1, !dbg !5879
  %conv191 = sext i8 %167 to i32, !dbg !5879
  %and192 = and i32 %conv191, 15, !dbg !5880
  store i32 %and192, i32* %val, align 4, !dbg !5881
  %168 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5882
  %169 = load i32, i32* %val, align 4, !dbg !5883
  call void @input_event(%struct.input_dev* %168, i32 4, i32 0, i32 %169) #9, !dbg !5884
  %170 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5885
  %171 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5886
  %buffer193 = getelementptr inbounds %struct.gtco, %struct.gtco* %171, i32 0, i32 4, !dbg !5887
  %172 = load i8*, i8** %buffer193, align 8, !dbg !5887
  %arrayidx194 = getelementptr i8, i8* %172, i64 6, !dbg !5886
  %173 = load i8, i8* %arrayidx194, align 1, !dbg !5886
  %conv195 = zext i8 %173 to i32, !dbg !5886
  call void @input_report_abs(%struct.input_dev* %170, i32 40, i32 %conv195) #9, !dbg !5888
  br label %if.end196, !dbg !5889

if.end196:                                        ; preds = %if.end186, %if.end107
  br label %if.end197, !dbg !5890

if.end197:                                        ; preds = %if.end196, %lor.lhs.false91
  %174 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5891
  %175 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5892
  %buffer198 = getelementptr inbounds %struct.gtco, %struct.gtco* %175, i32 0, i32 4, !dbg !5893
  %176 = load i8*, i8** %buffer198, align 8, !dbg !5893
  %arrayidx199 = getelementptr i8, i8* %176, i64 0, !dbg !5892
  %177 = load i8, i8* %arrayidx199, align 1, !dbg !5892
  %conv200 = zext i8 %177 to i32, !dbg !5892
  call void @input_event(%struct.input_dev* %174, i32 4, i32 3, i32 %conv200) #9, !dbg !5894
  %178 = load %struct.input_dev*, %struct.input_dev** %inputdev, align 8, !dbg !5895
  call void @input_sync(%struct.input_dev* %178) #9, !dbg !5896
  br label %resubmit, !dbg !5896

resubmit:                                         ; preds = %if.end197, %if.then8
  call void @llvm.dbg.label(metadata !5897), !dbg !5898
  %179 = load %struct.urb*, %struct.urb** %urbinfo.addr, align 8, !dbg !5899
  %call201 = call i32 @usb_submit_urb(%struct.urb* %179, i32 2592) #9, !dbg !5900
  store i32 %call201, i32* %rc, align 4, !dbg !5901
  %180 = load i32, i32* %rc, align 4, !dbg !5902
  %cmp202 = icmp ne i32 %180, 0, !dbg !5904
  br i1 %cmp202, label %if.then204, label %if.end205, !dbg !5905

if.then204:                                       ; preds = %resubmit
  %181 = load %struct.gtco*, %struct.gtco** %device, align 8, !dbg !5906
  %intf = getelementptr inbounds %struct.gtco, %struct.gtco* %181, i32 0, i32 1, !dbg !5906
  %182 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5906
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %182, i32 0, i32 7, !dbg !5906
  %183 = load i32, i32* %rc, align 4, !dbg !5906
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 %183) #10, !dbg !5906
  br label %if.end205, !dbg !5906

if.end205:                                        ; preds = %if.then, %if.then204, %resubmit
  ret void, !dbg !5907
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5908 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5913, metadata !DIExpression()), !dbg !5914
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5915
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5916
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5917
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5918
  ret void, !dbg !5919
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5920 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5924, metadata !DIExpression()), !dbg !5929
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5931, metadata !DIExpression()), !dbg !5932
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  %0 = load i64, i64* %size.addr, align 8, !dbg !5935
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5937
  br i1 %1, label %if.then, label %if.end447, !dbg !5938

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5939
  %tobool = icmp ne i64 %2, 0, !dbg !5939
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5942

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5943
  br label %return, !dbg !5943

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5944
  %cmp = icmp ult i64 %3, 4096, !dbg !5946
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5947

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5948
  br label %return, !dbg !5948

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub = sub i64 %4, 1, !dbg !5949
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5949
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5949

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub4 = sub i64 %6, 1, !dbg !5949
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5949
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5949

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub6 = sub i64 %8, 1, !dbg !5949
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5949
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5949

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5949

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub9 = sub i64 %9, 1, !dbg !5949
  %and = and i64 %sub9, -9223372036854775808, !dbg !5949
  %tobool10 = icmp ne i64 %and, 0, !dbg !5949
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5949

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5949

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub13 = sub i64 %10, 1, !dbg !5949
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5949
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5949
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5949

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5949

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub18 = sub i64 %11, 1, !dbg !5949
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5949
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5949
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5949

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5949

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub23 = sub i64 %12, 1, !dbg !5949
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5949
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5949
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5949

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5949

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub28 = sub i64 %13, 1, !dbg !5949
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5949
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5949
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5949

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5949

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub33 = sub i64 %14, 1, !dbg !5949
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5949
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5949
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5949

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5949

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub38 = sub i64 %15, 1, !dbg !5949
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5949
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5949
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5949

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5949

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub43 = sub i64 %16, 1, !dbg !5949
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5949
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5949
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5949

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5949

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub48 = sub i64 %17, 1, !dbg !5949
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5949
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5949
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5949

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5949

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub53 = sub i64 %18, 1, !dbg !5949
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5949
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5949
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5949

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5949

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub58 = sub i64 %19, 1, !dbg !5949
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5949
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5949
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5949

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5949

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub63 = sub i64 %20, 1, !dbg !5949
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5949
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5949
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5949

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5949

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub68 = sub i64 %21, 1, !dbg !5949
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5949
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5949
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5949

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5949

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub73 = sub i64 %22, 1, !dbg !5949
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5949
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5949
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5949

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5949

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub78 = sub i64 %23, 1, !dbg !5949
  %and79 = and i64 %sub78, 562949953421312, !dbg !5949
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5949
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5949

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5949

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub83 = sub i64 %24, 1, !dbg !5949
  %and84 = and i64 %sub83, 281474976710656, !dbg !5949
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5949
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5949

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5949

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub88 = sub i64 %25, 1, !dbg !5949
  %and89 = and i64 %sub88, 140737488355328, !dbg !5949
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5949
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5949

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5949

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub93 = sub i64 %26, 1, !dbg !5949
  %and94 = and i64 %sub93, 70368744177664, !dbg !5949
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5949
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5949

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5949

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub98 = sub i64 %27, 1, !dbg !5949
  %and99 = and i64 %sub98, 35184372088832, !dbg !5949
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5949
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5949

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5949

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub103 = sub i64 %28, 1, !dbg !5949
  %and104 = and i64 %sub103, 17592186044416, !dbg !5949
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5949
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5949

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5949

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub108 = sub i64 %29, 1, !dbg !5949
  %and109 = and i64 %sub108, 8796093022208, !dbg !5949
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5949
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5949

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5949

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub113 = sub i64 %30, 1, !dbg !5949
  %and114 = and i64 %sub113, 4398046511104, !dbg !5949
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5949
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5949

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5949

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub118 = sub i64 %31, 1, !dbg !5949
  %and119 = and i64 %sub118, 2199023255552, !dbg !5949
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5949
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5949

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5949

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub123 = sub i64 %32, 1, !dbg !5949
  %and124 = and i64 %sub123, 1099511627776, !dbg !5949
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5949
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5949

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5949

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub128 = sub i64 %33, 1, !dbg !5949
  %and129 = and i64 %sub128, 549755813888, !dbg !5949
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5949
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5949

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5949

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub133 = sub i64 %34, 1, !dbg !5949
  %and134 = and i64 %sub133, 274877906944, !dbg !5949
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5949
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5949

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5949

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub138 = sub i64 %35, 1, !dbg !5949
  %and139 = and i64 %sub138, 137438953472, !dbg !5949
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5949
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5949

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5949

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub143 = sub i64 %36, 1, !dbg !5949
  %and144 = and i64 %sub143, 68719476736, !dbg !5949
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5949
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5949

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5949

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub148 = sub i64 %37, 1, !dbg !5949
  %and149 = and i64 %sub148, 34359738368, !dbg !5949
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5949
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5949

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5949

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub153 = sub i64 %38, 1, !dbg !5949
  %and154 = and i64 %sub153, 17179869184, !dbg !5949
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5949
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5949

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5949

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub158 = sub i64 %39, 1, !dbg !5949
  %and159 = and i64 %sub158, 8589934592, !dbg !5949
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5949
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5949

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5949

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub163 = sub i64 %40, 1, !dbg !5949
  %and164 = and i64 %sub163, 4294967296, !dbg !5949
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5949
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5949

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5949

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub168 = sub i64 %41, 1, !dbg !5949
  %and169 = and i64 %sub168, 2147483648, !dbg !5949
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5949
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5949

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5949

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub173 = sub i64 %42, 1, !dbg !5949
  %and174 = and i64 %sub173, 1073741824, !dbg !5949
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5949
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5949

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5949

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub178 = sub i64 %43, 1, !dbg !5949
  %and179 = and i64 %sub178, 536870912, !dbg !5949
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5949
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5949

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5949

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub183 = sub i64 %44, 1, !dbg !5949
  %and184 = and i64 %sub183, 268435456, !dbg !5949
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5949
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5949

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5949

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub188 = sub i64 %45, 1, !dbg !5949
  %and189 = and i64 %sub188, 134217728, !dbg !5949
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5949
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5949

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5949

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub193 = sub i64 %46, 1, !dbg !5949
  %and194 = and i64 %sub193, 67108864, !dbg !5949
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5949
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5949

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5949

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub198 = sub i64 %47, 1, !dbg !5949
  %and199 = and i64 %sub198, 33554432, !dbg !5949
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5949
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5949

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5949

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub203 = sub i64 %48, 1, !dbg !5949
  %and204 = and i64 %sub203, 16777216, !dbg !5949
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5949
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5949

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5949

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub208 = sub i64 %49, 1, !dbg !5949
  %and209 = and i64 %sub208, 8388608, !dbg !5949
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5949
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5949

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5949

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub213 = sub i64 %50, 1, !dbg !5949
  %and214 = and i64 %sub213, 4194304, !dbg !5949
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5949
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5949

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5949

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub218 = sub i64 %51, 1, !dbg !5949
  %and219 = and i64 %sub218, 2097152, !dbg !5949
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5949
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5949

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5949

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub223 = sub i64 %52, 1, !dbg !5949
  %and224 = and i64 %sub223, 1048576, !dbg !5949
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5949
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5949

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5949

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub228 = sub i64 %53, 1, !dbg !5949
  %and229 = and i64 %sub228, 524288, !dbg !5949
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5949
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5949

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5949

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub233 = sub i64 %54, 1, !dbg !5949
  %and234 = and i64 %sub233, 262144, !dbg !5949
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5949
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5949

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5949

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub238 = sub i64 %55, 1, !dbg !5949
  %and239 = and i64 %sub238, 131072, !dbg !5949
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5949
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5949

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5949

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub243 = sub i64 %56, 1, !dbg !5949
  %and244 = and i64 %sub243, 65536, !dbg !5949
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5949
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5949

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5949

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub248 = sub i64 %57, 1, !dbg !5949
  %and249 = and i64 %sub248, 32768, !dbg !5949
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5949
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5949

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5949

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub253 = sub i64 %58, 1, !dbg !5949
  %and254 = and i64 %sub253, 16384, !dbg !5949
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5949
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5949

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5949

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub258 = sub i64 %59, 1, !dbg !5949
  %and259 = and i64 %sub258, 8192, !dbg !5949
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5949
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5949

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5949

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub263 = sub i64 %60, 1, !dbg !5949
  %and264 = and i64 %sub263, 4096, !dbg !5949
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5949
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5949

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5949

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub268 = sub i64 %61, 1, !dbg !5949
  %and269 = and i64 %sub268, 2048, !dbg !5949
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5949
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5949

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5949

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub273 = sub i64 %62, 1, !dbg !5949
  %and274 = and i64 %sub273, 1024, !dbg !5949
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5949
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5949

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5949

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub278 = sub i64 %63, 1, !dbg !5949
  %and279 = and i64 %sub278, 512, !dbg !5949
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5949
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5949

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5949

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub283 = sub i64 %64, 1, !dbg !5949
  %and284 = and i64 %sub283, 256, !dbg !5949
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5949
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5949

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5949

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub288 = sub i64 %65, 1, !dbg !5949
  %and289 = and i64 %sub288, 128, !dbg !5949
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5949
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5949

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5949

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub293 = sub i64 %66, 1, !dbg !5949
  %and294 = and i64 %sub293, 64, !dbg !5949
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5949
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5949

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5949

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub298 = sub i64 %67, 1, !dbg !5949
  %and299 = and i64 %sub298, 32, !dbg !5949
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5949
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5949

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5949

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub303 = sub i64 %68, 1, !dbg !5949
  %and304 = and i64 %sub303, 16, !dbg !5949
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5949
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5949

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5949

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub308 = sub i64 %69, 1, !dbg !5949
  %and309 = and i64 %sub308, 8, !dbg !5949
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5949
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5949

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5949

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub313 = sub i64 %70, 1, !dbg !5949
  %and314 = and i64 %sub313, 4, !dbg !5949
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5949
  %71 = zext i1 %tobool315 to i64, !dbg !5949
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5949
  br label %cond.end, !dbg !5949

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5949
  br label %cond.end317, !dbg !5949

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5949
  br label %cond.end319, !dbg !5949

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5949
  br label %cond.end321, !dbg !5949

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5949
  br label %cond.end323, !dbg !5949

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5949
  br label %cond.end325, !dbg !5949

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5949
  br label %cond.end327, !dbg !5949

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5949
  br label %cond.end329, !dbg !5949

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5949
  br label %cond.end331, !dbg !5949

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5949
  br label %cond.end333, !dbg !5949

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5949
  br label %cond.end335, !dbg !5949

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5949
  br label %cond.end337, !dbg !5949

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5949
  br label %cond.end339, !dbg !5949

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5949
  br label %cond.end341, !dbg !5949

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5949
  br label %cond.end343, !dbg !5949

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5949
  br label %cond.end345, !dbg !5949

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5949
  br label %cond.end347, !dbg !5949

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5949
  br label %cond.end349, !dbg !5949

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5949
  br label %cond.end351, !dbg !5949

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5949
  br label %cond.end353, !dbg !5949

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5949
  br label %cond.end355, !dbg !5949

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5949
  br label %cond.end357, !dbg !5949

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5949
  br label %cond.end359, !dbg !5949

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5949
  br label %cond.end361, !dbg !5949

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5949
  br label %cond.end363, !dbg !5949

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5949
  br label %cond.end365, !dbg !5949

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5949
  br label %cond.end367, !dbg !5949

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5949
  br label %cond.end369, !dbg !5949

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5949
  br label %cond.end371, !dbg !5949

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5949
  br label %cond.end373, !dbg !5949

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5949
  br label %cond.end375, !dbg !5949

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5949
  br label %cond.end377, !dbg !5949

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5949
  br label %cond.end379, !dbg !5949

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5949
  br label %cond.end381, !dbg !5949

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5949
  br label %cond.end383, !dbg !5949

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5949
  br label %cond.end385, !dbg !5949

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5949
  br label %cond.end387, !dbg !5949

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5949
  br label %cond.end389, !dbg !5949

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5949
  br label %cond.end391, !dbg !5949

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5949
  br label %cond.end393, !dbg !5949

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5949
  br label %cond.end395, !dbg !5949

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5949
  br label %cond.end397, !dbg !5949

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5949
  br label %cond.end399, !dbg !5949

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5949
  br label %cond.end401, !dbg !5949

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5949
  br label %cond.end403, !dbg !5949

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5949
  br label %cond.end405, !dbg !5949

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5949
  br label %cond.end407, !dbg !5949

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5949
  br label %cond.end409, !dbg !5949

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5949
  br label %cond.end411, !dbg !5949

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5949
  br label %cond.end413, !dbg !5949

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5949
  br label %cond.end415, !dbg !5949

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5949
  br label %cond.end417, !dbg !5949

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5949
  br label %cond.end419, !dbg !5949

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5949
  br label %cond.end421, !dbg !5949

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5949
  br label %cond.end423, !dbg !5949

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5949
  br label %cond.end425, !dbg !5949

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5949
  br label %cond.end427, !dbg !5949

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5949
  br label %cond.end429, !dbg !5949

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5949
  br label %cond.end431, !dbg !5949

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5949
  br label %cond.end433, !dbg !5949

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5949
  br label %cond.end435, !dbg !5949

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5949
  br label %cond.end437, !dbg !5949

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5949
  br label %cond.end440, !dbg !5949

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5949

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5949
  br label %cond.end444, !dbg !5949

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5949
  %sub443 = sub i64 %72, 1, !dbg !5949
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5949
  br label %cond.end444, !dbg !5949

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5949
  %sub446 = sub i32 %cond445, 12, !dbg !5950
  %add = add i32 %sub446, 1, !dbg !5951
  store i32 %add, i32* %retval, align 4, !dbg !5952
  br label %return, !dbg !5952

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5953
  %dec = add i64 %73, -1, !dbg !5953
  store i64 %dec, i64* %size.addr, align 8, !dbg !5953
  %74 = load i64, i64* %size.addr, align 8, !dbg !5954
  %shr = lshr i64 %74, 12, !dbg !5954
  store i64 %shr, i64* %size.addr, align 8, !dbg !5954
  %75 = load i64, i64* %size.addr, align 8, !dbg !5955
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5932
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5956
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5957
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5956, !srcloc !5958
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5956
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5959
  %add.i = add i32 %79, 1, !dbg !5960
  store i32 %add.i, i32* %retval, align 4, !dbg !5961
  br label %return, !dbg !5961

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5962
  ret i32 %80, !dbg !5962
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5963 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5924, metadata !DIExpression()), !dbg !5967
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5931, metadata !DIExpression()), !dbg !5969
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  %0 = load i64, i64* %n.addr, align 8, !dbg !5972
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5969
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5973
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5974
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5973, !srcloc !5958
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5973
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5975
  %add.i = add i32 %4, 1, !dbg !5976
  %sub = sub i32 %add.i, 1, !dbg !5977
  ret i32 %sub, !dbg !5978
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5979 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5982, metadata !DIExpression()), !dbg !5983
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5984, metadata !DIExpression()), !dbg !5985
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5986, metadata !DIExpression()), !dbg !5987
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5990
  ret i8* %0, !dbg !5991
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !5992 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5997
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5998
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #9, !dbg !5999
  ret i8* %call, !dbg !6000
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6001 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6006, metadata !DIExpression()), !dbg !6007
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6008
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6009
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6009
  ret i8* %1, !dbg !6010
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6011 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6014, metadata !DIExpression()), !dbg !6015
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6018
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6019
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6020
  store i8* %0, i8** %driver_data, align 8, !dbg !6021
  ret void, !dbg !6022
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !6023 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6026, metadata !DIExpression()), !dbg !6027
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6032
  %1 = load i32, i32* %code.addr, align 4, !dbg !6033
  %2 = load i32, i32* %value.addr, align 4, !dbg !6034
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #9, !dbg !6035
  ret void, !dbg !6036
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !6037 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6038, metadata !DIExpression()), !dbg !6039
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6040
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #9, !dbg !6041
  ret void, !dbg !6042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6043 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6046, metadata !DIExpression()), !dbg !6047
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6048
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6049
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6050
  ret i8* %call, !dbg !6051
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

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
!llvm.module.flags = !{!3893, !3894, !3895, !3896}
!llvm.ident = !{!3897}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gtco_driverinfo_table_init212", scope: !2, file: !3, line: 1040, type: !127, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !120, globals: !3808, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/tablet/gtco.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !99, !108, !113}
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
!120 = !{!121, !124, !126, !128, !131, !127, !133, !3806, !3807, !146, !137, !809, !1221, !144, !1314}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !123, line: 76, flags: DIFlagFwdDecl)
!123 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !125, line: 148, baseType: !7)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !129, line: 24, baseType: !130)
!129 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !132, line: 29, baseType: !128)
!132 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !135)
!135 = !{!136, !138, !143, !147, !148, !149, !150, !151, !154, !155, !159, !160, !3548, !3588, !3589, !3606, !3667, !3749, !3750, !3752, !3753, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3788, !3789, !3790, !3795, !3802, !3803, !3804, !3805}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !134, file: !6, line: 632, baseType: !137, size: 32)
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !134, file: !6, line: 633, baseType: !139, size: 128, offset: 32)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, elements: !141)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!141 = !{!142}
!142 = !DISubrange(count: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !134, file: !6, line: 634, baseType: !144, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !145, line: 21, baseType: !146)
!145 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !129, line: 27, baseType: !7)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !134, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !134, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !134, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !134, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !134, file: !6, line: 640, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !134, file: !6, line: 641, baseType: !137, size: 32, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !134, file: !6, line: 643, baseType: !156, size: 64, offset: 416)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 2)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !6, line: 645, baseType: !133, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !134, file: !6, line: 646, baseType: !161, size: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !163)
!163 = !{!164, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3542, !3543, !3544, !3545, !3546, !3547}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !162, file: !6, line: 425, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !167)
!167 = !{!168, !3166, !3167, !3170, !3171, !3222, !3313, !3314, !3315, !3316, !3317, !3326, !3431, !3444, !3447, !3448, !3452, !3454, !3455, !3456, !3460, !3466, !3467, !3470, !3474, !3477, !3478, !3479, !3480, !3481, !3513, !3514, !3515, !3518, !3521, !3522, !3523, !3524}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !166, file: !67, line: 462, baseType: !169, size: 512)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !170, line: 64, size: 512, elements: !171)
!170 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !175, !181, !183, !243, !3017, !3156, !3161, !3162, !3163, !3164, !3165}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !170, line: 65, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !169, file: !170, line: 66, baseType: !176, size: 128, offset: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !125, line: 178, size: 128, elements: !177)
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !125, line: 179, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !176, file: !125, line: 179, baseType: !179, size: 64, offset: 64)
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
!214 = !{!137, !184, !182}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !170, line: 158, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!173, !184, !182}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !208, file: !170, line: 159, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!137, !184, !182, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !170, line: 148, size: 20736, elements: !227)
!227 = !{!228, !233, !237, !238, !242}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !226, file: !170, line: 149, baseType: !229, size: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 192, elements: !231)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!231 = !{!232}
!232 = !DISubrange(count: 3)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !226, file: !170, line: 150, baseType: !234, size: 4096, offset: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 4096, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !226, file: !170, line: 151, baseType: !137, size: 32, offset: 4288)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !226, file: !170, line: 152, baseType: !239, size: 16384, offset: 4320)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 16384, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 2048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !226, file: !170, line: 153, baseType: !137, size: 32, offset: 20704)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !169, file: !170, line: 69, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !170, line: 138, size: 448, elements: !246)
!246 = !{!247, !251, !280, !282, !2977, !3007, !3011}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !170, line: 139, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !182}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !245, file: !170, line: 140, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !255, line: 230, size: 128, elements: !256)
!255 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!256 = !{!257, !272}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !254, file: !255, line: 231, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !182, !266, !230}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !125, line: 60, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !263, line: 73, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !263, line: 15, baseType: !265)
!265 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !255, line: 30, size: 128, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !255, line: 31, baseType: !173, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !267, file: !255, line: 32, baseType: !271, size: 16, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !125, line: 19, baseType: !130)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !254, file: !255, line: 232, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!261, !182, !266, !173, !276}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 55, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !263, line: 72, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !263, line: 16, baseType: !279)
!279 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !245, file: !170, line: 141, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !245, file: !170, line: 142, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !255, line: 84, size: 320, elements: !287)
!287 = !{!288, !289, !293, !2974, !2975}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !255, line: 85, baseType: !173, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !286, file: !255, line: 86, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!271, !182, !266, !137}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !286, file: !255, line: 88, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!271, !182, !297, !137}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !255, line: 168, size: 448, elements: !299)
!299 = !{!300, !301, !302, !303, !2969, !2970}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !298, file: !255, line: 169, baseType: !267, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !298, file: !255, line: 170, baseType: !276, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !298, file: !255, line: 171, baseType: !127, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !298, file: !255, line: 172, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!261, !307, !182, !297, !230, !482, !276}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !309)
!309 = !{!310, !328, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2952, !2953, !2962, !2963, !2964, !2965, !2966, !2967, !2968}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !308, file: !38, line: 920, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !308, file: !38, line: 917, size: 128, elements: !312)
!312 = !{!313, !319}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !311, file: !38, line: 918, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !315, line: 58, size: 64, elements: !316)
!315 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !315, line: 59, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !311, file: !38, line: 919, baseType: !320, size: 128, align: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !125, line: 216, size: 128, align: 64, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !125, line: 217, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !320, file: !125, line: 218, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !323}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !308, file: !38, line: 921, baseType: !329, size: 128, offset: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !330, line: 8, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !329, file: !330, line: 9, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !335, line: 18, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !329, file: !330, line: 10, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !335, line: 89, size: 1536, elements: !339)
!339 = !{!340, !341, !351, !359, !360, !379, !2902, !2904, !2916, !2917, !2918, !2919, !2920, !2926, !2927, !2928}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !338, file: !335, line: 91, baseType: !7, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !338, file: !335, line: 92, baseType: !342, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !343, line: 277, baseType: !344)
!343 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !343, line: 277, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !344, file: !343, line: 277, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !343, line: 70, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !343, line: 65, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !348, file: !343, line: 66, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !338, file: !335, line: 93, baseType: !352, size: 128, offset: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !353, line: 38, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !353, line: 39, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !352, file: !353, line: 39, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !338, file: !335, line: 94, baseType: !337, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !338, file: !335, line: 95, baseType: !361, size: 128, offset: 256)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !335, line: 47, size: 128, elements: !362)
!362 = !{!363, !375}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !335, line: 48, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !335, line: 48, size: 64, elements: !365)
!365 = !{!366, !371}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !335, line: 49, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !335, line: 49, size: 64, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !367, file: !335, line: 50, baseType: !144, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !367, file: !335, line: 50, baseType: !144, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !364, file: !335, line: 52, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !145, line: 23, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !129, line: 31, baseType: !374)
!374 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !335, line: 54, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !338, file: !335, line: 96, baseType: !380, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !382)
!382 = !{!383, !384, !385, !393, !400, !401, !549, !2614, !2615, !2616, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2878, !2886, !2887, !2888, !2898, !2899, !2900, !2901}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !381, file: !38, line: 611, baseType: !271, size: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !381, file: !38, line: 612, baseType: !130, size: 16, offset: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !381, file: !38, line: 613, baseType: !386, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !387, line: 23, baseType: !388)
!387 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 21, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !388, file: !387, line: 22, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !125, line: 32, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !263, line: 49, baseType: !7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !381, file: !38, line: 614, baseType: !394, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !387, line: 28, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 26, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !387, line: 27, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !125, line: 33, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !263, line: 50, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !381, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !381, file: !38, line: 622, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !405)
!405 = !{!406, !410, !423, !427, !433, !437, !443, !447, !451, !455, !459, !460, !466, !470, !496, !525, !529, !535, !540, !544, !545}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !404, file: !38, line: 1865, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!337, !380, !337, !7}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !404, file: !38, line: 1866, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!173, !337, !380, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !416, line: 10, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !422}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !415, file: !416, line: 11, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !127}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !415, file: !416, line: 12, baseType: !127, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !404, file: !38, line: 1867, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!137, !380, !137}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !404, file: !38, line: 1868, baseType: !428, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!431, !380, !137}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !404, file: !38, line: 1870, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!137, !337, !230, !137}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !404, file: !38, line: 1872, baseType: !438, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!137, !380, !337, !271, !441}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 30, baseType: !442)
!442 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !404, file: !38, line: 1873, baseType: !444, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!137, !337, !380, !337}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !404, file: !38, line: 1874, baseType: !448, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!137, !380, !337}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !404, file: !38, line: 1875, baseType: !452, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!137, !380, !337, !173}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !404, file: !38, line: 1876, baseType: !456, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!137, !380, !337, !271}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !404, file: !38, line: 1877, baseType: !448, size: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !404, file: !38, line: 1878, baseType: !461, size: 64, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!137, !380, !337, !271, !464}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !125, line: 16, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !125, line: 13, baseType: !144)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !404, file: !38, line: 1879, baseType: !467, size: 64, offset: 768)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!137, !380, !337, !380, !337, !7}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !404, file: !38, line: 1881, baseType: !471, size: 64, offset: 832)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!137, !337, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !485, !493, !494, !495}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !475, file: !38, line: 220, baseType: !7, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !475, file: !38, line: 221, baseType: !271, size: 16, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !475, file: !38, line: 222, baseType: !386, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !475, file: !38, line: 223, baseType: !394, size: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !475, file: !38, line: 224, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !125, line: 46, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !263, line: 88, baseType: !484)
!484 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !475, file: !38, line: 225, baseType: !486, size: 128, offset: 192)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !487, line: 13, size: 128, elements: !488)
!487 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !486, file: !487, line: 14, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !487, line: 8, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !129, line: 30, baseType: !484)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !486, file: !487, line: 15, baseType: !265, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !475, file: !38, line: 226, baseType: !486, size: 128, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !475, file: !38, line: 227, baseType: !486, size: 128, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !475, file: !38, line: 234, baseType: !307, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !404, file: !38, line: 1882, baseType: !497, size: 64, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!137, !500, !502, !144, !7}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !504, line: 22, size: 1152, elements: !505)
!504 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!505 = !{!506, !507, !508, !509, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !503, file: !504, line: 23, baseType: !144, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !503, file: !504, line: 24, baseType: !271, size: 16, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !503, file: !504, line: 25, baseType: !7, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !503, file: !504, line: 26, baseType: !510, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !125, line: 104, baseType: !144)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !503, file: !504, line: 27, baseType: !372, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !503, file: !504, line: 28, baseType: !372, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !503, file: !504, line: 37, baseType: !372, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !503, file: !504, line: 38, baseType: !464, size: 32, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !503, file: !504, line: 39, baseType: !464, size: 32, offset: 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !503, file: !504, line: 40, baseType: !386, size: 32, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !503, file: !504, line: 41, baseType: !394, size: 32, offset: 416)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !503, file: !504, line: 42, baseType: !482, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !503, file: !504, line: 43, baseType: !486, size: 128, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !503, file: !504, line: 44, baseType: !486, size: 128, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !503, file: !504, line: 45, baseType: !486, size: 128, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !503, file: !504, line: 46, baseType: !486, size: 128, offset: 896)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !503, file: !504, line: 47, baseType: !372, size: 64, offset: 1024)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !503, file: !504, line: 48, baseType: !372, size: 64, offset: 1088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !404, file: !38, line: 1883, baseType: !526, size: 64, offset: 960)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!261, !337, !230, !276}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !404, file: !38, line: 1884, baseType: !530, size: 64, offset: 1024)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!137, !380, !533, !372, !372}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !404, file: !38, line: 1886, baseType: !536, size: 64, offset: 1088)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!137, !380, !539, !137}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !404, file: !38, line: 1887, baseType: !541, size: 64, offset: 1152)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!137, !380, !337, !307, !7, !271}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !404, file: !38, line: 1890, baseType: !456, size: 64, offset: 1216)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !404, file: !38, line: 1891, baseType: !546, size: 64, offset: 1280)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!137, !380, !431, !137}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !381, file: !38, line: 623, baseType: !550, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !605, !2221, !2303, !2386, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2402, !2406, !2407, !2410, !2411, !2414, !2415, !2416, !2457, !2484, !2485, !2486, !2487, !2488, !2489, !2492, !2494, !2501, !2502, !2504, !2505, !2506, !2565, !2566, !2581, !2582, !2583, !2584, !2585, !2588, !2589, !2590, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !551, file: !38, line: 1417, baseType: !176, size: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !551, file: !38, line: 1418, baseType: !464, size: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !551, file: !38, line: 1419, baseType: !378, size: 8, offset: 160)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !551, file: !38, line: 1420, baseType: !279, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !551, file: !38, line: 1421, baseType: !482, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !551, file: !38, line: 1422, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !561)
!561 = !{!562, !563, !564, !571, !575, !579, !583, !584, !585, !595, !598, !599, !600, !602, !603, !604}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !560, file: !38, line: 2229, baseType: !173, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !560, file: !38, line: 2230, baseType: !137, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !560, file: !38, line: 2238, baseType: !565, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!137, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !570, line: 28, flags: DIFlagFwdDecl)
!570 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !560, file: !38, line: 2239, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !560, file: !38, line: 2240, baseType: !576, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!337, !559, !137, !173, !127}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !560, file: !38, line: 2242, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !550}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !560, file: !38, line: 2243, baseType: !121, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !38, line: 2244, baseType: !559, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !560, file: !38, line: 2245, baseType: !586, size: 64, offset: 512)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !125, line: 182, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !586, file: !125, line: 183, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !125, line: 186, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !125, line: 187, baseType: !589, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !590, file: !125, line: 187, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !560, file: !38, line: 2247, baseType: !596, offset: 576)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !597, line: 187, elements: !203)
!597 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !560, file: !38, line: 2248, baseType: !596, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !560, file: !38, line: 2249, baseType: !596, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !560, file: !38, line: 2250, baseType: !601, offset: 576)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, elements: !231)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !560, file: !38, line: 2252, baseType: !596, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !560, file: !38, line: 2253, baseType: !596, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !560, file: !38, line: 2254, baseType: !596, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !551, file: !38, line: 1423, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !609)
!609 = !{!610, !614, !618, !619, !623, !629, !633, !634, !635, !639, !643, !644, !645, !646, !652, !657, !658, !665, !666, !667, !668, !2205, !2220}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !608, file: !38, line: 1936, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!380, !550}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !608, file: !38, line: 1937, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !380}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !608, file: !38, line: 1938, baseType: !615, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !608, file: !38, line: 1940, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !380, !137}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !608, file: !38, line: 1941, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!137, !380, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !608, file: !38, line: 1942, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!137, !380}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !608, file: !38, line: 1943, baseType: !615, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !608, file: !38, line: 1944, baseType: !580, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !608, file: !38, line: 1945, baseType: !636, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!137, !550, !137}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !608, file: !38, line: 1946, baseType: !640, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!137, !550}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !608, file: !38, line: 1947, baseType: !640, size: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !608, file: !38, line: 1948, baseType: !640, size: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !608, file: !38, line: 1949, baseType: !640, size: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !608, file: !38, line: 1950, baseType: !647, size: 64, offset: 832)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!137, !337, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !608, file: !38, line: 1951, baseType: !653, size: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!137, !550, !656, !230}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !608, file: !38, line: 1952, baseType: !580, size: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !608, file: !38, line: 1954, baseType: !659, size: 64, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!137, !662, !337}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !664, line: 539, flags: DIFlagFwdDecl)
!664 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !608, file: !38, line: 1955, baseType: !659, size: 64, offset: 1088)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !608, file: !38, line: 1956, baseType: !659, size: 64, offset: 1152)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !608, file: !38, line: 1957, baseType: !659, size: 64, offset: 1216)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !608, file: !38, line: 1963, baseType: !669, size: 64, offset: 1280)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!137, !550, !672, !124}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !674, line: 68, size: 512, align: 128, elements: !675)
!674 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676, !677, !2197, !2204}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !674, line: 69, baseType: !279, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !674, line: 77, baseType: !678, size: 320, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !674, line: 77, size: 320, elements: !679)
!679 = !{!680, !865, !870, !898, !906, !912, !2189, !2196}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 78, baseType: !681, size: 320)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 78, size: 320, elements: !682)
!682 = !{!683, !684, !863, !864}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !681, file: !674, line: 84, baseType: !176, size: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !681, file: !674, line: 86, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !687)
!687 = !{!688, !689, !696, !697, !702, !717, !733, !734, !735, !736, !856, !857, !860, !861, !862}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !686, file: !38, line: 452, baseType: !380, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !686, file: !38, line: 453, baseType: !690, size: 128, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !691, line: 292, size: 128, elements: !692)
!691 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !690, file: !691, line: 293, baseType: !189)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !690, file: !691, line: 295, baseType: !124, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !690, file: !691, line: 296, baseType: !127, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !686, file: !38, line: 454, baseType: !124, size: 32, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !686, file: !38, line: 455, baseType: !698, size: 32, offset: 224)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !125, line: 168, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 166, size: 32, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !699, file: !125, line: 167, baseType: !137, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !686, file: !38, line: 460, baseType: !703, size: 128, offset: 256)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !704, line: 125, size: 128, elements: !705)
!704 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !716}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !703, file: !704, line: 126, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !704, line: 31, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !707, file: !704, line: 32, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !704, line: 24, size: 192, align: 64, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !711, file: !704, line: 25, baseType: !279, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !711, file: !704, line: 26, baseType: !710, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !711, file: !704, line: 27, baseType: !710, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !703, file: !704, line: 127, baseType: !710, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !686, file: !38, line: 461, baseType: !718, size: 256, offset: 384)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !719, line: 35, size: 256, elements: !720)
!719 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !729, !730, !732}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !718, file: !719, line: 36, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !723, line: 13, baseType: !724)
!723 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !125, line: 175, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 173, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !725, file: !125, line: 174, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !145, line: 22, baseType: !491)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !718, file: !719, line: 42, baseType: !722, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !718, file: !719, line: 46, baseType: !731, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !190, line: 29, baseType: !197)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !718, file: !719, line: 47, baseType: !176, size: 128, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !686, file: !38, line: 462, baseType: !279, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !686, file: !38, line: 463, baseType: !279, size: 64, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !686, file: !38, line: 464, baseType: !279, size: 64, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !686, file: !38, line: 465, baseType: !737, size: 64, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !740)
!740 = !{!741, !745, !749, !753, !757, !761, !767, !772, !776, !781, !785, !789, !793, !820, !824, !830, !831, !832, !836, !841, !845, !852}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !739, file: !38, line: 368, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!137, !672, !627}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !739, file: !38, line: 369, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!137, !307, !672}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !739, file: !38, line: 372, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!137, !685, !627}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !739, file: !38, line: 375, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!137, !672}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !739, file: !38, line: 381, baseType: !758, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!137, !307, !685, !179, !7}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !739, file: !38, line: 383, baseType: !762, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !739, file: !38, line: 385, baseType: !768, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!137, !307, !685, !482, !7, !7, !771, !126}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !739, file: !38, line: 388, baseType: !773, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!137, !307, !685, !482, !7, !7, !672, !127}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !739, file: !38, line: 393, baseType: !777, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !685, !780}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !125, line: 125, baseType: !372)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !739, file: !38, line: 394, baseType: !782, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !672, !7, !7}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !739, file: !38, line: 395, baseType: !786, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!137, !672, !124}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !739, file: !38, line: 396, baseType: !790, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !672}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !739, file: !38, line: 397, baseType: !794, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!261, !797, !818}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !799)
!799 = !{!800, !801, !802, !806, !807, !808, !810, !811}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !798, file: !38, line: 321, baseType: !307, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !798, file: !38, line: 326, baseType: !482, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !798, file: !38, line: 327, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !797, !265, !265}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !798, file: !38, line: 328, baseType: !127, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !798, file: !38, line: 329, baseType: !137, size: 32, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !798, file: !38, line: 330, baseType: !809, size: 16, offset: 288)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !145, line: 19, baseType: !128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !798, file: !38, line: 331, baseType: !809, size: 16, offset: 304)
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !38, line: 332, baseType: !812, size: 64, offset: 320)
!812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !38, line: 332, size: 64, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !812, file: !38, line: 333, baseType: !7, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !812, file: !38, line: 334, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !739, file: !38, line: 402, baseType: !821, size: 64, offset: 832)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!137, !685, !672, !672, !13}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !739, file: !38, line: 404, baseType: !825, size: 64, offset: 896)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!441, !672, !828}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !829, line: 305, baseType: !7)
!829 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !739, file: !38, line: 405, baseType: !790, size: 64, offset: 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !739, file: !38, line: 406, baseType: !754, size: 64, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !739, file: !38, line: 407, baseType: !833, size: 64, offset: 1088)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!137, !672, !279, !279}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !739, file: !38, line: 409, baseType: !837, size: 64, offset: 1152)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !672, !840, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !739, file: !38, line: 410, baseType: !842, size: 64, offset: 1216)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!137, !685, !672}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !739, file: !38, line: 413, baseType: !846, size: 64, offset: 1280)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!137, !849, !307, !851}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !739, file: !38, line: 415, baseType: !853, size: 64, offset: 1344)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !307}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !38, line: 466, baseType: !279, size: 64, offset: 896)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !686, file: !38, line: 467, baseType: !858, size: 32, offset: 960)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !859, line: 8, baseType: !144)
!859 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !686, file: !38, line: 468, baseType: !189, offset: 992)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !686, file: !38, line: 469, baseType: !176, size: 128, offset: 1024)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !686, file: !38, line: 470, baseType: !127, size: 64, offset: 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !681, file: !674, line: 87, baseType: !279, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !681, file: !674, line: 94, baseType: !279, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 96, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 96, size: 64, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !866, file: !674, line: 101, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !125, line: 143, baseType: !372)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 103, baseType: !871, size: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 103, size: 320, elements: !872)
!872 = !{!873, !883, !886, !887}
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !674, line: 104, baseType: !874, size: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !674, line: 104, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !874, file: !674, line: 105, baseType: !176, size: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !674, line: 106, baseType: !878, size: 128)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !674, line: 106, size: 128, elements: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !674, line: 107, baseType: !672, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !878, file: !674, line: 109, baseType: !137, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !878, file: !674, line: 110, baseType: !137, size: 32, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !871, file: !674, line: 117, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !674, line: 117, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !871, file: !674, line: 119, baseType: !127, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !674, line: 120, baseType: !888, size: 64, offset: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !674, line: 120, size: 64, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !888, file: !674, line: 121, baseType: !127, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !888, file: !674, line: 122, baseType: !279, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !674, line: 123, baseType: !893, size: 32)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !674, line: 123, size: 32, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !893, file: !674, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !893, file: !674, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !893, file: !674, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 130, baseType: !899, size: 192)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 130, size: 192, elements: !900)
!900 = !{!901, !902, !903, !904, !905}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !899, file: !674, line: 131, baseType: !279, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !899, file: !674, line: 134, baseType: !378, size: 8, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !899, file: !674, line: 135, baseType: !378, size: 8, offset: 72)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !899, file: !674, line: 136, baseType: !698, size: 32, offset: 96)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !899, file: !674, line: 137, baseType: !7, size: 32, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 139, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 139, size: 256, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !907, file: !674, line: 140, baseType: !279, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !907, file: !674, line: 141, baseType: !698, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !907, file: !674, line: 143, baseType: !176, size: 128, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 145, baseType: !913, size: 256)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 145, size: 256, elements: !914)
!914 = !{!915, !916, !918, !919, !2188}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !913, file: !674, line: 146, baseType: !279, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !913, file: !674, line: 147, baseType: !917, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !664, line: 509, baseType: !672)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !913, file: !674, line: 148, baseType: !279, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !674, line: 149, baseType: !920, size: 64, offset: 192)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !913, file: !674, line: 149, size: 64, elements: !921)
!921 = !{!922, !2187}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !920, file: !674, line: 150, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !674, line: 388, size: 7296, elements: !925)
!925 = !{!926, !2183}
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !674, line: 389, baseType: !927, size: 7296)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !674, line: 389, size: 7296, elements: !928)
!928 = !{!929, !967, !968, !969, !973, !974, !975, !976, !977, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1018, !1026, !1029, !1075, !1076, !2167, !2168, !2171, !2172, !2173, !2176, !2177, !2178, !2181, !2182}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !927, file: !674, line: 390, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !674, line: 305, size: 1472, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !947, !948, !953, !954, !957, !961, !962, !963, !964, !965}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !931, file: !674, line: 308, baseType: !279, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !931, file: !674, line: 309, baseType: !279, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !931, file: !674, line: 313, baseType: !930, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !931, file: !674, line: 313, baseType: !930, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !931, file: !674, line: 315, baseType: !711, size: 192, align: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !931, file: !674, line: 323, baseType: !279, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !931, file: !674, line: 327, baseType: !923, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !931, file: !674, line: 333, baseType: !941, size: 64, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !664, line: 284, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !664, line: 284, size: 64, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !942, file: !664, line: 284, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !946, line: 19, baseType: !279)
!946 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !931, file: !674, line: 334, baseType: !279, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !931, file: !674, line: 343, baseType: !949, size: 256, offset: 704)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !674, line: 340, size: 256, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !949, file: !674, line: 341, baseType: !711, size: 192, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !949, file: !674, line: 342, baseType: !279, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !931, file: !674, line: 351, baseType: !176, size: 128, offset: 960)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !931, file: !674, line: 353, baseType: !955, size: 64, offset: 1088)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !674, line: 353, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !931, file: !674, line: 356, baseType: !958, size: 64, offset: 1152)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !674, line: 356, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !931, file: !674, line: 359, baseType: !279, size: 64, offset: 1216)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !931, file: !674, line: 361, baseType: !307, size: 64, offset: 1280)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !931, file: !674, line: 362, baseType: !127, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !931, file: !674, line: 365, baseType: !722, size: 64, offset: 1408)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !931, file: !674, line: 373, baseType: !966, offset: 1472)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !674, line: 296, elements: !203)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !927, file: !674, line: 391, baseType: !707, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !927, file: !674, line: 392, baseType: !372, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !927, file: !674, line: 394, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!279, !307, !279, !279, !279, !279}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !927, file: !674, line: 398, baseType: !279, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !927, file: !674, line: 399, baseType: !279, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !927, file: !674, line: 405, baseType: !279, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !927, file: !674, line: 406, baseType: !279, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !927, file: !674, line: 407, baseType: !978, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !664, line: 286, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !664, line: 286, size: 64, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !980, file: !664, line: 286, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !946, line: 18, baseType: !279)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !927, file: !674, line: 416, baseType: !698, size: 32, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !927, file: !674, line: 428, baseType: !698, size: 32, offset: 608)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !927, file: !674, line: 437, baseType: !698, size: 32, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !927, file: !674, line: 447, baseType: !698, size: 32, offset: 672)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !927, file: !674, line: 450, baseType: !722, size: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !927, file: !674, line: 452, baseType: !137, size: 32, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !927, file: !674, line: 454, baseType: !189, offset: 800)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !927, file: !674, line: 457, baseType: !718, size: 256, offset: 832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !927, file: !674, line: 459, baseType: !176, size: 128, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !927, file: !674, line: 466, baseType: !279, size: 64, offset: 1216)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !927, file: !674, line: 467, baseType: !279, size: 64, offset: 1280)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !927, file: !674, line: 469, baseType: !279, size: 64, offset: 1344)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !927, file: !674, line: 470, baseType: !279, size: 64, offset: 1408)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !927, file: !674, line: 471, baseType: !724, size: 64, offset: 1472)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !927, file: !674, line: 472, baseType: !279, size: 64, offset: 1536)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !927, file: !674, line: 473, baseType: !279, size: 64, offset: 1600)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !927, file: !674, line: 474, baseType: !279, size: 64, offset: 1664)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !927, file: !674, line: 475, baseType: !279, size: 64, offset: 1728)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !927, file: !674, line: 477, baseType: !189, offset: 1792)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !927, file: !674, line: 478, baseType: !279, size: 64, offset: 1792)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !927, file: !674, line: 478, baseType: !279, size: 64, offset: 1856)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !927, file: !674, line: 478, baseType: !279, size: 64, offset: 1920)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !927, file: !674, line: 478, baseType: !279, size: 64, offset: 1984)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !927, file: !674, line: 479, baseType: !279, size: 64, offset: 2048)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !927, file: !674, line: 479, baseType: !279, size: 64, offset: 2112)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !927, file: !674, line: 479, baseType: !279, size: 64, offset: 2176)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !927, file: !674, line: 480, baseType: !279, size: 64, offset: 2240)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !927, file: !674, line: 480, baseType: !279, size: 64, offset: 2304)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !927, file: !674, line: 480, baseType: !279, size: 64, offset: 2368)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !927, file: !674, line: 480, baseType: !279, size: 64, offset: 2432)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !927, file: !674, line: 482, baseType: !1015, size: 2816, offset: 2496)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 2816, elements: !1016)
!1016 = !{!1017}
!1017 = !DISubrange(count: 44)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !927, file: !674, line: 488, baseType: !1019, size: 256, offset: 5312)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1020, line: 60, size: 256, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1019, file: !1020, line: 61, baseType: !1023, size: 256)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 256, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 4)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !927, file: !674, line: 490, baseType: !1027, size: 64, offset: 5568)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !674, line: 490, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !927, file: !674, line: 493, baseType: !1030, size: 896, offset: 5632)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1031, line: 53, baseType: !1032)
!1031 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 13, size: 896, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1040, !1041, !1048, !1049, !1069, !1070, !1071}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1032, file: !1031, line: 18, baseType: !372, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1032, file: !1031, line: 28, baseType: !724, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1032, file: !1031, line: 31, baseType: !718, size: 256, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1032, file: !1031, line: 32, baseType: !1038, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1031, line: 32, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1032, file: !1031, line: 37, baseType: !130, size: 16, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1032, file: !1031, line: 40, baseType: !1042, size: 192, offset: 512)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1043, line: 53, size: 192, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1042, file: !1043, line: 54, baseType: !722, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1042, file: !1043, line: 55, baseType: !189, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1042, file: !1043, line: 59, baseType: !176, size: 128, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1032, file: !1031, line: 41, baseType: !127, size: 64, offset: 704)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1032, file: !1031, line: 42, baseType: !1050, size: 64, offset: 768)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1053, line: 13, size: 896, elements: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1052, file: !1053, line: 14, baseType: !127, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1052, file: !1053, line: 15, baseType: !279, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1052, file: !1053, line: 17, baseType: !279, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1052, file: !1053, line: 17, baseType: !279, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1052, file: !1053, line: 19, baseType: !265, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1052, file: !1053, line: 21, baseType: !265, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1052, file: !1053, line: 22, baseType: !265, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1052, file: !1053, line: 23, baseType: !265, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1052, file: !1053, line: 24, baseType: !265, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1052, file: !1053, line: 25, baseType: !265, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1052, file: !1053, line: 26, baseType: !265, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1052, file: !1053, line: 27, baseType: !265, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1052, file: !1053, line: 28, baseType: !265, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1052, file: !1053, line: 29, baseType: !265, size: 64, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1032, file: !1031, line: 44, baseType: !698, size: 32, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1032, file: !1031, line: 50, baseType: !809, size: 16, offset: 864)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1032, file: !1031, line: 51, baseType: !1072, size: 16, offset: 880)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !145, line: 18, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !129, line: 23, baseType: !1074)
!1074 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !674, line: 495, baseType: !279, size: 64, offset: 6528)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !927, file: !674, line: 497, baseType: !1077, size: 64, offset: 6592)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !674, line: 381, size: 384, elements: !1079)
!1079 = !{!1080, !1081, !2166}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1078, file: !674, line: 382, baseType: !698, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1078, file: !674, line: 383, baseType: !1082, size: 128, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !674, line: 376, size: 128, elements: !1083)
!1083 = !{!1084, !2164}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1082, file: !674, line: 377, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1087, line: 640, size: 48640, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089, !1095, !1097, !1098, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1115, !1133, !1144, !1229, !1230, !1231, !1242, !1243, !1245, !1246, !1247, !1248, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1327, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1365, !1367, !1368, !1369, !1381, !1382, !1383, !1384, !1385, !1386, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1410, !1415, !1597, !1598, !1599, !1600, !1601, !1604, !1607, !1610, !1613, !1617, !1718, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1764, !1765, !1766, !1767, !1768, !1773, !1774, !1775, !1778, !1779, !1782, !1785, !1788, !1791, !1834, !1837, !1838, !1917, !1918, !1921, !1922, !1925, !1926, !1927, !1931, !1932, !1933, !1946, !1947, !1948, !1958, !1963, !1966, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1086, file: !1087, line: 646, baseType: !1090, size: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1091, line: 56, size: 128, elements: !1092)
!1091 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !1091, line: 57, baseType: !279, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1090, file: !1091, line: 58, baseType: !144, size: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1086, file: !1087, line: 649, baseType: !1096, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !265)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1086, file: !1087, line: 657, baseType: !127, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1086, file: !1087, line: 658, baseType: !1099, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1100, line: 113, baseType: !1101)
!1100 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1100, line: 111, size: 32, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1101, file: !1100, line: 112, baseType: !698, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !1087, line: 660, baseType: !7, size: 32, offset: 288)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1086, file: !1087, line: 661, baseType: !7, size: 32, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1086, file: !1087, line: 684, baseType: !137, size: 32, offset: 352)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1086, file: !1087, line: 686, baseType: !137, size: 32, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1086, file: !1087, line: 687, baseType: !137, size: 32, offset: 416)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1086, file: !1087, line: 688, baseType: !137, size: 32, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1086, file: !1087, line: 689, baseType: !7, size: 32, offset: 480)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1086, file: !1087, line: 691, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1087, line: 691, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1086, file: !1087, line: 692, baseType: !1116, size: 832, offset: 576)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1087, line: 451, size: 832, elements: !1117)
!1117 = !{!1118, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1116, file: !1087, line: 453, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1087, line: 325, size: 128, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1119, file: !1087, line: 326, baseType: !279, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1119, file: !1087, line: 327, baseType: !144, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1116, file: !1087, line: 454, baseType: !711, size: 192, align: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1116, file: !1087, line: 455, baseType: !176, size: 128, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1116, file: !1087, line: 456, baseType: !7, size: 32, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1116, file: !1087, line: 458, baseType: !372, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1116, file: !1087, line: 459, baseType: !372, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1116, file: !1087, line: 460, baseType: !372, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1116, file: !1087, line: 461, baseType: !372, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1116, file: !1087, line: 463, baseType: !372, size: 64, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1116, file: !1087, line: 465, baseType: !1132, offset: 832)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1087, line: 415, elements: !203)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1086, file: !1087, line: 693, baseType: !1134, size: 384, offset: 1408)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1087, line: 489, size: 384, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1134, file: !1087, line: 490, baseType: !176, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1134, file: !1087, line: 491, baseType: !279, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1134, file: !1087, line: 492, baseType: !279, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1134, file: !1087, line: 493, baseType: !7, size: 32, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1134, file: !1087, line: 494, baseType: !130, size: 16, offset: 288)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1134, file: !1087, line: 495, baseType: !130, size: 16, offset: 304)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1134, file: !1087, line: 497, baseType: !1143, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1086, file: !1087, line: 697, baseType: !1145, size: 1792, offset: 1792)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1087, line: 507, size: 1792, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1226, !1227}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1145, file: !1087, line: 508, baseType: !711, size: 192, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1145, file: !1087, line: 515, baseType: !372, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1145, file: !1087, line: 516, baseType: !372, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1145, file: !1087, line: 517, baseType: !372, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1145, file: !1087, line: 518, baseType: !372, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1145, file: !1087, line: 519, baseType: !372, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1145, file: !1087, line: 526, baseType: !728, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1145, file: !1087, line: 527, baseType: !372, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1145, file: !1087, line: 528, baseType: !7, size: 32, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1145, file: !1087, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1145, file: !1087, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1145, file: !1087, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1145, file: !1087, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1145, file: !1087, line: 563, baseType: !1161, size: 512, offset: 704)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1162)
!1162 = !{!1163, !1171, !1172, !1177, !1220, !1223, !1224, !1225}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1161, file: !21, line: 119, baseType: !1164, size: 256)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1165, line: 9, size: 256, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1164, file: !1165, line: 10, baseType: !711, size: 192, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1164, file: !1165, line: 11, baseType: !1169, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1170, line: 29, baseType: !728)
!1170 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1161, file: !21, line: 120, baseType: !1169, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1161, file: !21, line: 121, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!20, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1161, file: !21, line: 122, baseType: !1178, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1180)
!1180 = !{!1181, !1201, !1202, !1205, !1210, !1211, !1215, !1219}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1179, file: !21, line: 160, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !21, line: 215, baseType: !731)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1183, file: !21, line: 216, baseType: !7, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1183, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1183, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1183, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1183, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1183, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1183, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1183, file: !21, line: 233, baseType: !1169, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1183, file: !21, line: 234, baseType: !1176, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1183, file: !21, line: 235, baseType: !1169, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1183, file: !21, line: 236, baseType: !1176, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1183, file: !21, line: 237, baseType: !1198, size: 4096, offset: 512)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 4096, elements: !1199)
!1199 = !{!1200}
!1200 = !DISubrange(count: 8)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1179, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1179, file: !21, line: 162, baseType: !1203, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !125, line: 27, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !263, line: 96, baseType: !137)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1179, file: !21, line: 163, baseType: !1206, size: 32, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !343, line: 276, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !343, line: 276, size: 32, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1207, file: !343, line: 276, baseType: !347, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1179, file: !21, line: 164, baseType: !1176, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1179, file: !21, line: 165, baseType: !1212, size: 128, offset: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1165, line: 14, size: 128, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1212, file: !1165, line: 15, baseType: !703, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1179, file: !21, line: 166, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1169}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1179, file: !21, line: 167, baseType: !1169, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !21, line: 123, baseType: !1221, size: 8, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !145, line: 17, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !129, line: 21, baseType: !378)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1161, file: !21, line: 124, baseType: !1221, size: 8, offset: 456)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1161, file: !21, line: 125, baseType: !1221, size: 8, offset: 464)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1161, file: !21, line: 126, baseType: !1221, size: 8, offset: 472)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1145, file: !1087, line: 572, baseType: !1161, size: 512, offset: 1216)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1145, file: !1087, line: 580, baseType: !1228, size: 64, offset: 1728)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1086, file: !1087, line: 721, baseType: !7, size: 32, offset: 3584)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1086, file: !1087, line: 722, baseType: !137, size: 32, offset: 3616)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1086, file: !1087, line: 723, baseType: !1232, size: 64, offset: 3648)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1235, line: 17, baseType: !1236)
!1235 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1235, line: 17, size: 64, elements: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1236, file: !1235, line: 17, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 64, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 1)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1086, file: !1087, line: 724, baseType: !1234, size: 64, offset: 3712)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1086, file: !1087, line: 749, baseType: !1244, offset: 3776)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1087, line: 290, elements: !203)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1086, file: !1087, line: 751, baseType: !176, size: 128, offset: 3776)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1086, file: !1087, line: 757, baseType: !923, size: 64, offset: 3904)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1086, file: !1087, line: 758, baseType: !923, size: 64, offset: 3968)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1086, file: !1087, line: 761, baseType: !1249, size: 320, offset: 4032)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1020, line: 34, size: 320, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1249, file: !1020, line: 35, baseType: !372, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1249, file: !1020, line: 36, baseType: !1253, size: 256, offset: 64)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 256, elements: !1024)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1086, file: !1087, line: 766, baseType: !137, size: 32, offset: 4352)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1086, file: !1087, line: 767, baseType: !137, size: 32, offset: 4384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1086, file: !1087, line: 768, baseType: !137, size: 32, offset: 4416)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1086, file: !1087, line: 770, baseType: !137, size: 32, offset: 4448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1086, file: !1087, line: 772, baseType: !279, size: 64, offset: 4480)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1086, file: !1087, line: 775, baseType: !7, size: 32, offset: 4544)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1086, file: !1087, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1086, file: !1087, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1086, file: !1087, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1086, file: !1087, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1086, file: !1087, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1086, file: !1087, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1086, file: !1087, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1086, file: !1087, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1086, file: !1087, line: 831, baseType: !279, size: 64, offset: 4672)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1086, file: !1087, line: 833, baseType: !1270, size: 384, offset: 4736)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1271)
!1271 = !{!1272, !1277}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1270, file: !26, line: 26, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!265, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !26, line: 27, baseType: !1278, size: 320, offset: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !26, line: 27, size: 320, elements: !1279)
!1279 = !{!1280, !1290, !1317}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1278, file: !26, line: 36, baseType: !1281, size: 320)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !26, line: 29, size: 320, elements: !1282)
!1282 = !{!1283, !1285, !1286, !1287, !1288, !1289}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1281, file: !26, line: 30, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1281, file: !26, line: 31, baseType: !144, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !26, line: 32, baseType: !144, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1281, file: !26, line: 33, baseType: !144, size: 32, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1281, file: !26, line: 34, baseType: !372, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1281, file: !26, line: 35, baseType: !1284, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1278, file: !26, line: 46, baseType: !1291, size: 192)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !26, line: 38, size: 192, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1316}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1291, file: !26, line: 39, baseType: !1203, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1291, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !26, line: 41, baseType: !1296, size: 64, offset: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !26, line: 41, size: 64, elements: !1297)
!1297 = !{!1298, !1306}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1296, file: !26, line: 42, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1301, line: 7, size: 128, elements: !1302)
!1301 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !{!1303, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1300, file: !1301, line: 8, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !263, line: 93, baseType: !484)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1300, file: !1301, line: 9, baseType: !484, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1296, file: !26, line: 43, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1309, line: 7, size: 64, elements: !1310)
!1309 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1315}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1308, file: !1309, line: 8, baseType: !1312, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1309, line: 5, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !145, line: 20, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !129, line: 26, baseType: !137)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1308, file: !1309, line: 9, baseType: !1313, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1291, file: !26, line: 45, baseType: !372, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1278, file: !26, line: 54, baseType: !1318, size: 256)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !26, line: 48, size: 256, elements: !1319)
!1319 = !{!1320, !1323, !1324, !1325, !1326}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1318, file: !26, line: 49, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1318, file: !26, line: 50, baseType: !137, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1318, file: !26, line: 51, baseType: !137, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1318, file: !26, line: 52, baseType: !279, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1318, file: !26, line: 53, baseType: !279, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1086, file: !1087, line: 835, baseType: !1328, size: 32, offset: 5120)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !125, line: 22, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !263, line: 28, baseType: !137)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1086, file: !1087, line: 836, baseType: !1328, size: 32, offset: 5152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1086, file: !1087, line: 840, baseType: !279, size: 64, offset: 5184)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1086, file: !1087, line: 849, baseType: !1085, size: 64, offset: 5248)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1086, file: !1087, line: 852, baseType: !1085, size: 64, offset: 5312)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1086, file: !1087, line: 857, baseType: !176, size: 128, offset: 5376)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1086, file: !1087, line: 858, baseType: !176, size: 128, offset: 5504)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1086, file: !1087, line: 859, baseType: !1085, size: 64, offset: 5632)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1086, file: !1087, line: 867, baseType: !176, size: 128, offset: 5696)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1086, file: !1087, line: 868, baseType: !176, size: 128, offset: 5824)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1086, file: !1087, line: 871, baseType: !1340, size: 64, offset: 5952)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1348, !1349, !1356, !1357}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1341, file: !47, line: 61, baseType: !1099, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1341, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !47, line: 63, baseType: !189, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1341, file: !47, line: 65, baseType: !1347, size: 256, offset: 64)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 256, elements: !1024)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1341, file: !47, line: 66, baseType: !586, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1341, file: !47, line: 68, baseType: !1350, size: 128, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1351, line: 40, baseType: !1352)
!1351 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1351, line: 36, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !1351, line: 37, baseType: !189)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1352, file: !1351, line: 38, baseType: !176, size: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1341, file: !47, line: 69, baseType: !320, size: 128, align: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1341, file: !47, line: 70, baseType: !1358, size: 128, offset: 640)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 128, elements: !1240)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1359, file: !47, line: 55, baseType: !137, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1359, file: !47, line: 56, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1086, file: !1087, line: 872, baseType: !1366, size: 512, offset: 6016)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 512, elements: !1024)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1086, file: !1087, line: 873, baseType: !176, size: 128, offset: 6528)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1086, file: !1087, line: 874, baseType: !176, size: 128, offset: 6656)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1086, file: !1087, line: 876, baseType: !1370, size: 64, offset: 6784)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1372, line: 26, size: 192, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1371, file: !1372, line: 27, baseType: !7, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1371, file: !1372, line: 28, baseType: !1376, size: 128, offset: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1377, line: 43, size: 128, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1376, file: !1377, line: 44, baseType: !731)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1376, file: !1377, line: 45, baseType: !176, size: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1086, file: !1087, line: 879, baseType: !656, size: 64, offset: 6848)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1086, file: !1087, line: 882, baseType: !656, size: 64, offset: 6912)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1086, file: !1087, line: 884, baseType: !372, size: 64, offset: 6976)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1086, file: !1087, line: 885, baseType: !372, size: 64, offset: 7040)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1086, file: !1087, line: 890, baseType: !372, size: 64, offset: 7104)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1086, file: !1087, line: 891, baseType: !1387, size: 128, offset: 7168)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1087, line: 242, size: 128, elements: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1387, file: !1087, line: 244, baseType: !372, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1387, file: !1087, line: 245, baseType: !372, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !1087, line: 246, baseType: !731, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1086, file: !1087, line: 900, baseType: !279, size: 64, offset: 7296)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1086, file: !1087, line: 901, baseType: !279, size: 64, offset: 7360)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1086, file: !1087, line: 904, baseType: !372, size: 64, offset: 7424)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1086, file: !1087, line: 907, baseType: !372, size: 64, offset: 7488)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1086, file: !1087, line: 910, baseType: !279, size: 64, offset: 7552)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1086, file: !1087, line: 911, baseType: !279, size: 64, offset: 7616)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1086, file: !1087, line: 914, baseType: !1399, size: 640, offset: 7680)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1400, line: 123, size: 640, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !{!1402, !1408, !1409}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1399, file: !1400, line: 124, baseType: !1403, size: 576)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 576, elements: !231)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1400, line: 108, size: 192, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1404, file: !1400, line: 109, baseType: !372, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1404, file: !1400, line: 110, baseType: !1212, size: 128, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1399, file: !1400, line: 125, baseType: !7, size: 32, offset: 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1399, file: !1400, line: 126, baseType: !7, size: 32, offset: 608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1086, file: !1087, line: 917, baseType: !1411, size: 192, offset: 8320)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1400, line: 134, size: 192, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1411, file: !1400, line: 135, baseType: !320, size: 128, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1411, file: !1400, line: 136, baseType: !7, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1086, file: !1087, line: 923, baseType: !1416, size: 64, offset: 8512)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1419, line: 111, size: 1280, elements: !1420)
!1419 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1438, !1439, !1440, !1441, !1442, !1443, !1550, !1551, !1552, !1553, !1579, !1582, !1592}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1418, file: !1419, line: 112, baseType: !698, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1418, file: !1419, line: 120, baseType: !386, size: 32, offset: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1418, file: !1419, line: 121, baseType: !394, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1418, file: !1419, line: 122, baseType: !386, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1418, file: !1419, line: 123, baseType: !394, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1418, file: !1419, line: 124, baseType: !386, size: 32, offset: 160)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1418, file: !1419, line: 125, baseType: !394, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1418, file: !1419, line: 126, baseType: !386, size: 32, offset: 224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1418, file: !1419, line: 127, baseType: !394, size: 32, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1418, file: !1419, line: 128, baseType: !7, size: 32, offset: 288)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1418, file: !1419, line: 129, baseType: !1432, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1433, line: 26, baseType: !1434)
!1433 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1433, line: 24, size: 64, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1434, file: !1433, line: 25, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !157)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1418, file: !1419, line: 130, baseType: !1432, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1418, file: !1419, line: 131, baseType: !1432, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1418, file: !1419, line: 132, baseType: !1432, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1418, file: !1419, line: 133, baseType: !1432, size: 64, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1418, file: !1419, line: 135, baseType: !378, size: 8, offset: 640)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1418, file: !1419, line: 137, baseType: !1444, size: 64, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1446, line: 189, size: 1664, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1449, !1452, !1457, !1458, !1461, !1462, !1467, !1468, !1469, !1470, !1472, !1473, !1474, !1475, !1476, !1514, !1535}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1445, file: !1446, line: 190, baseType: !1099, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1445, file: !1446, line: 191, baseType: !1450, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1446, line: 28, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !125, line: 98, baseType: !1313)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 192, baseType: !1453, size: 192, offset: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 192, size: 192, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1453, file: !1446, line: 193, baseType: !176, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1453, file: !1446, line: 194, baseType: !711, size: 192, align: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1445, file: !1446, line: 199, baseType: !718, size: 256, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1445, file: !1446, line: 200, baseType: !1459, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1446, line: 200, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1445, file: !1446, line: 201, baseType: !127, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 202, baseType: !1463, size: 64, offset: 640)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 202, size: 64, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1463, file: !1446, line: 203, baseType: !490, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1463, file: !1446, line: 204, baseType: !490, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1445, file: !1446, line: 206, baseType: !490, size: 64, offset: 704)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1445, file: !1446, line: 207, baseType: !386, size: 32, offset: 768)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1445, file: !1446, line: 208, baseType: !394, size: 32, offset: 800)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1445, file: !1446, line: 209, baseType: !1471, size: 32, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1446, line: 31, baseType: !510)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1445, file: !1446, line: 210, baseType: !130, size: 16, offset: 864)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1445, file: !1446, line: 211, baseType: !130, size: 16, offset: 880)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1445, file: !1446, line: 215, baseType: !1074, size: 16, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1445, file: !1446, line: 222, baseType: !279, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 239, baseType: !1477, size: 320, offset: 1024)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 239, size: 320, elements: !1478)
!1478 = !{!1479, !1506}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1477, file: !1446, line: 240, baseType: !1480, size: 320)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1446, line: 108, size: 320, elements: !1481)
!1481 = !{!1482, !1483, !1495, !1498, !1505}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1480, file: !1446, line: 110, baseType: !279, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1446, line: 111, baseType: !1484, size: 64, offset: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1446, line: 111, size: 64, elements: !1485)
!1485 = !{!1486, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1446, line: 112, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !1446, line: 112, size: 64, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1487, file: !1446, line: 114, baseType: !809, size: 16)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1487, file: !1446, line: 115, baseType: !1491, size: 48, offset: 16)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 48, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 6)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1484, file: !1446, line: 121, baseType: !279, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1480, file: !1446, line: 123, baseType: !1496, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1446, line: 96, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1480, file: !1446, line: 124, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1446, line: 102, size: 192, elements: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1500, file: !1446, line: 103, baseType: !320, size: 128, align: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1500, file: !1446, line: 104, baseType: !1099, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1500, file: !1446, line: 105, baseType: !441, size: 8, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1480, file: !1446, line: 125, baseType: !173, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1446, line: 241, baseType: !1507, size: 320)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !1446, line: 241, size: 320, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1507, file: !1446, line: 242, baseType: !279, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1507, file: !1446, line: 243, baseType: !279, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1507, file: !1446, line: 244, baseType: !1496, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1507, file: !1446, line: 245, baseType: !1499, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1507, file: !1446, line: 246, baseType: !230, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 254, baseType: !1515, size: 256, offset: 1344)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 254, size: 256, elements: !1516)
!1516 = !{!1517, !1523}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1515, file: !1446, line: 255, baseType: !1518, size: 256)
!1518 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1446, line: 128, size: 256, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1518, file: !1446, line: 129, baseType: !127, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1518, file: !1446, line: 130, baseType: !1522, size: 256)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1446, line: 256, baseType: !1524, size: 256)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !1446, line: 256, size: 256, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1524, file: !1446, line: 258, baseType: !176, size: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1524, file: !1446, line: 259, baseType: !1528, size: 128, offset: 128)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1529, line: 22, size: 128, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1528, file: !1529, line: 23, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1529, line: 23, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1528, file: !1529, line: 24, baseType: !279, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1445, file: !1446, line: 274, baseType: !1536, size: 64, offset: 1600)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1446, line: 170, size: 192, elements: !1538)
!1538 = !{!1539, !1548, !1549}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1537, file: !1446, line: 171, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1446, line: 165, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!137, !1444, !1544, !1546, !1444}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1497)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1537, file: !1446, line: 172, baseType: !1444, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1537, file: !1446, line: 173, baseType: !1496, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1418, file: !1419, line: 138, baseType: !1444, size: 64, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1418, file: !1419, line: 139, baseType: !1444, size: 64, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1418, file: !1419, line: 140, baseType: !1444, size: 64, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1418, file: !1419, line: 145, baseType: !1554, size: 64, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1556, line: 13, size: 896, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1555, file: !1556, line: 14, baseType: !1099, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1555, file: !1556, line: 15, baseType: !698, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1555, file: !1556, line: 16, baseType: !698, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1555, file: !1556, line: 21, baseType: !722, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1555, file: !1556, line: 27, baseType: !279, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1555, file: !1556, line: 28, baseType: !279, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1555, file: !1556, line: 29, baseType: !722, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1555, file: !1556, line: 32, baseType: !590, size: 128, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1555, file: !1556, line: 33, baseType: !386, size: 32, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1555, file: !1556, line: 37, baseType: !722, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1555, file: !1556, line: 44, baseType: !1569, size: 256, offset: 640)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1570, line: 15, size: 256, elements: !1571)
!1570 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1569, file: !1570, line: 16, baseType: !731)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1569, file: !1570, line: 18, baseType: !137, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1569, file: !1570, line: 19, baseType: !137, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1569, file: !1570, line: 20, baseType: !137, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1569, file: !1570, line: 21, baseType: !137, size: 32, offset: 96)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1569, file: !1570, line: 22, baseType: !279, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1569, file: !1570, line: 23, baseType: !279, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1418, file: !1419, line: 146, baseType: !1580, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !387, line: 18, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1418, file: !1419, line: 147, baseType: !1583, size: 64, offset: 1088)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1419, line: 25, size: 64, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1584, file: !1419, line: 26, baseType: !698, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1584, file: !1419, line: 27, baseType: !137, size: 32, offset: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1584, file: !1419, line: 28, baseType: !1589, offset: 64)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, elements: !1590)
!1590 = !{!1591}
!1591 = !DISubrange(count: 0)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !1419, line: 149, baseType: !1593, size: 128, offset: 1152)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !1419, line: 149, size: 128, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1593, file: !1419, line: 150, baseType: !137, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1593, file: !1419, line: 151, baseType: !320, size: 128, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1086, file: !1087, line: 926, baseType: !1416, size: 64, offset: 8576)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1086, file: !1087, line: 929, baseType: !1416, size: 64, offset: 8640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1086, file: !1087, line: 933, baseType: !1444, size: 64, offset: 8704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1086, file: !1087, line: 943, baseType: !139, size: 128, offset: 8768)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1086, file: !1087, line: 945, baseType: !1602, size: 64, offset: 8896)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1087, line: 49, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1086, file: !1087, line: 956, baseType: !1605, size: 64, offset: 8960)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1087, line: 45, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1086, file: !1087, line: 959, baseType: !1608, size: 64, offset: 9024)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1087, line: 959, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1086, file: !1087, line: 962, baseType: !1611, size: 64, offset: 9088)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1087, line: 66, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1086, file: !1087, line: 966, baseType: !1614, size: 64, offset: 9152)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1616, line: 35, flags: DIFlagFwdDecl)
!1616 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1086, file: !1087, line: 969, baseType: !1618, size: 64, offset: 9216)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1620, line: 82, size: 7296, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1627, !1628, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1657, !1666, !1667, !1669, !1670, !1671, !1674, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1704, !1705, !1712, !1713, !1714, !1715, !1716, !1717}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1619, file: !1620, line: 83, baseType: !1099, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1619, file: !1620, line: 84, baseType: !698, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1619, file: !1620, line: 85, baseType: !137, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1619, file: !1620, line: 86, baseType: !176, size: 128, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1619, file: !1620, line: 88, baseType: !1350, size: 128, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1619, file: !1620, line: 91, baseType: !1085, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1619, file: !1620, line: 94, baseType: !1629, size: 192, offset: 448)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1630, line: 30, size: 192, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1629, file: !1630, line: 31, baseType: !176, size: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1629, file: !1630, line: 32, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1635, line: 25, baseType: !1636)
!1635 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1635, line: 23, size: 64, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1636, file: !1635, line: 24, baseType: !1239, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1619, file: !1620, line: 97, baseType: !586, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1619, file: !1620, line: 100, baseType: !137, size: 32, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1619, file: !1620, line: 106, baseType: !137, size: 32, offset: 736)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1619, file: !1620, line: 107, baseType: !1085, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1619, file: !1620, line: 110, baseType: !137, size: 32, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1619, file: !1620, line: 111, baseType: !7, size: 32, offset: 864)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1619, file: !1620, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1619, file: !1620, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1619, file: !1620, line: 128, baseType: !137, size: 32, offset: 928)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1619, file: !1620, line: 129, baseType: !176, size: 128, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1619, file: !1620, line: 132, baseType: !1161, size: 512, offset: 1088)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1619, file: !1620, line: 133, baseType: !1169, size: 64, offset: 1600)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1619, file: !1620, line: 140, baseType: !1652, size: 256, offset: 1664)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 256, elements: !157)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1620, line: 38, size: 128, elements: !1654)
!1654 = !{!1655, !1656}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1653, file: !1620, line: 39, baseType: !372, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1653, file: !1620, line: 40, baseType: !372, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1619, file: !1620, line: 146, baseType: !1658, size: 192, offset: 1920)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1620, line: 66, size: 192, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1658, file: !1620, line: 67, baseType: !1661, size: 192)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1620, line: 47, size: 192, elements: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1661, file: !1620, line: 48, baseType: !724, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1661, file: !1620, line: 49, baseType: !724, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1661, file: !1620, line: 50, baseType: !724, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1619, file: !1620, line: 150, baseType: !1399, size: 640, offset: 2112)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1619, file: !1620, line: 153, baseType: !1668, size: 256, offset: 2752)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 256, elements: !1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1619, file: !1620, line: 159, baseType: !1340, size: 64, offset: 3008)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1619, file: !1620, line: 162, baseType: !137, size: 32, offset: 3072)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1619, file: !1620, line: 164, baseType: !1672, size: 64, offset: 3136)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1620, line: 164, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1619, file: !1620, line: 175, baseType: !1675, size: 32, offset: 3200)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !343, line: 805, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 798, size: 32, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1676, file: !343, line: 803, baseType: !342, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1676, file: !343, line: 804, baseType: !189, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1619, file: !1620, line: 176, baseType: !372, size: 64, offset: 3264)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1619, file: !1620, line: 176, baseType: !372, size: 64, offset: 3328)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1619, file: !1620, line: 176, baseType: !372, size: 64, offset: 3392)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1619, file: !1620, line: 176, baseType: !372, size: 64, offset: 3456)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1619, file: !1620, line: 177, baseType: !372, size: 64, offset: 3520)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1619, file: !1620, line: 178, baseType: !372, size: 64, offset: 3584)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1619, file: !1620, line: 179, baseType: !1387, size: 128, offset: 3648)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1619, file: !1620, line: 180, baseType: !279, size: 64, offset: 3776)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1619, file: !1620, line: 180, baseType: !279, size: 64, offset: 3840)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1619, file: !1620, line: 180, baseType: !279, size: 64, offset: 3904)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1619, file: !1620, line: 180, baseType: !279, size: 64, offset: 3968)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1619, file: !1620, line: 181, baseType: !279, size: 64, offset: 4032)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1619, file: !1620, line: 181, baseType: !279, size: 64, offset: 4096)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1619, file: !1620, line: 181, baseType: !279, size: 64, offset: 4160)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1619, file: !1620, line: 181, baseType: !279, size: 64, offset: 4224)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1619, file: !1620, line: 182, baseType: !279, size: 64, offset: 4288)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1619, file: !1620, line: 182, baseType: !279, size: 64, offset: 4352)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1619, file: !1620, line: 182, baseType: !279, size: 64, offset: 4416)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1619, file: !1620, line: 182, baseType: !279, size: 64, offset: 4480)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1619, file: !1620, line: 183, baseType: !279, size: 64, offset: 4544)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1619, file: !1620, line: 183, baseType: !279, size: 64, offset: 4608)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1619, file: !1620, line: 184, baseType: !1702, offset: 4672)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1703, line: 12, elements: !203)
!1703 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1619, file: !1620, line: 192, baseType: !374, size: 64, offset: 4672)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1619, file: !1620, line: 203, baseType: !1706, size: 2048, offset: 4736)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1707, size: 2048, elements: !141)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1708, line: 43, size: 128, elements: !1709)
!1708 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1707, file: !1708, line: 44, baseType: !278, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1707, file: !1708, line: 45, baseType: !278, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1619, file: !1620, line: 220, baseType: !441, size: 8, offset: 6784)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1619, file: !1620, line: 221, baseType: !1074, size: 16, offset: 6800)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1619, file: !1620, line: 222, baseType: !1074, size: 16, offset: 6816)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1619, file: !1620, line: 224, baseType: !923, size: 64, offset: 6848)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1619, file: !1620, line: 227, baseType: !1042, size: 192, offset: 6912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1619, file: !1620, line: 233, baseType: !1042, size: 192, offset: 7104)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1086, file: !1087, line: 970, baseType: !1719, size: 64, offset: 9280)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1620, line: 20, size: 16576, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1720, file: !1620, line: 21, baseType: !189)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1720, file: !1620, line: 22, baseType: !1099, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1720, file: !1620, line: 23, baseType: !1350, size: 128, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1720, file: !1620, line: 24, baseType: !1726, size: 16384, offset: 192)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1727, size: 16384, elements: !235)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1630, line: 49, size: 256, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1727, file: !1630, line: 50, baseType: !1730, size: 256)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1630, line: 35, size: 256, elements: !1731)
!1731 = !{!1732, !1739, !1740, !1746}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1730, file: !1630, line: 37, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1734, line: 19, baseType: !1735)
!1734 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1734, line: 18, baseType: !1737)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !137}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1730, file: !1630, line: 38, baseType: !279, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1730, file: !1630, line: 44, baseType: !1741, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1734, line: 22, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1734, line: 21, baseType: !1744)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1730, file: !1630, line: 46, baseType: !1634, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1086, file: !1087, line: 971, baseType: !1634, size: 64, offset: 9344)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1086, file: !1087, line: 972, baseType: !1634, size: 64, offset: 9408)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1086, file: !1087, line: 974, baseType: !1634, size: 64, offset: 9472)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1086, file: !1087, line: 975, baseType: !1629, size: 192, offset: 9536)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1086, file: !1087, line: 976, baseType: !279, size: 64, offset: 9728)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1086, file: !1087, line: 977, baseType: !276, size: 64, offset: 9792)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1086, file: !1087, line: 978, baseType: !7, size: 32, offset: 9856)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1086, file: !1087, line: 980, baseType: !323, size: 64, offset: 9920)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1086, file: !1087, line: 989, baseType: !1756, size: 128, offset: 9984)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1757, line: 35, size: 128, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1756, file: !1757, line: 36, baseType: !137, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1756, file: !1757, line: 37, baseType: !698, size: 32, offset: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1756, file: !1757, line: 38, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1757, line: 23, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1086, file: !1087, line: 992, baseType: !372, size: 64, offset: 10112)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1086, file: !1087, line: 993, baseType: !372, size: 64, offset: 10176)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1086, file: !1087, line: 996, baseType: !189, offset: 10240)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1086, file: !1087, line: 999, baseType: !731, offset: 10240)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1086, file: !1087, line: 1001, baseType: !1769, size: 64, offset: 10240)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1087, line: 636, size: 64, elements: !1770)
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1769, file: !1087, line: 637, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1086, file: !1087, line: 1005, baseType: !703, size: 128, offset: 10304)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1086, file: !1087, line: 1007, baseType: !1085, size: 64, offset: 10432)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1086, file: !1087, line: 1009, baseType: !1776, size: 64, offset: 10496)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1087, line: 1009, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1086, file: !1087, line: 1043, baseType: !127, size: 64, offset: 10560)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1086, file: !1087, line: 1046, baseType: !1780, size: 64, offset: 10624)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1087, line: 41, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1086, file: !1087, line: 1050, baseType: !1783, size: 64, offset: 10688)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1087, line: 42, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1086, file: !1087, line: 1054, baseType: !1786, size: 64, offset: 10752)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1087, line: 55, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1086, file: !1087, line: 1056, baseType: !1789, size: 64, offset: 10816)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1087, line: 40, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1086, file: !1087, line: 1058, baseType: !1792, size: 64, offset: 10880)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1794, line: 99, size: 704, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1821, !1822}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1793, file: !1794, line: 100, baseType: !722, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1793, file: !1794, line: 101, baseType: !698, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1793, file: !1794, line: 102, baseType: !698, size: 32, offset: 96)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1793, file: !1794, line: 105, baseType: !189, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1793, file: !1794, line: 107, baseType: !130, size: 16, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1793, file: !1794, line: 109, baseType: !690, size: 128, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1793, file: !1794, line: 110, baseType: !1803, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1794, line: 73, size: 448, elements: !1805)
!1805 = !{!1806, !1809, !1810, !1815, !1820}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1804, file: !1794, line: 74, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1794, line: 74, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1804, file: !1794, line: 75, baseType: !1792, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1794, line: 83, baseType: !1811, size: 128, offset: 128)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1794, line: 83, size: 128, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1811, file: !1794, line: 84, baseType: !176, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1811, file: !1794, line: 85, baseType: !884, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1794, line: 87, baseType: !1816, size: 128, offset: 256)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1794, line: 87, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1816, file: !1794, line: 88, baseType: !590, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1816, file: !1794, line: 89, baseType: !320, size: 128, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !1794, line: 92, baseType: !7, size: 32, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1793, file: !1794, line: 111, baseType: !586, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1793, file: !1794, line: 113, baseType: !1823, size: 256, offset: 448)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1824, line: 102, size: 256, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1823, file: !1824, line: 103, baseType: !722, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1823, file: !1824, line: 104, baseType: !176, size: 128, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1823, file: !1824, line: 105, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1824, line: 21, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1086, file: !1087, line: 1061, baseType: !1835, size: 64, offset: 10944)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1087, line: 43, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1086, file: !1087, line: 1064, baseType: !279, size: 64, offset: 11008)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1086, file: !1087, line: 1065, baseType: !1839, size: 64, offset: 11072)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1630, line: 14, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1630, line: 12, size: 384, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1630, line: 13, baseType: !1844, size: 384)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1630, line: 13, size: 384, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1844, file: !1630, line: 13, baseType: !137, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1844, file: !1630, line: 13, baseType: !137, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1844, file: !1630, line: 13, baseType: !137, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1844, file: !1630, line: 13, baseType: !1850, size: 256, offset: 128)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1851, line: 32, size: 256, elements: !1852)
!1851 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1858, !1871, !1877, !1886, !1906, !1911}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1850, file: !1851, line: 37, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 34, size: 64, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1854, file: !1851, line: 35, baseType: !1329, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1854, file: !1851, line: 36, baseType: !392, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1850, file: !1851, line: 45, baseType: !1859, size: 192)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 40, size: 192, elements: !1860)
!1860 = !{!1861, !1863, !1864, !1870}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1859, file: !1851, line: 41, baseType: !1862, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !263, line: 95, baseType: !137)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1859, file: !1851, line: 42, baseType: !137, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1859, file: !1851, line: 43, baseType: !1865, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1851, line: 11, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1851, line: 8, size: 64, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1866, file: !1851, line: 9, baseType: !137, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1866, file: !1851, line: 10, baseType: !127, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1859, file: !1851, line: 44, baseType: !137, size: 32, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1850, file: !1851, line: 52, baseType: !1872, size: 128)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 48, size: 128, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1872, file: !1851, line: 49, baseType: !1329, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1872, file: !1851, line: 50, baseType: !392, size: 32, offset: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1872, file: !1851, line: 51, baseType: !1865, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1850, file: !1851, line: 61, baseType: !1878, size: 256)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 55, size: 256, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1885}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1878, file: !1851, line: 56, baseType: !1329, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1878, file: !1851, line: 57, baseType: !392, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1878, file: !1851, line: 58, baseType: !137, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1878, file: !1851, line: 59, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !263, line: 94, baseType: !264)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1878, file: !1851, line: 60, baseType: !1884, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1850, file: !1851, line: 95, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 64, size: 256, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1887, file: !1851, line: 65, baseType: !127, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1851, line: 77, baseType: !1891, size: 192, offset: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1851, line: 77, size: 192, elements: !1892)
!1892 = !{!1893, !1894, !1901}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1891, file: !1851, line: 82, baseType: !1074, size: 16)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1891, file: !1851, line: 88, baseType: !1895, size: 192)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1851, line: 84, size: 192, elements: !1896)
!1896 = !{!1897, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1895, file: !1851, line: 85, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !1199)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1895, file: !1851, line: 86, baseType: !127, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1895, file: !1851, line: 87, baseType: !127, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1891, file: !1851, line: 93, baseType: !1902, size: 96)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1851, line: 90, size: 96, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1902, file: !1851, line: 91, baseType: !1898, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1902, file: !1851, line: 92, baseType: !146, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1850, file: !1851, line: 101, baseType: !1907, size: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 98, size: 128, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1907, file: !1851, line: 99, baseType: !265, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1907, file: !1851, line: 100, baseType: !137, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1850, file: !1851, line: 108, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 104, size: 128, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1912, file: !1851, line: 105, baseType: !127, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1912, file: !1851, line: 106, baseType: !137, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1912, file: !1851, line: 107, baseType: !7, size: 32, offset: 96)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1086, file: !1087, line: 1067, baseType: !1702, offset: 11136)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1086, file: !1087, line: 1099, baseType: !1919, size: 64, offset: 11136)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1087, line: 56, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1086, file: !1087, line: 1103, baseType: !176, size: 128, offset: 11200)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1086, file: !1087, line: 1104, baseType: !1923, size: 64, offset: 11328)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1087, line: 46, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1086, file: !1087, line: 1105, baseType: !1042, size: 192, offset: 11392)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1086, file: !1087, line: 1106, baseType: !7, size: 32, offset: 11584)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1086, file: !1087, line: 1109, baseType: !1928, size: 128, offset: 11648)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 128, elements: !157)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1087, line: 51, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1086, file: !1087, line: 1110, baseType: !1042, size: 192, offset: 11776)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1086, file: !1087, line: 1111, baseType: !176, size: 128, offset: 11968)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1086, file: !1087, line: 1173, baseType: !1934, size: 64, offset: 12096)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1936, line: 62, size: 256, align: 256, elements: !1937)
!1936 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1945}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1935, file: !1936, line: 75, baseType: !146, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1935, file: !1936, line: 90, baseType: !146, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1935, file: !1936, line: 124, baseType: !1941, size: 64, offset: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1936, line: 109, size: 64, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1941, file: !1936, line: 110, baseType: !373, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1941, file: !1936, line: 112, baseType: !373, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1936, line: 144, baseType: !146, size: 32, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1086, file: !1087, line: 1174, baseType: !144, size: 32, offset: 12160)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1086, file: !1087, line: 1179, baseType: !279, size: 64, offset: 12224)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1086, file: !1087, line: 1182, baseType: !1949, size: 128, offset: 12288)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1020, line: 76, size: 128, elements: !1950)
!1950 = !{!1951, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1949, file: !1020, line: 85, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1953, line: 7, size: 64, elements: !1954)
!1953 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1952, file: !1953, line: 12, baseType: !1236, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1949, file: !1020, line: 88, baseType: !441, size: 8, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1949, file: !1020, line: 95, baseType: !441, size: 8, offset: 72)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !1087, line: 1184, baseType: !1959, size: 128, offset: 12416)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !1087, line: 1184, size: 128, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1959, file: !1087, line: 1185, baseType: !1099, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1959, file: !1087, line: 1186, baseType: !320, size: 128, align: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1086, file: !1087, line: 1190, baseType: !1964, size: 64, offset: 12544)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1087, line: 53, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1086, file: !1087, line: 1192, baseType: !1967, size: 128, offset: 12608)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1020, line: 64, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1967, file: !1020, line: 65, baseType: !672, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1967, file: !1020, line: 67, baseType: !146, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1967, file: !1020, line: 68, baseType: !146, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1086, file: !1087, line: 1206, baseType: !137, size: 32, offset: 12736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1086, file: !1087, line: 1207, baseType: !137, size: 32, offset: 12768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1086, file: !1087, line: 1209, baseType: !279, size: 64, offset: 12800)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1086, file: !1087, line: 1219, baseType: !372, size: 64, offset: 12864)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1086, file: !1087, line: 1220, baseType: !372, size: 64, offset: 12928)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1086, file: !1087, line: 1317, baseType: !137, size: 32, offset: 12992)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1086, file: !1087, line: 1319, baseType: !1085, size: 64, offset: 13056)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1086, file: !1087, line: 1322, baseType: !1980, size: 64, offset: 13120)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1982, line: 9, flags: DIFlagFwdDecl)
!1982 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1086, file: !1087, line: 1326, baseType: !1099, size: 32, offset: 13184)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1086, file: !1087, line: 1342, baseType: !127, size: 64, offset: 13248)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1086, file: !1087, line: 1343, baseType: !373, size: 64, offset: 13312)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1086, file: !1087, line: 1344, baseType: !372, size: 64, offset: 13376)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1086, file: !1087, line: 1345, baseType: !373, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1086, file: !1087, line: 1346, baseType: !373, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1086, file: !1087, line: 1347, baseType: !373, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1086, file: !1087, line: 1348, baseType: !320, size: 128, align: 64, offset: 13504)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1086, file: !1087, line: 1358, baseType: !1992, size: 34816, offset: 13824)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1993, line: 485, size: 34816, elements: !1994)
!1993 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2024, !2025, !2026, !2027, !2028, !2029, !2032, !2033, !2034}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1992, file: !1993, line: 487, baseType: !1996, size: 192)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1997, size: 192, elements: !231)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1998, line: 16, size: 64, elements: !1999)
!1998 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1997, file: !1998, line: 17, baseType: !809, size: 16)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1997, file: !1998, line: 18, baseType: !809, size: 16, offset: 16)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1997, file: !1998, line: 19, baseType: !809, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1997, file: !1998, line: 19, baseType: !809, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1997, file: !1998, line: 19, baseType: !809, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1997, file: !1998, line: 19, baseType: !809, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1997, file: !1998, line: 19, baseType: !809, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1997, file: !1998, line: 20, baseType: !809, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1997, file: !1998, line: 20, baseType: !809, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1997, file: !1998, line: 20, baseType: !809, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1997, file: !1998, line: 20, baseType: !809, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1997, file: !1998, line: 20, baseType: !809, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1997, file: !1998, line: 20, baseType: !809, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1992, file: !1993, line: 491, baseType: !279, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1992, file: !1993, line: 495, baseType: !130, size: 16, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1992, file: !1993, line: 496, baseType: !130, size: 16, offset: 272)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1992, file: !1993, line: 497, baseType: !130, size: 16, offset: 288)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1992, file: !1993, line: 498, baseType: !130, size: 16, offset: 304)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1992, file: !1993, line: 502, baseType: !279, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1992, file: !1993, line: 503, baseType: !279, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1992, file: !1993, line: 514, baseType: !2021, size: 256, offset: 448)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2022, size: 256, elements: !1024)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1993, line: 483, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1992, file: !1993, line: 516, baseType: !279, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1992, file: !1993, line: 518, baseType: !279, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1992, file: !1993, line: 520, baseType: !279, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1992, file: !1993, line: 521, baseType: !279, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1992, file: !1993, line: 522, baseType: !279, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1992, file: !1993, line: 528, baseType: !2030, size: 64, offset: 1024)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1993, line: 10, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1992, file: !1993, line: 535, baseType: !279, size: 64, offset: 1088)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1992, file: !1993, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1992, file: !1993, line: 540, baseType: !2035, size: 33280, offset: 1536)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2036, line: 317, size: 33280, elements: !2037)
!2036 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !{!2038, !2039, !2040}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2035, file: !2036, line: 330, baseType: !7, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2035, file: !2036, line: 337, baseType: !279, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2035, file: !2036, line: 348, baseType: !2041, size: 32768, offset: 512)
!2041 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2036, line: 304, size: 32768, elements: !2042)
!2042 = !{!2043, !2058, !2097, !2147, !2160}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2041, file: !2036, line: 305, baseType: !2044, size: 896)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2036, line: 12, size: 896, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2057}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2044, file: !2036, line: 13, baseType: !144, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2044, file: !2036, line: 14, baseType: !144, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2044, file: !2036, line: 15, baseType: !144, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2044, file: !2036, line: 16, baseType: !144, size: 32, offset: 96)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2044, file: !2036, line: 17, baseType: !144, size: 32, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2044, file: !2036, line: 18, baseType: !144, size: 32, offset: 160)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2044, file: !2036, line: 19, baseType: !144, size: 32, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2044, file: !2036, line: 22, baseType: !2054, size: 640, offset: 224)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 640, elements: !2055)
!2055 = !{!2056}
!2056 = !DISubrange(count: 20)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2044, file: !2036, line: 25, baseType: !144, size: 32, offset: 864)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2041, file: !2036, line: 306, baseType: !2059, size: 4096, align: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2036, line: 34, size: 4096, align: 128, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2080, !2081, !2082, !2086, !2088, !2092}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2059, file: !2036, line: 35, baseType: !809, size: 16)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2059, file: !2036, line: 36, baseType: !809, size: 16, offset: 16)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2059, file: !2036, line: 37, baseType: !809, size: 16, offset: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2059, file: !2036, line: 38, baseType: !809, size: 16, offset: 48)
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !2036, line: 39, baseType: !2066, size: 128, offset: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2036, line: 39, size: 128, elements: !2067)
!2067 = !{!2068, !2073}
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2036, line: 40, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !2036, line: 40, size: 128, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2069, file: !2036, line: 41, baseType: !372, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2069, file: !2036, line: 42, baseType: !372, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2036, line: 44, baseType: !2074, size: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !2036, line: 44, size: 128, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2074, file: !2036, line: 45, baseType: !144, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2074, file: !2036, line: 46, baseType: !144, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2074, file: !2036, line: 47, baseType: !144, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2074, file: !2036, line: 48, baseType: !144, size: 32, offset: 96)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2059, file: !2036, line: 51, baseType: !144, size: 32, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2059, file: !2036, line: 52, baseType: !144, size: 32, offset: 224)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2059, file: !2036, line: 55, baseType: !2083, size: 1024, offset: 256)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1024, elements: !2084)
!2084 = !{!2085}
!2085 = !DISubrange(count: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2059, file: !2036, line: 58, baseType: !2087, size: 2048, offset: 1280)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 2048, elements: !235)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2059, file: !2036, line: 60, baseType: !2089, size: 384, offset: 3328)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 384, elements: !2090)
!2090 = !{!2091}
!2091 = !DISubrange(count: 12)
!2092 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !2036, line: 62, baseType: !2093, size: 384, offset: 3712)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2036, line: 62, size: 384, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2093, file: !2036, line: 63, baseType: !2089, size: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2093, file: !2036, line: 64, baseType: !2089, size: 384)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2041, file: !2036, line: 307, baseType: !2098, size: 1088)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2036, line: 79, size: 1088, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2146}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2098, file: !2036, line: 80, baseType: !144, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2098, file: !2036, line: 81, baseType: !144, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2098, file: !2036, line: 82, baseType: !144, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2098, file: !2036, line: 83, baseType: !144, size: 32, offset: 96)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2098, file: !2036, line: 84, baseType: !144, size: 32, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2098, file: !2036, line: 85, baseType: !144, size: 32, offset: 160)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2098, file: !2036, line: 86, baseType: !144, size: 32, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2098, file: !2036, line: 88, baseType: !2054, size: 640, offset: 224)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2098, file: !2036, line: 89, baseType: !1221, size: 8, offset: 864)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2098, file: !2036, line: 90, baseType: !1221, size: 8, offset: 872)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2098, file: !2036, line: 91, baseType: !1221, size: 8, offset: 880)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2098, file: !2036, line: 92, baseType: !1221, size: 8, offset: 888)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2098, file: !2036, line: 93, baseType: !1221, size: 8, offset: 896)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2098, file: !2036, line: 94, baseType: !1221, size: 8, offset: 904)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2098, file: !2036, line: 95, baseType: !2115, size: 64, offset: 960)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2117, line: 11, size: 128, elements: !2118)
!2117 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2116, file: !2117, line: 12, baseType: !265, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2116, file: !2117, line: 13, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2123, line: 56, size: 1344, elements: !2124)
!2123 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2122, file: !2123, line: 61, baseType: !279, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2122, file: !2123, line: 62, baseType: !279, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2122, file: !2123, line: 63, baseType: !279, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2122, file: !2123, line: 64, baseType: !279, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2122, file: !2123, line: 65, baseType: !279, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2122, file: !2123, line: 66, baseType: !279, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2122, file: !2123, line: 68, baseType: !279, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2122, file: !2123, line: 69, baseType: !279, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2122, file: !2123, line: 70, baseType: !279, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2122, file: !2123, line: 71, baseType: !279, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2122, file: !2123, line: 72, baseType: !279, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2122, file: !2123, line: 73, baseType: !279, size: 64, offset: 704)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2122, file: !2123, line: 74, baseType: !279, size: 64, offset: 768)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2122, file: !2123, line: 75, baseType: !279, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2122, file: !2123, line: 76, baseType: !279, size: 64, offset: 896)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2122, file: !2123, line: 81, baseType: !279, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2122, file: !2123, line: 83, baseType: !279, size: 64, offset: 1024)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2122, file: !2123, line: 84, baseType: !279, size: 64, offset: 1088)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2122, file: !2123, line: 85, baseType: !279, size: 64, offset: 1152)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2122, file: !2123, line: 86, baseType: !279, size: 64, offset: 1216)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2122, file: !2123, line: 87, baseType: !279, size: 64, offset: 1280)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2098, file: !2036, line: 96, baseType: !144, size: 32, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2041, file: !2036, line: 308, baseType: !2148, size: 4608, align: 512)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2036, line: 289, size: 4608, align: 512, elements: !2149)
!2149 = !{!2150, !2151, !2158}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2148, file: !2036, line: 290, baseType: !2059, size: 4096, align: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2148, file: !2036, line: 291, baseType: !2152, size: 512, offset: 4096)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2036, line: 268, size: 512, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2152, file: !2036, line: 269, baseType: !372, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2152, file: !2036, line: 270, baseType: !372, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2152, file: !2036, line: 271, baseType: !2157, size: 384, offset: 128)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !1492)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2148, file: !2036, line: 292, baseType: !2159, offset: 4608)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, elements: !1590)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2041, file: !2036, line: 309, baseType: !2161, size: 32768)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 32768, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 4096)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !674, line: 378, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1078, file: !674, line: 384, baseType: !1371, size: 192, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !927, file: !674, line: 500, baseType: !189, offset: 6656)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !927, file: !674, line: 501, baseType: !2169, size: 64, offset: 6656)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !674, line: 387, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !927, file: !674, line: 516, baseType: !1580, size: 64, offset: 6720)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !927, file: !674, line: 519, baseType: !307, size: 64, offset: 6784)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !927, file: !674, line: 521, baseType: !2174, size: 64, offset: 6848)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !674, line: 521, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !927, file: !674, line: 545, baseType: !698, size: 32, offset: 6912)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !927, file: !674, line: 548, baseType: !441, size: 8, offset: 6944)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !927, file: !674, line: 550, baseType: !2179, offset: 6952)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2180, line: 142, elements: !203)
!2180 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !927, file: !674, line: 554, baseType: !1823, size: 256, offset: 6976)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !927, file: !674, line: 557, baseType: !144, size: 32, offset: 7232)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !924, file: !674, line: 565, baseType: !2184, offset: 7296)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, elements: !2185)
!2185 = !{!2186}
!2186 = !DISubrange(count: -1)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !920, file: !674, line: 151, baseType: !698, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !913, file: !674, line: 156, baseType: !189, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !674, line: 159, baseType: !2190, size: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !678, file: !674, line: 159, size: 128, elements: !2191)
!2191 = !{!2192, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2190, file: !674, line: 161, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !674, line: 161, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2190, file: !674, line: 162, baseType: !127, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !678, file: !674, line: 176, baseType: !320, size: 128, align: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !674, line: 179, baseType: !2198, size: 32, offset: 384)
!2198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !674, line: 179, size: 32, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2198, file: !674, line: 184, baseType: !698, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2198, file: !674, line: 192, baseType: !7, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2198, file: !674, line: 194, baseType: !7, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2198, file: !674, line: 195, baseType: !137, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !673, file: !674, line: 199, baseType: !698, size: 32, offset: 416)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !608, file: !38, line: 1964, baseType: !2206, size: 64, offset: 1344)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!265, !550, !2209}
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2211, line: 12, size: 256, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2214, !2215, !2216, !2217}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2210, file: !2211, line: 13, baseType: !124, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2210, file: !2211, line: 16, baseType: !137, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2210, file: !2211, line: 23, baseType: !279, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2210, file: !2211, line: 30, baseType: !279, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2210, file: !2211, line: 33, baseType: !2218, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !674, line: 27, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !608, file: !38, line: 1966, baseType: !2206, size: 64, offset: 1408)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !551, file: !38, line: 1424, baseType: !2222, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2225)
!2225 = !{!2226, !2272, !2276, !2280, !2281, !2282, !2283, !2284, !2289, !2294, !2298}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2224, file: !32, line: 323, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!137, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2257, !2258, !2259}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2231, file: !32, line: 295, baseType: !590, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2231, file: !32, line: 296, baseType: !176, size: 128, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2231, file: !32, line: 297, baseType: !176, size: 128, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2231, file: !32, line: 298, baseType: !176, size: 128, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2231, file: !32, line: 299, baseType: !1042, size: 192, offset: 512)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2231, file: !32, line: 300, baseType: !189, offset: 704)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2231, file: !32, line: 301, baseType: !698, size: 32, offset: 704)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2231, file: !32, line: 302, baseType: !550, size: 64, offset: 768)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2231, file: !32, line: 303, baseType: !2242, size: 64, offset: 832)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2243)
!2243 = !{!2244, !2256}
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !32, line: 69, baseType: !2245, size: 32)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !32, line: 69, size: 32, elements: !2246)
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2245, file: !32, line: 70, baseType: !386, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2245, file: !32, line: 71, baseType: !394, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2245, file: !32, line: 72, baseType: !2250, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2251, line: 24, baseType: !2252)
!2251 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2251, line: 22, size: 32, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2252, file: !2251, line: 23, baseType: !2255, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2251, line: 20, baseType: !392)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2242, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2231, file: !32, line: 304, baseType: !482, size: 64, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2231, file: !32, line: 305, baseType: !279, size: 64, offset: 960)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2231, file: !32, line: 306, baseType: !2260, size: 576, offset: 1024)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2261)
!2261 = !{!2262, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2260, file: !32, line: 206, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !484)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2260, file: !32, line: 207, baseType: !2263, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2260, file: !32, line: 208, baseType: !2263, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2260, file: !32, line: 209, baseType: !2263, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2260, file: !32, line: 210, baseType: !2263, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2260, file: !32, line: 211, baseType: !2263, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2260, file: !32, line: 212, baseType: !2263, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2260, file: !32, line: 213, baseType: !490, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2260, file: !32, line: 214, baseType: !490, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2224, file: !32, line: 324, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!2230, !550, !137}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2224, file: !32, line: 325, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2230}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2224, file: !32, line: 326, baseType: !2227, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2224, file: !32, line: 327, baseType: !2227, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2224, file: !32, line: 328, baseType: !2227, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2224, file: !32, line: 329, baseType: !636, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2224, file: !32, line: 332, baseType: !2285, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!2288, !380}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2224, file: !32, line: 333, baseType: !2290, size: 64, offset: 512)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!137, !380, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2224, file: !32, line: 335, baseType: !2295, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!137, !380, !2288}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2224, file: !32, line: 337, baseType: !2299, size: 64, offset: 640)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!137, !550, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !551, file: !38, line: 1425, baseType: !2304, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2307)
!2307 = !{!2308, !2312, !2313, !2317, !2318, !2319, !2334, !2357, !2361, !2362, !2385}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2306, file: !32, line: 429, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!137, !550, !137, !137, !500}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2306, file: !32, line: 430, baseType: !636, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2306, file: !32, line: 431, baseType: !2314, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!137, !550, !7}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2306, file: !32, line: 432, baseType: !2314, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2306, file: !32, line: 433, baseType: !636, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2306, file: !32, line: 434, baseType: !2320, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!137, !550, !137, !2323}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2325)
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2324, file: !32, line: 416, baseType: !137, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2324, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2324, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2324, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2324, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2324, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2324, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2324, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2306, file: !32, line: 435, baseType: !2335, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!137, !550, !2242, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2339, file: !32, line: 344, baseType: !137, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2339, file: !32, line: 345, baseType: !372, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2339, file: !32, line: 346, baseType: !372, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2339, file: !32, line: 347, baseType: !372, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2339, file: !32, line: 348, baseType: !372, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2339, file: !32, line: 349, baseType: !372, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2339, file: !32, line: 350, baseType: !372, size: 64, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2339, file: !32, line: 351, baseType: !728, size: 64, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2339, file: !32, line: 353, baseType: !728, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2339, file: !32, line: 354, baseType: !137, size: 32, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2339, file: !32, line: 355, baseType: !137, size: 32, offset: 608)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2339, file: !32, line: 356, baseType: !372, size: 64, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2339, file: !32, line: 357, baseType: !372, size: 64, offset: 704)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2339, file: !32, line: 358, baseType: !372, size: 64, offset: 768)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2339, file: !32, line: 359, baseType: !728, size: 64, offset: 832)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2339, file: !32, line: 360, baseType: !137, size: 32, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2306, file: !32, line: 436, baseType: !2358, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!137, !550, !2302, !2338}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2306, file: !32, line: 438, baseType: !2335, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2306, file: !32, line: 439, baseType: !2363, size: 64, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!137, !550, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2367, file: !32, line: 410, baseType: !7, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2367, file: !32, line: 411, baseType: !2371, size: 1344, offset: 64)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2372, size: 1344, elements: !231)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2384}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2372, file: !32, line: 396, baseType: !7, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2372, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2372, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2372, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2372, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2372, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2372, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2372, file: !32, line: 404, baseType: !374, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2372, file: !32, line: 405, baseType: !2383, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !125, line: 126, baseType: !372)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2372, file: !32, line: 406, baseType: !2383, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2306, file: !32, line: 440, baseType: !2314, size: 64, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !551, file: !38, line: 1426, baseType: !2387, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2389)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !551, file: !38, line: 1427, baseType: !279, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !551, file: !38, line: 1428, baseType: !279, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !551, file: !38, line: 1429, baseType: !279, size: 64, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !551, file: !38, line: 1430, baseType: !337, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !551, file: !38, line: 1431, baseType: !718, size: 256, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !551, file: !38, line: 1432, baseType: !137, size: 32, offset: 1152)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !551, file: !38, line: 1433, baseType: !698, size: 32, offset: 1184)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !551, file: !38, line: 1437, baseType: !2398, size: 64, offset: 1216)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !551, file: !38, line: 1449, baseType: !2403, size: 64, offset: 1280)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !353, line: 34, size: 64, elements: !2404)
!2404 = !{!2405}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2403, file: !353, line: 35, baseType: !356, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !551, file: !38, line: 1450, baseType: !176, size: 128, offset: 1344)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !551, file: !38, line: 1451, baseType: !2408, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !551, file: !38, line: 1452, baseType: !1789, size: 64, offset: 1536)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !551, file: !38, line: 1453, baseType: !2412, size: 64, offset: 1600)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !551, file: !38, line: 1454, baseType: !590, size: 128, offset: 1664)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !551, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !551, file: !38, line: 1456, baseType: !2417, size: 2432, offset: 1856)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2423, !2455}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !32, line: 519, baseType: !7, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2417, file: !32, line: 520, baseType: !718, size: 256, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2417, file: !32, line: 521, baseType: !2422, size: 192, offset: 320)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 192, elements: !231)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2417, file: !32, line: 522, baseType: !2424, size: 1728, offset: 512)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 1728, elements: !231)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2426)
!2426 = !{!2427, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2425, file: !32, line: 223, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2430)
!2430 = !{!2431, !2432, !2445, !2446}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2429, file: !32, line: 444, baseType: !137, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2429, file: !32, line: 445, baseType: !2433, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2435, file: !32, line: 311, baseType: !636, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2435, file: !32, line: 312, baseType: !636, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2435, file: !32, line: 313, baseType: !636, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2435, file: !32, line: 314, baseType: !636, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2435, file: !32, line: 315, baseType: !2227, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2435, file: !32, line: 316, baseType: !2227, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2435, file: !32, line: 317, baseType: !2227, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2435, file: !32, line: 318, baseType: !2299, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2429, file: !32, line: 446, baseType: !121, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2429, file: !32, line: 447, baseType: !2428, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2425, file: !32, line: 224, baseType: !137, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2425, file: !32, line: 226, baseType: !176, size: 128, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2425, file: !32, line: 227, baseType: !279, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2425, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2425, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2425, file: !32, line: 230, baseType: !2263, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2425, file: !32, line: 231, baseType: !2263, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2425, file: !32, line: 232, baseType: !127, size: 64, offset: 512)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2417, file: !32, line: 523, baseType: !2456, size: 192, offset: 2240)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2433, size: 192, elements: !231)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !551, file: !38, line: 1458, baseType: !2458, size: 2112, offset: 4288)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2458, file: !38, line: 1411, baseType: !137, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2458, file: !38, line: 1412, baseType: !1350, size: 128, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2458, file: !38, line: 1413, baseType: !2463, size: 1920, offset: 192)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2464, size: 1920, elements: !231)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2465, line: 12, size: 640, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2466 = !{!2467, !2475, !2477, !2482, !2483}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2464, file: !2465, line: 13, baseType: !2468, size: 320)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2469, line: 17, size: 320, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2470 = !{!2471, !2472, !2473, !2474}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2468, file: !2469, line: 18, baseType: !137, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2468, file: !2469, line: 19, baseType: !137, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2468, file: !2469, line: 20, baseType: !1350, size: 128, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2468, file: !2469, line: 22, baseType: !320, size: 128, align: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2464, file: !2465, line: 14, baseType: !2476, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2464, file: !2465, line: 15, baseType: !2478, size: 64, offset: 384)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2479, line: 16, size: 64, elements: !2480)
!2479 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !{!2481}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2478, file: !2479, line: 17, baseType: !1085, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2464, file: !2465, line: 16, baseType: !1350, size: 128, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2464, file: !2465, line: 17, baseType: !698, size: 32, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !551, file: !38, line: 1465, baseType: !127, size: 64, offset: 6400)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !551, file: !38, line: 1468, baseType: !144, size: 32, offset: 6464)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !551, file: !38, line: 1470, baseType: !490, size: 64, offset: 6528)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !551, file: !38, line: 1471, baseType: !490, size: 64, offset: 6592)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !551, file: !38, line: 1473, baseType: !146, size: 32, offset: 6656)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !551, file: !38, line: 1474, baseType: !2490, size: 64, offset: 6720)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !551, file: !38, line: 1477, baseType: !2493, size: 256, offset: 6784)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !2084)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !551, file: !38, line: 1478, baseType: !2495, size: 128, offset: 7040)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2496, line: 18, baseType: !2497)
!2496 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2496, line: 16, size: 128, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2497, file: !2496, line: 17, baseType: !2500, size: 128)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 128, elements: !141)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !551, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !551, file: !38, line: 1481, baseType: !2503, size: 32, offset: 7200)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !125, line: 150, baseType: !7)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !551, file: !38, line: 1487, baseType: !1042, size: 192, offset: 7232)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !551, file: !38, line: 1493, baseType: !173, size: 64, offset: 7424)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !551, file: !38, line: 1495, baseType: !2507, size: 64, offset: 7488)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !335, line: 135, size: 1024, align: 512, elements: !2510)
!2510 = !{!2511, !2515, !2516, !2523, !2529, !2533, !2537, !2541, !2542, !2546, !2550, !2555, !2559}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2509, file: !335, line: 136, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!137, !337, !7}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2509, file: !335, line: 137, baseType: !2512, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2509, file: !335, line: 138, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!137, !2520, !2522}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2509, file: !335, line: 139, baseType: !2524, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!137, !2520, !7, !173, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2509, file: !335, line: 141, baseType: !2530, size: 64, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!137, !2520}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2509, file: !335, line: 142, baseType: !2534, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!137, !337}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2509, file: !335, line: 143, baseType: !2538, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !337}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2509, file: !335, line: 144, baseType: !2538, size: 64, offset: 448)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2509, file: !335, line: 145, baseType: !2543, size: 64, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !337, !380}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2509, file: !335, line: 146, baseType: !2547, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!230, !337, !230, !137}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2509, file: !335, line: 147, baseType: !2551, size: 64, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!333, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2509, file: !335, line: 148, baseType: !2556, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!137, !500, !441}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2509, file: !335, line: 149, baseType: !2560, size: 64, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!337, !337, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !551, file: !38, line: 1500, baseType: !137, size: 32, offset: 7552)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !551, file: !38, line: 1502, baseType: !2567, size: 448, offset: 7616)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2211, line: 60, size: 448, elements: !2568)
!2568 = !{!2569, !2574, !2575, !2576, !2577, !2578, !2579}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2567, file: !2211, line: 61, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!279, !2573, !2209}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2567, file: !2211, line: 63, baseType: !2570, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2567, file: !2211, line: 66, baseType: !265, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2567, file: !2211, line: 67, baseType: !137, size: 32, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2567, file: !2211, line: 68, baseType: !7, size: 32, offset: 224)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2567, file: !2211, line: 71, baseType: !176, size: 128, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2567, file: !2211, line: 77, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !551, file: !38, line: 1505, baseType: !722, size: 64, offset: 8064)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !551, file: !38, line: 1508, baseType: !722, size: 64, offset: 8128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !551, file: !38, line: 1511, baseType: !137, size: 32, offset: 8192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !551, file: !38, line: 1514, baseType: !858, size: 32, offset: 8224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !551, file: !38, line: 1517, baseType: !2586, size: 64, offset: 8256)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1824, line: 18, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !551, file: !38, line: 1518, baseType: !586, size: 64, offset: 8320)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !551, file: !38, line: 1525, baseType: !1580, size: 64, offset: 8384)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !551, file: !38, line: 1532, baseType: !2591, size: 64, offset: 8448)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2592, line: 52, size: 64, elements: !2593)
!2592 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2591, file: !2592, line: 53, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2592, line: 40, size: 256, elements: !2597)
!2597 = !{!2598, !2599, !2604}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2596, file: !2592, line: 42, baseType: !189)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2596, file: !2592, line: 44, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2592, line: 28, size: 192, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2600, file: !2592, line: 29, baseType: !176, size: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2600, file: !2592, line: 31, baseType: !265, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2596, file: !2592, line: 49, baseType: !265, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !551, file: !38, line: 1533, baseType: !2591, size: 64, offset: 8512)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !551, file: !38, line: 1534, baseType: !320, size: 128, align: 64, offset: 8576)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !551, file: !38, line: 1535, baseType: !1823, size: 256, offset: 8704)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !551, file: !38, line: 1537, baseType: !1042, size: 192, offset: 8960)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !551, file: !38, line: 1542, baseType: !137, size: 32, offset: 9152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !551, file: !38, line: 1545, baseType: !189, offset: 9184)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !551, file: !38, line: 1546, baseType: !176, size: 128, offset: 9216)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !551, file: !38, line: 1548, baseType: !189, offset: 9344)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !551, file: !38, line: 1549, baseType: !176, size: 128, offset: 9344)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !381, file: !38, line: 624, baseType: !685, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !381, file: !38, line: 631, baseType: !279, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !38, line: 639, baseType: !2617, size: 32, offset: 384)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !38, line: 639, size: 32, elements: !2618)
!2618 = !{!2619, !2621}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2617, file: !38, line: 640, baseType: !2620, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2617, file: !38, line: 641, baseType: !7, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !381, file: !38, line: 643, baseType: !464, size: 32, offset: 416)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !381, file: !38, line: 644, baseType: !482, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !381, file: !38, line: 645, baseType: !486, size: 128, offset: 512)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !381, file: !38, line: 646, baseType: !486, size: 128, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !381, file: !38, line: 647, baseType: !486, size: 128, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !381, file: !38, line: 648, baseType: !189, offset: 896)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !381, file: !38, line: 649, baseType: !130, size: 16, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !381, file: !38, line: 650, baseType: !1221, size: 8, offset: 912)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !381, file: !38, line: 651, baseType: !1221, size: 8, offset: 920)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !381, file: !38, line: 652, baseType: !2383, size: 64, offset: 960)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !381, file: !38, line: 659, baseType: !279, size: 64, offset: 1024)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !381, file: !38, line: 660, baseType: !718, size: 256, offset: 1088)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !381, file: !38, line: 662, baseType: !279, size: 64, offset: 1344)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !381, file: !38, line: 663, baseType: !279, size: 64, offset: 1408)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !381, file: !38, line: 665, baseType: !590, size: 128, offset: 1472)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !381, file: !38, line: 666, baseType: !176, size: 128, offset: 1600)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !381, file: !38, line: 675, baseType: !176, size: 128, offset: 1728)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !381, file: !38, line: 676, baseType: !176, size: 128, offset: 1856)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !381, file: !38, line: 677, baseType: !176, size: 128, offset: 1984)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !38, line: 678, baseType: !2642, size: 128, offset: 2112)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !38, line: 678, size: 128, elements: !2643)
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2642, file: !38, line: 679, baseType: !586, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2642, file: !38, line: 680, baseType: !320, size: 128, align: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !381, file: !38, line: 682, baseType: !724, size: 64, offset: 2240)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !381, file: !38, line: 683, baseType: !724, size: 64, offset: 2304)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !381, file: !38, line: 684, baseType: !698, size: 32, offset: 2368)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !381, file: !38, line: 685, baseType: !698, size: 32, offset: 2400)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !381, file: !38, line: 686, baseType: !698, size: 32, offset: 2432)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !381, file: !38, line: 688, baseType: !698, size: 32, offset: 2464)
!2652 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !38, line: 690, baseType: !2653, size: 64, offset: 2496)
!2653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !38, line: 690, size: 64, elements: !2654)
!2654 = !{!2655, !2877}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2653, file: !38, line: 691, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2659)
!2659 = !{!2660, !2661, !2665, !2670, !2674, !2675, !2676, !2680, !2693, !2694, !2701, !2705, !2706, !2710, !2711, !2715, !2720, !2721, !2725, !2729, !2837, !2841, !2842, !2846, !2847, !2851, !2855, !2860, !2864, !2868, !2872, !2876}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2658, file: !38, line: 1823, baseType: !121, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2658, file: !38, line: 1824, baseType: !2662, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!482, !307, !482, !137}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2658, file: !38, line: 1825, baseType: !2666, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!261, !307, !230, !276, !2669}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2658, file: !38, line: 1826, baseType: !2671, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!261, !307, !173, !276, !2669}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2658, file: !38, line: 1827, baseType: !794, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2658, file: !38, line: 1828, baseType: !794, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2658, file: !38, line: 1829, baseType: !2677, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!137, !797, !441}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2658, file: !38, line: 1830, baseType: !2681, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!137, !307, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2686)
!2686 = !{!2687, !2692}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2685, file: !38, line: 1777, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2689)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!137, !2684, !173, !137, !482, !372, !7}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2685, file: !38, line: 1778, baseType: !482, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2658, file: !38, line: 1831, baseType: !2681, size: 64, offset: 512)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2658, file: !38, line: 1832, baseType: !2695, size: 64, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2698, !307, !2699}
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !132, line: 52, baseType: !7)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !570, line: 27, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2658, file: !38, line: 1833, baseType: !2702, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!265, !307, !7, !279}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2658, file: !38, line: 1834, baseType: !2702, size: 64, offset: 704)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2658, file: !38, line: 1835, baseType: !2707, size: 64, offset: 768)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!137, !307, !930}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2658, file: !38, line: 1836, baseType: !279, size: 64, offset: 832)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2658, file: !38, line: 1837, baseType: !2712, size: 64, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!137, !380, !307}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2658, file: !38, line: 1838, baseType: !2716, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!137, !307, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !127)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2658, file: !38, line: 1839, baseType: !2712, size: 64, offset: 1024)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2658, file: !38, line: 1840, baseType: !2722, size: 64, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!137, !307, !482, !482, !137}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2658, file: !38, line: 1841, baseType: !2726, size: 64, offset: 1152)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!137, !137, !307, !137}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2658, file: !38, line: 1842, baseType: !2730, size: 64, offset: 1216)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!137, !307, !137, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2767, !2768, !2769, !2782, !2813}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2734, file: !38, line: 1063, baseType: !2733, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2734, file: !38, line: 1064, baseType: !176, size: 128, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2734, file: !38, line: 1065, baseType: !590, size: 128, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2734, file: !38, line: 1066, baseType: !176, size: 128, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2734, file: !38, line: 1069, baseType: !176, size: 128, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2734, file: !38, line: 1072, baseType: !2719, size: 64, offset: 576)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2734, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2734, file: !38, line: 1074, baseType: !378, size: 8, offset: 672)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2734, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2734, file: !38, line: 1076, baseType: !137, size: 32, offset: 736)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2734, file: !38, line: 1077, baseType: !1350, size: 128, offset: 768)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2734, file: !38, line: 1078, baseType: !307, size: 64, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2734, file: !38, line: 1079, baseType: !482, size: 64, offset: 960)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2734, file: !38, line: 1080, baseType: !482, size: 64, offset: 1024)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2734, file: !38, line: 1082, baseType: !2751, size: 64, offset: 1088)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2753)
!2753 = !{!2754, !2762, !2763, !2764, !2765, !2766}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2752, file: !38, line: 1315, baseType: !2755)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2756, line: 20, baseType: !2757)
!2756 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2756, line: 11, elements: !2758)
!2758 = !{!2759}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2757, file: !2756, line: 12, baseType: !2760)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !201, line: 33, baseType: !2761)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 31, elements: !203)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2752, file: !38, line: 1316, baseType: !137, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2752, file: !38, line: 1317, baseType: !137, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2752, file: !38, line: 1318, baseType: !2751, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2752, file: !38, line: 1319, baseType: !307, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2752, file: !38, line: 1320, baseType: !320, size: 128, align: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2734, file: !38, line: 1084, baseType: !279, size: 64, offset: 1152)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2734, file: !38, line: 1085, baseType: !279, size: 64, offset: 1216)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2734, file: !38, line: 1087, baseType: !2770, size: 64, offset: 1280)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2773)
!2773 = !{!2774, !2778}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2772, file: !38, line: 1012, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2733, !2733}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2772, file: !38, line: 1013, baseType: !2779, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2733}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2734, file: !38, line: 1088, baseType: !2783, size: 64, offset: 1344)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2785)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2786)
!2786 = !{!2787, !2791, !2795, !2796, !2800, !2804, !2808, !2812}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2785, file: !38, line: 1017, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!2719, !2719}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2785, file: !38, line: 1018, baseType: !2792, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !2719}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2785, file: !38, line: 1019, baseType: !2779, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2785, file: !38, line: 1020, baseType: !2797, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!137, !2733, !137}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2785, file: !38, line: 1021, baseType: !2801, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!441, !2733}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2785, file: !38, line: 1022, baseType: !2805, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!137, !2733, !137, !179}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2785, file: !38, line: 1023, baseType: !2809, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !2733, !126}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2785, file: !38, line: 1024, baseType: !2801, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2734, file: !38, line: 1097, baseType: !2814, size: 256, offset: 1408)
!2814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2734, file: !38, line: 1089, size: 256, elements: !2815)
!2815 = !{!2816, !2825, !2831}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2814, file: !38, line: 1090, baseType: !2817, size: 256)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2818, line: 10, size: 256, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2819 = !{!2820, !2821, !2824}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2817, file: !2818, line: 11, baseType: !144, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2817, file: !2818, line: 12, baseType: !2822, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2818, line: 5, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2817, file: !2818, line: 13, baseType: !176, size: 128, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2814, file: !38, line: 1091, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2818, line: 17, size: 64, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2826, file: !2818, line: 18, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2818, line: 16, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2814, file: !38, line: 1096, baseType: !2832, size: 192)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2814, file: !38, line: 1092, size: 192, elements: !2833)
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2832, file: !38, line: 1093, baseType: !176, size: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2832, file: !38, line: 1094, baseType: !137, size: 32, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2832, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2658, file: !38, line: 1843, baseType: !2838, size: 64, offset: 1280)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!261, !307, !672, !137, !276, !2669, !137}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2658, file: !38, line: 1844, baseType: !970, size: 64, offset: 1344)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2658, file: !38, line: 1845, baseType: !2843, size: 64, offset: 1408)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!137, !137}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2658, file: !38, line: 1846, baseType: !2730, size: 64, offset: 1472)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2658, file: !38, line: 1847, baseType: !2848, size: 64, offset: 1536)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!261, !1964, !307, !2669, !276, !7}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2658, file: !38, line: 1848, baseType: !2852, size: 64, offset: 1600)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!261, !307, !2669, !1964, !276, !7}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2658, file: !38, line: 1849, baseType: !2856, size: 64, offset: 1664)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!137, !307, !265, !2859, !126}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2658, file: !38, line: 1850, baseType: !2861, size: 64, offset: 1728)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!265, !307, !137, !482, !482}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2658, file: !38, line: 1852, baseType: !2865, size: 64, offset: 1792)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !662, !307}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2658, file: !38, line: 1856, baseType: !2869, size: 64, offset: 1856)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!261, !307, !482, !307, !482, !276, !7}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2658, file: !38, line: 1858, baseType: !2873, size: 64, offset: 1920)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!482, !307, !482, !307, !482, !482, !7}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2658, file: !38, line: 1861, baseType: !2722, size: 64, offset: 1984)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2653, file: !38, line: 692, baseType: !615, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !381, file: !38, line: 694, baseType: !2879, size: 64, offset: 2560)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2881)
!2881 = !{!2882, !2883, !2884, !2885}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2880, file: !38, line: 1101, baseType: !189)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2880, file: !38, line: 1102, baseType: !176, size: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2880, file: !38, line: 1103, baseType: !176, size: 128, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2880, file: !38, line: 1104, baseType: !176, size: 128, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !381, file: !38, line: 695, baseType: !686, size: 1216, align: 64, offset: 2624)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !381, file: !38, line: 696, baseType: !176, size: 128, offset: 3840)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !38, line: 697, baseType: !2889, size: 64, offset: 3968)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !38, line: 697, size: 64, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2896, !2897}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2889, file: !38, line: 698, baseType: !1964, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2889, file: !38, line: 699, baseType: !2408, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2889, file: !38, line: 700, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2889, file: !38, line: 701, baseType: !230, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2889, file: !38, line: 702, baseType: !7, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !381, file: !38, line: 705, baseType: !146, size: 32, offset: 4032)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !381, file: !38, line: 708, baseType: !146, size: 32, offset: 4064)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !381, file: !38, line: 709, baseType: !2490, size: 64, offset: 4096)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !381, file: !38, line: 720, baseType: !127, size: 64, offset: 4160)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !338, file: !335, line: 98, baseType: !2903, size: 256, offset: 448)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 256, elements: !2084)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !338, file: !335, line: 101, baseType: !2905, size: 32, offset: 704)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2906, line: 25, size: 32, elements: !2907)
!2906 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2907 = !{!2908}
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2905, file: !2906, line: 26, baseType: !2909, size: 32)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2905, file: !2906, line: 26, size: 32, elements: !2910)
!2910 = !{!2911}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !2906, line: 30, baseType: !2912, size: 32)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2909, file: !2906, line: 30, size: 32, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2912, file: !2906, line: 31, baseType: !189)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2912, file: !2906, line: 32, baseType: !137, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !338, file: !335, line: 102, baseType: !2507, size: 64, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !338, file: !335, line: 103, baseType: !550, size: 64, offset: 832)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !338, file: !335, line: 104, baseType: !279, size: 64, offset: 896)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !338, file: !335, line: 105, baseType: !127, size: 64, offset: 960)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !335, line: 107, baseType: !2921, size: 128, offset: 1024)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !335, line: 107, size: 128, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2921, file: !335, line: 108, baseType: !176, size: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2921, file: !335, line: 109, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !338, file: !335, line: 111, baseType: !176, size: 128, offset: 1152)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !338, file: !335, line: 112, baseType: !176, size: 128, offset: 1280)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !338, file: !335, line: 120, baseType: !2929, size: 128, offset: 1408)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !335, line: 116, size: 128, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2929, file: !335, line: 117, baseType: !590, size: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2929, file: !335, line: 118, baseType: !352, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2929, file: !335, line: 119, baseType: !320, size: 128, align: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !308, file: !38, line: 922, baseType: !380, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !308, file: !38, line: 923, baseType: !2656, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !308, file: !38, line: 929, baseType: !189, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !308, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !308, file: !38, line: 931, baseType: !722, size: 64, offset: 448)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !308, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !308, file: !38, line: 933, baseType: !2503, size: 32, offset: 544)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !308, file: !38, line: 934, baseType: !1042, size: 192, offset: 576)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !308, file: !38, line: 935, baseType: !482, size: 64, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !308, file: !38, line: 936, baseType: !2944, size: 192, offset: 832)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2945)
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2944, file: !38, line: 886, baseType: !2755)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2944, file: !38, line: 887, baseType: !1340, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2944, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2944, file: !38, line: 889, baseType: !386, size: 32, offset: 96)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2944, file: !38, line: 889, baseType: !386, size: 32, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2944, file: !38, line: 890, baseType: !137, size: 32, offset: 160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !308, file: !38, line: 937, baseType: !1416, size: 64, offset: 1024)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !308, file: !38, line: 938, baseType: !2954, size: 256, offset: 1088)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2954, file: !38, line: 897, baseType: !279, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2954, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2954, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2954, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2954, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2954, file: !38, line: 904, baseType: !482, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !308, file: !38, line: 940, baseType: !372, size: 64, offset: 1344)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !308, file: !38, line: 945, baseType: !127, size: 64, offset: 1408)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !308, file: !38, line: 949, baseType: !176, size: 128, offset: 1472)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !308, file: !38, line: 950, baseType: !176, size: 128, offset: 1600)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !308, file: !38, line: 952, baseType: !685, size: 64, offset: 1728)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !308, file: !38, line: 953, baseType: !858, size: 32, offset: 1792)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !308, file: !38, line: 954, baseType: !858, size: 32, offset: 1824)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !298, file: !255, line: 174, baseType: !304, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !298, file: !255, line: 176, baseType: !2971, size: 64, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!137, !307, !182, !297, !930}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !286, file: !255, line: 90, baseType: !281, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !286, file: !255, line: 91, baseType: !2976, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !245, file: !170, line: 143, baseType: !2978, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2981, !182}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2983)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2984)
!2984 = !{!2985, !2986, !2990, !2994, !3002, !3006}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2983, file: !55, line: 40, baseType: !54, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2983, file: !55, line: 41, baseType: !2987, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!441}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2983, file: !55, line: 42, baseType: !2991, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!127}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2983, file: !55, line: 43, baseType: !2995, size: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!2998, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2983, file: !55, line: 44, baseType: !3003, size: 64, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!2998}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2983, file: !55, line: 45, baseType: !419, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !245, file: !170, line: 144, baseType: !3008, size: 64, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!2998, !182}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !245, file: !170, line: 145, baseType: !3012, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !182, !3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !169, file: !170, line: 70, baseType: !3018, size: 64, offset: 384)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !570, line: 123, size: 1024, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3149, !3150, !3151, !3152, !3153}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3019, file: !570, line: 124, baseType: !698, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3019, file: !570, line: 125, baseType: !698, size: 32, offset: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3019, file: !570, line: 135, baseType: !3018, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3019, file: !570, line: 136, baseType: !173, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3019, file: !570, line: 138, baseType: !711, size: 192, align: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3019, file: !570, line: 140, baseType: !2998, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3019, file: !570, line: 141, baseType: !7, size: 32, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, scope: !3019, file: !570, line: 142, baseType: !3029, size: 256, offset: 512)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3019, file: !570, line: 142, size: 256, elements: !3030)
!3030 = !{!3031, !3077, !3081}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3029, file: !570, line: 143, baseType: !3032, size: 192)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !570, line: 91, size: 192, elements: !3033)
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3032, file: !570, line: 92, baseType: !279, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3032, file: !570, line: 94, baseType: !707, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3032, file: !570, line: 100, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !570, line: 180, size: 704, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3049, !3050, !3051, !3075, !3076}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3038, file: !570, line: 182, baseType: !3018, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3038, file: !570, line: 183, baseType: !7, size: 32, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3038, file: !570, line: 186, baseType: !3043, size: 192, offset: 128)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3044, line: 19, size: 192, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3043, file: !3044, line: 20, baseType: !690, size: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3043, file: !3044, line: 21, baseType: !7, size: 32, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3043, file: !3044, line: 22, baseType: !7, size: 32, offset: 160)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3038, file: !570, line: 187, baseType: !144, size: 32, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3038, file: !570, line: 188, baseType: !144, size: 32, offset: 352)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3038, file: !570, line: 189, baseType: !3052, size: 64, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !570, line: 168, size: 320, elements: !3054)
!3054 = !{!3055, !3059, !3063, !3067, !3071}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3053, file: !570, line: 169, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!137, !662, !3037}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3053, file: !570, line: 171, baseType: !3060, size: 64, offset: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!137, !3018, !173, !271}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3053, file: !570, line: 173, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!137, !3018}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3053, file: !570, line: 174, baseType: !3068, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!137, !3018, !3018, !173}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3053, file: !570, line: 176, baseType: !3072, size: 64, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!137, !662, !3018, !3037}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3038, file: !570, line: 192, baseType: !176, size: 128, offset: 448)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3038, file: !570, line: 194, baseType: !1350, size: 128, offset: 576)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3029, file: !570, line: 144, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !570, line: 103, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3078, file: !570, line: 104, baseType: !3018, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3029, file: !570, line: 145, baseType: !3082, size: 256)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !570, line: 107, size: 256, elements: !3083)
!3083 = !{!3084, !3144, !3147, !3148}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3082, file: !570, line: 108, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3087)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !570, line: 217, size: 768, elements: !3088)
!3088 = !{!3089, !3109, !3113, !3117, !3121, !3125, !3129, !3133, !3134, !3135, !3136, !3140}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3087, file: !570, line: 222, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!137, !3093}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !570, line: 197, size: 1088, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3094, file: !570, line: 199, baseType: !3018, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3094, file: !570, line: 200, baseType: !307, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3094, file: !570, line: 201, baseType: !662, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3094, file: !570, line: 202, baseType: !127, size: 64, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3094, file: !570, line: 205, baseType: !1042, size: 192, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3094, file: !570, line: 206, baseType: !1042, size: 192, offset: 448)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3094, file: !570, line: 207, baseType: !137, size: 32, offset: 640)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3094, file: !570, line: 208, baseType: !176, size: 128, offset: 704)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3094, file: !570, line: 209, baseType: !230, size: 64, offset: 832)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3094, file: !570, line: 211, baseType: !276, size: 64, offset: 896)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3094, file: !570, line: 212, baseType: !441, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3094, file: !570, line: 213, baseType: !441, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3094, file: !570, line: 214, baseType: !958, size: 64, offset: 1024)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3087, file: !570, line: 223, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3093}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3087, file: !570, line: 236, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!137, !662, !127}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3087, file: !570, line: 238, baseType: !3118, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!127, !662, !2669}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3087, file: !570, line: 239, baseType: !3122, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!127, !662, !127, !2669}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3087, file: !570, line: 240, baseType: !3126, size: 64, offset: 320)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !662, !127}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3087, file: !570, line: 242, baseType: !3130, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!261, !3093, !230, !276, !482}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3087, file: !570, line: 252, baseType: !276, size: 64, offset: 448)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3087, file: !570, line: 259, baseType: !441, size: 8, offset: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3087, file: !570, line: 260, baseType: !3130, size: 64, offset: 576)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3087, file: !570, line: 263, baseType: !3137, size: 64, offset: 640)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!2698, !3093, !2699}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3087, file: !570, line: 266, baseType: !3141, size: 64, offset: 704)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!137, !3093, !930}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3082, file: !570, line: 109, baseType: !3145, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !570, line: 31, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3082, file: !570, line: 110, baseType: !482, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3082, file: !570, line: 111, baseType: !3018, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3019, file: !570, line: 148, baseType: !127, size: 64, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3019, file: !570, line: 154, baseType: !372, size: 64, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3019, file: !570, line: 156, baseType: !130, size: 16, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3019, file: !570, line: 157, baseType: !271, size: 16, offset: 912)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3019, file: !570, line: 158, baseType: !3154, size: 64, offset: 960)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !570, line: 32, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !169, file: !170, line: 71, baseType: !3157, size: 32, offset: 448)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3158, line: 19, size: 32, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3157, file: !3158, line: 20, baseType: !1099, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !169, file: !170, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !169, file: !170, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !169, file: !170, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !169, file: !170, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !169, file: !170, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !166, file: !67, line: 463, baseType: !165, size: 64, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !166, file: !67, line: 465, baseType: !3168, size: 64, offset: 576)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !166, file: !67, line: 467, baseType: !173, size: 64, offset: 640)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !67, line: 468, baseType: !3172, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3174)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3182, !3187, !3191}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3174, file: !67, line: 88, baseType: !173, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3174, file: !67, line: 89, baseType: !283, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3174, file: !67, line: 90, baseType: !3179, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!137, !165, !225}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3174, file: !67, line: 91, baseType: !3183, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!230, !165, !3186, !3015, !3016}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3174, file: !67, line: 93, baseType: !3188, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !165}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3174, file: !67, line: 95, baseType: !3192, size: 64, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3195)
!3195 = !{!3196, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3194, file: !74, line: 279, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!137, !165}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3194, file: !74, line: 280, baseType: !3188, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3194, file: !74, line: 281, baseType: !3197, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3194, file: !74, line: 282, baseType: !3197, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3194, file: !74, line: 283, baseType: !3197, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3194, file: !74, line: 284, baseType: !3197, size: 64, offset: 320)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3194, file: !74, line: 285, baseType: !3197, size: 64, offset: 384)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3194, file: !74, line: 286, baseType: !3197, size: 64, offset: 448)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3194, file: !74, line: 287, baseType: !3197, size: 64, offset: 512)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3194, file: !74, line: 288, baseType: !3197, size: 64, offset: 576)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3194, file: !74, line: 289, baseType: !3197, size: 64, offset: 640)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3194, file: !74, line: 290, baseType: !3197, size: 64, offset: 704)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3194, file: !74, line: 291, baseType: !3197, size: 64, offset: 768)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3194, file: !74, line: 292, baseType: !3197, size: 64, offset: 832)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3194, file: !74, line: 293, baseType: !3197, size: 64, offset: 896)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3194, file: !74, line: 294, baseType: !3197, size: 64, offset: 960)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3194, file: !74, line: 295, baseType: !3197, size: 64, offset: 1024)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3194, file: !74, line: 296, baseType: !3197, size: 64, offset: 1088)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3194, file: !74, line: 297, baseType: !3197, size: 64, offset: 1152)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3194, file: !74, line: 298, baseType: !3197, size: 64, offset: 1216)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3194, file: !74, line: 299, baseType: !3197, size: 64, offset: 1280)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3194, file: !74, line: 300, baseType: !3197, size: 64, offset: 1344)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3194, file: !74, line: 301, baseType: !3197, size: 64, offset: 1408)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !166, file: !67, line: 470, baseType: !3223, size: 64, offset: 768)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3225, line: 82, size: 1408, elements: !3226)
!3225 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3308, !3311, !3312}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3224, file: !3225, line: 83, baseType: !173, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3224, file: !3225, line: 84, baseType: !173, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3224, file: !3225, line: 85, baseType: !165, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3224, file: !3225, line: 86, baseType: !283, size: 64, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3224, file: !3225, line: 87, baseType: !283, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3224, file: !3225, line: 88, baseType: !283, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3224, file: !3225, line: 90, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!137, !165, !3237}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3259, !3272, !3273, !3274, !3275, !3276, !3284, !3285, !3286, !3287, !3288, !3289}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3238, file: !61, line: 96, baseType: !173, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3238, file: !61, line: 97, baseType: !3223, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3238, file: !61, line: 99, baseType: !121, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3238, file: !61, line: 100, baseType: !173, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3238, file: !61, line: 102, baseType: !441, size: 8, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3238, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3238, file: !61, line: 105, baseType: !3247, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3249)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3250, line: 262, size: 1600, elements: !3251)
!3250 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3251 = !{!3252, !3253, !3254, !3258}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3249, file: !3250, line: 263, baseType: !2493, size: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3249, file: !3250, line: 264, baseType: !2493, size: 256, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3249, file: !3250, line: 265, baseType: !3255, size: 1024, offset: 512)
!3255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1024, elements: !3256)
!3256 = !{!3257}
!3257 = !DISubrange(count: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3249, file: !3250, line: 266, baseType: !2998, size: 64, offset: 1536)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3238, file: !61, line: 106, baseType: !3260, size: 64, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3250, line: 210, size: 256, elements: !3263)
!3263 = !{!3264, !3268, !3270, !3271}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3262, file: !3250, line: 211, baseType: !3265, size: 72)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 72, elements: !3266)
!3266 = !{!3267}
!3267 = !DISubrange(count: 9)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3262, file: !3250, line: 212, baseType: !3269, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3250, line: 14, baseType: !279)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3262, file: !3250, line: 213, baseType: !146, size: 32, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3262, file: !3250, line: 214, baseType: !146, size: 32, offset: 224)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3238, file: !61, line: 108, baseType: !3197, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3238, file: !61, line: 109, baseType: !3188, size: 64, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3238, file: !61, line: 110, baseType: !3197, size: 64, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3238, file: !61, line: 111, baseType: !3188, size: 64, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3238, file: !61, line: 112, baseType: !3277, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!137, !165, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3281)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3282)
!3282 = !{!3283}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3281, file: !74, line: 51, baseType: !137, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3238, file: !61, line: 113, baseType: !3197, size: 64, offset: 768)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3238, file: !61, line: 114, baseType: !283, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3238, file: !61, line: 115, baseType: !283, size: 64, offset: 896)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3238, file: !61, line: 117, baseType: !3192, size: 64, offset: 960)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3238, file: !61, line: 118, baseType: !3188, size: 64, offset: 1024)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3238, file: !61, line: 120, baseType: !3290, size: 64, offset: 1088)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3224, file: !3225, line: 91, baseType: !3179, size: 64, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3224, file: !3225, line: 92, baseType: !3197, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3224, file: !3225, line: 93, baseType: !3188, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3224, file: !3225, line: 94, baseType: !3197, size: 64, offset: 640)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3224, file: !3225, line: 95, baseType: !3188, size: 64, offset: 704)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3224, file: !3225, line: 97, baseType: !3197, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3224, file: !3225, line: 98, baseType: !3197, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3224, file: !3225, line: 100, baseType: !3277, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3224, file: !3225, line: 101, baseType: !3197, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3224, file: !3225, line: 103, baseType: !3197, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3224, file: !3225, line: 105, baseType: !3197, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3224, file: !3225, line: 107, baseType: !3192, size: 64, offset: 1152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3224, file: !3225, line: 109, baseType: !3305, size: 64, offset: 1216)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3307)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3225, line: 109, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3224, file: !3225, line: 111, baseType: !3309, size: 64, offset: 1280)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3225, line: 111, flags: DIFlagFwdDecl)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3224, file: !3225, line: 112, baseType: !596, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3224, file: !3225, line: 114, baseType: !441, size: 8, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !67, line: 471, baseType: !3237, size: 64, offset: 832)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !166, file: !67, line: 473, baseType: !127, size: 64, offset: 896)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !166, file: !67, line: 475, baseType: !127, size: 64, offset: 960)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !67, line: 480, baseType: !1042, size: 192, offset: 1024)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !166, file: !67, line: 484, baseType: !3318, size: 576, offset: 1216)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324, !3325}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3318, file: !67, line: 362, baseType: !176, size: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3318, file: !67, line: 363, baseType: !176, size: 128, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3318, file: !67, line: 364, baseType: !176, size: 128, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3318, file: !67, line: 365, baseType: !176, size: 128, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3318, file: !67, line: 366, baseType: !441, size: 8, offset: 512)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3318, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !166, file: !67, line: 485, baseType: !3327, size: 2304, offset: 1792)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3424, !3428}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3327, file: !74, line: 566, baseType: !3280, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3327, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3327, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3327, file: !74, line: 569, baseType: !441, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3327, file: !74, line: 570, baseType: !441, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3327, file: !74, line: 571, baseType: !441, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3327, file: !74, line: 572, baseType: !441, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3327, file: !74, line: 573, baseType: !441, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3327, file: !74, line: 574, baseType: !441, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3327, file: !74, line: 575, baseType: !441, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3327, file: !74, line: 576, baseType: !441, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3327, file: !74, line: 577, baseType: !144, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3327, file: !74, line: 578, baseType: !189, offset: 96)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3327, file: !74, line: 580, baseType: !176, size: 128, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3327, file: !74, line: 581, baseType: !1371, size: 192, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3327, file: !74, line: 582, baseType: !3345, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3347, line: 43, size: 1472, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3356, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3346, file: !3347, line: 44, baseType: !173, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3346, file: !3347, line: 45, baseType: !137, size: 32, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3346, file: !3347, line: 46, baseType: !176, size: 128, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3346, file: !3347, line: 47, baseType: !189, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3346, file: !3347, line: 48, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3346, file: !3347, line: 49, baseType: !3357, size: 320, offset: 320)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3358, line: 11, size: 320, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3359 = !{!3360, !3361, !3362, !3367}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3357, file: !3358, line: 16, baseType: !590, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3357, file: !3358, line: 17, baseType: !279, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3357, file: !3358, line: 18, baseType: !3363, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !3358, line: 19, baseType: !144, size: 32, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3346, file: !3347, line: 50, baseType: !279, size: 64, offset: 640)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3346, file: !3347, line: 51, baseType: !1169, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3346, file: !3347, line: 52, baseType: !1169, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3346, file: !3347, line: 53, baseType: !1169, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3346, file: !3347, line: 54, baseType: !1169, size: 64, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3346, file: !3347, line: 55, baseType: !1169, size: 64, offset: 960)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3346, file: !3347, line: 56, baseType: !279, size: 64, offset: 1024)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3346, file: !3347, line: 57, baseType: !279, size: 64, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3346, file: !3347, line: 58, baseType: !279, size: 64, offset: 1152)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3346, file: !3347, line: 59, baseType: !279, size: 64, offset: 1216)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3346, file: !3347, line: 60, baseType: !279, size: 64, offset: 1280)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3346, file: !3347, line: 61, baseType: !165, size: 64, offset: 1344)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3346, file: !3347, line: 62, baseType: !441, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3346, file: !3347, line: 63, baseType: !441, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3327, file: !74, line: 583, baseType: !441, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3327, file: !74, line: 584, baseType: !441, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3327, file: !74, line: 585, baseType: !441, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3327, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3327, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3327, file: !74, line: 592, baseType: !1161, size: 512, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3327, file: !74, line: 593, baseType: !372, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3327, file: !74, line: 594, baseType: !1823, size: 256, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3327, file: !74, line: 595, baseType: !1350, size: 128, offset: 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3327, file: !74, line: 596, baseType: !3354, size: 64, offset: 1536)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3327, file: !74, line: 597, baseType: !698, size: 32, offset: 1600)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3327, file: !74, line: 598, baseType: !698, size: 32, offset: 1632)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3327, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3327, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3327, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3327, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3327, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3327, file: !74, line: 604, baseType: !441, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3327, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3327, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3327, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3327, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3327, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3327, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3327, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3327, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3327, file: !74, line: 613, baseType: !137, size: 32, offset: 1792)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3327, file: !74, line: 614, baseType: !137, size: 32, offset: 1824)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3327, file: !74, line: 615, baseType: !372, size: 64, offset: 1856)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3327, file: !74, line: 616, baseType: !372, size: 64, offset: 1920)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3327, file: !74, line: 617, baseType: !372, size: 64, offset: 1984)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3327, file: !74, line: 618, baseType: !372, size: 64, offset: 2048)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3327, file: !74, line: 620, baseType: !3415, size: 64, offset: 2112)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3416, file: !74, line: 537, baseType: !189)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3416, file: !74, line: 538, baseType: !7, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3416, file: !74, line: 540, baseType: !176, size: 128, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3416, file: !74, line: 543, baseType: !3422, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3327, file: !74, line: 621, baseType: !3425, size: 64, offset: 2176)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !165, !1313}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3327, file: !74, line: 622, baseType: !3429, size: 64, offset: 2240)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !166, file: !67, line: 486, baseType: !3432, size: 64, offset: 4096)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3441, !3442, !3443}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3433, file: !74, line: 643, baseType: !3194, size: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3433, file: !74, line: 644, baseType: !3197, size: 64, offset: 1472)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3433, file: !74, line: 645, baseType: !3438, size: 64, offset: 1536)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !165, !441}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3433, file: !74, line: 646, baseType: !3197, size: 64, offset: 1600)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3433, file: !74, line: 647, baseType: !3188, size: 64, offset: 1664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3433, file: !74, line: 648, baseType: !3188, size: 64, offset: 1728)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !166, file: !67, line: 493, baseType: !3445, size: 64, offset: 4160)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !166, file: !67, line: 499, baseType: !176, size: 128, offset: 4224)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !166, file: !67, line: 502, baseType: !3449, size: 64, offset: 4352)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3451)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !166, file: !67, line: 504, baseType: !3453, size: 64, offset: 4416)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !166, file: !67, line: 505, baseType: !372, size: 64, offset: 4480)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !166, file: !67, line: 510, baseType: !372, size: 64, offset: 4544)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !166, file: !67, line: 511, baseType: !3457, size: 64, offset: 4608)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3459)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !166, file: !67, line: 513, baseType: !3461, size: 64, offset: 4672)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3462, file: !67, line: 293, baseType: !7, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3462, file: !67, line: 294, baseType: !279, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !166, file: !67, line: 515, baseType: !176, size: 128, offset: 4736)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !166, file: !67, line: 526, baseType: !3468, offset: 4864)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3469, line: 5, elements: !203)
!3469 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !166, file: !67, line: 528, baseType: !3471, size: 64, offset: 4864)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3473, line: 14, flags: DIFlagFwdDecl)
!3473 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !166, file: !67, line: 529, baseType: !3475, size: 64, offset: 4928)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3225, line: 22, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !166, file: !67, line: 534, baseType: !464, size: 32, offset: 4992)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !166, file: !67, line: 535, baseType: !144, size: 32, offset: 5024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !166, file: !67, line: 537, baseType: !189, offset: 5056)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !166, file: !67, line: 538, baseType: !176, size: 128, offset: 5056)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !166, file: !67, line: 540, baseType: !3482, size: 64, offset: 5184)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3484, line: 54, size: 960, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3496, !3500, !3501, !3502, !3503, !3507, !3511, !3512}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3483, file: !3484, line: 55, baseType: !173, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3483, file: !3484, line: 56, baseType: !121, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3483, file: !3484, line: 58, baseType: !283, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3483, file: !3484, line: 59, baseType: !283, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3483, file: !3484, line: 60, baseType: !182, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3483, file: !3484, line: 62, baseType: !3179, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3483, file: !3484, line: 63, baseType: !3493, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!230, !165, !3186}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3483, file: !3484, line: 65, baseType: !3497, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !3482}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3483, file: !3484, line: 66, baseType: !3188, size: 64, offset: 512)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3483, file: !3484, line: 68, baseType: !3197, size: 64, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3483, file: !3484, line: 70, baseType: !2981, size: 64, offset: 640)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3483, file: !3484, line: 71, baseType: !3504, size: 64, offset: 704)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!2998, !165}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3483, file: !3484, line: 73, baseType: !3508, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !165, !3015, !3016}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3483, file: !3484, line: 75, baseType: !3192, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3483, file: !3484, line: 77, baseType: !3309, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !166, file: !67, line: 541, baseType: !283, size: 64, offset: 5248)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !166, file: !67, line: 543, baseType: !3188, size: 64, offset: 5312)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !166, file: !67, line: 544, baseType: !3516, size: 64, offset: 5376)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !166, file: !67, line: 545, baseType: !3519, size: 64, offset: 5440)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !166, file: !67, line: 547, baseType: !441, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !166, file: !67, line: 548, baseType: !441, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !166, file: !67, line: 549, baseType: !441, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !166, file: !67, line: 550, baseType: !441, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !162, file: !6, line: 426, baseType: !165, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !162, file: !6, line: 427, baseType: !137, size: 32, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !162, file: !6, line: 428, baseType: !173, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !162, file: !6, line: 429, baseType: !1221, size: 8, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !162, file: !6, line: 433, baseType: !1221, size: 8, offset: 264)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !162, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !162, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !162, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !162, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !162, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !162, file: !6, line: 444, baseType: !137, size: 32, offset: 320)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !162, file: !6, line: 446, baseType: !1042, size: 192, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !162, file: !6, line: 448, baseType: !3538, size: 128, offset: 576)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3538, file: !6, line: 418, baseType: !3541, size: 128)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, elements: !157)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !162, file: !6, line: 449, baseType: !133, size: 64, offset: 704)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !162, file: !6, line: 450, baseType: !161, size: 64, offset: 768)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !162, file: !6, line: 452, baseType: !137, size: 32, offset: 832)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !162, file: !6, line: 459, baseType: !137, size: 32, offset: 864)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !162, file: !6, line: 460, baseType: !137, size: 32, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !162, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !134, file: !6, line: 647, baseType: !3549, size: 640, offset: 640)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3550)
!3550 = !{!3551, !3562, !3570, !3578, !3579, !3580, !3583, !3585, !3586, !3587}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3549, file: !6, line: 68, baseType: !3552, size: 72)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3552, file: !88, line: 408, baseType: !1222, size: 8)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3552, file: !88, line: 409, baseType: !1222, size: 8, offset: 8)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3552, file: !88, line: 411, baseType: !1222, size: 8, offset: 16)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3552, file: !88, line: 412, baseType: !1222, size: 8, offset: 24)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3552, file: !88, line: 413, baseType: !131, size: 16, offset: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3552, file: !88, line: 414, baseType: !1222, size: 8, offset: 48)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3552, file: !88, line: 418, baseType: !1222, size: 8, offset: 56)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3552, file: !88, line: 419, baseType: !1222, size: 8, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3549, file: !6, line: 69, baseType: !3563, size: 48, offset: 72)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3563, file: !88, line: 690, baseType: !1222, size: 8)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3563, file: !88, line: 691, baseType: !1222, size: 8, offset: 8)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3563, file: !88, line: 693, baseType: !1222, size: 8, offset: 16)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3563, file: !88, line: 694, baseType: !1222, size: 8, offset: 24)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3563, file: !88, line: 695, baseType: !131, size: 16, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3549, file: !6, line: 70, baseType: !3571, size: 64, offset: 120)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3571, file: !88, line: 678, baseType: !1222, size: 8)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3571, file: !88, line: 679, baseType: !1222, size: 8, offset: 8)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3571, file: !88, line: 680, baseType: !131, size: 16, offset: 16)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3571, file: !88, line: 681, baseType: !3577, size: 32, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !132, line: 31, baseType: !146)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3549, file: !6, line: 71, baseType: !176, size: 128, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3549, file: !6, line: 72, baseType: !127, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3549, file: !6, line: 73, baseType: !3581, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3549, file: !6, line: 75, baseType: !3584, size: 64, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3549, file: !6, line: 76, baseType: !137, size: 32, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3549, file: !6, line: 77, baseType: !137, size: 32, offset: 544)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3549, file: !6, line: 78, baseType: !137, size: 32, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !134, file: !6, line: 649, baseType: !166, size: 5568, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !134, file: !6, line: 651, baseType: !3590, size: 144, offset: 6848)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3590, file: !88, line: 290, baseType: !1222, size: 8)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3590, file: !88, line: 291, baseType: !1222, size: 8, offset: 8)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3590, file: !88, line: 293, baseType: !131, size: 16, offset: 16)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3590, file: !88, line: 294, baseType: !1222, size: 8, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3590, file: !88, line: 295, baseType: !1222, size: 8, offset: 40)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3590, file: !88, line: 296, baseType: !1222, size: 8, offset: 48)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3590, file: !88, line: 297, baseType: !1222, size: 8, offset: 56)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3590, file: !88, line: 298, baseType: !131, size: 16, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3590, file: !88, line: 299, baseType: !131, size: 16, offset: 80)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3590, file: !88, line: 300, baseType: !131, size: 16, offset: 96)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3590, file: !88, line: 301, baseType: !1222, size: 8, offset: 112)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3590, file: !88, line: 302, baseType: !1222, size: 8, offset: 120)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3590, file: !88, line: 303, baseType: !1222, size: 8, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3590, file: !88, line: 304, baseType: !1222, size: 8, offset: 136)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !134, file: !6, line: 652, baseType: !3607, size: 64, offset: 7040)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3609)
!3609 = !{!3610, !3618, !3626, !3638, !3651, !3660}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3608, file: !6, line: 397, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3612, file: !88, line: 845, baseType: !1222, size: 8)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3612, file: !88, line: 846, baseType: !1222, size: 8, offset: 8)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3612, file: !88, line: 848, baseType: !131, size: 16, offset: 16)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3612, file: !88, line: 849, baseType: !1222, size: 8, offset: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3608, file: !6, line: 400, baseType: !3619, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3621)
!3621 = !{!3622, !3623, !3624, !3625}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3620, file: !88, line: 896, baseType: !1222, size: 8)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3620, file: !88, line: 897, baseType: !1222, size: 8, offset: 8)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3620, file: !88, line: 898, baseType: !1222, size: 8, offset: 16)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3620, file: !88, line: 899, baseType: !3577, size: 32, offset: 24)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3608, file: !6, line: 401, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3628, file: !88, line: 918, baseType: !1222, size: 8)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3628, file: !88, line: 919, baseType: !1222, size: 8, offset: 8)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3628, file: !88, line: 920, baseType: !1222, size: 8, offset: 16)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3628, file: !88, line: 921, baseType: !1222, size: 8, offset: 24)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3628, file: !88, line: 923, baseType: !131, size: 16, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3628, file: !88, line: 928, baseType: !1222, size: 8, offset: 48)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3628, file: !88, line: 929, baseType: !1222, size: 8, offset: 56)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3628, file: !88, line: 930, baseType: !131, size: 16, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3608, file: !6, line: 402, baseType: !3639, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3640, file: !88, line: 956, baseType: !1222, size: 8)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3640, file: !88, line: 957, baseType: !1222, size: 8, offset: 8)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3640, file: !88, line: 958, baseType: !1222, size: 8, offset: 16)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3640, file: !88, line: 959, baseType: !1222, size: 8, offset: 24)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3640, file: !88, line: 960, baseType: !3577, size: 32, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3640, file: !88, line: 963, baseType: !131, size: 16, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3640, file: !88, line: 967, baseType: !131, size: 16, offset: 80)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3640, file: !88, line: 968, baseType: !3650, size: 32, offset: 96)
!3650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3577, size: 32, elements: !1240)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3608, file: !6, line: 403, baseType: !3652, size: 64, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3654)
!3654 = !{!3655, !3656, !3657, !3658, !3659}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3653, file: !88, line: 941, baseType: !1222, size: 8)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3653, file: !88, line: 942, baseType: !1222, size: 8, offset: 8)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3653, file: !88, line: 943, baseType: !1222, size: 8, offset: 16)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3653, file: !88, line: 944, baseType: !1222, size: 8, offset: 24)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3653, file: !88, line: 945, baseType: !2500, size: 128, offset: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3608, file: !6, line: 404, baseType: !3661, size: 64, offset: 320)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3663)
!3663 = !{!3664, !3665, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3662, file: !88, line: 1081, baseType: !1222, size: 8)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3662, file: !88, line: 1082, baseType: !1222, size: 8, offset: 8)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3662, file: !88, line: 1083, baseType: !1222, size: 8, offset: 16)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !134, file: !6, line: 653, baseType: !3668, size: 64, offset: 7104)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3670)
!3670 = !{!3671, !3682, !3683, !3696, !3738, !3747, !3748}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3669, file: !6, line: 375, baseType: !3672, size: 72)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3672, file: !88, line: 350, baseType: !1222, size: 8)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3672, file: !88, line: 351, baseType: !1222, size: 8, offset: 8)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3672, file: !88, line: 353, baseType: !131, size: 16, offset: 16)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3672, file: !88, line: 354, baseType: !1222, size: 8, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3672, file: !88, line: 355, baseType: !1222, size: 8, offset: 40)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3672, file: !88, line: 356, baseType: !1222, size: 8, offset: 48)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3672, file: !88, line: 357, baseType: !1222, size: 8, offset: 56)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3672, file: !88, line: 358, baseType: !1222, size: 8, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3669, file: !6, line: 377, baseType: !230, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3669, file: !6, line: 381, baseType: !3684, size: 1024, offset: 192)
!3684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3685, size: 1024, elements: !141)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3686, file: !88, line: 784, baseType: !1222, size: 8)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3686, file: !88, line: 785, baseType: !1222, size: 8, offset: 8)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3686, file: !88, line: 787, baseType: !1222, size: 8, offset: 16)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3686, file: !88, line: 788, baseType: !1222, size: 8, offset: 24)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3686, file: !88, line: 789, baseType: !1222, size: 8, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3686, file: !88, line: 790, baseType: !1222, size: 8, offset: 40)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3686, file: !88, line: 791, baseType: !1222, size: 8, offset: 48)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3686, file: !88, line: 792, baseType: !1222, size: 8, offset: 56)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3669, file: !6, line: 385, baseType: !3697, size: 2048, offset: 1216)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3698, size: 2048, elements: !2084)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3700)
!3700 = !{!3701, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3699, file: !6, line: 235, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3704)
!3704 = !{!3705, !3717, !3718, !3719, !3721}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3703, file: !6, line: 83, baseType: !3706, size: 72)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3706, file: !88, line: 390, baseType: !1222, size: 8)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3706, file: !88, line: 391, baseType: !1222, size: 8, offset: 8)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3706, file: !88, line: 393, baseType: !1222, size: 8, offset: 16)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3706, file: !88, line: 394, baseType: !1222, size: 8, offset: 24)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3706, file: !88, line: 395, baseType: !1222, size: 8, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3706, file: !88, line: 396, baseType: !1222, size: 8, offset: 40)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3706, file: !88, line: 397, baseType: !1222, size: 8, offset: 48)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3706, file: !88, line: 398, baseType: !1222, size: 8, offset: 56)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3706, file: !88, line: 399, baseType: !1222, size: 8, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3703, file: !6, line: 85, baseType: !137, size: 32, offset: 96)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3703, file: !6, line: 86, baseType: !3584, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3703, file: !6, line: 91, baseType: !3720, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3703, file: !6, line: 93, baseType: !230, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3699, file: !6, line: 237, baseType: !3702, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3699, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3699, file: !6, line: 243, baseType: !3685, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3699, file: !6, line: 245, baseType: !137, size: 32, offset: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3699, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3699, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3699, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3699, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3699, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3699, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3699, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3699, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3699, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3699, file: !6, line: 257, baseType: !166, size: 5568, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3699, file: !6, line: 258, baseType: !165, size: 64, offset: 5952)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3699, file: !6, line: 259, baseType: !1823, size: 256, offset: 6016)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3669, file: !6, line: 389, baseType: !3739, size: 2048, offset: 3264)
!3739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3740, size: 2048, elements: !2084)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3742)
!3742 = !{!3743, !3744, !3745}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3741, file: !6, line: 323, baseType: !7, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3741, file: !6, line: 324, baseType: !3157, size: 32, offset: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3741, file: !6, line: 328, baseType: !3746, offset: 64)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3703, elements: !2185)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3669, file: !6, line: 391, baseType: !3584, size: 64, offset: 5312)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3669, file: !6, line: 392, baseType: !137, size: 32, offset: 5376)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !134, file: !6, line: 655, baseType: !3668, size: 64, offset: 7168)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !134, file: !6, line: 656, baseType: !3751, size: 1024, offset: 7232)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3720, size: 1024, elements: !141)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !134, file: !6, line: 657, baseType: !3751, size: 1024, offset: 8256)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !134, file: !6, line: 659, baseType: !3754, size: 64, offset: 9280)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !134, file: !6, line: 661, baseType: !130, size: 16, offset: 9344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !134, file: !6, line: 662, baseType: !1221, size: 8, offset: 9360)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !134, file: !6, line: 663, baseType: !1221, size: 8, offset: 9368)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !134, file: !6, line: 664, baseType: !1221, size: 8, offset: 9376)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !134, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !134, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !134, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !134, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !134, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !134, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !134, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !134, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !134, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !134, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !134, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !134, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !134, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !134, file: !6, line: 679, baseType: !137, size: 32, offset: 9408)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !134, file: !6, line: 682, baseType: !230, size: 64, offset: 9472)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !134, file: !6, line: 683, baseType: !230, size: 64, offset: 9536)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !134, file: !6, line: 684, baseType: !230, size: 64, offset: 9600)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !134, file: !6, line: 686, baseType: !176, size: 128, offset: 9664)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !134, file: !6, line: 688, baseType: !137, size: 32, offset: 9792)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !134, file: !6, line: 690, baseType: !144, size: 32, offset: 9824)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !134, file: !6, line: 691, baseType: !698, size: 32, offset: 9856)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !134, file: !6, line: 693, baseType: !279, size: 64, offset: 9920)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !134, file: !6, line: 696, baseType: !279, size: 64, offset: 9984)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !134, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !134, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !134, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !134, file: !6, line: 702, baseType: !3786, size: 64, offset: 10112)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !134, file: !6, line: 703, baseType: !137, size: 32, offset: 10176)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !134, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !134, file: !6, line: 705, baseType: !3791, size: 64, offset: 10240)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3791, file: !6, line: 506, baseType: !7, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3791, file: !6, line: 512, baseType: !137, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !134, file: !6, line: 706, baseType: !3796, size: 128, offset: 10304)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3801}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3796, file: !6, line: 529, baseType: !7, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3796, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3796, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3796, file: !6, line: 551, baseType: !137, size: 32, offset: 96)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !134, file: !6, line: 707, baseType: !3796, size: 128, offset: 10432)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !134, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !134, file: !6, line: 710, baseType: !809, size: 16, offset: 10592)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !134, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3808 = !{!0, !3809, !3814, !3819, !3824, !3829, !3890}
!3809 = !DIGlobalVariableExpression(var: !3810, expr: !DIExpression())
!3810 = distinct !DIGlobalVariable(name: "__exitcall_gtco_driverinfo_table_exit", scope: !2, file: !3, line: 1040, type: !3811, isLocal: true, isDefinition: true)
!3811 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3812, line: 117, baseType: !3813)
!3812 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!3814 = !DIGlobalVariableExpression(var: !3815, expr: !DIExpression())
!3815 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description213", scope: !2, file: !3, line: 1042, type: !3816, isLocal: true, isDefinition: true, align: 8)
!3816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 344, elements: !3817)
!3817 = !{!3818}
!3818 = !DISubrange(count: 43)
!3819 = !DIGlobalVariableExpression(var: !3820, expr: !DIExpression())
!3820 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file214", scope: !2, file: !3, line: 1043, type: !3821, isLocal: true, isDefinition: true, align: 8)
!3821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 288, elements: !3822)
!3822 = !{!3823}
!3823 = !DISubrange(count: 36)
!3824 = !DIGlobalVariableExpression(var: !3825, expr: !DIExpression())
!3825 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license215", scope: !2, file: !3, line: 1043, type: !3826, isLocal: true, isDefinition: true, align: 8)
!3826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 136, elements: !3827)
!3827 = !{!3828}
!3828 = !DISubrange(count: 17)
!3829 = !DIGlobalVariableExpression(var: !3830, expr: !DIExpression())
!3830 = distinct !DIGlobalVariable(name: "gtco_driverinfo_table", scope: !2, file: !3, line: 1033, type: !3831, isLocal: true, isDefinition: true)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3832)
!3832 = !{!3833, !3834, !3855, !3859, !3863, !3867, !3871, !3872, !3873, !3874, !3875, !3876, !3881, !3886, !3887, !3888, !3889}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3831, file: !6, line: 1185, baseType: !173, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3831, file: !6, line: 1187, baseType: !3835, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!137, !3698, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3250, line: 121, size: 256, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3840, file: !3250, line: 123, baseType: !128, size: 16)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3840, file: !3250, line: 126, baseType: !128, size: 16, offset: 16)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3840, file: !3250, line: 127, baseType: !128, size: 16, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3840, file: !3250, line: 128, baseType: !128, size: 16, offset: 48)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3840, file: !3250, line: 129, baseType: !128, size: 16, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3840, file: !3250, line: 132, baseType: !1222, size: 8, offset: 80)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3840, file: !3250, line: 133, baseType: !1222, size: 8, offset: 88)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3840, file: !3250, line: 134, baseType: !1222, size: 8, offset: 96)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3840, file: !3250, line: 137, baseType: !1222, size: 8, offset: 104)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3840, file: !3250, line: 138, baseType: !1222, size: 8, offset: 112)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3840, file: !3250, line: 139, baseType: !1222, size: 8, offset: 120)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3840, file: !3250, line: 142, baseType: !1222, size: 8, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3840, file: !3250, line: 145, baseType: !3269, size: 64, align: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3831, file: !6, line: 1190, baseType: !3856, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3698}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3831, file: !6, line: 1192, baseType: !3860, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!137, !3698, !7, !127}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3831, file: !6, line: 1195, baseType: !3864, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!137, !3698, !3280}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3831, file: !6, line: 1196, baseType: !3868, size: 64, offset: 320)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!137, !3698}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3831, file: !6, line: 1197, baseType: !3868, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3831, file: !6, line: 1199, baseType: !3868, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3831, file: !6, line: 1200, baseType: !3868, size: 64, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3831, file: !6, line: 1202, baseType: !3838, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3831, file: !6, line: 1203, baseType: !283, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3831, file: !6, line: 1205, baseType: !3877, size: 128, offset: 704)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3878)
!3878 = !{!3879, !3880}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3877, file: !6, line: 1092, baseType: !189)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3877, file: !6, line: 1093, baseType: !176, size: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3831, file: !6, line: 1206, baseType: !3882, size: 1216, offset: 832)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3882, file: !6, line: 1114, baseType: !3238, size: 1152)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3882, file: !6, line: 1115, baseType: !137, size: 32, offset: 1152)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3831, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3831, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3831, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3831, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3890 = !DIGlobalVariableExpression(var: !3891, expr: !DIExpression())
!3891 = distinct !DIGlobalVariable(name: "gtco_usbid_table", scope: !2, file: !3, line: 93, type: !3892, isLocal: true, isDefinition: true)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3839, size: 1536, elements: !1492)
!3893 = !{i32 7, !"Dwarf Version", i32 4}
!3894 = !{i32 2, !"Debug Info Version", i32 3}
!3895 = !{i32 1, !"wchar_size", i32 2}
!3896 = !{i32 1, !"Code Model", i32 2}
!3897 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3898 = distinct !DISubprogram(name: "gtco_driverinfo_table_init", scope: !3, file: !3, line: 1040, type: !3899, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!137}
!3901 = !DILocation(line: 1040, column: 1, scope: !3898)
!3902 = distinct !DISubprogram(name: "gtco_driverinfo_table_exit", scope: !3, file: !3, line: 1040, type: !1744, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3903 = !DILocation(line: 1040, column: 1, scope: !3902)
!3904 = distinct !DISubprogram(name: "gtco_probe", scope: !3, file: !3, line: 832, type: !3836, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!3905 = !DILocalVariable(name: "usbinterface", arg: 1, scope: !3904, file: !3, line: 832, type: !3698)
!3906 = !DILocation(line: 832, column: 45, scope: !3904)
!3907 = !DILocalVariable(name: "id", arg: 2, scope: !3904, file: !3, line: 833, type: !3838)
!3908 = !DILocation(line: 833, column: 37, scope: !3904)
!3909 = !DILocalVariable(name: "gtco", scope: !3904, file: !3, line: 836, type: !3910)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gtco", file: !3, line: 105, size: 1152, elements: !3912)
!3912 = !{!3913, !4188, !4189, !4244, !4245, !4246, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4258, !4259, !4260, !4261, !4262}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "inputdevice", scope: !3911, file: !3, line: 107, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3916, line: 131, size: 10432, elements: !3917)
!3916 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3917 = !{!3918, !3919, !3920, !3921, !3929, !3930, !3931, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3958, !3963, !4058, !4061, !4062, !4063, !4065, !4068, !4078, !4079, !4080, !4081, !4082, !4086, !4090, !4094, !4098, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4185, !4186}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3915, file: !3916, line: 132, baseType: !173, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3915, file: !3916, line: 133, baseType: !173, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3915, file: !3916, line: 134, baseType: !173, size: 64, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3915, file: !3916, line: 135, baseType: !3922, size: 64, offset: 192)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3923, line: 59, size: 64, elements: !3924)
!3923 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3924 = !{!3925, !3926, !3927, !3928}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3922, file: !3923, line: 60, baseType: !128, size: 16)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3922, file: !3923, line: 61, baseType: !128, size: 16, offset: 16)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3922, file: !3923, line: 62, baseType: !128, size: 16, offset: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3922, file: !3923, line: 63, baseType: !128, size: 16, offset: 48)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3915, file: !3916, line: 137, baseType: !1239, size: 64, offset: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3915, file: !3916, line: 139, baseType: !1239, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3915, file: !3916, line: 140, baseType: !3932, size: 768, offset: 384)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 768, elements: !2090)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3915, file: !3916, line: 141, baseType: !1239, size: 64, offset: 1152)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3915, file: !3916, line: 142, baseType: !1239, size: 64, offset: 1216)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3915, file: !3916, line: 143, baseType: !1239, size: 64, offset: 1280)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3915, file: !3916, line: 144, baseType: !1239, size: 64, offset: 1344)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3915, file: !3916, line: 145, baseType: !1239, size: 64, offset: 1408)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3915, file: !3916, line: 146, baseType: !3541, size: 128, offset: 1472)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3915, file: !3916, line: 147, baseType: !1239, size: 64, offset: 1600)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3915, file: !3916, line: 149, baseType: !7, size: 32, offset: 1664)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3915, file: !3916, line: 151, baseType: !7, size: 32, offset: 1696)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3915, file: !3916, line: 152, baseType: !7, size: 32, offset: 1728)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3915, file: !3916, line: 153, baseType: !127, size: 64, offset: 1792)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3915, file: !3916, line: 155, baseType: !3945, size: 64, offset: 1856)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!137, !3914, !3948, !2476}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3923, line: 114, size: 320, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3950, file: !3923, line: 116, baseType: !1222, size: 8)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3950, file: !3923, line: 117, baseType: !1222, size: 8, offset: 8)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3950, file: !3923, line: 118, baseType: !128, size: 16, offset: 16)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3950, file: !3923, line: 119, baseType: !146, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3950, file: !3923, line: 120, baseType: !3957, size: 256, offset: 64)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 256, elements: !2084)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3915, file: !3916, line: 158, baseType: !3959, size: 64, offset: 1920)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!137, !3914, !3962}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3915, file: !3916, line: 161, baseType: !3964, size: 64, offset: 1984)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3916, line: 534, size: 896, elements: !3966)
!3966 = !{!3967, !4034, !4038, !4042, !4046, !4047, !4051, !4052, !4053, !4054, !4055, !4056}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !3965, file: !3916, line: 535, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!137, !3914, !3971, !3971}
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3923, line: 450, size: 384, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3982, !3987}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3972, file: !3923, line: 451, baseType: !128, size: 16)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3972, file: !3923, line: 452, baseType: !1073, size: 16, offset: 16)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3972, file: !3923, line: 453, baseType: !128, size: 16, offset: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3972, file: !3923, line: 454, baseType: !3978, size: 32, offset: 48)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3923, line: 316, size: 32, elements: !3979)
!3979 = !{!3980, !3981}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3978, file: !3923, line: 317, baseType: !128, size: 16)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3978, file: !3923, line: 318, baseType: !128, size: 16, offset: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !3972, file: !3923, line: 455, baseType: !3983, size: 32, offset: 80)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3923, line: 306, size: 32, elements: !3984)
!3984 = !{!3985, !3986}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3983, file: !3923, line: 307, baseType: !128, size: 16)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3983, file: !3923, line: 308, baseType: !128, size: 16, offset: 16)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3972, file: !3923, line: 463, baseType: !3988, size: 256, offset: 128)
!3988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3972, file: !3923, line: 457, size: 256, elements: !3989)
!3989 = !{!3990, !4001, !4007, !4019, !4029}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !3988, file: !3923, line: 458, baseType: !3991, size: 80)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3923, line: 345, size: 80, elements: !3992)
!3992 = !{!3993, !3994}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3991, file: !3923, line: 346, baseType: !1073, size: 16)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3991, file: !3923, line: 347, baseType: !3995, size: 64, offset: 16)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3923, line: 333, size: 64, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !3995, file: !3923, line: 334, baseType: !128, size: 16)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !3995, file: !3923, line: 335, baseType: !128, size: 16, offset: 16)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !3995, file: !3923, line: 336, baseType: !128, size: 16, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !3995, file: !3923, line: 337, baseType: !128, size: 16, offset: 48)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !3988, file: !3923, line: 459, baseType: !4002, size: 96)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3923, line: 356, size: 96, elements: !4003)
!4003 = !{!4004, !4005, !4006}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4002, file: !3923, line: 357, baseType: !1073, size: 16)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4002, file: !3923, line: 358, baseType: !1073, size: 16, offset: 16)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4002, file: !3923, line: 359, baseType: !3995, size: 64, offset: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3988, file: !3923, line: 460, baseType: !4008, size: 256)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3923, line: 401, size: 256, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4008, file: !3923, line: 402, baseType: !128, size: 16)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4008, file: !3923, line: 403, baseType: !128, size: 16, offset: 16)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4008, file: !3923, line: 404, baseType: !1073, size: 16, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4008, file: !3923, line: 405, baseType: !1073, size: 16, offset: 48)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4008, file: !3923, line: 406, baseType: !128, size: 16, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4008, file: !3923, line: 408, baseType: !3995, size: 64, offset: 80)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4008, file: !3923, line: 410, baseType: !146, size: 32, offset: 160)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4008, file: !3923, line: 411, baseType: !4018, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3988, file: !3923, line: 461, baseType: !4020, size: 192)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4021, size: 192, elements: !157)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3923, line: 372, size: 96, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4021, file: !3923, line: 373, baseType: !128, size: 16)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4021, file: !3923, line: 374, baseType: !128, size: 16, offset: 16)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4021, file: !3923, line: 376, baseType: !1073, size: 16, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4021, file: !3923, line: 377, baseType: !1073, size: 16, offset: 48)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4021, file: !3923, line: 379, baseType: !128, size: 16, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4021, file: !3923, line: 380, baseType: !1073, size: 16, offset: 80)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !3988, file: !3923, line: 462, baseType: !4030, size: 32)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3923, line: 422, size: 32, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4030, file: !3923, line: 423, baseType: !128, size: 16)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4030, file: !3923, line: 424, baseType: !128, size: 16, offset: 16)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !3965, file: !3916, line: 537, baseType: !4035, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!137, !3914, !137}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !3965, file: !3916, line: 539, baseType: !4039, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!137, !3914, !137, !137}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !3965, file: !3916, line: 540, baseType: !4043, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !3914, !809}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !3965, file: !3916, line: 541, baseType: !4043, size: 64, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3965, file: !3916, line: 543, baseType: !4048, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !3964}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3965, file: !3916, line: 545, baseType: !127, size: 64, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3965, file: !3916, line: 547, baseType: !3541, size: 128, offset: 448)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3965, file: !3916, line: 549, baseType: !1042, size: 192, offset: 576)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !3965, file: !3916, line: 551, baseType: !137, size: 32, offset: 768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !3965, file: !3916, line: 552, baseType: !3971, size: 64, offset: 832)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !3965, file: !3916, line: 553, baseType: !4057, offset: 896)
!4057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, elements: !2185)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3915, file: !3916, line: 163, baseType: !4059, size: 64, offset: 2048)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3916, line: 24, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3915, file: !3916, line: 165, baseType: !7, size: 32, offset: 2112)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3915, file: !3916, line: 166, baseType: !3357, size: 320, offset: 2176)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3915, file: !3916, line: 168, baseType: !4064, size: 64, offset: 2496)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !157)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3915, file: !3916, line: 170, baseType: !4066, size: 64, offset: 2560)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3916, line: 170, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3915, file: !3916, line: 172, baseType: !4069, size: 64, offset: 2624)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3923, line: 90, size: 192, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4070, file: !3923, line: 91, baseType: !1314, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4070, file: !3923, line: 92, baseType: !1314, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4070, file: !3923, line: 93, baseType: !1314, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4070, file: !3923, line: 94, baseType: !1314, size: 32, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4070, file: !3923, line: 95, baseType: !1314, size: 32, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4070, file: !3923, line: 96, baseType: !1314, size: 32, offset: 160)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3915, file: !3916, line: 174, baseType: !3932, size: 768, offset: 2688)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3915, file: !3916, line: 175, baseType: !1239, size: 64, offset: 3456)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3915, file: !3916, line: 176, baseType: !1239, size: 64, offset: 3520)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3915, file: !3916, line: 177, baseType: !1239, size: 64, offset: 3584)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3915, file: !3916, line: 179, baseType: !4083, size: 64, offset: 3648)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!137, !3914}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3915, file: !3916, line: 180, baseType: !4087, size: 64, offset: 3712)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !3914}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3915, file: !3916, line: 181, baseType: !4091, size: 64, offset: 3776)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!137, !3914, !307}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3915, file: !3916, line: 182, baseType: !4095, size: 64, offset: 3840)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!137, !3914, !7, !7, !137}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3915, file: !3916, line: 184, baseType: !4099, size: 64, offset: 3904)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3916, line: 337, size: 576, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4172, !4173}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4100, file: !3916, line: 339, baseType: !127, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4100, file: !3916, line: 341, baseType: !137, size: 32, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4100, file: !3916, line: 342, baseType: !173, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4100, file: !3916, line: 344, baseType: !3914, size: 64, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4100, file: !3916, line: 345, baseType: !4107, size: 64, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3916, line: 302, size: 960, elements: !4109)
!4109 = !{!4110, !4111, !4115, !4126, !4130, !4134, !4161, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4108, file: !3916, line: 304, baseType: !127, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4108, file: !3916, line: 306, baseType: !4112, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !4099, !7, !7, !137}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4108, file: !3916, line: 307, baseType: !4116, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !4099, !4119, !7}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3916, line: 32, size: 64, elements: !4122)
!4122 = !{!4123, !4124, !4125}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4121, file: !3916, line: 33, baseType: !128, size: 16)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4121, file: !3916, line: 34, baseType: !128, size: 16, offset: 16)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4121, file: !3916, line: 35, baseType: !1314, size: 32, offset: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4108, file: !3916, line: 309, baseType: !4127, size: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!441, !4099, !7, !7, !137}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4108, file: !3916, line: 310, baseType: !4131, size: 64, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!441, !4107, !3914}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4108, file: !3916, line: 311, baseType: !4135, size: 64, offset: 320)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!137, !4107, !3914, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4140)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3250, line: 342, size: 1600, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4149, !4151, !4152, !4153, !4154, !4155, !4156, !4158, !4159, !4160}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4140, file: !3250, line: 344, baseType: !3269, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4140, file: !3250, line: 346, baseType: !128, size: 16, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4140, file: !3250, line: 347, baseType: !128, size: 16, offset: 80)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4140, file: !3250, line: 348, baseType: !128, size: 16, offset: 96)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4140, file: !3250, line: 349, baseType: !128, size: 16, offset: 112)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4140, file: !3250, line: 351, baseType: !4148, size: 64, offset: 128)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 64, elements: !1240)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4140, file: !3250, line: 352, baseType: !4150, size: 768, offset: 192)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 768, elements: !2090)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4140, file: !3250, line: 353, baseType: !4148, size: 64, offset: 960)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4140, file: !3250, line: 354, baseType: !4148, size: 64, offset: 1024)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4140, file: !3250, line: 355, baseType: !4148, size: 64, offset: 1088)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4140, file: !3250, line: 356, baseType: !4148, size: 64, offset: 1152)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4140, file: !3250, line: 357, baseType: !4148, size: 64, offset: 1216)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4140, file: !3250, line: 358, baseType: !4157, size: 128, offset: 1280)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 128, elements: !157)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4140, file: !3250, line: 359, baseType: !4148, size: 64, offset: 1408)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4140, file: !3250, line: 360, baseType: !4148, size: 64, offset: 1472)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4140, file: !3250, line: 362, baseType: !3269, size: 64, offset: 1536)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4108, file: !3916, line: 312, baseType: !4162, size: 64, offset: 384)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !4099}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4108, file: !3916, line: 313, baseType: !4162, size: 64, offset: 448)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4108, file: !3916, line: 315, baseType: !441, size: 8, offset: 512)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4108, file: !3916, line: 316, baseType: !137, size: 32, offset: 544)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4108, file: !3916, line: 317, baseType: !173, size: 64, offset: 576)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4108, file: !3916, line: 319, baseType: !4138, size: 64, offset: 640)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4108, file: !3916, line: 321, baseType: !176, size: 128, offset: 704)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4108, file: !3916, line: 322, baseType: !176, size: 128, offset: 832)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4100, file: !3916, line: 347, baseType: !176, size: 128, offset: 320)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4100, file: !3916, line: 348, baseType: !176, size: 128, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3915, file: !3916, line: 186, baseType: !189, offset: 3968)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3915, file: !3916, line: 187, baseType: !1042, size: 192, offset: 3968)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3915, file: !3916, line: 189, baseType: !7, size: 32, offset: 4160)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3915, file: !3916, line: 190, baseType: !441, size: 8, offset: 4192)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3915, file: !3916, line: 192, baseType: !166, size: 5568, offset: 4224)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3915, file: !3916, line: 194, baseType: !176, size: 128, offset: 9792)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3915, file: !3916, line: 195, baseType: !176, size: 128, offset: 9920)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3915, file: !3916, line: 197, baseType: !7, size: 32, offset: 10048)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3915, file: !3916, line: 198, baseType: !7, size: 32, offset: 10080)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3915, file: !3916, line: 199, baseType: !4184, size: 64, offset: 10112)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3915, file: !3916, line: 201, baseType: !441, size: 8, offset: 10176)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3915, file: !3916, line: 203, baseType: !4187, size: 192, offset: 10240)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 192, elements: !231)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3911, file: !3, line: 108, baseType: !3698, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "urbinfo", scope: !3911, file: !3, line: 109, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4236}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4191, file: !6, line: 1563, baseType: !3157, size: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4191, file: !6, line: 1564, baseType: !137, size: 32, offset: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4191, file: !6, line: 1565, baseType: !127, size: 64, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4191, file: !6, line: 1566, baseType: !698, size: 32, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4191, file: !6, line: 1567, baseType: !698, size: 32, offset: 160)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4191, file: !6, line: 1570, baseType: !176, size: 128, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4191, file: !6, line: 1572, baseType: !176, size: 128, offset: 320)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4191, file: !6, line: 1573, baseType: !4201, size: 64, offset: 448)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4203)
!4203 = !{!4204, !4205, !4206, !4207, !4208}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4202, file: !6, line: 1361, baseType: !176, size: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4202, file: !6, line: 1362, baseType: !1350, size: 128, offset: 128)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4202, file: !6, line: 1363, baseType: !189, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4202, file: !6, line: 1364, baseType: !698, size: 32, offset: 256)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4202, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4191, file: !6, line: 1574, baseType: !133, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4191, file: !6, line: 1575, baseType: !3720, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4191, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4191, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4191, file: !6, line: 1578, baseType: !137, size: 32, offset: 704)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4191, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4191, file: !6, line: 1580, baseType: !127, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4191, file: !6, line: 1581, baseType: !869, size: 64, offset: 832)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4191, file: !6, line: 1582, baseType: !4218, size: 64, offset: 896)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4191, file: !6, line: 1583, baseType: !137, size: 32, offset: 960)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4191, file: !6, line: 1584, baseType: !137, size: 32, offset: 992)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4191, file: !6, line: 1585, baseType: !144, size: 32, offset: 1024)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4191, file: !6, line: 1586, baseType: !144, size: 32, offset: 1056)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4191, file: !6, line: 1587, baseType: !3584, size: 64, offset: 1088)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4191, file: !6, line: 1588, baseType: !869, size: 64, offset: 1152)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4191, file: !6, line: 1589, baseType: !137, size: 32, offset: 1216)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4191, file: !6, line: 1590, baseType: !137, size: 32, offset: 1248)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4191, file: !6, line: 1591, baseType: !137, size: 32, offset: 1280)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4191, file: !6, line: 1593, baseType: !137, size: 32, offset: 1312)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4191, file: !6, line: 1594, baseType: !127, size: 64, offset: 1344)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4191, file: !6, line: 1595, baseType: !4232, size: 64, offset: 1408)
!4232 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4233)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !4190}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4191, file: !6, line: 1596, baseType: !4237, offset: 1472)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4238, elements: !2185)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4238, file: !6, line: 1352, baseType: !7, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4238, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4238, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4238, file: !6, line: 1355, baseType: !137, size: 32, offset: 96)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "buf_dma", scope: !3911, file: !3, line: 110, baseType: !869, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3911, file: !3, line: 111, baseType: !3584, size: 64, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "usbpath", scope: !3911, file: !3, line: 113, baseType: !4247, size: 512, offset: 320)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 512, elements: !235)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "openCount", scope: !3911, file: !3, line: 114, baseType: !137, size: 32, offset: 832)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3911, file: !3, line: 117, baseType: !144, size: 32, offset: 864)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "min_X", scope: !3911, file: !3, line: 118, baseType: !144, size: 32, offset: 896)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "max_X", scope: !3911, file: !3, line: 119, baseType: !144, size: 32, offset: 928)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "min_Y", scope: !3911, file: !3, line: 120, baseType: !144, size: 32, offset: 960)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "max_Y", scope: !3911, file: !3, line: 121, baseType: !144, size: 32, offset: 992)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "mintilt_X", scope: !3911, file: !3, line: 122, baseType: !4255, size: 8, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !145, line: 16, baseType: !4256)
!4256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !129, line: 20, baseType: !4257)
!4257 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "maxtilt_X", scope: !3911, file: !3, line: 123, baseType: !4255, size: 8, offset: 1032)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "mintilt_Y", scope: !3911, file: !3, line: 124, baseType: !4255, size: 8, offset: 1040)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "maxtilt_Y", scope: !3911, file: !3, line: 125, baseType: !4255, size: 8, offset: 1048)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "maxpressure", scope: !3911, file: !3, line: 126, baseType: !144, size: 32, offset: 1056)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "minpressure", scope: !3911, file: !3, line: 127, baseType: !144, size: 32, offset: 1088)
!4263 = !DILocation(line: 836, column: 27, scope: !3904)
!4264 = !DILocalVariable(name: "input_dev", scope: !3904, file: !3, line: 837, type: !3914)
!4265 = !DILocation(line: 837, column: 27, scope: !3904)
!4266 = !DILocalVariable(name: "hid_desc", scope: !3904, file: !3, line: 838, type: !4267)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_descriptor", file: !3, line: 135, size: 72, elements: !4269)
!4269 = !{!4270, !4275, !4276, !4277, !4278, !4279}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4268, file: !3, line: 137, baseType: !4271, size: 16)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_descriptor_header", file: !88, line: 280, size: 16, elements: !4272)
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4271, file: !88, line: 281, baseType: !1222, size: 8)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4271, file: !88, line: 282, baseType: !1222, size: 8, offset: 8)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "bcdHID", scope: !4268, file: !3, line: 138, baseType: !131, size: 16, offset: 16)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "bCountryCode", scope: !4268, file: !3, line: 139, baseType: !1221, size: 8, offset: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDescriptors", scope: !4268, file: !3, line: 140, baseType: !1221, size: 8, offset: 40)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4268, file: !3, line: 141, baseType: !1221, size: 8, offset: 48)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "wDescriptorLength", scope: !4268, file: !3, line: 142, baseType: !131, size: 16, offset: 56)
!4280 = !DILocation(line: 838, column: 27, scope: !3904)
!4281 = !DILocalVariable(name: "report", scope: !3904, file: !3, line: 839, type: !230)
!4282 = !DILocation(line: 839, column: 27, scope: !3904)
!4283 = !DILocalVariable(name: "result", scope: !3904, file: !3, line: 840, type: !137)
!4284 = !DILocation(line: 840, column: 26, scope: !3904)
!4285 = !DILocalVariable(name: "retry", scope: !3904, file: !3, line: 840, type: !137)
!4286 = !DILocation(line: 840, column: 38, scope: !3904)
!4287 = !DILocalVariable(name: "error", scope: !3904, file: !3, line: 841, type: !137)
!4288 = !DILocation(line: 841, column: 8, scope: !3904)
!4289 = !DILocalVariable(name: "endpoint", scope: !3904, file: !3, line: 842, type: !4290)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!4291 = !DILocation(line: 842, column: 34, scope: !3904)
!4292 = !DILocalVariable(name: "udev", scope: !3904, file: !3, line: 843, type: !133)
!4293 = !DILocation(line: 843, column: 21, scope: !3904)
!4294 = !DILocation(line: 843, column: 48, scope: !3904)
!4295 = !DILocation(line: 843, column: 28, scope: !3904)
!4296 = !DILocation(line: 846, column: 9, scope: !3904)
!4297 = !DILocation(line: 846, column: 7, scope: !3904)
!4298 = !DILocation(line: 847, column: 14, scope: !3904)
!4299 = !DILocation(line: 847, column: 12, scope: !3904)
!4300 = !DILocation(line: 848, column: 7, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 848, column: 6)
!4302 = !DILocation(line: 848, column: 12, scope: !4301)
!4303 = !DILocation(line: 848, column: 16, scope: !4301)
!4304 = !DILocation(line: 848, column: 6, scope: !3904)
!4305 = !DILocation(line: 849, column: 3, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 848, column: 27)
!4307 = !DILocation(line: 850, column: 9, scope: !4306)
!4308 = !DILocation(line: 851, column: 3, scope: !4306)
!4309 = !DILocation(line: 855, column: 22, scope: !3904)
!4310 = !DILocation(line: 855, column: 2, scope: !3904)
!4311 = !DILocation(line: 855, column: 8, scope: !3904)
!4312 = !DILocation(line: 855, column: 20, scope: !3904)
!4313 = !DILocation(line: 858, column: 15, scope: !3904)
!4314 = !DILocation(line: 858, column: 2, scope: !3904)
!4315 = !DILocation(line: 858, column: 8, scope: !3904)
!4316 = !DILocation(line: 858, column: 13, scope: !3904)
!4317 = !DILocation(line: 861, column: 36, scope: !3904)
!4318 = !DILocation(line: 862, column: 21, scope: !3904)
!4319 = !DILocation(line: 862, column: 27, scope: !3904)
!4320 = !DILocation(line: 861, column: 17, scope: !3904)
!4321 = !DILocation(line: 861, column: 2, scope: !3904)
!4322 = !DILocation(line: 861, column: 8, scope: !3904)
!4323 = !DILocation(line: 861, column: 15, scope: !3904)
!4324 = !DILocation(line: 863, column: 7, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 863, column: 6)
!4326 = !DILocation(line: 863, column: 13, scope: !4325)
!4327 = !DILocation(line: 863, column: 6, scope: !3904)
!4328 = !DILocation(line: 864, column: 3, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 863, column: 21)
!4330 = !DILocation(line: 865, column: 9, scope: !4329)
!4331 = !DILocation(line: 866, column: 3, scope: !4329)
!4332 = !DILocation(line: 870, column: 18, scope: !3904)
!4333 = !DILocation(line: 870, column: 2, scope: !3904)
!4334 = !DILocation(line: 870, column: 8, scope: !3904)
!4335 = !DILocation(line: 870, column: 16, scope: !3904)
!4336 = !DILocation(line: 871, column: 7, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 871, column: 6)
!4338 = !DILocation(line: 871, column: 13, scope: !4337)
!4339 = !DILocation(line: 871, column: 6, scope: !3904)
!4340 = !DILocation(line: 872, column: 3, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 871, column: 22)
!4342 = !DILocation(line: 873, column: 9, scope: !4341)
!4343 = !DILocation(line: 874, column: 3, scope: !4341)
!4344 = !DILocation(line: 878, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 878, column: 6)
!4346 = !DILocation(line: 878, column: 20, scope: !4345)
!4347 = !DILocation(line: 878, column: 36, scope: !4345)
!4348 = !DILocation(line: 878, column: 41, scope: !4345)
!4349 = !DILocation(line: 878, column: 55, scope: !4345)
!4350 = !DILocation(line: 878, column: 6, scope: !3904)
!4351 = !DILocation(line: 879, column: 3, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 878, column: 60)
!4353 = !DILocation(line: 881, column: 9, scope: !4352)
!4354 = !DILocation(line: 882, column: 3, scope: !4352)
!4355 = !DILocation(line: 885, column: 14, scope: !3904)
!4356 = !DILocation(line: 885, column: 28, scope: !3904)
!4357 = !DILocation(line: 885, column: 44, scope: !3904)
!4358 = !DILocation(line: 885, column: 56, scope: !3904)
!4359 = !DILocation(line: 885, column: 11, scope: !3904)
!4360 = !DILocation(line: 892, column: 28, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 892, column: 6)
!4362 = !DILocation(line: 892, column: 6, scope: !4361)
!4363 = !DILocation(line: 892, column: 6, scope: !3904)
!4364 = !DILocation(line: 893, column: 3, scope: !4361)
!4365 = !DILocation(line: 902, column: 6, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 902, column: 6)
!4367 = !DILocation(line: 903, column: 38, scope: !4366)
!4368 = !DILocation(line: 902, column: 6, scope: !3904)
!4369 = !DILocation(line: 904, column: 3, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 903, column: 44)
!4371 = !DILocation(line: 906, column: 9, scope: !4370)
!4372 = !DILocation(line: 907, column: 3, scope: !4370)
!4373 = !DILocation(line: 914, column: 19, scope: !3904)
!4374 = !DILocation(line: 914, column: 11, scope: !3904)
!4375 = !DILocation(line: 914, column: 9, scope: !3904)
!4376 = !DILocation(line: 915, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 915, column: 6)
!4378 = !DILocation(line: 915, column: 6, scope: !3904)
!4379 = !DILocation(line: 916, column: 3, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 915, column: 15)
!4381 = !DILocation(line: 917, column: 9, scope: !4380)
!4382 = !DILocation(line: 918, column: 3, scope: !4380)
!4383 = !DILocation(line: 922, column: 13, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 922, column: 2)
!4385 = !DILocation(line: 922, column: 7, scope: !4384)
!4386 = !DILocation(line: 922, column: 18, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 922, column: 2)
!4388 = !DILocation(line: 922, column: 24, scope: !4387)
!4389 = !DILocation(line: 922, column: 2, scope: !4384)
!4390 = !DILocation(line: 923, column: 28, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 922, column: 38)
!4392 = !DILocation(line: 924, column: 7, scope: !4391)
!4393 = !DILocation(line: 929, column: 7, scope: !4391)
!4394 = !DILocation(line: 930, column: 7, scope: !4391)
!4395 = !DILocation(line: 923, column: 12, scope: !4391)
!4396 = !DILocation(line: 923, column: 10, scope: !4391)
!4397 = !DILocation(line: 934, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 934, column: 7)
!4399 = !DILocation(line: 934, column: 17, scope: !4398)
!4400 = !DILocation(line: 934, column: 14, scope: !4398)
!4401 = !DILocation(line: 934, column: 7, scope: !4391)
!4402 = !DILocation(line: 935, column: 32, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 934, column: 59)
!4404 = !DILocation(line: 935, column: 38, scope: !4403)
!4405 = !DILocation(line: 935, column: 46, scope: !4403)
!4406 = !DILocation(line: 935, column: 4, scope: !4403)
!4407 = !DILocation(line: 936, column: 4, scope: !4403)
!4408 = !DILocation(line: 938, column: 2, scope: !4391)
!4409 = !DILocation(line: 922, column: 34, scope: !4387)
!4410 = !DILocation(line: 922, column: 2, scope: !4387)
!4411 = distinct !{!4411, !4389, !4412}
!4412 = !DILocation(line: 938, column: 2, scope: !4384)
!4413 = !DILocation(line: 940, column: 8, scope: !3904)
!4414 = !DILocation(line: 940, column: 2, scope: !3904)
!4415 = !DILocation(line: 943, column: 6, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 943, column: 6)
!4417 = !DILocation(line: 943, column: 16, scope: !4416)
!4418 = !DILocation(line: 943, column: 13, scope: !4416)
!4419 = !DILocation(line: 943, column: 6, scope: !3904)
!4420 = !DILocation(line: 944, column: 3, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 943, column: 58)
!4422 = !DILocation(line: 947, column: 9, scope: !4421)
!4423 = !DILocation(line: 948, column: 3, scope: !4421)
!4424 = !DILocation(line: 952, column: 16, scope: !3904)
!4425 = !DILocation(line: 952, column: 22, scope: !3904)
!4426 = !DILocation(line: 952, column: 28, scope: !3904)
!4427 = !DILocation(line: 952, column: 2, scope: !3904)
!4428 = !DILocation(line: 953, column: 10, scope: !3904)
!4429 = !DILocation(line: 953, column: 16, scope: !3904)
!4430 = !DILocation(line: 953, column: 2, scope: !3904)
!4431 = !DILocation(line: 956, column: 2, scope: !3904)
!4432 = !DILocation(line: 956, column: 13, scope: !3904)
!4433 = !DILocation(line: 956, column: 18, scope: !3904)
!4434 = !DILocation(line: 957, column: 2, scope: !3904)
!4435 = !DILocation(line: 957, column: 13, scope: !3904)
!4436 = !DILocation(line: 957, column: 19, scope: !3904)
!4437 = !DILocation(line: 960, column: 2, scope: !3904)
!4438 = !DILocation(line: 960, column: 13, scope: !3904)
!4439 = !DILocation(line: 960, column: 18, scope: !3904)
!4440 = !DILocation(line: 961, column: 20, scope: !3904)
!4441 = !DILocation(line: 961, column: 26, scope: !3904)
!4442 = !DILocation(line: 961, column: 2, scope: !3904)
!4443 = !DILocation(line: 961, column: 13, scope: !3904)
!4444 = !DILocation(line: 961, column: 18, scope: !3904)
!4445 = !DILocation(line: 963, column: 20, scope: !3904)
!4446 = !DILocation(line: 963, column: 31, scope: !3904)
!4447 = !DILocation(line: 963, column: 2, scope: !3904)
!4448 = !DILocation(line: 966, column: 18, scope: !3904)
!4449 = !DILocation(line: 966, column: 2, scope: !3904)
!4450 = !DILocation(line: 969, column: 18, scope: !3904)
!4451 = !DILocation(line: 969, column: 25, scope: !3904)
!4452 = !DILocation(line: 969, column: 36, scope: !3904)
!4453 = !DILocation(line: 969, column: 2, scope: !3904)
!4454 = !DILocation(line: 970, column: 27, scope: !3904)
!4455 = !DILocation(line: 970, column: 41, scope: !3904)
!4456 = !DILocation(line: 970, column: 2, scope: !3904)
!4457 = !DILocation(line: 970, column: 13, scope: !3904)
!4458 = !DILocation(line: 970, column: 17, scope: !3904)
!4459 = !DILocation(line: 970, column: 24, scope: !3904)
!4460 = !DILocation(line: 973, column: 19, scope: !3904)
!4461 = !DILocation(line: 973, column: 25, scope: !3904)
!4462 = !DILocation(line: 974, column: 5, scope: !3904)
!4463 = !DILocation(line: 975, column: 5, scope: !3904)
!4464 = !DILocation(line: 977, column: 5, scope: !3904)
!4465 = !DILocation(line: 977, column: 11, scope: !3904)
!4466 = !DILocation(line: 980, column: 5, scope: !3904)
!4467 = !DILocation(line: 981, column: 5, scope: !3904)
!4468 = !DILocation(line: 981, column: 15, scope: !3904)
!4469 = !DILocation(line: 973, column: 2, scope: !3904)
!4470 = !DILocation(line: 983, column: 32, scope: !3904)
!4471 = !DILocation(line: 983, column: 38, scope: !3904)
!4472 = !DILocation(line: 983, column: 2, scope: !3904)
!4473 = !DILocation(line: 983, column: 8, scope: !3904)
!4474 = !DILocation(line: 983, column: 17, scope: !3904)
!4475 = !DILocation(line: 983, column: 30, scope: !3904)
!4476 = !DILocation(line: 984, column: 2, scope: !3904)
!4477 = !DILocation(line: 984, column: 8, scope: !3904)
!4478 = !DILocation(line: 984, column: 17, scope: !3904)
!4479 = !DILocation(line: 984, column: 32, scope: !3904)
!4480 = !DILocation(line: 987, column: 19, scope: !3904)
!4481 = !DILocation(line: 987, column: 33, scope: !3904)
!4482 = !DILocation(line: 987, column: 2, scope: !3904)
!4483 = !DILocation(line: 990, column: 32, scope: !3904)
!4484 = !DILocation(line: 990, column: 10, scope: !3904)
!4485 = !DILocation(line: 990, column: 8, scope: !3904)
!4486 = !DILocation(line: 991, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 991, column: 6)
!4488 = !DILocation(line: 991, column: 6, scope: !3904)
!4489 = !DILocation(line: 992, column: 3, scope: !4487)
!4490 = !DILocation(line: 994, column: 2, scope: !3904)
!4491 = !DILabel(scope: !3904, name: "err_free_urb", file: !3, line: 996)
!4492 = !DILocation(line: 996, column: 2, scope: !3904)
!4493 = !DILocation(line: 997, column: 15, scope: !3904)
!4494 = !DILocation(line: 997, column: 21, scope: !3904)
!4495 = !DILocation(line: 997, column: 2, scope: !3904)
!4496 = !DILabel(scope: !3904, name: "err_free_buf", file: !3, line: 998)
!4497 = !DILocation(line: 998, column: 2, scope: !3904)
!4498 = !DILocation(line: 999, column: 20, scope: !3904)
!4499 = !DILocation(line: 1000, column: 6, scope: !3904)
!4500 = !DILocation(line: 1000, column: 12, scope: !3904)
!4501 = !DILocation(line: 1000, column: 20, scope: !3904)
!4502 = !DILocation(line: 1000, column: 26, scope: !3904)
!4503 = !DILocation(line: 999, column: 2, scope: !3904)
!4504 = !DILabel(scope: !3904, name: "err_free_devs", file: !3, line: 1001)
!4505 = !DILocation(line: 1001, column: 2, scope: !3904)
!4506 = !DILocation(line: 1002, column: 20, scope: !3904)
!4507 = !DILocation(line: 1002, column: 2, scope: !3904)
!4508 = !DILocation(line: 1003, column: 8, scope: !3904)
!4509 = !DILocation(line: 1003, column: 2, scope: !3904)
!4510 = !DILocation(line: 1004, column: 9, scope: !3904)
!4511 = !DILocation(line: 1004, column: 2, scope: !3904)
!4512 = !DILocation(line: 1005, column: 1, scope: !3904)
!4513 = distinct !DISubprogram(name: "gtco_disconnect", scope: !3, file: !3, line: 1012, type: !3857, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4514 = !DILocalVariable(name: "interface", arg: 1, scope: !4513, file: !3, line: 1012, type: !3698)
!4515 = !DILocation(line: 1012, column: 51, scope: !4513)
!4516 = !DILocalVariable(name: "gtco", scope: !4513, file: !3, line: 1015, type: !3910)
!4517 = !DILocation(line: 1015, column: 15, scope: !4513)
!4518 = !DILocation(line: 1015, column: 39, scope: !4513)
!4519 = !DILocation(line: 1015, column: 22, scope: !4513)
!4520 = !DILocalVariable(name: "udev", scope: !4513, file: !3, line: 1016, type: !133)
!4521 = !DILocation(line: 1016, column: 21, scope: !4513)
!4522 = !DILocation(line: 1016, column: 48, scope: !4513)
!4523 = !DILocation(line: 1016, column: 28, scope: !4513)
!4524 = !DILocation(line: 1019, column: 6, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 1019, column: 6)
!4526 = !DILocation(line: 1019, column: 6, scope: !4513)
!4527 = !DILocation(line: 1020, column: 27, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 1019, column: 12)
!4529 = !DILocation(line: 1020, column: 33, scope: !4528)
!4530 = !DILocation(line: 1020, column: 3, scope: !4528)
!4531 = !DILocation(line: 1021, column: 16, scope: !4528)
!4532 = !DILocation(line: 1021, column: 22, scope: !4528)
!4533 = !DILocation(line: 1021, column: 3, scope: !4528)
!4534 = !DILocation(line: 1022, column: 16, scope: !4528)
!4535 = !DILocation(line: 1022, column: 22, scope: !4528)
!4536 = !DILocation(line: 1022, column: 3, scope: !4528)
!4537 = !DILocation(line: 1023, column: 21, scope: !4528)
!4538 = !DILocation(line: 1024, column: 7, scope: !4528)
!4539 = !DILocation(line: 1024, column: 13, scope: !4528)
!4540 = !DILocation(line: 1024, column: 21, scope: !4528)
!4541 = !DILocation(line: 1024, column: 27, scope: !4528)
!4542 = !DILocation(line: 1023, column: 3, scope: !4528)
!4543 = !DILocation(line: 1025, column: 9, scope: !4528)
!4544 = !DILocation(line: 1025, column: 3, scope: !4528)
!4545 = !DILocation(line: 1026, column: 2, scope: !4528)
!4546 = !DILocation(line: 1028, column: 2, scope: !4513)
!4547 = !DILocation(line: 1029, column: 1, scope: !4513)
!4548 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4549, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!133, !3698}
!4551 = !DILocalVariable(name: "intf", arg: 1, scope: !4548, file: !6, line: 715, type: !3698)
!4552 = !DILocation(line: 715, column: 76, scope: !4548)
!4553 = !DILocalVariable(name: "__mptr", scope: !4554, file: !6, line: 717, type: !127)
!4554 = distinct !DILexicalBlock(scope: !4548, file: !6, line: 717, column: 9)
!4555 = !DILocation(line: 717, column: 9, scope: !4554)
!4556 = !DILocation(line: 717, column: 9, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4554, file: !6, line: 717, column: 9)
!4558 = !DILocation(line: 717, column: 2, scope: !4548)
!4559 = distinct !DISubprogram(name: "kzalloc", scope: !114, file: !114, line: 662, type: !4560, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!127, !276, !124}
!4562 = !DILocalVariable(name: "s", arg: 1, scope: !4563, file: !114, line: 445, type: !884)
!4563 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !114, file: !114, line: 445, type: !4564, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!127, !884, !124, !276}
!4566 = !DILocation(line: 445, column: 72, scope: !4563, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 552, column: 10, scope: !4568, inlinedAt: !4571)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !114, line: 540, column: 34)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !114, line: 540, column: 6)
!4570 = distinct !DISubprogram(name: "kmalloc", scope: !114, file: !114, line: 538, type: !4560, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4571 = distinct !DILocation(line: 664, column: 9, scope: !4559)
!4572 = !DILocalVariable(name: "flags", arg: 2, scope: !4563, file: !114, line: 446, type: !124)
!4573 = !DILocation(line: 446, column: 9, scope: !4563, inlinedAt: !4567)
!4574 = !DILocalVariable(name: "size", arg: 3, scope: !4563, file: !114, line: 446, type: !276)
!4575 = !DILocation(line: 446, column: 23, scope: !4563, inlinedAt: !4567)
!4576 = !DILocalVariable(name: "ret", scope: !4563, file: !114, line: 448, type: !127)
!4577 = !DILocation(line: 448, column: 8, scope: !4563, inlinedAt: !4567)
!4578 = !DILocalVariable(name: "flags", arg: 1, scope: !4579, file: !114, line: 318, type: !124)
!4579 = distinct !DISubprogram(name: "kmalloc_type", scope: !114, file: !114, line: 318, type: !4580, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!113, !124}
!4582 = !DILocation(line: 318, column: 67, scope: !4579, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 553, column: 20, scope: !4568, inlinedAt: !4571)
!4584 = !DILocalVariable(name: "size", arg: 1, scope: !4585, file: !114, line: 346, type: !276)
!4585 = distinct !DISubprogram(name: "kmalloc_index", scope: !114, file: !114, line: 346, type: !4586, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!7, !276}
!4588 = !DILocation(line: 346, column: 58, scope: !4585, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 547, column: 11, scope: !4568, inlinedAt: !4571)
!4590 = !DILocalVariable(name: "size", arg: 1, scope: !4591, file: !114, line: 472, type: !276)
!4591 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !114, file: !114, line: 472, type: !4592, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!127, !276, !124, !7}
!4594 = !DILocation(line: 472, column: 28, scope: !4591, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 481, column: 9, scope: !4596, inlinedAt: !4597)
!4596 = distinct !DISubprogram(name: "kmalloc_large", scope: !114, file: !114, line: 478, type: !4560, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4597 = distinct !DILocation(line: 545, column: 11, scope: !4598, inlinedAt: !4571)
!4598 = distinct !DILexicalBlock(scope: !4568, file: !114, line: 544, column: 7)
!4599 = !DILocalVariable(name: "flags", arg: 2, scope: !4591, file: !114, line: 472, type: !124)
!4600 = !DILocation(line: 472, column: 40, scope: !4591, inlinedAt: !4595)
!4601 = !DILocalVariable(name: "order", arg: 3, scope: !4591, file: !114, line: 472, type: !7)
!4602 = !DILocation(line: 472, column: 60, scope: !4591, inlinedAt: !4595)
!4603 = !DILocalVariable(name: "size", arg: 1, scope: !4596, file: !114, line: 478, type: !276)
!4604 = !DILocation(line: 478, column: 51, scope: !4596, inlinedAt: !4597)
!4605 = !DILocalVariable(name: "flags", arg: 2, scope: !4596, file: !114, line: 478, type: !124)
!4606 = !DILocation(line: 478, column: 63, scope: !4596, inlinedAt: !4597)
!4607 = !DILocalVariable(name: "order", scope: !4596, file: !114, line: 480, type: !7)
!4608 = !DILocation(line: 480, column: 15, scope: !4596, inlinedAt: !4597)
!4609 = !DILocalVariable(name: "size", arg: 1, scope: !4570, file: !114, line: 538, type: !276)
!4610 = !DILocation(line: 538, column: 45, scope: !4570, inlinedAt: !4571)
!4611 = !DILocalVariable(name: "flags", arg: 2, scope: !4570, file: !114, line: 538, type: !124)
!4612 = !DILocation(line: 538, column: 57, scope: !4570, inlinedAt: !4571)
!4613 = !DILocalVariable(name: "index", scope: !4568, file: !114, line: 542, type: !7)
!4614 = !DILocation(line: 542, column: 16, scope: !4568, inlinedAt: !4571)
!4615 = !DILocalVariable(name: "size", arg: 1, scope: !4559, file: !114, line: 662, type: !276)
!4616 = !DILocation(line: 662, column: 36, scope: !4559)
!4617 = !DILocalVariable(name: "flags", arg: 2, scope: !4559, file: !114, line: 662, type: !124)
!4618 = !DILocation(line: 662, column: 48, scope: !4559)
!4619 = !DILocation(line: 664, column: 17, scope: !4559)
!4620 = !DILocation(line: 664, column: 23, scope: !4559)
!4621 = !DILocation(line: 664, column: 29, scope: !4559)
!4622 = !DILocation(line: 540, column: 27, scope: !4569, inlinedAt: !4571)
!4623 = !DILocation(line: 540, column: 6, scope: !4569, inlinedAt: !4571)
!4624 = !DILocation(line: 540, column: 6, scope: !4570, inlinedAt: !4571)
!4625 = !DILocation(line: 544, column: 7, scope: !4598, inlinedAt: !4571)
!4626 = !DILocation(line: 544, column: 12, scope: !4598, inlinedAt: !4571)
!4627 = !DILocation(line: 544, column: 7, scope: !4568, inlinedAt: !4571)
!4628 = !DILocation(line: 545, column: 25, scope: !4598, inlinedAt: !4571)
!4629 = !DILocation(line: 545, column: 31, scope: !4598, inlinedAt: !4571)
!4630 = !DILocation(line: 480, column: 33, scope: !4596, inlinedAt: !4597)
!4631 = !DILocation(line: 480, column: 23, scope: !4596, inlinedAt: !4597)
!4632 = !DILocation(line: 481, column: 29, scope: !4596, inlinedAt: !4597)
!4633 = !DILocation(line: 481, column: 35, scope: !4596, inlinedAt: !4597)
!4634 = !DILocation(line: 481, column: 42, scope: !4596, inlinedAt: !4597)
!4635 = !DILocation(line: 474, column: 23, scope: !4591, inlinedAt: !4595)
!4636 = !DILocation(line: 474, column: 29, scope: !4591, inlinedAt: !4595)
!4637 = !DILocation(line: 474, column: 36, scope: !4591, inlinedAt: !4595)
!4638 = !DILocation(line: 474, column: 9, scope: !4591, inlinedAt: !4595)
!4639 = !DILocation(line: 545, column: 4, scope: !4598, inlinedAt: !4571)
!4640 = !DILocation(line: 547, column: 25, scope: !4568, inlinedAt: !4571)
!4641 = !DILocation(line: 348, column: 7, scope: !4642, inlinedAt: !4589)
!4642 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 348, column: 6)
!4643 = !DILocation(line: 348, column: 6, scope: !4585, inlinedAt: !4589)
!4644 = !DILocation(line: 349, column: 3, scope: !4642, inlinedAt: !4589)
!4645 = !DILocation(line: 351, column: 6, scope: !4646, inlinedAt: !4589)
!4646 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 351, column: 6)
!4647 = !DILocation(line: 351, column: 11, scope: !4646, inlinedAt: !4589)
!4648 = !DILocation(line: 351, column: 6, scope: !4585, inlinedAt: !4589)
!4649 = !DILocation(line: 352, column: 3, scope: !4646, inlinedAt: !4589)
!4650 = !DILocation(line: 354, column: 32, scope: !4651, inlinedAt: !4589)
!4651 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 354, column: 6)
!4652 = !DILocation(line: 354, column: 37, scope: !4651, inlinedAt: !4589)
!4653 = !DILocation(line: 354, column: 42, scope: !4651, inlinedAt: !4589)
!4654 = !DILocation(line: 354, column: 45, scope: !4651, inlinedAt: !4589)
!4655 = !DILocation(line: 354, column: 50, scope: !4651, inlinedAt: !4589)
!4656 = !DILocation(line: 354, column: 6, scope: !4585, inlinedAt: !4589)
!4657 = !DILocation(line: 355, column: 3, scope: !4651, inlinedAt: !4589)
!4658 = !DILocation(line: 356, column: 32, scope: !4659, inlinedAt: !4589)
!4659 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 356, column: 6)
!4660 = !DILocation(line: 356, column: 37, scope: !4659, inlinedAt: !4589)
!4661 = !DILocation(line: 356, column: 43, scope: !4659, inlinedAt: !4589)
!4662 = !DILocation(line: 356, column: 46, scope: !4659, inlinedAt: !4589)
!4663 = !DILocation(line: 356, column: 51, scope: !4659, inlinedAt: !4589)
!4664 = !DILocation(line: 356, column: 6, scope: !4585, inlinedAt: !4589)
!4665 = !DILocation(line: 357, column: 3, scope: !4659, inlinedAt: !4589)
!4666 = !DILocation(line: 358, column: 6, scope: !4667, inlinedAt: !4589)
!4667 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 358, column: 6)
!4668 = !DILocation(line: 358, column: 11, scope: !4667, inlinedAt: !4589)
!4669 = !DILocation(line: 358, column: 6, scope: !4585, inlinedAt: !4589)
!4670 = !DILocation(line: 358, column: 26, scope: !4667, inlinedAt: !4589)
!4671 = !DILocation(line: 359, column: 6, scope: !4672, inlinedAt: !4589)
!4672 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 359, column: 6)
!4673 = !DILocation(line: 359, column: 11, scope: !4672, inlinedAt: !4589)
!4674 = !DILocation(line: 359, column: 6, scope: !4585, inlinedAt: !4589)
!4675 = !DILocation(line: 359, column: 26, scope: !4672, inlinedAt: !4589)
!4676 = !DILocation(line: 360, column: 6, scope: !4677, inlinedAt: !4589)
!4677 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 360, column: 6)
!4678 = !DILocation(line: 360, column: 11, scope: !4677, inlinedAt: !4589)
!4679 = !DILocation(line: 360, column: 6, scope: !4585, inlinedAt: !4589)
!4680 = !DILocation(line: 360, column: 26, scope: !4677, inlinedAt: !4589)
!4681 = !DILocation(line: 361, column: 6, scope: !4682, inlinedAt: !4589)
!4682 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 361, column: 6)
!4683 = !DILocation(line: 361, column: 11, scope: !4682, inlinedAt: !4589)
!4684 = !DILocation(line: 361, column: 6, scope: !4585, inlinedAt: !4589)
!4685 = !DILocation(line: 361, column: 26, scope: !4682, inlinedAt: !4589)
!4686 = !DILocation(line: 362, column: 6, scope: !4687, inlinedAt: !4589)
!4687 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 362, column: 6)
!4688 = !DILocation(line: 362, column: 11, scope: !4687, inlinedAt: !4589)
!4689 = !DILocation(line: 362, column: 6, scope: !4585, inlinedAt: !4589)
!4690 = !DILocation(line: 362, column: 26, scope: !4687, inlinedAt: !4589)
!4691 = !DILocation(line: 363, column: 6, scope: !4692, inlinedAt: !4589)
!4692 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 363, column: 6)
!4693 = !DILocation(line: 363, column: 11, scope: !4692, inlinedAt: !4589)
!4694 = !DILocation(line: 363, column: 6, scope: !4585, inlinedAt: !4589)
!4695 = !DILocation(line: 363, column: 26, scope: !4692, inlinedAt: !4589)
!4696 = !DILocation(line: 364, column: 6, scope: !4697, inlinedAt: !4589)
!4697 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 364, column: 6)
!4698 = !DILocation(line: 364, column: 11, scope: !4697, inlinedAt: !4589)
!4699 = !DILocation(line: 364, column: 6, scope: !4585, inlinedAt: !4589)
!4700 = !DILocation(line: 364, column: 26, scope: !4697, inlinedAt: !4589)
!4701 = !DILocation(line: 365, column: 6, scope: !4702, inlinedAt: !4589)
!4702 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 365, column: 6)
!4703 = !DILocation(line: 365, column: 11, scope: !4702, inlinedAt: !4589)
!4704 = !DILocation(line: 365, column: 6, scope: !4585, inlinedAt: !4589)
!4705 = !DILocation(line: 365, column: 26, scope: !4702, inlinedAt: !4589)
!4706 = !DILocation(line: 366, column: 6, scope: !4707, inlinedAt: !4589)
!4707 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 366, column: 6)
!4708 = !DILocation(line: 366, column: 11, scope: !4707, inlinedAt: !4589)
!4709 = !DILocation(line: 366, column: 6, scope: !4585, inlinedAt: !4589)
!4710 = !DILocation(line: 366, column: 26, scope: !4707, inlinedAt: !4589)
!4711 = !DILocation(line: 367, column: 6, scope: !4712, inlinedAt: !4589)
!4712 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 367, column: 6)
!4713 = !DILocation(line: 367, column: 11, scope: !4712, inlinedAt: !4589)
!4714 = !DILocation(line: 367, column: 6, scope: !4585, inlinedAt: !4589)
!4715 = !DILocation(line: 367, column: 26, scope: !4712, inlinedAt: !4589)
!4716 = !DILocation(line: 368, column: 6, scope: !4717, inlinedAt: !4589)
!4717 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 368, column: 6)
!4718 = !DILocation(line: 368, column: 11, scope: !4717, inlinedAt: !4589)
!4719 = !DILocation(line: 368, column: 6, scope: !4585, inlinedAt: !4589)
!4720 = !DILocation(line: 368, column: 26, scope: !4717, inlinedAt: !4589)
!4721 = !DILocation(line: 369, column: 6, scope: !4722, inlinedAt: !4589)
!4722 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 369, column: 6)
!4723 = !DILocation(line: 369, column: 11, scope: !4722, inlinedAt: !4589)
!4724 = !DILocation(line: 369, column: 6, scope: !4585, inlinedAt: !4589)
!4725 = !DILocation(line: 369, column: 26, scope: !4722, inlinedAt: !4589)
!4726 = !DILocation(line: 370, column: 6, scope: !4727, inlinedAt: !4589)
!4727 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 370, column: 6)
!4728 = !DILocation(line: 370, column: 11, scope: !4727, inlinedAt: !4589)
!4729 = !DILocation(line: 370, column: 6, scope: !4585, inlinedAt: !4589)
!4730 = !DILocation(line: 370, column: 26, scope: !4727, inlinedAt: !4589)
!4731 = !DILocation(line: 371, column: 6, scope: !4732, inlinedAt: !4589)
!4732 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 371, column: 6)
!4733 = !DILocation(line: 371, column: 11, scope: !4732, inlinedAt: !4589)
!4734 = !DILocation(line: 371, column: 6, scope: !4585, inlinedAt: !4589)
!4735 = !DILocation(line: 371, column: 26, scope: !4732, inlinedAt: !4589)
!4736 = !DILocation(line: 372, column: 6, scope: !4737, inlinedAt: !4589)
!4737 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 372, column: 6)
!4738 = !DILocation(line: 372, column: 11, scope: !4737, inlinedAt: !4589)
!4739 = !DILocation(line: 372, column: 6, scope: !4585, inlinedAt: !4589)
!4740 = !DILocation(line: 372, column: 26, scope: !4737, inlinedAt: !4589)
!4741 = !DILocation(line: 373, column: 6, scope: !4742, inlinedAt: !4589)
!4742 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 373, column: 6)
!4743 = !DILocation(line: 373, column: 11, scope: !4742, inlinedAt: !4589)
!4744 = !DILocation(line: 373, column: 6, scope: !4585, inlinedAt: !4589)
!4745 = !DILocation(line: 373, column: 26, scope: !4742, inlinedAt: !4589)
!4746 = !DILocation(line: 374, column: 6, scope: !4747, inlinedAt: !4589)
!4747 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 374, column: 6)
!4748 = !DILocation(line: 374, column: 11, scope: !4747, inlinedAt: !4589)
!4749 = !DILocation(line: 374, column: 6, scope: !4585, inlinedAt: !4589)
!4750 = !DILocation(line: 374, column: 26, scope: !4747, inlinedAt: !4589)
!4751 = !DILocation(line: 375, column: 6, scope: !4752, inlinedAt: !4589)
!4752 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 375, column: 6)
!4753 = !DILocation(line: 375, column: 11, scope: !4752, inlinedAt: !4589)
!4754 = !DILocation(line: 375, column: 6, scope: !4585, inlinedAt: !4589)
!4755 = !DILocation(line: 375, column: 27, scope: !4752, inlinedAt: !4589)
!4756 = !DILocation(line: 376, column: 6, scope: !4757, inlinedAt: !4589)
!4757 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 376, column: 6)
!4758 = !DILocation(line: 376, column: 11, scope: !4757, inlinedAt: !4589)
!4759 = !DILocation(line: 376, column: 6, scope: !4585, inlinedAt: !4589)
!4760 = !DILocation(line: 376, column: 32, scope: !4757, inlinedAt: !4589)
!4761 = !DILocation(line: 377, column: 6, scope: !4762, inlinedAt: !4589)
!4762 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 377, column: 6)
!4763 = !DILocation(line: 377, column: 11, scope: !4762, inlinedAt: !4589)
!4764 = !DILocation(line: 377, column: 6, scope: !4585, inlinedAt: !4589)
!4765 = !DILocation(line: 377, column: 32, scope: !4762, inlinedAt: !4589)
!4766 = !DILocation(line: 378, column: 6, scope: !4767, inlinedAt: !4589)
!4767 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 378, column: 6)
!4768 = !DILocation(line: 378, column: 11, scope: !4767, inlinedAt: !4589)
!4769 = !DILocation(line: 378, column: 6, scope: !4585, inlinedAt: !4589)
!4770 = !DILocation(line: 378, column: 32, scope: !4767, inlinedAt: !4589)
!4771 = !DILocation(line: 379, column: 6, scope: !4772, inlinedAt: !4589)
!4772 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 379, column: 6)
!4773 = !DILocation(line: 379, column: 11, scope: !4772, inlinedAt: !4589)
!4774 = !DILocation(line: 379, column: 6, scope: !4585, inlinedAt: !4589)
!4775 = !DILocation(line: 379, column: 33, scope: !4772, inlinedAt: !4589)
!4776 = !DILocation(line: 380, column: 6, scope: !4777, inlinedAt: !4589)
!4777 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 380, column: 6)
!4778 = !DILocation(line: 380, column: 11, scope: !4777, inlinedAt: !4589)
!4779 = !DILocation(line: 380, column: 6, scope: !4585, inlinedAt: !4589)
!4780 = !DILocation(line: 380, column: 33, scope: !4777, inlinedAt: !4589)
!4781 = !DILocation(line: 381, column: 6, scope: !4782, inlinedAt: !4589)
!4782 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 381, column: 6)
!4783 = !DILocation(line: 381, column: 11, scope: !4782, inlinedAt: !4589)
!4784 = !DILocation(line: 381, column: 6, scope: !4585, inlinedAt: !4589)
!4785 = !DILocation(line: 381, column: 33, scope: !4782, inlinedAt: !4589)
!4786 = !DILocation(line: 382, column: 2, scope: !4787, inlinedAt: !4589)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !114, line: 382, column: 2)
!4788 = distinct !DILexicalBlock(scope: !4585, file: !114, line: 382, column: 2)
!4789 = !{i32 -2144220417, i32 -2144220388, i32 -2144220342, i32 -2144220284, i32 -2144220230, i32 -2144220176, i32 -2144220121, i32 -2144220090}
!4790 = !DILocation(line: 382, column: 2, scope: !4791, inlinedAt: !4589)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !114, line: 382, column: 2)
!4792 = distinct !DILexicalBlock(scope: !4788, file: !114, line: 382, column: 2)
!4793 = !{i32 -2144219647, i32 -2144219640, i32 -2144219586, i32 -2144219555, i32 -2144219525}
!4794 = !DILocation(line: 382, column: 2, scope: !4792, inlinedAt: !4589)
!4795 = !DILocation(line: 386, column: 1, scope: !4585, inlinedAt: !4589)
!4796 = !DILocation(line: 547, column: 9, scope: !4568, inlinedAt: !4571)
!4797 = !DILocation(line: 549, column: 8, scope: !4798, inlinedAt: !4571)
!4798 = distinct !DILexicalBlock(scope: !4568, file: !114, line: 549, column: 7)
!4799 = !DILocation(line: 549, column: 7, scope: !4568, inlinedAt: !4571)
!4800 = !DILocation(line: 550, column: 4, scope: !4798, inlinedAt: !4571)
!4801 = !DILocation(line: 553, column: 33, scope: !4568, inlinedAt: !4571)
!4802 = !DILocation(line: 325, column: 6, scope: !4803, inlinedAt: !4583)
!4803 = distinct !DILexicalBlock(scope: !4579, file: !114, line: 325, column: 6)
!4804 = !DILocation(line: 325, column: 6, scope: !4579, inlinedAt: !4583)
!4805 = !DILocation(line: 326, column: 3, scope: !4803, inlinedAt: !4583)
!4806 = !DILocation(line: 332, column: 9, scope: !4579, inlinedAt: !4583)
!4807 = !DILocation(line: 332, column: 15, scope: !4579, inlinedAt: !4583)
!4808 = !DILocation(line: 332, column: 2, scope: !4579, inlinedAt: !4583)
!4809 = !DILocation(line: 336, column: 1, scope: !4579, inlinedAt: !4583)
!4810 = !DILocation(line: 553, column: 5, scope: !4568, inlinedAt: !4571)
!4811 = !DILocation(line: 553, column: 41, scope: !4568, inlinedAt: !4571)
!4812 = !DILocation(line: 554, column: 5, scope: !4568, inlinedAt: !4571)
!4813 = !DILocation(line: 554, column: 12, scope: !4568, inlinedAt: !4571)
!4814 = !DILocation(line: 448, column: 31, scope: !4563, inlinedAt: !4567)
!4815 = !DILocation(line: 448, column: 34, scope: !4563, inlinedAt: !4567)
!4816 = !DILocation(line: 448, column: 14, scope: !4563, inlinedAt: !4567)
!4817 = !DILocation(line: 450, column: 22, scope: !4563, inlinedAt: !4567)
!4818 = !DILocation(line: 450, column: 25, scope: !4563, inlinedAt: !4567)
!4819 = !DILocation(line: 450, column: 30, scope: !4563, inlinedAt: !4567)
!4820 = !DILocation(line: 450, column: 36, scope: !4563, inlinedAt: !4567)
!4821 = !DILocation(line: 450, column: 8, scope: !4563, inlinedAt: !4567)
!4822 = !DILocation(line: 450, column: 6, scope: !4563, inlinedAt: !4567)
!4823 = !DILocation(line: 451, column: 9, scope: !4563, inlinedAt: !4567)
!4824 = !DILocation(line: 552, column: 3, scope: !4568, inlinedAt: !4571)
!4825 = !DILocation(line: 557, column: 19, scope: !4570, inlinedAt: !4571)
!4826 = !DILocation(line: 557, column: 25, scope: !4570, inlinedAt: !4571)
!4827 = !DILocation(line: 557, column: 9, scope: !4570, inlinedAt: !4571)
!4828 = !DILocation(line: 557, column: 2, scope: !4570, inlinedAt: !4571)
!4829 = !DILocation(line: 558, column: 1, scope: !4570, inlinedAt: !4571)
!4830 = !DILocation(line: 664, column: 2, scope: !4559)
!4831 = distinct !DISubprogram(name: "usb_endpoint_xfer_int", scope: !88, file: !88, line: 542, type: !4832, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!137, !4834}
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!4836 = !DILocalVariable(name: "epd", arg: 1, scope: !4831, file: !88, line: 543, type: !4834)
!4837 = !DILocation(line: 543, column: 43, scope: !4831)
!4838 = !DILocation(line: 545, column: 11, scope: !4831)
!4839 = !DILocation(line: 545, column: 16, scope: !4831)
!4840 = !DILocation(line: 545, column: 29, scope: !4831)
!4841 = !DILocation(line: 545, column: 59, scope: !4831)
!4842 = !DILocation(line: 545, column: 2, scope: !4831)
!4843 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !4844, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!7, !133, !7}
!4846 = !DILocalVariable(name: "dev", arg: 1, scope: !4843, file: !6, line: 1945, type: !133)
!4847 = !DILocation(line: 1945, column: 61, scope: !4843)
!4848 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4843, file: !6, line: 1946, type: !7)
!4849 = !DILocation(line: 1946, column: 16, scope: !4843)
!4850 = !DILocation(line: 1948, column: 10, scope: !4843)
!4851 = !DILocation(line: 1948, column: 15, scope: !4843)
!4852 = !DILocation(line: 1948, column: 22, scope: !4843)
!4853 = !DILocation(line: 1948, column: 31, scope: !4843)
!4854 = !DILocation(line: 1948, column: 40, scope: !4843)
!4855 = !DILocation(line: 1948, column: 28, scope: !4843)
!4856 = !DILocation(line: 1948, column: 2, scope: !4843)
!4857 = distinct !DISubprogram(name: "parse_hid_report_descriptor", scope: !3, file: !3, line: 200, type: !4858, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !3910, !230, !137}
!4860 = !DILocalVariable(name: "p", arg: 1, scope: !4861, file: !4862, line: 56, type: !4865)
!4861 = distinct !DISubprogram(name: "__le32_to_cpup", scope: !4862, file: !4862, line: 56, type: !4863, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4862 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!146, !4865}
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3577)
!4867 = !DILocation(line: 56, column: 59, scope: !4861, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 15, column: 9, scope: !4869, inlinedAt: !4873)
!4869 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !4870, file: !4870, line: 13, type: !4871, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4870 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!144, !2998}
!4873 = distinct !DILocation(line: 252, column: 13, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 244, column: 17)
!4875 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 232, column: 21)
!4876 = !DILocalVariable(name: "p", arg: 1, scope: !4869, file: !4870, line: 13, type: !2998)
!4877 = !DILocation(line: 13, column: 59, scope: !4869, inlinedAt: !4873)
!4878 = !DILocalVariable(name: "p", arg: 1, scope: !4879, file: !4862, line: 64, type: !4882)
!4879 = distinct !DISubprogram(name: "__le16_to_cpup", scope: !4862, file: !4862, line: 64, type: !4880, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!128, !4882}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!4884 = !DILocation(line: 64, column: 59, scope: !4879, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 10, column: 9, scope: !4886, inlinedAt: !4889)
!4886 = distinct !DISubprogram(name: "get_unaligned_le16", scope: !4870, file: !4870, line: 8, type: !4887, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!809, !2998}
!4889 = distinct !DILocation(line: 249, column: 13, scope: !4874)
!4890 = !DILocalVariable(name: "p", arg: 1, scope: !4886, file: !4870, line: 8, type: !2998)
!4891 = !DILocation(line: 8, column: 59, scope: !4886, inlinedAt: !4889)
!4892 = !DILocalVariable(name: "device", arg: 1, scope: !4857, file: !3, line: 200, type: !3910)
!4893 = !DILocation(line: 200, column: 54, scope: !4857)
!4894 = !DILocalVariable(name: "report", arg: 2, scope: !4857, file: !3, line: 200, type: !230)
!4895 = !DILocation(line: 200, column: 69, scope: !4857)
!4896 = !DILocalVariable(name: "length", arg: 3, scope: !4857, file: !3, line: 201, type: !137)
!4897 = !DILocation(line: 201, column: 10, scope: !4857)
!4898 = !DILocalVariable(name: "ddev", scope: !4857, file: !3, line: 203, type: !165)
!4899 = !DILocation(line: 203, column: 17, scope: !4857)
!4900 = !DILocation(line: 203, column: 25, scope: !4857)
!4901 = !DILocation(line: 203, column: 33, scope: !4857)
!4902 = !DILocation(line: 203, column: 39, scope: !4857)
!4903 = !DILocalVariable(name: "x", scope: !4857, file: !3, line: 204, type: !137)
!4904 = !DILocation(line: 204, column: 8, scope: !4857)
!4905 = !DILocalVariable(name: "i", scope: !4857, file: !3, line: 204, type: !137)
!4906 = !DILocation(line: 204, column: 11, scope: !4857)
!4907 = !DILocalVariable(name: "prefix", scope: !4857, file: !3, line: 207, type: !1222)
!4908 = !DILocation(line: 207, column: 9, scope: !4857)
!4909 = !DILocalVariable(name: "size", scope: !4857, file: !3, line: 208, type: !1222)
!4910 = !DILocation(line: 208, column: 9, scope: !4857)
!4911 = !DILocalVariable(name: "tag", scope: !4857, file: !3, line: 209, type: !1222)
!4912 = !DILocation(line: 209, column: 9, scope: !4857)
!4913 = !DILocalVariable(name: "type", scope: !4857, file: !3, line: 210, type: !1222)
!4914 = !DILocation(line: 210, column: 9, scope: !4857)
!4915 = !DILocalVariable(name: "data", scope: !4857, file: !3, line: 211, type: !1222)
!4916 = !DILocation(line: 211, column: 9, scope: !4857)
!4917 = !DILocalVariable(name: "data16", scope: !4857, file: !3, line: 212, type: !128)
!4918 = !DILocation(line: 212, column: 9, scope: !4857)
!4919 = !DILocalVariable(name: "data32", scope: !4857, file: !3, line: 213, type: !146)
!4920 = !DILocation(line: 213, column: 9, scope: !4857)
!4921 = !DILocalVariable(name: "inputnum", scope: !4857, file: !3, line: 216, type: !137)
!4922 = !DILocation(line: 216, column: 8, scope: !4857)
!4923 = !DILocalVariable(name: "usage", scope: !4857, file: !3, line: 217, type: !146)
!4924 = !DILocation(line: 217, column: 8, scope: !4857)
!4925 = !DILocalVariable(name: "globalval", scope: !4857, file: !3, line: 220, type: !4926)
!4926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !2090)
!4927 = !DILocation(line: 220, column: 8, scope: !4857)
!4928 = !DILocalVariable(name: "oldval", scope: !4857, file: !3, line: 221, type: !4926)
!4929 = !DILocation(line: 221, column: 8, scope: !4857)
!4930 = !DILocalVariable(name: "maintype", scope: !4857, file: !3, line: 224, type: !140)
!4931 = !DILocation(line: 224, column: 8, scope: !4857)
!4932 = !DILocalVariable(name: "globtype", scope: !4857, file: !3, line: 225, type: !4933)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 96, elements: !2090)
!4934 = !DILocation(line: 225, column: 8, scope: !4857)
!4935 = !DILocalVariable(name: "indent", scope: !4857, file: !3, line: 226, type: !137)
!4936 = !DILocation(line: 226, column: 8, scope: !4857)
!4937 = !DILocalVariable(name: "indentstr", scope: !4857, file: !3, line: 227, type: !4938)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 88, elements: !4939)
!4939 = !{!4940}
!4940 = !DISubrange(count: 11)
!4941 = !DILocation(line: 227, column: 8, scope: !4857)
!4942 = !DILocation(line: 232, column: 2, scope: !4857)
!4943 = !DILocation(line: 232, column: 9, scope: !4857)
!4944 = !DILocation(line: 232, column: 13, scope: !4857)
!4945 = !DILocation(line: 232, column: 11, scope: !4857)
!4946 = !DILocation(line: 233, column: 12, scope: !4875)
!4947 = !DILocation(line: 233, column: 20, scope: !4875)
!4948 = !DILocation(line: 233, column: 10, scope: !4875)
!4949 = !DILocation(line: 236, column: 17, scope: !4875)
!4950 = !DILocation(line: 236, column: 14, scope: !4875)
!4951 = !DILocation(line: 236, column: 36, scope: !4875)
!4952 = !DILocation(line: 236, column: 10, scope: !4875)
!4953 = !DILocation(line: 236, column: 8, scope: !4875)
!4954 = !DILocation(line: 237, column: 7, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 237, column: 7)
!4956 = !DILocation(line: 237, column: 11, scope: !4955)
!4957 = !DILocation(line: 237, column: 9, scope: !4955)
!4958 = !DILocation(line: 237, column: 18, scope: !4955)
!4959 = !DILocation(line: 237, column: 16, scope: !4955)
!4960 = !DILocation(line: 237, column: 7, scope: !4875)
!4961 = !DILocation(line: 238, column: 4, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 237, column: 26)
!4963 = !DILocation(line: 241, column: 4, scope: !4962)
!4964 = !DILocation(line: 244, column: 11, scope: !4875)
!4965 = !DILocation(line: 244, column: 3, scope: !4875)
!4966 = !DILocation(line: 246, column: 11, scope: !4874)
!4967 = !DILocation(line: 246, column: 18, scope: !4874)
!4968 = !DILocation(line: 246, column: 9, scope: !4874)
!4969 = !DILocation(line: 247, column: 4, scope: !4874)
!4970 = !DILocation(line: 249, column: 33, scope: !4874)
!4971 = !DILocation(line: 249, column: 40, scope: !4874)
!4972 = !DILocation(line: 10, column: 32, scope: !4886, inlinedAt: !4889)
!4973 = !DILocation(line: 10, column: 22, scope: !4886, inlinedAt: !4889)
!4974 = !DILocation(line: 66, column: 25, scope: !4879, inlinedAt: !4885)
!4975 = !DILocation(line: 66, column: 24, scope: !4879, inlinedAt: !4885)
!4976 = !DILocation(line: 249, column: 11, scope: !4874)
!4977 = !DILocation(line: 250, column: 4, scope: !4874)
!4978 = !DILocation(line: 252, column: 33, scope: !4874)
!4979 = !DILocation(line: 252, column: 40, scope: !4874)
!4980 = !DILocation(line: 15, column: 32, scope: !4869, inlinedAt: !4873)
!4981 = !DILocation(line: 15, column: 22, scope: !4869, inlinedAt: !4873)
!4982 = !DILocation(line: 58, column: 25, scope: !4861, inlinedAt: !4868)
!4983 = !DILocation(line: 58, column: 24, scope: !4861, inlinedAt: !4868)
!4984 = !DILocation(line: 252, column: 11, scope: !4874)
!4985 = !DILocation(line: 253, column: 4, scope: !4874)
!4986 = !DILocation(line: 257, column: 8, scope: !4875)
!4987 = !DILocation(line: 257, column: 5, scope: !4875)
!4988 = !DILocation(line: 260, column: 10, scope: !4875)
!4989 = !DILocation(line: 260, column: 8, scope: !4875)
!4990 = !DILocation(line: 261, column: 10, scope: !4875)
!4991 = !DILocation(line: 261, column: 8, scope: !4875)
!4992 = !DILocation(line: 262, column: 11, scope: !4875)
!4993 = !DILocation(line: 262, column: 3, scope: !4875)
!4994 = !DILocation(line: 264, column: 11, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 262, column: 17)
!4996 = !DILocation(line: 264, column: 4, scope: !4995)
!4997 = !DILocation(line: 265, column: 12, scope: !4995)
!4998 = !DILocation(line: 265, column: 4, scope: !4995)
!4999 = !DILocation(line: 275, column: 14, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 265, column: 17)
!5001 = !DILocation(line: 276, column: 9, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 276, column: 9)
!5003 = !DILocation(line: 276, column: 14, scope: !5002)
!5004 = !DILocation(line: 276, column: 9, scope: !5000)
!5005 = !DILocation(line: 277, column: 13, scope: !5002)
!5006 = !DILocation(line: 277, column: 6, scope: !5002)
!5007 = !DILocation(line: 278, column: 14, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 278, column: 14)
!5009 = !DILocation(line: 278, column: 19, scope: !5008)
!5010 = !DILocation(line: 278, column: 14, scope: !5002)
!5011 = !DILocation(line: 279, column: 13, scope: !5008)
!5012 = !DILocation(line: 279, column: 6, scope: !5008)
!5013 = !DILocation(line: 294, column: 13, scope: !5000)
!5014 = !DILocation(line: 294, column: 5, scope: !5000)
!5015 = !DILocation(line: 297, column: 10, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 297, column: 10)
!5017 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 294, column: 23)
!5018 = !DILocation(line: 297, column: 18, scope: !5016)
!5019 = !DILocation(line: 297, column: 24, scope: !5016)
!5020 = !DILocation(line: 297, column: 10, scope: !5017)
!5021 = !DILocation(line: 298, column: 23, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 297, column: 30)
!5023 = !DILocation(line: 298, column: 7, scope: !5022)
!5024 = !DILocation(line: 298, column: 15, scope: !5022)
!5025 = !DILocation(line: 298, column: 21, scope: !5022)
!5026 = !DILocation(line: 299, column: 23, scope: !5022)
!5027 = !DILocation(line: 299, column: 7, scope: !5022)
!5028 = !DILocation(line: 299, column: 15, scope: !5022)
!5029 = !DILocation(line: 299, column: 21, scope: !5022)
!5030 = !DILocation(line: 300, column: 6, scope: !5022)
!5031 = !DILocation(line: 301, column: 6, scope: !5017)
!5032 = !DILocation(line: 305, column: 10, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 305, column: 10)
!5034 = !DILocation(line: 305, column: 18, scope: !5033)
!5035 = !DILocation(line: 305, column: 24, scope: !5033)
!5036 = !DILocation(line: 305, column: 10, scope: !5017)
!5037 = !DILocation(line: 306, column: 23, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 305, column: 30)
!5039 = !DILocation(line: 306, column: 7, scope: !5038)
!5040 = !DILocation(line: 306, column: 15, scope: !5038)
!5041 = !DILocation(line: 306, column: 21, scope: !5038)
!5042 = !DILocation(line: 307, column: 23, scope: !5038)
!5043 = !DILocation(line: 307, column: 7, scope: !5038)
!5044 = !DILocation(line: 307, column: 15, scope: !5038)
!5045 = !DILocation(line: 307, column: 21, scope: !5038)
!5046 = !DILocation(line: 308, column: 6, scope: !5038)
!5047 = !DILocation(line: 309, column: 6, scope: !5017)
!5048 = !DILocation(line: 313, column: 10, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 313, column: 10)
!5050 = !DILocation(line: 313, column: 16, scope: !5049)
!5051 = !DILocation(line: 313, column: 10, scope: !5017)
!5052 = !DILocation(line: 314, column: 11, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 314, column: 11)
!5054 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 313, column: 43)
!5055 = !DILocation(line: 314, column: 19, scope: !5053)
!5056 = !DILocation(line: 314, column: 29, scope: !5053)
!5057 = !DILocation(line: 314, column: 11, scope: !5054)
!5058 = !DILocation(line: 315, column: 28, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 314, column: 35)
!5060 = !DILocation(line: 315, column: 8, scope: !5059)
!5061 = !DILocation(line: 315, column: 16, scope: !5059)
!5062 = !DILocation(line: 315, column: 26, scope: !5059)
!5063 = !DILocation(line: 316, column: 28, scope: !5059)
!5064 = !DILocation(line: 316, column: 8, scope: !5059)
!5065 = !DILocation(line: 316, column: 16, scope: !5059)
!5066 = !DILocation(line: 316, column: 26, scope: !5059)
!5067 = !DILocation(line: 317, column: 7, scope: !5059)
!5068 = !DILocation(line: 318, column: 6, scope: !5054)
!5069 = !DILocation(line: 321, column: 10, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 321, column: 10)
!5071 = !DILocation(line: 321, column: 16, scope: !5070)
!5072 = !DILocation(line: 321, column: 10, scope: !5017)
!5073 = !DILocation(line: 322, column: 11, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 322, column: 11)
!5075 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 321, column: 43)
!5076 = !DILocation(line: 322, column: 19, scope: !5074)
!5077 = !DILocation(line: 322, column: 29, scope: !5074)
!5078 = !DILocation(line: 322, column: 11, scope: !5075)
!5079 = !DILocation(line: 323, column: 28, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5074, file: !3, line: 322, column: 35)
!5081 = !DILocation(line: 323, column: 8, scope: !5080)
!5082 = !DILocation(line: 323, column: 16, scope: !5080)
!5083 = !DILocation(line: 323, column: 26, scope: !5080)
!5084 = !DILocation(line: 324, column: 28, scope: !5080)
!5085 = !DILocation(line: 324, column: 8, scope: !5080)
!5086 = !DILocation(line: 324, column: 16, scope: !5080)
!5087 = !DILocation(line: 324, column: 26, scope: !5080)
!5088 = !DILocation(line: 325, column: 7, scope: !5080)
!5089 = !DILocation(line: 326, column: 6, scope: !5075)
!5090 = !DILocation(line: 329, column: 10, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 329, column: 10)
!5092 = !DILocation(line: 329, column: 16, scope: !5091)
!5093 = !DILocation(line: 329, column: 10, scope: !5017)
!5094 = !DILocation(line: 330, column: 11, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 330, column: 11)
!5096 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 329, column: 49)
!5097 = !DILocation(line: 330, column: 19, scope: !5095)
!5098 = !DILocation(line: 330, column: 31, scope: !5095)
!5099 = !DILocation(line: 330, column: 11, scope: !5096)
!5100 = !DILocation(line: 331, column: 30, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 330, column: 37)
!5102 = !DILocation(line: 331, column: 8, scope: !5101)
!5103 = !DILocation(line: 331, column: 16, scope: !5101)
!5104 = !DILocation(line: 331, column: 28, scope: !5101)
!5105 = !DILocation(line: 332, column: 30, scope: !5101)
!5106 = !DILocation(line: 332, column: 8, scope: !5101)
!5107 = !DILocation(line: 332, column: 16, scope: !5101)
!5108 = !DILocation(line: 332, column: 28, scope: !5101)
!5109 = !DILocation(line: 333, column: 7, scope: !5101)
!5110 = !DILocation(line: 334, column: 6, scope: !5096)
!5111 = !DILocation(line: 336, column: 6, scope: !5017)
!5112 = !DILocation(line: 339, column: 13, scope: !5000)
!5113 = !DILocation(line: 340, column: 5, scope: !5000)
!5114 = !DILocation(line: 343, column: 14, scope: !5000)
!5115 = !DILocation(line: 344, column: 5, scope: !5000)
!5116 = !DILocation(line: 347, column: 14, scope: !5000)
!5117 = !DILocation(line: 348, column: 5, scope: !5000)
!5118 = !DILocation(line: 351, column: 14, scope: !5000)
!5119 = !DILocation(line: 353, column: 9, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 353, column: 9)
!5121 = !DILocation(line: 353, column: 16, scope: !5120)
!5122 = !DILocation(line: 353, column: 9, scope: !5000)
!5123 = !DILocation(line: 354, column: 6, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5120, file: !3, line: 353, column: 42)
!5125 = !DILocation(line: 357, column: 6, scope: !5124)
!5126 = !DILocation(line: 360, column: 9, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 360, column: 9)
!5128 = !DILocation(line: 360, column: 14, scope: !5127)
!5129 = !DILocation(line: 360, column: 9, scope: !5000)
!5130 = !DILocation(line: 362, column: 13, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 360, column: 20)
!5132 = !DILocation(line: 362, column: 6, scope: !5131)
!5133 = !DILocation(line: 363, column: 5, scope: !5131)
!5134 = !DILocation(line: 367, column: 11, scope: !5000)
!5135 = !DILocation(line: 368, column: 12, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 368, column: 5)
!5137 = !DILocation(line: 368, column: 10, scope: !5136)
!5138 = !DILocation(line: 368, column: 17, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5136, file: !3, line: 368, column: 5)
!5140 = !DILocation(line: 368, column: 21, scope: !5139)
!5141 = !DILocation(line: 368, column: 19, scope: !5139)
!5142 = !DILocation(line: 368, column: 5, scope: !5136)
!5143 = !DILocation(line: 369, column: 16, scope: !5139)
!5144 = !DILocation(line: 369, column: 6, scope: !5139)
!5145 = !DILocation(line: 369, column: 19, scope: !5139)
!5146 = !DILocation(line: 368, column: 30, scope: !5139)
!5147 = !DILocation(line: 368, column: 5, scope: !5139)
!5148 = distinct !{!5148, !5142, !5149}
!5149 = !DILocation(line: 369, column: 21, scope: !5136)
!5150 = !DILocation(line: 370, column: 15, scope: !5000)
!5151 = !DILocation(line: 370, column: 5, scope: !5000)
!5152 = !DILocation(line: 370, column: 18, scope: !5000)
!5153 = !DILocation(line: 373, column: 12, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 373, column: 5)
!5155 = !DILocation(line: 373, column: 10, scope: !5154)
!5156 = !DILocation(line: 373, column: 17, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 373, column: 5)
!5158 = !DILocation(line: 373, column: 19, scope: !5157)
!5159 = !DILocation(line: 373, column: 5, scope: !5154)
!5160 = !DILocation(line: 374, column: 28, scope: !5157)
!5161 = !DILocation(line: 374, column: 18, scope: !5157)
!5162 = !DILocation(line: 374, column: 13, scope: !5157)
!5163 = !DILocation(line: 374, column: 6, scope: !5157)
!5164 = !DILocation(line: 374, column: 16, scope: !5157)
!5165 = !DILocation(line: 373, column: 36, scope: !5157)
!5166 = !DILocation(line: 373, column: 5, scope: !5157)
!5167 = distinct !{!5167, !5159, !5168}
!5168 = !DILocation(line: 374, column: 29, scope: !5154)
!5169 = !DILocation(line: 376, column: 5, scope: !5000)
!5170 = !DILocation(line: 379, column: 14, scope: !5000)
!5171 = !DILocation(line: 381, column: 9, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 381, column: 9)
!5173 = !DILocation(line: 381, column: 16, scope: !5172)
!5174 = !DILocation(line: 381, column: 9, scope: !5000)
!5175 = !DILocation(line: 382, column: 6, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 381, column: 22)
!5177 = !DILocation(line: 383, column: 6, scope: !5176)
!5178 = !DILocation(line: 388, column: 11, scope: !5000)
!5179 = !DILocation(line: 389, column: 12, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 389, column: 5)
!5181 = !DILocation(line: 389, column: 10, scope: !5180)
!5182 = !DILocation(line: 389, column: 17, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 389, column: 5)
!5184 = !DILocation(line: 389, column: 21, scope: !5183)
!5185 = !DILocation(line: 389, column: 19, scope: !5183)
!5186 = !DILocation(line: 389, column: 5, scope: !5180)
!5187 = !DILocation(line: 390, column: 16, scope: !5183)
!5188 = !DILocation(line: 390, column: 6, scope: !5183)
!5189 = !DILocation(line: 390, column: 19, scope: !5183)
!5190 = !DILocation(line: 389, column: 30, scope: !5183)
!5191 = !DILocation(line: 389, column: 5, scope: !5183)
!5192 = distinct !{!5192, !5186, !5193}
!5193 = !DILocation(line: 390, column: 21, scope: !5180)
!5194 = !DILocation(line: 391, column: 15, scope: !5000)
!5195 = !DILocation(line: 391, column: 5, scope: !5000)
!5196 = !DILocation(line: 391, column: 18, scope: !5000)
!5197 = !DILocation(line: 394, column: 12, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 394, column: 5)
!5199 = !DILocation(line: 394, column: 10, scope: !5198)
!5200 = !DILocation(line: 394, column: 17, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 394, column: 5)
!5202 = !DILocation(line: 394, column: 19, scope: !5201)
!5203 = !DILocation(line: 394, column: 5, scope: !5198)
!5204 = !DILocation(line: 395, column: 28, scope: !5201)
!5205 = !DILocation(line: 395, column: 21, scope: !5201)
!5206 = !DILocation(line: 395, column: 16, scope: !5201)
!5207 = !DILocation(line: 395, column: 6, scope: !5201)
!5208 = !DILocation(line: 395, column: 19, scope: !5201)
!5209 = !DILocation(line: 394, column: 36, scope: !5201)
!5210 = !DILocation(line: 394, column: 5, scope: !5201)
!5211 = distinct !{!5211, !5203, !5212}
!5212 = !DILocation(line: 395, column: 29, scope: !5198)
!5213 = !DILocation(line: 397, column: 5, scope: !5000)
!5214 = !DILocation(line: 400, column: 12, scope: !4995)
!5215 = !DILocation(line: 400, column: 4, scope: !4995)
!5216 = !DILocation(line: 404, column: 5, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 400, column: 18)
!5218 = !DILocation(line: 409, column: 5, scope: !5217)
!5219 = !DILocation(line: 414, column: 5, scope: !5217)
!5220 = !DILocation(line: 416, column: 4, scope: !4995)
!5221 = !DILocation(line: 419, column: 12, scope: !4995)
!5222 = !DILocation(line: 419, column: 4, scope: !4995)
!5223 = !DILocation(line: 425, column: 9, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 425, column: 9)
!5225 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 419, column: 17)
!5226 = !DILocation(line: 425, column: 17, scope: !5224)
!5227 = !DILocation(line: 425, column: 23, scope: !5224)
!5228 = !DILocation(line: 425, column: 9, scope: !5225)
!5229 = !DILocation(line: 426, column: 22, scope: !5224)
!5230 = !DILocation(line: 426, column: 6, scope: !5224)
!5231 = !DILocation(line: 426, column: 14, scope: !5224)
!5232 = !DILocation(line: 426, column: 20, scope: !5224)
!5233 = !DILocation(line: 428, column: 12, scope: !5225)
!5234 = !DILocation(line: 428, column: 5, scope: !5225)
!5235 = !DILocation(line: 429, column: 5, scope: !5225)
!5236 = !DILocation(line: 432, column: 12, scope: !5225)
!5237 = !DILocation(line: 432, column: 5, scope: !5225)
!5238 = !DILocation(line: 433, column: 5, scope: !5225)
!5239 = !DILocation(line: 436, column: 12, scope: !5225)
!5240 = !DILocation(line: 436, column: 5, scope: !5225)
!5241 = !DILocation(line: 437, column: 5, scope: !5225)
!5242 = !DILocation(line: 440, column: 12, scope: !5225)
!5243 = !DILocation(line: 440, column: 5, scope: !5225)
!5244 = !DILocation(line: 441, column: 5, scope: !5225)
!5245 = !DILocation(line: 444, column: 12, scope: !5225)
!5246 = !DILocation(line: 444, column: 5, scope: !5225)
!5247 = !DILocation(line: 445, column: 5, scope: !5225)
!5248 = !DILocation(line: 448, column: 12, scope: !5225)
!5249 = !DILocation(line: 448, column: 5, scope: !5225)
!5250 = !DILocation(line: 449, column: 5, scope: !5225)
!5251 = !DILocation(line: 452, column: 12, scope: !5225)
!5252 = !DILocation(line: 452, column: 5, scope: !5225)
!5253 = !DILocation(line: 453, column: 5, scope: !5225)
!5254 = !DILocation(line: 456, column: 12, scope: !5225)
!5255 = !DILocation(line: 456, column: 5, scope: !5225)
!5256 = !DILocation(line: 457, column: 5, scope: !5225)
!5257 = !DILocation(line: 460, column: 12, scope: !5225)
!5258 = !DILocation(line: 460, column: 5, scope: !5225)
!5259 = !DILocation(line: 462, column: 14, scope: !5225)
!5260 = !DILocation(line: 463, column: 5, scope: !5225)
!5261 = !DILocation(line: 466, column: 12, scope: !5225)
!5262 = !DILocation(line: 466, column: 5, scope: !5225)
!5263 = !DILocation(line: 467, column: 5, scope: !5225)
!5264 = !DILocation(line: 470, column: 12, scope: !5225)
!5265 = !DILocation(line: 470, column: 5, scope: !5225)
!5266 = !DILocation(line: 471, column: 5, scope: !5225)
!5267 = !DILocation(line: 474, column: 12, scope: !5225)
!5268 = !DILocation(line: 474, column: 5, scope: !5225)
!5269 = !DILocation(line: 475, column: 5, scope: !5225)
!5270 = !DILocation(line: 480, column: 8, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 480, column: 8)
!5272 = !DILocation(line: 480, column: 12, scope: !5271)
!5273 = !DILocation(line: 480, column: 8, scope: !4995)
!5274 = !DILocation(line: 481, column: 13, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 480, column: 28)
!5276 = !DILocation(line: 481, column: 5, scope: !5275)
!5277 = !DILocation(line: 485, column: 23, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 481, column: 19)
!5279 = !DILocation(line: 485, column: 16, scope: !5278)
!5280 = !DILocation(line: 485, column: 6, scope: !5278)
!5281 = !DILocation(line: 485, column: 21, scope: !5278)
!5282 = !DILocation(line: 486, column: 6, scope: !5278)
!5283 = !DILocation(line: 491, column: 23, scope: !5278)
!5284 = !DILocation(line: 491, column: 16, scope: !5278)
!5285 = !DILocation(line: 491, column: 6, scope: !5278)
!5286 = !DILocation(line: 491, column: 21, scope: !5278)
!5287 = !DILocation(line: 492, column: 6, scope: !5278)
!5288 = !DILocation(line: 497, column: 23, scope: !5278)
!5289 = !DILocation(line: 497, column: 16, scope: !5278)
!5290 = !DILocation(line: 497, column: 6, scope: !5278)
!5291 = !DILocation(line: 497, column: 21, scope: !5278)
!5292 = !DILocation(line: 498, column: 6, scope: !5278)
!5293 = !DILocation(line: 500, column: 4, scope: !5275)
!5294 = !DILocation(line: 504, column: 4, scope: !4995)
!5295 = !DILocation(line: 507, column: 12, scope: !4995)
!5296 = !DILocation(line: 507, column: 4, scope: !4995)
!5297 = !DILocation(line: 509, column: 12, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 507, column: 17)
!5299 = !DILocation(line: 509, column: 5, scope: !5298)
!5300 = !DILocation(line: 511, column: 13, scope: !5298)
!5301 = !DILocation(line: 511, column: 11, scope: !5298)
!5302 = !DILocation(line: 512, column: 5, scope: !5298)
!5303 = !DILocation(line: 515, column: 12, scope: !5298)
!5304 = !DILocation(line: 515, column: 5, scope: !5298)
!5305 = !DILocation(line: 516, column: 5, scope: !5298)
!5306 = !DILocation(line: 519, column: 12, scope: !5298)
!5307 = !DILocation(line: 519, column: 5, scope: !5298)
!5308 = !DILocation(line: 520, column: 5, scope: !5298)
!5309 = !DILocation(line: 523, column: 12, scope: !5298)
!5310 = !DILocation(line: 523, column: 5, scope: !5298)
!5311 = !DILocation(line: 524, column: 5, scope: !5298)
!5312 = !DILocation(line: 527, column: 12, scope: !4995)
!5313 = !DILocation(line: 527, column: 4, scope: !4995)
!5314 = !DILocation(line: 531, column: 5, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 527, column: 18)
!5316 = !DILocation(line: 536, column: 5, scope: !5315)
!5317 = !DILocation(line: 541, column: 5, scope: !5315)
!5318 = !DILocation(line: 544, column: 4, scope: !4995)
!5319 = distinct !{!5319, !4942, !5320}
!5320 = !DILocation(line: 546, column: 2, scope: !4857)
!5321 = !DILocation(line: 547, column: 1, scope: !4857)
!5322 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5323, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!137, !133, !230, !276}
!5325 = !DILocalVariable(name: "dev", arg: 1, scope: !5322, file: !6, line: 912, type: !133)
!5326 = !DILocation(line: 912, column: 52, scope: !5322)
!5327 = !DILocalVariable(name: "buf", arg: 2, scope: !5322, file: !6, line: 912, type: !230)
!5328 = !DILocation(line: 912, column: 63, scope: !5322)
!5329 = !DILocalVariable(name: "size", arg: 3, scope: !5322, file: !6, line: 912, type: !276)
!5330 = !DILocation(line: 912, column: 75, scope: !5322)
!5331 = !DILocalVariable(name: "actual", scope: !5322, file: !6, line: 914, type: !137)
!5332 = !DILocation(line: 914, column: 6, scope: !5322)
!5333 = !DILocation(line: 915, column: 20, scope: !5322)
!5334 = !DILocation(line: 915, column: 25, scope: !5322)
!5335 = !DILocation(line: 915, column: 44, scope: !5322)
!5336 = !DILocation(line: 915, column: 49, scope: !5322)
!5337 = !DILocation(line: 915, column: 54, scope: !5322)
!5338 = !DILocation(line: 916, column: 6, scope: !5322)
!5339 = !DILocation(line: 916, column: 11, scope: !5322)
!5340 = !DILocation(line: 915, column: 11, scope: !5322)
!5341 = !DILocation(line: 915, column: 9, scope: !5322)
!5342 = !DILocation(line: 917, column: 10, scope: !5322)
!5343 = !DILocation(line: 917, column: 25, scope: !5322)
!5344 = !DILocation(line: 917, column: 20, scope: !5322)
!5345 = !DILocation(line: 917, column: 17, scope: !5322)
!5346 = !DILocation(line: 917, column: 9, scope: !5322)
!5347 = !DILocation(line: 917, column: 38, scope: !5322)
!5348 = !DILocation(line: 917, column: 2, scope: !5322)
!5349 = distinct !DISubprogram(name: "gtco_input_open", scope: !3, file: !3, line: 555, type: !4084, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5350 = !DILocalVariable(name: "inputdev", arg: 1, scope: !5349, file: !3, line: 555, type: !3914)
!5351 = !DILocation(line: 555, column: 46, scope: !5349)
!5352 = !DILocalVariable(name: "device", scope: !5349, file: !3, line: 557, type: !3910)
!5353 = !DILocation(line: 557, column: 15, scope: !5349)
!5354 = !DILocation(line: 557, column: 42, scope: !5349)
!5355 = !DILocation(line: 557, column: 24, scope: !5349)
!5356 = !DILocation(line: 559, column: 45, scope: !5349)
!5357 = !DILocation(line: 559, column: 53, scope: !5349)
!5358 = !DILocation(line: 559, column: 25, scope: !5349)
!5359 = !DILocation(line: 559, column: 2, scope: !5349)
!5360 = !DILocation(line: 559, column: 10, scope: !5349)
!5361 = !DILocation(line: 559, column: 19, scope: !5349)
!5362 = !DILocation(line: 559, column: 23, scope: !5349)
!5363 = !DILocation(line: 560, column: 21, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 560, column: 6)
!5365 = !DILocation(line: 560, column: 29, scope: !5364)
!5366 = !DILocation(line: 560, column: 6, scope: !5364)
!5367 = !DILocation(line: 560, column: 6, scope: !5349)
!5368 = !DILocation(line: 561, column: 3, scope: !5364)
!5369 = !DILocation(line: 563, column: 2, scope: !5349)
!5370 = !DILocation(line: 564, column: 1, scope: !5349)
!5371 = distinct !DISubprogram(name: "gtco_input_close", scope: !3, file: !3, line: 569, type: !4088, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5372 = !DILocalVariable(name: "inputdev", arg: 1, scope: !5371, file: !3, line: 569, type: !3914)
!5373 = !DILocation(line: 569, column: 48, scope: !5371)
!5374 = !DILocalVariable(name: "device", scope: !5371, file: !3, line: 571, type: !3910)
!5375 = !DILocation(line: 571, column: 15, scope: !5371)
!5376 = !DILocation(line: 571, column: 42, scope: !5371)
!5377 = !DILocation(line: 571, column: 24, scope: !5371)
!5378 = !DILocation(line: 573, column: 15, scope: !5371)
!5379 = !DILocation(line: 573, column: 23, scope: !5371)
!5380 = !DILocation(line: 573, column: 2, scope: !5371)
!5381 = !DILocation(line: 574, column: 1, scope: !5371)
!5382 = distinct !DISubprogram(name: "input_set_drvdata", scope: !3916, file: !3916, line: 371, type: !5383, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{null, !3914, !127}
!5385 = !DILocalVariable(name: "dev", arg: 1, scope: !5382, file: !3916, line: 371, type: !3914)
!5386 = !DILocation(line: 371, column: 56, scope: !5382)
!5387 = !DILocalVariable(name: "data", arg: 2, scope: !5382, file: !3916, line: 371, type: !127)
!5388 = !DILocation(line: 371, column: 67, scope: !5382)
!5389 = !DILocation(line: 373, column: 19, scope: !5382)
!5390 = !DILocation(line: 373, column: 24, scope: !5382)
!5391 = !DILocation(line: 373, column: 29, scope: !5382)
!5392 = !DILocation(line: 373, column: 2, scope: !5382)
!5393 = !DILocation(line: 374, column: 1, scope: !5382)
!5394 = distinct !DISubprogram(name: "gtco_setup_caps", scope: !3, file: !3, line: 585, type: !4088, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5395 = !DILocalVariable(name: "inputdev", arg: 1, scope: !5394, file: !3, line: 585, type: !3914)
!5396 = !DILocation(line: 585, column: 47, scope: !5394)
!5397 = !DILocalVariable(name: "device", scope: !5394, file: !3, line: 587, type: !3910)
!5398 = !DILocation(line: 587, column: 15, scope: !5394)
!5399 = !DILocation(line: 587, column: 42, scope: !5394)
!5400 = !DILocation(line: 587, column: 24, scope: !5394)
!5401 = !DILocation(line: 590, column: 2, scope: !5394)
!5402 = !DILocation(line: 590, column: 12, scope: !5394)
!5403 = !DILocation(line: 590, column: 21, scope: !5394)
!5404 = !DILocation(line: 594, column: 2, scope: !5394)
!5405 = !DILocation(line: 594, column: 12, scope: !5394)
!5406 = !DILocation(line: 594, column: 22, scope: !5394)
!5407 = !DILocation(line: 598, column: 23, scope: !5394)
!5408 = !DILocation(line: 598, column: 40, scope: !5394)
!5409 = !DILocation(line: 598, column: 48, scope: !5394)
!5410 = !DILocation(line: 598, column: 55, scope: !5394)
!5411 = !DILocation(line: 598, column: 63, scope: !5394)
!5412 = !DILocation(line: 598, column: 2, scope: !5394)
!5413 = !DILocation(line: 600, column: 23, scope: !5394)
!5414 = !DILocation(line: 600, column: 40, scope: !5394)
!5415 = !DILocation(line: 600, column: 48, scope: !5394)
!5416 = !DILocation(line: 600, column: 55, scope: !5394)
!5417 = !DILocation(line: 600, column: 63, scope: !5394)
!5418 = !DILocation(line: 600, column: 2, scope: !5394)
!5419 = !DILocation(line: 604, column: 23, scope: !5394)
!5420 = !DILocation(line: 604, column: 2, scope: !5394)
!5421 = !DILocation(line: 607, column: 23, scope: !5394)
!5422 = !DILocation(line: 607, column: 45, scope: !5394)
!5423 = !DILocation(line: 607, column: 53, scope: !5394)
!5424 = !DILocation(line: 608, column: 9, scope: !5394)
!5425 = !DILocation(line: 608, column: 17, scope: !5394)
!5426 = !DILocation(line: 607, column: 2, scope: !5394)
!5427 = !DILocation(line: 609, column: 23, scope: !5394)
!5428 = !DILocation(line: 609, column: 45, scope: !5394)
!5429 = !DILocation(line: 609, column: 53, scope: !5394)
!5430 = !DILocation(line: 610, column: 9, scope: !5394)
!5431 = !DILocation(line: 610, column: 17, scope: !5394)
!5432 = !DILocation(line: 609, column: 2, scope: !5394)
!5433 = !DILocation(line: 611, column: 23, scope: !5394)
!5434 = !DILocation(line: 611, column: 47, scope: !5394)
!5435 = !DILocation(line: 611, column: 55, scope: !5394)
!5436 = !DILocation(line: 612, column: 9, scope: !5394)
!5437 = !DILocation(line: 612, column: 17, scope: !5394)
!5438 = !DILocation(line: 611, column: 2, scope: !5394)
!5439 = !DILocation(line: 615, column: 23, scope: !5394)
!5440 = !DILocation(line: 615, column: 2, scope: !5394)
!5441 = !DILocation(line: 616, column: 1, scope: !5394)
!5442 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5443, file: !5443, line: 18, type: !5444, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5443 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5444 = !DISubroutineType(types: !5445)
!5445 = !{null, !5446, !5448}
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!5449 = !DILocalVariable(name: "dev", arg: 1, scope: !5442, file: !5443, line: 18, type: !5446)
!5450 = !DILocation(line: 18, column: 42, scope: !5442)
!5451 = !DILocalVariable(name: "id", arg: 2, scope: !5442, file: !5443, line: 18, type: !5448)
!5452 = !DILocation(line: 18, column: 64, scope: !5442)
!5453 = !DILocation(line: 20, column: 2, scope: !5442)
!5454 = !DILocation(line: 20, column: 6, scope: !5442)
!5455 = !DILocation(line: 20, column: 14, scope: !5442)
!5456 = !DILocation(line: 21, column: 15, scope: !5442)
!5457 = !DILocation(line: 21, column: 2, scope: !5442)
!5458 = !DILocation(line: 21, column: 6, scope: !5442)
!5459 = !DILocation(line: 21, column: 13, scope: !5442)
!5460 = !DILocation(line: 22, column: 16, scope: !5442)
!5461 = !DILocation(line: 22, column: 2, scope: !5442)
!5462 = !DILocation(line: 22, column: 6, scope: !5442)
!5463 = !DILocation(line: 22, column: 14, scope: !5442)
!5464 = !DILocation(line: 23, column: 16, scope: !5442)
!5465 = !DILocation(line: 23, column: 2, scope: !5442)
!5466 = !DILocation(line: 23, column: 6, scope: !5442)
!5467 = !DILocation(line: 23, column: 14, scope: !5442)
!5468 = !DILocation(line: 24, column: 1, scope: !5442)
!5469 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5470, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{null, !4190, !133, !7, !127, !137, !4232, !127, !137}
!5472 = !DILocalVariable(name: "urb", arg: 1, scope: !5469, file: !6, line: 1688, type: !4190)
!5473 = !DILocation(line: 1688, column: 49, scope: !5469)
!5474 = !DILocalVariable(name: "dev", arg: 2, scope: !5469, file: !6, line: 1689, type: !133)
!5475 = !DILocation(line: 1689, column: 28, scope: !5469)
!5476 = !DILocalVariable(name: "pipe", arg: 3, scope: !5469, file: !6, line: 1690, type: !7)
!5477 = !DILocation(line: 1690, column: 22, scope: !5469)
!5478 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5469, file: !6, line: 1691, type: !127)
!5479 = !DILocation(line: 1691, column: 15, scope: !5469)
!5480 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5469, file: !6, line: 1692, type: !137)
!5481 = !DILocation(line: 1692, column: 13, scope: !5469)
!5482 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5469, file: !6, line: 1693, type: !4232)
!5483 = !DILocation(line: 1693, column: 24, scope: !5469)
!5484 = !DILocalVariable(name: "context", arg: 7, scope: !5469, file: !6, line: 1694, type: !127)
!5485 = !DILocation(line: 1694, column: 15, scope: !5469)
!5486 = !DILocalVariable(name: "interval", arg: 8, scope: !5469, file: !6, line: 1695, type: !137)
!5487 = !DILocation(line: 1695, column: 13, scope: !5469)
!5488 = !DILocation(line: 1697, column: 13, scope: !5469)
!5489 = !DILocation(line: 1697, column: 2, scope: !5469)
!5490 = !DILocation(line: 1697, column: 7, scope: !5469)
!5491 = !DILocation(line: 1697, column: 11, scope: !5469)
!5492 = !DILocation(line: 1698, column: 14, scope: !5469)
!5493 = !DILocation(line: 1698, column: 2, scope: !5469)
!5494 = !DILocation(line: 1698, column: 7, scope: !5469)
!5495 = !DILocation(line: 1698, column: 12, scope: !5469)
!5496 = !DILocation(line: 1699, column: 25, scope: !5469)
!5497 = !DILocation(line: 1699, column: 2, scope: !5469)
!5498 = !DILocation(line: 1699, column: 7, scope: !5469)
!5499 = !DILocation(line: 1699, column: 23, scope: !5469)
!5500 = !DILocation(line: 1700, column: 32, scope: !5469)
!5501 = !DILocation(line: 1700, column: 2, scope: !5469)
!5502 = !DILocation(line: 1700, column: 7, scope: !5469)
!5503 = !DILocation(line: 1700, column: 30, scope: !5469)
!5504 = !DILocation(line: 1701, column: 18, scope: !5469)
!5505 = !DILocation(line: 1701, column: 2, scope: !5469)
!5506 = !DILocation(line: 1701, column: 7, scope: !5469)
!5507 = !DILocation(line: 1701, column: 16, scope: !5469)
!5508 = !DILocation(line: 1702, column: 17, scope: !5469)
!5509 = !DILocation(line: 1702, column: 2, scope: !5469)
!5510 = !DILocation(line: 1702, column: 7, scope: !5469)
!5511 = !DILocation(line: 1702, column: 15, scope: !5469)
!5512 = !DILocation(line: 1704, column: 6, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5469, file: !6, line: 1704, column: 6)
!5514 = !DILocation(line: 1704, column: 11, scope: !5513)
!5515 = !DILocation(line: 1704, column: 17, scope: !5513)
!5516 = !DILocation(line: 1704, column: 35, scope: !5513)
!5517 = !DILocation(line: 1704, column: 38, scope: !5513)
!5518 = !DILocation(line: 1704, column: 43, scope: !5513)
!5519 = !DILocation(line: 1704, column: 49, scope: !5513)
!5520 = !DILocation(line: 1704, column: 6, scope: !5469)
!5521 = !DILocalVariable(name: "__UNIQUE_ID___x208", scope: !5522, file: !6, line: 1706, type: !137)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !6, line: 1706, column: 14)
!5523 = distinct !DILexicalBlock(scope: !5513, file: !6, line: 1704, column: 69)
!5524 = !DILocation(line: 1706, column: 14, scope: !5522)
!5525 = !DILocalVariable(name: "__UNIQUE_ID___x206", scope: !5526, file: !6, line: 1706, type: !137)
!5526 = distinct !DILexicalBlock(scope: !5522, file: !6, line: 1706, column: 14)
!5527 = !DILocation(line: 1706, column: 14, scope: !5526)
!5528 = !DILocalVariable(name: "__UNIQUE_ID___y207", scope: !5526, file: !6, line: 1706, type: !137)
!5529 = !DILocalVariable(name: "__UNIQUE_ID___y209", scope: !5522, file: !6, line: 1706, type: !137)
!5530 = !DILocation(line: 1706, column: 12, scope: !5523)
!5531 = !DILocation(line: 1708, column: 25, scope: !5523)
!5532 = !DILocation(line: 1708, column: 34, scope: !5523)
!5533 = !DILocation(line: 1708, column: 21, scope: !5523)
!5534 = !DILocation(line: 1708, column: 3, scope: !5523)
!5535 = !DILocation(line: 1708, column: 8, scope: !5523)
!5536 = !DILocation(line: 1708, column: 17, scope: !5523)
!5537 = !DILocation(line: 1709, column: 2, scope: !5523)
!5538 = !DILocation(line: 1710, column: 19, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5513, file: !6, line: 1709, column: 9)
!5540 = !DILocation(line: 1710, column: 3, scope: !5539)
!5541 = !DILocation(line: 1710, column: 8, scope: !5539)
!5542 = !DILocation(line: 1710, column: 17, scope: !5539)
!5543 = !DILocation(line: 1713, column: 2, scope: !5469)
!5544 = !DILocation(line: 1713, column: 7, scope: !5469)
!5545 = !DILocation(line: 1713, column: 19, scope: !5469)
!5546 = !DILocation(line: 1714, column: 1, scope: !5469)
!5547 = distinct !DISubprogram(name: "gtco_urb_callback", scope: !3, file: !3, line: 627, type: !4234, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5548 = !DILocation(line: 64, column: 59, scope: !4879, inlinedAt: !5549)
!5549 = distinct !DILocation(line: 10, column: 9, scope: !4886, inlinedAt: !5550)
!5550 = distinct !DILocation(line: 780, column: 11, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 778, column: 11)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 757, column: 8)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 753, column: 31)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 753, column: 7)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 744, column: 39)
!5556 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 743, column: 6)
!5557 = !DILocation(line: 8, column: 59, scope: !4886, inlinedAt: !5550)
!5558 = !DILocation(line: 64, column: 59, scope: !4879, inlinedAt: !5559)
!5559 = distinct !DILocation(line: 10, column: 9, scope: !4886, inlinedAt: !5560)
!5560 = distinct !DILocation(line: 783, column: 11, scope: !5551)
!5561 = !DILocation(line: 8, column: 59, scope: !4886, inlinedAt: !5560)
!5562 = !DILocation(line: 64, column: 59, scope: !4879, inlinedAt: !5563)
!5563 = distinct !DILocation(line: 10, column: 9, scope: !4886, inlinedAt: !5564)
!5564 = distinct !DILocation(line: 770, column: 11, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 757, column: 33)
!5566 = !DILocation(line: 8, column: 59, scope: !4886, inlinedAt: !5564)
!5567 = !DILocation(line: 64, column: 59, scope: !4879, inlinedAt: !5568)
!5568 = distinct !DILocation(line: 10, column: 9, scope: !4886, inlinedAt: !5569)
!5569 = distinct !DILocation(line: 705, column: 10, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 669, column: 30)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 661, column: 40)
!5572 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 659, column: 6)
!5573 = !DILocation(line: 8, column: 59, scope: !4886, inlinedAt: !5569)
!5574 = !DILocation(line: 64, column: 59, scope: !4879, inlinedAt: !5575)
!5575 = distinct !DILocation(line: 10, column: 9, scope: !4886, inlinedAt: !5576)
!5576 = distinct !DILocation(line: 702, column: 10, scope: !5570)
!5577 = !DILocation(line: 8, column: 59, scope: !4886, inlinedAt: !5576)
!5578 = !DILocalVariable(name: "value", arg: 1, scope: !5579, file: !5580, line: 165, type: !146)
!5579 = distinct !DISubprogram(name: "sign_extend32", scope: !5580, file: !5580, line: 165, type: !5581, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5580 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!1314, !146, !137}
!5583 = !DILocation(line: 165, column: 50, scope: !5579, inlinedAt: !5584)
!5584 = distinct !DILocation(line: 687, column: 7, scope: !5570)
!5585 = !DILocalVariable(name: "index", arg: 2, scope: !5579, file: !5580, line: 165, type: !137)
!5586 = !DILocation(line: 165, column: 61, scope: !5579, inlinedAt: !5584)
!5587 = !DILocalVariable(name: "shift", scope: !5579, file: !5580, line: 167, type: !1222)
!5588 = !DILocation(line: 167, column: 7, scope: !5579, inlinedAt: !5584)
!5589 = !DILocation(line: 165, column: 50, scope: !5579, inlinedAt: !5590)
!5590 = distinct !DILocation(line: 684, column: 7, scope: !5570)
!5591 = !DILocation(line: 165, column: 61, scope: !5579, inlinedAt: !5590)
!5592 = !DILocation(line: 167, column: 7, scope: !5579, inlinedAt: !5590)
!5593 = !DILocalVariable(name: "urbinfo", arg: 1, scope: !5547, file: !3, line: 627, type: !4190)
!5594 = !DILocation(line: 627, column: 43, scope: !5547)
!5595 = !DILocalVariable(name: "device", scope: !5547, file: !3, line: 629, type: !3910)
!5596 = !DILocation(line: 629, column: 15, scope: !5547)
!5597 = !DILocation(line: 629, column: 24, scope: !5547)
!5598 = !DILocation(line: 629, column: 33, scope: !5547)
!5599 = !DILocalVariable(name: "inputdev", scope: !5547, file: !3, line: 630, type: !3914)
!5600 = !DILocation(line: 630, column: 21, scope: !5547)
!5601 = !DILocalVariable(name: "rc", scope: !5547, file: !3, line: 631, type: !137)
!5602 = !DILocation(line: 631, column: 20, scope: !5547)
!5603 = !DILocalVariable(name: "val", scope: !5547, file: !3, line: 632, type: !144)
!5604 = !DILocation(line: 632, column: 20, scope: !5547)
!5605 = !DILocalVariable(name: "le_buffer", scope: !5547, file: !3, line: 633, type: !5606)
!5606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 16, elements: !157)
!5607 = !DILocation(line: 633, column: 20, scope: !5547)
!5608 = !DILocation(line: 635, column: 13, scope: !5547)
!5609 = !DILocation(line: 635, column: 21, scope: !5547)
!5610 = !DILocation(line: 635, column: 11, scope: !5547)
!5611 = !DILocation(line: 638, column: 6, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 638, column: 6)
!5613 = !DILocation(line: 638, column: 15, scope: !5612)
!5614 = !DILocation(line: 638, column: 22, scope: !5612)
!5615 = !DILocation(line: 638, column: 37, scope: !5612)
!5616 = !DILocation(line: 639, column: 6, scope: !5612)
!5617 = !DILocation(line: 639, column: 15, scope: !5612)
!5618 = !DILocation(line: 639, column: 22, scope: !5612)
!5619 = !DILocation(line: 639, column: 33, scope: !5612)
!5620 = !DILocation(line: 640, column: 6, scope: !5612)
!5621 = !DILocation(line: 640, column: 15, scope: !5612)
!5622 = !DILocation(line: 640, column: 22, scope: !5612)
!5623 = !DILocation(line: 638, column: 6, scope: !5547)
!5624 = !DILocation(line: 643, column: 3, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 640, column: 37)
!5626 = !DILocation(line: 646, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 646, column: 6)
!5628 = !DILocation(line: 646, column: 15, scope: !5627)
!5629 = !DILocation(line: 646, column: 22, scope: !5627)
!5630 = !DILocation(line: 646, column: 6, scope: !5547)
!5631 = !DILocation(line: 651, column: 3, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 646, column: 28)
!5633 = !DILocation(line: 659, column: 6, scope: !5572)
!5634 = !DILocation(line: 659, column: 16, scope: !5572)
!5635 = !DILocation(line: 659, column: 19, scope: !5572)
!5636 = !DILocation(line: 659, column: 27, scope: !5572)
!5637 = !DILocation(line: 659, column: 39, scope: !5572)
!5638 = !DILocation(line: 660, column: 6, scope: !5572)
!5639 = !DILocation(line: 660, column: 16, scope: !5572)
!5640 = !DILocation(line: 660, column: 19, scope: !5572)
!5641 = !DILocation(line: 660, column: 27, scope: !5572)
!5642 = !DILocation(line: 660, column: 39, scope: !5572)
!5643 = !DILocation(line: 661, column: 6, scope: !5572)
!5644 = !DILocation(line: 661, column: 16, scope: !5572)
!5645 = !DILocation(line: 661, column: 19, scope: !5572)
!5646 = !DILocation(line: 661, column: 27, scope: !5572)
!5647 = !DILocation(line: 659, column: 6, scope: !5547)
!5648 = !DILocation(line: 669, column: 11, scope: !5571)
!5649 = !DILocation(line: 669, column: 19, scope: !5571)
!5650 = !DILocation(line: 669, column: 3, scope: !5571)
!5651 = !DILocation(line: 672, column: 17, scope: !5570)
!5652 = !DILocation(line: 672, column: 25, scope: !5570)
!5653 = !DILocation(line: 672, column: 11, scope: !5570)
!5654 = !DILocation(line: 672, column: 36, scope: !5570)
!5655 = !DILocation(line: 672, column: 8, scope: !5570)
!5656 = !DILocation(line: 673, column: 17, scope: !5570)
!5657 = !DILocation(line: 673, column: 25, scope: !5570)
!5658 = !DILocation(line: 673, column: 35, scope: !5570)
!5659 = !DILocation(line: 673, column: 11, scope: !5570)
!5660 = !DILocation(line: 673, column: 8, scope: !5570)
!5661 = !DILocation(line: 674, column: 21, scope: !5570)
!5662 = !DILocation(line: 675, column: 7, scope: !5570)
!5663 = !DILocation(line: 675, column: 15, scope: !5570)
!5664 = !DILocation(line: 674, column: 4, scope: !5570)
!5665 = !DILocation(line: 678, column: 30, scope: !5570)
!5666 = !DILocation(line: 678, column: 38, scope: !5570)
!5667 = !DILocation(line: 678, column: 29, scope: !5570)
!5668 = !DILocation(line: 678, column: 49, scope: !5570)
!5669 = !DILocation(line: 678, column: 24, scope: !5570)
!5670 = !DILocation(line: 678, column: 4, scope: !5570)
!5671 = !DILocation(line: 678, column: 12, scope: !5570)
!5672 = !DILocation(line: 678, column: 22, scope: !5570)
!5673 = !DILocation(line: 683, column: 21, scope: !5570)
!5674 = !DILocation(line: 684, column: 21, scope: !5570)
!5675 = !DILocation(line: 684, column: 29, scope: !5570)
!5676 = !DILocation(line: 167, column: 20, scope: !5579, inlinedAt: !5590)
!5677 = !DILocation(line: 167, column: 18, scope: !5579, inlinedAt: !5590)
!5678 = !DILocation(line: 167, column: 15, scope: !5579, inlinedAt: !5590)
!5679 = !DILocation(line: 168, column: 17, scope: !5579, inlinedAt: !5590)
!5680 = !DILocation(line: 168, column: 26, scope: !5579, inlinedAt: !5590)
!5681 = !DILocation(line: 168, column: 23, scope: !5579, inlinedAt: !5590)
!5682 = !DILocation(line: 168, column: 36, scope: !5579, inlinedAt: !5590)
!5683 = !DILocation(line: 168, column: 33, scope: !5579, inlinedAt: !5590)
!5684 = !DILocation(line: 683, column: 4, scope: !5570)
!5685 = !DILocation(line: 686, column: 21, scope: !5570)
!5686 = !DILocation(line: 687, column: 21, scope: !5570)
!5687 = !DILocation(line: 687, column: 29, scope: !5570)
!5688 = !DILocation(line: 167, column: 20, scope: !5579, inlinedAt: !5584)
!5689 = !DILocation(line: 167, column: 18, scope: !5579, inlinedAt: !5584)
!5690 = !DILocation(line: 167, column: 15, scope: !5579, inlinedAt: !5584)
!5691 = !DILocation(line: 168, column: 17, scope: !5579, inlinedAt: !5584)
!5692 = !DILocation(line: 168, column: 26, scope: !5579, inlinedAt: !5584)
!5693 = !DILocation(line: 168, column: 23, scope: !5579, inlinedAt: !5584)
!5694 = !DILocation(line: 168, column: 36, scope: !5579, inlinedAt: !5584)
!5695 = !DILocation(line: 168, column: 33, scope: !5579, inlinedAt: !5584)
!5696 = !DILocation(line: 686, column: 4, scope: !5570)
!5697 = !DILocation(line: 693, column: 11, scope: !5570)
!5698 = !DILocation(line: 693, column: 19, scope: !5570)
!5699 = !DILocation(line: 693, column: 10, scope: !5570)
!5700 = !DILocation(line: 693, column: 30, scope: !5570)
!5701 = !DILocation(line: 693, column: 8, scope: !5570)
!5702 = !DILocation(line: 697, column: 16, scope: !5570)
!5703 = !DILocation(line: 697, column: 46, scope: !5570)
!5704 = !DILocation(line: 697, column: 4, scope: !5570)
!5705 = !DILocation(line: 702, column: 30, scope: !5570)
!5706 = !DILocation(line: 702, column: 38, scope: !5570)
!5707 = !DILocation(line: 10, column: 32, scope: !4886, inlinedAt: !5576)
!5708 = !DILocation(line: 10, column: 22, scope: !4886, inlinedAt: !5576)
!5709 = !DILocation(line: 66, column: 25, scope: !4879, inlinedAt: !5575)
!5710 = !DILocation(line: 66, column: 24, scope: !4879, inlinedAt: !5575)
!5711 = !DILocation(line: 702, column: 10, scope: !5570)
!5712 = !DILocation(line: 702, column: 8, scope: !5570)
!5713 = !DILocation(line: 703, column: 21, scope: !5570)
!5714 = !DILocation(line: 703, column: 38, scope: !5570)
!5715 = !DILocation(line: 703, column: 4, scope: !5570)
!5716 = !DILocation(line: 705, column: 30, scope: !5570)
!5717 = !DILocation(line: 705, column: 38, scope: !5570)
!5718 = !DILocation(line: 10, column: 32, scope: !4886, inlinedAt: !5569)
!5719 = !DILocation(line: 10, column: 22, scope: !4886, inlinedAt: !5569)
!5720 = !DILocation(line: 66, column: 25, scope: !4879, inlinedAt: !5568)
!5721 = !DILocation(line: 66, column: 24, scope: !4879, inlinedAt: !5568)
!5722 = !DILocation(line: 705, column: 10, scope: !5570)
!5723 = !DILocation(line: 705, column: 8, scope: !5570)
!5724 = !DILocation(line: 706, column: 21, scope: !5570)
!5725 = !DILocation(line: 706, column: 38, scope: !5570)
!5726 = !DILocation(line: 706, column: 4, scope: !5570)
!5727 = !DILocation(line: 709, column: 10, scope: !5570)
!5728 = !DILocation(line: 709, column: 18, scope: !5570)
!5729 = !DILocation(line: 709, column: 28, scope: !5570)
!5730 = !DILocation(line: 709, column: 8, scope: !5570)
!5731 = !DILocation(line: 710, column: 21, scope: !5570)
!5732 = !DILocation(line: 710, column: 45, scope: !5570)
!5733 = !DILocation(line: 710, column: 4, scope: !5570)
!5734 = !DILocation(line: 714, column: 8, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 714, column: 8)
!5736 = !DILocation(line: 714, column: 16, scope: !5735)
!5737 = !DILocation(line: 714, column: 26, scope: !5735)
!5738 = !DILocation(line: 714, column: 8, scope: !5570)
!5739 = !DILocation(line: 721, column: 11, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 714, column: 32)
!5741 = !DILocation(line: 721, column: 19, scope: !5740)
!5742 = !DILocation(line: 721, column: 29, scope: !5740)
!5743 = !DILocation(line: 721, column: 9, scope: !5740)
!5744 = !DILocation(line: 730, column: 17, scope: !5740)
!5745 = !DILocation(line: 730, column: 47, scope: !5740)
!5746 = !DILocation(line: 730, column: 5, scope: !5740)
!5747 = !DILocation(line: 731, column: 4, scope: !5740)
!5748 = !DILocation(line: 732, column: 4, scope: !5570)
!5749 = !DILocation(line: 736, column: 16, scope: !5570)
!5750 = !DILocation(line: 737, column: 9, scope: !5570)
!5751 = !DILocation(line: 737, column: 17, scope: !5570)
!5752 = !DILocation(line: 736, column: 4, scope: !5570)
!5753 = !DILocation(line: 738, column: 4, scope: !5570)
!5754 = !DILocation(line: 740, column: 2, scope: !5571)
!5755 = !DILocation(line: 743, column: 6, scope: !5556)
!5756 = !DILocation(line: 743, column: 16, scope: !5556)
!5757 = !DILocation(line: 743, column: 19, scope: !5556)
!5758 = !DILocation(line: 743, column: 27, scope: !5556)
!5759 = !DILocation(line: 743, column: 38, scope: !5556)
!5760 = !DILocation(line: 744, column: 6, scope: !5556)
!5761 = !DILocation(line: 744, column: 16, scope: !5556)
!5762 = !DILocation(line: 744, column: 19, scope: !5556)
!5763 = !DILocation(line: 744, column: 27, scope: !5556)
!5764 = !DILocation(line: 743, column: 6, scope: !5547)
!5765 = !DILocation(line: 747, column: 7, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 747, column: 7)
!5767 = !DILocation(line: 747, column: 15, scope: !5766)
!5768 = !DILocation(line: 747, column: 25, scope: !5766)
!5769 = !DILocation(line: 747, column: 7, scope: !5555)
!5770 = !DILocation(line: 749, column: 16, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 747, column: 31)
!5772 = !DILocation(line: 749, column: 44, scope: !5771)
!5773 = !DILocation(line: 749, column: 52, scope: !5771)
!5774 = !DILocation(line: 749, column: 4, scope: !5771)
!5775 = !DILocation(line: 750, column: 3, scope: !5771)
!5776 = !DILocation(line: 753, column: 7, scope: !5554)
!5777 = !DILocation(line: 753, column: 15, scope: !5554)
!5778 = !DILocation(line: 753, column: 25, scope: !5554)
!5779 = !DILocation(line: 753, column: 7, scope: !5555)
!5780 = !DILocalVariable(name: "buttonbyte", scope: !5553, file: !3, line: 754, type: !140)
!5781 = !DILocation(line: 754, column: 9, scope: !5553)
!5782 = !DILocation(line: 757, column: 8, scope: !5552)
!5783 = !DILocation(line: 757, column: 16, scope: !5552)
!5784 = !DILocation(line: 757, column: 22, scope: !5552)
!5785 = !DILocation(line: 757, column: 8, scope: !5553)
!5786 = !DILocation(line: 759, column: 24, scope: !5565)
!5787 = !DILocation(line: 759, column: 32, scope: !5565)
!5788 = !DILocation(line: 759, column: 42, scope: !5565)
!5789 = !DILocation(line: 759, column: 18, scope: !5565)
!5790 = !DILocation(line: 759, column: 17, scope: !5565)
!5791 = !DILocation(line: 759, column: 55, scope: !5565)
!5792 = !DILocation(line: 759, column: 63, scope: !5565)
!5793 = !DILocation(line: 759, column: 51, scope: !5565)
!5794 = !DILocation(line: 759, column: 49, scope: !5565)
!5795 = !DILocation(line: 759, column: 11, scope: !5565)
!5796 = !DILocation(line: 759, column: 9, scope: !5565)
!5797 = !DILocation(line: 760, column: 23, scope: !5565)
!5798 = !DILocation(line: 760, column: 31, scope: !5565)
!5799 = !DILocation(line: 760, column: 19, scope: !5565)
!5800 = !DILocation(line: 760, column: 41, scope: !5565)
!5801 = !DILocation(line: 760, column: 48, scope: !5565)
!5802 = !DILocation(line: 760, column: 9, scope: !5565)
!5803 = !DILocation(line: 762, column: 22, scope: !5565)
!5804 = !DILocation(line: 762, column: 39, scope: !5565)
!5805 = !DILocation(line: 762, column: 5, scope: !5565)
!5806 = !DILocation(line: 764, column: 31, scope: !5565)
!5807 = !DILocation(line: 764, column: 39, scope: !5565)
!5808 = !DILocation(line: 764, column: 26, scope: !5565)
!5809 = !DILocation(line: 764, column: 50, scope: !5565)
!5810 = !DILocation(line: 764, column: 21, scope: !5565)
!5811 = !DILocation(line: 764, column: 5, scope: !5565)
!5812 = !DILocation(line: 764, column: 19, scope: !5565)
!5813 = !DILocation(line: 765, column: 27, scope: !5565)
!5814 = !DILocation(line: 765, column: 35, scope: !5565)
!5815 = !DILocation(line: 765, column: 45, scope: !5565)
!5816 = !DILocation(line: 765, column: 52, scope: !5565)
!5817 = !DILocation(line: 765, column: 21, scope: !5565)
!5818 = !DILocation(line: 765, column: 5, scope: !5565)
!5819 = !DILocation(line: 765, column: 18, scope: !5565)
!5820 = !DILocation(line: 767, column: 26, scope: !5565)
!5821 = !DILocation(line: 767, column: 34, scope: !5565)
!5822 = !DILocation(line: 767, column: 44, scope: !5565)
!5823 = !DILocation(line: 767, column: 21, scope: !5565)
!5824 = !DILocation(line: 767, column: 5, scope: !5565)
!5825 = !DILocation(line: 767, column: 19, scope: !5565)
!5826 = !DILocation(line: 768, column: 27, scope: !5565)
!5827 = !DILocation(line: 768, column: 35, scope: !5565)
!5828 = !DILocation(line: 768, column: 45, scope: !5565)
!5829 = !DILocation(line: 768, column: 52, scope: !5565)
!5830 = !DILocation(line: 768, column: 21, scope: !5565)
!5831 = !DILocation(line: 768, column: 5, scope: !5565)
!5832 = !DILocation(line: 768, column: 18, scope: !5565)
!5833 = !DILocation(line: 770, column: 30, scope: !5565)
!5834 = !DILocation(line: 10, column: 32, scope: !4886, inlinedAt: !5564)
!5835 = !DILocation(line: 10, column: 22, scope: !4886, inlinedAt: !5564)
!5836 = !DILocation(line: 66, column: 25, scope: !4879, inlinedAt: !5563)
!5837 = !DILocation(line: 66, column: 24, scope: !4879, inlinedAt: !5563)
!5838 = !DILocation(line: 770, column: 11, scope: !5565)
!5839 = !DILocation(line: 770, column: 9, scope: !5565)
!5840 = !DILocation(line: 771, column: 22, scope: !5565)
!5841 = !DILocation(line: 771, column: 39, scope: !5565)
!5842 = !DILocation(line: 771, column: 5, scope: !5565)
!5843 = !DILocation(line: 777, column: 18, scope: !5565)
!5844 = !DILocation(line: 777, column: 26, scope: !5565)
!5845 = !DILocation(line: 777, column: 36, scope: !5565)
!5846 = !DILocation(line: 777, column: 16, scope: !5565)
!5847 = !DILocation(line: 778, column: 4, scope: !5565)
!5848 = !DILocation(line: 780, column: 31, scope: !5551)
!5849 = !DILocation(line: 780, column: 39, scope: !5551)
!5850 = !DILocation(line: 10, column: 32, scope: !4886, inlinedAt: !5550)
!5851 = !DILocation(line: 10, column: 22, scope: !4886, inlinedAt: !5550)
!5852 = !DILocation(line: 66, column: 25, scope: !4879, inlinedAt: !5549)
!5853 = !DILocation(line: 66, column: 24, scope: !4879, inlinedAt: !5549)
!5854 = !DILocation(line: 780, column: 11, scope: !5551)
!5855 = !DILocation(line: 780, column: 9, scope: !5551)
!5856 = !DILocation(line: 781, column: 22, scope: !5551)
!5857 = !DILocation(line: 781, column: 39, scope: !5551)
!5858 = !DILocation(line: 781, column: 5, scope: !5551)
!5859 = !DILocation(line: 783, column: 31, scope: !5551)
!5860 = !DILocation(line: 783, column: 39, scope: !5551)
!5861 = !DILocation(line: 10, column: 32, scope: !4886, inlinedAt: !5560)
!5862 = !DILocation(line: 10, column: 22, scope: !4886, inlinedAt: !5560)
!5863 = !DILocation(line: 66, column: 25, scope: !4879, inlinedAt: !5559)
!5864 = !DILocation(line: 66, column: 24, scope: !4879, inlinedAt: !5559)
!5865 = !DILocation(line: 783, column: 11, scope: !5551)
!5866 = !DILocation(line: 783, column: 9, scope: !5551)
!5867 = !DILocation(line: 784, column: 22, scope: !5551)
!5868 = !DILocation(line: 784, column: 39, scope: !5551)
!5869 = !DILocation(line: 784, column: 5, scope: !5551)
!5870 = !DILocation(line: 786, column: 18, scope: !5551)
!5871 = !DILocation(line: 786, column: 26, scope: !5551)
!5872 = !DILocation(line: 786, column: 16, scope: !5551)
!5873 = !DILocation(line: 790, column: 10, scope: !5553)
!5874 = !DILocation(line: 790, column: 21, scope: !5553)
!5875 = !DILocation(line: 790, column: 8, scope: !5553)
!5876 = !DILocation(line: 791, column: 21, scope: !5553)
!5877 = !DILocation(line: 791, column: 45, scope: !5553)
!5878 = !DILocation(line: 791, column: 4, scope: !5553)
!5879 = !DILocation(line: 794, column: 10, scope: !5553)
!5880 = !DILocation(line: 794, column: 21, scope: !5553)
!5881 = !DILocation(line: 794, column: 8, scope: !5553)
!5882 = !DILocation(line: 800, column: 16, scope: !5553)
!5883 = !DILocation(line: 800, column: 46, scope: !5553)
!5884 = !DILocation(line: 800, column: 4, scope: !5553)
!5885 = !DILocation(line: 804, column: 21, scope: !5553)
!5886 = !DILocation(line: 804, column: 41, scope: !5553)
!5887 = !DILocation(line: 804, column: 49, scope: !5553)
!5888 = !DILocation(line: 804, column: 4, scope: !5553)
!5889 = !DILocation(line: 805, column: 3, scope: !5553)
!5890 = !DILocation(line: 806, column: 2, scope: !5555)
!5891 = !DILocation(line: 809, column: 14, scope: !5547)
!5892 = !DILocation(line: 809, column: 42, scope: !5547)
!5893 = !DILocation(line: 809, column: 50, scope: !5547)
!5894 = !DILocation(line: 809, column: 2, scope: !5547)
!5895 = !DILocation(line: 812, column: 13, scope: !5547)
!5896 = !DILocation(line: 812, column: 2, scope: !5547)
!5897 = !DILabel(scope: !5547, name: "resubmit", file: !3, line: 814)
!5898 = !DILocation(line: 814, column: 2, scope: !5547)
!5899 = !DILocation(line: 815, column: 22, scope: !5547)
!5900 = !DILocation(line: 815, column: 7, scope: !5547)
!5901 = !DILocation(line: 815, column: 5, scope: !5547)
!5902 = !DILocation(line: 816, column: 6, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 816, column: 6)
!5904 = !DILocation(line: 816, column: 9, scope: !5903)
!5905 = !DILocation(line: 816, column: 6, scope: !5547)
!5906 = !DILocation(line: 817, column: 3, scope: !5903)
!5907 = !DILocation(line: 819, column: 1, scope: !5547)
!5908 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5909, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{null, !3698, !127}
!5911 = !DILocalVariable(name: "intf", arg: 1, scope: !5908, file: !6, line: 268, type: !3698)
!5912 = !DILocation(line: 268, column: 59, scope: !5908)
!5913 = !DILocalVariable(name: "data", arg: 2, scope: !5908, file: !6, line: 268, type: !127)
!5914 = !DILocation(line: 268, column: 71, scope: !5908)
!5915 = !DILocation(line: 270, column: 19, scope: !5908)
!5916 = !DILocation(line: 270, column: 25, scope: !5908)
!5917 = !DILocation(line: 270, column: 30, scope: !5908)
!5918 = !DILocation(line: 270, column: 2, scope: !5908)
!5919 = !DILocation(line: 271, column: 1, scope: !5908)
!5920 = distinct !DISubprogram(name: "get_order", scope: !5921, file: !5921, line: 29, type: !5922, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5921 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!137, !279}
!5924 = !DILocalVariable(name: "x", arg: 1, scope: !5925, file: !5926, line: 366, type: !373)
!5925 = distinct !DISubprogram(name: "fls64", scope: !5926, file: !5926, line: 366, type: !5927, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5926 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5927 = !DISubroutineType(types: !5928)
!5928 = !{!137, !373}
!5929 = !DILocation(line: 366, column: 40, scope: !5925, inlinedAt: !5930)
!5930 = distinct !DILocation(line: 46, column: 9, scope: !5920)
!5931 = !DILocalVariable(name: "bitpos", scope: !5925, file: !5926, line: 368, type: !137)
!5932 = !DILocation(line: 368, column: 6, scope: !5925, inlinedAt: !5930)
!5933 = !DILocalVariable(name: "size", arg: 1, scope: !5920, file: !5921, line: 29, type: !279)
!5934 = !DILocation(line: 29, column: 63, scope: !5920)
!5935 = !DILocation(line: 31, column: 27, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5920, file: !5921, line: 31, column: 6)
!5937 = !DILocation(line: 31, column: 6, scope: !5936)
!5938 = !DILocation(line: 31, column: 6, scope: !5920)
!5939 = !DILocation(line: 32, column: 8, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5941, file: !5921, line: 32, column: 7)
!5941 = distinct !DILexicalBlock(scope: !5936, file: !5921, line: 31, column: 34)
!5942 = !DILocation(line: 32, column: 7, scope: !5941)
!5943 = !DILocation(line: 33, column: 4, scope: !5940)
!5944 = !DILocation(line: 35, column: 7, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5941, file: !5921, line: 35, column: 7)
!5946 = !DILocation(line: 35, column: 12, scope: !5945)
!5947 = !DILocation(line: 35, column: 7, scope: !5941)
!5948 = !DILocation(line: 36, column: 4, scope: !5945)
!5949 = !DILocation(line: 38, column: 10, scope: !5941)
!5950 = !DILocation(line: 38, column: 28, scope: !5941)
!5951 = !DILocation(line: 38, column: 41, scope: !5941)
!5952 = !DILocation(line: 38, column: 3, scope: !5941)
!5953 = !DILocation(line: 41, column: 6, scope: !5920)
!5954 = !DILocation(line: 42, column: 7, scope: !5920)
!5955 = !DILocation(line: 46, column: 15, scope: !5920)
!5956 = !DILocation(line: 374, column: 2, scope: !5925, inlinedAt: !5930)
!5957 = !DILocation(line: 376, column: 14, scope: !5925, inlinedAt: !5930)
!5958 = !{i32 266339}
!5959 = !DILocation(line: 377, column: 9, scope: !5925, inlinedAt: !5930)
!5960 = !DILocation(line: 377, column: 16, scope: !5925, inlinedAt: !5930)
!5961 = !DILocation(line: 46, column: 2, scope: !5920)
!5962 = !DILocation(line: 48, column: 1, scope: !5920)
!5963 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5964, file: !5964, line: 30, type: !5965, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5964 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!137, !372}
!5967 = !DILocation(line: 366, column: 40, scope: !5925, inlinedAt: !5968)
!5968 = distinct !DILocation(line: 32, column: 9, scope: !5963)
!5969 = !DILocation(line: 368, column: 6, scope: !5925, inlinedAt: !5968)
!5970 = !DILocalVariable(name: "n", arg: 1, scope: !5963, file: !5964, line: 30, type: !372)
!5971 = !DILocation(line: 30, column: 21, scope: !5963)
!5972 = !DILocation(line: 32, column: 15, scope: !5963)
!5973 = !DILocation(line: 374, column: 2, scope: !5925, inlinedAt: !5968)
!5974 = !DILocation(line: 376, column: 14, scope: !5925, inlinedAt: !5968)
!5975 = !DILocation(line: 377, column: 9, scope: !5925, inlinedAt: !5968)
!5976 = !DILocation(line: 377, column: 16, scope: !5925, inlinedAt: !5968)
!5977 = !DILocation(line: 32, column: 18, scope: !5963)
!5978 = !DILocation(line: 32, column: 2, scope: !5963)
!5979 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1982, file: !1982, line: 137, type: !5980, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5980 = !DISubroutineType(types: !5981)
!5981 = !{!127, !884, !2998, !276, !124}
!5982 = !DILocalVariable(name: "s", arg: 1, scope: !5979, file: !1982, line: 137, type: !884)
!5983 = !DILocation(line: 137, column: 54, scope: !5979)
!5984 = !DILocalVariable(name: "object", arg: 2, scope: !5979, file: !1982, line: 137, type: !2998)
!5985 = !DILocation(line: 137, column: 69, scope: !5979)
!5986 = !DILocalVariable(name: "size", arg: 3, scope: !5979, file: !1982, line: 138, type: !276)
!5987 = !DILocation(line: 138, column: 12, scope: !5979)
!5988 = !DILocalVariable(name: "flags", arg: 4, scope: !5979, file: !1982, line: 138, type: !124)
!5989 = !DILocation(line: 138, column: 24, scope: !5979)
!5990 = !DILocation(line: 140, column: 17, scope: !5979)
!5991 = !DILocation(line: 140, column: 2, scope: !5979)
!5992 = distinct !DISubprogram(name: "input_get_drvdata", scope: !3916, file: !3916, line: 366, type: !5993, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!127, !3914}
!5995 = !DILocalVariable(name: "dev", arg: 1, scope: !5992, file: !3916, line: 366, type: !3914)
!5996 = !DILocation(line: 366, column: 57, scope: !5992)
!5997 = !DILocation(line: 368, column: 26, scope: !5992)
!5998 = !DILocation(line: 368, column: 31, scope: !5992)
!5999 = !DILocation(line: 368, column: 9, scope: !5992)
!6000 = !DILocation(line: 368, column: 2, scope: !5992)
!6001 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !6002, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!127, !6004}
!6004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6005, size: 64)
!6005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!6006 = !DILocalVariable(name: "dev", arg: 1, scope: !6001, file: !67, line: 655, type: !6004)
!6007 = !DILocation(line: 655, column: 58, scope: !6001)
!6008 = !DILocation(line: 657, column: 9, scope: !6001)
!6009 = !DILocation(line: 657, column: 14, scope: !6001)
!6010 = !DILocation(line: 657, column: 2, scope: !6001)
!6011 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !6012, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{null, !165, !127}
!6014 = !DILocalVariable(name: "dev", arg: 1, scope: !6011, file: !67, line: 660, type: !165)
!6015 = !DILocation(line: 660, column: 51, scope: !6011)
!6016 = !DILocalVariable(name: "data", arg: 2, scope: !6011, file: !67, line: 660, type: !127)
!6017 = !DILocation(line: 660, column: 62, scope: !6011)
!6018 = !DILocation(line: 662, column: 21, scope: !6011)
!6019 = !DILocation(line: 662, column: 2, scope: !6011)
!6020 = !DILocation(line: 662, column: 7, scope: !6011)
!6021 = !DILocation(line: 662, column: 19, scope: !6011)
!6022 = !DILocation(line: 663, column: 1, scope: !6011)
!6023 = distinct !DISubprogram(name: "input_report_abs", scope: !3916, file: !3916, line: 425, type: !6024, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{null, !3914, !7, !137}
!6026 = !DILocalVariable(name: "dev", arg: 1, scope: !6023, file: !3916, line: 425, type: !3914)
!6027 = !DILocation(line: 425, column: 55, scope: !6023)
!6028 = !DILocalVariable(name: "code", arg: 2, scope: !6023, file: !3916, line: 425, type: !7)
!6029 = !DILocation(line: 425, column: 73, scope: !6023)
!6030 = !DILocalVariable(name: "value", arg: 3, scope: !6023, file: !3916, line: 425, type: !137)
!6031 = !DILocation(line: 425, column: 83, scope: !6023)
!6032 = !DILocation(line: 427, column: 14, scope: !6023)
!6033 = !DILocation(line: 427, column: 27, scope: !6023)
!6034 = !DILocation(line: 427, column: 33, scope: !6023)
!6035 = !DILocation(line: 427, column: 2, scope: !6023)
!6036 = !DILocation(line: 428, column: 1, scope: !6023)
!6037 = distinct !DISubprogram(name: "input_sync", scope: !3916, file: !3916, line: 440, type: !4088, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!6038 = !DILocalVariable(name: "dev", arg: 1, scope: !6037, file: !3916, line: 440, type: !3914)
!6039 = !DILocation(line: 440, column: 49, scope: !6037)
!6040 = !DILocation(line: 442, column: 14, scope: !6037)
!6041 = !DILocation(line: 442, column: 2, scope: !6037)
!6042 = !DILocation(line: 443, column: 1, scope: !6037)
!6043 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6044, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !203)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!127, !3698}
!6046 = !DILocalVariable(name: "intf", arg: 1, scope: !6043, file: !6, line: 263, type: !3698)
!6047 = !DILocation(line: 263, column: 60, scope: !6043)
!6048 = !DILocation(line: 265, column: 26, scope: !6043)
!6049 = !DILocation(line: 265, column: 32, scope: !6043)
!6050 = !DILocation(line: 265, column: 9, scope: !6043)
!6051 = !DILocation(line: 265, column: 2, scope: !6043)
